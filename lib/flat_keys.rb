require_relative "flat_keys/version"

class Hash
  def flat_keys(separator = ".")
    hash = {}
    visit_flat_keys(hash, "", separator)
    return hash
  end

  def unflat_keys(separator = '.')
    hash = {}
    self.each do |k, v|
      names = k.split(separator)
      last_index = names.count - 1
      local_hash = hash
      names.each_with_index do |name, index|
        last = index == last_index
        if last
          local_hash[name] = v
        else
          local_hash = local_hash[name] || (local_hash[name] = Hash.new)
        end
      end
    end
    hash
  end

  protected

  def visit_flat_keys(hash, prefix, separator)
    self.each do |k, v|
      key = "#{prefix}#{k}"
      if v.is_a?(Hash)
        v.visit_flat_keys(hash, "#{key}#{separator}", separator)
      else
        hash[key] = v
      end
    end
  end
end

