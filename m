Return-Path: <SRS0=nTb1=PJ=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E1C2CC433F5
	for <linux-phy@archiver.kernel.org>; Thu, 21 Oct 2021 09:28:27 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id AD9F760F9E
	for <linux-phy@archiver.kernel.org>; Thu, 21 Oct 2021 09:28:27 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org AD9F760F9E
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BCXTpn99JXvSM3zVXLoHve3PEp6k+R3YaGd8M7hJP7A=; b=k9Lh/MQOPJYUfq
	qHAMu5LDsLpQc7AT6XZr1y+UzPqon600kE8hqteaX0RAIicSfyFGBRXNirJqzt7TX/pubBI+p1Ws/
	Y1VIFa0BYS8L/3LL9/6R4Iiw+5rDuo++xf2dS2jPqq4NYecLHl1Uw6QiWqSEhw8YxYHT5PoxUAteZ
	ZjhYrln8wr3WAGHy+J+K+L3GrTOs/+T+tETHlLG7zFQuQT20AGATobdQpvT31ZgTXKKn1CSD/KxJ4
	dSwclV2NcJfIowrsc8gFX8hi4Uy8qgzFzkeABQu2BZMYi3sJtxxhyxHoBDv4/eq99FUKjHR3UcF7G
	1oktXP5MuzzX9kvSps9Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mdUN9-0071E9-1q; Thu, 21 Oct 2021 09:28:27 +0000
Received: from mail-wm1-x330.google.com ([2a00:1450:4864:20::330])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mdUMC-0070qY-Oa
 for linux-phy@lists.infradead.org; Thu, 21 Oct 2021 09:27:34 +0000
Received: by mail-wm1-x330.google.com with SMTP id v127so22230692wme.5
 for <linux-phy@lists.infradead.org>; Thu, 21 Oct 2021 02:27:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20210112.gappssmtp.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=YUizT5Wo6QNRZzLKQyX7xAagO6y2u5vlJ1IHIzpEMig=;
 b=8MyqEVx81dV7pE7mPfN/OecXsjb2Qv/SvK1MGn4n2hIQNJ6xMKdEUM7+tSQYLsARc3
 384KGvuma+/fJGBxypQUfCheMIhkOkkRINw34Pzd0q/SQ6tR4MlMAjs9O5A3OrQOsiRU
 XQn7qlnXHnN2U/PjSlX/4M3Zd3m+z09PEBjntw/9xgPMKCdU1Si1ds056Yb8Dx1rl6rb
 NTVjgk1gQDglYkuxVLUWjuts337Pg5iKRfsw9QdieDjb/xigjd6HO2bazX259Tg7ET2a
 rA6JVukqzDBTeTV+BTOloCEfnGeeWnsh4zYM+WHymrp7JepuIuzfZ1Xb9JeDLn3+BS7/
 O16Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=YUizT5Wo6QNRZzLKQyX7xAagO6y2u5vlJ1IHIzpEMig=;
 b=QZpfQxbcefI/0pFEoidPELsd93nuINuNlTHTNGj1lafWeC/mLB33AMO+0vBFkl1sKT
 P5fwe2yfuIOdCvyHOnYBIRy34yHJkMn3/ZO9d80WE5SvdQHt4ntCNg+ijhNx15SJN7s0
 aA5aQRG3z4k/OybnKgB3LxYhVEwVvv9kYal5d59MQowJarrx/fhr5XSLoWw0jhv1TnSM
 PX3lhOq1By0GXenOrkZgjfebd+l+eTdx6WzUFTzuL+wM60ePG+KkIea7sXbWciQgmqut
 YdocFWw+Gfhs6ONQIjDX2opSMTF8qx7zNevPfVMkAqcts/YfgVUmHhvPLO8zxNBAceQB
 b66g==
X-Gm-Message-State: AOAM5302jKCmdBu0s20I01KOJXiKhqDY1IYDGFOMw+QyUqhfe7akIXUc
 yLoDzIrqeSIwXTSTaFzbOtovxkFbEHS+EQ==
X-Google-Smtp-Source: ABdhPJz1E+9+oInCY1vqxibaqKskcDP7eWbh3y5SDTdZxzg/MhVoYwSyqQLSyEcMXzma59LSuMGbqw==
X-Received: by 2002:a05:600c:4111:: with SMTP id
 j17mr19808078wmi.59.1634808446096; 
 Thu, 21 Oct 2021 02:27:26 -0700 (PDT)
Received: from blmsp.lan ([2a02:2454:3e6:c900:5142:5fbb:5821:5dc3])
 by smtp.gmail.com with ESMTPSA id d3sm4538468wrb.36.2021.10.21.02.27.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 21 Oct 2021 02:27:25 -0700 (PDT)
From: Markus Schneider-Pargmann <msp@baylibre.com>
To: Chun-Kuang Hu <chunkuang.hu@kernel.org>,
 Philipp Zabel <p.zabel@pengutronix.de>, Rob Herring <robh+dt@kernel.org>,
 Vinod Koul <vkoul@kernel.org>
Cc: Sam Ravnborg <sam@ravnborg.org>, dri-devel@lists.freedesktop.org,
 linux-mediatek@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 Markus Schneider-Pargmann <msp@baylibre.com>
Subject: [PATCH v5 1/7] dt-bindings: mediatek,dpi: Add DP_INTF compatible
Date: Thu, 21 Oct 2021 11:27:01 +0200
Message-Id: <20211021092707.3562523-2-msp@baylibre.com>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20211021092707.3562523-1-msp@baylibre.com>
References: <20211021092707.3562523-1-msp@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211021_022728_845097_D3813833 
X-CRM114-Status: GOOD (  11.59  )
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

DP_INTF is similar to DPI but does not have the exact same feature set
or register layouts.

DP_INTF is the sink of the display pipeline that is connected to the
DisplayPort controller and encoder unit. It takes the same clocks as
DPI.

Signed-off-by: Markus Schneider-Pargmann <msp@baylibre.com>
---

Notes:
    Changes v4 -> v5:
    - Newly created patch after realizing that the specific clocks for dpintf were
      the same as engine and pixel clocks.

 .../bindings/display/mediatek/mediatek,dpi.yaml       | 11 ++++++-----
 1 file changed, 6 insertions(+), 5 deletions(-)

diff --git a/Documentation/devicetree/bindings/display/mediatek/mediatek,dpi.yaml b/Documentation/devicetree/bindings/display/mediatek/mediatek,dpi.yaml
index dd2896a40ff0..53acf9a84f7f 100644
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
2.33.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
