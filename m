Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BE348C52D7C
	for <linux-phy@archiver.kernel.org>; Mon, 12 Aug 2024 20:26:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TbMG03gx3rmB6hjNBQBfL/l5dG8GxqGZ00+F4Dm2oKg=; b=uSB5IBpRTvIEY6
	JNoLCvy8/l+vg5b/bc48/2CrLieZBxTgt9mh/vsf8y4Hft3XhYm5zEeFPpRUbblJSv1UOnZQMYsmi
	4cDHjWvonvvPMLWfI5Fq3eL0er/+MSo1jA0AG1Fucdf5wbTYVy8Bv7MkhvTwvdXpxG8cBmqxaWPdq
	f0lXpdBn2yeLY7bvkgV6HAIpR76eR94c5zievyoYy9gQj0/SneMJrOi5OIp4wCTEkWYlg5xmi+XOK
	libfNkK+ePcXvJyp7GJQhTzgz00fVa3Mpnxke8qCGJu38aHQci4vlRV3XnDg0VE/u8t4VmHzdMWn7
	XF1NQcN4dhK4hbOE1ONw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sdbcD-00000001SRV-1z8u;
	Mon, 12 Aug 2024 20:26:05 +0000
Received: from mgamail.intel.com ([192.198.163.19])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sdbbp-00000001SKN-1Rxr;
	Mon, 12 Aug 2024 20:25:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1723494341; x=1755030341;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=jN9wnNczQ9GMZEEKhewppiaItX6FtzTVk26GlChufhk=;
  b=Ji0SwAHgEKB99MMrED+lubkZA4Tbo4s4EtFbkA0Wy1b5I8FeB30vFWxZ
   U9iUWjlQrr6qBQiv/VKCgB1mW1Px3CHXVJHhAWGyVuAxqUD+a/BUsbL+U
   cabwxoEw9Ei9CXfN75lrOR//aqWu8OKh5L6THK+qMf8U7MKQ7iWTGDy7w
   0WIqUUTSpCRQwBDreZIjQdyz5oTrJjTBtTF6Tj5KtQrd0MRsYb6oZ8RKA
   ksRojGRPjH5k7mvMas+RUBvVdupDM+7eS6OOT3pUqmEVakf/ta8IY+6MN
   CSQ3eTE2PpC3PeY6leXZypLmsoDNxMayl8qJ1I45j9c3WKEngNFFls92o
   g==;
X-CSE-ConnectionGUID: yfhp90tJRIWS9NW3aU19RA==
X-CSE-MsgGUID: j/o9MTvgSmiFtKVzELFsSA==
X-IronPort-AV: E=McAfee;i="6700,10204,11162"; a="21272556"
X-IronPort-AV: E=Sophos;i="6.09,284,1716274800"; 
   d="scan'208";a="21272556"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
  by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 12 Aug 2024 13:25:38 -0700
X-CSE-ConnectionGUID: boTyfTxQTY6gD+Pl+O1ixg==
X-CSE-MsgGUID: pxSpLirDRFOhdkJFReh7Ww==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,284,1716274800"; 
   d="scan'208";a="58042333"
Received: from unknown (HELO b6bf6c95bbab) ([10.239.97.151])
  by fmviesa006.fm.intel.com with ESMTP; 12 Aug 2024 13:25:35 -0700
Received: from kbuild by b6bf6c95bbab with local (Exim 4.96)
	(envelope-from <lkp@intel.com>)
	id 1sdbbd-000C9r-2F;
	Mon, 12 Aug 2024 20:25:30 +0000
Date: Tue, 13 Aug 2024 04:24:27 +0800
From: kernel test robot <lkp@intel.com>
To: Christian Bruel <christian.bruel@foss.st.com>, vkoul@kernel.org,
	kishon@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
	conor+dt@kernel.org, mcoquelin.stm32@gmail.com,
	alexandre.torgue@foss.st.com, p.zabel@pengutronix.de
Cc: oe-kbuild-all@lists.linux.dev, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-stm32@st-md-mailman.stormreply.com,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	fabrice.gasnier@foss.st.com,
	Christian Bruel <christian.bruel@foss.st.com>
Subject: Re: [PATCH 3/5] phy: stm32: Add support for STM32MP25 COMBOPHY.
Message-ID: <202408130447.IzvuJERR-lkp@intel.com>
References: <20240812120529.3564390-4-christian.bruel@foss.st.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240812120529.3564390-4-christian.bruel@foss.st.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240812_132541_463900_FE55430A 
X-CRM114-Status: GOOD (  12.54  )
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

Hi Christian,

kernel test robot noticed the following build errors:

[auto build test ERROR on atorgue-stm32/stm32-next]
[also build test ERROR on robh/for-next linus/master v6.11-rc3 next-20240812]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Christian-Bruel/MAINTAINERS-add-entry-for-ST-STM32MP25-COMBOPHY-driver/20240812-201003
base:   https://git.kernel.org/pub/scm/linux/kernel/git/atorgue/stm32.git stm32-next
patch link:    https://lore.kernel.org/r/20240812120529.3564390-4-christian.bruel%40foss.st.com
patch subject: [PATCH 3/5] phy: stm32: Add support for STM32MP25 COMBOPHY.
config: arc-allyesconfig (https://download.01.org/0day-ci/archive/20240813/202408130447.IzvuJERR-lkp@intel.com/config)
compiler: arceb-elf-gcc (GCC) 13.2.0
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20240813/202408130447.IzvuJERR-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202408130447.IzvuJERR-lkp@intel.com/

All errors (new ones prefixed by >>):

   drivers/phy/st/phy-stm32-combophy.c: In function 'stm32_impedance_tune':
>> drivers/phy/st/phy-stm32-combophy.c:134:36: error: implicit declaration of function 'FIELD_PREP' [-Werror=implicit-function-declaration]
     134 |                                    FIELD_PREP(STM32MP25_PCIEPRG_IMPCTRL_OHM, imp_of));
         |                                    ^~~~~~~~~~
>> drivers/phy/st/phy-stm32-combophy.c:137:26: error: implicit declaration of function 'FIELD_GET' [-Werror=implicit-function-declaration]
     137 |                 imp_of = FIELD_GET(STM32MP25_PCIEPRG_IMPCTRL_OHM, val);
         |                          ^~~~~~~~~
   cc1: some warnings being treated as errors


vim +/FIELD_PREP +134 drivers/phy/st/phy-stm32-combophy.c

   107	
   108	static int stm32_impedance_tune(struct stm32_combophy *combophy)
   109	{
   110		u8 imp_size = ARRAY_SIZE(imp_lookup);
   111		u8 vswing_size = ARRAY_SIZE(imp_lookup[0].vswing);
   112		u8 imp_of, vswing_of;
   113		u32 max_imp = imp_lookup[0].microohm;
   114		u32 min_imp = imp_lookup[imp_size - 1].microohm;
   115		u32 max_vswing = imp_lookup[imp_size - 1].vswing[vswing_size - 1];
   116		u32 min_vswing = imp_lookup[0].vswing[0];
   117		u32 val;
   118	
   119		if (!of_property_read_u32(combophy->dev->of_node, "st,output-micro-ohms", &val)) {
   120			if (val < min_imp || val > max_imp) {
   121				dev_err(combophy->dev, "Invalid value %u for output ohm\n", val);
   122				return -EINVAL;
   123			}
   124	
   125			for (imp_of = 0 ; imp_of < ARRAY_SIZE(imp_lookup); imp_of++)
   126				if (imp_lookup[imp_of].microohm <= val)
   127					break;
   128	
   129			dev_dbg(combophy->dev, "Set %u micro-ohms output impedance\n",
   130				imp_lookup[imp_of].microohm);
   131	
   132			regmap_update_bits(combophy->regmap, SYSCFG_PCIEPRGCR,
   133					   STM32MP25_PCIEPRG_IMPCTRL_OHM,
 > 134					   FIELD_PREP(STM32MP25_PCIEPRG_IMPCTRL_OHM, imp_of));
   135		} else {
   136			regmap_read(combophy->regmap, SYSCFG_PCIEPRGCR, &val);
 > 137			imp_of = FIELD_GET(STM32MP25_PCIEPRG_IMPCTRL_OHM, val);
   138		}
   139	
   140		if (!of_property_read_u32(combophy->dev->of_node, "st,output-vswing-microvolt", &val)) {
   141			if (val < min_vswing || val > max_vswing) {
   142				dev_err(combophy->dev, "Invalid value %u for output vswing\n", val);
   143				return -EINVAL;
   144			}
   145	
   146			for (vswing_of = 0 ; vswing_of < ARRAY_SIZE(imp_lookup[imp_of].vswing); vswing_of++)
   147				if (imp_lookup[imp_of].vswing[vswing_of] >= val)
   148					break;
   149	
   150			dev_dbg(combophy->dev, "Set %u microvolt swing\n",
   151				 imp_lookup[imp_of].vswing[vswing_of]);
   152	
   153			regmap_update_bits(combophy->regmap, SYSCFG_PCIEPRGCR,
   154					   STM32MP25_PCIEPRG_IMPCTRL_VSWING,
   155					   FIELD_PREP(STM32MP25_PCIEPRG_IMPCTRL_VSWING, vswing_of));
   156		}
   157	
   158		return 0;
   159	}
   160	

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
