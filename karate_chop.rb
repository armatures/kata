class Chop
  def chop(sought, collection)
    length = collection.count
    pivot = length/2

    return -1 if collection.count == 0
    if(collection[pivot] == sought)
      return pivot
    else
      return -1 if(collection.count == 1)
      if(collection[pivot] < sought)
        second_half_search = chop(sought, collection.slice(pivot,length))
        return -1 if second_half_search == -1
        return pivot + second_half_search
      else
        return chop(sought, collection.slice(0,pivot))
      end
    end
  end
end
