Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2A4B1C19F28
	for <linux-phy@archiver.kernel.org>; Wed,  3 Aug 2022 12:34:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5NSe5l32YIGBwQCUKcE3RFErGSftT6A7i0NYi6/3YJA=; b=mm1Al2QflietJw
	ajUM6ECW375/Sp7ewCaAZI87GyTR5/Q/dX57CS0V+MWYFih7g8/MOL9hEJdHrDZakAuL7/VBE9Z0e
	BuykUav0gphIgix/Lh7YN3F23LD4ADWXeTDMNc1b1558cJGJfcB090BnLuTlbARoDdu/q2gC3LqN1
	TZAgCdkIfpdm971QimpAla8I31UJFQGJnA2Oncrx6TulkdpZcNHoOhfB0uMjH+jgfgL157JvSjxgX
	SmXA8qtePrLm0a+y4XFjUafTCeghH5G2Mf1wCGv9MQyXTTKtHE5rMrRiUq9QwsdSlsQhzitd/tzu9
	eSe7WYBWMv4JnlyOs99Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oJDaM-005vvD-W2; Wed, 03 Aug 2022 12:34:51 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oJDaC-005vlw-1B
	for linux-phy@lists.infradead.org; Wed, 03 Aug 2022 12:34:42 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 607EC61444;
	Wed,  3 Aug 2022 12:34:34 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C210DC433B5;
	Wed,  3 Aug 2022 12:34:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1659530073;
	bh=cjlE0FBFyWe53Ldcvjg0DL1JexEytGR7NT8J4Bje9cc=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=feZngJJTY0tNOTzjj8N2qtbNbFIcfLhpfgYzUNvQg9zG7X6Gdh/uGsNNJDrOJBWeG
	 n/q09Y68ifunJQPBxdHbde3WIipPnVO9KEpe88ey8vP5mdyYCKShJVR4GXMq6FqRy+
	 lC4MfMGTp1aTykXmSruXunqgQyasGkyTbtQqKFkWLSmFsMww4HGFkqmgaGslAVC/nv
	 wPa90AlEHY1l2vQ62S1jzXLUAzNcXoSbpzxVqjhuyvHSr1SrrkFDfqw8zvMyYUFt1a
	 FVPz9pNYjrLx/xA3+J89yvL0cYSUFN63oGciekd0y5Wi2QcFggFsfTOUFVvo7XmDbD
	 QNGfE78M+IxxA==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan+linaro@kernel.org>)
	id 1oJDaO-00028B-My; Wed, 03 Aug 2022 14:34:52 +0200
From: Johan Hovold <johan+linaro@kernel.org>
To: Vinod Koul <vkoul@kernel.org>
Cc: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <bjorn.andersson@linaro.org>,
	Konrad Dybcio <konrad.dybcio@somainline.org>,
	Kishon Vijay Abraham I <kishon@ti.com>,
	Kuogee Hsieh <quic_khsieh@quicinc.com>,
	Douglas Anderson <dianders@chromium.org>,
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Johan Hovold <johan+linaro@kernel.org>
Subject: [PATCH 1/2] phy: qcom-qmp-combo: drop regulator loads
Date: Wed,  3 Aug 2022 14:33:31 +0200
Message-Id: <20220803123332.8138-2-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220803123332.8138-1-johan+linaro@kernel.org>
References: <20220803123332.8138-1-johan+linaro@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220803_053440_424406_A2F7C08B 
X-CRM114-Status: GOOD (  16.17  )
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

Drivers should not be specifying active-mode regulator loads unless
supporting an idle mode where the load is reduced during runtime.

This effectively reverts commit 85936d4f3815 ("phy: qcom-qmp: add
regulator_set_load to dp phy").

Link: https://lore.kernel.org/r/YuPps+cvVAMugWmy@sirena.org.uk
Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 40 +++++------------------
 1 file changed, 9 insertions(+), 31 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
index 4b1828976104..3663252622be 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
@@ -607,17 +607,6 @@ static const struct qmp_phy_init_tbl qmp_v4_dp_tx_tbl[] = {
 };
 
 
-/* list of regulators */
-struct qmp_regulator_data {
-	const char *name;
-	unsigned int enable_load;
-};
-
-static struct qmp_regulator_data qmp_phy_vreg_l[] = {
-	{ .name = "vdda-phy", .enable_load = 21800 },
-	{ .name = "vdda-pll", .enable_load = 36000 },
-};
-
 struct qmp_phy;
 
 /* struct qmp_phy_cfg - per-PHY initialization config */
@@ -662,7 +651,7 @@ struct qmp_phy_cfg {
 	const char * const *reset_list;
 	int num_resets;
 	/* regulators to be requested */
-	const struct qmp_regulator_data *vreg_list;
+	const char * const *vreg_list;
 	int num_vregs;
 
 	/* array of registers with different offsets */
@@ -831,6 +820,11 @@ static const char * const sc7180_usb3phy_reset_l[] = {
 	"phy",
 };
 
+/* list of regulators */
+static const char * const qmp_phy_vreg_l[] = {
+	"vdda-phy", "vdda-pll",
+};
+
 static const struct qmp_phy_cfg sc7180_usb3phy_cfg = {
 	.type			= PHY_TYPE_USB3,
 	.nlanes			= 1,
@@ -1992,32 +1986,16 @@ static int qcom_qmp_phy_combo_vreg_init(struct device *dev, const struct qmp_phy
 {
 	struct qcom_qmp *qmp = dev_get_drvdata(dev);
 	int num = cfg->num_vregs;
-	int ret, i;
+	int i;
 
 	qmp->vregs = devm_kcalloc(dev, num, sizeof(*qmp->vregs), GFP_KERNEL);
 	if (!qmp->vregs)
 		return -ENOMEM;
 
 	for (i = 0; i < num; i++)
-		qmp->vregs[i].supply = cfg->vreg_list[i].name;
+		qmp->vregs[i].supply = cfg->vreg_list[i];
 
-	ret = devm_regulator_bulk_get(dev, num, qmp->vregs);
-	if (ret) {
-		dev_err(dev, "failed at devm_regulator_bulk_get\n");
-		return ret;
-	}
-
-	for (i = 0; i < num; i++) {
-		ret = regulator_set_load(qmp->vregs[i].consumer,
-					cfg->vreg_list[i].enable_load);
-		if (ret) {
-			dev_err(dev, "failed to set load at %s\n",
-				qmp->vregs[i].supply);
-			return ret;
-		}
-	}
-
-	return 0;
+	return devm_regulator_bulk_get(dev, num, qmp->vregs);
 }
 
 static int qcom_qmp_phy_combo_reset_init(struct device *dev, const struct qmp_phy_cfg *cfg)
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
