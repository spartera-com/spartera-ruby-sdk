=begin
#Spartera API Documentation

#Auto-generated API documentation for REST services of the Spartera platform

The version of the OpenAPI document: 0.0.0
Contact: support@spartera.com
Generated by: https://openapi-generator.tech
Generator version: 7.13.0

=end

require 'date'
require 'time'

module SparteraApiSdk
  # User favorites for marketplace assets
  class Favorite
    attr_accessor :favorite_id

    attr_accessor :asset_id

    attr_accessor :user_id

    attr_accessor :company_id

    attr_accessor :notes

    attr_accessor :category

    attr_accessor :priority

    attr_accessor :date_created

    attr_accessor :last_updated

    attr_accessor :active

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'favorite_id' => :'favorite_id',
        :'asset_id' => :'asset_id',
        :'user_id' => :'user_id',
        :'company_id' => :'company_id',
        :'notes' => :'notes',
        :'category' => :'category',
        :'priority' => :'priority',
        :'date_created' => :'date_created',
        :'last_updated' => :'last_updated',
        :'active' => :'active'
      }
    end

    # Returns attribute mapping this model knows about
    def self.acceptable_attribute_map
      attribute_map
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      acceptable_attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'favorite_id' => :'String',
        :'asset_id' => :'String',
        :'user_id' => :'String',
        :'company_id' => :'String',
        :'notes' => :'String',
        :'category' => :'String',
        :'priority' => :'String',
        :'date_created' => :'String',
        :'last_updated' => :'String',
        :'active' => :'String'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `SparteraApiSdk::Favorite` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      acceptable_attribute_map = self.class.acceptable_attribute_map
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!acceptable_attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `SparteraApiSdk::Favorite`. Please check the name to make sure it's valid. List of attributes: " + acceptable_attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'favorite_id')
        self.favorite_id = attributes[:'favorite_id']
      end

      if attributes.key?(:'asset_id')
        self.asset_id = attributes[:'asset_id']
      else
        self.asset_id = nil
      end

      if attributes.key?(:'user_id')
        self.user_id = attributes[:'user_id']
      end

      if attributes.key?(:'company_id')
        self.company_id = attributes[:'company_id']
      else
        self.company_id = nil
      end

      if attributes.key?(:'notes')
        self.notes = attributes[:'notes']
      end

      if attributes.key?(:'category')
        self.category = attributes[:'category']
      end

      if attributes.key?(:'priority')
        self.priority = attributes[:'priority']
      else
        self.priority = nil
      end

      if attributes.key?(:'date_created')
        self.date_created = attributes[:'date_created']
      end

      if attributes.key?(:'last_updated')
        self.last_updated = attributes[:'last_updated']
      end

      if attributes.key?(:'active')
        self.active = attributes[:'active']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      if @asset_id.nil?
        invalid_properties.push('invalid value for "asset_id", asset_id cannot be nil.')
      end

      if @company_id.nil?
        invalid_properties.push('invalid value for "company_id", company_id cannot be nil.')
      end

      if @priority.nil?
        invalid_properties.push('invalid value for "priority", priority cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if @asset_id.nil?
      return false if @company_id.nil?
      return false if @priority.nil?
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] asset_id Value to be assigned
    def asset_id=(asset_id)
      if asset_id.nil?
        fail ArgumentError, 'asset_id cannot be nil'
      end

      @asset_id = asset_id
    end

    # Custom attribute writer method with validation
    # @param [Object] company_id Value to be assigned
    def company_id=(company_id)
      if company_id.nil?
        fail ArgumentError, 'company_id cannot be nil'
      end

      @company_id = company_id
    end

    # Custom attribute writer method with validation
    # @param [Object] priority Value to be assigned
    def priority=(priority)
      if priority.nil?
        fail ArgumentError, 'priority cannot be nil'
      end

      @priority = priority
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          favorite_id == o.favorite_id &&
          asset_id == o.asset_id &&
          user_id == o.user_id &&
          company_id == o.company_id &&
          notes == o.notes &&
          category == o.category &&
          priority == o.priority &&
          date_created == o.date_created &&
          last_updated == o.last_updated &&
          active == o.active
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [favorite_id, asset_id, user_id, company_id, notes, category, priority, date_created, last_updated, active].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def self.build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      attributes = attributes.transform_keys(&:to_sym)
      transformed_hash = {}
      openapi_types.each_pair do |key, type|
        if attributes.key?(attribute_map[key]) && attributes[attribute_map[key]].nil?
          transformed_hash["#{key}"] = nil
        elsif type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[attribute_map[key]].is_a?(Array)
            transformed_hash["#{key}"] = attributes[attribute_map[key]].map { |v| _deserialize($1, v) }
          end
        elsif !attributes[attribute_map[key]].nil?
          transformed_hash["#{key}"] = _deserialize(type, attributes[attribute_map[key]])
        end
      end
      new(transformed_hash)
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def self._deserialize(type, value)
      case type.to_sym
      when :Time
        Time.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :Boolean
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        # models (e.g. Pet) or oneOf
        klass = SparteraApiSdk.const_get(type)
        klass.respond_to?(:openapi_any_of) || klass.respond_to?(:openapi_one_of) ? klass.build(value) : klass.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        if value.nil?
          is_nullable = self.class.openapi_nullable.include?(attr)
          next if !is_nullable || (is_nullable && !instance_variable_defined?(:"@#{attr}"))
        end

        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end

  end

end
