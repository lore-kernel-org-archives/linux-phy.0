Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 55C1BF513F0
	for <linux-phy@archiver.kernel.org>; Fri,  6 Mar 2026 02:47:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/nUBoZpfkl0QqApKLZ99JathWo65ILFAkDVp8RhvtLI=; b=QrYHwk+V56XEVM
	bdoUp6yxc8ofMM0PUu7t85+4gEqC2Pznw4UYU1nNV3V/6LvI88lDcPbOvYOcBhP2CJwI7vcoV8SbC
	cIuU1/VW/NHag1GiCEncaQu0ZZmfHMOW3TcthV5A2XdEku3p3fevC5pvsmXPk6rU8HLarSiBo4jiC
	FK1Sz9raQqxGVLsQulekTP9Rm2XwGZqRwbBJoe59Wefey48EVaBzdW9YTq2FqyuMcg8SsVc4nVr3b
	Ug2OBkjS0yny7STmFkckCN2+3g1aNPyZBIZMWIKWCjw5Auz6kjgsiEFkbRvcFx81g+FvMRiWgU7MW
	yEte1leKOzv0Rr9AeoFg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vyLDS-00000002u1p-08bv;
	Fri, 06 Mar 2026 02:47:02 +0000
Received: from mgamail.intel.com ([192.198.163.16])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vyLDE-00000002tuW-0dgm
	for linux-phy@lists.infradead.org;
	Fri, 06 Mar 2026 02:46:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1772765208; x=1804301208;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=doMVUVqbemJYUxeDypRQhGJM1zLEQQwioqlwDp/xqf4=;
  b=SqTl7mo4NhF8UjEuOE5aZT0zLPhSjRoQQClYgjY4HbT4T0ExqrljpZVD
   WoQeEhv7Bd8JZEbSQTrQpZopmeOXnMCtgzOaMipXXNmiqiEHPI24udBld
   +9h5BY0BgLZFe2mG6NwQ0609j5eebjHdOAnpKahEITs0dihEbGmGnBmGW
   bj54/761uSTTjXHhmuBBsHOIeAp22kUfIt7oPP3Pu0nprOUdTcLUyjHby
   0yIAER/w03LM6Mz4iKtyHfyaDyQmle2FYHwwkAGieHygOUXTBwYYOr3ah
   9ZsvZ5k65bFo6bjaOqCS/0PbyMqmt0SmyKvt3fSeuJUHQX0GJ9FYJPP6O
   Q==;
X-CSE-ConnectionGUID: ItOEJigySg23e/B7tW2MAg==
X-CSE-MsgGUID: IZqOCpuFSHypdfFAtR5wnA==
X-IronPort-AV: E=McAfee;i="6800,10657,11720"; a="61444926"
X-IronPort-AV: E=Sophos;i="6.23,104,1770624000"; 
   d="scan'208";a="61444926"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
  by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 05 Mar 2026 18:46:46 -0800
X-CSE-ConnectionGUID: wQ09Wkg0SkuH6gYWLCW+fA==
X-CSE-MsgGUID: GjehhDxyQuC4TU/vuAofwA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,104,1770624000"; 
   d="scan'208";a="215604967"
Received: from lkp-server01.sh.intel.com (HELO 058beb05654c) ([10.239.97.150])
  by fmviesa006.fm.intel.com with ESMTP; 05 Mar 2026 18:46:44 -0800
Received: from kbuild by 058beb05654c with local (Exim 4.98.2)
	(envelope-from <lkp@intel.com>)
	id 1vyLD7-000000000EP-2LIH;
	Fri, 06 Mar 2026 02:46:41 +0000
Date: Fri, 6 Mar 2026 10:45:48 +0800
From: kernel test robot <lkp@intel.com>
To: Gregory CLEMENT <gregory.clement@bootlin.com>,
	Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Aswath Govindraju <a-govindraju@ti.com>,
	Swapnil Jakhade <sjakhade@cadence.com>
Cc: oe-kbuild-all@lists.linux.dev,
	=?iso-8859-1?Q?Th=E9o?= Lebrun <theo.lebrun@bootlin.com>,
	Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
	linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org,
	Gregory CLEMENT <gregory.clement@bootlin.com>
Subject: Re: [PATCH] phy: cadence: Sierra: Do not modify register when
 getting parent clock
Message-ID: <202603061235.hrl27Jvj-lkp@intel.com>
References: <20260305-fix_sierra_get_parent-v1-1-a7c18e9e6c58@bootlin.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260305-fix_sierra_get_parent-v1-1-a7c18e9e6c58@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260305_184648_537581_CAA2EC0E 
X-CRM114-Status: UNSURE (   7.86  )
X-CRM114-Notice: Please train this message.
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

Hi Gregory,

kernel test robot noticed the following build warnings:

[auto build test WARNING on 11439c4635edd669ae435eec308f4ab8a0804808]

url:    https://github.com/intel-lab-lkp/linux/commits/Gregory-CLEMENT/phy-cadence-Sierra-Do-not-modify-register-when-getting-parent-clock/20260306-000915
base:   11439c4635edd669ae435eec308f4ab8a0804808
patch link:    https://lore.kernel.org/r/20260305-fix_sierra_get_parent-v1-1-a7c18e9e6c58%40bootlin.com
patch subject: [PATCH] phy: cadence: Sierra: Do not modify register when getting parent clock
config: xtensa-randconfig-001-20260306 (https://download.01.org/0day-ci/archive/20260306/202603061235.hrl27Jvj-lkp@intel.com/config)
compiler: xtensa-linux-gcc (GCC) 8.5.0
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20260306/202603061235.hrl27Jvj-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202603061235.hrl27Jvj-lkp@intel.com/

All warnings (new ones prefixed by >>):

   drivers/phy/cadence/phy-cadence-sierra.c: In function 'cdns_sierra_pll_mux_get_parent':
>> drivers/phy/cadence/phy-cadence-sierra.c:702:23: warning: unused variable 'termen_field' [-Wunused-variable]
     struct regmap_field *termen_field = mux->termen_field;
                          ^~~~~~~~~~~~
>> drivers/phy/cadence/phy-cadence-sierra.c:701:23: warning: unused variable 'plllc1en_field' [-Wunused-variable]
     struct regmap_field *plllc1en_field = mux->plllc1en_field;
                          ^~~~~~~~~~~~~~


vim +/termen_field +702 drivers/phy/cadence/phy-cadence-sierra.c

d88ca22d6f0c924 Aswath Govindraju      2022-01-28  697  
28081b72859f0fa Kishon Vijay Abraham I 2021-03-19  698  static u8 cdns_sierra_pll_mux_get_parent(struct clk_hw *hw)
28081b72859f0fa Kishon Vijay Abraham I 2021-03-19  699  {
28081b72859f0fa Kishon Vijay Abraham I 2021-03-19  700  	struct cdns_sierra_pll_mux *mux = to_cdns_sierra_pll_mux(hw);
da08aab940092a0 Swapnil Jakhade        2021-12-23 @701  	struct regmap_field *plllc1en_field = mux->plllc1en_field;
da08aab940092a0 Swapnil Jakhade        2021-12-23 @702  	struct regmap_field *termen_field = mux->termen_field;
28081b72859f0fa Kishon Vijay Abraham I 2021-03-19  703  	struct regmap_field *field = mux->pfdclk_sel_preg;
28081b72859f0fa Kishon Vijay Abraham I 2021-03-19  704  	unsigned int val;
da08aab940092a0 Swapnil Jakhade        2021-12-23  705  	int index;
28081b72859f0fa Kishon Vijay Abraham I 2021-03-19  706  
28081b72859f0fa Kishon Vijay Abraham I 2021-03-19  707  	regmap_field_read(field, &val);
da08aab940092a0 Swapnil Jakhade        2021-12-23  708  
4f20466dcc453ec Gregory CLEMENT        2026-03-05  709  	if (strstr(clk_hw_get_name(hw), clk_names[CDNS_SIERRA_PLL_CMNLC1]))
da08aab940092a0 Swapnil Jakhade        2021-12-23  710  		index = clk_mux_val_to_index(hw, cdns_sierra_pll_mux_table[CMN_PLLLC1], 0, val);
4f20466dcc453ec Gregory CLEMENT        2026-03-05  711  	else
da08aab940092a0 Swapnil Jakhade        2021-12-23  712  		index = clk_mux_val_to_index(hw, cdns_sierra_pll_mux_table[CMN_PLLLC], 0, val);
da08aab940092a0 Swapnil Jakhade        2021-12-23  713  
da08aab940092a0 Swapnil Jakhade        2021-12-23  714  	return index;
28081b72859f0fa Kishon Vijay Abraham I 2021-03-19  715  }
28081b72859f0fa Kishon Vijay Abraham I 2021-03-19  716  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
