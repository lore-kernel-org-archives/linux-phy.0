Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DD668C4332F
	for <linux-phy@archiver.kernel.org>; Sat,  5 Nov 2022 15:02:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HjV7e6XldKfpvCzetSgsQIxNV/LIwg0F6P2sn5RqFaU=; b=wdLoyQV/ZxUE5W
	YQptOuOd+r0sMkdrcqkAhyPkOXEbvBanUhKOzDFUB8mBbxT/JWG3UaLnAxLBZwTHqSm/hZx+vsEFW
	AM2TA+Z2LEU/WduTRliN9SydV0ZZ8xKd3zfpOmaxPj1BWm8Ss3VqkgqEKQ0pKe+t/UbEGWO8vlb9W
	at6zgy+aqEYxAerKzwM8dlphntIJy+1Ae1lt8UD4W8iF7r78/Du+4kpqJiZh2Kc5hMVm45l/Y0aWU
	L+CtAHfW3cgEZ4FFrr3B1f94MfmZWX5LstlzbU3WIWvGgVHKUTVBI9RYTZpX3NjcNeFAJOGi4Q6dT
	raxJVeSPU5BqLNXy9+qw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1orKhE-006mHz-7H; Sat, 05 Nov 2022 15:02:56 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1orKhB-006mE5-BJ
	for linux-phy@lists.infradead.org; Sat, 05 Nov 2022 15:02:54 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 9F2E560B54;
	Sat,  5 Nov 2022 15:02:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 71B51C4315E;
	Sat,  5 Nov 2022 15:02:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667660570;
	bh=PpdUtPZs9MpphCIeL3UrfFdOiK5XTAbpl61pby3c3ks=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=YOi3i1c0ZRZwUnJgP67jehy8y/UJKktxUzHnRFii5q8pdRedmUMy3w3TeaRDBolC6
	 LOcgnOjDyDZMyX5fxvfU3OZCP8/lBsvIZnyqBbfxmSW/FlNZoa6OkEWQ8Q9sTW8PhC
	 xvi9/rWelxpryItEjSBwPIjYWUlSDunG+U0efFtrr0PX5YOyMoSQeJmbIa6d/j5T9d
	 na22I4bhm+1Z9djgRuzPtJhyMf8wgbz159ccT4eDCA5JQR420nEKt7ILRCacyKU/rx
	 /71YgU0w5mPeIqnx0luf41bOSOPf2U4+lAsgrgngyNfO30Q34glE6nBO29ttU5s+Vd
	 xNcpRQh7RpeOw==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan+linaro@kernel.org>)
	id 1orKgp-0005KU-64; Sat, 05 Nov 2022 16:02:31 +0100
From: Johan Hovold <johan+linaro@kernel.org>
To: Vinod Koul <vkoul@kernel.org>
Cc: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@somainline.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Johan Hovold <johan+linaro@kernel.org>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Subject: [PATCH v5 06/16] phy: qcom-qmp-pcie: rename PHY ops structure
Date: Sat,  5 Nov 2022 15:59:29 +0100
Message-Id: <20221105145939.20318-7-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.37.4
In-Reply-To: <20221105145939.20318-1-johan+linaro@kernel.org>
References: <20221105145939.20318-1-johan+linaro@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221105_080253_473517_BCF5AAE0 
X-CRM114-Status: GOOD (  11.80  )
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
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
index e30cbc94cbf6..bd946438e3c3 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
@@ -2037,6 +2037,13 @@ static int qmp_pcie_set_mode(struct phy *phy, enum phy_mode mode, int submode)
 	return 0;
 }
 
+static const struct phy_ops qmp_pcie_phy_ops = {
+	.power_on	= qmp_pcie_enable,
+	.power_off	= qmp_pcie_disable,
+	.set_mode	= qmp_pcie_set_mode,
+	.owner		= THIS_MODULE,
+};
+
 static int qmp_pcie_vreg_init(struct qmp_pcie *qmp)
 {
 	const struct qmp_phy_cfg *cfg = qmp->cfg;
@@ -2160,13 +2167,6 @@ static int phy_pipe_clk_register(struct qmp_pcie *qmp, struct device_node *np)
 	return devm_add_action_or_reset(qmp->dev, phy_clk_release_provider, np);
 }
 
-static const struct phy_ops qmp_pcie_ops = {
-	.power_on	= qmp_pcie_enable,
-	.power_off	= qmp_pcie_disable,
-	.set_mode	= qmp_pcie_set_mode,
-	.owner		= THIS_MODULE,
-};
-
 static int qmp_pcie_create(struct qmp_pcie *qmp, struct device_node *np)
 {
 	const struct qmp_phy_cfg *cfg = qmp->cfg;
@@ -2229,7 +2229,7 @@ static int qmp_pcie_create(struct qmp_pcie *qmp, struct device_node *np)
 				     "failed to get pipe clock\n");
 	}
 
-	generic_phy = devm_phy_create(dev, np, &qmp_pcie_ops);
+	generic_phy = devm_phy_create(dev, np, &qmp_pcie_phy_ops);
 	if (IS_ERR(generic_phy)) {
 		ret = PTR_ERR(generic_phy);
 		dev_err(dev, "failed to create PHY: %d\n", ret);
-- 
2.37.4


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
