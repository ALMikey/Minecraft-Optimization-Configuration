# Minecraft Optimization Configuration
Minecraft高版本服务器优化配置文件，尽可能的优化您的Minecraft服务器！
<br>
##### 注意不同类型的分为需要克制化的去优化哦，该配置文件可为！一些生存服务器作为参考！
##### 以下为经验参考，更多内容可以查看该链接更为详细 ↓
##### https://github.com/YouHaveTrouble/minecraft-optimization

##### server.properties 服务器配置文件
	
	# 区块同步写入
	sync-chunk-writes=false
	# 默认会允许n-1字节的数据包正常发送, 如果数据包为n字节或更大时会进行压缩。
	# 所以，更低的数值会使得更多的数据包被压缩，但是如果被压缩的数据包字节太小将反而使压缩后字节更大。
	network-compression-threshold=256
	# 模拟视距
	simulation-distance=4
	# 视距
	view-distance=7
    
    BC服务器建议
    server.properties
      allow-nether=false
    bukkit.yml
      allow-end: false
	
##### purpur.yml 配置文件

	# 使用备用保活
	# 您可以启用 Purpur 的备用保活系统，这样连接不良的玩家就不会经常超时。已知与 TCPShield 不兼容。
	# 启用此功能会每秒向玩家发送一次 keepalive 数据包，并且只有在 30 秒
	# 内没有人响应时才会触发超时。以任何顺序响应其中任何一个都会让玩家保持联系。AKA，它不会踢你的玩家，因为 1 个数据包被丢弃在某处
	
	use-alternate-keepalive: true

##### spigot.yml 配置文件

	# 视距 您应该将其默认设置为将模拟和查看距离放在一个位置以便于管理。
	view-distance: default
    
    # 允许你缩小玩家周围怪物生成的范围（以块为单位）。
    # 根据您服务器的游戏模式及其玩家数量，您可能希望与bukkit.yml一起减少此值spawn-limits。
    # 将此值设置得较低会让人感觉周围有更多的小怪。
    # 这应该小于或等于您的视野距离，并且永远不会大于您的硬消失范围 / 16。
    mob-spawn-range: 2
    
    # 实体激活范围
    # 你可以设置一个实体应该与玩家之间的距离，以便它滴答作响（做事）。
    # 会影响 各种刷怪机器 #
    entity-activation-range:
      animals: 16
      monsters: 24
      raiders: 48
      misc: 8
      water: 8
      villagers: 16
      flying-monsters: 48
    
    # 实体追踪范围
    # 这是实体可见的距离（以块为单位）。他们只是不会被发送给玩家。
    # 如果设置得太低，这可能会导致生物似乎突然出现在玩家附近。
    # 在大多数情况下，这应该高于您的entity-activation-range.
    entity-tracking-range:
      players: 48
      animals: 48
      monsters: 48
      misc: 32
      other: 64
      
    # 不活跃的村民
    # 这使您可以控制是否应在激活范围之外勾选村民。这将使村民正常进行并忽略激活范围
    # 禁用这将有助于提高性能，但在某些情况下可能会让玩家感到困惑。
    # 这可能会导致铁场和贸易补货出现问题。#
    tick-inactive-villagers: false
    
	
##### paper-world.config 配置文件
	
	# 延迟块卸载通过
	# 此选项允许您配置玩家离开后块将保持加载多长时间。
	# 这有助于在玩家来回移动时不会不断地加载和卸载相同的块。
	# 太高的值会导致一次加载太多的块。
	# 在经常被传送到并加载的区域中，考虑保持该区域永久加载。这对你的服务器来说比不断加载和卸载块更轻。
	delay-chunk-unloads-by: 10s
	
	# 最大自动保存块每刻
	# 让您通过将任务分散到更多时间来减缓增量世界节省，
	# 以获得更好的平均性能。您可能希望将其设置为8高于 20-30 名玩家。
	# 如果增量保存不能及时完成，那么 bukkit 将立即自动保存剩余的块并重新开始该过程。
	max-auto-save-chunks-per-tick: 8
	
	# 防止移动到卸载块
	# 启用后，可防止玩家移动到未加载的块中并导致同步加载导致主线程陷入停滞，
	# 从而导致延迟。您的视距越低，玩家跌入未加载区块的概率越高。
	prevent-moving-into-unloaded-chunks: true
	
	# 每块实体保存限制 #
	# 您可以设置可以保存多少指定类型的实体的限制。您应该至少为每个射弹提供一个限制，
	# 以避免大量射弹被保存以及您的服务器在加载时崩溃的问题。您可以在此处放置任何实体 ID，请参阅 minecraft wiki 以查找实体ID。 
	# 请根据自己的喜好调整限制。所有射弹的建议值约为10. 您还可以按类型名称将其他实体添加到该列表中。此配置选项并非旨在阻止玩家制作大型生物农场。
	
    entity-per-chunk-save-limit:
	  area_effect_cloud: 8
      arrow: 16
      dragon_fireball: 3
      egg: 8
      ender_pearl: 8
      experience_bottle: 3
      experience_orb: 16
      eye_of_ender: 8
      fireball: 8
      firework_rocket: 8
      llama_spit: 3
      potion: 8
      shulker_bullet: 8
      small_fireball: 8
      snowball: 8
      spectral_arrow: 16
      trident: 16
      wither_skull: 4
    
    # 指定物品消失时间
    alt-item-despawn-rate:
      enabled: true
      items:
        cobblestone: 300
        netherrack: 300
        sand: 300
        red_sand: 300
        gravel: 300
        dirt: 300
        grass: 300
        pumpkin: 300
        melon_slice: 300
        kelp: 300
        bamboo: 300
        sugar_cane: 300
        twisting_vines: 300
        weeping_vines: 300
        oak_leaves: 300
        spruce_leaves: 300
        birch_leaves: 300
        jungle_leaves: 300
        acacia_leaves: 300
        dark_oak_leaves: 300
        mangrove_leaves: 300
        cactus: 300
        diorite: 300
        granite: 300
        andesite: 300
        scaffolding: 600
    
    # 优化爆炸
    optimize-explosions: true
    
    # 玩家箭头消失率 20 == 1ms
    non-player-arrow-despawn-rate: 100
    
    # 创造玩家箭头消失率
    creative-arrow-despawn-rate: 100
	
##### pufferfish.yml 配置文件
	
	# 每个射弹的最大载荷
	# 指定弹丸在其生命周期内可以加载的最大块数。
	# 减少将减少由实体射弹造成的块负载，但可能会导致三叉戟、末影珍珠等问题。
	max-loads-per-projectile: 8
	
    # 禁用玩家方法分析器
    # 此选项将禁用游戏完成的一些额外分析。
    # 这种分析对于在生产环境中运行不是必需的，并且可能会导致额外的延迟。
    disable-method-profiler: true
    
##### bukkit.yml 配置文件
    
    # 限制实体生成
    # 计算方式为: [playercount] * [limit]
    spawn-limits:
      monsters: 20
      animals: 5
      water-animals: 2
      water-ambient: 2
      water-underground-creature: 3
      axolotls: 3
      ambient: 1

    # 滴答声
    ticks-per:
      monster-spawns: 10
      animal-spawns: 400
      water-spawns: 400
      water-ambient-spawns: 400
      water-underground-creature-spawns: 400
      axolotl-spawns: 400
      ambient-spawns: 400

### 个人经验之谈
> 这个优化配置文件版本为 1.20.1，已经很久没有更新了
> 等作者有空的时候再更新一些吧

##### Multiverse-Core/config.yml

	keepSpawnInMemory: 'false'

##### 请不要使用 `NoBuildPlus` 插件！`WorldGuard` 比它好100倍