Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F273BC3DA7F
	for <linux-phy@archiver.kernel.org>; Mon, 12 Aug 2024 20:15:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4xrgmJbWTfDfyD+sdIrHN8pI7bY5IVXsnMXyAQzMeYM=; b=Tr8EPcGvRLb3iy
	BOkL6lIhfhezYCEZZHHuVwsH9GTTJYteTqWkrwvmXv77vjhNYMW0nzi+Z5rCi4vUr10/1gAKVOrST
	bwXhDEojDuKjI/WIRcOXeA/trSOxju6EitC4DNTvzTWtFRA+Ee9tQb5XQ9FjsTZ5VznMgji8Rsubs
	iZQRaMkkuIoA/XClD+vPn0dFr1pLUxzUAV198FSeL+MzU0BROlWMtkFXi3KEaC/yQLq6gNs9Vwbma
	vR2sn603p62g+plNFmlPzld5OO9O0s3/Jv2GBbWeplgKSyFPizBGrcdMnEbRJZnH6mcoahG4PtHxm
	FqqqvXIxkbsfIyL0ddLA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sdbRk-00000001QwN-2tZM;
	Mon, 12 Aug 2024 20:15:16 +0000
Received: from mgamail.intel.com ([198.175.65.19])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sdbRh-00000001Qvn-1P51;
	Mon, 12 Aug 2024 20:15:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1723493714; x=1755029714;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=ea+QujSB7dC9as46er5ru4Cjk2Gq/erzLIw6YWe9sBQ=;
  b=gUTCCr2YNSTVNGWV1jclttBu4GiVhw9TH6F2GolCbxJ12O2PoR+OCczr
   ieTrHGOluDl2Y9XZk8VuvNwG+Kx+NfVCNqcEGdWxor4o8aD8iHNjBQKVm
   /OR1fQ9sn/HBbgt5tbqWCfFfqblqsDncNnwAj2AX85R/uRJbVrX6yR4z0
   IzMrlQaAjTVsz3SZZ6Zon+D/n+kxyX54tkOOz1mpbuSeh4aa7eXiaRugX
   Xte0kRMgFjr44WLrCxxZklYLjh99PNeYV9zPMPSA89zoOZ8M2aIDZ5EFm
   p/3F9ZFAlY6juio8+cSIAgvnJftVi+hjsvag/Z9p0HmrZSIrRn6B1kDvm
   w==;
X-CSE-ConnectionGUID: W4EEKMEpSdmIJyNTWJzOaA==
X-CSE-MsgGUID: iPnm5bJ4Qs2WXlA91UQinw==
X-IronPort-AV: E=McAfee;i="6700,10204,11162"; a="21483809"
X-IronPort-AV: E=Sophos;i="6.09,284,1716274800"; 
   d="scan'208";a="21483809"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
  by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 12 Aug 2024 13:15:10 -0700
X-CSE-ConnectionGUID: Uq4bWhzORUWV+Dk3EjioHQ==
X-CSE-MsgGUID: Ru7RfX0GTv2W59MNzPhuxg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,284,1716274800"; 
   d="scan'208";a="62781081"
Received: from unknown (HELO b6bf6c95bbab) ([10.239.97.151])
  by fmviesa005.fm.intel.com with ESMTP; 12 Aug 2024 13:15:06 -0700
Received: from kbuild by b6bf6c95bbab with local (Exim 4.96)
	(envelope-from <lkp@intel.com>)
	id 1sdbRX-000C8r-32;
	Mon, 12 Aug 2024 20:15:03 +0000
Date: Tue, 13 Aug 2024 04:14:06 +0800
From: kernel test robot <lkp@intel.com>
To: Christian Bruel <christian.bruel@foss.st.com>, vkoul@kernel.org,
	kishon@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
	conor+dt@kernel.org, mcoquelin.stm32@gmail.com,
	alexandre.torgue@foss.st.com, p.zabel@pengutronix.de
Cc: llvm@lists.linux.dev, oe-kbuild-all@lists.linux.dev,
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
	linux-stm32@st-md-mailman.stormreply.com,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	fabrice.gasnier@foss.st.com,
	Christian Bruel <christian.bruel@foss.st.com>
Subject: Re: [PATCH 3/5] phy: stm32: Add support for STM32MP25 COMBOPHY.
Message-ID: <202408130307.IK7U1H7o-lkp@intel.com>
References: <20240812120529.3564390-4-christian.bruel@foss.st.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240812120529.3564390-4-christian.bruel@foss.st.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240812_131513_570892_7706F125 
X-CRM114-Status: GOOD (  13.65  )
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
config: hexagon-allmodconfig (https://download.01.org/0day-ci/archive/20240813/202408130307.IK7U1H7o-lkp@intel.com/config)
compiler: clang version 20.0.0git (https://github.com/llvm/llvm-project f86594788ce93b696675c94f54016d27a6c21d18)
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20240813/202408130307.IK7U1H7o-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202408130307.IK7U1H7o-lkp@intel.com/

All errors (new ones prefixed by >>):

   In file included from drivers/phy/st/phy-stm32-combophy.c:12:
   In file included from include/linux/phy/phy.h:17:
   In file included from include/linux/regulator/consumer.h:35:
   In file included from include/linux/suspend.h:5:
   In file included from include/linux/swap.h:9:
   In file included from include/linux/memcontrol.h:13:
   In file included from include/linux/cgroup.h:26:
   In file included from include/linux/kernel_stat.h:9:
   In file included from include/linux/interrupt.h:11:
   In file included from include/linux/hardirq.h:11:
   In file included from ./arch/hexagon/include/generated/asm/hardirq.h:1:
   In file included from include/asm-generic/hardirq.h:17:
   In file included from include/linux/irq.h:20:
   In file included from include/linux/io.h:14:
   In file included from arch/hexagon/include/asm/io.h:328:
   include/asm-generic/io.h:548:31: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
     548 |         val = __raw_readb(PCI_IOBASE + addr);
         |                           ~~~~~~~~~~ ^
   include/asm-generic/io.h:561:61: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
     561 |         val = __le16_to_cpu((__le16 __force)__raw_readw(PCI_IOBASE + addr));
         |                                                         ~~~~~~~~~~ ^
   include/uapi/linux/byteorder/little_endian.h:37:51: note: expanded from macro '__le16_to_cpu'
      37 | #define __le16_to_cpu(x) ((__force __u16)(__le16)(x))
         |                                                   ^
   In file included from drivers/phy/st/phy-stm32-combophy.c:12:
   In file included from include/linux/phy/phy.h:17:
   In file included from include/linux/regulator/consumer.h:35:
   In file included from include/linux/suspend.h:5:
   In file included from include/linux/swap.h:9:
   In file included from include/linux/memcontrol.h:13:
   In file included from include/linux/cgroup.h:26:
   In file included from include/linux/kernel_stat.h:9:
   In file included from include/linux/interrupt.h:11:
   In file included from include/linux/hardirq.h:11:
   In file included from ./arch/hexagon/include/generated/asm/hardirq.h:1:
   In file included from include/asm-generic/hardirq.h:17:
   In file included from include/linux/irq.h:20:
   In file included from include/linux/io.h:14:
   In file included from arch/hexagon/include/asm/io.h:328:
   include/asm-generic/io.h:574:61: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
     574 |         val = __le32_to_cpu((__le32 __force)__raw_readl(PCI_IOBASE + addr));
         |                                                         ~~~~~~~~~~ ^
   include/uapi/linux/byteorder/little_endian.h:35:51: note: expanded from macro '__le32_to_cpu'
      35 | #define __le32_to_cpu(x) ((__force __u32)(__le32)(x))
         |                                                   ^
   In file included from drivers/phy/st/phy-stm32-combophy.c:12:
   In file included from include/linux/phy/phy.h:17:
   In file included from include/linux/regulator/consumer.h:35:
   In file included from include/linux/suspend.h:5:
   In file included from include/linux/swap.h:9:
   In file included from include/linux/memcontrol.h:13:
   In file included from include/linux/cgroup.h:26:
   In file included from include/linux/kernel_stat.h:9:
   In file included from include/linux/interrupt.h:11:
   In file included from include/linux/hardirq.h:11:
   In file included from ./arch/hexagon/include/generated/asm/hardirq.h:1:
   In file included from include/asm-generic/hardirq.h:17:
   In file included from include/linux/irq.h:20:
   In file included from include/linux/io.h:14:
   In file included from arch/hexagon/include/asm/io.h:328:
   include/asm-generic/io.h:585:33: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
     585 |         __raw_writeb(value, PCI_IOBASE + addr);
         |                             ~~~~~~~~~~ ^
   include/asm-generic/io.h:595:59: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
     595 |         __raw_writew((u16 __force)cpu_to_le16(value), PCI_IOBASE + addr);
         |                                                       ~~~~~~~~~~ ^
   include/asm-generic/io.h:605:59: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
     605 |         __raw_writel((u32 __force)cpu_to_le32(value), PCI_IOBASE + addr);
         |                                                       ~~~~~~~~~~ ^
   In file included from drivers/phy/st/phy-stm32-combophy.c:12:
   In file included from include/linux/phy/phy.h:17:
   In file included from include/linux/regulator/consumer.h:35:
   In file included from include/linux/suspend.h:5:
   In file included from include/linux/swap.h:9:
   In file included from include/linux/memcontrol.h:21:
   In file included from include/linux/mm.h:2253:
   include/linux/vmstat.h:514:36: warning: arithmetic between different enumeration types ('enum node_stat_item' and 'enum lru_list') [-Wenum-enum-conversion]
     514 |         return node_stat_name(NR_LRU_BASE + lru) + 3; // skip "nr_"
         |                               ~~~~~~~~~~~ ^ ~~~
>> drivers/phy/st/phy-stm32-combophy.c:134:8: error: call to undeclared function 'FIELD_PREP'; ISO C99 and later do not support implicit function declarations [-Wimplicit-function-declaration]
     134 |                                    FIELD_PREP(STM32MP25_PCIEPRG_IMPCTRL_OHM, imp_of));
         |                                    ^
>> drivers/phy/st/phy-stm32-combophy.c:137:12: error: call to undeclared function 'FIELD_GET'; ISO C99 and later do not support implicit function declarations [-Wimplicit-function-declaration]
     137 |                 imp_of = FIELD_GET(STM32MP25_PCIEPRG_IMPCTRL_OHM, val);
         |                          ^
   drivers/phy/st/phy-stm32-combophy.c:155:8: error: call to undeclared function 'FIELD_PREP'; ISO C99 and later do not support implicit function declarations [-Wimplicit-function-declaration]
     155 |                                    FIELD_PREP(STM32MP25_PCIEPRG_IMPCTRL_VSWING, vswing_of));
         |                                    ^
   7 warnings and 3 errors generated.


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
