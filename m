Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2BEBBECAAA1
	for <linux-phy@archiver.kernel.org>; Fri, 28 Oct 2022 16:05:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zb7P8tGfPypzS6Nsx6ypaTa2lP2qyXu6hYpGVVbpFYU=; b=QpRGWI1UgWRP8f
	s+K6hv+MrQf6IaC+D7QSQEe41qZ38CrYKSTK7ywbqt8tk1DAO+eKgD+DSzR5phxObf29wEGZGPAQW
	4lAKY51uW/rcabko5GrUbgOoD4lnx1LnBX4BhRfKoO8kie9z31US+rVg7HAS+r/NtCYZld05T0Y8O
	/Qom3G5BppreWH1XtbHSAP1bcofr+1F8qwoCdTjaeWCLIATTM7I5/JX/SGuO7uYdmcCxjzPszmv3U
	d+tB3clWCIa8fBbQeDfnM6wIcRCNZLKqQ5iObtmsYxEcX1SXGe2iJyJdbL9kxorsceiKXAOjhUKhK
	e0CRH6WDlzOFmcO0ICxw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ooRrD-000lgt-C8; Fri, 28 Oct 2022 16:05:19 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ooRr6-000laU-H1
	for linux-phy@lists.infradead.org; Fri, 28 Oct 2022 16:05:14 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id E9AAA62958;
	Fri, 28 Oct 2022 16:05:11 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D8CB0C43152;
	Fri, 28 Oct 2022 16:05:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666973109;
	bh=ILxmO+luaNlHEkk+yA0QURG+N4WAyWonqKyVeubJWJQ=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=bt5hFKcD0/2pQYzaz4lA0nW6jIdjPHhuAL3o8urKi/4FnEbLNiupwxcjKhi9usQmW
	 E+yFrK3QLAowMQc02oTTSyP13TunQh/gbpkiaXn3FY06MDHT3Zd5f709+YV65Ha4ZR
	 cWavQW3KvIKWmyuBqLVD4k3nxL57eVfGr0rd5ypH0T4QV9Tuj3soMtptxRp6oojCym
	 JgAr23lfrfHSxTbfrI7FvpFSgHCFBfdfAuVzrd2e5XGHoeBv5Dg87NZkVfHrE+PXdt
	 ZtLyRD1JSajRZY2bpYfCJMkZKgRXZplRCqDVr+ww+0Ob7KnHTPTO53HOedxf1EQ73c
	 TdLhrvDg8/D9g==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan+linaro@kernel.org>)
	id 1ooRqq-00071m-DM; Fri, 28 Oct 2022 18:04:56 +0200
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
Subject: [PATCH RESEND v2 08/13] phy: qcom-qmp-usb: rename PHY ops structure
Date: Fri, 28 Oct 2022 18:04:30 +0200
Message-Id: <20221028160435.26948-9-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <20221028160435.26948-1-johan+linaro@kernel.org>
References: <20221028160435.26948-1-johan+linaro@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221028_090512_623494_E946D864 
X-CRM114-Status: GOOD (  12.00  )
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

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
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
