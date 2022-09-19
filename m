Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C6044ECAAA1
	for <linux-phy@archiver.kernel.org>; Mon, 19 Sep 2022 17:00:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vs5YuEvJ6lmifonKmY4pjpgbgQhix4dCwjzPoa4WSxQ=; b=DyKBJ0ndZXugL0
	6PgP9nwqmS6l9YObjJdsM8Yv6LtagOfLQG7/edTFKk7HijKHjYuyIkifMQVYRauFgfufxQ/X5NU+U
	Pxb01yu+wLFfefnGkwhjA7tOP844neN+v7z8fZQJWl9MnXm3l9cePABLWV8Ip45t3ABVG450dwYLC
	HJx4bZxGQDvK4eGkZWUXAZz4MoO+nSiifPItCV8UC1Mi0mA4iAU50Ccbl8VMZ3AUhVUgWjassZXUd
	gKwbGzH9nJLMsGrRrOWVNeSjWXYF7xZQmyC4tlM/EAkqRpC8CZvbFIL+s+fYRCaa0VdV2/61IIU5m
	dZzr3h41lWyg0BydqK3A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oaK7q-00D4VV-44; Mon, 19 Sep 2022 17:00:06 +0000
Received: from mail-ed1-x532.google.com ([2a00:1450:4864:20::532])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oaK7Z-00D4Io-CS
	for linux-phy@lists.infradead.org; Mon, 19 Sep 2022 16:59:51 +0000
Received: by mail-ed1-x532.google.com with SMTP id b35so221705edf.0
        for <linux-phy@lists.infradead.org>; Mon, 19 Sep 2022 09:59:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date;
        bh=VIAi0nNwF0EQ4Ycv099voA35UIwgAD/zCbxE9L3eFBQ=;
        b=R+qQPnPqizqQy0t3jkiLKwfr4K4/dgarwPfFttzlNb43E4o78izHqlKaHUTtF5L0aX
         U2rW7VDjsEC3GyuX7FFwe1iKr1B4FC7xjZcFh06+y0ryXl2F/GrkLLm1obnIhZPXlqL7
         hPJoE+3Rb00pJAWDNwRcizomgd5BsFP4RIF3WmuztmNQRO3lPH435EjKkezKb6JjjiFm
         +D7J3psGA0bhm1mdY2z/1oZ4WG2QYmi+YfIloXmbs1HtYN7LY1dMPOfFPG5+1SH3EjLd
         6WQPNGdX5ebzgk8mDgJXkf0TTio5UuUFR8R/cQCrHXJKjw3iFhqEji1Adg9w2agMIAih
         tkmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=VIAi0nNwF0EQ4Ycv099voA35UIwgAD/zCbxE9L3eFBQ=;
        b=bNEYo7MxR/OFf92wRqNn23zzGqd9ep13TKMT0NRGg+hgFBpD/oin8SjvEXL5k6UB1n
         vXWh3oM3k8M3AlbjS18xjuAP5AlO+BX5VSlcSxhiLQdM9XjCOca94+32s3aIGMPG6Kmt
         i6IZ25T+yfB+KlKSpIDPFIgffzdSCViJP+SWHaehXHeEdEwJVwC1T4R0xbSLXs0gokGT
         9jtLHMDkjLancM9R5JKH76lNMe3ZGgb/UNeureZWufGtz0fEcmp3RVTcLEsyAhOvdsbv
         bkOldL5VcyMFcIKfOhwUNFBuTGAXDgmLP+yFHcSpO/fC6BG987rOodcrNwKH3ddFu90t
         gOhA==
X-Gm-Message-State: ACrzQf3pkYUpwFQ8xPaYoabo6s/hsMUTlYK+eH9zOYALlqxYnmXRn1ni
	OfzoGicwdpBqgKEDpdmuBaa15iBoLviZjg==
X-Google-Smtp-Source: AMsMyM4FWcGqIb04fz++aRLharY4kKuVTi0otIV+l0WpEp9ORTAl2Z/yp1vEqg/lPBMW1Gcd0sxy3w==
X-Received: by 2002:aa7:c585:0:b0:453:e1c6:7dc6 with SMTP id g5-20020aa7c585000000b00453e1c67dc6mr6810316edq.245.1663606785020;
        Mon, 19 Sep 2022 09:59:45 -0700 (PDT)
Received: from [127.0.0.1] (2a02-8440-6340-f287-3074-96af-9642-0003.rev.sfr.net. [2a02:8440:6340:f287:3074:96af:9642:3])
        by smtp.gmail.com with ESMTPSA id cf16-20020a0564020b9000b0044fc3c0930csm20424246edb.16.2022.09.19.09.59.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 19 Sep 2022 09:59:44 -0700 (PDT)
From: Guillaume Ranquet <granquet@baylibre.com>
Date: Mon, 19 Sep 2022 18:55:59 +0200
Subject: [PATCH v1 01/17] dt-bindings: clk: mediatek: Add MT8195 DPI clocks
MIME-Version: 1.0
Message-Id: <20220919-v1-1-4844816c9808@baylibre.com>
References: <20220919-v1-0-4844816c9808@baylibre.com>
In-Reply-To: <20220919-v1-0-4844816c9808@baylibre.com>
To: Vinod Koul <vkoul@kernel.org>, Stephen Boyd <sboyd@kernel.org>, David Airlie <airlied@linux.ie>,
 Rob Herring <robh+dt@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Daniel Vetter <daniel@ffwll.ch>,
 Chunfeng Yun <chunfeng.yun@mediatek.com>, CK Hu <ck.hu@mediatek.com>, Jitao shi <jitao.shi@mediatek.com>,
 Chun-Kuang Hu <chunkuang.hu@kernel.org>, Michael Turquette <mturquette@baylibre.com>,
 Kishon Vijay Abraham I <kishon@ti.com>, Matthias Brugger <matthias.bgg@gmail.com>
Cc: linux-mediatek@lists.infradead.org, dri-devel@lists.freedesktop.org, Pablo Sun <pablo.sun@mediatek.com>,
 linux-clk@vger.kernel.org, linux-kernel@vger.kernel.org, Mattijs Korpershoek <mkorpershoek@baylibre.com>,
 linux-arm-kernel@lists.infradead.org, linux-phy@lists.infradead.org, Guillaume Ranquet <granquet@baylibre.com>,
 devicetree@vger.kernel.org
X-Mailer: b4 0.10.0-dev
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220919_095949_451151_CA762D7F 
X-CRM114-Status: UNSURE (   7.09  )
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

From: Pablo Sun <pablo.sun@mediatek.com>

Expand dt-bindings slot for VDOSYS1 of MT8195.
This clock is required by the DPI1 hardware
and is a downstream of the HDMI pixel clock.

Signed-off-by: Pablo Sun <pablo.sun@mediatek.com>
Signed-off-by: Guillaume Ranquet <granquet@baylibre.com>
Reviewed-by: Mattijs Korpershoek <mkorpershoek@baylibre.com>

diff --git a/include/dt-bindings/clock/mt8195-clk.h b/include/dt-bindings/clock/mt8195-clk.h
index 95cf812a0b37..d70d017ad69c 100644
--- a/include/dt-bindings/clock/mt8195-clk.h
+++ b/include/dt-bindings/clock/mt8195-clk.h
@@ -859,6 +859,8 @@
 #define CLK_VDO1_DPINTF				47
 #define CLK_VDO1_DISP_MONITOR_DPINTF		48
 #define CLK_VDO1_26M_SLOW			49
-#define CLK_VDO1_NR_CLK				50
+#define CLK_VDO1_DPI1_HDMI			50
+#define CLK_VDO1_NR_CLK				51
+
 
 #endif /* _DT_BINDINGS_CLK_MT8195_H */

-- 
b4 0.10.0-dev

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
