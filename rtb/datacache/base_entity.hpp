/*
 * File:   base_entity.hpp
 * Author: Vladimir Venediktov vvenedict@gmail.com
 * Copyright (c) 2016-2018 Venediktes Gruppe, LLC
 *
 * Created on February 1, 2017, 11:57 PM
 *
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
*/
 
#ifndef __IPC_DATA_BASE_ENTITY_HPP__
#define __IPC_DATA_BASE_ENTITY_HPP__
 
#include <string>
#include <sstream>
#include <boost/interprocess/containers/string.hpp>
#include <boost/interprocess/allocators/allocator.hpp>
#include <boost/archive/binary_iarchive.hpp>
#include <boost/archive/binary_oarchive.hpp>
  
namespace ipc { namespace data {
    
    template <typename Alloc>
    struct base_entity
    {
    protected:
        using char_string =  boost::interprocess::basic_string<char, std::char_traits<char>, Alloc> ;
        base_entity( const Alloc & a ) : allocator{a}, blob{a}
        {} 
       
        Alloc allocator ;
        char_string blob;
 
        template<typename Serializable>
        void store(Serializable  && data)  {
            std::stringstream ss;
            boost::archive::binary_oarchive oarch(ss);
            oarch << std::forward<Serializable>(data) ;
            std::string blob_str = std::move(ss.str()) ;
            blob = char_string(blob_str.data(), blob_str.length(), allocator) ;
        }
        template<typename Serializable>
        static std::size_t size(const Serializable && data) {
            std::stringstream ss;
            boost::archive::binary_oarchive oarch(ss);
            oarch << std::forward<Serializable>(data) ;
            return sizeof(data.allocator) + ss.str().size() ;
        }
        template<typename Serializable>
        void retrieve(Serializable  & data) const {
            std::stringstream ss (std::string(blob.data(),blob.length()));
            boost::archive::binary_iarchive iarch(ss);
            iarch >> data;
        }
        void operator()(base_entity &entry) const {
            entry.blob=blob;
        }

    };
   
}}
 
#endif     /* __IPC_DATA_BASE_ENTITY_HPP__  */


