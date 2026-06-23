Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8E95FCD4F26
	for <linux-phy@archiver.kernel.org>; Tue, 23 Jun 2026 08:05:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=b3FlENxzpeZQB9PvpIXylighMlIkcsAnkdHe2p8tK70=; b=qZQCbTTBY37yjJ
	9bNpZsXbhPRf4FlcWmdkOTN/Gvpozwd/eMMak84yQqa3h7Sl1sgoeGNlKR4XwvgsJ0rL3lZcfLUCl
	XFLXje4IaZOGJDxI6Dtx6S/Y7pBRelS6/7oRTZZz/AYfYJA3xmTWFMdGgjQ/egq6YjepPDpK96Epu
	GGTHFeuG7YxLMCiMgOXMUIVWC0grjYRlKYIC9Wjk6fEbo6UVs/2L/+4yHGi3CsxO96VrzGfKv/PqO
	YqeCz5SFVyn2igcJDTv7vvRvSWzYwbj+PCQyIZI+wBlywUKybOXHIM+Us2gcH3Lj3oyiMtC4Jl5S4
	4Ue+9mG3Vk1pgC1ctvrQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wbw8h-00000005sVH-1CHx;
	Tue, 23 Jun 2026 08:05:47 +0000
Received: from mail-ej1-x62f.google.com ([2a00:1450:4864:20::62f])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wbw8e-00000005sTO-37cw
	for linux-phy@lists.infradead.org;
	Tue, 23 Jun 2026 08:05:45 +0000
Received: by mail-ej1-x62f.google.com with SMTP id a640c23a62f3a-c07ea058c1aso848961566b.2
        for <linux-phy@lists.infradead.org>; Tue, 23 Jun 2026 01:05:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1782201943; x=1782806743; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=gSJzQ7BvL7UAfauGXcds5wC0m0PWvmurBL/+ctg9lkA=;
        b=P77JNjByuGSuxnqrKIXk+go9IgVVELX0x8+H7OwcXYboT2usW9D02rP8d21UO97q0K
         Pim3XRzmsbSyGxnedlKVqq/X34LtiX1hn5Y3gcXS7bIO+3onGMfOhPOl5yOeSVaSA0cW
         Qn6/ZmXxtbB3SYPHV16mtfVWN2zsstzk32lgrfpnDDCH90BVAImCO2ijsmnlWbR2QWP/
         UzmXs5rbg3sNeLt/ywyOueIOQ7kaXatDB8fAsBEfvvkVCNQ3TO4V03+Z5XpWbXDP/tht
         yPcbxyAHw+bJQEoZG2HtkIzF3AAHf+0DXWQcIRbjGaKDDKKFJXtHGQtMhzVnRHEOXa4y
         i/og==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782201943; x=1782806743;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=gSJzQ7BvL7UAfauGXcds5wC0m0PWvmurBL/+ctg9lkA=;
        b=melQqSh/7lqd/mgy0qk7VY9NGq/LtLNMN1t/RVAwlg3q8ruGpVxX5+zmvIMHjVy9Ct
         NbPDV6bv6tEeE2M//WKP3PeDTb7Uh9IMJQBx9zskIiuk8tpiG3Unb1ZG5s16aGjdEtmG
         /9UdvkPOfl009z7mBAF+ERha9yGcfD2RT0g1znPaW+oUZd+YOfmhN6qxffVxaIcmwyW/
         oQ2VxHSWe08OuTyN49RwVsHOc25JjU8+636dwNdR0OI7UZwxHie29zhsUe2PTBRcQX97
         uqACr8AYOroN4Pe4Mq01iCboGQ7rVwdLMNg+sSEjVB5mctdc1C4jmdT9/m8qGGd9yvP1
         jDkQ==
X-Forwarded-Encrypted: i=1; AFNElJ+c5GvyhbXcmOM2w42UM8clJTWjY9H6oandkS3VhpojCgnVSozu2B4CiLyFixWWYsdMPag2gHNX5tU=@lists.infradead.org
X-Gm-Message-State: AOJu0YyHx88Tuo6Cm97pc9a5JGWLO0GpOgzkzOIcFFb4oG1ymceffpAI
	H8u4aWE1jwcWwO1NxA5eMK18OoneWqplsqk+Wg+AkVgktfx0qE9ElikCRs1RLdro
X-Gm-Gg: AfdE7clpM2PiU4L6alxi5I3nbnlmkRgOlC5wzBbmxU3arNYnlxKVXbAyQ9Vq7XsFAkU
	PBY15yC6th/rAi5Szc+wuPIyEi5giRA2VSdmqu595AkPY+MG3B9uwVOex2+8C1OpUT5kvXeTmrF
	tYs2ec2Wew5ehBe0kwi7onfyQRplwnsUeLSGoHRXYqdq5sUb0t0N6Eb3X5oZUiSl/bZvobrmhIW
	G00u/WJwfQQXzD7jO38v2r48zGC7wwCct+XMT65lwWcIbu/XXzHhUrGjnlnS4AmY/A/njVCdk45
	Q/kKaDQw8vEdoPBV6Yc8yJRWpUU2YekUf+o1nbhpXIEeFsx0XzfU0qwLyeFCmBqM4/Ev5uNWbkH
	6X/Q/V0zlGzTbGieraD+PyWDYSTr4bXBG34yONMH/TzOxF+ldaiaHsX6YzN9Yd+MECsVHUKqCb7
	z2YXPnQ1wfRaTr9QReEg3Zuj0ue+A8ifkvxe8wg4J8tnv5LCk+5NUEEXuqDnSzjQY3ncgSdyZc+
	wNmt8U=
X-Received: by 2002:a17:906:c14d:b0:c0d:1553:3da5 with SMTP id a640c23a62f3a-c108f0fcd14mr71897766b.35.1782201942670;
        Tue, 23 Jun 2026 01:05:42 -0700 (PDT)
Received: from localhost.localdomain (ip-89-176-136-191.bb.vodafone.cz. [89.176.136.191])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-46667221de7sm32486503f8f.33.2026.06.23.01.05.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Jun 2026 01:05:42 -0700 (PDT)
From: Petr Wozniak <petr.wozniak@gmail.com>
To: linux@armlinux.org.uk,
	andrew@lunn.ch,
	hkallweit1@gmail.com
Cc: kuba@kernel.org,
	davem@davemloft.net,
	edumazet@google.com,
	pabeni@redhat.com,
	netdev@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org,
	maxime.chevallier@bootlin.com,
	bjorn@mork.no,
	olek2@wp.pl,
	kabel@kernel.org,
	Petr Wozniak <petr.wozniak@gmail.com>
Subject: [PATCH net-next v3 1/2] net: phy: sfp: free mii_bus in sfp_i2c_mdiobus_destroy
Date: Tue, 23 Jun 2026 10:05:37 +0200
Message-ID: <20260623080538.7646-2-petr.wozniak@gmail.com>
X-Mailer: git-send-email 2.50.1
In-Reply-To: <20260623080538.7646-1-petr.wozniak@gmail.com>
References: <20260623080538.7646-1-petr.wozniak@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260623_010544_807623_4697FC5F 
X-CRM114-Status: UNSURE (   9.83  )
X-CRM114-Notice: Please train this message.
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

sfp_i2c_mdiobus_create() allocates the I2C MDIO bus with mdio_i2c_alloc(),
a plain (non-devm) allocation, and registers it. sfp_i2c_mdiobus_destroy()
only unregisters the bus and clears sfp->i2c_mii without calling
mdiobus_free(). As the only reference to the bus is then cleared, the
struct mii_bus is leaked.

This is hit whenever a copper/RollBall SFP module that instantiated an MDIO
bus is removed: sfp_sm_main() takes the global teardown path and calls
sfp_i2c_mdiobus_destroy(). sfp_cleanup(), on driver unbind, frees
sfp->i2c_mii directly, which is why the leak only triggered on module
hot-removal and not on unbind.

Free the bus in sfp_i2c_mdiobus_destroy() to match the allocation done in
sfp_i2c_mdiobus_create().

Fixes: e85b1347ace6 ("net: sfp: create/destroy I2C mdiobus before PHY probe/after PHY release")
Signed-off-by: Petr Wozniak <petr.wozniak@gmail.com>
---
 drivers/net/phy/sfp.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/net/phy/sfp.c b/drivers/net/phy/sfp.c
index 03bfd8640db9..c4d274ab651e 100644
--- a/drivers/net/phy/sfp.c
+++ b/drivers/net/phy/sfp.c
@@ -963,6 +963,7 @@ static int sfp_i2c_mdiobus_create(struct sfp *sfp)
 static void sfp_i2c_mdiobus_destroy(struct sfp *sfp)
 {
 	mdiobus_unregister(sfp->i2c_mii);
+	mdiobus_free(sfp->i2c_mii);
 	sfp->i2c_mii = NULL;
 }
 
-- 
2.51.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
