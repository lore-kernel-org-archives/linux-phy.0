Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4F75CCA0EF8
	for <linux-phy@archiver.kernel.org>; Thu, 21 Aug 2025 11:36:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fAKYBD8drwh/GPIYazJXaH4dxQyCaAPbqxf0uNrHTb4=; b=UpC+Vju4kYEKsY
	tl838Yk4lFFz3agk+387peiCZhcs8u5TMFcj3ZR74Ya2JpET6foTMcrFYR7YwcE812LYuJPE/pveE
	Ekhg/yAw6RZZNOVQogtrvwHrb0gSB7Hd5ODUpg7huuTVZmGoNRx6TCft1LmLrsIWNttvXwmGPGgdc
	D8r3hX/PjG7Uwq0KmSFGKjPQqmYRTG2OisKh2SL1TOSyEHpeaYqovkbeMKOwx17fsUHg7OziB4v1U
	/RRYB638AJh1Lmh+awKhvfGHe1fFtHgPy+J2PPYw2LyUnnNb+dWJpO/na/1Frngd01wD1dyWtT3ln
	rjJefoSEbRyvpaHtmanA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1up3aN-0000000GmDr-3zbK;
	Thu, 21 Aug 2025 11:36:03 +0000
Received: from mgamail.intel.com ([198.175.65.20])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1up0rP-0000000GHqD-49gM
	for linux-phy@lists.infradead.org;
	Thu, 21 Aug 2025 08:41:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1755765688; x=1787301688;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=Hr2Mq/c3wRRLOd0x+eYAg6WQzQOLsymSwbT9bZ4h144=;
  b=HD0r3L/cDDk7R3aywK8QY9JhcZly0fd1cfosIe0VCOgAoemNGwgIdrpZ
   FY4TCzzOhbdNAZ+GYcv5wSLlTHsQ1dSk9qPQsW1xoCVRgJ5jr5BBAti6Y
   tsdzPvya1dLENq9X4Rcbuo0nNj1kpRL/rPP314w4jtY1UkxdvKaWEJ+UV
   Tmei+Zavh9lGP1Zlf3BZiMMx+wKoGm+Zxwli+say/0bbaoXFyV2iBAgzV
   qRlen75xkBEb3heKYPgRLoK/O7NHzhpLuOSoXfVsIx9OIKKtOIZi+eocU
   ua9iP7jwZQN9tOGp4Kz/SfWbU6CWTsNI+Xg76+EGfR1nd+6LYN58DOYa1
   w==;
X-CSE-ConnectionGUID: QsT1kSoqRvWC6TwhWjjSNA==
X-CSE-MsgGUID: NcE1lyTeRjemqu7RTJl87Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11527"; a="57759725"
X-IronPort-AV: E=Sophos;i="6.17,306,1747724400"; 
   d="scan'208";a="57759725"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
  by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 21 Aug 2025 01:41:24 -0700
X-CSE-ConnectionGUID: VBxdbat7RHmC/2tZJbIT4A==
X-CSE-MsgGUID: sI80Ql8OSPiy1PZeQZXOGA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,306,1747724400"; 
   d="scan'208";a="199229185"
Received: from lkp-server02.sh.intel.com (HELO 4ea60e6ab079) ([10.239.97.151])
  by fmviesa001.fm.intel.com with ESMTP; 21 Aug 2025 01:41:19 -0700
Received: from kbuild by 4ea60e6ab079 with local (Exim 4.96)
	(envelope-from <lkp@intel.com>)
	id 1up0rF-000K6l-0s;
	Thu, 21 Aug 2025 08:41:17 +0000
Date: Thu, 21 Aug 2025 16:41:05 +0800
From: kernel test robot <lkp@intel.com>
To: Yulin Lu <luyulin@eswincomputing.com>, dlemoal@kernel.org,
	cassel@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
	conor+dt@kernel.org, linux-ide@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	vkoul@kernel.org, kishon@kernel.org, linux-phy@lists.infradead.org
Cc: llvm@lists.linux.dev, oe-kbuild-all@lists.linux.dev,
	ningyu@eswincomputing.com, zhengyu@eswincomputing.com,
	linmin@eswincomputing.com, huangyifeng@eswincomputing.com,
	fenglin@eswincomputing.com, lianghujun@eswincomputing.com,
	luyulin <luyulin@eswincomputing.com>
Subject: Re: [PATCH v2 3/3] phy: eswin: Create eswin directory and add
 EIC7700 SATA PHY driver
Message-ID: <202508211623.d8Spdqn7-lkp@intel.com>
References: <20250819140043.1862-1-luyulin@eswincomputing.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250819140043.1862-1-luyulin@eswincomputing.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250821_014128_083522_F3C3E989 
X-CRM114-Status: GOOD (  14.04  )
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

Hi Yulin,

kernel test robot noticed the following build errors:

[auto build test ERROR on robh/for-next]
[also build test ERROR on linus/master v6.17-rc2 next-20250820]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Yulin-Lu/dt-bindings-ata-eswin-Document-for-EIC7700-SoC-ahci/20250820-213411
base:   https://git.kernel.org/pub/scm/linux/kernel/git/robh/linux.git for-next
patch link:    https://lore.kernel.org/r/20250819140043.1862-1-luyulin%40eswincomputing.com
patch subject: [PATCH v2 3/3] phy: eswin: Create eswin directory and add EIC7700 SATA PHY driver
config: s390-allmodconfig (https://download.01.org/0day-ci/archive/20250821/202508211623.d8Spdqn7-lkp@intel.com/config)
compiler: clang version 18.1.8 (https://github.com/llvm/llvm-project 3b5b5c1ec4a3095ab096dd780e84d7ab81f3d7ff)
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20250821/202508211623.d8Spdqn7-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202508211623.d8Spdqn7-lkp@intel.com/

All errors (new ones prefixed by >>):

>> drivers/phy/eswin/phy-eic7700-sata.c:60:8: error: call to undeclared function 'readl'; ISO C99 and later do not support implicit function declarations [-Wimplicit-function-declaration]
      60 |                 if ((readl(base + reg) & checkbit) == status)
         |                      ^
   drivers/phy/eswin/phy-eic7700-sata.c:79:8: error: call to undeclared function 'readl'; ISO C99 and later do not support implicit function declarations [-Wimplicit-function-declaration]
      79 |         val = readl(sata_phy->regs + SATA_CLK_CTRL);
         |               ^
>> drivers/phy/eswin/phy-eic7700-sata.c:81:2: error: call to undeclared function 'writel'; ISO C99 and later do not support implicit function declarations [-Wimplicit-function-declaration]
      81 |         writel(val, sata_phy->regs + SATA_CLK_CTRL);
         |         ^
   drivers/phy/eswin/phy-eic7700-sata.c:119:8: error: call to undeclared function 'readl'; ISO C99 and later do not support implicit function declarations [-Wimplicit-function-declaration]
     119 |         val = readl(sata_phy->regs + SATA_RESET_CTRL);
         |               ^
   drivers/phy/eswin/phy-eic7700-sata.c:121:2: error: call to undeclared function 'writel'; ISO C99 and later do not support implicit function declarations [-Wimplicit-function-declaration]
     121 |         writel(val, sata_phy->regs + SATA_RESET_CTRL);
         |         ^
   drivers/phy/eswin/phy-eic7700-sata.c:172:8: error: call to undeclared function 'readl'; ISO C99 and later do not support implicit function declarations [-Wimplicit-function-declaration]
     172 |         val = readl(sata_phy->regs + SATA_CLK_CTRL);
         |               ^
   drivers/phy/eswin/phy-eic7700-sata.c:174:2: error: call to undeclared function 'writel'; ISO C99 and later do not support implicit function declarations [-Wimplicit-function-declaration]
     174 |         writel(val, sata_phy->regs + SATA_CLK_CTRL);
         |         ^
   7 errors generated.


vim +/readl +60 drivers/phy/eswin/phy-eic7700-sata.c

    52	
    53	static int wait_for_phy_ready(void __iomem *base, u32 reg, u32 checkbit,
    54				      u32 status)
    55	{
    56		unsigned long start = jiffies;
    57		unsigned long timeout = start + PHY_READY_TIMEOUT;
    58	
    59		while (time_before(start, timeout)) {
  > 60			if ((readl(base + reg) & checkbit) == status)
    61				return 0;
    62			usleep_range(50, 70);
    63		}
    64	
    65		return -EFAULT;
    66	}
    67	
    68	static int eic7700_sata_phy_init(struct phy *phy)
    69	{
    70		struct eic7700_sata_phy *sata_phy = phy_get_drvdata(phy);
    71		u32 val = 0;
    72		int ret = 0;
    73	
    74		/*
    75		 * The SATA_CLK_CTRL register offset controls the pmalive, rxoob,
    76		 * and rbc clocks gate provided by the PHY through the HSP bus,
    77		 * and it is not registered in the clock tree.
    78		 */
    79		val = readl(sata_phy->regs + SATA_CLK_CTRL);
    80		val |= SATA_SYS_CLK_EN;
  > 81		writel(val, sata_phy->regs + SATA_CLK_CTRL);
    82	
    83		writel(SATA_CLK_RST_SOURCE_PHY, sata_phy->regs + SATA_REF_CTRL1);
    84		writel(SATA_P0_AMPLITUDE_GEN1 | SATA_P0_AMPLITUDE_GEN2 |
    85		       SATA_P0_AMPLITUDE_GEN3, sata_phy->regs + SATA_PHY_CTRL0);
    86		writel(SATA_P0_PHY_TX_PREEMPH_GEN1 | SATA_P0_PHY_TX_PREEMPH_GEN2 |
    87		       SATA_P0_PHY_TX_PREEMPH_GEN3, sata_phy->regs + SATA_PHY_CTRL1);
    88		writel(SATA_LOS_LEVEL | SATA_LOS_BIAS,
    89		       sata_phy->regs + SATA_LOS_IDEN);
    90		writel(SATA_M_CSYSREQ | SATA_S_CSYSREQ,
    91		       sata_phy->regs + SATA_AXI_LP_CTRL);
    92		writel(SATA_REF_REPEATCLK_EN | SATA_REF_USE_PAD,
    93		       sata_phy->regs + SATA_REG_CTRL);
    94		writel(SATA_MPLL_MULTIPLIER, sata_phy->regs + SATA_MPLL_CTRL);
    95		usleep_range(15, 20);
    96	
    97		/*
    98		 * The SATA_RESET_CTRL register offset controls reset/deassert
    99		 * for both the port and the PHY through the HSP bus,
   100		 * and it is not registered in the reset tree.
   101		 */
   102		val = readl(sata_phy->regs + SATA_RESET_CTRL);
   103		val &= ~(SATA_PHY_RESET | SATA_PORT_RESET);
   104		writel(val, sata_phy->regs + SATA_RESET_CTRL);
   105	
   106		ret = wait_for_phy_ready(sata_phy->regs, SATA_P0_PHY_STAT,
   107					 SATA_P0_PHY_READY, 1);
   108		if (ret < 0)
   109			dev_err(&sata_phy->phy->dev,
   110				"PHY READY check failed\n");
   111		return ret;
   112	}
   113	

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
