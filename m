Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4042AC369BB
	for <linux-phy@archiver.kernel.org>; Mon, 14 Apr 2025 11:16:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Lshi0Jj6jlUnzoreifF9keGe+W4y0/aXjVLVImkHRCA=; b=O64EmEE7wLD6Pw
	hqrjy2yBpOothkqH5C3ORx5l4g2CICZfzi9FKc3vOl6qANJglcgZysCo9X4Qi//oCGCutY0YUCH11
	NwJuIXxdZHqI0PdPeHSeMytfY2d3h5C5QRYJBEZhQzTgyXUWRklMOd/93iM7WnX+jDUWK+u61Nq2b
	NGhs6aSePeetvJLWRGVJwiEIxNu2acJpJdSXbGfDZIqm5IcLufEWud95IxZfdBFBcQuE8aFGqPq+A
	SACH5w5W1FUVaNohQ8aNs9VjqMvAY4j62c2BbnLrScgz0AkAjpDZMYBQsTyN6myDbYMyNB2mpGXlj
	pUr8t+S+45r7chMsRJ3A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u4HnI-00000001ijF-3uVE;
	Mon, 14 Apr 2025 11:16:04 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u4HjW-00000001h7M-2vFv
	for linux-phy@lists.infradead.org;
	Mon, 14 Apr 2025 11:12:14 +0000
Received: from [127.0.1.1] (91-158-153-178.elisa-laajakaista.fi [91.158.153.178])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id E830C6A6;
	Mon, 14 Apr 2025 13:10:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1744629004;
	bh=Dupe7V99g6BivBbibfTkx5/konvjoim8qu4oyF93KbI=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=dbodVe5NJhlYDqlhjc27cW2N7L+FspD/tCA8qp3/Zh/4i7F9Xm7lj7h6RbaLDtMSa
	 sa90D2VQ7rphDnzPtWNEGGMl7iqBdSCSgzm5BydyW4e+f/whsD7hHso+gc7Fgh8vvx
	 LexkvvpX4dC3I4JjSHwUJeF1SLk2v1LC8Z/ec53I=
From: Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>
Date: Mon, 14 Apr 2025 14:11:10 +0300
Subject: [PATCH v3 01/17] drm/tidss: Fix missing includes and struct decls
MIME-Version: 1.0
Message-Id: <20250414-cdns-dsi-impro-v3-1-4e52551d4f07@ideasonboard.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=2174;
 i=tomi.valkeinen@ideasonboard.com; h=from:subject:message-id;
 bh=Dupe7V99g6BivBbibfTkx5/konvjoim8qu4oyF93KbI=;
 b=owEBbQKS/ZANAwAIAfo9qoy8lh71AcsmYgBn/O18CpvPg0gWEY/bDJl3Aw5TruSylz56Geq4b
 9U/cuklb/yJAjMEAAEIAB0WIQTEOAw+ll79gQef86f6PaqMvJYe9QUCZ/ztfAAKCRD6PaqMvJYe
 9a7QD/wMc3YRRq9NmO1AZ6YotLhhbS4D6NvPuv+tJa+8GhbUbe8xuEWkOtiwr0ag9V3i17EB0xt
 j3KtRMQ3i1NLq/PmLYXSrOxy4Xl8dnpJGBUNnTDm/8280QpRjM+m3nAXrxk5HKjlDN9AY0KXXwP
 VfwBC67KrL46xPBamPs27cO0ss2WZRmoXXsjYdycEE1PfK7WiJWPP+hQ7RezLfPHq4euLIHISKY
 MQXCew/Og7bO2jfD9L9YPmY4S937D3A1NvBGIwEeV7utHbzOYmCO3XiDPWwTbXukFbIR2nYXZQO
 q6y1XrJ05cpoOfMx4WtRRFL8tXguEdcmEEQ6unjcKG6cTVUeu3soSZ800ZFVsxOVu4ZfQrfNZ6U
 bzEZuRg3Lds7jFi41DKqhQ7ilYUZlIq4zHL4Hj/i3pZJXSuJOYcBkuoVVVW0+todFNOYF4TW+iq
 4bgYtHrJxJ8+PpJ9l0sfZVs1gXoWjATENSM6u2OgRnMc/jY7uRjhQi+1ea3N8R7NbQ+zpS/4G3k
 UvVYLayRFleiVhAFaBD3NdejC39U9Nm16H2qm4Pi6bhIa2kaNY+LcEduKLqZMpjEZ6XB/LoLdIl
 EntXriHdlIlvFQQoC2DSnosq9a9xwWK5xUWZyN+2MDluCnHNUDjzvUqXvlFVDkZ+6lrWrWgbAeD
 Mt8PuWG9vrC8P5g==
X-Developer-Key: i=tomi.valkeinen@ideasonboard.com; a=openpgp;
 fpr=C4380C3E965EFD81079FF3A7FA3DAA8CBC961EF5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250414_041210_917037_5C6740E2 
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

Fix missing includes and struct declarations. Even if these don't cause
any compile issues at the moment, it's good to have them correct.

Signed-off-by: Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>
Reviewed-by: Aradhya Bhatia <aradhya.bhatia@linux.dev>
---
 drivers/gpu/drm/tidss/tidss_dispc.h       | 3 +++
 drivers/gpu/drm/tidss/tidss_drv.h         | 2 ++
 drivers/gpu/drm/tidss/tidss_plane.h       | 2 ++
 drivers/gpu/drm/tidss/tidss_scale_coefs.h | 2 ++
 4 files changed, 9 insertions(+)

diff --git a/drivers/gpu/drm/tidss/tidss_dispc.h b/drivers/gpu/drm/tidss/tidss_dispc.h
index 086327d51a90..c31b477a18b0 100644
--- a/drivers/gpu/drm/tidss/tidss_dispc.h
+++ b/drivers/gpu/drm/tidss/tidss_dispc.h
@@ -7,11 +7,14 @@
 #ifndef __TIDSS_DISPC_H__
 #define __TIDSS_DISPC_H__
 
+#include <drm/drm_color_mgmt.h>
+
 #include "tidss_drv.h"
 
 struct dispc_device;
 
 struct drm_crtc_state;
+struct drm_plane_state;
 
 enum tidss_gamma_type { TIDSS_GAMMA_8BIT, TIDSS_GAMMA_10BIT };
 
diff --git a/drivers/gpu/drm/tidss/tidss_drv.h b/drivers/gpu/drm/tidss/tidss_drv.h
index 7f4f4282bc04..56a2020e20d0 100644
--- a/drivers/gpu/drm/tidss/tidss_drv.h
+++ b/drivers/gpu/drm/tidss/tidss_drv.h
@@ -9,6 +9,8 @@
 
 #include <linux/spinlock.h>
 
+#include <drm/drm_device.h>
+
 #define TIDSS_MAX_PORTS 4
 #define TIDSS_MAX_PLANES 4
 
diff --git a/drivers/gpu/drm/tidss/tidss_plane.h b/drivers/gpu/drm/tidss/tidss_plane.h
index aecaf2728406..92c560c3a621 100644
--- a/drivers/gpu/drm/tidss/tidss_plane.h
+++ b/drivers/gpu/drm/tidss/tidss_plane.h
@@ -7,6 +7,8 @@
 #ifndef __TIDSS_PLANE_H__
 #define __TIDSS_PLANE_H__
 
+#include <drm/drm_plane.h>
+
 #define to_tidss_plane(p) container_of((p), struct tidss_plane, plane)
 
 struct tidss_device;
diff --git a/drivers/gpu/drm/tidss/tidss_scale_coefs.h b/drivers/gpu/drm/tidss/tidss_scale_coefs.h
index 9c560d0fdac0..9824d02d9d1f 100644
--- a/drivers/gpu/drm/tidss/tidss_scale_coefs.h
+++ b/drivers/gpu/drm/tidss/tidss_scale_coefs.h
@@ -9,6 +9,8 @@
 
 #include <linux/types.h>
 
+struct device;
+
 struct tidss_scale_coefs {
 	s16 c2[16];
 	s16 c1[16];

-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
