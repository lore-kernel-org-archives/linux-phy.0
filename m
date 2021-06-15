Return-Path: <SRS0=aWzV=LJ=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-16.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 59DD2C48BE8
	for <linux-phy@archiver.kernel.org>; Tue, 15 Jun 2021 19:07:03 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 2F337611EE
	for <linux-phy@archiver.kernel.org>; Tue, 15 Jun 2021 19:07:03 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 2F337611EE
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=arm.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tiHkss+93LZJ0y9VyXX0Op+K0LYV1nLA0QWeALtvyO4=; b=ROgQUHjV/8g6sn
	y0nNz9YxQE7iW60Llr2TQyYzO2qNvp6Xgpq/FNTwRqIggIJV5GtBA9oewlT8s4Dy5WH8ccZ9ebG6p
	TTnRXc9SVkeP2ULLmKHxWaTn1bsIRfiNQGyJqSNl35QfyGOH5F8E/S1pUyzLjhohmRJOsHq0lhgRM
	9kRPf3H4uiNg/1cSZuouP+1jw1UY+7+ug4fND1eKAKKdzdtvL24/qy2PJK6rFK50PFL0KPjbe9Scd
	pPaTl0l8DEREeKnJACb1PvIuJOKu1OuTgKDJYihk9weM328HRlVTV45ItDKkUEF5SymS/z7c1dex4
	642KAP726PhabUIff/MQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ltEOs-002KF7-H3; Tue, 15 Jun 2021 19:07:02 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lt9GD-000ByJ-AW; Tue, 15 Jun 2021 13:37:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=desiato.20200630; h=References:In-Reply-To:Message-Id:Date
 :Subject:Cc:To:From:Sender:Reply-To:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=T199OeuWzUOPej12/uy1V4u10un4dhco7/ls2jGV9Os=; b=oLlkqARB5U+2u9KRAvJned7YyR
 RN+buUyHxC36fFsRNRe6kg43/HzV3nUft6vQMJ5OfCSrBwucMhLbcbg5pi8BOdlgJs6oTu0U9dyxi
 6A0rO0QQ2IfJt1iiwGdGwd1RyzMELVZVDXcDTgfVzAx4wjG1BEccWCA47jNfy0Cs7VJWZfh0CTn+f
 zPJIKJZJasdQq0QjsJqcu6LmYd6YDSMWTDShQR7aAEWlZF0vyc8l20Sthv8s1c5p/DQ/rBn2go4n9
 HnlKyIAwsreT1ntGaOlCEk9ukO9ULkoIJDnqtYon1pb/dEYflzTqNvClkmU+46+ytPrwuw18/W14A
 xqYtYkIw==;
Received: from foss.arm.com ([217.140.110.172])
 by desiato.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lt6uj-007l9g-Pf; Tue, 15 Jun 2021 11:07:34 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 0FBD3143B;
 Tue, 15 Jun 2021 04:07:31 -0700 (PDT)
Received: from localhost.localdomain (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id AE4A43F719;
 Tue, 15 Jun 2021 04:07:28 -0700 (PDT)
From: Andre Przywara <andre.przywara@arm.com>
To: Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Jernej Skrabec <jernej.skrabec@gmail.com>
Cc: Rob Herring <robh@kernel.org>, Icenowy Zheng <icenowy@aosc.io>,
 Samuel Holland <samuel@sholland.org>, linux-arm-kernel@lists.infradead.org,
 linux-sunxi@googlegroups.com, linux-sunxi@lists.linux.dev,
 linux-kernel@vger.kernel.org, Ondrej Jirman <megous@megous.com>,
 Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 linux-phy@lists.infradead.org, linux-usb@vger.kernel.org,
 Philipp Zabel <p.zabel@pengutronix.de>
Subject: [PATCH v7 13/19] phy: sun4i-usb: Allow reset line to be shared
Date: Tue, 15 Jun 2021 12:06:30 +0100
Message-Id: <20210615110636.23403-14-andre.przywara@arm.com>
X-Mailer: git-send-email 2.14.1
In-Reply-To: <20210615110636.23403-1-andre.przywara@arm.com>
References: <20210615110636.23403-1-andre.przywara@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210615_120732_940509_E46F6BD4 
X-CRM114-Status: GOOD (  12.57  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

The USB HCIs (and PHYs?) in Allwinner's newer generation SoCs (H616)
rely on the reset line of USB PHY 2 to be de-asserted, even when only
one of the other PHYs is actually in use.

To make those ports work, we include this reset line in the HCIs' resets
property, which requires this line to be shareable.

Change the call to allocate the reset line to mark it as shared, to
enable the other ports on those SoCs.

Signed-off-by: Andre Przywara <andre.przywara@arm.com>
---
 drivers/phy/allwinner/phy-sun4i-usb.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/phy/allwinner/phy-sun4i-usb.c b/drivers/phy/allwinner/phy-sun4i-usb.c
index 142f4cafdc78..126ef74d013c 100644
--- a/drivers/phy/allwinner/phy-sun4i-usb.c
+++ b/drivers/phy/allwinner/phy-sun4i-usb.c
@@ -788,7 +788,7 @@ static int sun4i_usb_phy_probe(struct platform_device *pdev)
 		}
 
 		snprintf(name, sizeof(name), "usb%d_reset", i);
-		phy->reset = devm_reset_control_get(dev, name);
+		phy->reset = devm_reset_control_get_shared(dev, name);
 		if (IS_ERR(phy->reset)) {
 			dev_err(dev, "failed to get reset %s\n", name);
 			return PTR_ERR(phy->reset);
-- 
2.17.5


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
