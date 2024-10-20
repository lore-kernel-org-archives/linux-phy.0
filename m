Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6C075D3C92A
	for <linux-phy@archiver.kernel.org>; Sun, 20 Oct 2024 16:51:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=+vxnxQou8FFtl+6NLIdjq4enwNfxLV1I+Xpk5jczg4M=; b=P6qYp82Sgf6ADs
	M94SA3xopi6spwdeqg/b7Pk+U3BbVfsyhWwJgsiZ0fTFzRygi9g2v46VWfizpFoKYJ439ofVLzoQ+
	B9CVd3oWyJ5h1p37YXgI5w88IvZJekVOsr2Vp4R1vpbMmDBZz3BXlyG7GZT59FxuN5MrhwLhHwuoH
	LNXiZ5Y8jIkRbJ72zUhjcRiF5gt7vOgKen9pRUEvmpPDIKYLqbmElCRG+72FsyG5Eu6f9ODbjxXSv
	GBPRM05VeuxioU3cVhTqQs+dX3rAyNmH1UixKU7ucw0OZjKEk2U2ncb6HZp+oT2JCfdZzClet/8We
	UY1xBdUJyb8uiGZlGCqQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t2Z95-000000059F5-08Jc;
	Sun, 20 Oct 2024 16:51:11 +0000
Received: from mail-il1-x131.google.com ([2607:f8b0:4864:20::131])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t2Z92-000000059Ec-1Uwk
	for linux-phy@lists.infradead.org;
	Sun, 20 Oct 2024 16:51:09 +0000
Received: by mail-il1-x131.google.com with SMTP id e9e14a558f8ab-3a39620ff54so13514975ab.1
        for <linux-phy@lists.infradead.org>; Sun, 20 Oct 2024 09:51:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1729443066; x=1730047866; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=83791tpaLyYi3ZWkO6Z9ZFEE4sUYJWOvQU7P98DEjZo=;
        b=EnJEFm4leBWvOy52trQrkqbjmCA/wNiDzLKET7Rrvqs/yiGVF3NAu05YENf6a0yLjQ
         2h6q1+vnZID4i3xWBAgVQ0q+PJZDC6xi0FxqHj+KQkLnA5Uxr9wISgCCya/vUVzuyqjD
         kA/Jq2aob2tNNNip3GdUO7Zoo/UUen/ZZrXCGMKVrSsdMFJvK1s/1BwuJ9osY+3GZuCM
         6bMg9CEM4TSYANxMIU/zp5d9kM/qXcD6ebZoGnd/E4etR4aY6WYu3ufmUOu5NaGBoqJI
         cgQtyIJreDw1KlXn688zyqtEZBZUB48bzMxKPOPNfKz/ncokPC5ItiPdTrZ1IhiOusop
         y3ig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729443066; x=1730047866;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=83791tpaLyYi3ZWkO6Z9ZFEE4sUYJWOvQU7P98DEjZo=;
        b=UGSjqREYxxci8AwZPTtL1kdURROoMOxg+CIt61gVjGk+83LKDEqP5HfBtcE/dLI5e2
         K58Nd//ZSoMOtC64wzs4adWIFJzAtDmk+0XKxgUgSG4eujxpkNHWEXBOVTKC5QNM7d0u
         N3EorF8eo0ldMCS9rsu4q9gq3ZyZrYHLm6ryDqLRaW31AbKSMpafwn1GlKuPdMn0oajm
         DyHXIz6DNY7qPz1Yadna7a+jOEEv2UvyYUY5s8ZdOL9bWAftbZ/+wvGguOduD6Qc7+MZ
         qF9ZzzVj5xVPZ8nVv5+ozdDbakQBH8sAHjO4s59l7yvf/VxHbcRFlG+2wKniH/OwyKvn
         sD6A==
X-Gm-Message-State: AOJu0YyfG+QCiTBfbuMajdp417fZKj+cyJp+2r36WIWPlBkKxg8EwkZ6
	xktuJ8LDjPzwNbG2pDDqaZj6OXDMgNu1tOiw10IvCMDhlXF8rc2pDnPikg==
X-Google-Smtp-Source: AGHT+IGZSuHCfLPLCFrOJy8WIidvXYITJodQVFuPRmWCdbvG7lYSa4Vi6MUftNfbdwhE6XcysTCphQ==
X-Received: by 2002:a05:6e02:154c:b0:3a3:972a:3991 with SMTP id e9e14a558f8ab-3a3f40a859dmr79426105ab.16.1729443065996;
        Sun, 20 Oct 2024 09:51:05 -0700 (PDT)
Received: from aford-System-Version.. (c-75-72-162-184.hsd1.mn.comcast.net. [75.72.162.184])
        by smtp.gmail.com with ESMTPSA id 8926c6da1cb9f-4dc2a52fab3sm533821173.35.2024.10.20.09.51.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 20 Oct 2024 09:51:05 -0700 (PDT)
From: Adam Ford <aford173@gmail.com>
To: linux-phy@lists.infradead.org
Cc: aford@beaconembedded.com,
	sandor.yu@nxp.com,
	Adam Ford <aford173@gmail.com>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Frieder Schrempf <frieder.schrempf@kontron.de>,
	Dominique Martinet <dominique.martinet@atmark-techno.com>,
	Marco Felsch <m.felsch@pengutronix.de>,
	=?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>,
	Lucas Stach <l.stach@pengutronix.de>,
	linux-kernel@vger.kernel.org
Subject: [PATCH 1/3] phy: freescale: fsl-samsung-hdmi: Expand Integer divider range
Date: Sun, 20 Oct 2024 11:50:45 -0500
Message-ID: <20241020165102.340838-1-aford173@gmail.com>
X-Mailer: git-send-email 2.45.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241020_095108_415195_0E4068AD 
X-CRM114-Status: GOOD (  11.82  )
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

The Integer divder uses values of P,M, and S to determine the PLL
rate.  Currently, the range of M was set based on a series of
table entries where the range was limited.  Since the ref manual
shows it is 8-bit wide, expand the range to be up to 255.

Signed-off-by: Adam Ford <aford173@gmail.com>
---
 drivers/phy/freescale/phy-fsl-samsung-hdmi.c | 11 +++++------
 1 file changed, 5 insertions(+), 6 deletions(-)

diff --git a/drivers/phy/freescale/phy-fsl-samsung-hdmi.c b/drivers/phy/freescale/phy-fsl-samsung-hdmi.c
index 2c8038864357..3f9578f3f0ac 100644
--- a/drivers/phy/freescale/phy-fsl-samsung-hdmi.c
+++ b/drivers/phy/freescale/phy-fsl-samsung-hdmi.c
@@ -406,16 +406,15 @@ static unsigned long fsl_samsung_hdmi_phy_find_pms(unsigned long fout, u8 *p, u1
 				continue;
 
 			/*
-			 * TODO: Ref Manual doesn't state the range of _m
-			 * so this should be further refined if possible.
-			 * This range was set based on the original values
-			 * in the lookup table
+			 * The Ref manual doesn't explicitly state the range of M,
+			 * bit it does show it as an 8-bit value, so we'll reject
+			 * any value above 255.
 			 */
 			tmp = (u64)fout * (_p * _s);
 			do_div(tmp, 24 * MHZ);
-			_m = tmp;
-			if (_m < 0x30 || _m > 0x7b)
+			if (tmp > 255)
 				continue;
+			_m = tmp;
 
 			/*
 			 * Rev 2 of the Ref Manual states the
-- 
2.45.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
