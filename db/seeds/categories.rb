# frozen_string_literal: true
array = [
  ['挨拶', 'greeting'],
  ['食事', 'table'],
  ['恋愛', 'love'],
  ['連絡', 'contact'],
  ['公共', 'public'],
  ['ネット', 'internet'],
  ['飲み会', 'party'],
  ['ビジネス', 'business'],
  ['冠婚葬祭', 'ceremony'],
  ['身だしなみ', 'fashion'],
  ['その他', 'others'],
]
array.each do |items|
  Category.create(name: items[0], friendly_id: items[1])
end
