Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 899C0E7718B
	for <linux-phy@archiver.kernel.org>; Sat, 21 Dec 2024 22:05:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LNT5wfLWpAqlWOpr6kut7Wi1CLG1WiFppxE2iTCmAc0=; b=g0d43cNdJQ9Uob
	NT0qEUCNnjEQYUpNJcZ09CZiyjketHg+YaMI50nh0DHwvGAqJ4fyfv6uSladRjUzky63Q9RXsjNbX
	vCGbF673r45Ui0SCK67TJq9+NODApgFzuHfqrLrk7y+vzd2oHRJrJWoxxSdCiRqmnUmhQ0cSVzgHf
	7+J9F96y0VRWOBk+Qrw7Pdj/175JfvyOe8DdLft6EuxM+7w2o4BAJefi/Dvyn6IIPf+hCSjN1ZjnJ
	1no6JOUd33RdNeQoyVRKlQfPPSBN/x6JuZ+uU03HVFFprqafaWrvF6osknxmBdcJ4RicrqXDqNPaC
	VQB7d8ksR6D95m+I3K4A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tP7am-00000007UFY-2RDI;
	Sat, 21 Dec 2024 22:05:00 +0000
Received: from [192.198.163.12] (helo=mgamail.intel.com)
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tP7aj-00000007UF9-3y9D
	for linux-phy@lists.infradead.org;
	Sat, 21 Dec 2024 22:04:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1734818698; x=1766354698;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=CICD31YuC2DWCxXe+MIAugbnVXPhDDnOk4ss85e+Uw4=;
  b=ZJdx8mo5ycvCdsBmOpjA5o+J4zkeNnMjvDsc6CJ6Dn9M0yy8MzIv6dEi
   uVPwepGS8hTHrQpsBBPI+46a5m/0aQYzzNq2aH58PDy1WKGlPWUKexsG/
   qkwv81CSmeszpoaYFUOlUo1zlF4IAtKuQyOsNMfYTXifvI3rXXwitxe8Q
   5Bzwj0orl9LFPmwkaDg6rg+xaH7KI/3T6N9PTcWfsmgm0JKsIR4ZkfQ9M
   6Fi0qU44sVwdT+PQT9fH5VQA5D8YAjMBYqhwKLmrQ97HOMZGmI0/v+KEe
   zd9G//m+GxbpaetaoLHcHLsvFCz7GZwDI/hPJPvr1guuENG5rq4jJ02cJ
   Q==;
X-CSE-ConnectionGUID: 11+s8h8hRSmDQsph4VGS8Q==
X-CSE-MsgGUID: 0zV97KZOTBCAsk8sGZYLTg==
X-IronPort-AV: E=McAfee;i="6700,10204,11293"; a="39273849"
X-IronPort-AV: E=Sophos;i="6.12,254,1728975600"; 
   d="scan'208";a="39273849"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
  by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 21 Dec 2024 14:04:56 -0800
X-CSE-ConnectionGUID: ppUNR0XlQAKKVX8QBaEjjQ==
X-CSE-MsgGUID: G5TmL7ZYQGSNcFw1Bt+xAg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,254,1728975600"; 
   d="scan'208";a="129669275"
Received: from lkp-server01.sh.intel.com (HELO a46f226878e0) ([10.239.97.150])
  by orviesa002.jf.intel.com with ESMTP; 21 Dec 2024 14:04:51 -0800
Received: from kbuild by a46f226878e0 with local (Exim 4.96)
	(envelope-from <lkp@intel.com>)
	id 1tP7aZ-0002X5-2N;
	Sat, 21 Dec 2024 22:04:47 +0000
Date: Sun, 22 Dec 2024 06:04:41 +0800
From: kernel test robot <lkp@intel.com>
To: Ziyue Zhang <quic_ziyuzhan@quicinc.com>, vkoul@kernel.org,
	kishon@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
	conor+dt@kernel.org, dmitry.baryshkov@linaro.org,
	neil.armstrong@linaro.org, abel.vesa@linaro.org,
	manivannan.sadhasivam@linaro.org, lpieralisi@kernel.org,
	kw@linux.com, bhelgaas@google.com, andersson@kernel.org,
	konradybcio@kernel.org
Cc: llvm@lists.linux.dev, oe-kbuild-all@lists.linux.dev,
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
	linux-pci@vger.kernel.org, quic_qianyu@quicinc.com,
	quic_krichai@quicinc.com, quic_vbadigan@quicinc.com,
	Ziyue Zhang <quic_ziyuzhan@quicinc.com>
Subject: Re: [PATCH v3 2/8] phy: qcom-qmp-pcie: add dual lane PHY support for
 QCS8300
Message-ID: <202412220527.dEQSSoG8-lkp@intel.com>
References: <20241220055239.2744024-3-quic_ziyuzhan@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20241220055239.2744024-3-quic_ziyuzhan@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241221_140458_034418_6851C196 
X-CRM114-Status: UNSURE (   9.04  )
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
config: arm64-randconfig-002-20241221 (https://download.01.org/0day-ci/archive/20241222/202412220527.dEQSSoG8-lkp@intel.com/config)
compiler: clang version 16.0.6 (https://github.com/llvm/llvm-project 7cbf1a2591520c2491aa35339f227775f4d3adf6)
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20241222/202412220527.dEQSSoG8-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202412220527.dEQSSoG8-lkp@intel.com/

All errors (new ones prefixed by >>):

>> drivers/phy/qualcomm/phy-qcom-qmp-pcie.c:3419:12: error: use of undeclared identifier 'pciephy_v5_20_regs_layout'
           .regs                   = pciephy_v5_20_regs_layout,
                                     ^
   1 error generated.


vim +/pciephy_v5_20_regs_layout +3419 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c

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
