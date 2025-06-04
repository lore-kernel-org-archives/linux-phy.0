Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 96821C5B543
	for <linux-phy@archiver.kernel.org>; Wed,  4 Jun 2025 16:17:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Fq4nfYpzJJsSl7k/q781aU2sdTfsyuCIZ999zZ7JMM0=; b=gp27uNIhh05tfs
	brTUMv55h8YCcaH7CSsgp4amRfslvjFnqA1wemx7+QTAqAU5VZxtHm+5eX9VTJDFNoIE0aFzf7PBc
	1v0VBe4yR1hNNeoUMxbV7itFQ6KYJhhjjyIU5Bg+X4sIyY3P+bxgzkXLekY3mXW9bxVpw2T6uNhkI
	oL7RJW5o3DrjgeHbLg+Y/hc714BojwAD2Yktl9rsmu/MQPiJlLgnEWb1rYpkA5tvE6pTL+YO322O+
	urTQrzpBjBrLstCTO/Epg84ibiJY56fsFZpcg1sgHyXe90aL7D/zFzxTUJa5t8S7DCj98DFCd9GGF
	/NuKFY9oeq3tamOF/uZA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uMqnq-0000000DmCF-0lHF;
	Wed, 04 Jun 2025 16:17:22 +0000
Received: from mgamail.intel.com ([192.198.163.19])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uMqnn-0000000DmBa-3BAg
	for linux-phy@lists.infradead.org;
	Wed, 04 Jun 2025 16:17:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1749053840; x=1780589840;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=t9R0BNfLsoAjJwDB8Ra2u+6DE3a31dhpCTFCKoZIuo8=;
  b=eP1kUcN1+/arQhRQaJX1Vi0n3t9H0A3GvP2YaK2ajXep7Up+A1TzDKao
   fyEnhJEgX5DsDMC4Bn6Gy6L5IyY+gabJFNEqHF2mKdwuXAKN1L+ACUDgL
   Kt9uYuoXofet9MB4oOjPbttySgowNSEE3MMHJeyzi6czJDkobPp7+J9jt
   AMcKMGTUterHjKYAkbGae7yZbAN+yy89/YEleFW7p/AIngOipWP2OIYLV
   zovoMDf4PTt//P98eS21eH2uxdlxsBrm4uIhOH02J0RPr5gvdAz2h1o7m
   7wbdXiN+DMB0MvM1/D0Rjc/cOPVr/aBBVcsaIZgVICVKm/trQVR0wlc2s
   Q==;
X-CSE-ConnectionGUID: YKm+xscsRnWHP7ZP3pm4sg==
X-CSE-MsgGUID: EOlJsXa2ToCY75ec0Vr4TA==
X-IronPort-AV: E=McAfee;i="6800,10657,11454"; a="50261845"
X-IronPort-AV: E=Sophos;i="6.16,209,1744095600"; 
   d="scan'208";a="50261845"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
  by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 04 Jun 2025 09:17:14 -0700
X-CSE-ConnectionGUID: uLxvfQw7QeesG1OIOWVgbQ==
X-CSE-MsgGUID: YmgkNj1pTjqHY0wETX4OtA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,209,1744095600"; 
   d="scan'208";a="146173901"
Received: from lkp-server01.sh.intel.com (HELO e8142ee1dce2) ([10.239.97.150])
  by fmviesa009.fm.intel.com with ESMTP; 04 Jun 2025 09:17:09 -0700
Received: from kbuild by e8142ee1dce2 with local (Exim 4.96)
	(envelope-from <lkp@intel.com>)
	id 1uMqnb-0003ID-05;
	Wed, 04 Jun 2025 16:17:07 +0000
Date: Thu, 5 Jun 2025 00:16:26 +0800
From: kernel test robot <lkp@intel.com>
To: Ziyue Zhang <quic_ziyuzhan@quicinc.com>, lpieralisi@kernel.org,
	kwilczynski@kernel.org, manivannan.sadhasivam@linaro.org,
	robh@kernel.org, bhelgaas@google.com, krzk+dt@kernel.org,
	neil.armstrong@linaro.org, abel.vesa@linaro.org, kw@linux.com,
	conor+dt@kernel.org, vkoul@kernel.org, kishon@kernel.org,
	andersson@kernel.org, konradybcio@kernel.org
Cc: oe-kbuild-all@lists.linux.dev, linux-arm-msm@vger.kernel.org,
	linux-pci@vger.kernel.org, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	quic_qianyu@quicinc.com, Ziyue Zhang <quic_ziyuzhan@quicinc.com>,
	Qiang Yu <qiang.yu@oss.qualcomm.com>
Subject: Re: [PATCH v1 1/2] PCI: qcom: Add equalization settings for 8.0 GT/s
Message-ID: <202506050215.pkcXYJIN-lkp@intel.com>
References: <20250604091946.1890602-2-quic_ziyuzhan@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250604091946.1890602-2-quic_ziyuzhan@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250604_091719_833763_DD1561BC 
X-CRM114-Status: GOOD (  11.06  )
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

[auto build test ERROR on 911483b25612c8bc32a706ba940738cc43299496]

url:    https://github.com/intel-lab-lkp/linux/commits/Ziyue-Zhang/PCI-qcom-Add-equalization-settings-for-8-0-GT-s/20250604-172105
base:   911483b25612c8bc32a706ba940738cc43299496
patch link:    https://lore.kernel.org/r/20250604091946.1890602-2-quic_ziyuzhan%40quicinc.com
patch subject: [PATCH v1 1/2] PCI: qcom: Add equalization settings for 8.0 GT/s
config: sparc64-randconfig-002-20250604 (https://download.01.org/0day-ci/archive/20250605/202506050215.pkcXYJIN-lkp@intel.com/config)
compiler: sparc64-linux-gcc (GCC) 15.1.0
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20250605/202506050215.pkcXYJIN-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202506050215.pkcXYJIN-lkp@intel.com/

All errors (new ones prefixed by >>):

   drivers/pci/controller/dwc/pcie-qcom-ep.c: In function 'qcom_pcie_perst_deassert':
>> drivers/pci/controller/dwc/pcie-qcom-ep.c:515:17: error: implicit declaration of function 'qcom_pcie_common_set_16gt_equalization'; did you mean 'qcom_pcie_common_set_equalization'? [-Wimplicit-function-declaration]
     515 |                 qcom_pcie_common_set_16gt_equalization(pci);
         |                 ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
         |                 qcom_pcie_common_set_equalization


vim +515 drivers/pci/controller/dwc/pcie-qcom-ep.c

bc49681c96360e Dmitry Baryshkov             2022-05-02  389  
bc49681c96360e Dmitry Baryshkov             2022-05-02  390  static int qcom_pcie_perst_deassert(struct dw_pcie *pci)
bc49681c96360e Dmitry Baryshkov             2022-05-02  391  {
bc49681c96360e Dmitry Baryshkov             2022-05-02  392  	struct qcom_pcie_ep *pcie_ep = to_pcie_ep(pci);
bc49681c96360e Dmitry Baryshkov             2022-05-02  393  	struct device *dev = pci->dev;
bc49681c96360e Dmitry Baryshkov             2022-05-02  394  	u32 val, offset;
bc49681c96360e Dmitry Baryshkov             2022-05-02  395  	int ret;
bc49681c96360e Dmitry Baryshkov             2022-05-02  396  
bc49681c96360e Dmitry Baryshkov             2022-05-02  397  	ret = qcom_pcie_enable_resources(pcie_ep);
bc49681c96360e Dmitry Baryshkov             2022-05-02  398  	if (ret) {
bc49681c96360e Dmitry Baryshkov             2022-05-02  399  		dev_err(dev, "Failed to enable resources: %d\n", ret);
bc49681c96360e Dmitry Baryshkov             2022-05-02  400  		return ret;
bc49681c96360e Dmitry Baryshkov             2022-05-02  401  	}
bc49681c96360e Dmitry Baryshkov             2022-05-02  402  
7d7cf89b119af4 Manivannan Sadhasivam        2024-08-17  403  	/* Perform cleanup that requires refclk */
7d7cf89b119af4 Manivannan Sadhasivam        2024-08-17  404  	pci_epc_deinit_notify(pci->ep.epc);
7d7cf89b119af4 Manivannan Sadhasivam        2024-08-17  405  	dw_pcie_ep_cleanup(&pci->ep);
7d7cf89b119af4 Manivannan Sadhasivam        2024-08-17  406  
f55fee56a63103 Manivannan Sadhasivam        2021-09-20  407  	/* Assert WAKE# to RC to indicate device is ready */
f55fee56a63103 Manivannan Sadhasivam        2021-09-20  408  	gpiod_set_value_cansleep(pcie_ep->wake, 1);
f55fee56a63103 Manivannan Sadhasivam        2021-09-20  409  	usleep_range(WAKE_DELAY_US, WAKE_DELAY_US + 500);
f55fee56a63103 Manivannan Sadhasivam        2021-09-20  410  	gpiod_set_value_cansleep(pcie_ep->wake, 0);
f55fee56a63103 Manivannan Sadhasivam        2021-09-20  411  
f55fee56a63103 Manivannan Sadhasivam        2021-09-20  412  	qcom_pcie_ep_configure_tcsr(pcie_ep);
f55fee56a63103 Manivannan Sadhasivam        2021-09-20  413  
f55fee56a63103 Manivannan Sadhasivam        2021-09-20  414  	/* Disable BDF to SID mapping */
f55fee56a63103 Manivannan Sadhasivam        2021-09-20  415  	val = readl_relaxed(pcie_ep->parf + PARF_BDF_TO_SID_CFG);
f55fee56a63103 Manivannan Sadhasivam        2021-09-20  416  	val |= PARF_BDF_TO_SID_BYPASS;
f55fee56a63103 Manivannan Sadhasivam        2021-09-20  417  	writel_relaxed(val, pcie_ep->parf + PARF_BDF_TO_SID_CFG);
f55fee56a63103 Manivannan Sadhasivam        2021-09-20  418  
f55fee56a63103 Manivannan Sadhasivam        2021-09-20  419  	/* Enable debug IRQ */
f55fee56a63103 Manivannan Sadhasivam        2021-09-20  420  	val = readl_relaxed(pcie_ep->parf + PARF_DEBUG_INT_EN);
f55fee56a63103 Manivannan Sadhasivam        2021-09-20  421  	val |= PARF_DEBUG_INT_RADM_PM_TURNOFF |
f55fee56a63103 Manivannan Sadhasivam        2021-09-20  422  	       PARF_DEBUG_INT_CFG_BUS_MASTER_EN |
f55fee56a63103 Manivannan Sadhasivam        2021-09-20  423  	       PARF_DEBUG_INT_PM_DSTATE_CHANGE;
f55fee56a63103 Manivannan Sadhasivam        2021-09-20  424  	writel_relaxed(val, pcie_ep->parf + PARF_DEBUG_INT_EN);
f55fee56a63103 Manivannan Sadhasivam        2021-09-20  425  
f55fee56a63103 Manivannan Sadhasivam        2021-09-20  426  	/* Configure PCIe to endpoint mode */
f55fee56a63103 Manivannan Sadhasivam        2021-09-20  427  	writel_relaxed(PARF_DEVICE_TYPE_EP, pcie_ep->parf + PARF_DEVICE_TYPE);
f55fee56a63103 Manivannan Sadhasivam        2021-09-20  428  
f55fee56a63103 Manivannan Sadhasivam        2021-09-20  429  	/* Allow entering L1 state */
f55fee56a63103 Manivannan Sadhasivam        2021-09-20  430  	val = readl_relaxed(pcie_ep->parf + PARF_PM_CTRL);
f55fee56a63103 Manivannan Sadhasivam        2021-09-20  431  	val &= ~PARF_PM_CTRL_REQ_NOT_ENTR_L1;
f55fee56a63103 Manivannan Sadhasivam        2021-09-20  432  	writel_relaxed(val, pcie_ep->parf + PARF_PM_CTRL);
f55fee56a63103 Manivannan Sadhasivam        2021-09-20  433  
f55fee56a63103 Manivannan Sadhasivam        2021-09-20  434  	/* Read halts write */
f55fee56a63103 Manivannan Sadhasivam        2021-09-20  435  	val = readl_relaxed(pcie_ep->parf + PARF_AXI_MSTR_RD_HALT_NO_WRITES);
f55fee56a63103 Manivannan Sadhasivam        2021-09-20  436  	val &= ~PARF_AXI_MSTR_RD_HALT_NO_WRITE_EN;
f55fee56a63103 Manivannan Sadhasivam        2021-09-20  437  	writel_relaxed(val, pcie_ep->parf + PARF_AXI_MSTR_RD_HALT_NO_WRITES);
f55fee56a63103 Manivannan Sadhasivam        2021-09-20  438  
f55fee56a63103 Manivannan Sadhasivam        2021-09-20  439  	/* Write after write halt */
f55fee56a63103 Manivannan Sadhasivam        2021-09-20  440  	val = readl_relaxed(pcie_ep->parf + PARF_AXI_MSTR_WR_ADDR_HALT);
f55fee56a63103 Manivannan Sadhasivam        2021-09-20  441  	val |= PARF_AXI_MSTR_WR_ADDR_HALT_EN;
f55fee56a63103 Manivannan Sadhasivam        2021-09-20  442  	writel_relaxed(val, pcie_ep->parf + PARF_AXI_MSTR_WR_ADDR_HALT);
f55fee56a63103 Manivannan Sadhasivam        2021-09-20  443  
f55fee56a63103 Manivannan Sadhasivam        2021-09-20  444  	/* Q2A flush disable */
f55fee56a63103 Manivannan Sadhasivam        2021-09-20  445  	val = readl_relaxed(pcie_ep->parf + PARF_Q2A_FLUSH);
f55fee56a63103 Manivannan Sadhasivam        2021-09-20  446  	val &= ~PARF_Q2A_FLUSH_EN;
f55fee56a63103 Manivannan Sadhasivam        2021-09-20  447  	writel_relaxed(val, pcie_ep->parf + PARF_Q2A_FLUSH);
f55fee56a63103 Manivannan Sadhasivam        2021-09-20  448  
0391632948d9c1 Manivannan Sadhasivam        2022-09-14  449  	/*
0391632948d9c1 Manivannan Sadhasivam        2022-09-14  450  	 * Disable Master AXI clock during idle.  Do not allow DBI access
0391632948d9c1 Manivannan Sadhasivam        2022-09-14  451  	 * to take the core out of L1.  Disable core clock gating that
0391632948d9c1 Manivannan Sadhasivam        2022-09-14  452  	 * gates PIPE clock from propagating to core clock.  Report to the
0391632948d9c1 Manivannan Sadhasivam        2022-09-14  453  	 * host that Vaux is present.
0391632948d9c1 Manivannan Sadhasivam        2022-09-14  454  	 */
f55fee56a63103 Manivannan Sadhasivam        2021-09-20  455  	val = readl_relaxed(pcie_ep->parf + PARF_SYS_CTRL);
0391632948d9c1 Manivannan Sadhasivam        2022-09-14  456  	val &= ~PARF_SYS_CTRL_MSTR_ACLK_CGC_DIS;
f55fee56a63103 Manivannan Sadhasivam        2021-09-20  457  	val |= PARF_SYS_CTRL_SLV_DBI_WAKE_DISABLE |
f55fee56a63103 Manivannan Sadhasivam        2021-09-20  458  	       PARF_SYS_CTRL_CORE_CLK_CGC_DIS |
f55fee56a63103 Manivannan Sadhasivam        2021-09-20  459  	       PARF_SYS_CTRL_AUX_PWR_DET;
f55fee56a63103 Manivannan Sadhasivam        2021-09-20  460  	writel_relaxed(val, pcie_ep->parf + PARF_SYS_CTRL);
f55fee56a63103 Manivannan Sadhasivam        2021-09-20  461  
f55fee56a63103 Manivannan Sadhasivam        2021-09-20  462  	/* Disable the debouncers */
f55fee56a63103 Manivannan Sadhasivam        2021-09-20  463  	val = readl_relaxed(pcie_ep->parf + PARF_DB_CTRL);
f55fee56a63103 Manivannan Sadhasivam        2021-09-20  464  	val |= PARF_DB_CTRL_INSR_DBNCR_BLOCK | PARF_DB_CTRL_RMVL_DBNCR_BLOCK |
f55fee56a63103 Manivannan Sadhasivam        2021-09-20  465  	       PARF_DB_CTRL_DBI_WKP_BLOCK | PARF_DB_CTRL_SLV_WKP_BLOCK |
f55fee56a63103 Manivannan Sadhasivam        2021-09-20  466  	       PARF_DB_CTRL_MST_WKP_BLOCK;
f55fee56a63103 Manivannan Sadhasivam        2021-09-20  467  	writel_relaxed(val, pcie_ep->parf + PARF_DB_CTRL);
f55fee56a63103 Manivannan Sadhasivam        2021-09-20  468  
f55fee56a63103 Manivannan Sadhasivam        2021-09-20  469  	/* Request to exit from L1SS for MSI and LTR MSG */
f55fee56a63103 Manivannan Sadhasivam        2021-09-20  470  	val = readl_relaxed(pcie_ep->parf + PARF_CFG_BITS);
f55fee56a63103 Manivannan Sadhasivam        2021-09-20  471  	val |= PARF_CFG_BITS_REQ_EXIT_L1SS_MSI_LTR_EN;
f55fee56a63103 Manivannan Sadhasivam        2021-09-20  472  	writel_relaxed(val, pcie_ep->parf + PARF_CFG_BITS);
f55fee56a63103 Manivannan Sadhasivam        2021-09-20  473  
f55fee56a63103 Manivannan Sadhasivam        2021-09-20  474  	dw_pcie_dbi_ro_wr_en(pci);
f55fee56a63103 Manivannan Sadhasivam        2021-09-20  475  
f55fee56a63103 Manivannan Sadhasivam        2021-09-20  476  	/* Set the L0s Exit Latency to 2us-4us = 0x6 */
f55fee56a63103 Manivannan Sadhasivam        2021-09-20  477  	offset = dw_pcie_find_capability(pci, PCI_CAP_ID_EXP);
f55fee56a63103 Manivannan Sadhasivam        2021-09-20  478  	val = dw_pcie_readl_dbi(pci, offset + PCI_EXP_LNKCAP);
f55fee56a63103 Manivannan Sadhasivam        2021-09-20  479  	val &= ~PCI_EXP_LNKCAP_L0SEL;
f55fee56a63103 Manivannan Sadhasivam        2021-09-20  480  	val |= FIELD_PREP(PCI_EXP_LNKCAP_L0SEL, 0x6);
f55fee56a63103 Manivannan Sadhasivam        2021-09-20  481  	dw_pcie_writel_dbi(pci, offset + PCI_EXP_LNKCAP, val);
f55fee56a63103 Manivannan Sadhasivam        2021-09-20  482  
f55fee56a63103 Manivannan Sadhasivam        2021-09-20  483  	/* Set the L1 Exit Latency to be 32us-64 us = 0x6 */
f55fee56a63103 Manivannan Sadhasivam        2021-09-20  484  	offset = dw_pcie_find_capability(pci, PCI_CAP_ID_EXP);
f55fee56a63103 Manivannan Sadhasivam        2021-09-20  485  	val = dw_pcie_readl_dbi(pci, offset + PCI_EXP_LNKCAP);
f55fee56a63103 Manivannan Sadhasivam        2021-09-20  486  	val &= ~PCI_EXP_LNKCAP_L1EL;
f55fee56a63103 Manivannan Sadhasivam        2021-09-20  487  	val |= FIELD_PREP(PCI_EXP_LNKCAP_L1EL, 0x6);
f55fee56a63103 Manivannan Sadhasivam        2021-09-20  488  	dw_pcie_writel_dbi(pci, offset + PCI_EXP_LNKCAP, val);
f55fee56a63103 Manivannan Sadhasivam        2021-09-20  489  
f55fee56a63103 Manivannan Sadhasivam        2021-09-20  490  	dw_pcie_dbi_ro_wr_dis(pci);
f55fee56a63103 Manivannan Sadhasivam        2021-09-20  491  
f55fee56a63103 Manivannan Sadhasivam        2021-09-20  492  	writel_relaxed(0, pcie_ep->parf + PARF_INT_ALL_MASK);
f55fee56a63103 Manivannan Sadhasivam        2021-09-20  493  	val = PARF_INT_ALL_LINK_DOWN | PARF_INT_ALL_BME |
f55fee56a63103 Manivannan Sadhasivam        2021-09-20  494  	      PARF_INT_ALL_PM_TURNOFF | PARF_INT_ALL_DSTATE_CHANGE |
ff8d92038cf92c Manivannan Sadhasivam        2023-07-17  495  	      PARF_INT_ALL_LINK_UP | PARF_INT_ALL_EDMA;
f55fee56a63103 Manivannan Sadhasivam        2021-09-20  496  	writel_relaxed(val, pcie_ep->parf + PARF_INT_ALL_MASK);
f55fee56a63103 Manivannan Sadhasivam        2021-09-20  497  
5d6a6c7454ebae Manivannan Sadhasivam        2024-08-08  498  	if (pcie_ep->cfg && pcie_ep->cfg->disable_mhi_ram_parity_check) {
5d6a6c7454ebae Manivannan Sadhasivam        2024-08-08  499  		val = readl_relaxed(pcie_ep->parf + PARF_INT_ALL_5_MASK);
5d6a6c7454ebae Manivannan Sadhasivam        2024-08-08  500  		val &= ~PARF_INT_ALL_5_MHI_RAM_DATA_PARITY_ERR;
5d6a6c7454ebae Manivannan Sadhasivam        2024-08-08  501  		writel_relaxed(val, pcie_ep->parf + PARF_INT_ALL_5_MASK);
5d6a6c7454ebae Manivannan Sadhasivam        2024-08-08  502  	}
5d6a6c7454ebae Manivannan Sadhasivam        2024-08-08  503  
5fbfae69e78d24 Manivannan Sadhasivam        2025-05-05  504  	val = readl_relaxed(pcie_ep->parf + PARF_INT_ALL_3_MASK);
5fbfae69e78d24 Manivannan Sadhasivam        2025-05-05  505  	val &= ~PARF_INT_ALL_3_PTM_UPDATING;
5fbfae69e78d24 Manivannan Sadhasivam        2025-05-05  506  	writel_relaxed(val, pcie_ep->parf + PARF_INT_ALL_3_MASK);
5fbfae69e78d24 Manivannan Sadhasivam        2025-05-05  507  
7d6e64c443ea03 Manivannan Sadhasivam        2024-03-27  508  	ret = dw_pcie_ep_init_registers(&pcie_ep->pci.ep);
f55fee56a63103 Manivannan Sadhasivam        2021-09-20  509  	if (ret) {
f55fee56a63103 Manivannan Sadhasivam        2021-09-20  510  		dev_err(dev, "Failed to complete initialization: %d\n", ret);
bc49681c96360e Dmitry Baryshkov             2022-05-02  511  		goto err_disable_resources;
f55fee56a63103 Manivannan Sadhasivam        2021-09-20  512  	}
f55fee56a63103 Manivannan Sadhasivam        2021-09-20  513  
d14bc28af34fb8 Shashank Babu Chinta Venkata 2024-09-11  514  	if (pcie_link_speed[pci->max_link_speed] == PCIE_SPEED_16_0GT) {
d45736b5984954 Shashank Babu Chinta Venkata 2024-09-11 @515  		qcom_pcie_common_set_16gt_equalization(pci);
d14bc28af34fb8 Shashank Babu Chinta Venkata 2024-09-11  516  		qcom_pcie_common_set_16gt_lane_margining(pci);
d14bc28af34fb8 Shashank Babu Chinta Venkata 2024-09-11  517  	}
d45736b5984954 Shashank Babu Chinta Venkata 2024-09-11  518  
f55fee56a63103 Manivannan Sadhasivam        2021-09-20  519  	/*
f55fee56a63103 Manivannan Sadhasivam        2021-09-20  520  	 * The physical address of the MMIO region which is exposed as the BAR
f55fee56a63103 Manivannan Sadhasivam        2021-09-20  521  	 * should be written to MHI BASE registers.
f55fee56a63103 Manivannan Sadhasivam        2021-09-20  522  	 */
f55fee56a63103 Manivannan Sadhasivam        2021-09-20  523  	writel_relaxed(pcie_ep->mmio_res->start,
f55fee56a63103 Manivannan Sadhasivam        2021-09-20  524  		       pcie_ep->parf + PARF_MHI_BASE_ADDR_LOWER);
f55fee56a63103 Manivannan Sadhasivam        2021-09-20  525  	writel_relaxed(0, pcie_ep->parf + PARF_MHI_BASE_ADDR_UPPER);
f55fee56a63103 Manivannan Sadhasivam        2021-09-20  526  
c457ac029e443f Manivannan Sadhasivam        2022-09-14  527  	/* Gate Master AXI clock to MHI bus during L1SS */
c457ac029e443f Manivannan Sadhasivam        2022-09-14  528  	val = readl_relaxed(pcie_ep->parf + PARF_MHI_CLOCK_RESET_CTRL);
c457ac029e443f Manivannan Sadhasivam        2022-09-14  529  	val &= ~PARF_MSTR_AXI_CLK_EN;
b9cbc06049cb6b Manivannan Sadhasivam        2023-06-27  530  	writel_relaxed(val, pcie_ep->parf + PARF_MHI_CLOCK_RESET_CTRL);
c457ac029e443f Manivannan Sadhasivam        2022-09-14  531  
245b9ebf7b8e2a Manivannan Sadhasivam        2024-06-06  532  	pci_epc_init_notify(pcie_ep->pci.ep.epc);
f55fee56a63103 Manivannan Sadhasivam        2021-09-20  533  
f55fee56a63103 Manivannan Sadhasivam        2021-09-20  534  	/* Enable LTSSM */
f55fee56a63103 Manivannan Sadhasivam        2021-09-20  535  	val = readl_relaxed(pcie_ep->parf + PARF_LTSSM);
f55fee56a63103 Manivannan Sadhasivam        2021-09-20  536  	val |= BIT(8);
f55fee56a63103 Manivannan Sadhasivam        2021-09-20  537  	writel_relaxed(val, pcie_ep->parf + PARF_LTSSM);
f55fee56a63103 Manivannan Sadhasivam        2021-09-20  538  
c71b5eb3b86448 Mrinmay Sarkar               2024-03-11  539  	if (pcie_ep->cfg && pcie_ep->cfg->override_no_snoop)
f4e026f454d7bb Bjorn Helgaas                2025-03-07  540  		writel_relaxed(WR_NO_SNOOP_OVERRIDE_EN | RD_NO_SNOOP_OVERRIDE_EN,
f4e026f454d7bb Bjorn Helgaas                2025-03-07  541  				pcie_ep->parf + PARF_NO_SNOOP_OVERRIDE);
c71b5eb3b86448 Mrinmay Sarkar               2024-03-11  542  
f55fee56a63103 Manivannan Sadhasivam        2021-09-20  543  	return 0;
f55fee56a63103 Manivannan Sadhasivam        2021-09-20  544  
bc49681c96360e Dmitry Baryshkov             2022-05-02  545  err_disable_resources:
bc49681c96360e Dmitry Baryshkov             2022-05-02  546  	qcom_pcie_disable_resources(pcie_ep);
f55fee56a63103 Manivannan Sadhasivam        2021-09-20  547  
f55fee56a63103 Manivannan Sadhasivam        2021-09-20  548  	return ret;
f55fee56a63103 Manivannan Sadhasivam        2021-09-20  549  }
f55fee56a63103 Manivannan Sadhasivam        2021-09-20  550  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
