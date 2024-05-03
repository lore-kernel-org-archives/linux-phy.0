Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D7F13C4345F
	for <linux-phy@archiver.kernel.org>; Fri,  3 May 2024 05:38:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=x5nkTGLbPW1zjnlcEmK60MtxCGAubpxyu0ERiHxupn0=; b=Q96uU7nCyCbYoN
	BxfgIEsXirctJZJh08VGNFyURsiYHpo+x7Jlzi0OneqyrPBNFqk7k3b4cNukiSMt8jCRmVxWxLcwE
	OsGHUUj1wnhDWUigAn29S9UBCldJWuIm4bR68YF8Rh5ioe2Te2vQvhI/tMOLPTDkqBX5dOP90qLZ9
	GmTLcUtTnf1e0DQsw6mXlRCs4LK0kp0jAwHWIDeSd+2Dv8E4C3VXrAlrgs0oplwgzfqRPOGLrmZca
	rKFXIZIiCeKqtKgUKJpEXUaqbd5aZuOeKNrhfIpx6XnzNjOghb0Ob35n8Bl+gQiiqW668ejPXeD6m
	umqr/n+hLzr2zq0doEnw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s2lco-0000000FAya-2Gmi;
	Fri, 03 May 2024 05:38:26 +0000
Received: from mgamail.intel.com ([192.198.163.13])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s2lck-0000000FAxW-2G5t
	for linux-phy@lists.infradead.org;
	Fri, 03 May 2024 05:38:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1714714703; x=1746250703;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=rKKCeOF3G9JpimaU43Lw2IpoOJrnNfrZXT1xQPXth8A=;
  b=a3O4suCGMwHmfK92vSbeQ9nVGhYp45tBKRfMVIGUJYCaHPUNUhge380K
   qjXo/TYLnTdVNiAlUMAkHMvrQrn393xJg7sCnPZTzvv34OuAfQl4n3PkE
   T/f5R7bBcVoNixVzSrqwbacyO7B8UgYD5Fa4FPZmLUizpCJwVegtRiaiX
   aRsYhcspCJUwhK1HBmiL/KWIWrRGsM6Go3gVWufVP0lbvx3DUFkuTol5L
   3GRGGFYcskfi2MdxNho8fezYaKTshhw6DgjBTfuKW/CZpiBhSotY6RxpJ
   eOMzk8HTsy9VdUvWY4Ys8/xUCv2+YvLZaxjwyCBIKHA1epvg8iTNgVYHR
   g==;
X-CSE-ConnectionGUID: 8Tq8spQmSu+FTQgNXWXzaQ==
X-CSE-MsgGUID: aY+rzYAVTSehfkLi1sdh/w==
X-IronPort-AV: E=McAfee;i="6600,9927,11062"; a="13463448"
X-IronPort-AV: E=Sophos;i="6.07,247,1708416000"; 
   d="scan'208";a="13463448"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
  by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 02 May 2024 22:38:18 -0700
X-CSE-ConnectionGUID: k8feyb1gQr+mYHjcJFVckg==
X-CSE-MsgGUID: WZxVMUhvTvuHjXpz3ZIjMw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,247,1708416000"; 
   d="scan'208";a="27372199"
Received: from lkp-server01.sh.intel.com (HELO e434dd42e5a1) ([10.239.97.150])
  by fmviesa007.fm.intel.com with ESMTP; 02 May 2024 22:38:15 -0700
Received: from kbuild by e434dd42e5a1 with local (Exim 4.96)
	(envelope-from <lkp@intel.com>)
	id 1s2lcb-000BLs-1D;
	Fri, 03 May 2024 05:38:13 +0000
Date: Fri, 3 May 2024 13:37:49 +0800
From: kernel test robot <lkp@intel.com>
To: Udipto Goswami <quic_ugoswami@quicinc.com>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>
Cc: oe-kbuild-all@lists.linux.dev, linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org,
	Udipto Goswami <quic_ugoswami@quicinc.com>
Subject: Re: [PATCH] phy: qcom-snps-femto-v2: Add load and voltage setting
 for LDO's used
Message-ID: <202405031311.9f1PrPou-lkp@intel.com>
References: <20240502123312.31083-1-quic_ugoswami@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240502123312.31083-1-quic_ugoswami@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240502_223822_621670_ADD25244 
X-CRM114-Status: GOOD (  11.49  )
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

Hi Udipto,

kernel test robot noticed the following build warnings:

[auto build test WARNING on linus/master]
[also build test WARNING on v6.9-rc6 next-20240502]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Udipto-Goswami/phy-qcom-snps-femto-v2-Add-load-and-voltage-setting-for-LDO-s-used/20240502-203521
base:   linus/master
patch link:    https://lore.kernel.org/r/20240502123312.31083-1-quic_ugoswami%40quicinc.com
patch subject: [PATCH] phy: qcom-snps-femto-v2: Add load and voltage setting for LDO's used
config: x86_64-buildonly-randconfig-003-20240503 (https://download.01.org/0day-ci/archive/20240503/202405031311.9f1PrPou-lkp@intel.com/config)
compiler: gcc-7 (Ubuntu 7.5.0-6ubuntu2) 7.5.0
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20240503/202405031311.9f1PrPou-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202405031311.9f1PrPou-lkp@intel.com/

All warnings (new ones prefixed by >>):

>> drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c:168: warning: Function parameter or struct member 'vreg_list' not described in 'qcom_snps_hsphy'


vim +168 drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c

df2217ff17a820 Krishna Kurapati    2022-09-06  136  
51e8114f80d076 Wesley Cheng        2020-05-04  137  /**
51e8114f80d076 Wesley Cheng        2020-05-04  138   * struct qcom_snps_hsphy - snps hs phy attributes
51e8114f80d076 Wesley Cheng        2020-05-04  139   *
8a0eb8f9b9a002 Adrien Thierry      2023-06-29  140   * @dev: device structure
8a0eb8f9b9a002 Adrien Thierry      2023-06-29  141   *
51e8114f80d076 Wesley Cheng        2020-05-04  142   * @phy: generic phy
51e8114f80d076 Wesley Cheng        2020-05-04  143   * @base: iomapped memory space for snps hs phy
51e8114f80d076 Wesley Cheng        2020-05-04  144   *
8a0eb8f9b9a002 Adrien Thierry      2023-06-29  145   * @num_clks: number of clocks
8a0eb8f9b9a002 Adrien Thierry      2023-06-29  146   * @clks: array of clocks
51e8114f80d076 Wesley Cheng        2020-05-04  147   * @phy_reset: phy reset control
51e8114f80d076 Wesley Cheng        2020-05-04  148   * @vregs: regulator supplies bulk data
51e8114f80d076 Wesley Cheng        2020-05-04  149   * @phy_initialized: if PHY has been initialized correctly
dcbec046507615 Wesley Cheng        2020-06-25  150   * @mode: contains the current mode the PHY is in
2a881183dc5ab2 Krzysztof Kozlowski 2023-05-07  151   * @update_seq_cfg: tuning parameters for phy init
51e8114f80d076 Wesley Cheng        2020-05-04  152   */
51e8114f80d076 Wesley Cheng        2020-05-04  153  struct qcom_snps_hsphy {
8a0eb8f9b9a002 Adrien Thierry      2023-06-29  154  	struct device *dev;
8a0eb8f9b9a002 Adrien Thierry      2023-06-29  155  
51e8114f80d076 Wesley Cheng        2020-05-04  156  	struct phy *phy;
51e8114f80d076 Wesley Cheng        2020-05-04  157  	void __iomem *base;
51e8114f80d076 Wesley Cheng        2020-05-04  158  
8a0eb8f9b9a002 Adrien Thierry      2023-06-29  159  	int num_clks;
8a0eb8f9b9a002 Adrien Thierry      2023-06-29  160  	struct clk_bulk_data *clks;
51e8114f80d076 Wesley Cheng        2020-05-04  161  	struct reset_control *phy_reset;
51e8114f80d076 Wesley Cheng        2020-05-04  162  	struct regulator_bulk_data vregs[SNPS_HS_NUM_VREGS];
4dac559b5584a2 Udipto Goswami      2024-05-02  163  	const struct qcom_snps_hsphy_regulator_data *vreg_list;
51e8114f80d076 Wesley Cheng        2020-05-04  164  
51e8114f80d076 Wesley Cheng        2020-05-04  165  	bool phy_initialized;
dcbec046507615 Wesley Cheng        2020-06-25  166  	enum phy_mode mode;
df2217ff17a820 Krishna Kurapati    2022-09-06  167  	struct phy_override_seq update_seq_cfg[NUM_HSPHY_TUNING_PARAMS];
51e8114f80d076 Wesley Cheng        2020-05-04 @168  };
51e8114f80d076 Wesley Cheng        2020-05-04  169  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
