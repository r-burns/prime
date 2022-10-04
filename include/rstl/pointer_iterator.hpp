#ifndef _RSTL_POINTER_ITERATOR_HPP
#define _RSTL_POINTER_ITERATOR_HPP

#include "types.h"
#include "stddef.h"

#include "rstl/construct.hpp"

namespace rstl {
struct input_iterator_tag {};
struct output_iterator_tag {};
struct forward_iterator_tag : public input_iterator_tag {};
struct bidirectional_iterator_tag : public forward_iterator_tag {};
struct random_access_iterator_tag : public bidirectional_iterator_tag {};

template < typename T, typename Vec, typename Alloc >
class const_pointer_iterator {
public:
  typedef ptrdiff_t difference_type;
  typedef random_access_iterator_tag iterator_category;
  typedef T* value_type;

  const_pointer_iterator() : current(nullptr) {}
  const_pointer_iterator(const T* begin) : current(const_cast< T* >(begin)) {}
  const_pointer_iterator& operator++() {
    ++this->current;
    return *this;
  }
  const_pointer_iterator operator++(int) { return const_pointer_iterator(this->current++); }
  const_pointer_iterator& operator--() {
    --this->current;
    return *this;
  }
  const_pointer_iterator operator--(int) { return const_pointer_iterator(this->current--); }
  const_pointer_iterator& operator+=(int v) {
    this->current += v;
    return *this;
  }
  const_pointer_iterator& operator-=(int v) {
    this->current -= v;
    return *this;
  }
  const_pointer_iterator operator+(int v) const {
    const_pointer_iterator it = *this;
    return it += v;
  }
  const_pointer_iterator operator-(int v) const {
    const_pointer_iterator it = *this;
    return it -= v;
  }
  difference_type operator-(const const_pointer_iterator& other) const {
    return this->current - other.current;
  }
  const T* get_pointer() const { return current; }
  const T& operator*() const { return *current; }
  const T* operator->() const { return current; }
  bool operator==(const const_pointer_iterator& other) { return current == other.current; }
  bool operator!=(const const_pointer_iterator& other) { return current != other.current; }
  bool operator<(const const_pointer_iterator& other) { return current < other.current; }
  bool operator>(const const_pointer_iterator& other) { return current > other.current; }
  bool operator<=(const const_pointer_iterator& other) { return current <= other.current; }
  bool operator>=(const const_pointer_iterator& other) { return current >= other.current; }

  // friend const_pointer_iterator operator+(const const_pointer_iterator& x, int v) {
  //   return const_pointer_iterator(x.current + v);
  // }
  // friend const_pointer_iterator operator-(const const_pointer_iterator& x, int v) {
  //   return const_pointer_iterator(x.current - v);
  // }

protected:
  T* current;
};

template < typename T, typename Vec, typename Alloc >
class pointer_iterator : public const_pointer_iterator< T, Vec, Alloc > {
  typedef const_pointer_iterator< T, Vec, Alloc > base;

public:
  typedef base::difference_type difference_type;
  typedef base::iterator_category iterator_category;
  typedef base::value_type value_type;

  pointer_iterator() : const_pointer_iterator< T, Vec, Alloc >(nullptr) {}
  pointer_iterator(T* begin) : const_pointer_iterator< T, Vec, Alloc >(begin) {}
  void operator=(const T& other) { rstl::construct(this->current, other); }
  T& operator*() const { return *this->current; }
  T* operator->() const { return this->current; }
  pointer_iterator& operator++() {
    ++this->current;
    return *this;
  }
  pointer_iterator operator++(int) { return pointer_iterator(this->current++); }
  pointer_iterator& operator--() {
    --this->current;
    return *this;
  }
  pointer_iterator operator--(int) { return pointer_iterator(this->current--); }
  pointer_iterator& operator+=(int v) {
    this->current += v;
    return *this;
  }
  pointer_iterator& operator-=(int v) {
    this->current -= v;
    return *this;
  }
  pointer_iterator operator+(int v) const {
    pointer_iterator it = *this;
    return it += v;
  }
  pointer_iterator operator-(int v) const {
    pointer_iterator it = *this;
    return it -= v;
  }
  // HACK: non-const operator- is required to match vector::insert
  difference_type operator-(const pointer_iterator& other) {
    return this->current - other.current;
  }
};

template < typename T >
struct const_counting_iterator {
  const T* ptr;
  int count;

  const_counting_iterator(const T* ptr, int count) : ptr(ptr), count(count) {}
};

template < typename It >
inline typename It::difference_type __distance(It first, It last, random_access_iterator_tag) {
  return last - first;
}

template < typename It >
inline typename It::difference_type distance(It first, It last) {
  return __distance(first, last, It::iterator_category());
}
} // namespace rstl

#endif
