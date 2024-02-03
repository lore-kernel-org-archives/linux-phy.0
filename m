Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C18FDC4828D
	for <linux-phy@archiver.kernel.org>; Sat,  3 Feb 2024 16:54:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rL68RRP/Jj+/cA0g/SDLErCBOMK8HVCYimMpUHae9YA=; b=W957SI0D9gxG41
	/OXqnWzm/gvaZLE41bqKzCww+ZGRiCELHiE3I+RXlwLIYPq/uu8mQeNk9UtUhv6xCNGxfzUhDHz2r
	q4Bi72xYWMbe7JYThOsUkBG+GUV+BZfScI3F+mdNNyiKbDWedGDElAQIls206LT6wrmqLHTpIEz7u
	LSuWN3fmpMbZeF+GWchD1M+RZSpfY/Cp4JRo+JUO7mGT8evcjZx+kxHOyOBy2zKTSliO8D2jLZdxh
	B4l/CpCvZCwNhLtx73jR/Qpvi7QzUrEzz57Mqgwafv1h00TaMD79oTyGkci/mZJXEp7O5NIHvog1X
	zGsE0Vxlf8sze7YpLomg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rWJHx-0000000Gqrp-0MIK;
	Sat, 03 Feb 2024 16:54:45 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rWJHo-0000000Gqlg-2WlT;
	Sat, 03 Feb 2024 16:54:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=xV5GVJAeOV5TOmmqtEiNPh6TTuzFDGGYosrKg+K0ogs=; b=UPcsnb2VB5eHfuPgx341kgyHZp
	8K8dp09cdsIUDW/FwJoRlLKFhs/a5C0j1nvzc0+8RWoSCSsxVFCYknF6aS/PplAU36tjEgcaDU+/H
	UxC9Q64nZoFIy8op0HGTbRoyZmbmeKy7VMWyz8JV7MpV3NGT7ihLT0xk1wdFPJHn460dlGdsoKfcM
	cmgx4JKdBmxl+R5pIjB1JvBzrmEW28zuxOigUIS08ayF6ueUOPZUbMIrMZJuSWcI0/Zygi+iMDTkL
	bdYhq6Koia3D0YsJEfaUH3M8qZ21nUb82BHkfaWtVmznosuUbuTAbHlhZVVSA0utm6XyUrY2PLmfm
	IpnBLSgw==;
Received: from mail-io1-xd34.google.com ([2607:f8b0:4864:20::d34])
	by desiato.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rWJHk-0000000Asgv-3cbV;
	Sat, 03 Feb 2024 16:54:35 +0000
Received: by mail-io1-xd34.google.com with SMTP id ca18e2360f4ac-7c2d5978ec6so12533539f.1;
        Sat, 03 Feb 2024 08:54:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1706979268; x=1707584068; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xV5GVJAeOV5TOmmqtEiNPh6TTuzFDGGYosrKg+K0ogs=;
        b=VSiEJFrqDf6HQ13ixRvoeH07kq7ss5sfHePpkvfVHQRitBjFYSiTdDbG17Xsmv6ENx
         NndeVbBxBze87L3R4MSVtg1ATUIc6sEF0RnAclYVdi0Iw1ke7yRR8LKHVekGEiGSm8c9
         3O/Syz6GjmbrCdvArTgIPWTT5/bR/Gd4VE8Elb7Kpcobh4TOgYGsZqYyFnIEdpwDNbY2
         qrGYbcPCeHjxtOMJBuXwtsxuwoFWkyjjEkycLcfDjznD+SFhPb5RDFWuxZn9waxthhEE
         jhZL6toe2RysgLiqth2hDqcFQSxVMYlhtjxXXkMRiVibbeay0yZQla3O1kODNv5LXo65
         6P3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706979268; x=1707584068;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=xV5GVJAeOV5TOmmqtEiNPh6TTuzFDGGYosrKg+K0ogs=;
        b=xDxTz9nR/NA79AdsqDD+bfQgy4xC6hIkSTd1tXipxgTLOK93ZPGWvpsRMX55nYyEAh
         Awy+fGpiQjTQGG8CKZirVWmHWXHyESPnZWWAT26UuPEiREmh5e7HfXtFCYnqDa50VV8K
         k7BTvjG84yjJcr/7Pk6TdBXE8QjYwQJjH53qXQpWg7eltMNNQcSMIv4rRNDXVr7PO8cj
         oCpeADfyAwti8MLRQmn+pnclOWcRt/U48onqJOh1vM9Nq0R9vG6QL+udWnedVVIDLLdz
         fpSjdgt1me++rMJL4estK74c/hCm/tqYuMkHLzcOTqx4sGvHRViPcAZxnjNR4Kkp1K/C
         LFKg==
X-Gm-Message-State: AOJu0Yx8crc/+pZAaUVDN4oOYnI3uLAf/HQW5t7Q6AquXNfO/ehpNqQt
	uG0VMw6TimrROQC6a/a68VUUHdvUTMivP77vimgBlwIpIhAm10ZlZDWjre7pe2A=
X-Google-Smtp-Source: AGHT+IFnDvtXlMmMQMAwllyK2p1O6sOo0/5lgyhi5R6gSBcyqbb6GieWlNuW2+KRpkUDfPvTDFKq0w==
X-Received: by 2002:a6b:6e17:0:b0:7c1:b54c:15db with SMTP id d23-20020a6b6e17000000b007c1b54c15dbmr4318249ioh.15.1706979268376;
        Sat, 03 Feb 2024 08:54:28 -0800 (PST)
X-Forwarded-Encrypted: i=0; AJvYcCXmqWTm894swln2GDV8F3WEq0djHX3OxF/EqeGpkI7kiPokKS2KcpbgZo/Uut92LTwLhUI6PYbQDh31v+/cFCyk+FJH2smLUK0r/V63WoEXqaD2Cp0aFLb+Hy2N8+QWKvt6x6e6pT0ImqLU9m7LjhQK6aDCCVEbHcYd+SdsbHG1AST5aBMskATXyLHvegi1DtRqOf5M1EjuNqXD1+SyPzdufudg/fCA9qsLiED37rWzRNrj1e2B+xkeiQQOC6iiD6BtQn4BjFCVif3rWMf4ea27VaZ4WGtJw7/2QpKQPpn3scr9XL113hBuZ00WR3QrCR1L9GLav1MBgTDbYEVYTfz0oDB1iGec1YcNnZICfuifQDWEsz+rwno7sL49LLhE6S5YnKbxzPSBW+4yvvRpQrfyjb60E34WzSnUQOcaf6Dv75Z2SduMXvvhVrY5L0NaQ5XEpiF+1ZHVX5cpWqcpK7QdIK3QhV6y2nfJGIznwKDU61GfYW1w6C48a6JGzi/5pxeWexQU/O7lsZ4FPr7CzsUSizXl4QEuQH9hPzT4drBAoA5qm359X+ty9HM68qF10ccyO1npxaJQ1cf5JWCUuZauyXNFz54cAaUsZUjdN3fhgOgErzpiutEPxXwr1GOeeNBmNyDYsPImDEFH46D0NPvt6Jov6X4VLO+Zhmd+N9+XwkSJgPx0eRmT+se+VwAjD0dHBWmQdUlIAZ0fCqF8/mIup/bugxLhtDOm0nCUj5x2nglochi1SjxxVdbIJhjHjc0nVSJNeG2aQ+x23fP7eFf7HcZ3DqBuujqpIYLm1DQwuyIuBfgpAmH9dZlEPegP4DQzDy/HOqkEDdIqO5CSFX8kB5IV/BKnGuhRTIeBo8IHloiulv2DHmwsNH/KTo1zUXvixxQYDmxoqRw+blKfqc5zUCVirPgT/dsqSdbF2f3fN5Dd4MvBmWNqYCboBQj3W0/ris
 emPfAbHNNRrGK4lwUBOjq5ovieCPN1t2tDrNLQzrfSqo6vMcVv5O2MPoOiYjsYb+O1Yw6xBf18ayT5cS03xuZNTZ9njmDDY9M4kenkI/u19v80u6GvW2R4ehld2ewO1GKmkQwVCNxz2+e9mO3RWYe7tVQ2YtKrYS6EJT+49cK5rnNDdDw1h2T7s/gI4BNHB1tlkK8od3YGs7C7rmiIdVQ/oQhiR5vuQA==
Received: from aford-System-Version.lan ([2601:447:d002:5be:d9b2:bb4f:5531:6aa9])
        by smtp.gmail.com with ESMTPSA id t30-20020a05663836de00b00470b29b82b1sm1086256jau.154.2024.02.03.08.54.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 03 Feb 2024 08:54:26 -0800 (PST)
From: Adam Ford <aford173@gmail.com>
To: linux-arm-kernel@lists.infradead.org
Cc: marex@denx.de,
	alexander.stein@ew.tq-group.com,
	frieder.schrempf@kontron.de,
	Lucas Stach <l.stach@pengutronix.de>,
	Adam Ford <aford173@gmail.com>,
	Andrzej Hajda <andrzej.hajda@intel.com>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Robert Foss <rfoss@kernel.org>,
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
	Jonas Karlman <jonas@kwiboo.se>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	David Airlie <airlied@gmail.com>,
	Daniel Vetter <daniel@ffwll.ch>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	NXP Linux Team <linux-imx@nxp.com>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>,
	Liu Ying <victor.liu@nxp.com>,
	Ulf Hansson <ulf.hansson@linaro.org>,
	dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-pm@vger.kernel.org
Subject: [PATCH V8 11/12] arm64: dts: imx8mp: add HDMI display pipeline
Date: Sat,  3 Feb 2024 10:52:51 -0600
Message-ID: <20240203165307.7806-12-aford173@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240203165307.7806-1-aford173@gmail.com>
References: <20240203165307.7806-1-aford173@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240203_165433_060162_351C5807 
X-CRM114-Status: GOOD (  10.96  )
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
index 5e51a766f3d9..e84b4f40e570 100644
--- a/arch/arm64/boot/dts/freescale/imx8mp.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mp.dtsi
@@ -1412,6 +1412,100 @@ irqsteer_hdmi: interrupt-controller@32fc2000 {
 				clock-names = "ipg";
 				power-domains = <&hdmi_blk_ctrl IMX8MP_HDMIBLK_PD_IRQSTEER>;
 			};
+
+			hdmi_pvi: display-bridge@32fc4000 {
+				compatible = "fsl,imx8mp-hdmi-pvi";
+				reg = <0x32fc4000 0x40>;
+				interrupt-parent = <&irqsteer_hdmi>;
+				interrupts = <12 IRQ_TYPE_LEVEL_HIGH>;
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
+				reg = <0x32fc6000 0x238>;
+				interrupts = <8 IRQ_TYPE_LEVEL_HIGH>;
+				interrupt-parent = <&irqsteer_hdmi>;
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
+				interrupts = <0 IRQ_TYPE_LEVEL_HIGH>;
+				interrupt-parent = <&irqsteer_hdmi>;
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
 
 		aips5: bus@30c00000 {
-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
