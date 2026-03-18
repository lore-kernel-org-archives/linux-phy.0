Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C9D01103E167
	for <linux-phy@archiver.kernel.org>; Wed, 18 Mar 2026 12:01:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=rmEd+RTzsXtv91Pyw8diHK1g8kF73BuwUQm5vpBPUfo=; b=oPXM0LHKn7O0WP
	lHSm/8ht0iBFrlJ5ezpsCBQBWmeqdO7ubq9xNyDjUG5Q/bvzCExyeunNGl+7vCCMINO155Vjc+SLh
	6OjoRADsQN0W8oKl6z+82zQdhE9UB3vIMYA+d46xt7/GA+hWVXAEKwcNqsuA0XXlYBBiyNKieDTVW
	18KDXXJqp+U6WdHdd+X7q8KJTGPlXS1Nkk1qDfI+t9/vd263v9QgHieYFkLM8UZ8k4aZ3HQLWvNEx
	WnhwVAxpf0r/Kx0uxq+FRN1GnlN7wrXcfOCOA1bh8Wjd7WJTC1WH6gO+R2L9MMxRt39Yo842/Mxp+
	WJFzE6QZiWA9ePegoIhg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w2paI-00000008M5n-0Qwy;
	Wed, 18 Mar 2026 12:01:10 +0000
Received: from mail-wr1-x436.google.com ([2a00:1450:4864:20::436])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w2paF-00000008M4r-3lBh
	for linux-phy@lists.infradead.org;
	Wed, 18 Mar 2026 12:01:09 +0000
Received: by mail-wr1-x436.google.com with SMTP id ffacd0b85a97d-439c6fc2910so5158646f8f.0
        for <linux-phy@lists.infradead.org>; Wed, 18 Mar 2026 05:01:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773835265; x=1774440065; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=gZAj4fK5iSCV83/aQZvDuyGn6EJB/MCw9INg+1MusCE=;
        b=nl+XcWeWpAbwkWTbZnhN8ySvvMVoasAQ7F8DC+nKyyJcapqMnBLEhDuOnRtWTiYL1N
         boYMHwCjOcDOlwzrJABSG8uR0FUYjIK1lrgcNdPNdQQ7CyjSX4RmEiZooDI9OSuHt9NU
         YylOomGjrhLl0nUV6xwHkDBwgOlewN0+7oYhNAF+/3CLjy4LX2qgM0iocxw65fXXSUca
         WwdDAF2/9uhwoaqfWmuYxE82sT/R+oze16YBLt4gCDUa7aewBo9fpMq/kybFOHl9fosS
         dS1kz82kwthY+OrEXGLtb8NK943Tb00+LetUPNf1hgUO0kzJ4aXyNRlOVTtueLgsArl1
         /v1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773835265; x=1774440065;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=gZAj4fK5iSCV83/aQZvDuyGn6EJB/MCw9INg+1MusCE=;
        b=nTJZo+PuGKtrraq8bxIpMzL/DeN1cKBFtPXhEIeajr8lZ7GEKMkRKvIZ6vwFqKNjDS
         hfWV199NeniSgBF1kcj7/f9b59joAVBw2o91Hq/B8npVaFoi0nQtb/W7UsZ5Z6qp6QAb
         IOnYq1/BiFhBAK+GyEN0IOUUYemsPr8JJKTgTnF1UKGWu7V9oQPP6PMuyekmRZiq51Lz
         AFfe6x84BbWw724qyWhwxohFM4/zagsOtZN/Lqno12Nr5fGmbWarjv/9aANSz6oFrUAj
         HxowYUlmz7XGfAS+4ehcjiCjGf9zDFfFokYfNdOdB4UHUhjrs2+HCxrZ7qUk3v69d5Gn
         8JkQ==
X-Forwarded-Encrypted: i=1; AJvYcCWOI41wM1m34f7HGj6UKgPjv4SZWw/HgsOKfuO84S2Vg89RL8Yu+odYB4RuS4jNM0Tgfpw9kU8borI=@lists.infradead.org
X-Gm-Message-State: AOJu0YwZPp8SDRzcuMsMHEtTJiradW2SE/IjD/2xOZm2EgdZMlEz2aec
	o3uoBeeOTvHxYIV8BVPsQdYeRYHxXzcUUZieH0i8IRAv+Kf6DbzxwPaU
X-Gm-Gg: ATEYQzyr4Yi+s1fsgztkilDIvqwL7BfEdnBllOLJGvn+dY2ekvK1QhG4HrIGKA26SGL
	7xxnfmrUcj6KdEwhVXdRTWd6Bbv/nyUERNtR2gzFQcouORaLvLym0a0u90iGmXO/RU0VszpRPrb
	qQ3UogB+Mng1HAvPSkoExbRUDrCM06rdjPFxhqvkdg0uODTczdMjiGP+1kijQqAM6JYws752fHA
	DU2LaWiwdpIjs4qoxyOwFhJRiVA6+9cbMTsvI7hpnScDmTbEK6Zi4S2afXY1UnViz1lsKexb8o+
	7gSdZBDTXqmTCHj7nBNzA6GlADR+pR1Z0BJhxq0DBGobbU0Cms7S2fKjYMu1wtlZ2jgbdVSPiix
	+2c6Nm8E1XAnz0XLR+6ts8TedB5TvsHDpt/L85ZoWhhfqwmQ3zCBZKCCE5GgrQ7oCq9Wab3yi/6
	1mtXPK6UugnNxUkReiIEz5Qve6Rv+dzXHWkenNiboUcjed7JmQ
X-Received: by 2002:a05:6000:2381:b0:43b:48e3:fbee with SMTP id ffacd0b85a97d-43b527c7b5dmr4745860f8f.37.1773835265018;
        Wed, 18 Mar 2026 05:01:05 -0700 (PDT)
Received: from localhost.localdomain ([2a00:23c4:a758:8a01:d643:4385:f93a:2085])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43b51892161sm7849309f8f.21.2026.03.18.05.01.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Mar 2026 05:01:04 -0700 (PDT)
From: Biju <biju.das.au@gmail.com>
X-Google-Original-From: Biju <biju.das.jz@bp.renesas.com>
To: Vinod Koul <vkoul@kernel.org>
Cc: Biju Das <biju.das.jz@bp.renesas.com>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Prabhakar Mahadev Lad <prabhakar.mahadev-lad.rj@bp.renesas.com>,
	Biju Das <biju.das.au@gmail.com>,
	linux-renesas-soc@vger.kernel.org,
	Pavel Machek <pavel@nabladev.com>
Subject: [PATCH] phy: renesas: phy-rzg3e-usb3: Fix malformed MODULE_AUTHOR string
Date: Wed, 18 Mar 2026 12:00:45 +0000
Message-ID: <20260318120102.226118-1-biju.das.jz@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260318_050107_944311_F44A6B19 
X-CRM114-Status: UNSURE (   8.75  )
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

From: Biju Das <biju.das.jz@bp.renesas.com>

Fix a malformed MODULE_AUTHOR macro in the RZ/G3E USB3.0 PHY driver where
the author's name and opening angle bracket were missing, leaving only the
email address with a stray closing >. Correct it to the standard Name
<email> format.

Reported-by: Pavel Machek <pavel@nabladev.com>
Closes: https://lore.kernel.org/cip-dev/abp4Y2FVspUgEpCT@duo.ucw.cz/T/#ma80454df129c8cfcbe48d75f3b4abe697925c6f8
Signed-off-by: Biju Das <biju.das.jz@bp.renesas.com>
---
 drivers/phy/renesas/phy-rzg3e-usb3.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/phy/renesas/phy-rzg3e-usb3.c b/drivers/phy/renesas/phy-rzg3e-usb3.c
index 6b3453ea0004..030c600a53e6 100644
--- a/drivers/phy/renesas/phy-rzg3e-usb3.c
+++ b/drivers/phy/renesas/phy-rzg3e-usb3.c
@@ -256,4 +256,4 @@ module_platform_driver(rzg3e_phy_usb3_driver);
 
 MODULE_LICENSE("GPL");
 MODULE_DESCRIPTION("Renesas RZ/G3E USB3.0 PHY Driver");
-MODULE_AUTHOR("biju.das.jz@bp.renesas.com>");
+MODULE_AUTHOR("Biju Das <biju.das.jz@bp.renesas.com>");
-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
