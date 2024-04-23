Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DC460C4345F
	for <linux-phy@archiver.kernel.org>; Tue, 23 Apr 2024 20:51:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=d2zQfHREbeVqCBLFilZmHXCS2axdgvJNZ78xdwSxn1Q=; b=bd1lb0xWOIlCIa
	DhKLIuHlP9ofKx1eH2VrQAoh4sD097b0yyH19CSHNDtd+QMx72hG8jJgY2zvT5EH/Ii79JqGUxHUZ
	uLUqwWMcv4YaYqPGXITNWvT0CLPCOM5m7/5lshbzSqA2z449DNgWTKBGBmt9Y5iFQMFDnv+CFmKgm
	s0DY/IfyfwSdz0pbyAmKff+0kImDtsY7V4kQ68AfWdgYof3ykbdzF/34r3fkoThxw4ciP/3ZNOESr
	dGdKcnT07HhYSYrlzCaNYmabksHtlsdVyRBxPVVlBxWMT8xCOWC53ld7g0N+En8F49L5ff46PGXLx
	MLrhE2IiC8D64DRuey3A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rzN6j-00000001TF8-2Hgr;
	Tue, 23 Apr 2024 20:51:17 +0000
Received: from mail-wm1-x333.google.com ([2a00:1450:4864:20::333])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rzN5v-00000001SjE-2KQg
	for linux-phy@lists.infradead.org;
	Tue, 23 Apr 2024 20:50:30 +0000
Received: by mail-wm1-x333.google.com with SMTP id 5b1f17b1804b1-4196c62bb4eso34084565e9.2
        for <linux-phy@lists.infradead.org>; Tue, 23 Apr 2024 13:50:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1713905426; x=1714510226; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Xrx7MPXOj3NqXusEBmUazechT1mcRszwnEutRYxamtU=;
        b=K+VavjXevxHRKjCukpaYH5gHAZuGpqg5h7hZyjiTo2LCLnhVj+rw1tG7kJ+7FMviSU
         FehH0oGAK3RfFGB7J3An74VVEAWdGBjgKJA2Le7RrdBRHfpBCdd8FQBmI6Dz+mMkl4de
         gHEPeSmb7u/ogOY9vsseAqK21bIAWCa81mdKKNjr1r41iS2vLsA+Np8K/pQJr9xUSdjh
         dN4xuHxsbH02TOF+MBzNHF6ojC+9sliJZhApzMyv9ZifiOhraLqrMg6itvKJYsduqnB8
         9MN6ozkbVnFu5mcUWhZAWID2S3/iIy6aPsp3t4TPm3N83601zmWlLLj+ejIu88dTFufM
         pFAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713905426; x=1714510226;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Xrx7MPXOj3NqXusEBmUazechT1mcRszwnEutRYxamtU=;
        b=EyU/S5ohfEr1O1uzQV3e4v7Renb2v9WHl/D629vXqUs2nc3oUsX0HBBAHKNxe/9y+v
         McuVfFDyMGO7x/CRwEAFG3rYRWNgmGZBN4DEK4BEsri6dnojLpDnW+JKiHsQzj/OPNxM
         NixNZfArglnTm8aQ0eg91CMLa9masnYZP43OQJjxUPDSvidf+borYN06wbVSvq7wYGsX
         mRnXnLvdvtYikiYtk1H4G/p3olwgf7ivjapU5ru903d0jEX91/MRz/Tpg/Jhoqh9Dj2l
         XCPSXSLeg9LABdJCxnZh2qAc6iZNw1TU5ALQpcFfzl7LRE48ohgZAXsY77Ax7Z1kmwQ3
         AyBA==
X-Forwarded-Encrypted: i=1; AJvYcCX6pIVzbC1UJzTIO1DICueJw1p7uyij1DtMzTG/BNYtZVo7XW+/z8VFXaQuhv1KTTuefISXCg+Tk26TcY9EHldTISINEvjf8s2wRIPdFw==
X-Gm-Message-State: AOJu0YwVwPo4uzmPibsSbJ8ejc4xoCKrS4gxz93kkSzx4K2fBOTkf1Q+
	l76uzJCbqgZ1kREDRLAoqMoOy5qGPctVCwq6dLuGEW7cJLsUrgxGcLssjOYrOlU=
X-Google-Smtp-Source: AGHT+IHTvi8V9VnXzxQ8Vs/Qp/xDG/eKWh50cg0z4PPahvQB9Vq7rXdxS5n6PdcA87kx4VgK9OqjWA==
X-Received: by 2002:a05:600c:22c7:b0:418:ee2:5911 with SMTP id 7-20020a05600c22c700b004180ee25911mr282036wmg.28.1713905425835;
        Tue, 23 Apr 2024 13:50:25 -0700 (PDT)
Received: from gpeter-l.lan ([2a0d:3344:2e8:8510:4269:2542:5a09:9ca1])
        by smtp.gmail.com with ESMTPSA id bg5-20020a05600c3c8500b00419f419236fsm13065443wmb.41.2024.04.23.13.50.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Apr 2024 13:50:25 -0700 (PDT)
From: Peter Griffin <peter.griffin@linaro.org>
To: mturquette@baylibre.com,
	sboyd@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	vkoul@kernel.org,
	kishon@kernel.org,
	alim.akhtar@samsung.com,
	avri.altman@wdc.com,
	bvanassche@acm.org,
	s.nawrocki@samsung.com,
	cw00.choi@samsung.com,
	jejb@linux.ibm.com,
	martin.petersen@oracle.com,
	James.Bottomley@HansenPartnership.com,
	ebiggers@kernel.org
Cc: linux-scsi@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-clk@vger.kernel.org,
	linux-samsung-soc@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	tudor.ambarus@linaro.org,
	andre.draszik@linaro.org,
	saravanak@google.com,
	willmcvicker@google.com,
	Peter Griffin <peter.griffin@linaro.org>
Subject: [PATCH v2 07/14] clk: samsung: gs101: add support for cmu_hsi2
Date: Tue, 23 Apr 2024 21:49:59 +0100
Message-ID: <20240423205006.1785138-8-peter.griffin@linaro.org>
X-Mailer: git-send-email 2.44.0.769.g3c40516874-goog
In-Reply-To: <20240423205006.1785138-1-peter.griffin@linaro.org>
References: <20240423205006.1785138-1-peter.griffin@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240423_135027_777271_2FAAEB71 
X-CRM114-Status: GOOD (  13.16  )
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

CMU_HSI2 is the clock management unit used for the hsi2 block.
HSI stands for High Speed Interface and as such it generates
clocks for PCIe, UFS and MMC card.

This patch adds support for the muxes, dividers, and gates in
cmu_hsi2.

The following clocks are marked CLK_IS_CRITICAL as disabling
them results in an immediate system hang.
CLK_GOUT_HSI2_HSI2_CMU_HSI2_PCLK
CLK_GOUT_HSI2_LHM_AXI_P_HSI2_I_CLK

The following clocks are marked CLK_IGNORE_UNUSED as they are
needed for UFS to be functional.
CLK_GOUT_HSI2_SSMT_HSI2_ACLK
CLK_GOUT_HSI2_SSMT_HSI2_PCLK
CLK_GOUT_HSI2_LHS_ACEL_D_HSI2_I_CLK
CLK_GOUT_HSI2_SYSMMU_HSI2_CLK_S2
CLK_GOUT_HSI2_XIU_D_HSI2_ACLK
CLK_GOUT_HSI2_XIU_P_HSI2_ACLK

CLK_GOUT_HSI2_GPIO_HSI2_PCLK is marked CLK_IGNORE_UNUSED until
the exynos pinctrl clock patches land then it can be removed.

Some clocks in this unit have very long names. To help with this
the clock name mangling strategy was updated to include removing
the following sub-strings.
- G4X2_DWC_PCIE_CTL_
- G4X1_DWC_PCIE_CTL_
- PCIE_SUB_CTRL_
- INST_0_
- LN05LPE_
- TM_WRAPPER_
- SF_

Signed-off-by: Peter Griffin <peter.griffin@linaro.org>

---
Updated regex for clock name mangling
    sed \
        -e 's|^PLL_LOCKTIME_PLL_\([^_]\+\)|fout_\L\1_pll|' \
        \
        -e 's|^PLL_CON0_MUX_CLKCMU_\([^_]\+\)_\(.*\)|mout_\L\1_\2|' \
        -e 's|^PLL_CON0_PLL_\(.*\)|mout_pll_\L\1|' \
        -e 's|^CLK_CON_MUX_MUX_CLK_\(.*\)|mout_\L\1|' \
        -e '/^PLL_CON[1-4]_[^_]\+_/d' \
        -e '/^[^_]\+_CMU_[^_]\+_CONTROLLER_OPTION/d' \
        -e '/^CLKOUT_CON_BLK_[^_]\+_CMU_[^_]\+_CLKOUT0/d' \
        \
        -e 's|_IPCLKPORT||' \
        -e 's|_RSTNSYNC||' \
        -e 's|_G4X2_DWC_PCIE_CTL||' \
        -e 's|_G4X1_DWC_PCIE_CTL||' \
        -e 's|_PCIE_SUB_CTRL||' \
        -e 's|_INST_0||g' \
        -e 's|_LN05LPE||' \
        -e 's|_TM_WRAPPER||' \
        -e 's|_SF||' \
        \
        -e 's|^CLK_CON_DIV_DIV_CLK_\([^_]\+\)_\(.*\)|dout_\L\1_\2|' \
        \
        -e 's|^CLK_CON_BUF_CLKBUF_\([^_]\+\)_\(.*\)|gout_\L\1_\2|' \
        -e 's|^CLK_CON_GAT_CLK_BLK_\([^_]\+\)_UID_\(.*\)|gout_\L\1_\2|' \
        -e 's|^gout_[^_]\+_[^_]\+_cmu_\([^_]\+\)_pclk$|gout_\1_\1_pclk|' \
        -e 's|^CLK_CON_GAT_GOUT_BLK_\([^_]\+\)_UID_\(.*\)|gout_\L\1_\2|' \
        -e 's|^CLK_CON_GAT_CLK_\([^_]\+\)_\(.*\)|gout_\L\1_clk_\L\1_\2|' \
        \
        -e '/^\(DMYQCH\|PCH\|QCH\|QUEUE\)_/d'
---
 drivers/clk/samsung/clk-gs101.c | 508 +++++++++++++++++++++++++++++++-
 1 file changed, 507 insertions(+), 1 deletion(-)

diff --git a/drivers/clk/samsung/clk-gs101.c b/drivers/clk/samsung/clk-gs101.c
index d065e343a85d..983bf52c7165 100644
--- a/drivers/clk/samsung/clk-gs101.c
+++ b/drivers/clk/samsung/clk-gs101.c
@@ -22,6 +22,7 @@
 #define CLKS_NR_MISC	(CLK_GOUT_MISC_XIU_D_MISC_ACLK + 1)
 #define CLKS_NR_PERIC0	(CLK_GOUT_PERIC0_SYSREG_PERIC0_PCLK + 1)
 #define CLKS_NR_PERIC1	(CLK_GOUT_PERIC1_SYSREG_PERIC1_PCLK + 1)
+#define CLKS_NR_HSI2	(CLK_GOUT_HSI2_XIU_P_HSI2_ACLK + 1)
 
 /* ---- CMU_TOP ------------------------------------------------------------- */
 
@@ -1919,6 +1920,509 @@ static const struct samsung_cmu_info apm_cmu_info __initconst = {
 	.nr_clk_regs		= ARRAY_SIZE(apm_clk_regs),
 };
 
+/* ---- CMU_HSI2 ------------------------------------------------------------ */
+
+/* Register Offset definitions for CMU_HSI2 (0x14400000) */
+#define PLL_CON0_MUX_CLKCMU_HSI2_BUS_USER												0x0600
+#define PLL_CON1_MUX_CLKCMU_HSI2_BUS_USER												0x0604
+#define PLL_CON0_MUX_CLKCMU_HSI2_MMC_CARD_USER												0x0610
+#define PLL_CON1_MUX_CLKCMU_HSI2_MMC_CARD_USER												0x0614
+#define PLL_CON0_MUX_CLKCMU_HSI2_PCIE_USER												0x0620
+#define PLL_CON1_MUX_CLKCMU_HSI2_PCIE_USER												0x0624
+#define PLL_CON0_MUX_CLKCMU_HSI2_UFS_EMBD_USER												0x0630
+#define PLL_CON1_MUX_CLKCMU_HSI2_UFS_EMBD_USER												0x0634
+#define HSI2_CMU_HSI2_CONTROLLER_OPTION													0x0800
+#define CLKOUT_CON_BLK_HSI2_CMU_HSI2_CLKOUT0												0x0810
+#define CLK_CON_GAT_CLK_BLK_HSI2_UID_PCIE_GEN4_1_IPCLKPORT_PCIE_003_PCIE_SUB_CTRL_INST_0_PHY_REFCLK_IN					0x2000
+#define CLK_CON_GAT_CLK_BLK_HSI2_UID_PCIE_GEN4_1_IPCLKPORT_PCIE_004_PCIE_SUB_CTRL_INST_0_PHY_REFCLK_IN					0x2004
+#define CLK_CON_GAT_CLK_BLK_HSI2_UID_SSMT_PCIE_IA_GEN4A_1_IPCLKPORT_ACLK								0x2008
+#define CLK_CON_GAT_CLK_BLK_HSI2_UID_SSMT_PCIE_IA_GEN4A_1_IPCLKPORT_PCLK								0x200c
+#define CLK_CON_GAT_CLK_BLK_HSI2_UID_SSMT_PCIE_IA_GEN4B_1_IPCLKPORT_ACLK								0x2010
+#define CLK_CON_GAT_CLK_BLK_HSI2_UID_SSMT_PCIE_IA_GEN4B_1_IPCLKPORT_PCLK								0x2014
+#define CLK_CON_GAT_GOUT_BLK_HSI2_UID_D_TZPC_HSI2_IPCLKPORT_PCLK									0x201c
+#define CLK_CON_GAT_GOUT_BLK_HSI2_UID_GPC_HSI2_IPCLKPORT_PCLK										0x2020
+#define CLK_CON_GAT_GOUT_BLK_HSI2_UID_GPIO_HSI2_IPCLKPORT_PCLK										0x2024
+#define CLK_CON_GAT_GOUT_BLK_HSI2_UID_HSI2_CMU_HSI2_IPCLKPORT_PCLK									0x2028
+#define CLK_CON_GAT_GOUT_BLK_HSI2_UID_LHM_AXI_P_HSI2_IPCLKPORT_I_CLK									0x202c
+#define CLK_CON_GAT_GOUT_BLK_HSI2_UID_LHS_ACEL_D_HSI2_IPCLKPORT_I_CLK									0x2030
+#define CLK_CON_GAT_GOUT_BLK_HSI2_UID_MMC_CARD_IPCLKPORT_I_ACLK										0x2034
+#define CLK_CON_GAT_GOUT_BLK_HSI2_UID_MMC_CARD_IPCLKPORT_SDCLKIN									0x2038
+#define CLK_CON_GAT_GOUT_BLK_HSI2_UID_PCIE_GEN4_1_IPCLKPORT_PCIE_003_G4X2_DWC_PCIE_CTL_INST_0_DBI_ACLK_UG				0x203c
+#define CLK_CON_GAT_GOUT_BLK_HSI2_UID_PCIE_GEN4_1_IPCLKPORT_PCIE_003_G4X2_DWC_PCIE_CTL_INST_0_MSTR_ACLK_UG				0x2040
+#define CLK_CON_GAT_GOUT_BLK_HSI2_UID_PCIE_GEN4_1_IPCLKPORT_PCIE_003_G4X2_DWC_PCIE_CTL_INST_0_SLV_ACLK_UG				0x2044
+#define CLK_CON_GAT_GOUT_BLK_HSI2_UID_PCIE_GEN4_1_IPCLKPORT_PCIE_003_PCIE_SUB_CTRL_INST_0_I_DRIVER_APB_CLK				0x2048
+#define CLK_CON_GAT_GOUT_BLK_HSI2_UID_PCIE_GEN4_1_IPCLKPORT_PCIE_004_G4X1_DWC_PCIE_CTL_INST_0_DBI_ACLK_UG				0x204c
+#define CLK_CON_GAT_GOUT_BLK_HSI2_UID_PCIE_GEN4_1_IPCLKPORT_PCIE_004_G4X1_DWC_PCIE_CTL_INST_0_MSTR_ACLK_UG				0x2050
+#define CLK_CON_GAT_GOUT_BLK_HSI2_UID_PCIE_GEN4_1_IPCLKPORT_PCIE_004_G4X1_DWC_PCIE_CTL_INST_0_SLV_ACLK_UG				0x2054
+#define CLK_CON_GAT_GOUT_BLK_HSI2_UID_PCIE_GEN4_1_IPCLKPORT_PCIE_004_PCIE_SUB_CTRL_INST_0_I_DRIVER_APB_CLK				0x2058
+#define CLK_CON_GAT_GOUT_BLK_HSI2_UID_PCIE_GEN4_1_IPCLKPORT_PCS_PMA_INST_0_PHY_UDBG_I_APB_PCLK						0x205c
+#define CLK_CON_GAT_GOUT_BLK_HSI2_UID_PCIE_GEN4_1_IPCLKPORT_PCS_PMA_INST_0_PIPE_PAL_PCIE_INST_0_I_APB_PCLK				0x2060
+#define CLK_CON_GAT_GOUT_BLK_HSI2_UID_PCIE_GEN4_1_IPCLKPORT_PCS_PMA_INST_0_SF_PCIEPHY210X2_LN05LPE_QCH_TM_WRAPPER_INST_0_I_APB_PCLK	0x2064
+#define CLK_CON_GAT_GOUT_BLK_HSI2_UID_PCIE_IA_GEN4A_1_IPCLKPORT_I_CLK									0x2068
+#define CLK_CON_GAT_GOUT_BLK_HSI2_UID_PCIE_IA_GEN4B_1_IPCLKPORT_I_CLK									0x206c
+#define CLK_CON_GAT_GOUT_BLK_HSI2_UID_PPMU_HSI2_IPCLKPORT_ACLK										0x2070
+#define CLK_CON_GAT_GOUT_BLK_HSI2_UID_PPMU_HSI2_IPCLKPORT_PCLK										0x2074
+#define CLK_CON_GAT_GOUT_BLK_HSI2_UID_QE_MMC_CARD_HSI2_IPCLKPORT_ACLK									0x2078
+#define CLK_CON_GAT_GOUT_BLK_HSI2_UID_QE_MMC_CARD_HSI2_IPCLKPORT_PCLK									0x207c
+#define CLK_CON_GAT_GOUT_BLK_HSI2_UID_QE_PCIE_GEN4A_HSI2_IPCLKPORT_ACLK									0x2080
+#define CLK_CON_GAT_GOUT_BLK_HSI2_UID_QE_PCIE_GEN4A_HSI2_IPCLKPORT_PCLK									0x2084
+#define CLK_CON_GAT_GOUT_BLK_HSI2_UID_QE_PCIE_GEN4B_HSI2_IPCLKPORT_ACLK									0x2088
+#define CLK_CON_GAT_GOUT_BLK_HSI2_UID_QE_PCIE_GEN4B_HSI2_IPCLKPORT_PCLK									0x208c
+#define CLK_CON_GAT_GOUT_BLK_HSI2_UID_QE_UFS_EMBD_HSI2_IPCLKPORT_ACLK									0x2090
+#define CLK_CON_GAT_GOUT_BLK_HSI2_UID_QE_UFS_EMBD_HSI2_IPCLKPORT_PCLK									0x2094
+#define CLK_CON_GAT_GOUT_BLK_HSI2_UID_RSTNSYNC_CLK_HSI2_BUS_IPCLKPORT_CLK								0x2098
+#define CLK_CON_GAT_GOUT_BLK_HSI2_UID_RSTNSYNC_CLK_HSI2_OSCCLK_IPCLKPORT_CLK								0x209c
+#define CLK_CON_GAT_GOUT_BLK_HSI2_UID_SSMT_HSI2_IPCLKPORT_ACLK										0x20a0
+#define CLK_CON_GAT_GOUT_BLK_HSI2_UID_SSMT_HSI2_IPCLKPORT_PCLK										0x20a4
+#define CLK_CON_GAT_GOUT_BLK_HSI2_UID_SYSMMU_HSI2_IPCLKPORT_CLK_S2									0x20a8
+#define CLK_CON_GAT_GOUT_BLK_HSI2_UID_SYSREG_HSI2_IPCLKPORT_PCLK									0x20ac
+#define CLK_CON_GAT_GOUT_BLK_HSI2_UID_UASC_PCIE_GEN4A_DBI_1_IPCLKPORT_ACLK								0x20b0
+#define CLK_CON_GAT_GOUT_BLK_HSI2_UID_UASC_PCIE_GEN4A_DBI_1_IPCLKPORT_PCLK								0x20b4
+#define CLK_CON_GAT_GOUT_BLK_HSI2_UID_UASC_PCIE_GEN4A_SLV_1_IPCLKPORT_ACLK								0x20b8
+#define CLK_CON_GAT_GOUT_BLK_HSI2_UID_UASC_PCIE_GEN4A_SLV_1_IPCLKPORT_PCLK								0x20bc
+#define CLK_CON_GAT_GOUT_BLK_HSI2_UID_UASC_PCIE_GEN4B_DBI_1_IPCLKPORT_ACLK								0x20c0
+#define CLK_CON_GAT_GOUT_BLK_HSI2_UID_UASC_PCIE_GEN4B_DBI_1_IPCLKPORT_PCLK								0x20c4
+#define CLK_CON_GAT_GOUT_BLK_HSI2_UID_UASC_PCIE_GEN4B_SLV_1_IPCLKPORT_ACLK								0x20c8
+#define CLK_CON_GAT_GOUT_BLK_HSI2_UID_UASC_PCIE_GEN4B_SLV_1_IPCLKPORT_PCLK								0x20cc
+#define CLK_CON_GAT_GOUT_BLK_HSI2_UID_UFS_EMBD_IPCLKPORT_I_ACLK										0x20d0
+#define CLK_CON_GAT_GOUT_BLK_HSI2_UID_UFS_EMBD_IPCLKPORT_I_CLK_UNIPRO									0x20d4
+#define CLK_CON_GAT_GOUT_BLK_HSI2_UID_UFS_EMBD_IPCLKPORT_I_FMP_CLK									0x20d8
+#define CLK_CON_GAT_GOUT_BLK_HSI2_UID_XIU_D_HSI2_IPCLKPORT_ACLK										0x20dc
+#define CLK_CON_GAT_GOUT_BLK_HSI2_UID_XIU_P_HSI2_IPCLKPORT_ACLK										0x20e0
+#define DMYQCH_CON_PCIE_GEN4_1_QCH_SCLK_1												0x3000
+#define PCH_CON_LHM_AXI_P_HSI2_PCH													0x3008
+#define PCH_CON_LHS_ACEL_D_HSI2_PCH													0x300c
+#define QCH_CON_D_TZPC_HSI2_QCH														0x3010
+#define QCH_CON_GPC_HSI2_QCH														0x3014
+#define QCH_CON_GPIO_HSI2_QCH														0x3018
+#define QCH_CON_HSI2_CMU_HSI2_QCH													0x301c
+#define QCH_CON_LHM_AXI_P_HSI2_QCH													0x3020
+#define QCH_CON_LHS_ACEL_D_HSI2_QCH													0x3024
+#define QCH_CON_MMC_CARD_QCH														0x3028
+#define QCH_CON_PCIE_GEN4_1_QCH_APB_1													0x302c
+#define QCH_CON_PCIE_GEN4_1_QCH_APB_2													0x3030
+#define QCH_CON_PCIE_GEN4_1_QCH_AXI_1													0x3034
+#define QCH_CON_PCIE_GEN4_1_QCH_AXI_2													0x3038
+#define QCH_CON_PCIE_GEN4_1_QCH_DBG_1													0x303c
+#define QCH_CON_PCIE_GEN4_1_QCH_DBG_2													0x3040
+#define QCH_CON_PCIE_GEN4_1_QCH_PCS_APB													0x3044
+#define QCH_CON_PCIE_GEN4_1_QCH_PMA_APB													0x3048
+#define QCH_CON_PCIE_GEN4_1_QCH_UDBG													0x304c
+#define QCH_CON_PCIE_IA_GEN4A_1_QCH													0x3050
+#define QCH_CON_PCIE_IA_GEN4B_1_QCH													0x3054
+#define QCH_CON_PPMU_HSI2_QCH														0x3058
+#define QCH_CON_QE_MMC_CARD_HSI2_QCH													0x305c
+#define QCH_CON_QE_PCIE_GEN4A_HSI2_QCH													0x3060
+#define QCH_CON_QE_PCIE_GEN4B_HSI2_QCH													0x3064
+#define QCH_CON_QE_UFS_EMBD_HSI2_QCH													0x3068
+#define QCH_CON_SSMT_HSI2_QCH														0x306c
+#define QCH_CON_SSMT_PCIE_IA_GEN4A_1_QCH												0x3070
+#define QCH_CON_SSMT_PCIE_IA_GEN4B_1_QCH												0x3074
+#define QCH_CON_SYSMMU_HSI2_QCH														0x3078
+#define QCH_CON_SYSREG_HSI2_QCH														0x307c
+#define QCH_CON_UASC_PCIE_GEN4A_DBI_1_QCH												0x3080
+#define QCH_CON_UASC_PCIE_GEN4A_SLV_1_QCH												0x3084
+#define QCH_CON_UASC_PCIE_GEN4B_DBI_1_QCH												0x3088
+#define QCH_CON_UASC_PCIE_GEN4B_SLV_1_QCH												0x308c
+#define QCH_CON_UFS_EMBD_QCH														0x3090
+#define QCH_CON_UFS_EMBD_QCH_FMP													0x3094
+#define QUEUE_CTRL_REG_BLK_HSI2_CMU_HSI2												0x3c00
+
+static const unsigned long cmu_hsi2_clk_regs[] __initconst = {
+	PLL_CON0_MUX_CLKCMU_HSI2_BUS_USER,
+	PLL_CON1_MUX_CLKCMU_HSI2_BUS_USER,
+	PLL_CON0_MUX_CLKCMU_HSI2_MMC_CARD_USER,
+	PLL_CON1_MUX_CLKCMU_HSI2_MMC_CARD_USER,
+	PLL_CON0_MUX_CLKCMU_HSI2_PCIE_USER,
+	PLL_CON1_MUX_CLKCMU_HSI2_PCIE_USER,
+	PLL_CON0_MUX_CLKCMU_HSI2_UFS_EMBD_USER,
+	PLL_CON1_MUX_CLKCMU_HSI2_UFS_EMBD_USER,
+	HSI2_CMU_HSI2_CONTROLLER_OPTION,
+	CLKOUT_CON_BLK_HSI2_CMU_HSI2_CLKOUT0,
+	CLK_CON_GAT_CLK_BLK_HSI2_UID_PCIE_GEN4_1_IPCLKPORT_PCIE_003_PCIE_SUB_CTRL_INST_0_PHY_REFCLK_IN,
+	CLK_CON_GAT_CLK_BLK_HSI2_UID_PCIE_GEN4_1_IPCLKPORT_PCIE_004_PCIE_SUB_CTRL_INST_0_PHY_REFCLK_IN,
+	CLK_CON_GAT_CLK_BLK_HSI2_UID_SSMT_PCIE_IA_GEN4A_1_IPCLKPORT_ACLK,
+	CLK_CON_GAT_CLK_BLK_HSI2_UID_SSMT_PCIE_IA_GEN4A_1_IPCLKPORT_PCLK,
+	CLK_CON_GAT_CLK_BLK_HSI2_UID_SSMT_PCIE_IA_GEN4B_1_IPCLKPORT_ACLK,
+	CLK_CON_GAT_CLK_BLK_HSI2_UID_SSMT_PCIE_IA_GEN4B_1_IPCLKPORT_PCLK,
+	CLK_CON_GAT_GOUT_BLK_HSI2_UID_D_TZPC_HSI2_IPCLKPORT_PCLK,
+	CLK_CON_GAT_GOUT_BLK_HSI2_UID_GPC_HSI2_IPCLKPORT_PCLK,
+	CLK_CON_GAT_GOUT_BLK_HSI2_UID_GPIO_HSI2_IPCLKPORT_PCLK,
+	CLK_CON_GAT_GOUT_BLK_HSI2_UID_HSI2_CMU_HSI2_IPCLKPORT_PCLK,
+	CLK_CON_GAT_GOUT_BLK_HSI2_UID_LHM_AXI_P_HSI2_IPCLKPORT_I_CLK,
+	CLK_CON_GAT_GOUT_BLK_HSI2_UID_LHS_ACEL_D_HSI2_IPCLKPORT_I_CLK,
+	CLK_CON_GAT_GOUT_BLK_HSI2_UID_MMC_CARD_IPCLKPORT_I_ACLK,
+	CLK_CON_GAT_GOUT_BLK_HSI2_UID_MMC_CARD_IPCLKPORT_SDCLKIN,
+	CLK_CON_GAT_GOUT_BLK_HSI2_UID_PCIE_GEN4_1_IPCLKPORT_PCIE_003_G4X2_DWC_PCIE_CTL_INST_0_DBI_ACLK_UG,
+	CLK_CON_GAT_GOUT_BLK_HSI2_UID_PCIE_GEN4_1_IPCLKPORT_PCIE_003_G4X2_DWC_PCIE_CTL_INST_0_MSTR_ACLK_UG,
+	CLK_CON_GAT_GOUT_BLK_HSI2_UID_PCIE_GEN4_1_IPCLKPORT_PCIE_003_G4X2_DWC_PCIE_CTL_INST_0_SLV_ACLK_UG,
+	CLK_CON_GAT_GOUT_BLK_HSI2_UID_PCIE_GEN4_1_IPCLKPORT_PCIE_003_PCIE_SUB_CTRL_INST_0_I_DRIVER_APB_CLK,
+	CLK_CON_GAT_GOUT_BLK_HSI2_UID_PCIE_GEN4_1_IPCLKPORT_PCIE_004_G4X1_DWC_PCIE_CTL_INST_0_DBI_ACLK_UG,
+	CLK_CON_GAT_GOUT_BLK_HSI2_UID_PCIE_GEN4_1_IPCLKPORT_PCIE_004_G4X1_DWC_PCIE_CTL_INST_0_MSTR_ACLK_UG,
+	CLK_CON_GAT_GOUT_BLK_HSI2_UID_PCIE_GEN4_1_IPCLKPORT_PCIE_004_G4X1_DWC_PCIE_CTL_INST_0_SLV_ACLK_UG,
+	CLK_CON_GAT_GOUT_BLK_HSI2_UID_PCIE_GEN4_1_IPCLKPORT_PCIE_004_PCIE_SUB_CTRL_INST_0_I_DRIVER_APB_CLK,
+	CLK_CON_GAT_GOUT_BLK_HSI2_UID_PCIE_GEN4_1_IPCLKPORT_PCS_PMA_INST_0_PHY_UDBG_I_APB_PCLK,
+	CLK_CON_GAT_GOUT_BLK_HSI2_UID_PCIE_GEN4_1_IPCLKPORT_PCS_PMA_INST_0_PIPE_PAL_PCIE_INST_0_I_APB_PCLK,
+	CLK_CON_GAT_GOUT_BLK_HSI2_UID_PCIE_GEN4_1_IPCLKPORT_PCS_PMA_INST_0_SF_PCIEPHY210X2_LN05LPE_QCH_TM_WRAPPER_INST_0_I_APB_PCLK,
+	CLK_CON_GAT_GOUT_BLK_HSI2_UID_PCIE_IA_GEN4A_1_IPCLKPORT_I_CLK,
+	CLK_CON_GAT_GOUT_BLK_HSI2_UID_PCIE_IA_GEN4B_1_IPCLKPORT_I_CLK,
+	CLK_CON_GAT_GOUT_BLK_HSI2_UID_PPMU_HSI2_IPCLKPORT_ACLK,
+	CLK_CON_GAT_GOUT_BLK_HSI2_UID_PPMU_HSI2_IPCLKPORT_PCLK,
+	CLK_CON_GAT_GOUT_BLK_HSI2_UID_QE_MMC_CARD_HSI2_IPCLKPORT_ACLK,
+	CLK_CON_GAT_GOUT_BLK_HSI2_UID_QE_MMC_CARD_HSI2_IPCLKPORT_PCLK,
+	CLK_CON_GAT_GOUT_BLK_HSI2_UID_QE_PCIE_GEN4A_HSI2_IPCLKPORT_ACLK,
+	CLK_CON_GAT_GOUT_BLK_HSI2_UID_QE_PCIE_GEN4A_HSI2_IPCLKPORT_PCLK,
+	CLK_CON_GAT_GOUT_BLK_HSI2_UID_QE_PCIE_GEN4B_HSI2_IPCLKPORT_ACLK,
+	CLK_CON_GAT_GOUT_BLK_HSI2_UID_QE_PCIE_GEN4B_HSI2_IPCLKPORT_PCLK,
+	CLK_CON_GAT_GOUT_BLK_HSI2_UID_QE_UFS_EMBD_HSI2_IPCLKPORT_ACLK,
+	CLK_CON_GAT_GOUT_BLK_HSI2_UID_QE_UFS_EMBD_HSI2_IPCLKPORT_PCLK,
+	CLK_CON_GAT_GOUT_BLK_HSI2_UID_RSTNSYNC_CLK_HSI2_BUS_IPCLKPORT_CLK,
+	CLK_CON_GAT_GOUT_BLK_HSI2_UID_RSTNSYNC_CLK_HSI2_OSCCLK_IPCLKPORT_CLK,
+	CLK_CON_GAT_GOUT_BLK_HSI2_UID_SSMT_HSI2_IPCLKPORT_ACLK,
+	CLK_CON_GAT_GOUT_BLK_HSI2_UID_SSMT_HSI2_IPCLKPORT_PCLK,
+	CLK_CON_GAT_GOUT_BLK_HSI2_UID_SYSMMU_HSI2_IPCLKPORT_CLK_S2,
+	CLK_CON_GAT_GOUT_BLK_HSI2_UID_SYSREG_HSI2_IPCLKPORT_PCLK,
+	CLK_CON_GAT_GOUT_BLK_HSI2_UID_UASC_PCIE_GEN4A_DBI_1_IPCLKPORT_ACLK,
+	CLK_CON_GAT_GOUT_BLK_HSI2_UID_UASC_PCIE_GEN4A_DBI_1_IPCLKPORT_PCLK,
+	CLK_CON_GAT_GOUT_BLK_HSI2_UID_UASC_PCIE_GEN4A_SLV_1_IPCLKPORT_ACLK,
+	CLK_CON_GAT_GOUT_BLK_HSI2_UID_UASC_PCIE_GEN4A_SLV_1_IPCLKPORT_PCLK,
+	CLK_CON_GAT_GOUT_BLK_HSI2_UID_UASC_PCIE_GEN4B_DBI_1_IPCLKPORT_ACLK,
+	CLK_CON_GAT_GOUT_BLK_HSI2_UID_UASC_PCIE_GEN4B_DBI_1_IPCLKPORT_PCLK,
+	CLK_CON_GAT_GOUT_BLK_HSI2_UID_UASC_PCIE_GEN4B_SLV_1_IPCLKPORT_ACLK,
+	CLK_CON_GAT_GOUT_BLK_HSI2_UID_UASC_PCIE_GEN4B_SLV_1_IPCLKPORT_PCLK,
+	CLK_CON_GAT_GOUT_BLK_HSI2_UID_UFS_EMBD_IPCLKPORT_I_ACLK,
+	CLK_CON_GAT_GOUT_BLK_HSI2_UID_UFS_EMBD_IPCLKPORT_I_CLK_UNIPRO,
+	CLK_CON_GAT_GOUT_BLK_HSI2_UID_UFS_EMBD_IPCLKPORT_I_FMP_CLK,
+	CLK_CON_GAT_GOUT_BLK_HSI2_UID_XIU_D_HSI2_IPCLKPORT_ACLK,
+	CLK_CON_GAT_GOUT_BLK_HSI2_UID_XIU_P_HSI2_IPCLKPORT_ACLK,
+	DMYQCH_CON_PCIE_GEN4_1_QCH_SCLK_1,
+	PCH_CON_LHM_AXI_P_HSI2_PCH,
+	PCH_CON_LHS_ACEL_D_HSI2_PCH,
+	QCH_CON_D_TZPC_HSI2_QCH,
+	QCH_CON_GPC_HSI2_QCH,
+	QCH_CON_GPIO_HSI2_QCH,
+	QCH_CON_HSI2_CMU_HSI2_QCH,
+	QCH_CON_LHM_AXI_P_HSI2_QCH,
+	QCH_CON_LHS_ACEL_D_HSI2_QCH,
+	QCH_CON_MMC_CARD_QCH,
+	QCH_CON_PCIE_GEN4_1_QCH_APB_1,
+	QCH_CON_PCIE_GEN4_1_QCH_APB_2,
+	QCH_CON_PCIE_GEN4_1_QCH_AXI_1,
+	QCH_CON_PCIE_GEN4_1_QCH_AXI_2,
+	QCH_CON_PCIE_GEN4_1_QCH_DBG_1,
+	QCH_CON_PCIE_GEN4_1_QCH_DBG_2,
+	QCH_CON_PCIE_GEN4_1_QCH_PCS_APB,
+	QCH_CON_PCIE_GEN4_1_QCH_PMA_APB,
+	QCH_CON_PCIE_GEN4_1_QCH_UDBG,
+	QCH_CON_PCIE_IA_GEN4A_1_QCH,
+	QCH_CON_PCIE_IA_GEN4B_1_QCH,
+	QCH_CON_PPMU_HSI2_QCH,
+	QCH_CON_QE_MMC_CARD_HSI2_QCH,
+	QCH_CON_QE_PCIE_GEN4A_HSI2_QCH,
+	QCH_CON_QE_PCIE_GEN4B_HSI2_QCH,
+	QCH_CON_QE_UFS_EMBD_HSI2_QCH,
+	QCH_CON_SSMT_HSI2_QCH,
+	QCH_CON_SSMT_PCIE_IA_GEN4A_1_QCH,
+	QCH_CON_SSMT_PCIE_IA_GEN4B_1_QCH,
+	QCH_CON_SYSMMU_HSI2_QCH,
+	QCH_CON_SYSREG_HSI2_QCH,
+	QCH_CON_UASC_PCIE_GEN4A_DBI_1_QCH,
+	QCH_CON_UASC_PCIE_GEN4A_SLV_1_QCH,
+	QCH_CON_UASC_PCIE_GEN4B_DBI_1_QCH,
+	QCH_CON_UASC_PCIE_GEN4B_SLV_1_QCH,
+	QCH_CON_UFS_EMBD_QCH,
+	QCH_CON_UFS_EMBD_QCH_FMP,
+	QUEUE_CTRL_REG_BLK_HSI2_CMU_HSI2,
+};
+
+PNAME(mout_hsi2_ufs_embd_p)	= { "oscclk", "dout_cmu_shared0_div4",
+				    "dout_cmu_shared2_div2", "fout_spare_pll" };
+
+PNAME(mout_hsi2_pcie_p)		= { "oscclk", "dout_cmu_shared2_div2" };
+
+PNAME(mout_hsi2_bus_p)		= { "dout_cmu_shared0_div4",
+				    "dout_cmu_shared1_div4",
+				    "dout_cmu_shared2_div2",
+				    "dout_cmu_shared3_div2",
+				    "fout_spare_pll", "oscclk", "oscclk",
+				    "oscclk" };
+
+PNAME(mout_hsi2_mmc_card_p)	= { "fout_shared2_pll", "fout_shared3_pll",
+				    "dout_cmu_shared0_div4", "fout_spare_pll" };
+
+PNAME(mout_hsi2_bus_user_p)	= { "oscclk", "dout_cmu_hsi2_bus" };
+PNAME(mout_hsi2_mmc_card_user_p) = { "oscclk", "dout_cmu_hsi2_mmc_card" };
+PNAME(mout_hsi2_pcie_user_p)	= { "oscclk", "dout_cmu_hsi2_pcie" };
+PNAME(mout_hsi2_ufs_embd_user_p) = { "oscclk", "dout_cmu_hsi2_ufs_embd" };
+
+static const struct samsung_mux_clock hsi2_mux_clks[] __initconst = {
+	MUX(CLK_MOUT_HSI2_BUS_USER, "mout_hsi2_bus_user", mout_hsi2_bus_user_p,
+	    PLL_CON0_MUX_CLKCMU_HSI2_BUS_USER, 4, 1),
+	MUX(CLK_MOUT_HSI2_MMC_CARD_USER, "mout_hsi2_mmc_card_user",
+	    mout_hsi2_mmc_card_user_p, PLL_CON0_MUX_CLKCMU_HSI2_MMC_CARD_USER,
+	    4, 1),
+	MUX(CLK_MOUT_HSI2_PCIE_USER, "mout_hsi2_pcie_user",
+	    mout_hsi2_pcie_user_p, PLL_CON0_MUX_CLKCMU_HSI2_PCIE_USER,
+	    4, 1),
+	MUX(CLK_MOUT_HSI2_UFS_EMBD_USER, "mout_hsi2_ufs_embd_user",
+	    mout_hsi2_ufs_embd_user_p, PLL_CON0_MUX_CLKCMU_HSI2_UFS_EMBD_USER,
+	    4, 1),
+};
+
+static const struct samsung_gate_clock hsi2_gate_clks[] __initconst = {
+	GATE(CLK_GOUT_HSI2_PCIE_GEN4_1_PCIE_003_PHY_REFCLK_IN,
+	     "gout_hsi2_pcie_gen4_1_pcie_003_phy_refclk_in",
+	     "mout_hsi2_pcie_user",
+	     CLK_CON_GAT_CLK_BLK_HSI2_UID_PCIE_GEN4_1_IPCLKPORT_PCIE_003_PCIE_SUB_CTRL_INST_0_PHY_REFCLK_IN,
+	     21, 0, 0),
+	GATE(CLK_GOUT_HSI2_PCIE_GEN4_1_PCIE_004_PHY_REFCLK_IN,
+	     "gout_hsi2_pcie_gen4_1_pcie_004_phy_refclk_in",
+	     "mout_hsi2_pcie_user",
+	     CLK_CON_GAT_CLK_BLK_HSI2_UID_PCIE_GEN4_1_IPCLKPORT_PCIE_004_PCIE_SUB_CTRL_INST_0_PHY_REFCLK_IN,
+	     21, 0, 0),
+	GATE(CLK_GOUT_HSI2_SSMT_PCIE_IA_GEN4A_1_ACLK,
+	     "gout_hsi2_ssmt_pcie_ia_gen4a_1_aclk", "mout_hsi2_bus_user",
+	     CLK_CON_GAT_CLK_BLK_HSI2_UID_SSMT_PCIE_IA_GEN4A_1_IPCLKPORT_ACLK,
+	     21, 0, 0),
+	GATE(CLK_GOUT_HSI2_SSMT_PCIE_IA_GEN4A_1_PCLK,
+	     "gout_hsi2_ssmt_pcie_ia_gen4a_1_pclk", "mout_hsi2_bus_user",
+	     CLK_CON_GAT_CLK_BLK_HSI2_UID_SSMT_PCIE_IA_GEN4A_1_IPCLKPORT_PCLK,
+	     21, 0, 0),
+	GATE(CLK_GOUT_HSI2_SSMT_PCIE_IA_GEN4B_1_ACLK,
+	     "gout_hsi2_ssmt_pcie_ia_gen4b_1_aclk", "mout_hsi2_bus_user",
+	     CLK_CON_GAT_CLK_BLK_HSI2_UID_SSMT_PCIE_IA_GEN4B_1_IPCLKPORT_ACLK,
+	     21, 0, 0),
+	GATE(CLK_GOUT_HSI2_SSMT_PCIE_IA_GEN4B_1_PCLK,
+	     "gout_hsi2_ssmt_pcie_ia_gen4b_1_pclk", "mout_hsi2_bus_user",
+	     CLK_CON_GAT_CLK_BLK_HSI2_UID_SSMT_PCIE_IA_GEN4B_1_IPCLKPORT_PCLK,
+	     21, 0, 0),
+	GATE(CLK_GOUT_HSI2_D_TZPC_HSI2_PCLK,
+	     "gout_hsi2_d_tzpc_hsi2_pclk", "mout_hsi2_bus_user",
+	     CLK_CON_GAT_GOUT_BLK_HSI2_UID_D_TZPC_HSI2_IPCLKPORT_PCLK,
+	     21, 0, 0),
+	GATE(CLK_GOUT_HSI2_GPC_HSI2_PCLK,
+	     "gout_hsi2_gpc_hsi2_pclk", "mout_hsi2_bus_user",
+	     CLK_CON_GAT_GOUT_BLK_HSI2_UID_GPC_HSI2_IPCLKPORT_PCLK, 21, 0, 0),
+	GATE(CLK_GOUT_HSI2_GPIO_HSI2_PCLK,
+	     "gout_hsi2_gpio_hsi2_pclk", "mout_hsi2_bus_user",
+	     CLK_CON_GAT_GOUT_BLK_HSI2_UID_GPIO_HSI2_IPCLKPORT_PCLK, 21,
+	     CLK_IGNORE_UNUSED, 0),
+	/* Disabling this clock makes the system hang. Mark the clock as critical. */
+	GATE(CLK_GOUT_HSI2_HSI2_CMU_HSI2_PCLK,
+	     "gout_hsi2_hsi2_cmu_hsi2_pclk", "mout_hsi2_bus_user",
+	     CLK_CON_GAT_GOUT_BLK_HSI2_UID_HSI2_CMU_HSI2_IPCLKPORT_PCLK,
+	     21, CLK_IS_CRITICAL, 0),
+	/* Disabling this clock makes the system hang. Mark the clock as critical. */
+	GATE(CLK_GOUT_HSI2_LHM_AXI_P_HSI2_I_CLK,
+	     "gout_hsi2_lhm_axi_p_hsi2_i_clk", "mout_hsi2_bus_user",
+	     CLK_CON_GAT_GOUT_BLK_HSI2_UID_LHM_AXI_P_HSI2_IPCLKPORT_I_CLK,
+	     21, CLK_IS_CRITICAL, 0),
+	/* TODO: should have a driver for this */
+	GATE(CLK_GOUT_HSI2_LHS_ACEL_D_HSI2_I_CLK,
+	     "gout_hsi2_lhs_acel_d_hsi2_i_clk", "mout_hsi2_bus_user",
+	     CLK_CON_GAT_GOUT_BLK_HSI2_UID_LHS_ACEL_D_HSI2_IPCLKPORT_I_CLK,
+	     21, CLK_IGNORE_UNUSED, 0),
+	GATE(CLK_GOUT_HSI2_MMC_CARD_I_ACLK,
+	     "gout_hsi2_mmc_card_i_aclk", "mout_hsi2_bus_user",
+	     CLK_CON_GAT_GOUT_BLK_HSI2_UID_MMC_CARD_IPCLKPORT_I_ACLK,
+	     21, 0, 0),
+	GATE(CLK_GOUT_HSI2_MMC_CARD_SDCLKIN,
+	     "gout_hsi2_mmc_card_sdclkin", "mout_hsi2_mmc_card_user",
+	     CLK_CON_GAT_GOUT_BLK_HSI2_UID_MMC_CARD_IPCLKPORT_SDCLKIN,
+	     21, 0, 0),
+	GATE(CLK_GOUT_HSI2_PCIE_GEN4_1_PCIE_003_DBI_ACLK_UG,
+	     "gout_hsi2_pcie_gen4_1_pcie_003_dbi_aclk_ug", "mout_hsi2_bus_user",
+	     CLK_CON_GAT_GOUT_BLK_HSI2_UID_PCIE_GEN4_1_IPCLKPORT_PCIE_003_G4X2_DWC_PCIE_CTL_INST_0_DBI_ACLK_UG,
+	     21, 0, 0),
+	GATE(CLK_GOUT_HSI2_PCIE_GEN4_1_PCIE_003_MSTR_ACLK_UG,
+	     "gout_hsi2_pcie_gen4_1_pcie_003_mstr_aclk_ug",
+	     "mout_hsi2_bus_user",
+	     CLK_CON_GAT_GOUT_BLK_HSI2_UID_PCIE_GEN4_1_IPCLKPORT_PCIE_003_G4X2_DWC_PCIE_CTL_INST_0_MSTR_ACLK_UG,
+	     21, 0, 0),
+	GATE(CLK_GOUT_HSI2_PCIE_GEN4_1_PCIE_003_SLV_ACLK_UG,
+	     "gout_hsi2_pcie_gen4_1_pcie_003_slv_aclk_ug", "mout_hsi2_bus_user",
+	     CLK_CON_GAT_GOUT_BLK_HSI2_UID_PCIE_GEN4_1_IPCLKPORT_PCIE_003_G4X2_DWC_PCIE_CTL_INST_0_SLV_ACLK_UG,
+	     21, 0, 0),
+	GATE(CLK_GOUT_HSI2_PCIE_GEN4_1_PCIE_003_I_DRIVER_APB_CLK,
+	     "gout_hsi2_pcie_gen4_1_pcie_003_i_driver_apb_clk",
+	     "mout_hsi2_bus_user",
+	     CLK_CON_GAT_GOUT_BLK_HSI2_UID_PCIE_GEN4_1_IPCLKPORT_PCIE_003_PCIE_SUB_CTRL_INST_0_I_DRIVER_APB_CLK,
+	     21, 0, 0),
+	GATE(CLK_GOUT_HSI2_PCIE_GEN4_1_PCIE_004_DBI_ACLK_UG,
+	     "gout_hsi2_pcie_gen4_1_pcie_004_dbi_aclk_ug", "mout_hsi2_bus_user",
+	     CLK_CON_GAT_GOUT_BLK_HSI2_UID_PCIE_GEN4_1_IPCLKPORT_PCIE_004_G4X1_DWC_PCIE_CTL_INST_0_DBI_ACLK_UG,
+	     21, 0, 0),
+	GATE(CLK_GOUT_HSI2_PCIE_GEN4_1_PCIE_004_MSTR_ACLK_UG,
+	     "gout_hsi2_pcie_gen4_1_pcie_004_mstr_aclk_ug",
+	     "mout_hsi2_bus_user",
+	     CLK_CON_GAT_GOUT_BLK_HSI2_UID_PCIE_GEN4_1_IPCLKPORT_PCIE_004_G4X1_DWC_PCIE_CTL_INST_0_MSTR_ACLK_UG,
+	     21, 0, 0),
+	GATE(CLK_GOUT_HSI2_PCIE_GEN4_1_PCIE_004_SLV_ACLK_UG,
+	     "gout_hsi2_pcie_gen4_1_pcie_004_slv_aclk_ug", "mout_hsi2_bus_user",
+	     CLK_CON_GAT_GOUT_BLK_HSI2_UID_PCIE_GEN4_1_IPCLKPORT_PCIE_004_G4X1_DWC_PCIE_CTL_INST_0_SLV_ACLK_UG,
+	     21, 0, 0),
+	GATE(CLK_GOUT_HSI2_PCIE_GEN4_1_PCIE_004_I_DRIVER_APB_CLK,
+	     "gout_hsi2_pcie_gen4_1_pcie_004_i_driver_apb_clk",
+	     "mout_hsi2_bus_user",
+	     CLK_CON_GAT_GOUT_BLK_HSI2_UID_PCIE_GEN4_1_IPCLKPORT_PCIE_004_PCIE_SUB_CTRL_INST_0_I_DRIVER_APB_CLK,
+	     21, 0, 0),
+	GATE(CLK_GOUT_HSI2_PCIE_GEN4_1_PCS_PMA_PHY_UDBG_I_APB_PCLK,
+	     "gout_hsi2_pcie_gen4_1_pcs_pma_phy_udbg_i_apb_pclk",
+	     "mout_hsi2_bus_user",
+	     CLK_CON_GAT_GOUT_BLK_HSI2_UID_PCIE_GEN4_1_IPCLKPORT_PCS_PMA_INST_0_PHY_UDBG_I_APB_PCLK,
+	     21, 0, 0),
+	GATE(CLK_GOUT_HSI2_PCIE_GEN4_1_PCS_PMA_PIPE_PAL_PCIE_I_APB_PCLK,
+	     "gout_hsi2_pcie_gen4_1_pcs_pma_pipe_pal_pcie_i_apb_pclk",
+	     "mout_hsi2_bus_user",
+	     CLK_CON_GAT_GOUT_BLK_HSI2_UID_PCIE_GEN4_1_IPCLKPORT_PCS_PMA_INST_0_PIPE_PAL_PCIE_INST_0_I_APB_PCLK,
+	     21, 0, 0),
+	GATE(CLK_GOUT_HSI2_PCIE_GEN4_1_PCS_PMA_PCIEPHY210X2_QCH_I_APB_PCLK,
+	     "gout_hsi2_pcie_gen4_1_pcs_pma_pciephy210x2_qch_i_apb_pclk",
+	     "mout_hsi2_bus_user",
+	     CLK_CON_GAT_GOUT_BLK_HSI2_UID_PCIE_GEN4_1_IPCLKPORT_PCS_PMA_INST_0_SF_PCIEPHY210X2_LN05LPE_QCH_TM_WRAPPER_INST_0_I_APB_PCLK,
+	     21, 0, 0),
+	GATE(CLK_GOUT_HSI2_PCIE_IA_GEN4A_1_I_CLK,
+	     "gout_hsi2_pcie_ia_gen4a_1_i_clk", "mout_hsi2_bus_user",
+	     CLK_CON_GAT_GOUT_BLK_HSI2_UID_PCIE_IA_GEN4A_1_IPCLKPORT_I_CLK,
+	     21, 0, 0),
+	GATE(CLK_GOUT_HSI2_PCIE_IA_GEN4B_1_I_CLK,
+	     "gout_hsi2_pcie_ia_gen4b_1_i_clk", "mout_hsi2_bus_user",
+	     CLK_CON_GAT_GOUT_BLK_HSI2_UID_PCIE_IA_GEN4B_1_IPCLKPORT_I_CLK,
+	     21, 0, 0),
+	GATE(CLK_GOUT_HSI2_PPMU_HSI2_ACLK,
+	     "gout_hsi2_ppmu_hsi2_aclk", "mout_hsi2_bus_user",
+	     CLK_CON_GAT_GOUT_BLK_HSI2_UID_PPMU_HSI2_IPCLKPORT_ACLK,
+	     21, 0, 0),
+	GATE(CLK_GOUT_HSI2_PPMU_HSI2_PCLK,
+	     "gout_hsi2_ppmu_hsi2_pclk", "mout_hsi2_bus_user",
+	     CLK_CON_GAT_GOUT_BLK_HSI2_UID_PPMU_HSI2_IPCLKPORT_PCLK,
+	     21, 0, 0),
+	GATE(CLK_GOUT_HSI2_QE_MMC_CARD_HSI2_ACLK,
+	     "gout_hsi2_qe_mmc_card_hsi2_aclk", "mout_hsi2_bus_user",
+	     CLK_CON_GAT_GOUT_BLK_HSI2_UID_QE_MMC_CARD_HSI2_IPCLKPORT_ACLK,
+	     21, 0, 0),
+	GATE(CLK_GOUT_HSI2_QE_MMC_CARD_HSI2_PCLK,
+	     "gout_hsi2_qe_mmc_card_hsi2_pclk", "mout_hsi2_bus_user",
+	     CLK_CON_GAT_GOUT_BLK_HSI2_UID_QE_MMC_CARD_HSI2_IPCLKPORT_PCLK,
+	     21, 0, 0),
+	GATE(CLK_GOUT_HSI2_QE_PCIE_GEN4A_HSI2_ACLK,
+	     "gout_hsi2_qe_pcie_gen4a_hsi2_aclk", "mout_hsi2_bus_user",
+	     CLK_CON_GAT_GOUT_BLK_HSI2_UID_QE_PCIE_GEN4A_HSI2_IPCLKPORT_ACLK,
+	     21, 0, 0),
+	GATE(CLK_GOUT_HSI2_QE_PCIE_GEN4A_HSI2_PCLK,
+	     "gout_hsi2_qe_pcie_gen4a_hsi2_pclk", "mout_hsi2_bus_user",
+	     CLK_CON_GAT_GOUT_BLK_HSI2_UID_QE_PCIE_GEN4A_HSI2_IPCLKPORT_PCLK,
+	     21, 0, 0),
+	GATE(CLK_GOUT_HSI2_QE_PCIE_GEN4B_HSI2_ACLK,
+	     "gout_hsi2_qe_pcie_gen4b_hsi2_aclk", "mout_hsi2_bus_user",
+	     CLK_CON_GAT_GOUT_BLK_HSI2_UID_QE_PCIE_GEN4B_HSI2_IPCLKPORT_ACLK,
+	     21, 0, 0),
+	GATE(CLK_GOUT_HSI2_QE_PCIE_GEN4B_HSI2_PCLK,
+	     "gout_hsi2_qe_pcie_gen4b_hsi2_pclk", "mout_hsi2_bus_user",
+	     CLK_CON_GAT_GOUT_BLK_HSI2_UID_QE_PCIE_GEN4B_HSI2_IPCLKPORT_PCLK,
+	     21, 0, 0),
+	GATE(CLK_GOUT_HSI2_QE_UFS_EMBD_HSI2_ACLK,
+	     "gout_hsi2_qe_ufs_embd_hsi2_aclk", "mout_hsi2_bus_user",
+	     CLK_CON_GAT_GOUT_BLK_HSI2_UID_QE_UFS_EMBD_HSI2_IPCLKPORT_ACLK,
+	     21, 0, 0),
+	GATE(CLK_GOUT_HSI2_QE_UFS_EMBD_HSI2_PCLK,
+	     "gout_hsi2_qe_ufs_embd_hsi2_pclk", "mout_hsi2_bus_user",
+	     CLK_CON_GAT_GOUT_BLK_HSI2_UID_QE_UFS_EMBD_HSI2_IPCLKPORT_PCLK,
+	     21, 0, 0),
+	GATE(CLK_GOUT_HSI2_CLK_HSI2_BUS_CLK,
+	     "gout_hsi2_clk_hsi2_bus_clk", "mout_hsi2_bus_user",
+	     CLK_CON_GAT_GOUT_BLK_HSI2_UID_RSTNSYNC_CLK_HSI2_BUS_IPCLKPORT_CLK,
+	     21, CLK_IS_CRITICAL, 0),
+	GATE(CLK_GOUT_HSI2_CLK_HSI2_OSCCLK_CLK,
+	     "gout_hsi2_clk_hsi2_oscclk_clk", "oscclk",
+	     CLK_CON_GAT_GOUT_BLK_HSI2_UID_RSTNSYNC_CLK_HSI2_OSCCLK_IPCLKPORT_CLK,
+	     21, 0, 0),
+	/* TODO: should have a driver for this */
+	GATE(CLK_GOUT_HSI2_SSMT_HSI2_ACLK,
+	     "gout_hsi2_ssmt_hsi2_aclk", "mout_hsi2_bus_user",
+	     CLK_CON_GAT_GOUT_BLK_HSI2_UID_SSMT_HSI2_IPCLKPORT_ACLK,
+	     21, CLK_IGNORE_UNUSED, 0),
+	/* TODO: should have a driver for this */
+	GATE(CLK_GOUT_HSI2_SSMT_HSI2_PCLK,
+	     "gout_hsi2_ssmt_hsi2_pclk", "mout_hsi2_bus_user",
+	     CLK_CON_GAT_GOUT_BLK_HSI2_UID_SSMT_HSI2_IPCLKPORT_PCLK,
+	     21, CLK_IGNORE_UNUSED, 0),
+	/* TODO: should have a driver for this */
+	GATE(CLK_GOUT_HSI2_SYSMMU_HSI2_CLK_S2,
+	     "gout_hsi2_sysmmu_hsi2_clk_s2", "mout_hsi2_bus_user",
+	     CLK_CON_GAT_GOUT_BLK_HSI2_UID_SYSMMU_HSI2_IPCLKPORT_CLK_S2,
+	     21, CLK_IGNORE_UNUSED, 0),
+	GATE(CLK_GOUT_HSI2_SYSREG_HSI2_PCLK,
+	     "gout_hsi2_sysreg_hsi2_pclk", "mout_hsi2_bus_user",
+	     CLK_CON_GAT_GOUT_BLK_HSI2_UID_SYSREG_HSI2_IPCLKPORT_PCLK,
+	     21, 0, 0),
+	GATE(CLK_GOUT_HSI2_UASC_PCIE_GEN4A_DBI_1_ACLK,
+	     "gout_hsi2_uasc_pcie_gen4a_dbi_1_aclk", "mout_hsi2_bus_user",
+	     CLK_CON_GAT_GOUT_BLK_HSI2_UID_UASC_PCIE_GEN4A_DBI_1_IPCLKPORT_ACLK,
+	     21, 0, 0),
+	GATE(CLK_GOUT_HSI2_UASC_PCIE_GEN4A_DBI_1_PCLK,
+	     "gout_hsi2_uasc_pcie_gen4a_dbi_1_pclk", "mout_hsi2_bus_user",
+	     CLK_CON_GAT_GOUT_BLK_HSI2_UID_UASC_PCIE_GEN4A_DBI_1_IPCLKPORT_PCLK,
+	     21, 0, 0),
+	GATE(CLK_GOUT_HSI2_UASC_PCIE_GEN4A_SLV_1_ACLK,
+	     "gout_hsi2_uasc_pcie_gen4a_slv_1_aclk", "mout_hsi2_bus_user",
+	     CLK_CON_GAT_GOUT_BLK_HSI2_UID_UASC_PCIE_GEN4A_SLV_1_IPCLKPORT_ACLK,
+	     21, 0, 0),
+	GATE(CLK_GOUT_HSI2_UASC_PCIE_GEN4A_SLV_1_PCLK,
+	     "gout_hsi2_uasc_pcie_gen4a_slv_1_pclk", "mout_hsi2_bus_user",
+	     CLK_CON_GAT_GOUT_BLK_HSI2_UID_UASC_PCIE_GEN4A_SLV_1_IPCLKPORT_PCLK,
+	     21, 0, 0),
+	GATE(CLK_GOUT_HSI2_UASC_PCIE_GEN4B_DBI_1_ACLK,
+	     "gout_hsi2_uasc_pcie_gen4b_dbi_1_aclk", "mout_hsi2_bus_user",
+	     CLK_CON_GAT_GOUT_BLK_HSI2_UID_UASC_PCIE_GEN4B_DBI_1_IPCLKPORT_ACLK,
+	     21, 0, 0),
+	GATE(CLK_GOUT_HSI2_UASC_PCIE_GEN4B_DBI_1_PCLK,
+	     "gout_hsi2_uasc_pcie_gen4b_dbi_1_pclk", "mout_hsi2_bus_user",
+	     CLK_CON_GAT_GOUT_BLK_HSI2_UID_UASC_PCIE_GEN4B_DBI_1_IPCLKPORT_PCLK,
+	     21, 0, 0),
+	GATE(CLK_GOUT_HSI2_UASC_PCIE_GEN4B_SLV_1_ACLK,
+	     "gout_hsi2_uasc_pcie_gen4b_slv_1_aclk", "mout_hsi2_bus_user",
+	     CLK_CON_GAT_GOUT_BLK_HSI2_UID_UASC_PCIE_GEN4B_SLV_1_IPCLKPORT_ACLK,
+	     21, 0, 0),
+	GATE(CLK_GOUT_HSI2_UASC_PCIE_GEN4B_SLV_1_PCLK,
+	     "gout_hsi2_uasc_pcie_gen4b_slv_1_pclk", "mout_hsi2_bus_user",
+	     CLK_CON_GAT_GOUT_BLK_HSI2_UID_UASC_PCIE_GEN4B_SLV_1_IPCLKPORT_PCLK,
+	     21, 0, 0),
+	GATE(CLK_GOUT_HSI2_UFS_EMBD_I_ACLK,
+	     "gout_hsi2_ufs_embd_i_aclk", "mout_hsi2_bus_user",
+	     CLK_CON_GAT_GOUT_BLK_HSI2_UID_UFS_EMBD_IPCLKPORT_I_ACLK,
+	     21, 0, 0),
+	GATE(CLK_GOUT_HSI2_UFS_EMBD_I_CLK_UNIPRO,
+	     "gout_hsi2_ufs_embd_i_clk_unipro", "mout_hsi2_ufs_embd_user",
+	     CLK_CON_GAT_GOUT_BLK_HSI2_UID_UFS_EMBD_IPCLKPORT_I_CLK_UNIPRO,
+	     21, 0, 0),
+	GATE(CLK_GOUT_HSI2_UFS_EMBD_I_FMP_CLK,
+	     "gout_hsi2_ufs_embd_i_fmp_clk", "mout_hsi2_bus_user",
+	     CLK_CON_GAT_GOUT_BLK_HSI2_UID_UFS_EMBD_IPCLKPORT_I_FMP_CLK,
+	     21, 0, 0),
+	/* TODO: should have a driver for this */
+	GATE(CLK_GOUT_HSI2_XIU_D_HSI2_ACLK,
+	     "gout_hsi2_xiu_d_hsi2_aclk", "mout_hsi2_bus_user",
+	     CLK_CON_GAT_GOUT_BLK_HSI2_UID_XIU_D_HSI2_IPCLKPORT_ACLK,
+	     21, CLK_IGNORE_UNUSED, 0),
+	/* TODO: should have a driver for this */
+	GATE(CLK_GOUT_HSI2_XIU_P_HSI2_ACLK,
+	     "gout_hsi2_xiu_p_hsi2_aclk", "mout_hsi2_bus_user",
+	     CLK_CON_GAT_GOUT_BLK_HSI2_UID_XIU_P_HSI2_IPCLKPORT_ACLK,
+	     21, CLK_IGNORE_UNUSED, 0),
+};
+
+static const struct samsung_cmu_info hsi2_cmu_info __initconst = {
+	.mux_clks		= hsi2_mux_clks,
+	.nr_mux_clks		= ARRAY_SIZE(hsi2_mux_clks),
+	.gate_clks		= hsi2_gate_clks,
+	.nr_gate_clks		= ARRAY_SIZE(hsi2_gate_clks),
+	.nr_clk_ids		= CLKS_NR_HSI2,
+	.clk_regs		= cmu_hsi2_clk_regs,
+	.nr_clk_regs		= ARRAY_SIZE(cmu_hsi2_clk_regs),
+	.clk_name		= "bus",
+};
+
 /* ---- CMU_MISC ------------------------------------------------------------ */
 
 /* Register Offset definitions for CMU_MISC (0x10010000) */
@@ -3426,13 +3930,15 @@ static const struct of_device_id gs101_cmu_of_match[] = {
 	{
 		.compatible = "google,gs101-cmu-apm",
 		.data = &apm_cmu_info,
+	}, {
+		.compatible = "google,gs101-cmu-hsi2",
+		.data = &hsi2_cmu_info,
 	}, {
 		.compatible = "google,gs101-cmu-peric0",
 		.data = &peric0_cmu_info,
 	}, {
 		.compatible = "google,gs101-cmu-peric1",
 		.data = &peric1_cmu_info,
-	}, {
 	},
 };
 
-- 
2.44.0.769.g3c40516874-goog


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
