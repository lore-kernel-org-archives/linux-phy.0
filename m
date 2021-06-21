Return-Path: <SRS0=EqQx=LP=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.1 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2601C49EA2
	for <linux-phy@archiver.kernel.org>; Mon, 21 Jun 2021 07:30:04 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 7381460FE6
	for <linux-phy@archiver.kernel.org>; Mon, 21 Jun 2021 07:30:04 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 7381460FE6
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VpfALPd+sZ3pLEDP6QSZtaLbGyrg5UYSKeihQUGxAmY=; b=nzdjz5HMQetqEc
	sid68oGingYrLVua7nXB3irkY3KnjcS7nH1ciNJRGeUN2wTi1f2dAvbAL4dtL0fU8Wk8OtklcLQtR
	cWsSOD9liqhoYFrOUw6t1t2pIYkYtu7HN02EXOd7Alxp6AQV4gHw4V+wnW38MzwKEl0e9TJyS+5Bs
	XVGirvR1X7oRkzt+mFG+tSS3iIhfemPBKkkzTEhQHJmr6QHXVgMq8e0TkJ3DbsRsGM4oIjt4SPlL0
	66pQbyxVWinpwVaKovT7UK+d40mA/dpkvnGFnIenn97lHDZuE9aaT9B84qR2QLArZzxQF/AZ2YXrX
	Bbf4jabRwSBbDgJWUnhQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lvENf-002W1T-Kl; Mon, 21 Jun 2021 07:30:03 +0000
Received: from mail-pg1-x536.google.com ([2607:f8b0:4864:20::536])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lvEJR-002U9N-NM
 for linux-phy@lists.infradead.org; Mon, 21 Jun 2021 07:25:43 +0000
Received: by mail-pg1-x536.google.com with SMTP id i34so7804271pgl.9
 for <linux-phy@lists.infradead.org>; Mon, 21 Jun 2021 00:25:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=lTGm4JdvD3Vra2uimR9VdWCccBLfDRHg1bYd/TgBubU=;
 b=PFJ+240oebdQnrjo/n/RAYbIElojZ4FKbPovvcLEqUz4yBbkyVuFvAOGUWXkm30rfe
 75bW0/Ce4RgwAgC4v3Vrk7kmCKD6qi1mkuF5f0eGUUYyW6TGPpMB4W5gED+bP1XNgU3J
 fcUqMyXjuP9ETuCKYHTX4nrwrmYudt7xQPSBo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=lTGm4JdvD3Vra2uimR9VdWCccBLfDRHg1bYd/TgBubU=;
 b=rAPV+i0aEgZT+p1cD5I3G5mtIIMo4+X0C4ngBaqzNwgKavGu8dg7o+75CO37moInlX
 Ziyxe9G4LRirb8MHVmSTPxP3LU+cmzIx29oYiCeko2oSOEhT0Bt63EDai+UjAzWobUW4
 Ykq/TVwWGtNlq4Gf/14+8s1zbKtFcKi4MJwqvIIaXO+D/k/XzHc6ASWehlKVyaHcKpQd
 0s1LCFCEiCBn5heh5sWZ3DUUC2LtZ0XwF+43ZK8XRqdBMqmDnXyvN4cc9IX5oDKsHVyt
 S7AgRloDGy5kond+4H/aDZakWGHn5kG28dYXSyTRLErjCD5dLHrDz3+qGcQjNuuku2CZ
 7VMA==
X-Gm-Message-State: AOAM533j/iMP6U4j3yFkKfsBhHvvnXucSn0/naHwleMBnJJ2fJtJ5SlT
 Jcdzky5vxIXL5ZUUWPhN8p/ilg==
X-Google-Smtp-Source: ABdhPJySHSLKRyuhIZrudYf++tyEsD+0GgBX+hyzQUfgAdzn15cvpKaHOeRlq0FvEo+n97tiu5R9dg==
X-Received: by 2002:a63:185b:: with SMTP id 27mr23058306pgy.164.1624260340808; 
 Mon, 21 Jun 2021 00:25:40 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c00a:a884:139:e97f:a55d:7f66])
 by smtp.gmail.com with ESMTPSA id
 21sm13951294pfh.103.2021.06.21.00.25.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 21 Jun 2021 00:25:40 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Peng Fan <peng.fan@nxp.com>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>, Tomasz Figa <t.figa@samsung.com>,
 Fancy Fang <chen.fang@nxp.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 dri-devel@lists.freedesktop.org, linux-phy@lists.infradead.org,
 linux-kernel@vger.kernel.org, NXP Linux Team <linux-imx@nxp.com>,
 linux-amarula@amarulasolutions.com,
 Anthony Brandon <anthony@amarulasolutions.com>,
 Francis Laniel <francis.laniel@amarulasolutions.com>,
 Matteo Lisi <matteo.lisi@engicam.com>,
 Milco Pratesi <milco.pratesi@engicam.com>,
 Jagan Teki <jagan@amarulasolutions.com>, Rob Herring <robh+dt@kernel.org>
Subject: [RFC PATCH 9/9] arm64: dts: imx8mm-icore: Enable LVDS panel for
 EDIMM2.2
Date: Mon, 21 Jun 2021 12:54:24 +0530
Message-Id: <20210621072424.111733-10-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210621072424.111733-1-jagan@amarulasolutions.com>
References: <20210621072424.111733-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210621_002541_839728_90327500 
X-CRM114-Status: UNSURE (   9.39  )
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

Enable LVDS Panel for Engicam i.Core MX8MMini EDIMM2.2 board.

Cc: Rob Herring <robh+dt@kernel.org>
Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 .../freescale/imx8mm-icore-mx8mm-edimm2.2.dts | 90 +++++++++++++++++++
 1 file changed, 90 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8mm-icore-mx8mm-edimm2.2.dts b/arch/arm64/boot/dts/freescale/imx8mm-icore-mx8mm-edimm2.2.dts
index a4a2ada14835..f1256c9c9bd7 100644
--- a/arch/arm64/boot/dts/freescale/imx8mm-icore-mx8mm-edimm2.2.dts
+++ b/arch/arm64/boot/dts/freescale/imx8mm-icore-mx8mm-edimm2.2.dts
@@ -14,9 +14,51 @@ / {
 	compatible = "engicam,icore-mx8mm-edimm2.2", "engicam,icore-mx8mm",
 		     "fsl,imx8mm";
 
+	backlight: backlight {
+		compatible = "pwm-backlight";
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_pwm1>;
+		pwms = <&pwm1 0 1000000>;
+		brightness-levels = <0 4 8 16 32 64 128 255>;
+		default-brightness-level = <7>;
+	};
+
 	chosen {
 		stdout-path = &uart2;
 	};
+
+	panel {
+		compatible = "yes-optoelectronics,ytc700tlag-05-201c";
+		backlight = <&backlight>;
+		data-mapping = "vesa-24";
+
+		port {
+			panel_out_bridge: endpoint {
+				remote-endpoint = <&bridge_out_panel>;
+			};
+		};
+	};
+};
+
+&dphy {
+	status = "okay";
+};
+
+&dsi {
+	#address-cells = <1>;
+	#size-cells = <0>;
+	status = "okay";
+
+	ports {
+		port@1 {
+			reg = <1>;
+
+			dsi_out_bridge: endpoint {
+				remote-endpoint = <&bridge_in_dsi>;
+				data-lanes = <0 1>;
+			};
+		};
+	};
 };
 
 &fec1 {
@@ -35,9 +77,43 @@ &i2c4 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_i2c4>;
 	status = "okay";
+
+	bridge@2c {
+		compatible = "ti,sn65dsi84";
+		reg = <0x2c>;
+		enable-gpios = <&gpio3 9  GPIO_ACTIVE_HIGH>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_dsi_bridge_enable>;
+
+		ports {
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			port@0 {
+				reg = <0>;
+				bridge_in_dsi: endpoint {
+					remote-endpoint = <&dsi_out_bridge>;
+				};
+			};
+
+			port@1 {
+				reg = <1>;
+				bridge_out_panel: endpoint {
+					remote-endpoint = <&panel_out_bridge>;
+				};
+			};
+		};
+	};
 };
 
 &iomuxc {
+	pinctrl_dsi_bridge_enable: dsibridgeenablegrp {
+		fsl,pins = <
+			MX8MM_IOMUXC_NAND_DATA03_GPIO3_IO9	0x19
+			MX8MM_IOMUXC_NAND_DATA02_GPIO3_IO8	0x19
+		>;
+	};
+
 	pinctrl_i2c2: i2c2grp {
 		fsl,pins = <
 			MX8MM_IOMUXC_I2C2_SCL_I2C2_SCL		0x400001c3
@@ -52,6 +128,12 @@ MX8MM_IOMUXC_I2C4_SDA_I2C4_SDA		0x400001c3
 		>;
 	};
 
+	pinctrl_pwm1: pwm1grp {
+		fsl,pins = <
+			MX8MM_IOMUXC_SPDIF_EXT_CLK_PWM1_OUT     0x19
+		>;
+	};
+
 	pinctrl_uart2: uart2grp {
 		fsl,pins = <
 			MX8MM_IOMUXC_UART2_RXD_UART2_DCE_RX	0x140
@@ -77,6 +159,14 @@ MX8MM_IOMUXC_SD1_DATA3_USDHC1_DATA3	0x1d0
 	};
 };
 
+&lcdif {
+	status = "okay";
+};
+
+&pwm1 {
+	status = "okay";
+};
+
 &uart2 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_uart2>;
-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
