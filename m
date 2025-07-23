Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1A22AC87FCA
	for <linux-phy@archiver.kernel.org>; Wed, 23 Jul 2025 10:22:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YCBd2+nlouba9ug57GBTICrgXFHtXjVZpF5fLB6/86Q=; b=kTb249u0TWCB/b
	l+HFQeJ3DtEt3YgsKeVyKupX9FUejmX7nKhjf1kkd/NCEnChOApz13eBrYLHKK7ixvbUevbvplPFl
	YZ4A3Rkjl/qeFzf2Q8ab+50hS3BNRIasLU7fzbErv+1kOMVV/fZqYD5vYiTmYjRVOuEb8mrw5nW9l
	GVpTljeAX+uOSneV7uJrAcd/fVtCBtZ6BAv2Bpn4WAD63NquZ7eXvvGTIiYgu9/OVYqAHTbijPrJu
	r48II2IT2AF36N00iQ5ffM0RFWFRPpJ1mUgP7bqWA9XRCFJO9/vghzAW1zrTB55G/hcMvVjaLyyqX
	IPLLMSvVd6BKzffvPMtA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ueWcR-00000004fYX-3Uit;
	Wed, 23 Jul 2025 10:22:39 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ueWM2-00000004cHk-2II6
	for linux-phy@lists.infradead.org;
	Wed, 23 Jul 2025 10:05:43 +0000
Received: from [127.0.1.1] (91-158-153-178.elisa-laajakaista.fi [91.158.153.178])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 4733D105D;
	Wed, 23 Jul 2025 12:05:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1753265103;
	bh=9P0ZS+LOE91FSs5KuTmn6c1+z0gltGmsa74PXoQ3bjk=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=OTQZQRe+Xe+jKkNDpMRy5sxjKXIQUHoNoaI2hJLCzfHO/1lNHytQ2jQqt/LCiHrko
	 Jo06mc2PyCukPcM1NnxGND//qfmozq+Eda6Xvdtj75/1gFa6/3k5VnU8aBg0OGHUID
	 N+SYcWAe4VIEF/X0Ej5IxvIYjglTWLwANlIRkOUA=
From: Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>
Date: Wed, 23 Jul 2025 13:05:10 +0300
Subject: [PATCH v5 04/15] drm/bridge: cdns-dsi: Remove extra line at the
 end of the file
MIME-Version: 1.0
Message-Id: <20250723-cdns-dsi-impro-v5-4-e61cc06074c2@ideasonboard.com>
References: <20250723-cdns-dsi-impro-v5-0-e61cc06074c2@ideasonboard.com>
In-Reply-To: <20250723-cdns-dsi-impro-v5-0-e61cc06074c2@ideasonboard.com>
To: Jyri Sarha <jyri.sarha@iki.fi>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, 
 Andrzej Hajda <andrzej.hajda@intel.com>, 
 Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>, 
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, 
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
 Jayesh Choudhary <j-choudhary@ti.com>, Dmitry Baryshkov <lumag@kernel.org>
Cc: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, 
 linux-phy@lists.infradead.org, Francesco Dolcini <francesco@dolcini.it>, 
 Aradhya Bhatia <aradhya.bhatia@linux.dev>, 
 Devarsh Thakkar <devarsht@ti.com>, 
 Parth Pancholi <parth.pancholi@toradex.com>, 
 Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>
X-Mailer: b4 0.15-dev-c25d1
X-Developer-Signature: v=1; a=openpgp-sha256; l=884;
 i=tomi.valkeinen@ideasonboard.com; h=from:subject:message-id;
 bh=9P0ZS+LOE91FSs5KuTmn6c1+z0gltGmsa74PXoQ3bjk=;
 b=owEBbQKS/ZANAwAIAfo9qoy8lh71AcsmYgBogLPqIKG6ZTR7VyLLHdtlX7FYBGXGqO//0OqRU
 YmIjx1q5OyJAjMEAAEIAB0WIQTEOAw+ll79gQef86f6PaqMvJYe9QUCaICz6gAKCRD6PaqMvJYe
 9V1nD/430OXS6nFDACJLmouxzWxEu6HLEJDi80lXm2GNRdJ3R9XfGF8M300rc7mcXYViMspfHiG
 YvLpYOvxgI30bZnMgHbIUvCChv7/H7ZZ55OEAcY6aWEUwZBt2dVND/d4QRLFxnEVg/ejh2RqvbP
 2nybPvZ5F8cUx8Sg599WzRP4HxCcHUKC68EceID2J022c5yT7n/MplOdmBq135QJypDe+chUqLI
 3bw8i2Iywk3oIf5PeYx3S5bYAUTEINS3KuiilkUTnZssuvRyew8Bv7TCV3vJ32OncS1QJTnw91B
 J+SaGbruWiUDU3SnKm05JY07Poyt64ibY4IIlpth0Z7sIrDuzRxFuBgCSVVROZKFsx7Dtm7tHGo
 KfSh2yIimdqqVL+fw1u3yvpLocx31IWzWm08qPNn2YYmSEE4BNMFt5jgkMtftIh/TPXJ5Bi+N64
 OLgKF4Z1bxnR1+0rurDlEqCnJl40YNAVwatpqZTMwZtdedkhXbY6IaMTI4BNXdwth/dbtCpF/It
 AVGOGei0OsG3SWHiomcm5ufcckeCroNsycVWkegiwQtSvk7oRJGJn0piJl24BVpHgD0Qo8rvHsk
 a2bx/aQeydTcHBT2/Ysvbp1WKI9+U2QcYizKtOqM8BHNynHZoFUbJZtxTR/yGVroYC73SZZ7diE
 /rn4w7kd8eaUMhg==
X-Developer-Key: i=tomi.valkeinen@ideasonboard.com; a=openpgp;
 fpr=C4380C3E965EFD81079FF3A7FA3DAA8CBC961EF5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250723_030542_744008_CF9100D6 
X-CRM114-Status: UNSURE (   6.89  )
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

Reviewed-by: Aradhya Bhatia <aradhya.bhatia@linux.dev>
Tested-by: Parth Pancholi <parth.pancholi@toradex.com>
Tested-by: Jayesh Choudhary <j-choudhary@ti.com>
Reviewed-by: Devarsh Thakkar <devarsht@ti.com>
Signed-off-by: Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>
---
 drivers/gpu/drm/bridge/cadence/cdns-dsi-core.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/gpu/drm/bridge/cadence/cdns-dsi-core.c b/drivers/gpu/drm/bridge/cadence/cdns-dsi-core.c
index 695b6246b280..0c7ad05b6e53 100644
--- a/drivers/gpu/drm/bridge/cadence/cdns-dsi-core.c
+++ b/drivers/gpu/drm/bridge/cadence/cdns-dsi-core.c
@@ -1442,4 +1442,3 @@ MODULE_AUTHOR("Boris Brezillon <boris.brezillon@bootlin.com>");
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
