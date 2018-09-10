def quick_sort(sort_number)
  # FIXME (要素が1つのみの場合はそのまま返却)
  if (sort_number.length) == 1
    return sort_number
  end
  target = sort_number.shift
  smallers = []
  biggers = []
  sort_number.each do |sort_numbers|
    if sort_numbers < target
      smallers << sort_numbers # <<演算子:左辺の配列の末尾に右辺の要素を加える。
    else
      biggers << sort_numbers # <<演算子:左辺の配列の末尾に右辺の要素を加える。
    end
  end
  # FIXME (smallersとbiggersをそれぞれソートして統治)
  quick_sort(smallers) + [target] + quick_sort(biggers)
end

numbers = [4,8,6,5,2,1,3,9,7]

p quick_sort(numbers)