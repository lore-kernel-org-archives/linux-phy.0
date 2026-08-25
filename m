Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 40E42C61DCA
	for <linux-phy@archiver.kernel.org>; Tue, 25 Aug 2026 12:37:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:
	Message-Id:MIME-Version:Subject:Date:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sEP5TKCqlk0wIUTcbLstjiIL87flDgBtKaytt0sDELs=; b=Y1z6sTN8DWf16r
	+YtSUD+ORP/4eo0sEw5POhvauNqMDBSicNhj5rb5ad9ylxx94SPMxlIhsKMb0Ip/BIO+RaoVCZ+TK
	aRB7sS4F0lzwzHHjjoy4qA/FOANvPUGlmAn+/aWbn7/gNcCOZ7qGgyVfPZvGOhS0EDDHo3ONlCI5l
	a9LcYKG86F9GEqEPlpzK9hI6vLmyljREbVcrJdQboHXIukazqiLzzO4K/4E6grTOZNc0+55llEeV5
	aajLfw3HhC0bXvS/pFn50mRZOaZM7/Bl3b1R7Safg7HAQ9ThUCrZKSeRMd/bESUt5HmFNgWCZKAzp
	hWHlaHCriNQfM5z+j/GA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wyqPH-00000000n8f-3szf;
	Tue, 25 Aug 2026 12:37:35 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wyqPG-00000000n6m-0ym9
	for linux-phy@lists.infradead.org;
	Tue, 25 Aug 2026 12:37:34 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 8FCFA44EE8;
	Tue, 25 Aug 2026 12:37:33 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 2B74CC4AF11;
	Tue, 25 Aug 2026 12:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787661453;
	bh=lEEFngH5rr9uiXtVPH+VwxrwmWCWPk2B3xvVhAv/bd0=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
	b=OreHj6XpTBCm/am0GELQTt1RvGWOFQwERdnRdALozc4CWBPqF266E4Advf1Gwn28E
	 swFQ6dYCXeZwzLUsdurS9+098vVmHWHC/bU1CfMNQwVlmXXo9vVpm8bpazKkMSghMa
	 jMIkMF/NmoWZKfHEG9Cd+fz/3KLEb5cLM7nFZ5IPqJvV3wAFeWZaC2q6Sq8MOT2aiu
	 mfO8wi8hJbMrL+0wXBIKvcvcRKjS4WBKtjjbiJlA0x+qL5zyGNSmcB6HiF6S8e4l/V
	 tr4aN7Grknq50AqfzBQZxBwcKb8zmiyoAEwl9TCLx3hOLsXnSHEaIH/bbM1Kk22wMn
	 ZERMO6m8tORuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 15506C61DBE;
	Tue, 25 Aug 2026 12:37:33 +0000 (UTC)
From: George Moussalem via B4 Relay <devnull+george.moussalem.outlook.com@kernel.org>
Date: Tue, 25 Aug 2026 16:37:22 +0400
Subject: [PATCH v3 05/12] phy: qualcomm: qcom-uniphy-pcie-usb3-28lp: Use
 bulk reset_control API
MIME-Version: 1.0
Message-Id: <20260825-ipq5018-usb3-v3-5-39be0955a6aa@outlook.com>
References: <20260825-ipq5018-usb3-v3-0-39be0955a6aa@outlook.com>
In-Reply-To: <20260825-ipq5018-usb3-v3-0-39be0955a6aa@outlook.com>
To: Vinod Koul <vkoul@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Praveenkumar I <praveenkumar.i@oss.qualcomm.com>, 
 Philipp Zabel <p.zabel@pengutronix.de>, 
 Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>, 
 Nitheesh Sekar <quic_nsekar@quicinc.com>, 
 Wesley Cheng <quic_wcheng@quicinc.com>, 
 Manivannan Sadhasivam <mani@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-usb@vger.kernel.org, George Moussalem <george.moussalem@outlook.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1787661450; l=3269;
 i=george.moussalem@outlook.com; s=20250321; h=from:subject:message-id;
 bh=anmYpL4XdHm2CePMeEnW1kc8uD6kV9bQvtwXZhei8sQ=;
 b=J/54879naA7qYSLWrsAljr2kFOCd8PXFxuQZhTFXpXZSDCASzOr2ohHCctLia9y5e4PFreiOv
 W9jI3yXpHu2CX48WxUKgACuYEyuA5RRzsUgucw2v2HvG1k11WUEmL+L
X-Developer-Key: i=george.moussalem@outlook.com; a=ed25519;
 pk=/PuRTSI9iYiHwcc6Nrde8qF4ZDhJBlUgpHdhsIjnqIk=
X-Endpoint-Received: by B4 Relay for george.moussalem@outlook.com/20250321
 with auth_id=364
X-Original-From: George Moussalem <george.moussalem@outlook.com>
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
Reply-To: george.moussalem@outlook.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

From: George Moussalem <george.moussalem@outlook.com>

Switch to using bulk reset_control functions to prepare the driver for
managing multiple resets, acquiring reset controls by name, and
uniformly storing resets in the private data structure to enable support
for future combo PHY functionality requiring multiple resets.

Signed-off-by: George Moussalem <george.moussalem@outlook.com>
---
 .../phy/qualcomm/phy-qcom-uniphy-pcie-usb3-28lp.c  | 31 ++++++++++++++++------
 1 file changed, 23 insertions(+), 8 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-uniphy-pcie-usb3-28lp.c b/drivers/phy/qualcomm/phy-qcom-uniphy-pcie-usb3-28lp.c
index 44ab8f440b8a..671bb805057f 100644
--- a/drivers/phy/qualcomm/phy-qcom-uniphy-pcie-usb3-28lp.c
+++ b/drivers/phy/qualcomm/phy-qcom-uniphy-pcie-usb3-28lp.c
@@ -64,7 +64,8 @@ struct qcom_uniphy {
 	const struct qcom_uniphy_data *data;
 	struct clk_bulk_data *clks;
 	int num_clks;
-	struct reset_control *resets;
+	struct reset_control_bulk_data *resets;
+	int num_resets;
 	void __iomem *base;
 	int lanes;
 };
@@ -133,7 +134,7 @@ static int qcom_uniphy_pcie_usb3_power_off(struct phy *x)
 
 	clk_bulk_disable_unprepare(phy->num_clks, phy->clks);
 
-	return reset_control_assert(phy->resets);
+	return reset_control_bulk_assert(phy->num_resets, phy->resets);
 }
 
 static int qcom_uniphy_pcie_usb3_power_on(struct phy *x)
@@ -141,7 +142,7 @@ static int qcom_uniphy_pcie_usb3_power_on(struct phy *x)
 	struct qcom_uniphy *phy = phy_get_drvdata(x);
 	int ret;
 
-	ret = reset_control_assert(phy->resets);
+	ret = reset_control_bulk_assert(phy->num_resets, phy->resets);
 	if (ret) {
 		dev_err(phy->dev, "reset assert failed (%d)\n", ret);
 		return ret;
@@ -149,7 +150,7 @@ static int qcom_uniphy_pcie_usb3_power_on(struct phy *x)
 
 	usleep_range(RST_ASSERT_DELAY_MIN_US, RST_ASSERT_DELAY_MAX_US);
 
-	ret = reset_control_deassert(phy->resets);
+	ret = reset_control_bulk_deassert(phy->num_resets, phy->resets);
 	if (ret) {
 		dev_err(phy->dev, "reset deassert failed (%d)\n", ret);
 		return ret;
@@ -173,19 +174,33 @@ static int qcom_uniphy_pcie_usb3_power_on(struct phy *x)
 static inline int qcom_uniphy_pcie_usb3_get_resources(struct platform_device *pdev,
 						      struct qcom_uniphy *phy)
 {
+	struct device *dev = phy->dev;
 	struct resource *res;
+	int i, count;
 
 	phy->base = devm_platform_get_and_ioremap_resource(pdev, 0, &res);
 	if (IS_ERR(phy->base))
 		return PTR_ERR(phy->base);
 
-	phy->num_clks = devm_clk_bulk_get_all(phy->dev, &phy->clks);
+	phy->num_clks = devm_clk_bulk_get_all(dev, &phy->clks);
 	if (phy->num_clks < 0)
 		return phy->num_clks;
 
-	phy->resets = devm_reset_control_array_get_exclusive(phy->dev);
-	if (IS_ERR(phy->resets))
-		return PTR_ERR(phy->resets);
+	count = of_count_phandle_with_args(dev->of_node, "resets", "#reset-cells");
+	if (count < 0)
+		return count;
+
+	phy->resets = devm_kcalloc(dev, count, sizeof(*phy->resets), GFP_KERNEL);
+	if (!phy->resets)
+		return -ENOMEM;
+
+	for (i = 0; i < count; i++) {
+		phy->resets[i].rstc = devm_reset_control_get_exclusive_by_index(dev, i);
+		if (IS_ERR(phy->resets[i].rstc))
+			return PTR_ERR(phy->resets[i].rstc);
+	}
+
+	phy->num_resets = count;
 
 	return 0;
 }

-- 
2.53.0



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
