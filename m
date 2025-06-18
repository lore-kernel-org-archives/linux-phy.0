Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B764DC71157
	for <linux-phy@archiver.kernel.org>; Wed, 18 Jun 2025 10:17:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/DYuZ+cNmzMLo0tv+figxY0mvKsdOJw1yAcX4kXFPzM=; b=FMnMy7YMyELpgl
	1PSuKV8Uip806M5Bkpx0LvctH34MG4UqKruJi5CVP5kF3MABp86rqKlR6JB+ifOJYLC4VWS0alYMl
	Y44tyMxw6KgVakWypLXZ5lvZieYWxZUfs0WFEn6mhtMSmT4GspiedAHfY6MLE2J7KIbCbfnYZ8FXC
	UzsR/WJcB0Pr1cIFD+IlYd48qE5cA3VQXyxosnpJL99qBq00ZDjzpETgb34gbqQjMe82iE/8p1hjS
	ai/rTsmIS+z9neEwVNKDPdJHSF9a1wsGycA83XcUtDig/j/b+IZLZ5ProjnLAezq8xv/jUWGmqqUZ
	SFo9HDpP0BYPsq+X0i4Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uRprU-00000009k98-1IeL;
	Wed, 18 Jun 2025 10:17:44 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uRpZy-00000009gKM-28G8
	for linux-phy@lists.infradead.org;
	Wed, 18 Jun 2025 09:59:40 +0000
Received: from [127.0.1.1] (91-158-153-178.elisa-laajakaista.fi [91.158.153.178])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id E543E752;
	Wed, 18 Jun 2025 11:59:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1750240762;
	bh=TUWjk/+TL9jYKTUj3GcjEHPOCFzwRG3GYqF9h5mNZlw=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=cgHDAz5AO0cJnQV3HJYDZyjgFXisLZFVYDWQr/JxZsPqRVJQTVZ8PtFuheyqBF1LR
	 if557w53H7JrtNj7C9pUQM6oo07IP9luQmQz/rKwGIPpygn8BMs4n2f5GNtSO7Hc2M
	 rIbnxd5zSOnsmfZ0c/C5DOP4d/bhoDZzUqHmItj4=
From: Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>
Date: Wed, 18 Jun 2025 12:59:05 +0300
Subject: [PATCH v4 02/17] drm/tidss: Fix missing includes and struct decls
MIME-Version: 1.0
Message-Id: <20250618-cdns-dsi-impro-v4-2-862c841dbe02@ideasonboard.com>
References: <20250618-cdns-dsi-impro-v4-0-862c841dbe02@ideasonboard.com>
In-Reply-To: <20250618-cdns-dsi-impro-v4-0-862c841dbe02@ideasonboard.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=2280;
 i=tomi.valkeinen@ideasonboard.com; h=from:subject:message-id;
 bh=TUWjk/+TL9jYKTUj3GcjEHPOCFzwRG3GYqF9h5mNZlw=;
 b=owEBbQKS/ZANAwAIAfo9qoy8lh71AcsmYgBoUo38C5zhrKujmVy6XgKslKFTxAnDEoAl2YpVw
 IlQjNaaQr6JAjMEAAEIAB0WIQTEOAw+ll79gQef86f6PaqMvJYe9QUCaFKN/AAKCRD6PaqMvJYe
 9fw7D/9twN8cK5mpKNgpPNI4yEkWEu7tBOUDGh0Ui1SJOqapy6FDhLpiwzzDaDNb8Tk4tZ31LCl
 HMAhvqw88IlcoOarNcRgwFe5jcH5KQMLG5RYv1b0rAywhs9cRigrRXs9PybpwTXGBHEWtm0RUX/
 xjK1cZv4Dtkz0vxow2utBckIrfoLMS5mMxVxYqIhwqTbpcSwLyNQFVwO0ilISlWnn5p49LXOj+5
 UPQeESHxzK9YQgXzPlR59145SQbp2hIpepi23a+oiUePVeX6T/SbpwIPQE5dh2GVibh670T9BvJ
 SPflI321mZsnqMfj+e/eyj7X5YdjTfGFqSBEHhbctN/nz4m/0Kkq2sVOk7Mfh2R9QJJm52Lk8dm
 2Jm+eGyzuAj7XFzNQT+jU7bJokJkoK+4Szqg2z1mXn4Pt5mY/nNp/xl+1CKFgjMkhh0v5rz7R3w
 yVNMn1xHIlEC2Y0TMnKtjwuRUk5OqHGiF9uin1PDQUf+p0zW2xKFVBkHeHdXqiMW3icgBvv5z31
 mBlejpNfcR2foNqvGwSfsrCeM3mIljVAsLoYyCVST1gAyGEPHkcv1syFTeBFcIAKwkZttYq/lYn
 E0cEVx8xkIBLwapfVfUZJ5bc8aFWQTqQlFSB/abRX1N4WqUj5Hz/ALFO9RTnke2qiADf0m7wDJn
 qFENzb+28JoYUoQ==
X-Developer-Key: i=tomi.valkeinen@ideasonboard.com; a=openpgp;
 fpr=C4380C3E965EFD81079FF3A7FA3DAA8CBC961EF5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250618_025938_691267_A239143D 
X-CRM114-Status: UNSURE (   7.00  )
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

Reviewed-by: Aradhya Bhatia <aradhya.bhatia@linux.dev>
Tested-by: Parth Pancholi <parth.pancholi@toradex.com>
Tested-by: Jayesh Choudhary <j-choudhary@ti.com>
Signed-off-by: Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>
---
 drivers/gpu/drm/tidss/tidss_dispc.h       | 3 +++
 drivers/gpu/drm/tidss/tidss_drv.h         | 2 ++
 drivers/gpu/drm/tidss/tidss_plane.h       | 2 ++
 drivers/gpu/drm/tidss/tidss_scale_coefs.h | 2 ++
 4 files changed, 9 insertions(+)

diff --git a/drivers/gpu/drm/tidss/tidss_dispc.h b/drivers/gpu/drm/tidss/tidss_dispc.h
index 28958514b8f5..be0b42e49b09 100644
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
