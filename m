Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 26A6AC369BE
	for <linux-phy@archiver.kernel.org>; Mon, 14 Apr 2025 11:16:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Bl1kn2xSZ7CT7jxvDW6cgfVIvK+I3tZha4xKm4BiD/k=; b=rt8xGhLufeEVyn
	/yL9LeTTvEpZFhRu19LqfJmDanO/GEeR0tsiZoMFglHQkXZYw+NaTmOzzakF8mWzI1xrsk3QTWscP
	hvZTLQsld/eXWQ4T55nTovJXDPSjoHL7WWwyP1ms29dv1u9h+iwJs53l+4NaX08cw2usWBLZ3/fGo
	2Jm3CCa04g1HLhvzxxBFJ7BJ8zVyGKGak0AP234KKBJKHMm0SAduOQ5T1nF/UcDHaYNEO7EtPLG7S
	rbAMC/HOA7ovp4RZ2mgdsOo2LC/ayOpEDcRGHmdoiht9fHQde80EnI8lpTJH//f6HnZIjs9yFVLnv
	9Q4rlnPwRD5WKCZDWpYg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u4HnJ-00000001ilA-3hxk;
	Mon, 14 Apr 2025 11:16:05 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u4Hja-00000001hBF-20f3
	for linux-phy@lists.infradead.org;
	Mon, 14 Apr 2025 11:12:15 +0000
Received: from [127.0.1.1] (91-158-153-178.elisa-laajakaista.fi [91.158.153.178])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id F0A111648;
	Mon, 14 Apr 2025 13:10:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1744629010;
	bh=UkXw5jrtx4cXq2fBCmUZ7O32tBWjC1bfsn24JsFx6zI=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=ErkGSDpcsKUeTKMVIa2OJ1RhpmIh0brnMOr2wbWfcKpEJaC5dMfGrAHUldwZVv98w
	 QEHzQre26nWTlXq/yY11ma6ggeB4BZwWqAU9e0aL5VQs4ufaZS8ipPFPvt+djNfo9v
	 MMPAP1hq8lJEPnl+Eea6JCOj6AQZQr51k+62x4Iw=
From: Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>
Date: Mon, 14 Apr 2025 14:11:15 +0300
Subject: [PATCH v3 06/17] drm/bridge: cdns-dsi: Remove extra line at the
 end of the file
MIME-Version: 1.0
Message-Id: <20250414-cdns-dsi-impro-v3-6-4e52551d4f07@ideasonboard.com>
References: <20250414-cdns-dsi-impro-v3-0-4e52551d4f07@ideasonboard.com>
In-Reply-To: <20250414-cdns-dsi-impro-v3-0-4e52551d4f07@ideasonboard.com>
To: Jyri Sarha <jyri.sarha@iki.fi>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, 
 Andrzej Hajda <andrzej.hajda@intel.com>, 
 Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>, 
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, 
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
 Jayesh Choudhary <j-choudhary@ti.com>
Cc: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, 
 linux-phy@lists.infradead.org, Francesco Dolcini <francesco@dolcini.it>, 
 Aradhya Bhatia <aradhya.bhatia@linux.dev>, 
 Devarsh Thakkar <devarsht@ti.com>, 
 Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>
X-Mailer: b4 0.15-dev-c25d1
X-Developer-Signature: v=1; a=openpgp-sha256; l=674;
 i=tomi.valkeinen@ideasonboard.com; h=from:subject:message-id;
 bh=UkXw5jrtx4cXq2fBCmUZ7O32tBWjC1bfsn24JsFx6zI=;
 b=owEBbQKS/ZANAwAIAfo9qoy8lh71AcsmYgBn/O1+GHkd1JMbn6AHORSHHCtFItB9o8t/nB4qA
 fPdIhCBpyyJAjMEAAEIAB0WIQTEOAw+ll79gQef86f6PaqMvJYe9QUCZ/ztfgAKCRD6PaqMvJYe
 9TlND/925JQuITXscOZzU8SElgbI8MjB2tOzYOTHH0K50Due7e1jiwFBIteDez4syiWygB5yS9x
 zP5bKx8tDU0pVe8sDYrDyO5za9dzSAA4BeoLwfX05QcMAs/Ret2JaNN4U3W8kICzcWlHbAwXdaH
 4tXeZ2fOiPfjxqojlArHcDy+J0hvLkt5U5bELrF2kfotafyRGfUNd4IEZwy+jVTm7dYkR0SXbEE
 KwQUzoH4VfH/cLDbEL8PqKUf2B9XeOGH12mqQVEM/EW+7uZjxsNIJwOM6wcfUBbVqR5C3Aaomw5
 cZ8iOhmxBlrwDWBuM60cxcAPAx/mJACQRUM+AM9dVPM/f26+LmQ9etW//sIiKZRQoSQuTGwldrG
 qngbJv7dhpW3qvc6AZnVRrQBZGsMyTaU08eUZPQ+yg6l/bFZvcafQQtgzLyiuM0UFWQYds0/phZ
 iQCRVoBT07yD/PUuOOpLccOvZnB9MeH788GtHoHimCNeZXlq/Ppa3s2+xx6tdAbavNFPkmYrsCu
 0OAOYWzxIw9fpSPB1cW6g0WZGdFPl4l8aFVqE1H81UmslZ5MZJG35+39uOSlM8nynniic1TVRv7
 pa3K5hDpHp7YoWQSrqL7gnBYvEFys7Wd/NVT+dduoGoUI/AAwOu4XKXV6M+FDTnPhEZZCzFMRTx
 i2HwJrUdMK7zXeg==
X-Developer-Key: i=tomi.valkeinen@ideasonboard.com; a=openpgp;
 fpr=C4380C3E965EFD81079FF3A7FA3DAA8CBC961EF5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250414_041214_672129_F1B77D55 
X-CRM114-Status: UNSURE (   6.78  )
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

Remove extra line at the end of the file.

Signed-off-by: Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>
---
 drivers/gpu/drm/bridge/cadence/cdns-dsi-core.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/gpu/drm/bridge/cadence/cdns-dsi-core.c b/drivers/gpu/drm/bridge/cadence/cdns-dsi-core.c
index 1d300f0da2f5..5315d572f7ab 100644
--- a/drivers/gpu/drm/bridge/cadence/cdns-dsi-core.c
+++ b/drivers/gpu/drm/bridge/cadence/cdns-dsi-core.c
@@ -1435,4 +1435,3 @@ MODULE_AUTHOR("Boris Brezillon <boris.brezillon@bootlin.com>");
 MODULE_DESCRIPTION("Cadence DSI driver");
 MODULE_LICENSE("GPL");
 MODULE_ALIAS("platform:cdns-dsi");
-

-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
