Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 16AC4C6FA8B
	for <linux-phy@archiver.kernel.org>; Fri, 16 Sep 2022 11:32:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZXy+OjTPBEBfDoNGOUP4ix3A0ZmeSoh9S6CAVtb+vf8=; b=kclgl/szBq+qV9
	QFvgGLFoYW/Sg3ebjlwNnsjoM7viuSA+Jr61uH4UjatJo+igjTwjaFPaK1FSE2OYvgpJp5Aa43UwE
	tUZIouWRkxJAHiNyXGTcOBIbmk9HIQVb5C5l36LFwDohSEMeLd3N4icy+O8Oyimnd+gMkxCI63vgE
	FPEnxLwfxouom7tzzpSEIhfHX8JcCXkUQaEySXUVxggsF0RHH1nghMD9wyaGc4BARctPDbbIHuM4m
	ezylS8BWlURUYBd9Tp1U0vSBOzppUwN130JCD7Eq8+XN42wuGoOwdwxTLr4U7alMp9GADTh8fseWR
	0WaaFDToF+QulvYlCL1Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oZ9a4-00Cih5-Hz; Fri, 16 Sep 2022 11:32:24 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oZ8Vi-00C8Rm-0n
	for linux-phy@lists.infradead.org; Fri, 16 Sep 2022 10:23:55 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 64C0DB825D1;
	Fri, 16 Sep 2022 10:23:48 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 45DC3C43151;
	Fri, 16 Sep 2022 10:23:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663323825;
	bh=oHtUNITTB3DvbaghKQKWioaqydTgi66CGSn9kZoWtMU=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=SpyBHb8raFJ7sG+vgGamLiokdaddRKrZNIlUKuEUUcPJDTONg/UdnyD3lNxR0+VmB
	 pToIA96SrUGI78++5K9XCteCwwcckxejA/ecg18C20OYO3LXTimKF4tfsBDF0NikZT
	 3fPCizsHnLQUQtgcuZMwui4/S9OjAMoSmGKBQNyY3JRROPiW/uDMVXDjiDzEP5enHe
	 Uq6ZBK5H5Sa0HaaaHzCnDjbDaz8UtgQ4+VD/BJr60WrGC7nHy/jbEqC89QBJfhFzHz
	 KOewUdwS+hkcaln0vtH9uc1qb5Hk9/PWUKEbBG06nRizgeXDI3JZW0t+CRtodxJxQ4
	 KZPzTW9SdmEYQ==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan+linaro@kernel.org>)
	id 1oZ8Vi-00030T-Ha; Fri, 16 Sep 2022 12:23:50 +0200
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
Subject: [PATCH v2 04/11] phy: qcom-qmp-combo: fix memleak on probe deferral
Date: Fri, 16 Sep 2022 12:23:33 +0200
Message-Id: <20220916102340.11520-5-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220916102340.11520-1-johan+linaro@kernel.org>
References: <20220916102340.11520-1-johan+linaro@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220916_032350_391309_431AA4FA 
X-CRM114-Status: GOOD (  13.82  )
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
 drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 32 ++++++++++++-----------
 1 file changed, 17 insertions(+), 15 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
index f5d0d290d26e..1d55892c6575 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
@@ -2714,17 +2714,17 @@ static int qmp_combo_create(struct device *dev, struct device_node *np, int id,
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
 
 	if (cfg->pcs_usb_offset)
 		qphy->pcs_usb = qphy->pcs + cfg->pcs_usb_offset;
@@ -2736,9 +2736,9 @@ static int qmp_combo_create(struct device *dev, struct device_node *np, int id,
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
 
@@ -2748,15 +2748,17 @@ static int qmp_combo_create(struct device *dev, struct device_node *np, int id,
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
+	if (IS_ERR(qphy->pcs_misc)) {
 		dev_vdbg(dev, "PHY pcs_misc-reg not used\n");
+		qphy->pcs_misc = NULL;
+	}
 
 	/*
 	 * Get PHY's Pipe clock, if any. USB3 and PCIe are PIPE3
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
