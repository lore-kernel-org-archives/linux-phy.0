Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 78786C433EF
	for <linux-phy@archiver.kernel.org>; Sun, 27 Mar 2022 22:41:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BFkALj2M1lLpBOA29i3cynzdU5VRZCzVhtSr8MU2nmA=; b=3GDMXNRhhc3YNc
	T9zlkraJfBnJ05y+grVyoWgtGNHzpJN/L4FUd4wCS8Sa5wWsZmm1jIuircZhts4S0uPSy0K7W5HvP
	07ek9vkw0/uV6ud3uW3hcAJMrCYfMX/EIc53Oja/9dQLGemoLR+0/wl8rIhaM1QSIrbtUQTRBhn3I
	KHFz11QMumqB5/xNk6QbLXC380G5Bv7lFKV/PjfxCwQRpvoeuBJd/Y6yRmeh8VZcL70L9Ad56cc1N
	9sJA/IsMUaFuYqxMoZAenPgP0Rfn83rgSgUmEhHfDINPLx0ah382gwdClgoqwQx6VO7XkjIxohXx5
	IzQjwl/VrMcfETQZkcXA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nYba8-006VXX-R9; Sun, 27 Mar 2022 22:41:56 +0000
Received: from mail-wm1-x335.google.com ([2a00:1450:4864:20::335])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nYbZJ-006Ust-M7
 for linux-phy@lists.infradead.org; Sun, 27 Mar 2022 22:41:08 +0000
Received: by mail-wm1-x335.google.com with SMTP id
 v64-20020a1cac43000000b0038cfd1b3a6dso1880713wme.5
 for <linux-phy@lists.infradead.org>; Sun, 27 Mar 2022 15:41:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20210112.gappssmtp.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=NqdfmywTZ6fQ/7jJTAQIW5tJoHGg7kZG5yl6dza7Kzg=;
 b=KCIWiS+0zeAyMkBL0wxf40noDXnqtZrHjzyoklsSwYQXIZoSJjMZD5B0tlff61mKEa
 uUbpknkL0mh0Pe72eUpIJ8pE/35wd3aNUjvtj0ZBGrGFedALY7vVPRoA3znHAAadwzNq
 vGXrPkZgHnCK6wmY0ZZuAvSFHFl/KN6RglaSUMvpuKqTUw8Wb7lmssosBrjyDGDEXuad
 CJnlZ7FUsflKFD4nFCHkPumFs4DvX7Qg7fkJSKwmwO0VM7EtBnWXTBvxl4/5NWUDwBvG
 O78uxOpvi6ZG35LDGemTz4JIgKt6vkwrw0ekCZdsubL4S8VzdsBRrqRi7Z8nM0l8cP4g
 cPkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=NqdfmywTZ6fQ/7jJTAQIW5tJoHGg7kZG5yl6dza7Kzg=;
 b=yk+glBQ6P49oPNTOQkMtJJOPqdGELP3cQpCpfoe6VhEQkKnjJxIRvz6Bl+Y0RInbo4
 VaqC9Iwi/qwoGi8g41yreR5kw8GGqXByLHjJ4P0yh/AUtFNyYusSk10eWIF0pykh9kdh
 X1jUbAVT1nSB+LoFMEtQ0afJYPKaD7r25jagCAXEJd1TxOPjVpk80yX77EQPMMZaRD5k
 UFq2zYb7yI6vN9inzMgJ2rpFyZiwoLIcoPgBkoXMkYLVq9UwFC0PuEEnCyyWhfzl5kSM
 z8YGjDpsj+ChqR/UiOQ+Qyxt+qLFI7AgPSbOIi5hPDCmtvqvJE2SI+f8IKJIb/tf89uu
 UewA==
X-Gm-Message-State: AOAM533YlJbjr2ZOHnflVp8yShCO6IaIQiVR7MF/n/jcJPHz3T1UxWU1
 Pnxu/vTJNHWWQVF587tGSULSfQ==
X-Google-Smtp-Source: ABdhPJy0020PNRnBryews9tUG9uCMRDQysFLPzguWnTnvfaXr6qBSJOtbKhCXT5aSzXNCHr2ZIhXZg==
X-Received: by 2002:a05:600c:12c9:b0:38c:b319:6da2 with SMTP id
 v9-20020a05600c12c900b0038cb3196da2mr31709200wmd.125.1648420864103; 
 Sun, 27 Mar 2022 15:41:04 -0700 (PDT)
Received: from localhost.localdomain
 (2a02-8440-6341-357e-3074-96af-9642-0002.rev.sfr.net.
 [2a02:8440:6341:357e:3074:96af:9642:2])
 by smtp.gmail.com with ESMTPSA id
 v5-20020adfe4c5000000b001edc1e5053esm10400867wrm.82.2022.03.27.15.41.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 27 Mar 2022 15:41:03 -0700 (PDT)
From: Guillaume Ranquet <granquet@baylibre.com>
To: airlied@linux.ie, angelogioacchino.delregno@collabora.com,
 chunfeng.yun@mediatek.com, chunkuang.hu@kernel.org, ck.hu@mediatek.com,
 daniel@ffwll.ch, deller@gmx.de, jitao.shi@mediatek.com, kishon@ti.com,
 krzk+dt@kernel.org, maarten.lankhorst@linux.intel.com,
 matthias.bgg@gmail.com, mripard@kernel.org, p.zabel@pengutronix.de,
 robh+dt@kernel.org, tzimmermann@suse.de, vkoul@kernel.org
Cc: devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linux-arm-kernel@lists.infradead.org, linux-fbdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-mediatek@lists.infradead.org,
 linux-phy@lists.infradead.org, markyacoub@google.com
Subject: [PATCH v9 04/22] drm/edid: Convert cea_sad helper struct to kernelDoc
Date: Mon, 28 Mar 2022 00:39:09 +0200
Message-Id: <20220327223927.20848-5-granquet@baylibre.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220327223927.20848-1-granquet@baylibre.com>
References: <20220327223927.20848-1-granquet@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220327_154105_751569_511B138B 
X-CRM114-Status: UNSURE (   9.37  )
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

Signed-off-by: Guillaume Ranquet <granquet@baylibre.com>
---
 include/drm/drm_edid.h | 11 ++++++++---
 1 file changed, 8 insertions(+), 3 deletions(-)

diff --git a/include/drm/drm_edid.h b/include/drm/drm_edid.h
index 144c495b99c4..5d4d840b9904 100644
--- a/include/drm/drm_edid.h
+++ b/include/drm/drm_edid.h
@@ -359,12 +359,17 @@ struct edid {
 
 #define EDID_PRODUCT_ID(e) ((e)->prod_code[0] | ((e)->prod_code[1] << 8))
 
-/* Short Audio Descriptor */
+/* struct cea_sad - Short Audio Descriptor.
+	@format: See HDMI_AUDIO_CODING_TYPE_*.
+	@channels: max number of channels - 1.
+	@freq: See CEA_SAD_FREQ_*.
+	@byte2: meaning depends on format.
+*/
 struct cea_sad {
 	u8 format;
-	u8 channels; /* max number of channels - 1 */
+	u8 channels;
 	u8 freq;
-	u8 byte2; /* meaning depends on format */
+	u8 byte2;
 };
 
 struct drm_encoder;
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
