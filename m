Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BC26FEF586D
	for <linux-phy@archiver.kernel.org>; Sun, 15 Feb 2026 08:55:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6uTW0AWBlVAl3/SAye3xmY+jTGI6PZab1wIgw/QBvNk=; b=PfXiI7S+S6b1Mi
	HMgr29QB6y8xm1G4h8NPZEVUpQmY+T0OGvLIE9nhyM9DIkTSKHj9KVINaG9KYRkpUXMgYqSi2vurc
	xVVhfQi4DqDIEWI5EqdzMDWHgTZAR+Y/K5aWElrPnu6DlwJipbZi/Rr+Ht07SnixPuCIihBYretiQ
	8G3qdw6JLwLff3Kb4dHB9wqIB62FhMeq2vkeN1DBiGfvje+MY9y0VqSp0kupSQ9a7dUpBPyvruo7J
	Tn9uu5TTWq6lTLw3eEB7v6LVBaHdUUYuSC78AJdCi11629UaChr2WCHOprOmdBn9lF5pz6TxFTOVh
	4/HkYVDD2p8TiV8leUhw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vrXus-00000005H9x-1T56;
	Sun, 15 Feb 2026 08:55:46 +0000
Received: from mail-wm1-x32d.google.com ([2a00:1450:4864:20::32d])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vrXun-00000005H6O-1QyZ
	for linux-phy@lists.infradead.org;
	Sun, 15 Feb 2026 08:55:42 +0000
Received: by mail-wm1-x32d.google.com with SMTP id 5b1f17b1804b1-4806f3fc50bso26897345e9.0
        for <linux-phy@lists.infradead.org>; Sun, 15 Feb 2026 00:55:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771145740; x=1771750540; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=T8EVs3djMjehVjELOyPKlz6f3ecqc5eYir0MGFdbhOo=;
        b=X6Fzld5OZ8tuX12fYm1LnZjv7KRKNGYmMheSMmcImwv8t0mrfdGYlXmbdKJi/N+DY8
         XYrB6rkOhyr7lsJ6jwG+7G4HZgZ1QIYlik88b8ePe1RWwMSUPG/In5SHxGiGPwMhkEMn
         6cJ2gDrXhv273nig1qiYezhwkC13ad4Yy/Ajkin+FGOZ6Y5w8+8ossaX2MbEmPBt3ez6
         q07e6FaGAEoF51C9TTAL65PmaBLe9/+uZZljEFP2U9rFOiRxENULht++V3PJnlvnChb5
         1M6cm890fHOVuPHFWhx0ccaQNolzhAcL/hGOhf63Qo6LfigYV5t9ihdC0wptU4NJWqAi
         96Cg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771145740; x=1771750540;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=T8EVs3djMjehVjELOyPKlz6f3ecqc5eYir0MGFdbhOo=;
        b=i0U3WySRBidP3DkB6mRBQu3PaKiHrry+L2O90vN6Cltz1SsfUd6a5Ii7Xt9sXNzI9F
         0VzmAXPLzwCFycjiJx7SljOP9RQEV/NnyyV9pGbqu7OAwigqYP1fP7rfYPKyyHu+8MR/
         i1wiIyjExXh8MwlPEzTNzPOtS0FTLW7KyBK0DQIRmByZLTLZM76bKy4i9pm1tUQBnqpd
         O9GouR2XmKRQ4RRnzI0ItncMMFytNEdWkZbYgNCDt+p9rzeJaXDGqhohg304gHeraCoU
         rVnLi+AdpFW1Ztxi3MhCmBaoLP3NMxBqwjUC/1RqFrmhdlYWgXdetY5jP+e0BowelX9/
         pB0w==
X-Forwarded-Encrypted: i=1; AJvYcCVvDKN0CuOFut9tS0qR1/P36jaURngx5NJp6vy86IRsEOn0UGHSyp8GrEEB2T/fPUrnnUvZX+RmlkQ=@lists.infradead.org
X-Gm-Message-State: AOJu0YxD5MH3ps52fmP4EAWHpIKsGpB68a/torgYLJvE9Ujij1+aqdZi
	+ytBlKEJm5ABaa0NxXjO4w5QnBs0vsdHTSCMGFG60lcJ3kGxq/nzCDuX
X-Gm-Gg: AZuq6aIQ1P5EVL3Z7YVdrKmAdr+HIwUnuM+Moe4bP1i4F5XCP6J2vwDESMYfTvypbuV
	BSLiJJlVWgFC4zj7p6gN9AQz/V9LVPNtrTqB5Bv5ezyCoW9M7Hx4lNxNQ0q+jfSp6GnbhZHEGBl
	zDFjkD588E8xojPDBzUTxdDYzvIOrcX7QzeoONUX8vhM9yImKfaxLE3isro0/2sjmtH8sdGR4aL
	QIHq8Tx2Iu8RfoRnva7UCZ9Mg/L2rqU0S7XWu2crEf2EGXWnOgvM061gpA5aX4rSvqkIf5h/I+9
	Gf7dtIbkOdbUnjmnUMjtSYfGG2K9wKNCSLah8i6mBavV9ikVmu6aLGzKLt/flPDgGs9mWi3+fb3
	PoUzN4CPAWSJKwbU9WSxJv32qS2RNM82C6lQA4dT1DskNx/x/M7dIZOO5RbeM0E09FXcsYReRUS
	epeAlkqxr6TfirroK6G44=
X-Received: by 2002:a05:600c:6814:b0:483:43da:6c87 with SMTP id 5b1f17b1804b1-48379c14894mr77535195e9.33.1771145739686;
        Sun, 15 Feb 2026 00:55:39 -0800 (PST)
Received: from luca-vm.lan ([154.61.61.58])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4834d5d78cfsm547211675e9.1.2026.02.15.00.55.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 15 Feb 2026 00:55:39 -0800 (PST)
From: Luca Leonardo Scorcia <l.scorcia@gmail.com>
To: linux-mediatek@lists.infradead.org
Cc: Luca Leonardo Scorcia <l.scorcia@gmail.com>,
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
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Jitao Shi <jitao.shi@mediatek.com>,
	dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-phy@lists.infradead.org
Subject: [PATCH 1/4] arm64: dts: mt8167: Reorder nodes according to mmio address
Date: Sun, 15 Feb 2026 08:53:53 +0000
Message-ID: <b7d7c27dda4dc1779425c57d187b84abaf6a1093.1771144723.git.l.scorcia@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <cover.1771144723.git.l.scorcia@gmail.com>
References: <cover.1771144723.git.l.scorcia@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260215_005541_419887_F7B2FCF1 
X-CRM114-Status: GOOD (  10.30  )
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
