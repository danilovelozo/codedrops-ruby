# specifying defaults using ||
def initialize(args)
  @chainring = args[:chainring] || 40
  @cog = args[:cog] || 18
  @wheel = args[:wheel]
end

# specifying defaults using fetch

def initialize(args)
  @chainring = args.fetch(:chainring, 40)
  @cog = args.fetch(:cog, 18)
  @wheel = args[:wheel]
end

# specifying defaults by merging a defaults hash
def initialize(args)
  args = defaults.merge(args)
  @chainring = args[:chainring]
end

def defaults
  { chainring: 40, cog: 18 }
end
