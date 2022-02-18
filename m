Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4C4D5C433F5
	for <linux-phy@archiver.kernel.org>; Fri, 18 Feb 2022 15:01:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=i++9A4y4JFVGHjVdKnSB7kq/AhCIBkKmTGPGB+c5bVs=; b=aXucrE1UYzEPDq
	Sv4lVB5GJaH8Qw5tIM2eFM/nHwmxNZY0RE6wHrPYDKnxGE4PXbEZDkPc1sGTsmsxCMSzfmO4QsJyx
	76i4dict5/TYU2pjN7KiOvCZz9IGPoyAUNobtZSxX5/XQ5yBv5XQjNBjVE6QytuWgYX/cAU7KYlc2
	zWBcrfN8isdnQ7/H+F4EEfwDp1OpbRwauAzbToGR7I9qB4vtwn94dF2dqOVyOFJA/lw1FnPM5lOGo
	CkTBng9uCMnf0Z9WbIPHLTNrBtSeOECg59ppB1n+vhTnEqI6lsc4tp+6pEaBVrZ3blOophncbKoNt
	GyAfxrLSueVDt8W6bbLA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nL4lZ-00EvZI-He; Fri, 18 Feb 2022 15:01:49 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nL4fw-00ErvS-S2
 for linux-phy@lists.infradead.org; Fri, 18 Feb 2022 14:56:03 +0000
Received: by mail-wr1-x441.google.com with SMTP id p9so14994973wra.12
 for <linux-phy@lists.infradead.org>; Fri, 18 Feb 2022 06:56:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20210112.gappssmtp.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=qC+RbOnlbAMYT0RkhfvSIqXlBo3fNavEyqmQsnLiR2Q=;
 b=CB/gthuBR1PKlTX0iRK6AGpgmej1LoRD8khuOAy0FQB9eCSE8iJkQM4NYE1ZysOiKs
 la2wmI5DNqHmk3Wie4KVwcRAjSuR3pv9v0Z3NBZHUVKejZwAY0Y78WkhHLlnXLYHPDIv
 KiAERdi2FrteWdUGKvtFGAAT71x4pk+S1RHGgB1i/atRB3wMMCKZVkDFzFbER0ZMu+O4
 VATNEmRSJkbX/ZDl4zvF+/q0Cl8dwfUwyt24KzEVU8MVMBpgeCCsQTzOW3z1fLhqK7CM
 WOhVK1BhA0a2HUW0Pn8hKI2l4dGz92rXj1d/SpDEDofgbA1bFqHzXEVn6guVSxM93lv7
 SjxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=qC+RbOnlbAMYT0RkhfvSIqXlBo3fNavEyqmQsnLiR2Q=;
 b=t7xouG4ujEt2AURPtAngLX4ALLNIbUlhVg5isXUyWVU+b+dTna6k2JqeKDq6eY3wqX
 CD1mXzWOZ98hamVQPe2CUC7UX5SpYAHuEj3RBsaH1us9QgzeLrfzmpyLzulGcO2imvHh
 ZEmW8d/iATy4mll6P/Z1PiYt7s4jU4mw8gAQYsDTKLYrJovzd03q6I7tb7qsDYPSv8JW
 rGbn4iUCU0aPETBwXjri3Ny6CaNqtsJ9EKiScJWtCR7OGT4u8EGecOAHabYrQaExhrPr
 6BlvcFtHMFSMiWVqO9Re/cuis6Blu+J8oCJfaVWq33vLoCPATMvtRXgdonaRKbYbfBom
 wlzw==
X-Gm-Message-State: AOAM530E8nYrqL1bSvfrjSJ+CSkWbHd/xPozHYnhxT6EmKhRZUtmMpOF
 5EUWr5Kp3V/L0G6afJPb0MTsXA==
X-Google-Smtp-Source: ABdhPJwNBdk3NS5ZflKP/t4iGuuUk373NB0fBIlAS30h710cFUX/Rlxqs4tq3A739PN3fuS29Ive5g==
X-Received: by 2002:a05:6000:257:b0:1e3:3a1b:d4ca with SMTP id
 m23-20020a056000025700b001e33a1bd4camr6304391wrz.112.1645196158903; 
 Fri, 18 Feb 2022 06:55:58 -0800 (PST)
Received: from localhost.localdomain
 (2a02-8440-6241-3b28-3074-96af-9642-0002.rev.sfr.net.
 [2a02:8440:6241:3b28:3074:96af:9642:2])
 by smtp.gmail.com with ESMTPSA id b10sm47431454wrd.8.2022.02.18.06.55.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 18 Feb 2022 06:55:58 -0800 (PST)
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
 linux-fbdev@vger.kernel.org, Markus Schneider-Pargmann <msp@baylibre.com>,
 Rob Herring <robh@kernel.org>
Subject: [PATCH v8 01/19] dt-bindings: mediatek,dpi: Add DP_INTF compatible
Date: Fri, 18 Feb 2022 15:54:19 +0100
Message-Id: <20220218145437.18563-2-granquet@baylibre.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220218145437.18563-1-granquet@baylibre.com>
References: <20220218145437.18563-1-granquet@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220218_065600_994567_20781D95 
X-CRM114-Status: GOOD (  12.03  )
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

From: Markus Schneider-Pargmann <msp@baylibre.com>

DP_INTF is similar to DPI but does not have the exact same feature set
or register layouts.

DP_INTF is the sink of the display pipeline that is connected to the
DisplayPort controller and encoder unit. It takes the same clocks as
DPI.

Signed-off-by: Markus Schneider-Pargmann <msp@baylibre.com>
Signed-off-by: Guillaume Ranquet <granquet@baylibre.com>
Reviewed-by: Rob Herring <robh@kernel.org>
---
 .../bindings/display/mediatek/mediatek,dpi.yaml       | 11 ++++++-----
 1 file changed, 6 insertions(+), 5 deletions(-)

diff --git a/Documentation/devicetree/bindings/display/mediatek/mediatek,dpi.yaml b/Documentation/devicetree/bindings/display/mediatek/mediatek,dpi.yaml
index dd2896a40ff08..53acf9a84f7fb 100644
--- a/Documentation/devicetree/bindings/display/mediatek/mediatek,dpi.yaml
+++ b/Documentation/devicetree/bindings/display/mediatek/mediatek,dpi.yaml
@@ -4,16 +4,16 @@
 $id: http://devicetree.org/schemas/display/mediatek/mediatek,dpi.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: mediatek DPI Controller Device Tree Bindings
+title: mediatek DPI/DP_INTF Controller Device Tree Bindings
 
 maintainers:
   - CK Hu <ck.hu@mediatek.com>
   - Jitao shi <jitao.shi@mediatek.com>
 
 description: |
-  The Mediatek DPI function block is a sink of the display subsystem and
-  provides 8-bit RGB/YUV444 or 8/10/10-bit YUV422 pixel data on a parallel
-  output bus.
+  The Mediatek DPI and DP_INTF function blocks are a sink of the display
+  subsystem and provides 8-bit RGB/YUV444 or 8/10/10-bit YUV422 pixel data on a
+  parallel output bus.
 
 properties:
   compatible:
@@ -23,6 +23,7 @@ properties:
       - mediatek,mt8173-dpi
       - mediatek,mt8183-dpi
       - mediatek,mt8192-dpi
+      - mediatek,mt8195-dpintf
 
   reg:
     maxItems: 1
@@ -54,7 +55,7 @@ properties:
     $ref: /schemas/graph.yaml#/properties/port
     description:
       Output port node. This port should be connected to the input port of an
-      attached HDMI or LVDS encoder chip.
+      attached HDMI, LVDS or DisplayPort encoder chip.
 
 required:
   - compatible
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
