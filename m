Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B108AC02192
	for <linux-phy@archiver.kernel.org>; Mon,  3 Feb 2025 19:03:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=bckINyS8s0agBi+am1NM0eZpNcYETvPi23jVsV3x9ws=; b=yTEgWTTRo6OSKx
	ohB3bcTHifTuR9OQMfwmB7rbYmGYtLNVUQJS/UjqTOXOllOchXuDwOSGjdR3q6yfQx9QL0M+wk8f0
	T/njOI/UtQUbWAUYV3IRbQxnTtLU8WFScCc55yy8mKi4gl+npaBw3J+BVDW9d+1l9ypCKyetOZIPa
	Rz8qo+mRT6lTHDW9td6Xu/+2k8/jZ0PWKZ1nEaNE88xB7EM7TU8cd+uDNPvdt/XWNm8fecwZri4ph
	NwraOeFisBLV4ofOA3CfPgmuJg0thxpA8vGNBXT62wM5UaaoJR8X/BFpvVYD9kakJ+PBiFerYDons
	uI5oh+17uCHMJFNhwLlw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tf1ix-0000000GOOk-1q6o;
	Mon, 03 Feb 2025 19:03:11 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tf1bd-0000000GLdE-1iA0
	for linux-phy@lists.infradead.org;
	Mon, 03 Feb 2025 18:55:38 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id E1EB95C686A;
	Mon,  3 Feb 2025 18:54:56 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3E93AC4CED2;
	Mon,  3 Feb 2025 18:55:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738608936;
	bh=cQdwqEISItC6zM0J7AR1idcKaygDDDljuSsFKU7b5IE=;
	h=From:To:Cc:Subject:Date:From;
	b=AZnXAcjPL0qQtwpJhc9Ml5VpiNfyzHKIxktRVr1iD1OYS+KnpQ5zRn8nzNlLoNFWf
	 lVlYO4CYmWqOynyyR/V7WL3hioXW7UePo6HTzeoK539XsM0+snBEl9EGkzUlNsbFKP
	 zdwFs5v0bFxj4VQhEFfgv4xKfwWv8lOu/XiRMXfEMA2WS/9aB9UhGZJ4och0iTfcHi
	 a9pheLf014oopykBTBMsKHNng/La7toyBzRgVgyikOblzH6UG9hXLu6aw1IF9I9A85
	 YTKnNw3ZiHXVvE36hEJIi1pWGsrJPGRXijtoSSb2dPakndYKnHRnOdsAfO7V2wUrqo
	 Y1ZAYVN57WVFA==
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Marc Kleine-Budde <mkl@pengutronix.de>,
	Vincent Mailhol <mailhol.vincent@wanadoo.fr>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>
Cc: linux-can@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] phy: can-transceiver: Drop unnecessary "mux-states" property presence check
Date: Mon,  3 Feb 2025 12:54:21 -0600
Message-ID: <20250203185421.3383805-2-robh@kernel.org>
X-Mailer: git-send-email 2.47.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250203_105537_484289_2F121C9F 
X-CRM114-Status: GOOD (  12.25  )
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

Acked-by: Marc Kleine-Budde <mkl@pengutronix.de>
Signed-off-by: Rob Herring (Arm) <robh@kernel.org>
---
Now a warning in v6.14-rc1, so please apply for 6.14.

v2:
 - Use brackets on else clause
---
 drivers/phy/phy-can-transceiver.c | 13 ++++++-------
 1 file changed, 6 insertions(+), 7 deletions(-)

diff --git a/drivers/phy/phy-can-transceiver.c b/drivers/phy/phy-can-transceiver.c
index ee4ce4249698..2bec70615449 100644
--- a/drivers/phy/phy-can-transceiver.c
+++ b/drivers/phy/phy-can-transceiver.c
@@ -103,6 +103,7 @@ static int can_transceiver_phy_probe(struct platform_device *pdev)
 	struct phy *phy;
 	struct gpio_desc *standby_gpio;
 	struct gpio_desc *enable_gpio;
+	struct mux_state *mux_state;
 	u32 max_bitrate = 0;
 	int err;
 
@@ -113,13 +114,11 @@ static int can_transceiver_phy_probe(struct platform_device *pdev)
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
+	} else {
 		can_transceiver_phy->mux_state = mux_state;
 	}
 
-- 
2.47.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
