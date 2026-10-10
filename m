Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 89A1CCA9ECB
	for <linux-phy@archiver.kernel.org>; Sat, 10 Oct 2026 11:57:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hUAHFwWXy6JRDv/TsUilah1oYx7g0MuNJNCQPJcrvAE=; b=XuvxcexYNz8u8M
	x9IIrUeZXqmLA4TF5sufmAUCpWCpLT3bH4XIWD4icQiqFLoKwZ1BzsRxDu7L5ncTRlPNUlmF/fcI8
	nRfOyibtCqSLcKRj0sMJovMQ1spXZl/nuydxLWnXVGZXxUWI5ebPyobEoE0blCeChzbPDS5Ap6OKQ
	T1zOiaFCMsVn2P93HZmJh6SLhba0mrwdfvn2RUg3P79n0oqfxZpJde+BQ9mQd0rli8yxI67UPc4gt
	3rj5RYZ7aEn/07Xj1qhkPKl0A68rOP63fOrbqIa8SmA3PeKREirGXMCFGy5jVb2rwQ+oobW79jEYx
	wb4HR+XUZwyalbRsfDIA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xFVhF-00000007yh2-2zI4;
	Sat, 10 Oct 2026 11:57:01 +0000
Received: from mail-wm1-x32b.google.com ([2a00:1450:4864:20::32b])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xFVgZ-00000007y5E-0WK0
	for linux-phy@lists.infradead.org;
	Sat, 10 Oct 2026 11:56:21 +0000
Received: by mail-wm1-x32b.google.com with SMTP id 5b1f17b1804b1-4a1688d7769so4684005e9.0
        for <linux-phy@lists.infradead.org>; Sat, 10 Oct 2026 04:56:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1791633377; x=1792238177; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=XawY6rGwERNjw0CFRz+0ONBwu0wfWrlBMNsKmysKmec=;
        b=JWWTUbZIdg7WsyHda0Swm0t1BbxxN2aiFvRotTS908u2wnnWrCd1IBFUtJUpJ3W4T6
         P23G/x9Ookg4nmgFT6C1rL403I6ZjwCO4QGxuZyDhie6jVT1RxNIRHZiV+Ncyzxn7F/6
         cI9jLpeoI3SLUzvgk+H7HZ0fp4H8ptRjLyhpKKMGY9KeczryGmMqrNUj7BY+A0scZBBb
         QpP1F56pmaT+tmOekIeD4SxOPclGdVQ23GwFIqu7lzj6Dx5Wbjeb6oRmMejxM/7GgUBc
         kq981lwu+MBrXuOysUddNpdopitkQ1UYgvfx3+/UwResDUqamfb1Cjq4dcy2R6TksymE
         c7Yg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1791633377; x=1792238177;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=XawY6rGwERNjw0CFRz+0ONBwu0wfWrlBMNsKmysKmec=;
        b=00wMRj86yfjPFzImfDV1h19hs5PnJq7ZQGLV76W+VlAntSf047VRe9KPWT89AAAdCG
         PdDHSAcK7G7tZ/jJwDb8Zbhz1wRsBif5ZXJrR2CloKnUvvOOX45j5g9t3+maGQm2MOmT
         No1tXqy143hjl5f/OW6Pkq1ou1Gg13/4L8655bZquW4HD+/d2oPzwTfWGQAGOBEJu9vb
         vjMC0yPH3VjB0gA1ldBtIUVB4Wmupbf5QmUUaFs6wTGkFmJgm1qVZl4JNDQoePb+TAzS
         YcYpJRNhEThVqKtEO32h/P6NhKBJDlW3rKas3dv5/lJVzHqy7bVUDZxpQoYHDxFgpW91
         377A==
X-Forwarded-Encrypted: i=1; AKwUvBxmRLz68JitzjMYagrBpuYxQgWnXjGUgFlb/TuE1AIK+ecp0GeCtBlq3jwf+gRygsVlbq4JMY+fM5s=@lists.infradead.org
X-Gm-Message-State: AFq9FYLBnfYxIsU6MUqM6TIJF8cixygW/6/C/MXn1/QOX++5dWsSHDrH
	rkif+vqG6L8lByIkIyZCRgCO1ww5DQ2m2O2c8R3DEsky1EMZdlo2I73T
X-Gm-Gg: AYBFou0izd85eSOJuMdd/XH+WbPhWIfrcDYJc+JCcisWFhXn9ZMbVyS5uEpR8uRKqDJ
	x8gOKzHJfwbaeHXoSIEEditfglaKTSFd+iP6NCwRkh98zq0RQ4jVB4WjTxW5Q0/Q2HnS0f1LfDN
	t8rBa87HJi3U9qnp8Tn941OjUDtsxN2ChS/Z32kDH1tG6xJX1iFu5Dt5SNT2IHjn2lmdRHpQgts
	bu0yy/EOfAJVptI3ggSpW/NFnKpNVQcEOTBjbrQfN9ZnLq/kCUgozDHhpsO6I/z007gTWHREvuf
	PtNowqyl++/KNUGSv4UTSTn5UlDJ4YFvjSyvSkWyz4jO0f4/8kehaFMjiLyVjfpZA0dr2BX5QdY
	wsf97h8+Jk7gu9/X0DJ/kaRlGL86aCNZ0h+Fytukrir7O+I1YLcIyadhPDFRZeYR3H/4Lo+/sbI
	gWlAELQI+LNekKH+xdmiYhlk3R1VOn3itkGNE5y0ri8gbxcTrNE9fxFgQumwBeued2xw==
X-Received: by 2002:a05:600c:820a:b0:4a0:98c:e082 with SMTP id 5b1f17b1804b1-4a18e4a3f0dmr88323785e9.13.1791633377176;
        Sat, 10 Oct 2026 04:56:17 -0700 (PDT)
Received: from luca-vm.lan ([154.61.61.58])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-48db9aca657sm8746340f8f.43.2026.10.10.04.56.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 10 Oct 2026 04:56:16 -0700 (PDT)
From: Luca Leonardo Scorcia <l.scorcia@gmail.com>
To: linux-mediatek@lists.infradead.org
Cc: Luca Leonardo Scorcia <l.scorcia@gmail.com>,
	Chunfeng Yun <chunfeng.yun@mediatek.com>,
	Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Brian Masney <bmasney+clk@redhat.com>,
	Jerome Brunet <jbrunet+clk@baylibre.com>,
	Chun-Kuang Hu <chunkuang.hu@kernel.org>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	David Airlie <airlied@gmail.com>,
	Simona Vetter <simona@ffwll.ch>,
	Nicolas Frattaroli <nicolas.frattaroli@collabora.com>,
	Chen-Yu Tsai <wenst@chromium.org>,
	Fabien Parent <fparent@baylibre.com>,
	chunhui dai <chunhui.dai@mediatek.com>,
	CK Hu <ck.hu@mediatek.com>,
	linux-arm-kernel@lists.infradead.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-clk@vger.kernel.org,
	dri-devel@lists.freedesktop.org
Subject: [PATCH 7/7] arm64: dts: mediatek: mt8167: Add HDMI display nodes
Date: Sat, 10 Oct 2026 13:54:07 +0200
Message-ID: <20261010115539.9237-8-l.scorcia@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20261010115539.9237-1-l.scorcia@gmail.com>
References: <20261010115539.9237-1-l.scorcia@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261010_045619_298673_2B4F4C7E 
X-CRM114-Status: UNSURE (   9.68  )
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

Add the required nodes to drive HDMI output on the mt8167 SoC.

Signed-off-by: Luca Leonardo Scorcia <l.scorcia@gmail.com>
---
 arch/arm64/boot/dts/mediatek/mt8167.dtsi | 62 ++++++++++++++++++++++++
 1 file changed, 62 insertions(+)

diff --git a/arch/arm64/boot/dts/mediatek/mt8167.dtsi b/arch/arm64/boot/dts/mediatek/mt8167.dtsi
index 27cf32d7ae35..ab76e0637eb1 100644
--- a/arch/arm64/boot/dts/mediatek/mt8167.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8167.dtsi
@@ -112,6 +112,27 @@ apmixedsys: apmixedsys@10018000 {
 			#clock-cells = <1>;
 		};
 
+		hdmi_phy: hdmi-phy@10018300 {
+			compatible = "mediatek,mt8167-hdmi-phy";
+			reg = <0 0x10018300 0 0x20>;
+			clocks = <&apmixedsys CLK_APMIXED_HDMI_REF>;
+			clock-names = "pll_ref";
+			clock-output-names = "hdmtx_dig_cts";
+			mediatek,ibias = <0xa>;
+			mediatek,ibias_up = <0x1c>;
+			#clock-cells = <0>;
+			#phy-cells = <0>;
+			status = "disabled";
+		};
+
+		cec: cec@1001a000 {
+			compatible = "mediatek,mt8167-cec", "mediatek,mt8173-cec";
+			reg = <0 0x1001a000 0 0xbc>;
+			interrupts = <GIC_SPI 148 IRQ_TYPE_LEVEL_LOW>;
+			clocks = <&topckgen CLK_TOP_26M_CEC>;
+			status = "disabled";
+		};
+
 		iommu: m4u@10203000 {
 			compatible = "mediatek,mt8167-m4u";
 			reg = <0 0x10203000 0 0x1000>;
@@ -120,6 +141,15 @@ iommu: m4u@10203000 {
 			#iommu-cells = <1>;
 		};
 
+		hdmiddc: i2c@11011000 {
+			compatible = "mediatek,mt8167-hdmi-ddc", "mediatek,mt8173-hdmi-ddc";
+			reg = <0 0x11011000 0 0x10>;
+			interrupts = <GIC_SPI 110 IRQ_TYPE_LEVEL_LOW>;
+			clocks = <&topckgen CLK_TOP_26M_HDMI_SIFM>;
+			clock-names = "ddc-i2c";
+			status = "disabled";
+		};
+
 		mmsys: syscon@14000000 {
 			compatible = "mediatek,mt8167-mmsys", "syscon";
 			reg = <0 0x14000000 0 0x1000>;
@@ -145,6 +175,38 @@ smi_common: smi@14017000 {
 			power-domains = <&spm MT8167_POWER_DOMAIN_MM>;
 		};
 
+		hdmi: hdmi@1401b000 {
+			compatible = "mediatek,mt8167-hdmi";
+			reg = <0 0x1401b000 0 0x400>;
+			clocks = <&mmsys CLK_MM_HDMI_PXL>,
+				 <&mmsys CLK_MM_HDMI_PLL>,
+				 <&mmsys CLK_MM_HDMI_ADSP_BCK>,
+				 <&mmsys CLK_MM_HDMI_SPDIF>;
+			clock-names = "pixel", "pll", "bclk", "spdif";
+			interrupts = <GIC_SPI 148 IRQ_TYPE_LEVEL_LOW>;
+			phys = <&hdmi_phy>;
+			phy-names = "hdmi";
+			mediatek,syscon-hdmi = <&mmsys 0x900>;
+			status = "disabled";
+
+			ports {
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				port@0 {
+					reg = <0>;
+
+					hdmi0_in: endpoint { };
+				};
+
+				port@1 {
+					reg = <1>;
+
+					hdmi0_out: endpoint { };
+				};
+			};
+		};
+
 		imgsys: syscon@15000000 {
 			compatible = "mediatek,mt8167-imgsys", "syscon";
 			reg = <0 0x15000000 0 0x1000>;
-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
