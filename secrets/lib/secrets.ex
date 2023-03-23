defmodule Secrets do
  use Bitwise
  def secret_add(secret) do
    fn(number) -> number + secret end
  end

  def secret_subtract(secret) do
    fn(number) -> number - secret end
  end

  def secret_multiply(secret) do
    fn(number) -> number * secret end
  end

  def secret_divide(secret) do
    fn(number) -> trunc(number / secret) end
  end

  def secret_and(secret) do
    fn(number) -> number &&& secret end
  end

  def secret_xor(secret) do
    fn(number) -> bxor(number, secret) end
  end

  def secret_combine(function_one, function_two) do
    fn(number) -> function_two.(function_one.(number)) end
  end
end
