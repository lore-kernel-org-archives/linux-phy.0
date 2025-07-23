Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 784C5C83F34
	for <linux-phy@archiver.kernel.org>; Wed, 23 Jul 2025 10:22:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DyEY0aRlpLLQg/l4uRGCIihFqJYFPY6dgNxinzy2Zgs=; b=Da1Vu1V87ivdK8
	ic6Ybg77i7u/k/lv1oprOZ2i6gv/Me+qrs5EqLhCsVg9dqIESEMtB1BrjgT+i2a3u6dY0M6NSFwvN
	i1R8c3rnDBxhdmIAHp4GcGsBhIycNIi0kzktCfmcwSZkk+7addIODxSnZXcxWu9l/gQGT8n8Ayh7C
	EfeOMgPmOs5Ic527BLw6vCpChHq2e4hhZshOO0ZT51KqZvznqz6O8Cs69AVc5u8DOdxBuwT5bmMCy
	O0eb6VmlPZnVwRo3ZvCqbgndvfMLhfJlxxhfvGC4nMAeTc/WuzY91sAe2e833fMllwewos7hScdnm
	pvPigORdan9n1j8vxW9g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ueWcR-00000004fXk-0wqz;
	Wed, 23 Jul 2025 10:22:39 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ueWM0-00000004cGG-0vtk
	for linux-phy@lists.infradead.org;
	Wed, 23 Jul 2025 10:05:41 +0000
Received: from [127.0.1.1] (91-158-153-178.elisa-laajakaista.fi [91.158.153.178])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id B2C6BF0B;
	Wed, 23 Jul 2025 12:04:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1753265100;
	bh=ORJ+r9QXRlTePgAiA6Oc9ykTVuz6BMPrXnHDUBW7+tA=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=ZwBw95RmpEJaC4q9D0iCiR3XOHlc5Eke5Y1lPizelg4h3jhxfsDa09QGaScgRs+Xu
	 g7UuCo0KAl06l6wl+kwJiZsyjs73D6RW76WWYrV21AbobbaLNgcK3BHnP2V0gfHG/T
	 47UiPbsU9pffBjoyQW/TvOZUFHp+BqHCobmmt1cw=
From: Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>
Date: Wed, 23 Jul 2025 13:05:08 +0300
Subject: [PATCH v5 02/15] drm/tidss: Fix missing includes and struct decls
MIME-Version: 1.0
Message-Id: <20250723-cdns-dsi-impro-v5-2-e61cc06074c2@ideasonboard.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=2357;
 i=tomi.valkeinen@ideasonboard.com; h=from:subject:message-id;
 bh=ORJ+r9QXRlTePgAiA6Oc9ykTVuz6BMPrXnHDUBW7+tA=;
 b=owEBbQKS/ZANAwAIAfo9qoy8lh71AcsmYgBogLPp6kU/4JIExEPKogdspBc6ktmg57XLDNNpo
 iOOklnleBuJAjMEAAEIAB0WIQTEOAw+ll79gQef86f6PaqMvJYe9QUCaICz6QAKCRD6PaqMvJYe
 9aDUD/4s3YKIhT5PfWB6Fy4SGIOCjBhxa2MDayzUI4BoaHAjSEuJ4O1G2T73C3FWVLOlKjdtxL+
 tnDLofKetsbnw/HDU1YdPtm8gbPhScEJP4uHL6MKTPSD1CJEd/aq4HKlzh3KTkLNsrXZkCVt0il
 QSBhpn6VLauVh85jUiDKyOR4ARqIOSUU/Nf1VPn5YBKWHsvOh8pjwx5LXiD3YoRXoXpC8JtvZ1r
 VnCSHpTlqzo3NKsj4BSaqk7bEn7QZL/2EjSZrbzSMf+zroAUUwV1Xoeqbv8rAF8myyEnE+/pwIE
 ORs6q4Bgz0H9el1oWUPTZUD4AdCN1zL7BUPQvcLuXii5hzDlFeTXxviZJWDBgJjSL8qaUplp6Dt
 VcvAwJD7cQLyBie737+yqBP4yXlVSsCw1emL99WrEGRD3fDEUJ5ugxlPbe40o6QuJmVxJUe7K2o
 /a8K27ftRdTheuGdQz6Kv8KwrNNO4Zkq7ki7j9EVTsdel83XbyWAG2GDBW1NQe1T7ovT7gl1q02
 7HHjhgng/B8NsKTUbvZVdgtFyLS12lkJwWXw7WA7VsZATkQPsODU4nkWzW0N6OBbbJvSK0H2vtA
 sldzNcTS5M+mfmrJuo7q2bczzxdIR1ZPXktZEC0+ODbqomNYHqmpZnA1sE7VqR6MFqZr2n6+iZj
 2AX71AJqsUl87uw==
X-Developer-Key: i=tomi.valkeinen@ideasonboard.com; a=openpgp;
 fpr=C4380C3E965EFD81079FF3A7FA3DAA8CBC961EF5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250723_030540_404906_9996B7C5 
X-CRM114-Status: UNSURE (   7.30  )
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
Reviewed-by: Devarsh Thakkar <devarsht@ti.com>
Signed-off-by: Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>
---
 drivers/gpu/drm/tidss/tidss_dispc.h       | 3 +++
 drivers/gpu/drm/tidss/tidss_drv.h         | 2 ++
 drivers/gpu/drm/tidss/tidss_plane.h       | 2 ++
 drivers/gpu/drm/tidss/tidss_scale_coefs.h | 2 ++
 4 files changed, 9 insertions(+)

diff --git a/drivers/gpu/drm/tidss/tidss_dispc.h b/drivers/gpu/drm/tidss/tidss_dispc.h
index b8614f62186c..60c1b400eb89 100644
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
index d14d5d28f0a3..84454a4855d1 100644
--- a/drivers/gpu/drm/tidss/tidss_drv.h
+++ b/drivers/gpu/drm/tidss/tidss_drv.h
@@ -9,6 +9,8 @@
 
 #include <linux/spinlock.h>
 
+#include <drm/drm_device.h>
+
 #define TIDSS_MAX_PORTS 4
 #define TIDSS_MAX_PLANES 4
 #define TIDSS_MAX_OLDI_TXES 2
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
