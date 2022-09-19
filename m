Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0B1B9C6FA86
	for <linux-phy@archiver.kernel.org>; Mon, 19 Sep 2022 18:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0dtwJMEOOKuusbO4mTJPNPzRWadgODsQkWnvdyZrjhY=; b=mbr+yITlPjSEeG
	G1a9fcTyPZL1k6ygTwQIFZSASxs/+Pg1TwAflMpAv0KvcpSxOVh4JQmmerkIVhNyru+QahAOAnQKn
	UYuoFbtomrUHnH5UDDhg9xAAfeJ8V6ejrfaxrZzkdqDOqRxnun/PbMPSYh9538mYNRW6HrYcMznCS
	cb9SHjmmdftwFS3rtMuzdvRIFrJAk1ocG7g2zc5I39vsIgY8rpxxVWsQf3h158H4u0elvc7Yv+OJv
	Q+lYx7MNSHBhhcgaEksOcpxEDSz+Jp7BHaDP8Oym6jrEuYd0gCdWbpAbKvISPn2n6YLkV0Rm3HJqv
	BS4I2JGg/mtS/bc+pFAQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oaL4f-00DUEg-Cw; Mon, 19 Sep 2022 18:00:53 +0000
Received: from mail-ed1-x532.google.com ([2a00:1450:4864:20::532])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oaK7f-00D4Io-6X
	for linux-phy@lists.infradead.org; Mon, 19 Sep 2022 16:59:56 +0000
Received: by mail-ed1-x532.google.com with SMTP id b35so222296edf.0
        for <linux-phy@lists.infradead.org>; Mon, 19 Sep 2022 09:59:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date;
        bh=5y6U/O2cW1kp0MEYYlgdcRumC1g8PUdg2NEss+CEK4Y=;
        b=u9o63LTxFa7L0qIFlEApgQkRIlw0NFfFQtW1Vdw4ql0gk0AkcKQUA308pxM1LeQsTV
         ealEEZUUQ1Hoc26qB9doB91p2dMDciChIfhr5efax2uEJls/dFAHbvg72hGqyPc2ZCli
         /jtjFI0iCGSTOGhwM0REsrlbCu6NmyGmUve8aAOWWow0ddGpbjiYETkTphqQ7chs719p
         i4s1mpSRVVmRqL3N3loAyHeDe/c22M5IQRRGBjhk0zhNR088zfQCYCghvg7Gf0yjBkOV
         jWYjrMsnDxopS6FaQY3glD94bxQViwhQjaECJnwkS+0NUaZXxlVdW4g7EbcdNq8ZdMwI
         t5Jw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=5y6U/O2cW1kp0MEYYlgdcRumC1g8PUdg2NEss+CEK4Y=;
        b=zz8WTaxA0KdFPqffAHJSX9dYZ+pIvgx+UzeGErnNQEDxMcEyxpCRdAR2XljGgd1BAV
         yJLdIo0BzxSdKO6q9AxxFbzcSify+jUAAp2M3R2bDqKmWhQ/freZWm2XbUEqhD40vZ2Q
         z26PHW211Abi0RijtSxNHvmXbaoAX7G5f6r4wzg41me5e03M+gJD5sizK4nQZmjhBNIJ
         zSVMSnHDf/Ke3H6dts7bLSoIX9GpS0f9u+eC0xHuLzzera/EGeQ3Et4ZkPkGh8OxxqI6
         IfbxAa7ev+0gVqUxTwesvmV6U7+blVyTEu+Vqm1lBBnmY3p+NjjAgV9YikIHDxRoT5xh
         KfqQ==
X-Gm-Message-State: ACrzQf15PwlEHjCFfKuf/Ff/LSXytnODmMGOCv8qhXqa3dgV3jJFplSJ
	pXxeVhmpANUpb4BX0NZotcRArA==
X-Google-Smtp-Source: AMsMyM4z9QtWkhNsKkQaCij9zXzUMc6vE8fa01Z3HxRTpUioaFewUxAHVAEU609+mICb4RrhgGgc5A==
X-Received: by 2002:aa7:da97:0:b0:452:bea2:5200 with SMTP id q23-20020aa7da97000000b00452bea25200mr16562187eds.341.1663606794718;
        Mon, 19 Sep 2022 09:59:54 -0700 (PDT)
Received: from [127.0.0.1] (2a02-8440-6340-f287-3074-96af-9642-0003.rev.sfr.net. [2a02:8440:6340:f287:3074:96af:9642:3])
        by smtp.gmail.com with ESMTPSA id cf16-20020a0564020b9000b0044fc3c0930csm20424246edb.16.2022.09.19.09.59.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 19 Sep 2022 09:59:54 -0700 (PDT)
From: Guillaume Ranquet <granquet@baylibre.com>
Date: Mon, 19 Sep 2022 18:56:04 +0200
Subject: [PATCH v1 06/17] dt-bindings: mediatek: set the hdmi to be compatible with
 syscon
MIME-Version: 1.0
Message-Id: <20220919-v1-6-4844816c9808@baylibre.com>
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
X-CRM114-CacheID: sfid-20220919_095955_291913_30DF64C9 
X-CRM114-Status: UNSURE (   7.59  )
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

In order to share register with a dedicated ddc driver, set the hdmi
compatible to syscon.

Signed-off-by: Guillaume Ranquet <granquet@baylibre.com>

diff --git a/Documentation/devicetree/bindings/display/mediatek/mediatek,hdmi.yaml b/Documentation/devicetree/bindings/display/mediatek/mediatek,hdmi.yaml
index abb231a0694b..86297b7eb7f7 100644
--- a/Documentation/devicetree/bindings/display/mediatek/mediatek,hdmi.yaml
+++ b/Documentation/devicetree/bindings/display/mediatek/mediatek,hdmi.yaml
@@ -16,12 +16,14 @@ description: |
 
 properties:
   compatible:
-    enum:
-      - mediatek,mt2701-hdmi
-      - mediatek,mt7623-hdmi
-      - mediatek,mt8167-hdmi
-      - mediatek,mt8173-hdmi
-      - mediatek,mt8195-hdmi
+    items:
+      - enum:
+          - mediatek,mt2701-hdmi
+          - mediatek,mt7623-hdmi
+          - mediatek,mt8167-hdmi
+          - mediatek,mt8173-hdmi
+      - const: syscon
+
 
   clocks: true
   clock-names: true
@@ -142,7 +144,7 @@ examples:
     #include <dt-bindings/interrupt-controller/arm-gic.h>
     #include <dt-bindings/interrupt-controller/irq.h>
     hdmi0: hdmi@14025000 {
-        compatible = "mediatek,mt8173-hdmi";
+        compatible = "mediatek,mt8173-hdmi", "syscon";
         reg = <0x14025000 0x400>;
         interrupts = <GIC_SPI 206 IRQ_TYPE_LEVEL_LOW>;
         clocks = <&mmsys CLK_MM_HDMI_PIXEL>,
diff --git a/arch/arm64/boot/dts/mediatek/mt8173.dtsi b/arch/arm64/boot/dts/mediatek/mt8173.dtsi
index 7640b5158ff9..3e7a0f406631 100644
--- a/arch/arm64/boot/dts/mediatek/mt8173.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8173.dtsi
@@ -1306,7 +1306,7 @@ od@14023000 {
 		};
 
 		hdmi0: hdmi@14025000 {
-			compatible = "mediatek,mt8173-hdmi";
+			compatible = "mediatek,mt8173-hdmi", "syscon";
 			reg = <0 0x14025000 0 0x400>;
 			interrupts = <GIC_SPI 206 IRQ_TYPE_LEVEL_LOW>;
 			clocks = <&mmsys CLK_MM_HDMI_PIXEL>,

-- 
b4 0.10.0-dev

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
