Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9BFB2C77B75
	for <linux-phy@archiver.kernel.org>; Fri, 12 May 2023 13:27:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Es3BDCUJv5pSqmuRtPulp5uHUPQKpJv/MplK9Mz0ths=; b=BwT9kUHHAKYfpQ
	XXe73EozoB+DpH+ug/UXJfjL3TDmB2iKgYYcTrtm8QEJAxcSRCJvnAvA1LYcV7JHaB/S+v/p53z6c
	rWsEwDJMnEMTxlFG/lm8t5HPItu2I/FDtxKjFqmKzzpx3mTVTwlvl9N9KY9Uf4HZ0DgOn+icgA1Ry
	jKct6KyRvWd0Aghkk5avNsfz4N+caY+iEuj1InXBXrlhxD2SYeiJf0e0W5PPGSb3gR0UNoDzZhcfZ
	f9Tbl6iEF9HkyqCcAjnqO/pELiGuFmXuygK7Ed8Zbudd47tSWtMp62304uSNw3CZT+JP3LgcQl2gF
	NcKF98fczqPfu1HoBkYg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pxSo2-00C1fg-0a;
	Fri, 12 May 2023 13:27:34 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pxSnx-00C1d4-1L
	for linux-phy@bombadil.infradead.org;
	Fri, 12 May 2023 13:27:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Cc:To:In-Reply-To:References:Message-Id
	:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:Sender
	:Reply-To:Content-ID:Content-Description;
	bh=E3Upg3aTXOSykFBuswINw2Ynr/KPWdYMePDYZ0wYPGo=; b=mT4b4n7JPEWXQe//h+Uw7TlI9F
	lXPOFGUjh27Ca38lKbIXjek6SpCHbrCdwCMPWqidHjH2JgQKVJvIlddMfrAQis6f7L72oSlDLhppJ
	SxTgiLbpV+aRldNiptiJtYYgTszHa2pt/RVzLRpZwy8t2vE/jk6durG7xNBhNZBJG9i1gs2Es6B8u
	y6OQ7Kyt1HOaByaAlSgMlGS+EM/arT3oA9dmbjkbvygSLkFuU51eKmWKFOwP7/jff3k8pDxMh7LTR
	1Z08h4OkbgydVCL2gXBrJc1P3/SJ7Cs7rsNWrFfJbm0bmBsM5ixalVwqhHo4zIgO3t20Y9LL7FALJ
	uSpOIvXA==;
Received: from mail-wr1-x42a.google.com ([2a00:1450:4864:20::42a])
	by casper.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pxSZ7-000idD-D9
	for linux-phy@lists.infradead.org; Fri, 12 May 2023 13:12:11 +0000
Received: by mail-wr1-x42a.google.com with SMTP id ffacd0b85a97d-3075e802738so9024637f8f.1
        for <linux-phy@lists.infradead.org>; Fri, 12 May 2023 06:12:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1683897126; x=1686489126;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=E3Upg3aTXOSykFBuswINw2Ynr/KPWdYMePDYZ0wYPGo=;
        b=D18WqcyhsEHteDCWs+WiqPrx7Bfi9Z9vjJLQW9XSPMpl1L05XYddY4gGHzkNGgLYHk
         +frzBijkWqgPEz1j6GP3+EL3wqWndJDgFiCO0f2Ugd6/EUKZJo2Z3CUBbrwVobVww0AX
         z3LBTW5FfjrK+ugRkeD4Jn1x7ZKMDVJUZsCnkD6qLLTIzMKeoo4j5K1AqV5wvu4ZGA3u
         2+4ixIjvhAVoCs6XqBEZkf2Nv1P6CUkC0Jl4bLBYvUps+pGxsI1WqZoxSy0/XraTB1MU
         J5jqZfzRb5S/UTj/UXJNTxClmha7Pv0UR6wme/its+waC3R3ORMYzsrRMMAPlAE6as8n
         DJ2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683897126; x=1686489126;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=E3Upg3aTXOSykFBuswINw2Ynr/KPWdYMePDYZ0wYPGo=;
        b=NahKZwP7VSP0WDxpvkIzwS7puzQoIEwEZ2PmlI1wuv/KSPh/I4mr9cYllexk7djv34
         V/gGZEd4N9RrzyRNQxUH1dHB1albmnMhBFtQ+3ZgOaWX/bP8k+8MCOBtkrj83NKUVhur
         25HgwUxMIi14TUhj8FdQs3CMz8rxJ3D94qD9xs31s2fG9dL6qBrSlOD99W6IRvm1Lag1
         m1c5CbDT+bTqRTnthrdFoH9axSiObALY+2VdxI+LUUxAMl43U8WFdbX4XBqvtVKDIBpx
         pGy/aEM52XwVZyaY+nEEoxMVusib814Ly9w2VHtwqW6B4B+6d/G33R5zw4Jl9PtzRJs+
         0Gtg==
X-Gm-Message-State: AC+VfDxS+BgcQgbgzPxU6/tmORLfFzqS/qcv+VZ5NtJk67mfZtvJBLst
	mWru5w1kDi1nqLBaFh44Y95eyg==
X-Google-Smtp-Source: ACHHUZ4tGXsd4xDhgDdFc7lEbJoFXvqExD7Gt0l3qykkz0SpblsqEw6QIG1AIvKGoKHKnq1EofVGEQ==
X-Received: by 2002:adf:fe45:0:b0:307:cf55:a7d8 with SMTP id m5-20020adffe45000000b00307cf55a7d8mr4294187wrs.42.1683897126615;
        Fri, 12 May 2023 06:12:06 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id v10-20020a5d610a000000b0030647449730sm23461965wrt.74.2023.05.12.06.12.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 12 May 2023 06:12:06 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Fri, 12 May 2023 15:11:43 +0200
Subject: [PATCH v4 12/13] arm64: meson: g12-common: add the MIPI DSI nodes
MIME-Version: 1.0
Message-Id: <20230512-amlogic-v6-4-upstream-dsi-ccf-vim3-v4-12-2592c29ea263@linaro.org>
References: <20230512-amlogic-v6-4-upstream-dsi-ccf-vim3-v4-0-2592c29ea263@linaro.org>
In-Reply-To: <20230512-amlogic-v6-4-upstream-dsi-ccf-vim3-v4-0-2592c29ea263@linaro.org>
To: Jerome Brunet <jbrunet@baylibre.com>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Kevin Hilman <khilman@baylibre.com>, 
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, David Airlie <airlied@gmail.com>, 
 Daniel Vetter <daniel@ffwll.ch>, Philipp Zabel <p.zabel@pengutronix.de>, 
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, 
 Sam Ravnborg <sam@ravnborg.org>
Cc: Nicolas Belin <nbelin@baylibre.com>, linux-amlogic@lists.infradead.org, 
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
 dri-devel@lists.freedesktop.org, linux-phy@lists.infradead.org, 
 Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.12.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=3041;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=ZpI/PJO6Xf8WoOhiydrQaAvUUYE2Db1Ge8Vycxk5Hk4=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBkXjsWS1bDD1T7c5jHtVh2mDmi/N/tULfkoyJonBy6
 aAYW1eGJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZF47FgAKCRB33NvayMhJ0X0hD/
 kBZHtVqfzeeLoJIm5iDoFYZXWOAwmCuCyXP4SkCEaW14dW6l+MHsVfy7MBBZDE2iy0PQXRuPHE3XUP
 TtXewezdiGStTjoz79vjbHJdmqA9IVLlPOO4SaH+Ch3QNHk1YW5a6Q0l3fT2DIDH3jUZL5/GN7Ykd6
 dynU4y5nuqtCwmVWe3/8iXzrKW24pPcx5Z3H73V2jvWyDve35hEVTJ4SAUHdLg5VaJOpI5YaUgCeBv
 jvgmC9Y8gszu0f5hxrLdRuIDC7O4N8V6QYDNMrqnLoDvLSRmeew8sNRGQBXt1XRBErjP/bJCSosPIc
 KY623vQ1OC987+OJ5O7W5LUxgPUsLYfxGon4u2Vw5p2dnR/aEafzbgqSPCnTpDDKFy0fM9lZCB7KD7
 5cufJ2HNshucaKwqPcv6Fd5k9wdTvs2ssLm7eo/neK+cEKzmO/3twdiQJjgUPZZ3uTD2xFMVi2Mbuk
 9P3axoWbL23M6qLbU5T/YVYgk5UrzCdiiPvqaYLIT+kU/QjzuiKg3K+vCm54rkdhzVenyrge2w/oAF
 N+khm9OMQ5XTzNcdGlN+xOedrnsn5ODaI2KQZjcrGIiKdXH8FHDPw5uQCachOzQg1jOlIxxl/rjjxI
 GT/OdXMkGmSWxikippEJd0yQb8M+T3jlhQ/j1Mt+JmeEK1+DyPS2ekpHWcvA==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230512_141209_476685_4F6FD492 
X-CRM114-Status: UNSURE (   8.96  )
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

Add the MIPI DSI Analog & Digital PHY nodes and the DSI control
nodes with proper port endpoint to the VPU.

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi | 70 +++++++++++++++++++++++
 1 file changed, 70 insertions(+)

diff --git a/arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi b/arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi
index 0c49655cc90c..a62fd3656406 100644
--- a/arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi
@@ -1662,9 +1662,28 @@ pwrc: power-controller {
 								       <250000000>,
 								       <0>; /* Do Nothing */
 					};
+
+					mipi_analog_dphy: phy {
+						compatible = "amlogic,g12a-mipi-dphy-analog";
+						#phy-cells = <0>;
+						status = "disabled";
+					};
 				};
 			};
 
+			mipi_dphy: phy@44000 {
+				compatible = "amlogic,axg-mipi-dphy";
+				reg = <0x0 0x44000 0x0 0x2000>;
+				clocks = <&clkc CLKID_MIPI_DSI_PHY>;
+				clock-names = "pclk";
+				resets = <&reset RESET_MIPI_DSI_PHY>;
+				reset-names = "phy";
+				phys = <&mipi_analog_dphy>;
+				phy-names = "analog";
+				#phy-cells = <0>;
+				status = "disabled";
+			};
+
 			usb3_pcie_phy: phy@46000 {
 				compatible = "amlogic,g12a-usb3-pcie-phy";
 				reg = <0x0 0x46000 0x0 0x2000>;
@@ -2151,6 +2170,15 @@ hdmi_tx_out: endpoint {
 					remote-endpoint = <&hdmi_tx_in>;
 				};
 			};
+
+			/* DPI output port */
+			dpi_port: port@2 {
+				reg = <2>;
+
+				dpi_out: endpoint {
+					remote-endpoint = <&mipi_dsi_in>;
+				};
+			};
 		};
 
 		gic: interrupt-controller@ffc01000 {
@@ -2188,6 +2216,48 @@ gpio_intc: interrupt-controller@f080 {
 				amlogic,channel-interrupts = <64 65 66 67 68 69 70 71>;
 			};
 
+			mipi_dsi: mipi-dsi@7000 {
+				compatible = "amlogic,meson-g12a-dw-mipi-dsi";
+				reg = <0x0 0x7000 0x0 0x1000>;
+				resets = <&reset RESET_MIPI_DSI_HOST>;
+				reset-names = "top";
+				clocks = <&clkc CLKID_MIPI_DSI_HOST>,
+					 <&clkc CLKID_MIPI_DSI_PXCLK>,
+					 <&clkc CLKID_CTS_ENCL>;
+				clock-names = "pclk", "bit_clk", "px_clk";
+				phys = <&mipi_dphy>;
+				phy-names = "dphy";
+				#address-cells = <1>;
+				#size-cells = <0>;
+				status = "disabled";
+
+				assigned-clocks = <&clkc CLKID_MIPI_DSI_PXCLK_SEL>,
+					 <&clkc CLKID_CTS_ENCL_SEL>,
+					 <&clkc CLKID_VCLK2_SEL>;
+				assigned-clock-parents = <&clkc CLKID_GP0_PLL>,
+					 <&clkc CLKID_VCLK2_DIV1>,
+					 <&clkc CLKID_GP0_PLL>;
+
+				ports {
+					#address-cells = <1>;
+					#size-cells = <0>;
+
+					/* VPU VENC Input */
+					mipi_dsi_venc_port: port@0 {
+						reg = <0>;
+
+						mipi_dsi_in: endpoint {
+							remote-endpoint = <&dpi_out>;
+						};
+					};
+
+					/* DSI Output */
+					mipi_dsi_panel_port: port@1 {
+						reg = <1>;
+					};
+				};
+			};
+
 			watchdog: watchdog@f0d0 {
 				compatible = "amlogic,meson-gxbb-wdt";
 				reg = <0x0 0xf0d0 0x0 0x10>;

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
