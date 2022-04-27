Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B2A8AC433FE
	for <linux-phy@archiver.kernel.org>; Wed, 27 Apr 2022 06:35:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yeYbnDRbUhTUhCVWnm9kVXDLENlKrgutoRZ8Q6egglQ=; b=KGJq3B6Kfjg4dY
	OfvAbU2w8RaY0IS5TqyQgOLCTzc4kB63BrQHoiTaOc8cr0/uaaA3gugQ3CFbCjdIAw0DoEtbqx1Hs
	sM4LxFvK7gcFHCQQE2bYkMLZMKa9roJBndgkVKsi5nL+bXtC53LhvtWGdGwrbbjBE7gIePQHEH82X
	sjTgGinmPaS3HwTQQJZjEvV4lBt24YOb7lUVO8/ZSLL9G2MxuL+Ki3XySZMUZL980y5ShxmsSIu6L
	fCTjDT0Z6DTdJ5ueJdyQbTkmyfQuBYi6czzSV+C0getUURGTybARQEBYPQqnkzSrwGTtsuF+5RZBX
	e3As/u3sGrOJeO0tOdNg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1njbH4-0001Du-3S; Wed, 27 Apr 2022 06:35:42 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1njbGz-0001A1-ET
 for linux-phy@lists.infradead.org; Wed, 27 Apr 2022 06:35:40 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id EB63461799;
 Wed, 27 Apr 2022 06:35:35 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 53DE8C385AF;
 Wed, 27 Apr 2022 06:35:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1651041335;
 bh=S7L7LCfQw9ybG+HTyJrxZ9N79OTqInjfPScQ2OGVp+Q=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=Aw/hwbhuNiAjclNMtdRoTPB/EuKV8w/i9HhU75hQvcpQnRi975vAk904voio6LY3e
 97U+eP03pUzkl+a29/PzZA7K5H0s7jWlo2QsWVcEIiSw++JlNGoxrVg+e5DCM77ESu
 ROsL0egHLEpo5f55H/WyvFxaCVGTQGt1C6kE0E2sat6cO/k+m3zb5poUDyKd+B3WCK
 HNs2SoJkjeBDkdHAeVpoMglvvonXHjsXLhuq1c6rEeO/aMzHNLuIVpFzn/SfbIWiSK
 kIRkQkOrx6/l34MieqhhWkghjDnLgFZNn6g2+X96lv3FLNnhsuVlUVf3wpVIjxaSNB
 QaRfeOCLNcPmQ==
Received: from johan by xi.lan with local (Exim 4.94.2)
 (envelope-from <johan+linaro@kernel.org>)
 id 1njbGz-0008VZ-3R; Wed, 27 Apr 2022 08:35:37 +0200
From: Johan Hovold <johan+linaro@kernel.org>
To: Kishon Vijay Abraham I <kishon@ti.com>,
	Vinod Koul <vkoul@kernel.org>
Cc: Andy Gross <agross@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Philipp Zabel <p.zabel@pengutronix.de>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org,
 Johan Hovold <johan+linaro@kernel.org>
Subject: [PATCH v2 3/3] phy: qcom-qmp: switch to explicit reset helpers
Date: Wed, 27 Apr 2022 08:32:43 +0200
Message-Id: <20220427063243.32576-4-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220427063243.32576-1-johan+linaro@kernel.org>
References: <20220427063243.32576-1-johan+linaro@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220426_233537_558378_AE1B9CE3 
X-CRM114-Status: GOOD (  13.12  )
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

Switch to consistently using the explicit reset-controller API which
makes it clear that the reset controllers are used exclusively by the
PHY driver.

Note that the deprecated of_reset_control_get() and
devm_reset_control_get() are just transitional wrappers for the explicit
API so there's no functional change.

Suggested-by: Philipp Zabel <p.zabel@pengutronix.de>
Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp.c b/drivers/phy/qualcomm/phy-qcom-qmp.c
index 3f77830921f5..160d723fc773 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp.c
@@ -5701,7 +5701,7 @@ static int qcom_qmp_phy_reset_init(struct device *dev, const struct qmp_phy_cfg
 		struct reset_control *rst;
 		const char *name = cfg->reset_list[i];
 
-		rst = devm_reset_control_get(dev, name);
+		rst = devm_reset_control_get_exclusive(dev, name);
 		if (IS_ERR(rst)) {
 			dev_err(dev, "failed to get %s reset\n", name);
 			return PTR_ERR(rst);
@@ -6099,7 +6099,7 @@ int qcom_qmp_phy_create(struct device *dev, struct device_node *np, int id,
 	/* Get lane reset, if any */
 	if (cfg->has_lane_rst) {
 		snprintf(prop_name, sizeof(prop_name), "lane%d", id);
-		qphy->lane_rst = of_reset_control_get(np, prop_name);
+		qphy->lane_rst = of_reset_control_get_exclusive(np, prop_name);
 		if (IS_ERR(qphy->lane_rst)) {
 			dev_err(dev, "failed to get lane%d reset\n", id);
 			return PTR_ERR(qphy->lane_rst);
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
