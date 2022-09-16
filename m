Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8B016C6FA8B
	for <linux-phy@archiver.kernel.org>; Fri, 16 Sep 2022 10:26:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LP8b9C0TCfQDw+EiLXRMQf1nBvWme5gQDN3Uj3VXZxY=; b=NHLS/UiEIPEt58
	P2cj6KBq+uDDkWg2ZBs8EFzOFSccwxXEH35x1dO1BVrUEJoaQ9RliG45Y0RU0gArIfcl8Nut/evXT
	gpdTy3P7O+kuiBFfEFBRQFuANkJRpeZUs07io4e9fj0wrVl65AhxBjTqfVI8LFpompWGWGYGEGjFg
	G6fyGu8CmGll1ZNQfu21pxXRrZ54lLclzcAGfELyB0cbElk4Gk7Vc5MDibQ9/N9p8TwLAo1ir4MnQ
	msR79vx/IJsjgVv2ZrOWhOFRicfGN3sAh1SEAslaEyXGWrPLpCyY/heFtCJsPODP5HhBRZhFme4GX
	8yJkrVAPWi1cURoGlHbw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oZ8Y4-00C9m5-VF; Fri, 16 Sep 2022 10:26:16 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oZ8Vf-00C8PV-4X
	for linux-phy@lists.infradead.org; Fri, 16 Sep 2022 10:23:50 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id AA78662A82;
	Fri, 16 Sep 2022 10:23:45 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 15342C433C1;
	Fri, 16 Sep 2022 10:23:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663323825;
	bh=Hb9JLjm8cd73SOsI1gSnaACdnG7qUL5WFVhEQ95tCuo=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=kSL6vj+66ibnjceLFkO4huAGlZdMYhRdi+fozM/Cd91p6ETR/E2kVyRIr5P1L/h8p
	 T3YErxtJqXNJiZEuRMV6gBWdFQctCzQmu4AWMLysbo7iwBNRMRwCsknjWMk7/yzIOv
	 RYLJW5hILxMZ/p6hE9slDGIkaE+xp6iBaGs/J2HCNj5Kxr1VlHhUSGW4lilKtgm1yY
	 O85hrPWc4AGa1cIY0t2N8ECGt4aE3Z0OioGDvZ2bh+LY1QH2EV3F9KCQkEFn4Hm3Cq
	 5YqbijVm4DWMrLj4K4PNs7h5ULOCgHH2pcDCulg70InN6Cordi+mrEpJTTrhjhIRc+
	 MP+Btf7I8zw9g==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan+linaro@kernel.org>)
	id 1oZ8Vi-00030R-Eh; Fri, 16 Sep 2022 12:23:50 +0200
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
Subject: [PATCH v2 03/11] phy: qcom-qmp-pcie-msm8996: fix memleak on probe deferral
Date: Fri, 16 Sep 2022 12:23:32 +0200
Message-Id: <20220916102340.11520-4-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220916102340.11520-1-johan+linaro@kernel.org>
References: <20220916102340.11520-1-johan+linaro@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220916_032347_295787_E9A3C6D0 
X-CRM114-Status: GOOD (  12.15  )
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
 .../phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c  | 23 +++++++++----------
 1 file changed, 11 insertions(+), 12 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c
index 2a5eef6b12f5..6664d84bb599 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c
@@ -796,21 +796,20 @@ static int qmp_pcie_msm8996_create(struct device *dev, struct device_node *np, i
 	 * For dual lane PHYs: tx2 -> 3, rx2 -> 4, pcs_misc (optional) -> 5
 	 * For single lane PHYs: pcs_misc (optional) -> 3.
 	 */
-	qphy->tx = of_iomap(np, 0);
-	if (!qphy->tx)
-		return -ENOMEM;
-
-	qphy->rx = of_iomap(np, 1);
-	if (!qphy->rx)
-		return -ENOMEM;
+	qphy->tx = devm_of_iomap(dev, np, 0, NULL);
+	if (IS_ERR(qphy->tx))
+		return PTR_ERR(qphy->tx);
 
-	qphy->pcs = of_iomap(np, 2);
-	if (!qphy->pcs)
-		return -ENOMEM;
+	qphy->rx = devm_of_iomap(dev, np, 1, NULL);
+	if (IS_ERR(qphy->rx))
+		return PTR_ERR(qphy->rx);
 
-	qphy->pcs_misc = of_iomap(np, 3);
+	qphy->pcs = devm_of_iomap(dev, np, 2, NULL);
+	if (IS_ERR(qphy->pcs))
+		return PTR_ERR(qphy->pcs);
 
-	if (!qphy->pcs_misc)
+	qphy->pcs_misc = devm_of_iomap(dev, np, 3, NULL);
+	if (IS_ERR(qphy->pcs_misc))
 		dev_vdbg(dev, "PHY pcs_misc-reg not used\n");
 
 	qphy->pipe_clk = devm_get_clk_from_child(dev, np, NULL);
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
