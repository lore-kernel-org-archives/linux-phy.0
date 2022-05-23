Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3DAD9C433F5
	for <linux-phy@archiver.kernel.org>; Mon, 23 May 2022 11:43:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jfr98/ri2In8BPK0NSDLa8Ud2KF9KknmaCFZFOrJ8uI=; b=QXZcL6BaFC/sEn
	cMcftNpw0Ex9AM30cLMZUlNH6kGpGo8xkWO4aaq+Lh9uHqp6ZTzUNBCLcfxdFIkhKaAHw9GfdoiOF
	4tQXu+biB5aOEbTvNbUeW8FSuAOraZcURQXvR2nnLUUZiiw0fqsYX+D2IBKS6GeEFbFWbsr0gIZ2r
	Raoo92AsPksyoZ0xyeSVLj5JdBfl76ubEq8GjPWVbul9dVJSG0scB7BbL2fhTQ5WkHk/CxEHyWDZq
	rxIMjyrzoAY7k0xxqKAG3ZXf0Ou8wad9AIs5beKiHp+LsDFT0vSKzZfYlJ0qFybCLbqQFsNGcV/1V
	IVaSfj4BHuDYbB10qg4w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nt6TX-003oE6-48; Mon, 23 May 2022 11:43:51 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nt5fe-003Qax-SL
 for linux-phy@lists.infradead.org; Mon, 23 May 2022 10:52:21 +0000
Received: by mail-wm1-x341.google.com with SMTP id o9so816491wmd.0
 for <linux-phy@lists.infradead.org>; Mon, 23 May 2022 03:52:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20210112.gappssmtp.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=hLfS42PaaSTIvwoBINmbgQcJWAC+mkxuv8Sro1ZZiBw=;
 b=h7Ar0XPc6m9I8Rf5wHDAfZoG1WMnfebvWZ5PMsjzR2Z5Qpy93Hzk2O1p0IJMPQPx2e
 fI+LdDbsC7B/XHPcDBpBpwFX4ePIq6AgQ23hN5ZUZq1rjV7+sLlE5NGePnl1iQPEVEEq
 mn2qZgeg/WZl5p5a2odv8KBJH3fwk7VlQ9q1iO81MSuZBBWfmB6c38cPcJShOKM7v+tY
 H/PXXEXLlGoPS4o2pzO3gvhyu7q07QXiiDcY9h425ZGqzmanPE1KiAZ54e6+VJNfJpIr
 sBLX1QZev0rIBy6QjmmBMVYMJPuoxirKfPtzyttNpRhvL+61lUwqvhwv6hmR8W0yckwZ
 z7dQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=hLfS42PaaSTIvwoBINmbgQcJWAC+mkxuv8Sro1ZZiBw=;
 b=tAlEYsEQBMXHDLKpmnG2D7p7YPAU1g7qSv4sLPL7fbYxhYxHPuu0Psb8VjBnekRz/O
 ScEhUuhpM7V5V8cmxbxj2fmT1IiWvENg7AnvIESeJXDcXZ8YY9Sqf6Wu+qol960Bx5Ka
 5bIilHBR7iR3NPB3tT7Dc7kI5Kgrby1Z2MleqJrYYn2wI7+c8Sy/SOrix4+5Np8LC5rv
 7vaxLkIySDbQgH+fJPwwvoTKjC7P4p8ukKanDfy+yDF2VIjLGRBjAuKN5PgCNBzayYea
 WS61q/5GYTGEd1okcqZrkm/k9ueOFt/9RJDaAf9FSmKs94iOlt+xjjzfVxLDmUETdE2M
 U84w==
X-Gm-Message-State: AOAM531MpZXYCqpIBUN3dEvbuJ/e22MZMzg/ZIxsDF/0rz7cdrkJaCHN
 jm+qLjpNBaH7d0rjdHaer0nPcA==
X-Google-Smtp-Source: ABdhPJzde8+aBgbVlyoCCnCNTWr7Ur5rMTCZYCt2csAVS6LILQDcPXm+e3GmDaRs9bF2zxKHX6TnHA==
X-Received: by 2002:a05:600c:42d3:b0:397:47ae:188c with SMTP id
 j19-20020a05600c42d300b0039747ae188cmr6383674wme.150.1653303136070; 
 Mon, 23 May 2022 03:52:16 -0700 (PDT)
Received: from localhost.localdomain
 (2a02-8440-6141-9d1b-3074-96af-9642-0003.rev.sfr.net.
 [2a02:8440:6141:9d1b:3074:96af:9642:3])
 by smtp.gmail.com with ESMTPSA id
 n11-20020a7bc5cb000000b003942a244f38sm8453607wmk.17.2022.05.23.03.52.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 23 May 2022 03:52:15 -0700 (PDT)
From: Guillaume Ranquet <granquet@baylibre.com>
To: Chun-Kuang Hu <chunkuang.hu@kernel.org>,
 Philipp Zabel <p.zabel@pengutronix.de>, David Airlie <airlied@linux.ie>,
 Daniel Vetter <daniel@ffwll.ch>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>,
 Thomas Zimmermann <tzimmermann@suse.de>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Chunfeng Yun <chunfeng.yun@mediatek.com>,
 Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 Helge Deller <deller@gmx.de>, CK Hu <ck.hu@mediatek.com>,
 Jitao shi <jitao.shi@mediatek.com>
Cc: Rex-BC Chen <rex-bc.chen@mediatek.com>, dri-devel@lists.freedesktop.org,
 linux-mediatek@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-phy@lists.infradead.org, linux-fbdev@vger.kernel.org
Subject: [PATCH v10 20/21] drm/mediatek: add hpd debounce
Date: Mon, 23 May 2022 12:47:53 +0200
Message-Id: <20220523104758.29531-21-granquet@baylibre.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220523104758.29531-1-granquet@baylibre.com>
References: <20220523104758.29531-1-granquet@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220523_035218_994958_E247874E 
X-CRM114-Status: GOOD (  20.26  )
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

From: Jitao Shi <jitao.shi@mediatek.com>

From the DP spec 1.4a chapter 3.3, upstream devices should implement
HPD signal de-bouncing on an external connection.
A period of 100ms should be used to detect an HPD connect event.
To cover these cases, HPD de-bounce should be implemented only after
HPD low has been detected for at least 100ms.

Therefore,
1. If HPD is low (which means plugging out) for longer than 100ms:
   we need to do de-bouncing (which means we need to wait for 100ms).
2. If HPD low is for less than 100ms:
   we don't need to care about the de-bouncing.

In this patch, we start a 100ms timer and use a need_debounce boolean
to implement the feature.

Two cases when HPD is high:
1. If the timer is expired (>100ms):
   - need_debounce is true.
   - When HPD high (plugging event comes), need_debounce will be true
     and then we need to do de-bouncing (wait for 100ms).
2. If the timer is not expired (<100ms):
   - need_debounce is false.
   - When HPD high (plugging event comes), need_debounce will be false
     and no need to do de-bouncing.

HPD_______             __________________
          |            |<-  100ms   ->
          |____________|
          <-  100ms   ->

Without HPD de-bouncing, USB-C to HDMI Adapaters will not be detected.

The change has been successfully tested with the following devices:
- Dell Adapter - USB-C to HDMI
- Acer 1in1 HDMI dongle
- Ugreen 1in1 HDMI dongle
- innowatt HDMI + USB3 hub
- Acer 2in1 HDMI dongle
- Apple 3in1 HDMI dongle (A2119)
- J5Create 3in1 HDMI dongle (JAC379)

Tested-by: Rex-BC Chen <rex-bc.chen@mediatek.com>
Reviewed-by: Rex-BC Chen <rex-bc.chen@mediatek.com>
Signed-off-by: Jitao Shi <jitao.shi@mediatek.com>
Signed-off-by: Guillaume Ranquet <granquet@baylibre.com>
---
 drivers/gpu/drm/mediatek/mtk_dp.c | 21 +++++++++++++++++++++
 1 file changed, 21 insertions(+)

diff --git a/drivers/gpu/drm/mediatek/mtk_dp.c b/drivers/gpu/drm/mediatek/mtk_dp.c
index 4789853ec5ff..c056bc3ca9f6 100644
--- a/drivers/gpu/drm/mediatek/mtk_dp.c
+++ b/drivers/gpu/drm/mediatek/mtk_dp.c
@@ -154,6 +154,8 @@ struct mtk_dp {
 	struct mutex dp_lock;
 
 	struct drm_connector *conn;
+	bool need_debounce;
+	struct timer_list debounce_timer;
 };
 
 static struct regmap_config mtk_dp_regmap_config = {
@@ -1970,6 +1972,9 @@ static irqreturn_t mtk_dp_hpd_event_thread(int hpd, void *dev)
 	if (event < 0)
 		return IRQ_HANDLED;
 
+	if (mtk_dp->need_debounce && mtk_dp->train_info.cable_plugged_in)
+		msleep(100);
+
 	if (mtk_dp->drm_dev) {
 		dev_info(mtk_dp->dev, "drm_helper_hpd_irq_event\n");
 		drm_helper_hpd_irq_event(mtk_dp->bridge.dev);
@@ -2047,6 +2052,11 @@ static irqreturn_t mtk_dp_hpd_isr_handler(struct mtk_dp *mtk_dp)
 	}
 	train_info->cable_state_change = true;
 
+	if (!train_info->cable_plugged_in) {
+		mod_timer(&mtk_dp->debounce_timer, jiffies + msecs_to_jiffies(100) - 1);
+		mtk_dp->need_debounce = false;
+	}
+
 	return IRQ_WAKE_THREAD;
 }
 
@@ -2474,6 +2484,13 @@ static const struct drm_bridge_funcs mtk_dp_bridge_funcs = {
 	.detect = mtk_dp_bdg_detect,
 };
 
+static void mtk_dp_debounce_timer(struct timer_list *t)
+{
+	struct mtk_dp *mtk_dp = from_timer(mtk_dp, t, debounce_timer);
+
+	mtk_dp->need_debounce = true;
+}
+
 static int mtk_dp_probe(struct platform_device *pdev)
 {
 	struct mtk_dp *mtk_dp;
@@ -2547,6 +2564,9 @@ static int mtk_dp_probe(struct platform_device *pdev)
 	else
 		mtk_dp->bridge.type = DRM_MODE_CONNECTOR_DisplayPort;
 
+	mtk_dp->need_debounce = true;
+	timer_setup(&mtk_dp->debounce_timer, mtk_dp_debounce_timer, 0);
+
 	pm_runtime_enable(dev);
 	pm_runtime_get_sync(dev);
 
@@ -2559,6 +2579,7 @@ static int mtk_dp_remove(struct platform_device *pdev)
 
 	platform_device_unregister(mtk_dp->phy_dev);
 	mtk_dp_video_mute(mtk_dp, true);
+	del_timer_sync(&mtk_dp->debounce_timer);
 
 	pm_runtime_disable(&pdev->dev);
 
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
