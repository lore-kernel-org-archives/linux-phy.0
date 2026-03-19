Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3AD041075261
	for <linux-phy@archiver.kernel.org>; Thu, 19 Mar 2026 06:32:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=8OR7y/HDDJzZR5657Lwf+5DJgFE3Bt4ahSNL29jozL0=; b=wfjC/9lnwOcQZj
	ca5LH/O8ZOgn0ImIDqBHi+xFY95FRUHeIp63bkU/9cLowcoT3UnR9SYfRaVUgMYLVj4a6xMpMMMvU
	MBuJAHtMH6GsVuhnd241qb4Abq3Zh46qt2zQB78AjmLn/qSoIjzCiOJyrDvfMs8k4hhPFukphmOtn
	yAu8UxJsYjOfNyopbUCXWQ2HBN/QXanDumKQrr9ZiRrsAtq1N3fktzpnP5yjeM7bxcAkgLyiRulD+
	T0oJ+JoXIvGcgLYgXvVbsayM2uIqSik6qvpqgQEJp/FOduqEyAZPHE7qvMp0aNhM0xkoSoc5b0EhY
	65+5oyXlAWsIMh14mCBw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w36vZ-0000000A3aN-2ydX;
	Thu, 19 Mar 2026 06:32:17 +0000
Received: from mail-wr1-x42f.google.com ([2a00:1450:4864:20::42f])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w36vX-0000000A3Zg-3fPb
	for linux-phy@lists.infradead.org;
	Thu, 19 Mar 2026 06:32:17 +0000
Received: by mail-wr1-x42f.google.com with SMTP id ffacd0b85a97d-43b5bded412so118673f8f.0
        for <linux-phy@lists.infradead.org>; Wed, 18 Mar 2026 23:32:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773901934; x=1774506734; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=IJ9NiSIiQ1WJu3u1uHUgooQ8ToYMfuDrih6eaFZM5jk=;
        b=IptkOohL2wFpBCQfKTCKt+EX12pmHerk5mhRdnD+DvEYl+cqln7g/vwZBRvp0eLp6K
         jQEveKsCnnS25y7C1N0M+ldlwYE1dFXC9G2gDM63rgEv3e7Z6uxcSNrHVbfeBNPxD4Kl
         xj7kNJFwqBu3IqGN4O9bjkAjL7y9jGQ29SWmIrdYFV+/K78ysL3DeKnluiIJYEVuHLNz
         3dOIRb+PUjiSAnmYVpQ8O3wmcvOctKs84thOiMccaRFZsbDXQTZb/Yz/MwVvX8B1F2iw
         bX4+GAfddrsM+PbNYwv+7bZ40cbtR7Mxyib4buDS3Fq786k4FC959/fUM8J56cA/j1rC
         Zbww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773901934; x=1774506734;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=IJ9NiSIiQ1WJu3u1uHUgooQ8ToYMfuDrih6eaFZM5jk=;
        b=Czzt0U8f3FDWH7IGH9BliChLr9Krqu8+TAc/spoqpnk50TuQwxEJurpY5ofRLUjmXj
         o+5sRqBFB+KajhgoAby2iqZjMLO2bDbIHoDwMc06lyHrW2/8iNli8BWceyHrR3qmJaoK
         H2xLGPykPLFSAT3eohZh6G9ldLrsVEPJkMBaybz/3/rSo1u8+VyQXWdaHJ9WrsClD7hD
         1rcBozZx0Rcih8dsqfk+JFzjE0d3UaZTHJ5yJAUHxdloqauifohbHT4w6Se3QdUT7vuc
         Ht0ELWq+Pw5CAsOnUOmoYLu8ejNUscKlFdNuV1AUnuWfsE0N23lqxV49hAlAxJXjpDMO
         sJwQ==
X-Forwarded-Encrypted: i=1; AJvYcCWS9lm5fjmnWb3me6hM1QYQTCUi8wJlRx64NJyLS7QhUZM5ethZZNF2zihp/7QaG2j8LRgmmBJVcpM=@lists.infradead.org
X-Gm-Message-State: AOJu0YyZ9XVvkl7BxCwnUNICcCVzo6UFTkwf4ySqu3MJPBjad9yhxIQv
	Vx7ff/pwi4gNscGuwHK3umGnJPZptedFHjruDprAj/6u9XlgsB4fL+P6/lxjEQ==
X-Gm-Gg: ATEYQzyK6zHyK1IsWo/oycSxJRC0K5CWJJLJjOBgBPnAT5l0L60nuEKSbUbMMLhNNq/
	vGlAbOGz0xOXeI2AYj5bBeJpB2IKqYj4DGyOANpgzYggOqZO//M0vgoKSAan4jFGoz5gAGOXvkV
	kTAv7KD2MOjfHFn4QOhfCGJpQc01KbHc1uHl7IQ34MV3CKwvQXZN+7xvyg799xXR+y35qac/RVo
	5yElOogG56umXIILagmxnvdZ4uo8EyNC4AgRc6eiEqdd6axeKd+vpl5sPtS5igkF6+SBW5W56EB
	ZW8DVdO5wYhQTN63euLCGNC/FHuK8c8Lx0pbPaqbTprR30q1nS36hb9IpOMyqjjiHpz1x3c4oE1
	AOzglkmwoxbeqm/qN3YNJqBANldwAAW8gNA9cryciTBmzvnR26P/47yG41CSBwgJvqpr7hdTqpP
	oiXt6rE3KN1YY9/AhoRXQZj/1t3ymxPiI=
X-Received: by 2002:a5d:5d85:0:b0:43b:4a2c:ff4 with SMTP id ffacd0b85a97d-43b527c40a9mr10603805f8f.33.1773901933594;
        Wed, 18 Mar 2026 23:32:13 -0700 (PDT)
Received: from biju.lan ([2a00:23c4:a758:8a01:8326:7b31:bf82:d2d0])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43b5189971asm13554499f8f.30.2026.03.18.23.32.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Mar 2026 23:32:13 -0700 (PDT)
From: Biju <biju.das.au@gmail.com>
X-Google-Original-From: Biju <biju.das.jz@bp.renesas.com>
To: Vinod Koul <vkoul@kernel.org>
Cc: Biju Das <biju.das.jz@bp.renesas.com>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Prabhakar Mahadev Lad <prabhakar.mahadev-lad.rj@bp.renesas.com>,
	Biju Das <biju.das.au@gmail.com>,
	linux-renesas-soc@vger.kernel.org,
	Pavel Machek <pavel@nabladev.com>
Subject: [PATCH v2] phy: renesas: phy-rzg3e-usb3: Fix malformed MODULE_AUTHOR string
Date: Thu, 19 Mar 2026 06:32:07 +0000
Message-ID: <20260319063211.5056-1-biju.das.jz@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260318_233215_918979_22ECA8DD 
X-CRM114-Status: UNSURE (   9.05  )
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
Closes: https://lore.kernel.org/all/abp4KprlYyU+jMPu@duo.ucw.cz/
Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
Signed-off-by: Biju Das <biju.das.jz@bp.renesas.com>
---
v1->v2:
 * Updated lore link to make it shorter
 * Collected tag
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
