Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BD253F5A8C5
	for <linux-phy@archiver.kernel.org>; Mon, 20 Apr 2026 23:10:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=DCP+LwyNyQjV87r4EPISWnicORq5pRFIipBm85jpxn0=; b=JQJVcsrXqhpNI0
	FD4x1ArGPScFtAwFVm8xD7MSn+KV8WZNthXm7g4Ps2WEEqLmJBI9QPegesE06xg9jo53mtgL2TTfi
	GQrzbPh800kstqlM3xDP5/4IlprMey+liB6DOs0T/nBlDA8R/oZGd74urq8z/8MODdsVW/O76LHZt
	tDcfvyPqbGHnDfzPRNbz8eLkvaF39JM8AewGEv0z+aQdvhVFFcgnA//YRE320vY/xxPE4BGrb87NF
	VEl0myZwllui/66sj9IfSzD1Mz43tHtaJQpOOR2ufTmlzrtiy9BVoDC09qjfM37+4C6Fh469zLlzs
	Dwa7LM6wDXCT9iFznYAw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wExlK-00000007nxl-3dJ7;
	Mon, 20 Apr 2026 23:10:42 +0000
Received: from mail-wr1-x432.google.com ([2a00:1450:4864:20::432])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wExlI-00000007nwy-2Y6B
	for linux-phy@lists.infradead.org;
	Mon, 20 Apr 2026 23:10:41 +0000
Received: by mail-wr1-x432.google.com with SMTP id ffacd0b85a97d-43fea39e066so2667136f8f.1
        for <linux-phy@lists.infradead.org>; Mon, 20 Apr 2026 16:10:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1776726638; x=1777331438; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=8BFbqe6zs9zdE69IPJo3pEdqtjhoEkNZOLj14gX1oP8=;
        b=UfVE2tFXMgVL5YcUGoXmdi+HBQojMVw3LSv9tEOp+yhGeybntzTNH0R4HotAacm2/Z
         Q2JmIEi4x5RdYjqdUHIg3ToMXMPwWaUZIN/l08e9yVAg6qVa5fHX3RsnJKX21WjZ1JKq
         YdorC6qkOF0AyJTkA6ZY3JdsN5dTDZzAU2g+/Iln+qgk7laf7TERB7H0wrV7iRAzmB++
         34WNqRkWqgDmUcAgyHFGkErm2QATe4BkBg/tiq6Af5fPyvm3U9gAZbg5T8k5dERC1Nk/
         6KYQK+HGUfZpqs/QFNmdqMyrZINCc3yipp8Pr2lmheY57dpv0aPoKQS+elo+xHlCit9m
         dDPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1776726638; x=1777331438;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8BFbqe6zs9zdE69IPJo3pEdqtjhoEkNZOLj14gX1oP8=;
        b=Ve9yZpJg2wp+sAwrUrmthbMO7c9Gc+l6gVpoi1ZybnT8uS9/AOSFfXwAygu6b0YTNs
         SAlf8oGq+d5nHmy5tSZ2V/z9qFmrjAayuNBUaWRNmwljUEQztS/d1juW33T3GOf9HboK
         021Zhyxkf+SQOPKt6CJe75qJaJDS9izv97fgNoazPAOAfoy7E10w08o5/vuSV3pVdj+H
         lqEcdS0P4wMc2SUQCIdV9HljJmr3lTcdgxLwxHDDl6ObcObXzJbfytR5z689A4d84DRp
         6WlE3QAMaPfyLX9BQCNz/oCZn4u2jV9Rx6T6Ogu+Z1vAg4T5LDVE5a5KDRAVtCD63r7I
         LzGQ==
X-Forwarded-Encrypted: i=1; AFNElJ8n1F3t0Vpbrl/2qFvZ8JmJv/TgtRGmu+9EwaUdNtQZNrV2PiHG9hBl0apaTPFr8T8XqWg9g/DNOYU=@lists.infradead.org
X-Gm-Message-State: AOJu0Yy7N4OmT+oqesSqg+OvMGFYq5N72L0QRQfBLqJgxnW+ADU1ipe3
	yuSEPOQBWZ+k7+GTl7pCLW10h7MoAu76BKY1r3dhO+dpOqVlzxSFHRSX
X-Gm-Gg: AeBDievAKsyiWULSTsEie9Zbk9xrlhOySnL0dP1UeDP4afyixULhSWw5cm9ClqaF4zg
	yxeKp1hZU0mgL0D+FiunH/5miEmAcQTV+odIqmwsYCuXAv9iLK5oRkrzEIDT/6QcPX4HvpMAIWv
	dC8QF1PEdnMOBeP7q3HH1BTY1qxIXv8kBUCDdR8OHPCyFiTCdCnRqwLKX8RR0YBLJhw81I148ep
	LHhAkknRC5caNCjZ0DUKgbmM23QEQK7XcYHToavO1S02MfkPNn0/ddDLMTXa/t/F3VU1ePnbMwY
	bdLS5WzESlYQIo3KnGFEBs5R0sKbqICa1ESyg3LYygtCFSOMrRdjZxMvt5K35Mgr//vXXkrgZqj
	7XYOa49HoMMRtRtfLOt9cQmRThgtCWhAj0GirrQE8qG7hLRQhg551wGx09b0BUXaREzRLteowqC
	CG1GaFeS0xV/meRFr4tSkaXsrSauL7N0J/cppHftiiwqi22AXiFbJtGKb/CJefj3vtC1YedehB4
	grbpa0epY6o/RSCyR4VlQ==
X-Received: by 2002:a05:6000:1acc:b0:43e:a70d:7622 with SMTP id ffacd0b85a97d-43fe3e0c612mr24008948f8f.22.1776726637610;
        Mon, 20 Apr 2026 16:10:37 -0700 (PDT)
Received: from dohko.chello.ie (188-141-5-72.dynamic.upc.ie. [188.141.5.72])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43fe4e3a174sm36837571f8f.18.2026.04.20.16.10.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Apr 2026 16:10:37 -0700 (PDT)
From: David Carlier <devnexen@gmail.com>
To: Sven Peter <sven@kernel.org>,
	Janne Grunau <j@jannau.net>,
	Neal Gompa <neal@gompa.dev>,
	Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Hector Martin <marcan@marcan.st>,
	Philipp Zabel <p.zabel@pengutronix.de>
Cc: David Carlier <devnexen@gmail.com>,
	asahi@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] phy: apple: atc: Fix typec switch/mux leak and UAF on unbind
Date: Tue, 21 Apr 2026 00:10:13 +0100
Message-ID: <20260420231014.35462-1-devnexen@gmail.com>
X-Mailer: git-send-email 2.53.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260420_161040_672175_1C8AC5B2 
X-CRM114-Status: GOOD (  11.68  )
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

atcphy_probe_switch() and atcphy_probe_mux() discard the pointers
returned by typec_switch_register() and typec_mux_register(). The
platform driver has no .remove callback, so the registered switch
and mux devices outlive the apple_atcphy struct, which is released
by devm cleanup on driver unbind.

A subsequent typec event (cable orientation change, alt-mode
transition) then invokes the registered atcphy_sw_set() or
atcphy_mux_set() callback, which retrieves the freed apple_atcphy
and dereferences it. Unbind followed by a cable replug or alt-mode
change is enough to trigger the use-after-free.

Save the registered switch and mux and unregister them through
devm_add_action_or_reset() so the framework references disappear in
step with the driver's devm-allocated state. Drop the unused struct
apple_atcphy::sw and ::mux fields, which were declared with the
wrong consumer-side types and never assigned.

Fixes: 8e98ca1e74db ("phy: apple: Add Apple Type-C PHY")
Signed-off-by: David Carlier <devnexen@gmail.com>
---
 drivers/phy/apple/atc.c | 27 ++++++++++++++++++++++-----
 1 file changed, 22 insertions(+), 5 deletions(-)

diff --git a/drivers/phy/apple/atc.c b/drivers/phy/apple/atc.c
index e9d106f135c5..4156fabad742 100644
--- a/drivers/phy/apple/atc.c
+++ b/drivers/phy/apple/atc.c
@@ -628,9 +628,6 @@ struct apple_atcphy {
 
 	struct reset_controller_dev rcdev;
 
-	struct typec_switch *sw;
-	struct typec_mux *mux;
-
 	struct mutex lock;
 };
 
@@ -2066,15 +2063,25 @@ static int atcphy_sw_set(struct typec_switch_dev *sw, enum typec_orientation ori
 	return 0;
 }
 
+static void atcphy_typec_switch_unregister(void *data)
+{
+	typec_switch_unregister(data);
+}
+
 static int atcphy_probe_switch(struct apple_atcphy *atcphy)
 {
+	struct typec_switch_dev *sw;
 	struct typec_switch_desc sw_desc = {
 		.drvdata = atcphy,
 		.fwnode = atcphy->dev->fwnode,
 		.set = atcphy_sw_set,
 	};
 
-	return PTR_ERR_OR_ZERO(typec_switch_register(atcphy->dev, &sw_desc));
+	sw = typec_switch_register(atcphy->dev, &sw_desc);
+	if (IS_ERR(sw))
+		return PTR_ERR(sw);
+
+	return devm_add_action_or_reset(atcphy->dev, atcphy_typec_switch_unregister, sw);
 }
 
 static int atcphy_mux_set(struct typec_mux_dev *mux, struct typec_mux_state *state)
@@ -2146,15 +2153,25 @@ static int atcphy_mux_set(struct typec_mux_dev *mux, struct typec_mux_state *sta
 	return atcphy_configure(atcphy, target_mode);
 }
 
+static void atcphy_typec_mux_unregister(void *data)
+{
+	typec_mux_unregister(data);
+}
+
 static int atcphy_probe_mux(struct apple_atcphy *atcphy)
 {
+	struct typec_mux_dev *mux;
 	struct typec_mux_desc mux_desc = {
 		.drvdata = atcphy,
 		.fwnode = atcphy->dev->fwnode,
 		.set = atcphy_mux_set,
 	};
 
-	return PTR_ERR_OR_ZERO(typec_mux_register(atcphy->dev, &mux_desc));
+	mux = typec_mux_register(atcphy->dev, &mux_desc);
+	if (IS_ERR(mux))
+		return PTR_ERR(mux);
+
+	return devm_add_action_or_reset(atcphy->dev, atcphy_typec_mux_unregister, mux);
 }
 
 static int atcphy_load_tunables(struct apple_atcphy *atcphy)
-- 
2.53.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
