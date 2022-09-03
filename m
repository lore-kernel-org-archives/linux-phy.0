Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6EEC9ECAAD4
	for <linux-phy@archiver.kernel.org>; Sat,  3 Sep 2022 15:24:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CFDi3M8fWWnYixhMvbLHdbCJqKcYC/C5qVdv0ZqVK8M=; b=C+vvRfmF7iOcGH
	iLRG3uontunUDWduGkir5qpV3xyeddYbNSrkeUZFnzHPFKaNAwkAP8P5ngDYQM118oKNg3dU+wBm5
	+7GbkM85bTrm40F0ztkgoulrOqxyflOc+w7TXEG8rNh7BY44L3GbsuTQloe9CvlGL8vFcZG+NA7v2
	aVzt1Ec8fCIYYnzw33YgqOJR4gv5MCR5iiBSGLSrKBTp/M+W6pga6x5V1r9swfL0dIz1YOIhHexRs
	60okztFIau/+0omWzU5jaAz8bBioSFSyI3dZZiO9PbKKq6lAhjNa85jn/7PVoAgnbMKry5VXFyKn9
	8ga+9XI1nbXmXmn1Zx/Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oUV0v-00Ctk2-Lv; Sat, 03 Sep 2022 15:24:53 +0000
Received: from mga11.intel.com ([192.55.52.93])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oUV0s-00CthM-Bf; Sat, 03 Sep 2022 15:24:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1662218690; x=1693754690;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=OUU011FZbdLoXmMTaSzRBkmckoLbRAk09nLoSqxKOnY=;
  b=B+R5Vy2TpXXhRyWifa/Xk7lrdY88wuU7sj+IHrpS4OIAhpGgvEXXe5tk
   hKdNa7GK8tx9mDejQJeNkV8B70H4BhuJETKO/ADDuU6nXvAl+ZVkr0g//
   BK90Dc/MaKX7xt3MFrwwT1Fyn8T5nK+GNzG3gMtPNGxV0txPLSDi6LVU8
   fUcGnBCq4DLLBL/KnVgTMavdZEvA2Nn8n02XwRXDemMGp6EI78rQXwyb4
   C0B2J7P38NCjLjbAuHpi4nvVJavaA4YFyYjl+7wiMp452BS7nPyx7kbFD
   l+YasfQWkmIXA7hiwB1C7v9hTGoI7S3R2O2c1V+7UAYNz/3gUJJgJ8K+u
   g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10459"; a="293753298"
X-IronPort-AV: E=Sophos;i="5.93,287,1654585200"; 
   d="scan'208";a="293753298"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
  by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 03 Sep 2022 08:24:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,287,1654585200"; 
   d="scan'208";a="609267503"
Received: from lkp-server02.sh.intel.com (HELO 95dfd251caa2) ([10.239.97.151])
  by orsmga007.jf.intel.com with ESMTP; 03 Sep 2022 08:24:43 -0700
Received: from kbuild by 95dfd251caa2 with local (Exim 4.96)
	(envelope-from <lkp@intel.com>)
	id 1oUV0l-0001p9-0u;
	Sat, 03 Sep 2022 15:24:43 +0000
Date: Sat, 3 Sep 2022 23:23:44 +0800
From: kernel test robot <lkp@intel.com>
To: Sean Anderson <sean.anderson@seco.com>, Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@ti.com>,
	linux-phy@lists.infradead.org
Cc: kbuild-all@lists.01.org, devicetree@vger.kernel.org,
	Ioana Ciornei <ioana.ciornei@nxp.com>,
	linux-arm-kernel@lists.infradead.org,
	Krzysztof Kozlowski <krzk@kernel.org>,
	Madalin Bucur <madalin.bucur@nxp.com>,
	Camelia Alexandra Groza <camelia.groza@nxp.com>,
	linuxppc-dev@lists.ozlabs.org, Rob Herring <robh+dt@kernel.org>,
	Sean Anderson <sean.anderson@seco.com>,
	Jonathan Corbet <corbet@lwn.net>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>, linux-clk@vger.kernel.org,
	linux-doc@vger.kernel.org
Subject: Re: [PATCH v5 4/8] phy: fsl: Add Lynx 10G SerDes driver
Message-ID: <202209032301.fWPibuKq-lkp@intel.com>
References: <20220902213721.946138-5-sean.anderson@seco.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220902213721.946138-5-sean.anderson@seco.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220903_082450_474578_D1FE273E 
X-CRM114-Status: GOOD (  16.36  )
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

Hi Sean,

I love your patch! Yet something to improve:

[auto build test ERROR on shawnguo/for-next]
[also build test ERROR on robh/for-next clk/clk-next arm/for-next arm64/for-next/core rockchip/for-next soc/for-next linus/master v6.0-rc3]
[cannot apply to xilinx-xlnx/master next-20220901]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Sean-Anderson/phy-Add-support-for-Lynx-10G-SerDes/20220903-053840
base:   https://git.kernel.org/pub/scm/linux/kernel/git/shawnguo/linux.git for-next
config: arc-allyesconfig (https://download.01.org/0day-ci/archive/20220903/202209032301.fWPibuKq-lkp@intel.com/config)
compiler: arceb-elf-gcc (GCC) 12.1.0
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # https://github.com/intel-lab-lkp/linux/commit/cbfe9294ef583cc8dffd9cebf9ff325bbcdb4cef
        git remote add linux-review https://github.com/intel-lab-lkp/linux
        git fetch --no-tags linux-review Sean-Anderson/phy-Add-support-for-Lynx-10G-SerDes/20220903-053840
        git checkout cbfe9294ef583cc8dffd9cebf9ff325bbcdb4cef
        # save the config file
        mkdir build_dir && cp config build_dir/.config
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=gcc-12.1.0 make.cross W=1 O=build_dir ARCH=arc SHELL=/bin/bash

If you fix the issue, kindly add following tag where applicable
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

   drivers/phy/freescale/phy-fsl-lynx-10g-clk.c: In function 'lynx_pll_recalc_rate':
>> drivers/phy/freescale/phy-fsl-lynx-10g-clk.c:255:25: error: implicit declaration of function 'FIELD_GET' [-Werror=implicit-function-declaration]
     255 |         u32 frate_sel = FIELD_GET(PLLaCR0_FRATE_SEL, cr0);
         |                         ^~~~~~~~~
   drivers/phy/freescale/phy-fsl-lynx-10g-clk.c: In function 'lynx_pll_set_rate':
>> drivers/phy/freescale/phy-fsl-lynx-10g-clk.c:340:16: error: implicit declaration of function 'FIELD_PREP' [-Werror=implicit-function-declaration]
     340 |         cr0 |= FIELD_PREP(PLLaCR0_RFCLK_SEL, rfclk_sel);
         |                ^~~~~~~~~~
   drivers/phy/freescale/phy-fsl-lynx-10g-clk.c: In function 'lynx_clk_init':
>> drivers/phy/freescale/phy-fsl-lynx-10g-clk.c:466:9: error: implicit declaration of function 'kfree'; did you mean 'vfree'? [-Werror=implicit-function-declaration]
     466 |         kfree(ref_name);
         |         ^~~~~
         |         vfree
   cc1: some warnings being treated as errors


vim +/FIELD_GET +255 drivers/phy/freescale/phy-fsl-lynx-10g-clk.c

   249	
   250	static unsigned long lynx_pll_recalc_rate(struct clk_hw *hw,
   251						  unsigned long parent_rate)
   252	{
   253		struct lynx_clk *clk = lynx_pll_to_clk(hw);
   254		u32 cr0 = lynx_read(clk, PLLaCR0(clk->idx));
 > 255		u32 frate_sel = FIELD_GET(PLLaCR0_FRATE_SEL, cr0);
   256		u32 rfclk_sel = FIELD_GET(PLLaCR0_RFCLK_SEL, cr0);
   257		u32 ratio = lynx_pll_ratio(frate_sel, rfclk_sel);
   258		unsigned long ret;
   259	
   260		/* Ensure that the parent matches our rfclk selector */
   261		if (rfclk_sel == lynx_rfclk_to_sel(parent_rate))
   262			ret = mult_frac(parent_rate, ratio, HZ_PER_KHZ);
   263		else
   264			ret = 0;
   265	
   266		dev_dbg(clk->dev, "recalc pll%d new=%llu parent=%lu\n", clk->idx,
   267			(u64)ret * HZ_PER_KHZ, parent_rate);
   268		return ret;
   269	}
   270	
   271	static long lynx_pll_round_rate(struct clk_hw *hw, unsigned long rate_khz,
   272					unsigned long *parent_rate)
   273	{
   274		int frate_sel, rfclk_sel;
   275		struct lynx_clk *clk = lynx_pll_to_clk(hw);
   276		u32 ratio;
   277	
   278		dev_dbg(clk->dev, "round pll%d new=%llu parent=%lu\n", clk->idx,
   279			(u64)rate_khz * HZ_PER_KHZ, *parent_rate);
   280	
   281		frate_sel = lynx_frate_to_sel(rate_khz);
   282		if (frate_sel < 0)
   283			return frate_sel;
   284	
   285		/* Try the current parent rate */
   286		rfclk_sel = lynx_rfclk_to_sel(*parent_rate);
   287		if (rfclk_sel >= 0) {
   288			ratio = lynx_pll_ratio(frate_sel, rfclk_sel);
   289			if (ratio)
   290				return mult_frac(*parent_rate, ratio, HZ_PER_KHZ);
   291		}
   292	
   293		/* Try all possible parent rates */
   294		for (rfclk_sel = 0;
   295		     rfclk_sel < ARRAY_SIZE(rfclk_sel_map);
   296		     rfclk_sel++) {
   297			unsigned long new_parent_rate;
   298	
   299			ratio = lynx_pll_ratio(frate_sel, rfclk_sel);
   300			if (!ratio)
   301				continue;
   302	
   303			/* Ensure the reference clock can produce this rate */
   304			new_parent_rate = rfclk_sel_map[rfclk_sel];
   305			new_parent_rate = clk_hw_round_rate(clk->ref, new_parent_rate);
   306			if (rfclk_sel != lynx_rfclk_to_sel(new_parent_rate))
   307				continue;
   308	
   309			*parent_rate = new_parent_rate;
   310			return mult_frac(new_parent_rate, ratio, HZ_PER_KHZ);
   311		}
   312	
   313		return -EINVAL;
   314	}
   315	
   316	static int lynx_pll_set_rate(struct clk_hw *hw, unsigned long rate_khz,
   317				   unsigned long parent_rate)
   318	{
   319		int frate_sel, rfclk_sel;
   320		struct lynx_clk *clk = lynx_pll_to_clk(hw);
   321		u32 ratio, cr0 = lynx_read(clk, PLLaCR0(clk->idx));
   322	
   323		dev_dbg(clk->dev, "set rate pll%d new=%llu parent=%lu\n", clk->idx,
   324			(u64)rate_khz * HZ_PER_KHZ, parent_rate);
   325	
   326		frate_sel = lynx_frate_to_sel(rate_khz);
   327		if (frate_sel < 0)
   328			return frate_sel;
   329	
   330		rfclk_sel = lynx_rfclk_to_sel(parent_rate);
   331		if (rfclk_sel < 0)
   332			return rfclk_sel;
   333	
   334		ratio = lynx_pll_ratio(frate_sel, rfclk_sel);
   335		if (!ratio)
   336			return -EINVAL;
   337	
   338		lynx_pll_stop(clk);
   339		cr0 &= ~(PLLaCR0_RFCLK_SEL | PLLaCR0_FRATE_SEL);
 > 340		cr0 |= FIELD_PREP(PLLaCR0_RFCLK_SEL, rfclk_sel);
   341		cr0 |= FIELD_PREP(PLLaCR0_FRATE_SEL, frate_sel);
   342		lynx_write(clk, cr0, PLLaCR0(clk->idx));
   343		/* Don't bother resetting if it's off */
   344		if (cr0 & PLLaCR0_POFF)
   345			return 0;
   346		return lynx_pll_reset(clk);
   347	}
   348	

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
