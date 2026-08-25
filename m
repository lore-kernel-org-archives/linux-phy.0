Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 727E8C61DC7
	for <linux-phy@archiver.kernel.org>; Tue, 25 Aug 2026 12:37:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:
	Message-Id:MIME-Version:Subject:Date:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Wg2ttAkbYyb+3aYRvWJaxpSL6KLg5sB9NJp7YEwgttI=; b=YIQW1K3SsGZolg
	q7ifgUWYRhbcDxdOfwh1+s8erIlkkP6B6XvYheRam0nAB0xIuOflVjfs6xxHPTuhp9gJnsM3ZgqB+
	g2y6aze5i2MLG11XWgf8qEz3jvbQWpBcNVdVvHCOYV4rNzCqwAHMZTTN1dCKe+JBWQ1XXnUU1B4zH
	7U6W4g1KRO0WTYBVKQ/+4NlvSmZUDOM1HHEJViZYWrtbcVjs48jSDZNrN0IBArWy43caM5I98aey1
	optN5T4jfnEdywkAvZJqkXExvN1DWUxGR0AX0NtchBkHnUu6KSWwh3fDDLJsOGSjRH5OOIf52N6hO
	B4HF9UAsMq9/zFR9iaQQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wyqPH-00000000n8q-47gh;
	Tue, 25 Aug 2026 12:37:35 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wyqPG-00000000n6o-16Ho
	for linux-phy@lists.infradead.org;
	Tue, 25 Aug 2026 12:37:34 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 9A3B544F37;
	Tue, 25 Aug 2026 12:37:33 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 3A951C4AF19;
	Tue, 25 Aug 2026 12:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787661453;
	bh=DXJ3FaUBZP/5e281lLY7Fr6FjXmIpllf4hkwp9n1ICY=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
	b=GDiaVbM0guP4+2OqWViFDhpWgV4oBf+rIDY1g/68d6sDLPeJB0m9bbct/NcvstwkK
	 wQOh2GZWUDU4cHNifB1Y3+Ta1uAE9tdz6mFvYvGQ4MIXhJzQ344hfyDu7jOyTVh26o
	 epfOPhtbINdFxfE3bg8RHWfPwAVkxQKgUNeft7DX2hX69kVurZCZvLjJd9DYYsB2o6
	 /x1v5t+nLHZ4hu9EIwUe1X3QvcmdplR3amJSbR3XmfL57tuW0+GutE7J9D7KaGY2Vd
	 CfnQQRmHhq+LqxNTlP+3HC2CCRkfdRwJvje903gtFMMsIcIr3QWd3KLaevRX4UwcmR
	 ccd0lJ9COTimA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 24FD0C61DC7;
	Tue, 25 Aug 2026 12:37:33 +0000 (UTC)
From: George Moussalem via B4 Relay <devnull+george.moussalem.outlook.com@kernel.org>
Date: Tue, 25 Aug 2026 16:37:23 +0400
Subject: [PATCH v3 06/12] phy: qualcomm: qcom-uniphy-pcie-usb3-28lp:
 Improve error handling in power_on
MIME-Version: 1.0
Message-Id: <20260825-ipq5018-usb3-v3-6-39be0955a6aa@outlook.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1787661450; l=2016;
 i=george.moussalem@outlook.com; s=20250321; h=from:subject:message-id;
 bh=7wBK4ADEhWBDqDww6gxmOEnN2/BlTdDKW1nGKMr0m+o=;
 b=C/MYQL7TG7DA7JcFLXibus27QkTlcnmxhzu7Vca3khVoAlzNRyJCTtlSZizM71/jTyiIZbUpo
 j5fKhLDbh4cDHNCctklnY94gRgK3ukpF3JbMkogPcOlKt+EED1pT4yo
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

When the PHY fails the enable clocks, it leaves the PHY out of reset.
Fix this by asserting the reset before returning the error.

In addition, language correct the error messages.

Signed-off-by: George Moussalem <george.moussalem@outlook.com>
---
 drivers/phy/qualcomm/phy-qcom-uniphy-pcie-usb3-28lp.c | 13 +++++++++----
 1 file changed, 9 insertions(+), 4 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-uniphy-pcie-usb3-28lp.c b/drivers/phy/qualcomm/phy-qcom-uniphy-pcie-usb3-28lp.c
index 671bb805057f..d25ae9d8b9e7 100644
--- a/drivers/phy/qualcomm/phy-qcom-uniphy-pcie-usb3-28lp.c
+++ b/drivers/phy/qualcomm/phy-qcom-uniphy-pcie-usb3-28lp.c
@@ -144,7 +144,7 @@ static int qcom_uniphy_pcie_usb3_power_on(struct phy *x)
 
 	ret = reset_control_bulk_assert(phy->num_resets, phy->resets);
 	if (ret) {
-		dev_err(phy->dev, "reset assert failed (%d)\n", ret);
+		dev_err(phy->dev, "failed to assert reset: %d\n", ret);
 		return ret;
 	}
 
@@ -152,7 +152,7 @@ static int qcom_uniphy_pcie_usb3_power_on(struct phy *x)
 
 	ret = reset_control_bulk_deassert(phy->num_resets, phy->resets);
 	if (ret) {
-		dev_err(phy->dev, "reset deassert failed (%d)\n", ret);
+		dev_err(phy->dev, "failed to deassert reset: %d\n", ret);
 		return ret;
 	}
 
@@ -160,8 +160,8 @@ static int qcom_uniphy_pcie_usb3_power_on(struct phy *x)
 
 	ret = clk_bulk_prepare_enable(phy->num_clks, phy->clks);
 	if (ret) {
-		dev_err(phy->dev, "clk prepare and enable failed %d\n", ret);
-		return ret;
+		dev_err(phy->dev, "failed to enable clocks: %d\n", ret);
+		goto err_assert_resets;
 	}
 
 	usleep_range(CLK_EN_DELAY_MIN_US, CLK_EN_DELAY_MAX_US);
@@ -169,6 +169,11 @@ static int qcom_uniphy_pcie_usb3_power_on(struct phy *x)
 	qcom_uniphy_pcie_usb3_init(phy);
 
 	return 0;
+
+err_assert_resets:
+	reset_control_bulk_assert(phy->num_resets, phy->resets);
+
+	return ret;
 }
 
 static inline int qcom_uniphy_pcie_usb3_get_resources(struct platform_device *pdev,

-- 
2.53.0



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
