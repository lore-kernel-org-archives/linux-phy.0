Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C2682EC1107
	for <linux-phy@archiver.kernel.org>; Mon, 23 Feb 2026 16:26:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=y6BJX4wSiZmtl1fQFb6qCc3YfEcwFNLRcppbzTCxLZs=; b=TA4ZLrXhc/hsGr
	dn1uBVP8qi4PN13HUdTRYkkrZsSdQJPAQMFiEarjsY67T89sTV+bypofZySkNSLsbqhHKv60y451W
	bmjoFyc9rbvSI2gQ37FRSNvUzEP7DnABAoy8BkG0Ai2OlnNYQSJYu6u9HT6fwrg46YqwyKAqjyLs7
	3mGDZSBZI+xid35aoDYYmIejXESSVTodmVqM7ebsMbaJwcfN3gw5BpGBauoHDDObsD4AOV0K7YPKo
	HKqOBV2exrsmLwmJ0YFUKpmseC65cF/O/2V7622U/pTJmKmWEWDWbUnisQYEKdKwP1lVstIDoZJft
	ag00VBq1+n3YF8c2ymdQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vuYle-00000000fnd-240v;
	Mon, 23 Feb 2026 16:26:42 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vuYld-00000000fmO-2BI3
	for linux-phy@bombadil.infradead.org;
	Mon, 23 Feb 2026 16:26:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=wgeTGS+8qJEGuJv9Z7ulFAIz5McOanQP0tQrEdPQw4A=; b=D9WgtD7YMyxcPyWZlIWZA6IUfr
	9bDWxcoZXc/fRd2ekQJXD7sNyEB5koDxnfowqyCYdz32pyw60R/9NrwsEg+yS4DWdsi8RqlE5Dm8e
	qr9H74C+4NMnZd5v7WoXfB5MMZnnUuytKUQdKZjRZv+PKufoOfyF4LJygZ86yZNLm0LAV/DSxB77R
	ntMW8GjTYwxrjEChCZ7hIm/XF47boN48du1Q6dPedxEU+D17/A86JrwFc+/GpF1nyh/SQKSukZfbE
	GvpAHgaq8TL/HhuEsO1+qrHRBD/7SjUyjUvOO/XqFHhVM9DZfdpxshm6es9iuxHwNm+L4oo2ep+5r
	Lwdb1rWw==;
Received: from mail-wm1-x334.google.com ([2a00:1450:4864:20::334])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vuYla-00000005T6M-2lDX
	for linux-phy@lists.infradead.org;
	Mon, 23 Feb 2026 16:26:40 +0000
Received: by mail-wm1-x334.google.com with SMTP id 5b1f17b1804b1-4836f363d0dso39904635e9.3
        for <linux-phy@lists.infradead.org>; Mon, 23 Feb 2026 08:26:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771863997; x=1772468797; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=wgeTGS+8qJEGuJv9Z7ulFAIz5McOanQP0tQrEdPQw4A=;
        b=iihKvzRtnp9ERC28mT5Ojzr6QK4PDq3pUf3TNQQEsRottELEGeFwnSzxzrV2Q0IhaK
         z2nHNaX4XD5hY5dTwd1zUT9hhi2XXjU72askAIiSAJHNyVkdE2UlQeLcfCO2RYxaLN9l
         AeXf53LEYgzcfpxhjFJwDit2mFhOmJ7qUI2SWvQKX//Jqc4aNmbwLS1Qa6Z+4BBEcRPq
         4hqpS8D+q5NnHopXOt8rlcvyshpIOnsY5tfCwm6ZNfqkgfiutsei9lX2OPyyS+8Ybd5I
         Aw0hktaJz0Xi4xywFuNR4MDzNXPf+WaW2F0ngZv2TSftn8S1jHlYfWPHl1HUut5/lSGZ
         LMNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771863997; x=1772468797;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=wgeTGS+8qJEGuJv9Z7ulFAIz5McOanQP0tQrEdPQw4A=;
        b=gTMeUEqerr9QT+gXE4OryG+m0b0jj79ZzMSw4+gIihkDMApJJJ0/LT0i7NHZNM0x4R
         WAFJfRze/vsIEbXkDhj9RhkbM2FxsQjoTXD6swLK81lqD2U4EQrMpD6vgANpbQbbS2IS
         k/ize9YROXOmAZgFguPTbiZBSop3SQjowxwoFllthCncxcRTZ9/vJ037oog2EoJqfgSp
         NHSVyP5UzVQpPhGtzFfFBh3gBhPlA8bKsrH3TPVP1W7QrB77tvlP4GSYjzKMr4nNZFAx
         S8JX/rXdbDnQDJ3xC6QcWDta5DweABV8XNAcPfyC9A6JqkoOZvYnbDyMMJMH5TAG1kYj
         rE7w==
X-Forwarded-Encrypted: i=1; AJvYcCWAr8QONjIGbEc5FC2oPDlI6EzfVjPBBj6PKpoirAGHxabQ3+EBazSZn6R3enzpRYLHi4ClBBuZmCU=@lists.infradead.org
X-Gm-Message-State: AOJu0YyX8aq/Nu9cWdhPE/73sgBi24wZ4jrR1c5on9e3JJagqZe3wy7j
	ICP66/mbZwj04bakZQwrcEaie1wjGQz6KmgJM5Hy9i54Y4W9Q5s+Ohwi
X-Gm-Gg: AZuq6aLPkqJbuZ3Tt97rgHXyG3qbg94uV3KoLUVJIAHSKNVwiqQIN73Ksrm9QQWRKaj
	Q8AthtbUz9y15VL6xqSo/EcjHiLKT/GNA6pHIRVxozEmjnZ2Ji6cdtKb4FMcoN9NSKFu5ajDXqX
	S1Ziz1BBgqGA1l28GyhILSTmeorjQRoWSsv/wm+IN7J8l4p0t4HkyR8Aryix6PkrpjheY6js8pf
	Ah3eei6cHH+zOciQPMesQRruscknwHM3TimCr/g4K+gffAvxFP7GcLCufSV8LR7YNxNbs1fw8HK
	rZUYwvmZrCYLk3IcLSlpXqC+okBoZ4tBCTIofwHJX2azBS7cBYEJkoo3Epc7Y2GTerUfgqmkuMr
	YyMM4/qSsWvUeEkRFkxUFbbUn2ruyu2ZA/a3G7wl8faULw54lHn26XxOZkRJhY4sEC6nkzz2+ld
	G7Zix4Kc21m8NhnrH2klk=
X-Received: by 2002:a05:600c:4fd3:b0:480:4d38:7abc with SMTP id 5b1f17b1804b1-483a95f8eebmr158193415e9.11.1771863996672;
        Mon, 23 Feb 2026 08:26:36 -0800 (PST)
Received: from luca-vm.lan ([154.61.61.58])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43970d5463dsm19120357f8f.34.2026.02.23.08.26.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Feb 2026 08:26:36 -0800 (PST)
From: Luca Leonardo Scorcia <l.scorcia@gmail.com>
To: linux-mediatek@lists.infradead.org
Cc: Luca Leonardo Scorcia <l.scorcia@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Chun-Kuang Hu <chunkuang.hu@kernel.org>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	David Airlie <airlied@gmail.com>,
	Simona Vetter <simona@ffwll.ch>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Chunfeng Yun <chunfeng.yun@mediatek.com>,
	Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-phy@lists.infradead.org
Subject: [PATCH v3 1/6] arm64: dts: mt8167: Reorder nodes according to mmio address
Date: Mon, 23 Feb 2026 16:22:45 +0000
Message-ID: <cd857bb68661a3b5b7bab222b2ceb5337582e18d.1771863641.git.l.scorcia@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <cover.1771863641.git.l.scorcia@gmail.com>
References: <cover.1771863641.git.l.scorcia@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260223_162638_801650_AF39DB59 
X-CRM114-Status: UNSURE (   9.97  )
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
