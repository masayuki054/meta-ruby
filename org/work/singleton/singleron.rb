# Singletonは、Mix-inしたクラスのinstanceは同一のインスタンスを返すようになる
require 'singleton'

# シングルトン
class SingletonObject
  # instanceメソッドが定義され、newメソッドがprivateに設定される
  include Singleton
  attr_accessor :counter

  def initialize
    @counter = 0
  end
end
