Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DF03AFA3741
	for <linux-phy@archiver.kernel.org>; Mon, 24 Oct 2022 10:07:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rUPmcfuIjdmeFRnoN3syp4iUKnXKbK0XwmvyX8W3QLg=; b=nov6/Ixua5raDS
	1Wc3gK57hqli+43LnT2hmpJVO2JAhD/qzRYWNW5PDcXDKHHcO7J4T9kcUDepbiA5t3hyXPz7ZGQuc
	cmTrLhDjZKVj2S11DQkXW6cfQOQjzM172SdaMsPNIgUEH+k+1LJSa843x5DKNyolkoIsUZeAiTcKJ
	0Bh31wOhOj+Sq5Try6IozT8X4U9NMv5fdHchiPK1vk8ixH2iej/fSqzPXBITT1Nr0+0DUqLK2tCU4
	Pxd/CUrgtsuiq+/hlgJejzra0fi7/Bru24oiiuDdgT0t6m0Mk5H2ludGqyrUcfqUBA3ULRg/Lg7T4
	4sfKTo54IERWYUfQh6Ew==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1omuMU-000cEY-9P; Mon, 24 Oct 2022 10:07:14 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1omuMM-000c7b-Ui
	for linux-phy@lists.infradead.org; Mon, 24 Oct 2022 10:07:10 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 13AD0611D6;
	Mon, 24 Oct 2022 10:07:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B2DFCC4FEB5;
	Mon, 24 Oct 2022 10:07:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666606023;
	bh=Tm4gmSInyHHH6+chy2xagbTkIvb1pK5cY/1WuEhyaH8=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=TJAtkfLhiUdBvonF1zrurKl0vzN8LUXwdtbm0iFYw40NkNAewds8gGTeQjaKLmErG
	 /Z2tBxodiExjto/QPHO7reX4OGgQmdYGSYTgnGihDodxotmVp6u8UmTirSLtEt0vY9
	 4SKzlj/LcTEBJjw8KTAUwLH9G5H07KvKkG7ZNmK6tOo3zatrE5CHJhuZ3k+sBm4R3z
	 YCEftXnoWRuxCmZEhd6Zlb3Dk6HmaUS8ZKZq2u/NL1druWk4tnKPvR2BiXZP1hM0pa
	 62GqgB1Q3CfyGtGUeBUnxEK+mdGOVB4fbwqaW0LZ2uj7lIABVRyt1xseSvFf7XZUNb
	 eicQwEgrym4rw==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan+linaro@kernel.org>)
	id 1omuM3-0005MV-BS; Mon, 24 Oct 2022 12:06:47 +0200
From: Johan Hovold <johan+linaro@kernel.org>
To: Vinod Koul <vkoul@kernel.org>
Cc: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@somainline.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Johan Hovold <johan+linaro@kernel.org>
Subject: [PATCH 08/13] phy: qcom-qmp-usb: rename PHY ops structure
Date: Mon, 24 Oct 2022 12:06:27 +0200
Message-Id: <20221024100632.20549-9-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <20221024100632.20549-1-johan+linaro@kernel.org>
References: <20221024100632.20549-1-johan+linaro@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221024_030707_082599_ACAE8FFA 
X-CRM114-Status: GOOD (  11.96  )
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

Rename the PHY operation structure so that it has a "phy_ops" suffix and
move it next to the implementation.

Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-usb.c | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-usb.c b/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
index 2e603831e45e..4a7b961d2965 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
@@ -2149,6 +2149,13 @@ static int qmp_usb_set_mode(struct phy *phy, enum phy_mode mode, int submode)
 	return 0;
 }
 
+static const struct phy_ops qmp_usb_phy_ops = {
+	.init		= qmp_usb_enable,
+	.exit		= qmp_usb_disable,
+	.set_mode	= qmp_usb_set_mode,
+	.owner		= THIS_MODULE,
+};
+
 static void qmp_usb_enable_autonomous_mode(struct qmp_usb *qmp)
 {
 	const struct qmp_phy_cfg *cfg = qmp->cfg;
@@ -2366,13 +2373,6 @@ static int phy_pipe_clk_register(struct qmp_usb *qmp, struct device_node *np)
 	return devm_add_action_or_reset(qmp->dev, phy_clk_release_provider, np);
 }
 
-static const struct phy_ops qmp_usb_ops = {
-	.init		= qmp_usb_enable,
-	.exit		= qmp_usb_disable,
-	.set_mode	= qmp_usb_set_mode,
-	.owner		= THIS_MODULE,
-};
-
 static void __iomem *qmp_usb_iomap(struct device *dev, struct device_node *np,
 					int index, bool exclusive)
 {
@@ -2451,7 +2451,7 @@ static int qmp_usb_create(struct qmp_usb *qmp, struct device_node *np)
 				     "failed to get pipe clock\n");
 	}
 
-	generic_phy = devm_phy_create(dev, np, &qmp_usb_ops);
+	generic_phy = devm_phy_create(dev, np, &qmp_usb_phy_ops);
 	if (IS_ERR(generic_phy)) {
 		ret = PTR_ERR(generic_phy);
 		dev_err(dev, "failed to create PHY: %d\n", ret);
-- 
2.37.3


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
