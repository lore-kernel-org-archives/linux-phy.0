Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2EF83C27C4F
	for <linux-phy@archiver.kernel.org>; Sat, 29 Jun 2024 17:52:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rnhrLmzgj7WHReEK1T5gR8Qe8TsXr/1IcSSx5bpQ1qo=; b=olZGcICRc+P9iw
	pQknW0CBQyoxqLnmgFy8CTNXelR3qaPKA66qF0JoccQqtrug1b/7KDQfoRc654oz1CiuLtkrDLMbE
	PDd+U0KSUVLy3plaV0AakJdELb/BatVS1ycw40iria7jrcHBCoD0G0LvHosEsukFeO5aKtTTMsqzd
	ra2/j17zm4Se/bX9mBmSOJx8pAMf5UTaewPFG0f5r6Wx1oqFGAiFtVKcLj3VtcT360HziMxrSsRAH
	cg94/u5TuoGO0PxAKL24eTEEk7kfdQ2Pp0KSbbDa1gQpipDWtmp7q0d2VKC5dxTYI8qT/BEbPkv7a
	SZxMEGKMdWCan/lKAMGA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sNcFq-0000000Gk8K-3MSI;
	Sat, 29 Jun 2024 17:52:54 +0000
Received: from sin.source.kernel.org ([145.40.73.55])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sNcFP-0000000Gk35-11l8;
	Sat, 29 Jun 2024 17:52:29 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 993E4CE1838;
	Sat, 29 Jun 2024 17:52:21 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 81F35C2BBFC;
	Sat, 29 Jun 2024 17:52:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719683540;
	bh=j4MLfR2m8g6WYEp5qi2r2g0cT9THXcets+OgQX0XZCA=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=LArRIdi8JeqjXSfmGUUy4PMdnwoH9p0aQnvi+vMeaiebau8/JyFWVANbj6YCRU10G
	 lUlvvZFQxaCJMNv0I+kCs9U99OFHS7TvJSv+ntQB1BUmZkuhQDORfadu8sr1478WTX
	 rJEdnAdAgcxYambt+ZYqQFmGwQcIThXvOy8GF92dR3tCih0a0I4IoI6TkjCgGNwM7C
	 gvgGz2XP7NdP9fADWH8mTecy1uJi4YhQ2ZU0ao3NMCZF/2i50CWFh3LaXCPEH6bQxJ
	 4EvkAcdO+uZjlhD/JgfvO8SE2AL6nvXgvPQZtf5n66ndxjSh/1r6i9G+UHUFFXHJvJ
	 s3RYGyZOj0u4g==
From: Lorenzo Bianconi <lorenzo@kernel.org>
To: linux-phy@lists.infradead.org
Cc: vkoul@kernel.org,
	kishon@kernel.org,
	lorenzo.bianconi83@gmail.com,
	conor@kernel.org,
	linux-arm-kernel@lists.infradead.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	nbd@nbd.name,
	john@phrozen.org,
	dd@embedd.com,
	catalin.marinas@arm.com,
	will@kernel.org,
	upstream@airoha.com,
	angelogioacchino.delregno@collabora.com
Subject: [PATCH 2/2] phy: airoha: Add dtime and Rx AEQ IO registers
Date: Sat, 29 Jun 2024 19:51:49 +0200
Message-ID: <edf3b28926177166c65256604d69f2f576cb6fb3.1719682943.git.lorenzo@kernel.org>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <cover.1719682943.git.lorenzo@kernel.org>
References: <cover.1719682943.git.lorenzo@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240629_105227_677193_1F01DCC2 
X-CRM114-Status: GOOD (  11.92  )
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

Introduce Tx-Rx detection Time and Rx AEQ training mappings to
phy-airoha-pcie driver. This is a preliminary patch to introduce PCIe
support to En7581 SoC through the mediatek-gen3 PCIe driver.
This change is not introducing any backward compatibility issue since
the EN7581 dts is not upstream yet.

Signed-off-by: Lorenzo Bianconi <lorenzo@kernel.org>
---
 drivers/phy/phy-airoha-pcie-regs.h | 17 +++++++++++++
 drivers/phy/phy-airoha-pcie.c      | 38 ++++++++++++++++++++++++++++++
 2 files changed, 55 insertions(+)

diff --git a/drivers/phy/phy-airoha-pcie-regs.h b/drivers/phy/phy-airoha-pcie-regs.h
index 0c6496b89a71..bb1f679ca1df 100644
--- a/drivers/phy/phy-airoha-pcie-regs.h
+++ b/drivers/phy/phy-airoha-pcie-regs.h
@@ -474,4 +474,21 @@
 #define REG_PCIE_PMA_DIG_RESERVE_27		0x0908
 #define REG_PCIE_PMA_DIG_RESERVE_30		0x0914
 
+/* DTIME */
+#define REG_PCIE_PEXTP_DIG_GLB44		0x00
+#define PCIE_XTP_RXDET_VCM_OFF_STB_T_SEL	GENMASK(7, 0)
+#define PCIE_XTP_RXDET_EN_STB_T_SEL		GENMASK(15, 8)
+#define PCIE_XTP_RXDET_FINISH_STB_T_SEL		GENMASK(23, 16)
+#define PCIE_XTP_TXPD_TX_DATA_EN_DLY		GENMASK(27, 24)
+#define PCIE_XTP_TXPD_RXDET_DONE_CDT		BIT(28)
+#define PCIE_XTP_RXDET_LATCH_STB_T_SEL		GENMASK(31, 29)
+
+/* RX AEQ */
+#define REG_PCIE_PEXTP_DIG_LN_RX30_P0		0x0000
+#define PCIE_XTP_LN_RX_PDOWN_L1P2_EXIT_WAIT	GENMASK(7, 0)
+#define PCIE_XTP_LN_RX_PDOWN_T2RLB_DIG_EN	BIT(8)
+#define PCIE_XTP_LN_RX_PDOWN_E0_AEQEN_WAIT	GENMASK(31, 16)
+
+#define REG_PCIE_PEXTP_DIG_LN_RX30_P1		0x0100
+
 #endif /* _PHY_AIROHA_PCIE_H */
diff --git a/drivers/phy/phy-airoha-pcie.c b/drivers/phy/phy-airoha-pcie.c
index bba382badb2e..bd3edaa986c8 100644
--- a/drivers/phy/phy-airoha-pcie.c
+++ b/drivers/phy/phy-airoha-pcie.c
@@ -31,6 +31,9 @@ enum airoha_pcie_port_gen {
  * @csr_2l: Analogic lane IO mapped register base address
  * @pma0: IO mapped register base address of PMA0-PCIe
  * @pma1: IO mapped register base address of PMA1-PCIe
+ * @p0_xr_dtime: IO mapped register base address of port0 Tx-Rx detection time
+ * @p1_xr_dtime: IO mapped register base address of port1 Tx-Rx detection time
+ * @rx_aeq: IO mapped register base address of Rx AEQ training
  */
 struct airoha_pcie_phy {
 	struct device *dev;
@@ -38,6 +41,9 @@ struct airoha_pcie_phy {
 	void __iomem *csr_2l;
 	void __iomem *pma0;
 	void __iomem *pma1;
+	void __iomem *p0_xr_dtime;
+	void __iomem *p1_xr_dtime;
+	void __iomem *rx_aeq;
 };
 
 static void airoha_phy_clear_bits(void __iomem *reg, u32 mask)
@@ -1101,6 +1107,21 @@ static void airoha_pcie_phy_load_kflow(struct airoha_pcie_phy *pcie_phy)
 static int airoha_pcie_phy_init(struct phy *phy)
 {
 	struct airoha_pcie_phy *pcie_phy = phy_get_drvdata(phy);
+	u32 val;
+
+	/* Setup Tx-Rx detection time */
+	val = FIELD_PREP(PCIE_XTP_RXDET_VCM_OFF_STB_T_SEL, 0x33) |
+	      FIELD_PREP(PCIE_XTP_RXDET_EN_STB_T_SEL, 0x1) |
+	      FIELD_PREP(PCIE_XTP_RXDET_FINISH_STB_T_SEL, 0x2) |
+	      FIELD_PREP(PCIE_XTP_TXPD_TX_DATA_EN_DLY, 0x3) |
+	      FIELD_PREP(PCIE_XTP_RXDET_LATCH_STB_T_SEL, 0x1);
+	writel(val, pcie_phy->p0_xr_dtime + REG_PCIE_PEXTP_DIG_GLB44);
+	writel(val, pcie_phy->p1_xr_dtime + REG_PCIE_PEXTP_DIG_GLB44);
+	/* Setup Rx AEQ training time */
+	val = FIELD_PREP(PCIE_XTP_LN_RX_PDOWN_L1P2_EXIT_WAIT, 0x32) |
+	      FIELD_PREP(PCIE_XTP_LN_RX_PDOWN_E0_AEQEN_WAIT, 0x5050);
+	writel(val, pcie_phy->rx_aeq + REG_PCIE_PEXTP_DIG_LN_RX30_P0);
+	writel(val, pcie_phy->rx_aeq + REG_PCIE_PEXTP_DIG_LN_RX30_P1);
 
 	/* enable load FLL-K flow */
 	airoha_phy_pma0_set_bits(pcie_phy, REG_PCIE_PMA_DIG_RESERVE_14,
@@ -1217,6 +1238,23 @@ static int airoha_pcie_phy_probe(struct platform_device *pdev)
 		return dev_err_probe(dev, PTR_ERR(pcie_phy->phy),
 				     "Failed to create PCIe phy\n");
 
+	pcie_phy->p0_xr_dtime =
+		devm_platform_ioremap_resource_byname(pdev, "p0-xr-dtime");
+	if (IS_ERR(pcie_phy->p0_xr_dtime))
+		return dev_err_probe(dev, PTR_ERR(pcie_phy->p0_xr_dtime),
+				     "Failed to map P0 Tx-Rx dtime base\n");
+
+	pcie_phy->p1_xr_dtime =
+		devm_platform_ioremap_resource_byname(pdev, "p1-xr-dtime");
+	if (IS_ERR(pcie_phy->p1_xr_dtime))
+		return dev_err_probe(dev, PTR_ERR(pcie_phy->p1_xr_dtime),
+				     "Failed to map P1 Tx-Rx dtime base\n");
+
+	pcie_phy->rx_aeq = devm_platform_ioremap_resource_byname(pdev, "rx-aeq");
+	if (IS_ERR(pcie_phy->rx_aeq))
+		return dev_err_probe(dev, PTR_ERR(pcie_phy->rx_aeq),
+				     "Failed to map Rx AEQ base\n");
+
 	pcie_phy->dev = dev;
 	phy_set_drvdata(pcie_phy->phy, pcie_phy);
 
-- 
2.45.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
