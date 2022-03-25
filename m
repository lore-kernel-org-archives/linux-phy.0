Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8F6EAC4332F
	for <linux-phy@archiver.kernel.org>; Fri, 25 Mar 2022 19:01:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KmRlaIO8SiA2ImC0O1QZ+BPApI+nnWqfBCQxJqjHT9w=; b=rJ3DUXI4rZ09pj
	1MSj3Q1WIuxbUzwG9P1vBg6vDUvS7E1zfBTuojI/8WCg+xmsVJbnMV5KuhyRU/QlEqhb4yfQZnZkg
	RCMrETLtHuZp/V9uFEAle7l4ud0/xIYUwAjNhaz22O6d/jpT3gm8y5EXxKb6ZX8w/U8jKd+SOZJo1
	SOdNtYl+Ndr5LLgVVA+6gIZ1QvXlS4ixvqapu7+U2Gf3KTEvKx8UfjXCYwjXWyiCgubJNRZ/cMsde
	j98SC2TGNb5bfP6fuGVr27P4ReVwI8DnzlXBW0dbkbM6EhOyNhJzQszrkE4vq8L+QmKpNEhI1XPQK
	3P1Nd8MO22J7Sn2oEdEA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nXpBS-0032to-V3; Fri, 25 Mar 2022 19:01:14 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nXo7s-002wkf-P3
 for linux-phy@bombadil.infradead.org; Fri, 25 Mar 2022 17:53:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
 :References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description;
 bh=oQqH7RE8MK40fYi7hpHL4DQe6UoMb5CeZccvHzoocCY=; b=Asj7DC6a2xrM5AZIGk3eITpLH6
 wZb0AJDz5fRfWycAADzLnyaAxjNt9dkWb5EkrdLXEiydX0xn0P997qYt11GbJWfCXMqE++fJOfN1o
 p/a7cwcRy2hQi2iB6StT+j2umNmJU1/0uuJjccteaQCi5jw+knr1XmWs71TJTDzpCeCNnftpBqUnY
 keJtVRd1LPX9XmUEG6gHRvko1Nvu0fQLmcKvV+ppbsQc2uAKA0jxZmV0CA7cMsAGLbaA/KhpRHVlE
 GBYB31L5bbRh8SDg3weBWk4UNtC+gRADlRf7QIarp0nCwPLpbSd49jzQv7Wv6Jecb3oS8tiOX/0Oy
 2sK9yGPQ==;
Received: from mail-wr1-x431.google.com ([2a00:1450:4864:20::431])
 by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nXnZ3-004SXA-1z
 for linux-phy@lists.infradead.org; Fri, 25 Mar 2022 17:17:31 +0000
Received: by mail-wr1-x431.google.com with SMTP id w4so11720437wrg.12
 for <linux-phy@lists.infradead.org>; Fri, 25 Mar 2022 10:17:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20210112.gappssmtp.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=oQqH7RE8MK40fYi7hpHL4DQe6UoMb5CeZccvHzoocCY=;
 b=HACFnoQINTauO6TKeIefRi9vM/en2n66uEqYmJBdSo4ooC8iGMFaFYF18rGW5rhOLS
 bQBwiT+gV33kC1eSID8QefbZoxMx1SeimigboDvyhnvVH6AhiSLshOUyK11pVRjezrQI
 C1/E6jXK/MK9rxuRK8Dtwr9ZOr0gG1Rl40ZKbLsmg7FH5fXdFMYInNf0tqcfZ3P4nbTT
 bnZqeCMSG+v6DzrN8ISz0nB5vMkTFV/0h2KmbU4o3ptSXlNi2aRjuw/Z/fAxrJXLG6lh
 PeNp2DZYgQ2YtPg+O49kL36qOahs2e9oPI2DIEhxXknnZ+d5nb8osxGA4BWQgL/N4DIN
 4qEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=oQqH7RE8MK40fYi7hpHL4DQe6UoMb5CeZccvHzoocCY=;
 b=YoFtOh/X7FZELF6gm/oLo07gsk4qdfMwWaA7f3Cnx+T0+ozuwsm7nUF5W2oNqWQpPq
 FWrY5Tc8hUdWWl4ZoPCJ6a3yAuuNOfdhpvpyFNv+1UH81Q8dwDXAF6x9uul3U0pnCmvt
 neAPV1TlaCSwWo/dSK6CCtSRQnGQdgRbHQMNWlvQoV2quWV8Rx8BzYJTzDVtMtKV4OsN
 pQLY3/mtkMcG12LyG8pjunWTUN2rHjlZYXDmsKoNhLWIZG5rcQchaG3EmHGvtw/zEqeX
 lWqMTrxnG4AA/AFbFUBmBjiiUCPYK8L6w9uCXH95d9/3z+QJk0LSCBZQ43VWjVCeFYcf
 gUTA==
X-Gm-Message-State: AOAM532S8Rq26QqCXByrUfk25oZ5p0cyiFA/meo1bBWjXBV96RcPanCr
 5p0/Ex9PkVo6RzLE0BjucfyYlQ==
X-Google-Smtp-Source: ABdhPJykkJ59FKYm8DQF+mpfHc6QKyYL4B/eRIG1b3yUyL1vz+MK/Wc9y/AlvWXIwnWFRgxsWLzrTA==
X-Received: by 2002:a5d:4ec7:0:b0:203:de83:6f44 with SMTP id
 s7-20020a5d4ec7000000b00203de836f44mr10022067wrv.56.1648228647982; 
 Fri, 25 Mar 2022 10:17:27 -0700 (PDT)
Received: from localhost.localdomain
 (2a02-8440-6240-cc41-3074-96af-9642-0003.rev.sfr.net.
 [2a02:8440:6240:cc41:3074:96af:9642:3])
 by smtp.gmail.com with ESMTPSA id
 p16-20020a5d6390000000b00203ffebddf3sm7547464wru.99.2022.03.25.10.17.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 25 Mar 2022 10:17:27 -0700 (PDT)
From: Guillaume Ranquet <granquet@baylibre.com>
To: chunkuang.hu@kernel.org, p.zabel@pengutronix.de, airlied@linux.ie,
 daniel@ffwll.ch, robh+dt@kernel.org, maarten.lankhorst@linux.intel.com,
 mripard@kernel.org, tzimmermann@suse.de, matthias.bgg@gmail.com,
 chunfeng.yun@mediatek.com, kishon@ti.com, vkoul@kernel.org, deller@gmx.de,
 ck.hu@mediatek.com, jitao.shi@mediatek.com,
 angelogioacchino.delregno@collabora.com
Cc: dri-devel@lists.freedesktop.org, linux-mediatek@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-phy@lists.infradead.org,
 linux-fbdev@vger.kernel.org, markyacoub@google.com,
 Rex-BC Chen <rex-bc.chen@mediatek.com>
Subject: [PATCH 20/22] drm/mediatek: add hpd debounce
Date: Fri, 25 Mar 2022 18:15:09 +0100
Message-Id: <20220325171511.23493-21-granquet@baylibre.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220325171511.23493-1-granquet@baylibre.com>
References: <20220325171511.23493-1-granquet@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220325_171729_373048_BF925790 
X-CRM114-Status: GOOD (  18.70  )
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
 drivers/gpu/drm/mediatek/mtk_dp.c | 46 +++++++++++++++++++++++++++++++
 1 file changed, 46 insertions(+)

diff --git a/drivers/gpu/drm/mediatek/mtk_dp.c b/drivers/gpu/drm/mediatek/mtk_dp.c
index d9606c743a9e..4981a3a3b9ca 100644
--- a/drivers/gpu/drm/mediatek/mtk_dp.c
+++ b/drivers/gpu/drm/mediatek/mtk_dp.c
@@ -174,6 +174,33 @@ struct mtk_dp {
 	struct device *codec_dev;
 	u8 connector_eld[MAX_ELD_BYTES];
 	struct drm_connector *conn;
+	bool need_debounce;
+	struct timer_list debounce_timer;
+};
+
+enum mtk_dp_sdp_type {
+	MTK_DP_SDP_NONE = 0x00,
+	MTK_DP_SDP_ACM = 0x01,
+	MTK_DP_SDP_ISRC = 0x02,
+	MTK_DP_SDP_AVI = 0x03,
+	MTK_DP_SDP_AUI = 0x04,
+	MTK_DP_SDP_SPD = 0x05,
+	MTK_DP_SDP_MPEG = 0x06,
+	MTK_DP_SDP_NTSC = 0x07,
+	MTK_DP_SDP_VSP = 0x08,
+	MTK_DP_SDP_VSC = 0x09,
+	MTK_DP_SDP_EXT = 0x0A,
+	MTK_DP_SDP_PPS0 = 0x0B,
+	MTK_DP_SDP_PPS1 = 0x0C,
+	MTK_DP_SDP_PPS2 = 0x0D,
+	MTK_DP_SDP_PPS3 = 0x0E,
+	MTK_DP_SDP_DRM = 0x10,
+	MTK_DP_SDP_MAX_NUM
+};
+
+struct mtk_dp_sdp_packet {
+	enum mtk_dp_sdp_type type;
+	struct dp_sdp sdp;
 };
 
 static bool mtk_dp_is_edp(struct mtk_dp *mtk_dp)
@@ -1814,6 +1841,9 @@ static irqreturn_t mtk_dp_hpd_event_thread(int hpd, void *dev)
 	if (event < 0)
 		return IRQ_HANDLED;
 
+	if (mtk_dp->need_debounce && mtk_dp->train_info.cable_plugged_in)
+		msleep(100);
+
 	if (mtk_dp->drm_dev) {
 		dev_info(mtk_dp->dev, "drm_helper_hpd_irq_event\n");
 		drm_helper_hpd_irq_event(mtk_dp->bridge.dev);
@@ -1892,6 +1922,11 @@ static irqreturn_t mtk_dp_hpd_isr_handler(struct mtk_dp *mtk_dp)
 	}
 	train_info->cable_state_change = true;
 
+	if (!train_info->cable_plugged_in) {
+		mod_timer(&mtk_dp->debounce_timer, jiffies + msecs_to_jiffies(100) - 1);
+		mtk_dp->need_debounce = false;
+	}
+
 	return IRQ_WAKE_THREAD;
 }
 
@@ -2339,6 +2374,13 @@ static const struct drm_bridge_funcs mtk_dp_bridge_funcs = {
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
@@ -2396,6 +2438,9 @@ static int mtk_dp_probe(struct platform_device *pdev)
 	mtk_dp->bridge.of_node = dev->of_node;
 	mtk_dp->bridge.type = DRM_MODE_CONNECTOR_eDP;
 
+	mtk_dp->need_debounce = true;
+	timer_setup(&mtk_dp->debounce_timer, mtk_dp_debounce_timer, 0);
+
 	mtk_dp->bridge.ops =
 		DRM_BRIDGE_OP_DETECT | DRM_BRIDGE_OP_EDID | DRM_BRIDGE_OP_HPD;
 	drm_bridge_add(&mtk_dp->bridge);
@@ -2415,6 +2460,7 @@ static int mtk_dp_remove(struct platform_device *pdev)
 	struct mtk_dp *mtk_dp = platform_get_drvdata(pdev);
 
 	mtk_dp_video_mute(mtk_dp, true);
+	del_timer_sync(&mtk_dp->debounce_timer);
 
 	pm_runtime_disable(&pdev->dev);
 
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
