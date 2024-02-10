Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E54B7C4829D
	for <linux-phy@archiver.kernel.org>; Sat, 10 Feb 2024 20:46:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NpViNf5AWCC70cFW3EypPptUKqwzI3pwhjf+IjHD0d4=; b=wj7RpqbS/mxuEt
	XOUzI2HDMGn0fdjGqNcdjXW16dT523INZLsGr7te0pK5V7v2XyPK+jQ/yqx1HNPnTwaMu9B7Om9P4
	S17HXSAOsXXbl4kiuIXfMPK+YBMc2EFXCAyoMoG0mzjEl3Xg/a33j+xCK7oHsX3reTKWXgpEC0YiQ
	R86GLaeFG8/fKjZJu/ENY7QP+tFcbicikmUkXD9lp0eCg+/ZxEy98lfWEtSJvfgxBUhAF4H5d8nMX
	/pumJrJehkpw3nGIHZoLQwLY7NQ3F+JNjzgjQHjeoe+7GwrkBxCEQqnmGCbSfAiL4U5vRnAq3nvdX
	mSdJ+5n9LEAKXIKCaWmg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rYuFF-000000020CC-1OAy;
	Sat, 10 Feb 2024 20:46:41 +0000
Received: from mail-oo1-xc2d.google.com ([2607:f8b0:4864:20::c2d])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rYuF5-0000000205p-3a4I;
	Sat, 10 Feb 2024 20:46:33 +0000
Received: by mail-oo1-xc2d.google.com with SMTP id 006d021491bc7-59a45d8ec91so752858eaf.3;
        Sat, 10 Feb 2024 12:46:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1707597989; x=1708202789; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=X+jee4efnNUiNV1RtX5y1A9X8AcFgWXwTvWCcq5t/8o=;
        b=PuxXpjCZ8gfC5oLFfp+UkbKFINF5oPffrVJQ9iODAy0CHh4czMQRauad4/b3SWHDiG
         xspS5WrZ6/hgIj3W9A/2Crx+cu+Zv7SHZXzH15PplIL5EgMhVr0FFTwCFNbLIkul500h
         uRBQ0HgbMZJc9nprc00EUSpqjOJzsyw8o5jo6GW+cmcLmfT92izmjovfaI9+Ih4LBbZw
         WDYBOWie6RnBY1j2vYEcHQ/UyrfVgevXpXHh8qIYjyTP3rDwAaw6oaaYX5+ne183UIX5
         ssK0nnCSMw06qJA6t3/IwWF5OBIqh/Qf3nex2A3EaaTjgikw8j6O7rMwTcbXm8ON0nu6
         iv4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707597989; x=1708202789;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=X+jee4efnNUiNV1RtX5y1A9X8AcFgWXwTvWCcq5t/8o=;
        b=HwyoUjQ2DBLUWC3iitbR+sEoOUFRjFsgUKGE1gE2dQhTL57EGykaJxR15o7Jnb1IZs
         pgMblVmYwTQqHUMDcjmWlfTcd1WiGGJdSAoL8JX2tsjpNn+Sg9ZuqQ6fiyJzhIU168/d
         5DhzxpBRT9I067y8VkEe9XpzywYA2tHBx02otwy3u7+AVQdsgiXNhFty/9gE5FMxmCK1
         kYbiicP1Ov40GVNGRA8WRIoObI1/nuVpik8McZCsvjrda6oVzdgQb7ucN6nsapNBUI/m
         iB+mRnSD+2ckzRU0vLj9H6Q7FtOMnZb0hjFO61FKo4RXoDYfN0MU6qFOUcx6ZA10qlTX
         7dwg==
X-Gm-Message-State: AOJu0Yxr+ALoSyR5w1aWHNGbJcW/q2ZbG2TOfwqelm8av01UjhtHSTSd
	x1i+CHXanZ10Sq6EXI8rsDtaehJOGLH7GRrJMbXSg+Vr5N4DqX1iJp+BszbA
X-Google-Smtp-Source: AGHT+IE+7Q4zjnqD99X1wOCIWZux1UlC3g48TiSZqsWGyoEcQOAOcEZ9Sgyjp6zyB0blK/ckLz0q4A==
X-Received: by 2002:a05:6358:61c6:b0:176:5c75:b348 with SMTP id x6-20020a05635861c600b001765c75b348mr5305197rwx.4.1707597988924;
        Sat, 10 Feb 2024 12:46:28 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCU/Funz6vl4Z8HBiKu/tAOPe+UvMuiG/UEkDEf0wfP4rrmmLME6f5IAZc3kZr1cpU6lsLRwPHo42SbVjrjngMsy4dvhblCcqsGbFjxGQYVb3hy/zmhyi/Q+eOjGTo0c0dSZxBar+5mwsxWNbqO0s7XHwg1hudShO8rTwJulSyD+LzqB+64kPrjB3qa7t0v5TZLy1ckyoshpSildO27RPlSrYITgLtoVfGTPmG4hmhlbuD+Tre+wdv1w8PiRh2AgAfOf2eTjkGTP+CZWpuQGLa9jsrzQrUT1/sljK6GA0ZToA/b3IU47Prq8OSjj7LxPf0tRZz7WNCNpa1aEpTw4bjOZsHXLtEUjsbuiMN3QJWQ4PnDahI00sE1JP9SDA9CEeMraXkuCyu1Nk0Gd+BFkS8/eQm4cdRaM6T88D0HO1KV71B3vXl9zj8LmLahFDscex8oAUSY9/br9NOcaf7pQKMktQg3YpzxcMwL2jf6PtVRL5cNrraGggfGzEDhmVipDzK3FY8NrxMSs8kGhdWFPN6+8eKwtOvefnR++wbFLQNdQbuC51lMPjve2YgpUsKm1nZqJJUUcywNFUOBQA9ysRS01KfBND6jm5rghpnToD8Wwfw==
Received: from aford-System-Version.lan ([2601:447:d002:5be:27d7:3989:2897:88a7])
        by smtp.gmail.com with ESMTPSA id m20-20020a0cdb94000000b0068c9db26ae1sm2079526qvk.41.2024.02.10.12.46.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 10 Feb 2024 12:46:28 -0800 (PST)
From: Adam Ford <aford173@gmail.com>
To: linux-arm-kernel@lists.infradead.org
Cc: marex@denx.de,
	aford@beaconembedded.com,
	Lucas Stach <l.stach@pengutronix.de>,
	Adam Ford <aford173@gmail.com>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	NXP Linux Team <linux-imx@nxp.com>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH V4 5/6] arm64: dts: imx8mp: add HDMI display pipeline
Date: Sat, 10 Feb 2024 14:46:01 -0600
Message-ID: <20240210204606.11944-6-aford173@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240210204606.11944-1-aford173@gmail.com>
References: <20240210204606.11944-1-aford173@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240210_124631_931329_B0D25341 
X-CRM114-Status: GOOD (  10.81  )
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

From: Lucas Stach <l.stach@pengutronix.de>

This adds the DT nodes for all the peripherals that make up the
HDMI display pipeline.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
Signed-off-by: Adam Ford <aford173@gmail.com>
---
V3:  Re-ordered the HDMI parts to properly come after irqstree_hdmi
     inside AIPS4.  Change size of LCDIF3 and PVI to match TRM sizes
     of 4KB.

V2:  I took this from Lucas' original submission with the following:
     Removed extra clock from HDMI-TX since it is now part of the
     power domain
     Added interrupt-parent to PVI
     Changed the name of the HDMI tranmitter to fsl,imx8mp-hdmi-tx
     Added ports to HDMI-tx
---
 arch/arm64/boot/dts/freescale/imx8mp.dtsi | 94 +++++++++++++++++++++++
 1 file changed, 94 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8mp.dtsi b/arch/arm64/boot/dts/freescale/imx8mp.dtsi
index 9b8ab367d774..013c2d9824cd 100644
--- a/arch/arm64/boot/dts/freescale/imx8mp.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mp.dtsi
@@ -1940,6 +1940,100 @@ irqsteer_hdmi: interrupt-controller@32fc2000 {
 				clock-names = "ipg";
 				power-domains = <&hdmi_blk_ctrl IMX8MP_HDMIBLK_PD_IRQSTEER>;
 			};
+
+			hdmi_pvi: display-bridge@32fc4000 {
+				compatible = "fsl,imx8mp-hdmi-pvi";
+				reg = <0x32fc4000 0x1000>;
+				interrupt-parent = <&irqsteer_hdmi>;
+				interrupts = <12>;
+				power-domains = <&hdmi_blk_ctrl IMX8MP_HDMIBLK_PD_PVI>;
+
+				ports {
+					#address-cells = <1>;
+					#size-cells = <0>;
+
+					port@0 {
+						reg = <0>;
+						pvi_from_lcdif3: endpoint {
+							remote-endpoint = <&lcdif3_to_pvi>;
+						};
+					};
+
+					port@1 {
+						reg = <1>;
+						pvi_to_hdmi_tx: endpoint {
+							remote-endpoint = <&hdmi_tx_from_pvi>;
+						};
+					};
+				};
+			};
+
+			lcdif3: display-controller@32fc6000 {
+				compatible = "fsl,imx8mp-lcdif";
+				reg = <0x32fc6000 0x1000>;
+				interrupt-parent = <&irqsteer_hdmi>;
+				interrupts = <8>;
+				clocks = <&hdmi_tx_phy>,
+					 <&clk IMX8MP_CLK_HDMI_APB>,
+					 <&clk IMX8MP_CLK_HDMI_ROOT>;
+				clock-names = "pix", "axi", "disp_axi";
+				power-domains = <&hdmi_blk_ctrl IMX8MP_HDMIBLK_PD_LCDIF>;
+
+				port {
+					lcdif3_to_pvi: endpoint {
+						remote-endpoint = <&pvi_from_lcdif3>;
+					};
+				};
+			};
+
+			hdmi_tx: hdmi@32fd8000 {
+				compatible = "fsl,imx8mp-hdmi-tx";
+				reg = <0x32fd8000 0x7eff>;
+				interrupt-parent = <&irqsteer_hdmi>;
+				interrupts = <0>;
+				clocks = <&clk IMX8MP_CLK_HDMI_APB>,
+					 <&clk IMX8MP_CLK_HDMI_REF_266M>,
+					 <&clk IMX8MP_CLK_32K>,
+					 <&hdmi_tx_phy>;
+				clock-names = "iahb", "isfr", "cec", "pix";
+				assigned-clocks = <&clk IMX8MP_CLK_HDMI_REF_266M>;
+				assigned-clock-parents = <&clk IMX8MP_SYS_PLL1_266M>;
+				power-domains = <&hdmi_blk_ctrl IMX8MP_HDMIBLK_PD_HDMI_TX>;
+				reg-io-width = <1>;
+				status = "disabled";
+
+				ports {
+					#address-cells = <1>;
+					#size-cells = <0>;
+
+					port@0 {
+						reg = <0>;
+
+						hdmi_tx_from_pvi: endpoint {
+							remote-endpoint = <&pvi_to_hdmi_tx>;
+						};
+					};
+
+					port@1 {
+						reg = <1>;
+						/* Point endpoint to the HDMI connector */
+					};
+				};
+			};
+
+			hdmi_tx_phy: phy@32fdff00 {
+				compatible = "fsl,imx8mp-hdmi-phy";
+				reg = <0x32fdff00 0x100>;
+				clocks = <&clk IMX8MP_CLK_HDMI_APB>,
+					 <&clk IMX8MP_CLK_HDMI_24M>;
+				clock-names = "apb", "ref";
+				assigned-clocks = <&clk IMX8MP_CLK_HDMI_24M>;
+				assigned-clock-parents = <&clk IMX8MP_CLK_24M>;
+				power-domains = <&hdmi_blk_ctrl IMX8MP_HDMIBLK_PD_HDMI_TX_PHY>;
+				#clock-cells = <0>;
+				#phy-cells = <0>;
+				status = "disabled";
+			};
 		};
 
 		pcie: pcie@33800000 {
-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
