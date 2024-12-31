Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6659EE7718B
	for <linux-phy@archiver.kernel.org>; Tue, 31 Dec 2024 16:33:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=/5YrXKaxfR17jLouW5GRfpOqKuU+E/WDlmPJzPbQCIA=; b=LUKdJT4Fq+mkN5
	IH14Fp/wbc0XIIt2sh0EJC50tP37RFwV5saWa9koHqZhmR1fiKu04OOVGb9YtjAH3YBQF86ejvS4P
	fnWHSX1SUdb5KLNLyxojHnF/IQLPQlU/MAb3iLDlTb2LHerJfncsx3oWAMn5EFn8ATJ3Zv5MLo2QT
	s8555h1G4Yy3MJOeBRYYEitk5ewMWUhepxMw2Ow1ToXGF+7ZY4iXRb+jfxQMRXAG0OCzwGh7La630
	yk4OKqPUYnei2mb9EGA8ifRHeZuk8E/bYKQZGFOU1jIGkFpB8XboJ5YObG3cHt9fwmubcc/sIJCoC
	LQkzqRVEFNePYLutL7WQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tSfBv-00000007Tqi-0EDS;
	Tue, 31 Dec 2024 16:33:59 +0000
Received: from nyc.source.kernel.org ([147.75.193.91])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tSfB4-00000007Tka-2cVh
	for linux-phy@lists.infradead.org;
	Tue, 31 Dec 2024 16:33:07 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 5CB48A40B1D;
	Tue, 31 Dec 2024 16:31:16 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9A3F9C4CED2;
	Tue, 31 Dec 2024 16:33:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735662785;
	bh=o0hR1NQpAKxq1IPLzu/NabrShb8lQvp0/ggSu0lB1TI=;
	h=From:To:Cc:Subject:Date:From;
	b=vF4GFi8MEqFfJLpX2HzNUWDu+14/yG7FzKeh8K5QCsLWWsasnxLJiVXclVn6qH7pf
	 9g+ZLbueFzFCgtVRj7dTYBexZON/iUhU9ubhs1GuU+YXZPXQN0lgVI+F3EyIURz4fy
	 /aIfC1lRR61vA6QpqYAVry1lvoP9EnbQ+t0y3lNOtnYvyoIzqhcpN5VVHT95oQNM8Z
	 uWBDpbI7HNeOA0Kyh7JVUuUmqS/BIuI0FUTVE/ZmmEsh/dDkbfos4bLyq++kvA67Ov
	 1nZo37f2FBLTlxR86wSMojkWYJXPWTsO8IikTUiFJa9Y3Io/parmdLAGyLf2kWRmBB
	 eLM68YriNvduw==
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Marc Kleine-Budde <mkl@pengutronix.de>,
	Vincent Mailhol <mailhol.vincent@wanadoo.fr>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>
Cc: linux-can@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] phy: can-transceiver: Drop unnecessary "mux-states" property presence check
Date: Tue, 31 Dec 2024 10:32:51 -0600
Message-ID: <20241231163251.244167-1-robh@kernel.org>
X-Mailer: git-send-email 2.45.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241231_083306_729052_11681A84 
X-CRM114-Status: GOOD (  11.33  )
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

It doesn't matter whether "mux-states" is not present or there is some
other issue parsing it causing an error. Drop the presence check and
rework the error handling to ignore anything other than deferred probe.

Signed-off-by: Rob Herring (Arm) <robh@kernel.org>
---
 drivers/phy/phy-can-transceiver.c | 14 ++++++--------
 1 file changed, 6 insertions(+), 8 deletions(-)

diff --git a/drivers/phy/phy-can-transceiver.c b/drivers/phy/phy-can-transceiver.c
index ee4ce4249698..ed8ba30eb038 100644
--- a/drivers/phy/phy-can-transceiver.c
+++ b/drivers/phy/phy-can-transceiver.c
@@ -103,6 +103,7 @@ static int can_transceiver_phy_probe(struct platform_device *pdev)
 	struct phy *phy;
 	struct gpio_desc *standby_gpio;
 	struct gpio_desc *enable_gpio;
+	struct mux_state *mux_state;
 	u32 max_bitrate = 0;
 	int err;
 
@@ -113,15 +114,12 @@ static int can_transceiver_phy_probe(struct platform_device *pdev)
 	match = of_match_node(can_transceiver_phy_ids, pdev->dev.of_node);
 	drvdata = match->data;
 
-	if (of_property_read_bool(dev->of_node, "mux-states")) {
-		struct mux_state *mux_state;
-
-		mux_state = devm_mux_state_get(dev, NULL);
-		if (IS_ERR(mux_state))
-			return dev_err_probe(&pdev->dev, PTR_ERR(mux_state),
-					     "failed to get mux\n");
+	mux_state = devm_mux_state_get(dev, NULL);
+	if (IS_ERR(mux_state)) {
+		if (PTR_ERR(mux_state) == -EPROBE_DEFER)
+			return PTR_ERR(mux_state);
+	} else
 		can_transceiver_phy->mux_state = mux_state;
-	}
 
 	phy = devm_phy_create(dev, dev->of_node,
 			      &can_transceiver_phy_ops);
-- 
2.45.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
