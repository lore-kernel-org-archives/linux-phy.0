Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 414DCC79FB2
	for <linux-phy@archiver.kernel.org>; Tue,  8 Sep 2026 09:41:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:
	Message-Id:MIME-Version:Subject:Date:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Zzo1UxeCSAs1K/d4aiAa61TqHGWUd8VUeyQ9Uxvgv3g=; b=lyTzm+zE75zfki
	ulA+JNSwGRBvLhIzgKQGj1spG342bqIcciEiBCGmXpdUqbeZUR+6/ZBM0Jrx/YnShYTukuBgkVUew
	VNC9kM3z1/kUjRIBgL/wXMDQVvjZMpd8GHG0wfoP+BCIgt08Yk1hHWJGDXg51MD+7A4fzj+QBaDoF
	gRfLR7zhVW/OziGzKsYi9UBuTu4BOSSCqJIp+pIPIa4kns8k1e55vs3C+YT/Tx4fJNF52dib5QCIW
	ThNTsWFNHZcpqTGjaDzlmakcivyRztYf2U+w/TbzyzwPbz+pcGicKnIA0w/w1/fNCynN20kQC0Dzv
	BTbFAbBwiBNxH/XfqKQw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3sKz-00000008dtJ-3YEW;
	Tue, 08 Sep 2026 09:41:57 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3sKy-00000008drG-2d7S
	for linux-phy@lists.infradead.org;
	Tue, 08 Sep 2026 09:41:56 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 49F3743A16;
	Tue,  8 Sep 2026 09:41:56 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 274FFC2BCB8;
	Tue,  8 Sep 2026 09:41:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788860516;
	bh=p5YHlkuIPNYbVBUZsZU/5N8TqxxBbe/5VAHVVT4DypY=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
	b=ceP0H/5ZseVQ9i1DbhlTaqkNT7XcFboHICIpULEle+Ut3oRL9ZzAlYEtQzSo2cZRV
	 xdZNcY89CGw/jWkHsL1DmECx6thI1O7Igh8rD/C+h3Iyxy4a9WcWxyHOHk2WQvNpEd
	 I70tequqozLzT8FpBtQJa0GiskLBqlTTLb1xLGk+pqakayaB/isgq7vDMBBdrwO/rc
	 LMCF/0Vbs3ze6gKAL5SquwFEH5keD+zB6jgeiPStJEQK/hxNirfuwczP72f8FrYEy6
	 vvFKDJmYK6LBJx0A3yh6FCTqBLkbasr1NCXBL23uxK8qoVAVmOcyN0IdTSYJLXecLR
	 1gpIO/1IqI/6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 14F21C79FA1;
	Tue,  8 Sep 2026 09:41:56 +0000 (UTC)
From: George Moussalem via B4 Relay <devnull+george.moussalem.outlook.com@kernel.org>
Date: Tue, 08 Sep 2026 13:40:59 +0400
Subject: [PATCH v4 06/13] phy: qualcomm: qcom-uniphy-pcie-usb3-28lp: Use
 bulk reset_control API
MIME-Version: 1.0
Message-Id: <20260908-ipq5018-usb3-v4-6-b789702f0695@outlook.com>
References: <20260908-ipq5018-usb3-v4-0-b789702f0695@outlook.com>
In-Reply-To: <20260908-ipq5018-usb3-v4-0-b789702f0695@outlook.com>
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
 Manivannan Sadhasivam <mani@kernel.org>, 
 Varadarajan Narayanan <quic_varada@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-usb@vger.kernel.org, Stanislaw Pal <kuncy7@gmail.com>, 
 Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>, 
 George Moussalem <george.moussalem@outlook.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1788860513; l=3371;
 i=george.moussalem@outlook.com; s=20250321; h=from:subject:message-id;
 bh=h4fXL1CdGlHbqoFCN4A+EVtPpqzGGhM/+y8nDodBIX8=;
 b=0gViUe/rFCZsihT03kxd49W+sZAmyHentB4B+G0DYoO0fScTNT1Ue63HKWRrtxY2DzxJ/M0wm
 qzmjA7TtuJpCljjApss3yfTytaITqfvT6oXYNX1U8T9mxdCcsP/9jUr
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

Tested-by: Stanislaw Pal <kuncy7@gmail.com>
Reviewed-by: Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>
Signed-off-by: George Moussalem <george.moussalem@outlook.com>
---
 .../phy/qualcomm/phy-qcom-uniphy-pcie-usb3-28lp.c  | 31 ++++++++++++++++------
 1 file changed, 23 insertions(+), 8 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-uniphy-pcie-usb3-28lp.c b/drivers/phy/qualcomm/phy-qcom-uniphy-pcie-usb3-28lp.c
index c12de5549652..0a50eb44c0ce 100644
--- a/drivers/phy/qualcomm/phy-qcom-uniphy-pcie-usb3-28lp.c
+++ b/drivers/phy/qualcomm/phy-qcom-uniphy-pcie-usb3-28lp.c
@@ -67,7 +67,8 @@ struct qcom_uniphy {
 	const struct qcom_uniphy_data *data;
 	struct clk_bulk_data *clks;
 	int num_clks;
-	struct reset_control *resets;
+	struct reset_control_bulk_data *resets;
+	int num_resets;
 	void __iomem *base;
 	int lanes;
 };
@@ -136,7 +137,7 @@ static int qcom_uniphy_pcie_power_off(struct phy *x)
 
 	clk_bulk_disable_unprepare(phy->num_clks, phy->clks);
 
-	return reset_control_assert(phy->resets);
+	return reset_control_bulk_assert(phy->num_resets, phy->resets);
 }
 
 static int qcom_uniphy_pcie_power_on(struct phy *x)
@@ -144,7 +145,7 @@ static int qcom_uniphy_pcie_power_on(struct phy *x)
 	struct qcom_uniphy *phy = phy_get_drvdata(x);
 	int ret;
 
-	ret = reset_control_assert(phy->resets);
+	ret = reset_control_bulk_assert(phy->num_resets, phy->resets);
 	if (ret) {
 		dev_err(phy->dev, "reset assert failed (%d)\n", ret);
 		return ret;
@@ -152,7 +153,7 @@ static int qcom_uniphy_pcie_power_on(struct phy *x)
 
 	usleep_range(RST_ASSERT_DELAY_MIN_US, RST_ASSERT_DELAY_MAX_US);
 
-	ret = reset_control_deassert(phy->resets);
+	ret = reset_control_bulk_deassert(phy->num_resets, phy->resets);
 	if (ret) {
 		dev_err(phy->dev, "reset deassert failed (%d)\n", ret);
 		return ret;
@@ -176,19 +177,33 @@ static int qcom_uniphy_pcie_power_on(struct phy *x)
 static inline int qcom_uniphy_pcie_usb3_get_resources(struct platform_device *pdev,
 						      struct qcom_uniphy *phy)
 {
+	struct device *dev = phy->dev;
 	struct resource *res;
+	int i, count, ret;
 
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
