Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5B979C83F23
	for <linux-phy@archiver.kernel.org>; Fri, 11 Jul 2025 01:19:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=p+ulzzDtQLcmQghk+3eF7cI1LEKosh2ssZ1feljcN08=; b=y78xJjWOXXVOqv
	Wc5C30tNEYxFPRZhrrx5sFOa24zvwy9uiOjH6AhKll2cQ+vbHpAFve6m20SP6dE1o5O8iZ6NJ+gky
	8jYD1GTN8vpJSYI8IdF4msQqzOYGeepBqryjy/pK4uJK3zOaFY8g9xO3Rpvz/pJGmdyqRGQYV28h8
	GzlSH2/5GwBKfpogzzwp3lFdH68LsaDRIxgzr6WtnPZ5vV5mHxd5UI6ec4Qd6zPomOJYlEUGxP+Hx
	IsVvaUQ57QO5YJX1UWjn5C/w1e6OM5eTlQFm3ZHFQnGgZwPhA1pq5/5/4fFdk6cP1QbZUNixsCoGM
	HSgBSueeMJa0hbAA5R8A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ua2QH-0000000DQGS-0Rm4;
	Fri, 11 Jul 2025 01:19:33 +0000
Received: from mgamail.intel.com ([198.175.65.20])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uZzWr-0000000D8Tu-2ocO
	for linux-phy@lists.infradead.org;
	Thu, 10 Jul 2025 22:14:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1752185650; x=1783721650;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=MvDTF3IH7Edr+ENIFbIDBx+nB7heTyzEUpXpThwZT5E=;
  b=P8Lqq6+/nIZhGDBNMIlR9xLgFuKWYj9SFjljReZs95t1lqYiX021h3MI
   3fAc0O5gN6SoivGoRjtPVc8O2rXwApWeYvGX6zqArwGdQD6tIyF3h524F
   qGJMGHn5+PbbG6QSOxsZE783vx7k+lBN/YQI980MALM5cwEvYurDF9cFR
   lXTqKjnHl515UCt4sAVg8RL7B0czCV1ey6wmQGuu6sc5kWzxC1ON1wrwi
   g51jCJrNsJsV5iuIX5GpLA5SUrvcHw4sDkDsjBKqIJgbYJfTSxcpBx8YE
   6EtaDLSs3Fcb8FeS/+/0L6a/T1KfyPVPTLX3nv2MxJRX0RTxsTT4IxEQo
   w==;
X-CSE-ConnectionGUID: 6ElGTGzuQv+KShuvFDoGPQ==
X-CSE-MsgGUID: WHIMStZYRoWTjyqAU8CMaQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11490"; a="54194332"
X-IronPort-AV: E=Sophos;i="6.16,301,1744095600"; 
   d="scan'208";a="54194332"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
  by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 10 Jul 2025 15:14:06 -0700
X-CSE-ConnectionGUID: Bf7nkYutRYqiaruJIxfNaA==
X-CSE-MsgGUID: gNVI0kucSK28i7ED8kiiYA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,301,1744095600"; 
   d="scan'208";a="187189777"
Received: from lkp-server01.sh.intel.com (HELO 9ee84586c615) ([10.239.97.150])
  by fmviesa001.fm.intel.com with ESMTP; 10 Jul 2025 15:14:02 -0700
Received: from kbuild by 9ee84586c615 with local (Exim 4.96)
	(envelope-from <lkp@intel.com>)
	id 1uZzWi-0005WF-0m;
	Thu, 10 Jul 2025 22:14:00 +0000
Date: Fri, 11 Jul 2025 06:13:35 +0800
From: kernel test robot <lkp@intel.com>
To: Karthik Poduval <kpoduval@lab126.com>, jyxiong@amazon.com,
	miguel.lopes@synopsys.com, anishkmr@amazon.com, vkoul@kernel.org,
	kishon@kernel.org, linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org, robh@kernel.org, krzk+dt@kernel.org,
	conor+dt@kernel.org, devicetree@vger.kernel.org
Cc: oe-kbuild-all@lists.linux.dev, Karthik Poduval <kpoduval@lab126.com>
Subject: Re: [PATCH v2 1/2] phy: dw-dphy-rx: Add Synopsys DesignWare D-PHY RX
Message-ID: <202507110611.wdky6fjF-lkp@intel.com>
References: <2383f8cf2a8f5e1b914d4cf9bd11674ed55876d2.1752106239.git.kpoduval@lab126.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <2383f8cf2a8f5e1b914d4cf9bd11674ed55876d2.1752106239.git.kpoduval@lab126.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250710_151409_764355_E057641B 
X-CRM114-Status: GOOD (  15.61  )
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Unsubscribe: <https://lists.infradead.org/mailman/options/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

Hi Karthik,

kernel test robot noticed the following build warnings:

[auto build test WARNING on robh/for-next]
[also build test WARNING on linus/master v6.16-rc5 next-20250710]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Karthik-Poduval/phy-dw-dphy-rx-Add-Synopsys-DesignWare-D-PHY-RX/20250710-104505
base:   https://git.kernel.org/pub/scm/linux/kernel/git/robh/linux.git for-next
patch link:    https://lore.kernel.org/r/2383f8cf2a8f5e1b914d4cf9bd11674ed55876d2.1752106239.git.kpoduval%40lab126.com
patch subject: [PATCH v2 1/2] phy: dw-dphy-rx: Add Synopsys DesignWare D-PHY RX
config: x86_64-randconfig-002-20250711 (https://download.01.org/0day-ci/archive/20250711/202507110611.wdky6fjF-lkp@intel.com/config)
compiler: gcc-12 (Debian 12.2.0-14+deb12u1) 12.2.0
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20250711/202507110611.wdky6fjF-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202507110611.wdky6fjF-lkp@intel.com/

All warnings (new ones prefixed by >>):

>> drivers/phy/phy-dw-dphy.c:254:11: warning: 'dw_dphy_te_read' defined but not used [-Wunused-function]
     254 | static u8 dw_dphy_te_read(struct dw_dphy *dphy, u16 addr)
         |           ^~~~~~~~~~~~~~~
--
>> Warning: drivers/phy/phy-dw-dphy.c:172 struct member 'dev' not described in 'dw_dphy'
>> Warning: drivers/phy/phy-dw-dphy.c:172 struct member 'dt_data' not described in 'dw_dphy'
>> Warning: drivers/phy/phy-dw-dphy.c:172 Excess struct member 'regmap' description in 'dw_dphy'
>> Warning: drivers/phy/phy-dw-dphy.c:172 Excess struct member 'dt_data_dw_dphy' description in 'dw_dphy'


vim +/dw_dphy_te_read +254 drivers/phy/phy-dw-dphy.c

   146	
   147	/**
   148	 * struct dw_dphy - DW D-PHY driver private structure
   149	 *
   150	 * @regmap: pointer to regmap
   151	 * @regmap_cfg1: pointer to config1 regmap
   152	 * @regmap_cfg2: pointer to config2 regmap
   153	 * @rf_cfg1: array of regfields for config1
   154	 * @rf_cfg2: array of regfields for config2
   155	 * @iomem_cfg1: MMIO address for cfg1 section
   156	 * @iomem_cfg2: MMIO address for cfg2 section
   157	 * @phy: pointer to the phy data structure
   158	 * @hs_clk_rate: high speed clock rate as per image sensor configuration
   159	 * @dt_data_dw_dphy: device tree specific data
   160	 *
   161	 **/
   162	struct dw_dphy {
   163		struct regmap *regmap_cfg1;
   164		struct regmap *regmap_cfg2;
   165		struct regmap_field *rf_cfg1[DW_DPHY_RF_CFG1_MAX];
   166		struct regmap_field *rf_cfg2[DW_DPHY_RF_CFG2_MAX];
   167		void __iomem *iomem_cfg1;
   168		void __iomem *iomem_cfg2;
   169		struct phy *phy;
   170		struct device *dev;
   171		unsigned long hs_clk_rate;
 > 172		struct dt_data_dw_dphy *dt_data;
   173	};
   174	
   175	/**
   176	 * dw_dphy_te_write - write register into test enable interface
   177	 *
   178	 * @dphy: pointer to the dw_dphy private data structure
   179	 * @addr: 12 bit TE address register (16 bit container)
   180	 * @data: 8 bit data to be written to TE register
   181	 *
   182	 **/
   183	static void dw_dphy_te_write(struct dw_dphy *dphy, u16 addr, u8 data)
   184	{
   185		/* For writing the 4-bit testcode MSBs */
   186	
   187		/* Ensure that testclk and testen is set to low */
   188		regmap_field_write(dphy->rf_cfg1[TEST_CLK], 0);
   189		regmap_field_write(dphy->rf_cfg1[TEST_EN], 0);
   190	
   191		/* Set testen to high */
   192		regmap_field_write(dphy->rf_cfg1[TEST_EN], 1);
   193	
   194		/* Set testclk to high */
   195		regmap_field_write(dphy->rf_cfg1[TEST_CLK], 1);
   196	
   197		/* Place 0x00 in testdin */
   198		regmap_field_write(dphy->rf_cfg1[TEST_IN], 0);
   199	
   200		/*
   201		 * Set testclk to low (with the falling edge on testclk, the testdin signal
   202		 * content is latched internally)
   203		 */
   204		regmap_field_write(dphy->rf_cfg1[TEST_CLK], 0);
   205	
   206		/* Set testen to low */
   207		regmap_field_write(dphy->rf_cfg1[TEST_EN], 0);
   208	
   209		/* Place the 8-bit word corresponding to the testcode MSBs in testdin */
   210		regmap_field_write(dphy->rf_cfg1[TEST_IN], (addr >> 8));
   211	
   212		/* Set testclk to high */
   213		regmap_field_write(dphy->rf_cfg1[TEST_CLK], 1);
   214	
   215		/* For writing the 8-bit testcode LSBs */
   216	
   217		/* Set testclk to low */
   218		regmap_field_write(dphy->rf_cfg1[TEST_CLK], 0);
   219	
   220		/* Set testen to high */
   221		regmap_field_write(dphy->rf_cfg1[TEST_EN], 1);
   222	
   223		/* Set testclk to high */
   224		regmap_field_write(dphy->rf_cfg1[TEST_CLK], 1);
   225	
   226		/* Place the 8-bit word test data in testdin */
   227		regmap_field_write(dphy->rf_cfg1[TEST_IN], (addr & 0xff));
   228	
   229		/*
   230		 * Set testclk to low (with the falling edge on testclk, the testdin signal
   231		 * content is latched internally)
   232		 */
   233		regmap_field_write(dphy->rf_cfg1[TEST_CLK], 0);
   234	
   235		/* Set testen to low */
   236		regmap_field_write(dphy->rf_cfg1[TEST_EN], 0);
   237	
   238		/* For writing the data */
   239	
   240		/* Place the 8-bit word corresponding to the page offset in testdin */
   241		regmap_field_write(dphy->rf_cfg1[TEST_IN], data);
   242	
   243		/* Set testclk to high (test data is programmed internally) */
   244		regmap_field_write(dphy->rf_cfg1[TEST_CLK], 1);
   245	}
   246	
   247	/**
   248	 * dw_dphy_te_read - read register from test enable interface
   249	 *
   250	 * @dphy: pointer to the dw_dphy private data structure
   251	 * @addr: 12 bit TE address register (16 bit container)
   252	 * @returns: 8 bit data from TE register
   253	 **/
 > 254	static u8 dw_dphy_te_read(struct dw_dphy *dphy, u16 addr)
   255	{
   256		u32 data;
   257	
   258		/* For writing the 4-bit testcode MSBs */
   259	
   260		/* Ensure that testclk and testen is set to low */
   261		regmap_field_write(dphy->rf_cfg1[TEST_CLK], 0);
   262		regmap_field_write(dphy->rf_cfg1[TEST_EN], 0);
   263	
   264		/* Set testen to high */
   265		regmap_field_write(dphy->rf_cfg1[TEST_EN], 1);
   266	
   267		/* Set testclk to high */
   268		regmap_field_write(dphy->rf_cfg1[TEST_CLK], 1);
   269	
   270		/* Place 0x00 in testdin */
   271		regmap_field_write(dphy->rf_cfg1[TEST_IN], 0);
   272	
   273		/*
   274		 * Set testclk to low (with the falling edge on testclk, the testdin signal
   275		 * content is latched internally)
   276		 */
   277		regmap_field_write(dphy->rf_cfg1[TEST_CLK], 0);
   278	
   279		/* Set testen to low */
   280		regmap_field_write(dphy->rf_cfg1[TEST_EN], 0);
   281	
   282		/* Place the 8-bit word corresponding to the testcode MSBs in testdin */
   283		regmap_field_write(dphy->rf_cfg1[TEST_IN], (addr >> 8));
   284	
   285		/* Set testclk to high */
   286		regmap_field_write(dphy->rf_cfg1[TEST_CLK], 1);
   287	
   288		/* For writing the 8-bit testcode LSBs */
   289	
   290		/* Set testclk to low */
   291		regmap_field_write(dphy->rf_cfg1[TEST_CLK], 0);
   292	
   293		/* Set testen to high */
   294		regmap_field_write(dphy->rf_cfg1[TEST_EN], 1);
   295	
   296		/* Set testclk to high */
   297		regmap_field_write(dphy->rf_cfg1[TEST_CLK], 1);
   298	
   299		/* Place the 8-bit word test data in testdin */
   300		regmap_field_write(dphy->rf_cfg1[TEST_IN], (addr & 0xff));
   301	
   302		/*
   303		 * Set testclk to low (with the falling edge on testclk, the testdin signal
   304		 * content is latched internally)
   305		 */
   306		regmap_field_write(dphy->rf_cfg1[TEST_CLK], 0);
   307	
   308		/* Set testen to low */
   309		regmap_field_write(dphy->rf_cfg1[TEST_EN], 0);
   310	
   311		regmap_field_read(dphy->rf_cfg1[TEST_OUT], &data);
   312	
   313		return (u8)data;
   314	}
   315	

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
