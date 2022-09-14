Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AC977C6FA8E
	for <linux-phy@archiver.kernel.org>; Wed, 14 Sep 2022 16:26:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZXy+OjTPBEBfDoNGOUP4ix3A0ZmeSoh9S6CAVtb+vf8=; b=mSdjhEIO5a9Q6Z
	8RbKf38zc0BqGq6ch9tyh6DSzRU027z05Uvq6FL3B3RAhdtpix2nrPLGuDVrYhKEoGJMtuhzoll08
	1O3W8icc0XD/KHBY63sa35k/ZKD9NmgwzibH93ZFBZELTfN8AU3D/d79SgEugBbauH3sENRW/+MBm
	UBUu1O93Sy1NU2606KdYmkfbXC0lzyi5vFiPe2FlC9UuRqI9fzxA5n3+SqsYVXy6THOsTNsttN1lt
	7wU0HMo470fBhoci2p0ZE4g++MlCee/FKAqK7Ex27Dl+cUlFVp6dPveiqAnbGBc22ILAIPxPj6Dt2
	SWxAlo8jHtsW6J3FJPZA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oYVDs-0054ch-Vf; Wed, 14 Sep 2022 16:26:48 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oYVDm-0054TQ-FC
	for linux-phy@lists.infradead.org; Wed, 14 Sep 2022 16:26:46 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id F1158B8116D;
	Wed, 14 Sep 2022 16:26:39 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1EF44C433C1;
	Wed, 14 Sep 2022 16:26:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663172798;
	bh=oHtUNITTB3DvbaghKQKWioaqydTgi66CGSn9kZoWtMU=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=fV7di6cKr95427PRwuEENUv+iUm1Ru758PAE4on0SNE6VpwqZ4lEctCY/dKqRrkd4
	 Ci32UDH8gsClkFPLK8o0Yb79ygnUKszVC5URRgM+jgXrEJglo1XsV4uBgWE5tAVZbs
	 4JJSwpomMJoOcV14FWrtxUcM2ExIht01b020cu6kRygWGSRVYiA8PbiXr4Qx4Ehyr7
	 DUxmGBOJkdl8K0psJrkO/jGikne2YWLCVdnNv1b7+VM7Ni8Xo2ZDTnlnNPEha248oM
	 /SUd7q4iJupZs1p+51RyOBM3+Q5xNxi710qmmH3inD/wasUaZxj6y1OGilMhpb7D14
	 2/7yVszZKAGmA==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan+linaro@kernel.org>)
	id 1oYVDj-0001ef-O4; Wed, 14 Sep 2022 18:26:39 +0200
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
Subject: [PATCH 04/11] phy: qcom-qmp-combo: fix memleak on probe deferral
Date: Wed, 14 Sep 2022 18:25:38 +0200
Message-Id: <20220914162545.6289-5-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220914162545.6289-1-johan+linaro@kernel.org>
References: <20220914162545.6289-1-johan+linaro@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220914_092642_892174_8071B876 
X-CRM114-Status: GOOD (  13.48  )
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
