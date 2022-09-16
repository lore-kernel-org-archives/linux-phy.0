Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CE98EC54EE9
	for <linux-phy@archiver.kernel.org>; Fri, 16 Sep 2022 10:26:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fK4ILdrgr3MbqtJm6YmzK0/vpNiYNtLXpbGsPMJlkEg=; b=mofjyMSGiRKwS4
	ILyNAJhGLplY8Uy57/iFTmmLChiyQRJUkUYokFCAM4xsSsOoAg9m/AR5PWOoll2mNdalXBd6viCI4
	IYaBQOpKmXoapk0SX4GSNFP8ArxTyuQyN5Pxg1j3GO27k3F0p6/MPwr4joKDloVTF1N7CNYZo9w42
	G+/y0yGpQtKz6OahqyTqLYPJ4wGEFT91QbP+QFW3PRS85Z8JN7Px5FGlQh10szaXnsxnIWArH1kWr
	Jk0iKCHIEGOBruuRz9caosFSUawbNIaVoap8FxvN+F/gE8TDaGf2m/yogFhSLia1BvxquWGaukrOw
	/LJoKJ+0MkHj97ta9FIA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oZ8YA-00C9r8-6x; Fri, 16 Sep 2022 10:26:22 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oZ8Vf-00C8QF-TO
	for linux-phy@lists.infradead.org; Fri, 16 Sep 2022 10:23:53 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 3E5D562A9B;
	Fri, 16 Sep 2022 10:23:47 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2E59AC43470;
	Fri, 16 Sep 2022 10:23:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663323825;
	bh=dLPgyWdHoIX1J4UX8IPp0xA3NVaikcm11pREj0/B7Us=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=Q/sdpO+Z7aRDUfPQvw772doqTjMoBnvucz91GZlo4Z0X1/ldeltueu9Q4S3XZIeb9
	 QSsMz96F+2oXtSF0oIaOsC4TlY30pa0+/MtOxTU90tsPCX59KHx80//okAP1HGUwBA
	 gC5Nn8ZWQfiuGdBQI7pzm3maeq06osAuU1y8f7Ix1KlgVPWYKQV0ugPqb/ekfN8YI0
	 sSAYFPNJxzzO80EDGxud0aIHsE8Qm8zQHhUAi4YNL4ULQIa7khgy77dwvwYs28wlrW
	 JqcEL6LOzpP2Tdk0LbaWRFIn997Fh9tmaBgJxUYecV3BB8f4nOmJWUKnFU3GgSG/uL
	 u+ah9mpLIaGcw==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan+linaro@kernel.org>)
	id 1oZ8Vi-00030W-KC; Fri, 16 Sep 2022 12:23:50 +0200
From: Johan Hovold <johan+linaro@kernel.org>
To: Vinod Koul <vkoul@kernel.org>
Cc: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@somainline.org>,
	Kishon Vijay Abraham I <kishon@ti.com>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Johan Hovold <johan+linaro@kernel.org>
Subject: [PATCH v2 05/11] phy: qcom-qmp-ufs: fix memleak on probe deferral
Date: Fri, 16 Sep 2022 12:23:34 +0200
Message-Id: <20220916102340.11520-6-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220916102340.11520-1-johan+linaro@kernel.org>
References: <20220916102340.11520-1-johan+linaro@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220916_032348_056557_DA134A71 
X-CRM114-Status: GOOD (  14.21  )
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

Switch to using the device-managed of_iomap helper to avoid leaking
memory on probe deferral and driver unbind.

Note that this helper checks for already reserved regions and may fail
if there are multiple devices claiming the same memory.

Fixes: e78f3d15e115 ("phy: qcom-qmp: new qmp phy driver for qcom-chipsets")
Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-ufs.c | 30 ++++++++++++-------------
 1 file changed, 15 insertions(+), 15 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
index 4d0eee620f37..1b1ac20cf290 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
@@ -1125,17 +1125,17 @@ static int qmp_ufs_create(struct device *dev, struct device_node *np, int id,
 	 * For dual lane PHYs: tx2 -> 3, rx2 -> 4, pcs_misc (optional) -> 5
 	 * For single lane PHYs: pcs_misc (optional) -> 3.
 	 */
-	qphy->tx = of_iomap(np, 0);
-	if (!qphy->tx)
-		return -ENOMEM;
+	qphy->tx = devm_of_iomap(dev, np, 0, NULL);
+	if (IS_ERR(qphy->tx))
+		return PTR_ERR(qphy->tx);
 
-	qphy->rx = of_iomap(np, 1);
-	if (!qphy->rx)
-		return -ENOMEM;
+	qphy->rx = devm_of_iomap(dev, np, 1, NULL);
+	if (IS_ERR(qphy->rx))
+		return PTR_ERR(qphy->rx);
 
-	qphy->pcs = of_iomap(np, 2);
-	if (!qphy->pcs)
-		return -ENOMEM;
+	qphy->pcs = devm_of_iomap(dev, np, 2, NULL);
+	if (IS_ERR(qphy->pcs))
+		return PTR_ERR(qphy->pcs);
 
 	/*
 	 * If this is a dual-lane PHY, then there should be registers for the
@@ -1144,9 +1144,9 @@ static int qmp_ufs_create(struct device *dev, struct device_node *np, int id,
 	 * offset from the first lane.
 	 */
 	if (cfg->is_dual_lane_phy) {
-		qphy->tx2 = of_iomap(np, 3);
-		qphy->rx2 = of_iomap(np, 4);
-		if (!qphy->tx2 || !qphy->rx2) {
+		qphy->tx2 = devm_of_iomap(dev, np, 3, NULL);
+		qphy->rx2 = devm_of_iomap(dev, np, 4, NULL);
+		if (IS_ERR(qphy->tx2) || IS_ERR(qphy->rx2)) {
 			dev_warn(dev,
 				 "Underspecified device tree, falling back to legacy register regions\n");
 
@@ -1156,14 +1156,14 @@ static int qmp_ufs_create(struct device *dev, struct device_node *np, int id,
 			qphy->rx2 = qphy->rx + QMP_PHY_LEGACY_LANE_STRIDE;
 
 		} else {
-			qphy->pcs_misc = of_iomap(np, 5);
+			qphy->pcs_misc = devm_of_iomap(dev, np, 5, NULL);
 		}
 
 	} else {
-		qphy->pcs_misc = of_iomap(np, 3);
+		qphy->pcs_misc = devm_of_iomap(dev, np, 3, NULL);
 	}
 
-	if (!qphy->pcs_misc)
+	if (IS_ERR(qphy->pcs_misc))
 		dev_vdbg(dev, "PHY pcs_misc-reg not used\n");
 
 	generic_phy = devm_phy_create(dev, np, &qcom_qmp_ufs_ops);
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
