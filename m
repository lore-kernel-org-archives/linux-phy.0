Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 61D12E81A3C
	for <linux-phy@archiver.kernel.org>; Mon, 16 Feb 2026 16:24:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=y6BJX4wSiZmtl1fQFb6qCc3YfEcwFNLRcppbzTCxLZs=; b=Ne+MhLUgu6+WBy
	VrSuec3l1ZGxvRPzin8dSzQyTJGgQy3/kM6oUM1dqqFEV/GN4q90/mjlJZdv64rSf5VpucdJqkCjM
	qVKknT3eRF4QXgCmj0iLIpfqRZWJ5os/nW2QkrPA4us94BUi5Med47hh3OX6YrEVbihzHR56v8zNE
	f9CbAYko4F8NZCe7faqOGXBi0SkwNXDEOFQihhInQVRqxT7cJriq0ebZNTzRoaqZSsSDdPp1OQPaG
	KgCsSovaZZD3XpPWjjrQObMynLIuwZiKDr9BHO+eySuk4ZS874Ig4/mMdWCJPO9Z1inxHbN9exeJf
	ORZ9UDk2GFxd+rR72rfw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vs1P9-000000070rf-06oA;
	Mon, 16 Feb 2026 16:24:59 +0000
Received: from mail-wr1-x42a.google.com ([2a00:1450:4864:20::42a])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vs1P4-000000070lE-0o6M
	for linux-phy@lists.infradead.org;
	Mon, 16 Feb 2026 16:24:55 +0000
Received: by mail-wr1-x42a.google.com with SMTP id ffacd0b85a97d-43591b55727so3817122f8f.3
        for <linux-phy@lists.infradead.org>; Mon, 16 Feb 2026 08:24:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771259092; x=1771863892; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=wgeTGS+8qJEGuJv9Z7ulFAIz5McOanQP0tQrEdPQw4A=;
        b=EhEop5hdJ40sM8tNvc3r4twPlup5Edzv70BqaDppMM7OV+tbrQmxZH3f+rREcD9Qn0
         FhvEBmKH1T1Yb0AjFRMT/MspRaEvfkuw0fSMQG9xu1rKXmHEQjL504vCP5KykcWI5BCh
         crwWFh4vvB6XdT/SIZtuF+gkUvA1rMKZ7Ne6wKJd4AeqYoQLAMZ9NCVZfdZy3ADpsdVU
         ocRRzHtB8S8iZUomy+7tNC2J2/dZoFHyPAfCifIy5tykDl0wUgLdavKjORyxFQcjPHsV
         GKRHzqmS3HrZAsEwsO4ZC39+u/t/QhS5t8tHAB5+Dg1dUmsZm5VcyhTFpOUS1YOMEQT8
         Tmxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771259092; x=1771863892;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=wgeTGS+8qJEGuJv9Z7ulFAIz5McOanQP0tQrEdPQw4A=;
        b=bKvZrNYvg/CI239FkGghHZ0lqNiu9Pyxb5ntn3ZuEJYJ4AdSbh4SI9PPdufW77byvB
         IlT0Wb7V+A7/VSS4rxTlC7zfPRk2D54Q1jt55/dA+n6pvsZyPjj3vRXyVIHFck/gyAdU
         ZdkJ9XgV9ScyONp63UqljZ0LBvMqPtYl1UrEJkHbYfb24msl9B4hX5I36V24QnhnNYCK
         HdNHAE723Znl/XP2pIOSTjjtWsg4/wvXtOQ6wvTV8dsRj4C6T3KIWDw8EMiQ1WxZnSJM
         VJ01+1MDQ3NtBr5In/yOnUT5Oqt7mK8Ayu6+mTulyOHqO6JEoYSVvKZ1V+um3J8PvKEg
         v8OQ==
X-Forwarded-Encrypted: i=1; AJvYcCXW6gmBjbZ+ZSQ+G+sdja5xz+5w9KhLpMRmtXb/JIeYKBQDQ32KJxy/AZyK+5LJr3+iclhtz1JJejI=@lists.infradead.org
X-Gm-Message-State: AOJu0YyXViiDwIboktNMFHpDVnR3mH5BZfuwb22ONwr02dHr3elwXabn
	UrjB+QWqVVOmOia06tXW9cH304ahy6a6kKgw3DpBbZGOpDYdwZS2js/8
X-Gm-Gg: AZuq6aIGxXTPKCV9ZWcXSKIu9Ki0rR0cvmnoqdHAwKiDa5R3LQGS5kl7MvoQtIF34ib
	bIEBhTA6wnuv98zwIx8MK7AG7jBZ02uui11LkGSsLu7pF5NspngU21oPKGOXlr27Nmv4bYrSS6o
	1j4ub3c7pFkzMfpotHlHL7aFuSAaXKRG8T6/Al7Y9EKiJr+AHTbp7ynfmNw1tNGh67TNYcnmrcj
	96gkLoZC6xv/9Vo5wGkM5ZWPH5dQWg0dgleugtZ/jd0PXsPv0Am0twxGk8KaRxeh8XpCOvEhKl0
	+StzCRKzjKu0ZsyxVQ5BWsdrWYR5MU7qQ9pert9UsYS8j2R381gBnm4M2xfCUlSy8W1vhtvbjt2
	bbTQRJmGU1mt7V/G0zfFZsjK21pGnVRuFi7KsIQ8megQI8BMq7Pk0c5sajb7pzEy4BF7yzyF//Y
	Xyw+Ay+rY7dS/N8kUu1uQ=
X-Received: by 2002:a05:6000:1883:b0:436:3267:3ed3 with SMTP id ffacd0b85a97d-4379db61d66mr14007519f8f.22.1771259092222;
        Mon, 16 Feb 2026 08:24:52 -0800 (PST)
Received: from luca-vm.lan ([154.61.61.58])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43796a6a6desm28775962f8f.10.2026.02.16.08.24.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Feb 2026 08:24:51 -0800 (PST)
From: Luca Leonardo Scorcia <l.scorcia@gmail.com>
To: linux-mediatek@lists.infradead.org
Cc: Luca Leonardo Scorcia <l.scorcia@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Chun-Kuang Hu <chunkuang.hu@kernel.org>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>,
	Simona Vetter <simona@ffwll.ch>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Chunfeng Yun <chunfeng.yun@mediatek.com>,
	Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	Jitao Shi <jitao.shi@mediatek.com>,
	Fabien Parent <fparent@baylibre.com>,
	dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-phy@lists.infradead.org
Subject: [PATCH v2 1/6] arm64: dts: mt8167: Reorder nodes according to mmio address
Date: Mon, 16 Feb 2026 16:22:12 +0000
Message-ID: <70a64b57a83c89da6fe266977845d6c7599d75e9.1771258407.git.l.scorcia@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <cover.1771258407.git.l.scorcia@gmail.com>
References: <cover.1771258407.git.l.scorcia@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260216_082454_251387_D675C70F 
X-CRM114-Status: GOOD (  10.03  )
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

In preparation for adding display nodes. No other changes.

Signed-off-by: Luca Leonardo Scorcia <l.scorcia@gmail.com>
Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
---
 arch/arm64/boot/dts/mediatek/mt8167.dtsi | 68 ++++++++++++------------
 1 file changed, 34 insertions(+), 34 deletions(-)

diff --git a/arch/arm64/boot/dts/mediatek/mt8167.dtsi b/arch/arm64/boot/dts/mediatek/mt8167.dtsi
index 2374c0953057..27cf32d7ae35 100644
--- a/arch/arm64/boot/dts/mediatek/mt8167.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8167.dtsi
@@ -29,12 +29,6 @@ infracfg: infracfg@10001000 {
 			#clock-cells = <1>;
 		};
 
-		apmixedsys: apmixedsys@10018000 {
-			compatible = "mediatek,mt8167-apmixedsys", "syscon";
-			reg = <0 0x10018000 0 0x710>;
-			#clock-cells = <1>;
-		};
-
 		scpsys: syscon@10006000 {
 			compatible = "mediatek,mt8167-scpsys", "syscon", "simple-mfd";
 			reg = <0 0x10006000 0 0x1000>;
@@ -101,18 +95,6 @@ power-domain@MT8167_POWER_DOMAIN_CONN {
 			};
 		};
 
-		imgsys: syscon@15000000 {
-			compatible = "mediatek,mt8167-imgsys", "syscon";
-			reg = <0 0x15000000 0 0x1000>;
-			#clock-cells = <1>;
-		};
-
-		vdecsys: syscon@16000000 {
-			compatible = "mediatek,mt8167-vdecsys", "syscon";
-			reg = <0 0x16000000 0 0x1000>;
-			#clock-cells = <1>;
-		};
-
 		pio: pinctrl@1000b000 {
 			compatible = "mediatek,mt8167-pinctrl";
 			reg = <0 0x1000b000 0 0x1000>;
@@ -124,12 +106,36 @@ pio: pinctrl@1000b000 {
 			interrupts = <GIC_SPI 134 IRQ_TYPE_LEVEL_HIGH>;
 		};
 
+		apmixedsys: apmixedsys@10018000 {
+			compatible = "mediatek,mt8167-apmixedsys", "syscon";
+			reg = <0 0x10018000 0 0x710>;
+			#clock-cells = <1>;
+		};
+
+		iommu: m4u@10203000 {
+			compatible = "mediatek,mt8167-m4u";
+			reg = <0 0x10203000 0 0x1000>;
+			mediatek,larbs = <&larb0>, <&larb1>, <&larb2>;
+			interrupts = <GIC_SPI 121 IRQ_TYPE_LEVEL_LOW>;
+			#iommu-cells = <1>;
+		};
+
 		mmsys: syscon@14000000 {
 			compatible = "mediatek,mt8167-mmsys", "syscon";
 			reg = <0 0x14000000 0 0x1000>;
 			#clock-cells = <1>;
 		};
 
+		larb0: larb@14016000 {
+			compatible = "mediatek,mt8167-smi-larb";
+			reg = <0 0x14016000 0 0x1000>;
+			mediatek,smi = <&smi_common>;
+			clocks = <&mmsys CLK_MM_SMI_LARB0>,
+				 <&mmsys CLK_MM_SMI_LARB0>;
+			clock-names = "apb", "smi";
+			power-domains = <&spm MT8167_POWER_DOMAIN_MM>;
+		};
+
 		smi_common: smi@14017000 {
 			compatible = "mediatek,mt8167-smi-common";
 			reg = <0 0x14017000 0 0x1000>;
@@ -139,14 +145,10 @@ smi_common: smi@14017000 {
 			power-domains = <&spm MT8167_POWER_DOMAIN_MM>;
 		};
 
-		larb0: larb@14016000 {
-			compatible = "mediatek,mt8167-smi-larb";
-			reg = <0 0x14016000 0 0x1000>;
-			mediatek,smi = <&smi_common>;
-			clocks = <&mmsys CLK_MM_SMI_LARB0>,
-				 <&mmsys CLK_MM_SMI_LARB0>;
-			clock-names = "apb", "smi";
-			power-domains = <&spm MT8167_POWER_DOMAIN_MM>;
+		imgsys: syscon@15000000 {
+			compatible = "mediatek,mt8167-imgsys", "syscon";
+			reg = <0 0x15000000 0 0x1000>;
+			#clock-cells = <1>;
 		};
 
 		larb1: larb@15001000 {
@@ -159,6 +161,12 @@ larb1: larb@15001000 {
 			power-domains = <&spm MT8167_POWER_DOMAIN_ISP>;
 		};
 
+		vdecsys: syscon@16000000 {
+			compatible = "mediatek,mt8167-vdecsys", "syscon";
+			reg = <0 0x16000000 0 0x1000>;
+			#clock-cells = <1>;
+		};
+
 		larb2: larb@16010000 {
 			compatible = "mediatek,mt8167-smi-larb";
 			reg = <0 0x16010000 0 0x1000>;
@@ -168,13 +176,5 @@ larb2: larb@16010000 {
 			clock-names = "apb", "smi";
 			power-domains = <&spm MT8167_POWER_DOMAIN_VDEC>;
 		};
-
-		iommu: m4u@10203000 {
-			compatible = "mediatek,mt8167-m4u";
-			reg = <0 0x10203000 0 0x1000>;
-			mediatek,larbs = <&larb0>, <&larb1>, <&larb2>;
-			interrupts = <GIC_SPI 121 IRQ_TYPE_LEVEL_LOW>;
-			#iommu-cells = <1>;
-		};
 	};
 };
-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
