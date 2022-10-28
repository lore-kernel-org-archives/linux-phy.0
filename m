Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1C0FFFA3746
	for <linux-phy@archiver.kernel.org>; Fri, 28 Oct 2022 13:44:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zb7P8tGfPypzS6Nsx6ypaTa2lP2qyXu6hYpGVVbpFYU=; b=0asZ9rfu+rEvBQ
	zLlpiBGZiV3Isfzt+6Y3KeLivF/9zmg60j9FYeDbEYOAssjFJcsCntAbk7g4/iYBpIjKFXgXd7XZE
	YEYBuBG64ZynZFgrmwSLc6EpH+3gA9gn5cnJBCusjUQRQY0kXFsCN1nMKmacYL2XKcbpZuWbN1HjT
	apHbAAv1DijUjl5JuKs3o7DEaje9Top/+ussLT61jsCyy8fR44PG9aZHIm8Dt/v/gKdh8mqst7fkW
	9PxEYKhMVUsJF1mrjkwGUdui8KrpjQrfOoS6lfOMukdHZUbcG20A8ANPLCQiTyz84vGjsgxSEW5nl
	ZeixBgzfQ+Q63Rfjfprw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ooPfF-00HQa1-DX; Fri, 28 Oct 2022 13:44:49 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ooPf9-00HQVP-Ui
	for linux-phy@lists.infradead.org; Fri, 28 Oct 2022 13:44:46 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 1AE876289F;
	Fri, 28 Oct 2022 13:44:43 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 19D3AC43163;
	Fri, 28 Oct 2022 13:44:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666964681;
	bh=ILxmO+luaNlHEkk+yA0QURG+N4WAyWonqKyVeubJWJQ=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=OcYx8KXrZNl9Y6aSkV5am2QJsAArAwoAvHOtcAAkLk6FtZb7rku24ubOq0ewTTNIF
	 UlilfuxZqCJRo6PLFXqUpnJIa/FjrDhOtXDef0vYyytsMoeNcCAMj/D+eovTU4X6Sz
	 mtuL8p+y3FOqlTN3+JbXXpjxLQVUkf0gmSxkHDlgTjws0RpeyG2czgjvcV7A6DntNh
	 BeN1k4hJ+qx9gYCgnLa9QEoJm8vVN8/XMjctksNuDs/8y4hW7zO0ZNNybn/oZbaxhA
	 GV/eR+19Oc8pblClhQz0bPgTLPBByTTSB4oDQcsfhju3AAT0xGneFxyD6vO07o2Zue
	 wXOCYiaDvMpDg==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan+linaro@kernel.org>)
	id 1ooPet-00052M-Gf; Fri, 28 Oct 2022 15:44:27 +0200
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
	linux-kernel@vger.kernel.org,
	Johan Hovold <johan+linaro@kernel.org>
Subject: [PATCH v2 08/13] phy: qcom-qmp-usb: rename PHY ops structure
Date: Fri, 28 Oct 2022 15:44:02 +0200
Message-Id: <20221028134407.19300-9-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <20221028134407.19300-1-johan+linaro@kernel.org>
References: <20221028134407.19300-1-johan+linaro@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221028_064444_063894_452F3072 
X-CRM114-Status: GOOD (  12.12  )
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
