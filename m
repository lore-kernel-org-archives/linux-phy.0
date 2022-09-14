Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 69D95C6FA89
	for <linux-phy@archiver.kernel.org>; Wed, 14 Sep 2022 16:26:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jgw7QRpkdx4stNjjjhAdZ2kDLS9ja0DtywvpqQQmg30=; b=uzqvivsxyW1APO
	nBtbG5oKAgF5/UB0Jbc7Lv77oF5K4QjRuPZ9HGV7Omou9kpNnyzUifdeUbpyUvz5+D13ktc4PUDVn
	UM2Kvyq1SJHxsSVNCkQ4lIsW5nKWwNhHonP/PaBBTHpm665BjKvUQnlECj6cR7t+pq4YjcHSafRW8
	1VdtqwajvXUWVSTazAEEIwArFIs83DXPZbUGJSI04v15j4b2EG+bfwj8XALAhcEidOOBorsq1nHrW
	0ewLQWn8EhOYpqXVGO+kU8a3Dc9Io1GsIdOiP6yRiDOeRSDFU/8UAzD3a2SdtkW+egFrMzmVkuFyM
	5dLAk6hPuwEJjj9vepog==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oYVDy-0054kL-Tp; Wed, 14 Sep 2022 16:26:54 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oYVDn-0054XY-HO
	for linux-phy@lists.infradead.org; Wed, 14 Sep 2022 16:26:48 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id A9B2061A2B;
	Wed, 14 Sep 2022 16:26:40 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1BE82C433D6;
	Wed, 14 Sep 2022 16:26:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663172799;
	bh=tfnzETXoL46I+0ZYezuq5oXUjRiOihWdORJPeaCzAyI=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=KhaU5K1gDUrpxdV/q6Zxk4Ux1LjfBb5W3CP0WzGxQT43dqN1pgL5JoBwnsCxlGwXd
	 EPHdZd7NbF0CQy/LeYABk1uAyDmAi2DGiMMC8xs/QBQxhKjgJywUlhZJf6yVgAR+bd
	 jPEQGVQwojvWV7ZYmemAeS+QDaHXCwlgnMO7WBE410t9hAiVrLpruJp+c5dQMCz+2D
	 hya+U8WT7NqkIzNKxsYH/FVHcGyLZSM80kDbtyHqeZME5sxhYoCZhyW30POyGl0id3
	 +Pkx7k+IekskzX4XFmYf6q4CFUv1sX4rKL1U7D+/4xIXJ5q4in+oIAdRra7vHIhq/D
	 3XqhqMiyIj/Tg==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan+linaro@kernel.org>)
	id 1oYVDk-0001f0-Ad; Wed, 14 Sep 2022 18:26:40 +0200
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
Subject: [PATCH 11/11] phy: qcom-qmp-usb: drop legacy DT workaround
Date: Wed, 14 Sep 2022 18:25:45 +0200
Message-Id: <20220914162545.6289-12-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220914162545.6289-1-johan+linaro@kernel.org>
References: <20220914162545.6289-1-johan+linaro@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220914_092643_693315_59A5EB1A 
X-CRM114-Status: GOOD (  16.71  )
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

Commit 5e17b95d9893 ("phy: qcom-qmp: Utilize fully-specified DT
registers") added a workaround for legacy devicetrees which did not
specify register regions for the second lane of some dual-lane PHYs.

At the time, the only two dual-lane PHYs supported by mainline were
"qcom,sdm845-qmp-usb3-phy" and "qcom,sdm845-qmp-ufs-phy" and they had
been added to the binding less than six months before the binding was
fixed.

Presumably no one is using four-year old SDM845 dtbs with mainline
anymore so drop the workaround for malformed devicetrees. In the
unlikely event that anyone complains, we can consider reverting.

Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-usb.c | 27 ++++++-------------------
 1 file changed, 6 insertions(+), 21 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-usb.c b/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
index 768ece8e9076..93f2c7428ac7 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
@@ -66,9 +66,6 @@
 #define POWER_DOWN_DELAY_US_MIN			10
 #define POWER_DOWN_DELAY_US_MAX			11
 
-/* Define the assumed distance between lanes for underspecified device trees. */
-#define QMP_PHY_LEGACY_LANE_STRIDE		0x400
-
 struct qmp_phy_init_tbl {
 	unsigned int offset;
 	unsigned int val;
@@ -2642,28 +2639,16 @@ int qmp_usb_create(struct device *dev, struct device_node *np, int id,
 	if (cfg->pcs_usb_offset)
 		qphy->pcs_usb = qphy->pcs + cfg->pcs_usb_offset;
 
-	/*
-	 * If this is a dual-lane PHY, then there should be registers for the
-	 * second lane. Some old device trees did not specify this, so fall
-	 * back to old legacy behavior of assuming they can be reached at an
-	 * offset from the first lane.
-	 */
 	if (cfg->is_dual_lane_phy) {
 		qphy->tx2 = devm_of_iomap(dev, np, 3, NULL);
-		qphy->rx2 = devm_of_iomap(dev, np, 4, NULL);
-		if (IS_ERR(qphy->tx2) || IS_ERR(qphy->rx2)) {
-			dev_warn(dev,
-				 "Underspecified device tree, falling back to legacy register regions\n");
+		if (IS_ERR(qphy->tx2))
+			return PTR_ERR(qphy->tx2);
 
-			/* In the old version, pcs_misc is at index 3. */
-			qphy->pcs_misc = qphy->tx2;
-			qphy->tx2 = qphy->tx + QMP_PHY_LEGACY_LANE_STRIDE;
-			qphy->rx2 = qphy->rx + QMP_PHY_LEGACY_LANE_STRIDE;
-
-		} else {
-			qphy->pcs_misc = devm_of_iomap(dev, np, 5, NULL);
-		}
+		qphy->rx2 = devm_of_iomap(dev, np, 4, NULL);
+		if (IS_ERR(qphy->rx2))
+			return PTR_ERR(qphy->rx2);
 
+		qphy->pcs_misc = devm_of_iomap(dev, np, 5, NULL);
 	} else {
 		qphy->pcs_misc = devm_of_iomap(dev, np, 3, NULL);
 	}
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
