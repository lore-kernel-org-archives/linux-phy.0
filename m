Return-Path: <SRS0=Qy0S=KO=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.1 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F1E8C43460
	for <linux-phy@archiver.kernel.org>; Wed, 19 May 2021 10:45:13 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 6D38A611BD
	for <linux-phy@archiver.kernel.org>; Wed, 19 May 2021 10:45:13 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 6D38A611BD
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=arm.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:MIME-Version:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:References:In-Reply-To:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=tiHkss+93LZJ0y9VyXX0Op+K0LYV1nLA0QWeALtvyO4=; b=aXbMy5DsvRk5Y0VLOEvIBy8dH2
	lUw21kK0otq415q4/HYydR9vRmywVJyAk/e6Jp/q4LQpLaPDYokm8kIw2dXQESZo9+Q+EcrJFOoVf
	bsNURHLrnFOvG4HOJhJY9bpnlY+zwTToVA9cYIJIHlMrUtteZQ8TJTvpirp/P6z7g3n2Xf/Wihpkw
	8z8g20Fzoh3wlVsqG5O1KZkLgd1V82CJOQoBgqqZrRsZjcP4g8P0/Pa8yJUR49mpgil5KPi+RT1Mf
	N4f7JICOqLu4KdktqFVyIv+bqprRY0IJckCtdQHuAUo5Dfg5V6YSGw9hGKV5M3fHexBf3Xp56T3Xd
	SeFVRs4g==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1ljJhP-003dG8-S6; Wed, 19 May 2021 10:45:11 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1ljJew-003cHx-Qx; Wed, 19 May 2021 10:42:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=T199OeuWzUOPej12/uy1V4u10un4dhco7/ls2jGV9Os=; b=oFu5Dqmq0EhkXqB8a9drl9mkZ9
 TDYgGdl9mALnpglHN89HkHGaTjRb4Y5iGlCrfaQ2y9uedtD3cxKSti0sAj2o4GorDlk1hwlNmtT7n
 j2Km+i3auMTvk+mJmVSQxZ6yeuZvC6fMESgTpn/1Wp/tHZxSojn2O2Nl1qCjt+tWmIPUbWMHXg9kt
 2zsIXBfG1xG0SEPoggru1lCAYo+0eGoN6lNfD6ylkzk1kwVffL3qhuHNGVQojhMuFq16wcQKKDr9e
 d3VXXyNGUqX9r/toFbWMPH1Qjq4GA+XONsOanTzEEAcAhEt1STpHkoUjaV/Zk44VDg08yy/L0D5Wh
 TDSw+AUw==;
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
 id 1ljJeu-00FMVi-9y; Wed, 19 May 2021 10:42:37 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id A65FF11B3;
 Wed, 19 May 2021 03:42:34 -0700 (PDT)
Received: from localhost.localdomain (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 52BF53F719;
 Wed, 19 May 2021 03:42:32 -0700 (PDT)
From: Andre Przywara <andre.przywara@arm.com>
To: Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Jernej Skrabec <jernej.skrabec@gmail.com>
Cc: Rob Herring <robh@kernel.org>, Icenowy Zheng <icenowy@aosc.io>,
 Samuel Holland <samuel@sholland.org>, Ondrej Jirman <megous@megous.com>,
 linux-arm-kernel@lists.infradead.org, linux-sunxi@googlegroups.com,
 linux-sunxi@lists.linux.dev, linux-kernel@vger.kernel.org,
 Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 linux-phy@lists.infradead.org, linux-usb@vger.kernel.org,
 Philipp Zabel <p.zabel@pengutronix.de>
Subject: [PATCH v6 11/17] phy: sun4i-usb: Allow reset line to be shared
Date: Wed, 19 May 2021 11:41:46 +0100
Message-Id: <20210519104152.21119-12-andre.przywara@arm.com>
X-Mailer: git-send-email 2.14.1
In-Reply-To: <20210519104152.21119-1-andre.przywara@arm.com>
References: <20210519104152.21119-1-andre.przywara@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210519_034236_408793_023C1A1A 
X-CRM114-Status: GOOD (  13.05  )
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
