Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7D30FE77184
	for <linux-phy@archiver.kernel.org>; Sat, 21 Dec 2024 06:14:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+KlHeTrPFKBS7j8EnxVaHM/VCfqktvGxIJiDmQZ0DYY=; b=3S1NPXXacjxBtm
	B8QtFPydzeJSr9fvdyg3ouNh3SsrtaRiKFXhtB4do9K+7e8w3h3sstxvwvH7DvWx0OaKk3IC/eQa0
	qC5uHA1cpq3li9SFVE0gxzIHGJzN10YltgOSMGFW5HGvMatLfzta8GECxKw8cL6rTCJa6xmPafVBb
	IXQuZAHFKrgbxK3R63w24ycgaYNdUe+a82ztcVJZ8tyK4sfmaMKQymw+AbTUYXEhlbQ/7mn1ccfNQ
	7zUO53cAjIrtCVmcaOy8mZQ5RznPKQ8ns3IUP8t3oY1YVFDBRDFQmGq/MeWAyxByI3LRkrMlihpnt
	Onyj8eIB/dz2uqpO5vWg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tOske-00000006crD-0a7J;
	Sat, 21 Dec 2024 06:14:12 +0000
Received: from mgamail.intel.com ([192.198.163.17])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tOskb-00000006cqq-2mq8
	for linux-phy@lists.infradead.org;
	Sat, 21 Dec 2024 06:14:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1734761650; x=1766297650;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=JjY37SxMSkdhtyrhtTKrP4oq+y277V+a81pZHzt3KNs=;
  b=iq4Q2rfh2A1n+4evNXGQd2Zt+vTMS8BhrzvuZNx6pdqkqm16KQykElai
   CrP804IT0S70JBcU860rL/BNa6+Esjqcp1m8oqbrmTjRHe2HIZ76Ic/wd
   Kr6SPSKBfQGgvdOrwTgIKaqWaYjWfG+xtv3O5RxIaPYle+ssGWQ6+8VrQ
   UgAwYjOu/1eZ3QTlSIRB3IIUJmI8AkiYXRcLIxYCo5aCVDN9utOXTbm/k
   4ZMEOUYnNBbvxb6lltB/+lnnriVHNcg3qsA0FQa5LnJRNeNdd+Gplttz3
   VZ6Ihq1wmVrrw8Fx6h9NmzstQCP5C4sDHPbSPGeSyh4pteS76+rpYMMtI
   Q==;
X-CSE-ConnectionGUID: jahrPOxoQVWAGW7KBZEpqQ==
X-CSE-MsgGUID: Dv9Iom0RQ/yZCNwjapRoeA==
X-IronPort-AV: E=McAfee;i="6700,10204,11292"; a="35202139"
X-IronPort-AV: E=Sophos;i="6.12,253,1728975600"; 
   d="scan'208";a="35202139"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
  by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 20 Dec 2024 22:14:05 -0800
X-CSE-ConnectionGUID: GBtUTgiERLmNzgFa33UeTQ==
X-CSE-MsgGUID: FFtxWLWrTGaxb2gCb7B1vw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,253,1728975600"; 
   d="scan'208";a="129529030"
Received: from lkp-server01.sh.intel.com (HELO a46f226878e0) ([10.239.97.150])
  by orviesa002.jf.intel.com with ESMTP; 20 Dec 2024 22:13:59 -0800
Received: from kbuild by a46f226878e0 with local (Exim 4.96)
	(envelope-from <lkp@intel.com>)
	id 1tOskP-0001xb-1y;
	Sat, 21 Dec 2024 06:13:57 +0000
Date: Sat, 21 Dec 2024 14:13:27 +0800
From: kernel test robot <lkp@intel.com>
To: Ziyue Zhang <quic_ziyuzhan@quicinc.com>, vkoul@kernel.org,
	kishon@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
	conor+dt@kernel.org, dmitry.baryshkov@linaro.org,
	neil.armstrong@linaro.org, abel.vesa@linaro.org,
	manivannan.sadhasivam@linaro.org, lpieralisi@kernel.org,
	kw@linux.com, bhelgaas@google.com, andersson@kernel.org,
	konradybcio@kernel.org
Cc: oe-kbuild-all@lists.linux.dev, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org,
	quic_qianyu@quicinc.com, quic_krichai@quicinc.com,
	quic_vbadigan@quicinc.com, Ziyue Zhang <quic_ziyuzhan@quicinc.com>
Subject: Re: [PATCH v3 2/8] phy: qcom-qmp-pcie: add dual lane PHY support for
 QCS8300
Message-ID: <202412211301.bQO6vXpo-lkp@intel.com>
References: <20241220055239.2744024-3-quic_ziyuzhan@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20241220055239.2744024-3-quic_ziyuzhan@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241220_221409_753386_751EAEB0 
X-CRM114-Status: UNSURE (   9.59  )
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

Hi Ziyue,

kernel test robot noticed the following build errors:

[auto build test ERROR on 4176cf5c5651c33769de83bb61b0287f4ec7719f]

url:    https://github.com/intel-lab-lkp/linux/commits/Ziyue-Zhang/dt-bindings-phy-qcom-sc8280xp-qmp-pcie-phy-Document-the-QCS8300-QMP-PCIe-PHY-Gen4-x2/20241220-135722
base:   4176cf5c5651c33769de83bb61b0287f4ec7719f
patch link:    https://lore.kernel.org/r/20241220055239.2744024-3-quic_ziyuzhan%40quicinc.com
patch subject: [PATCH v3 2/8] phy: qcom-qmp-pcie: add dual lane PHY support for QCS8300
config: arm64-randconfig-004-20241221 (https://download.01.org/0day-ci/archive/20241221/202412211301.bQO6vXpo-lkp@intel.com/config)
compiler: aarch64-linux-gcc (GCC) 14.2.0
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20241221/202412211301.bQO6vXpo-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202412211301.bQO6vXpo-lkp@intel.com/

All errors (new ones prefixed by >>):

>> drivers/phy/qualcomm/phy-qcom-qmp-pcie.c:3419:35: error: 'pciephy_v5_20_regs_layout' undeclared here (not in a function); did you mean 'pciephy_v5_regs_layout'?
    3419 |         .regs                   = pciephy_v5_20_regs_layout,
         |                                   ^~~~~~~~~~~~~~~~~~~~~~~~~
         |                                   pciephy_v5_regs_layout


vim +3419 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c

  3390	
  3391	static const struct qmp_phy_cfg qcs8300_qmp_gen4x2_pciephy_cfg = {
  3392		.lanes			= 2,
  3393		.offsets		= &qmp_pcie_offsets_v5_20,
  3394	
  3395		.tbls = {
  3396			.serdes		= sa8775p_qmp_gen4x2_pcie_serdes_alt_tbl,
  3397			.serdes_num		= ARRAY_SIZE(sa8775p_qmp_gen4x2_pcie_serdes_alt_tbl),
  3398			.tx		= sa8775p_qmp_gen4_pcie_tx_tbl,
  3399			.tx_num		= ARRAY_SIZE(sa8775p_qmp_gen4_pcie_tx_tbl),
  3400			.rx		= qcs8300_qmp_gen4x2_pcie_rx_alt_tbl,
  3401			.rx_num		= ARRAY_SIZE(qcs8300_qmp_gen4x2_pcie_rx_alt_tbl),
  3402			.pcs		= sa8775p_qmp_gen4x2_pcie_pcs_alt_tbl,
  3403			.pcs_num		= ARRAY_SIZE(sa8775p_qmp_gen4x2_pcie_pcs_alt_tbl),
  3404			.pcs_misc		= sa8775p_qmp_gen4_pcie_pcs_misc_tbl,
  3405			.pcs_misc_num	= ARRAY_SIZE(sa8775p_qmp_gen4_pcie_pcs_misc_tbl),
  3406		},
  3407	
  3408		.tbls_rc = &(const struct qmp_phy_cfg_tbls) {
  3409			.serdes		= sa8775p_qmp_gen4x2_pcie_rc_serdes_alt_tbl,
  3410			.serdes_num	= ARRAY_SIZE(sa8775p_qmp_gen4x2_pcie_rc_serdes_alt_tbl),
  3411			.pcs_misc	= sa8775p_qmp_gen4_pcie_rc_pcs_misc_tbl,
  3412			.pcs_misc_num	= ARRAY_SIZE(sa8775p_qmp_gen4_pcie_rc_pcs_misc_tbl),
  3413		},
  3414	
  3415		.reset_list		= sdm845_pciephy_reset_l,
  3416		.num_resets		= ARRAY_SIZE(sdm845_pciephy_reset_l),
  3417		.vreg_list		= qmp_phy_vreg_l,
  3418		.num_vregs		= ARRAY_SIZE(qmp_phy_vreg_l),
> 3419		.regs			= pciephy_v5_20_regs_layout,
  3420	
  3421		.pwrdn_ctrl		= SW_PWRDN | REFCLK_DRV_DSBL,
  3422		.phy_status		= PHYSTATUS_4_20,
  3423	};
  3424	

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
