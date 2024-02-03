Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F2FC4C48298
	for <linux-phy@archiver.kernel.org>; Sat,  3 Feb 2024 16:54:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Vmrz9En2onFLNQ2C32/BW7zlxsaeUyYtRrlqGNR9tI8=; b=iJoDI45aDwQO45
	3g7Gfp7pqXYYn6E3uEntiCamp0MXM5grSFAEldKHybUg90MJ+Yb41kznud02Hg7bGJTHT53yHKmEN
	DAn9WRh8J1WRGtv0h7g2ir8GB+9rnbR6UZcdMpKNHxv3w+RHk0WffiONTMmMHnWQRo+h5s00lrWXu
	C33o4BJQnhZ/wljEnGlAv9d2maQdC3+4TBliHecHYkKj5hzUEtja3HPcS+v96aZZasMYlUIzjDx/P
	7ODGMNzwkaGXQBX0BXZ/bI/AqL0Ov7yuICpx+M1hBM8zM/NSYtvWU+/hEmmzwVbp0hVAwKF/SeKOZ
	GwBeJD5Cq/hYdyNBh6yw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rWJHO-0000000GqRf-1e1E;
	Sat, 03 Feb 2024 16:54:10 +0000
Received: from mail-io1-xd30.google.com ([2607:f8b0:4864:20::d30])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rWJHE-0000000GqIG-2Jbe;
	Sat, 03 Feb 2024 16:54:02 +0000
Received: by mail-io1-xd30.google.com with SMTP id ca18e2360f4ac-7bfd5eeffefso126456739f.1;
        Sat, 03 Feb 2024 08:53:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1706979238; x=1707584038; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=taDwADqgs/vXZTWtQL/uIsBG3gMoUnf1EEy+EC/Jro4=;
        b=Idhe9otWeaY5zmj4JCGDWR0HXl5PIFT+4pvKyPg5GeBPl7yEPjVOGUeBQBMplpPVNa
         U2Xg/jLXmBjotZNBAhTKPwcD1hU8ayFJamkwOm078CQPoyUG4544atWTkv3XRIAZpOCv
         OoQEZtgSMPduVHh/6ip5o56F4aFfDQWcvmgDAfPSHHJ7Xex7dM9aITSTv3c6GhZjOT6Q
         4VYgsBvrbtWY7WC7nWblV3DLgZq1jkAGo38UZtuQ+gmhapRSOqzXAS+vKwMSyTD4Eraq
         U+pi3oV7x3hJpU4fhNbfk24Px0OayQkCGnd+taxiQC5MDHUfznSMDj+5MHYjJ+Kjxeds
         nNzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706979238; x=1707584038;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=taDwADqgs/vXZTWtQL/uIsBG3gMoUnf1EEy+EC/Jro4=;
        b=dlhjdY9xLWDtBs5wD9WZPkJ4GWyieaGu+ceXTzl14arKou/bImGVwV3EM1TRYdThmK
         UxJaEM7rWAaNdeha0JOA2euhZQGPukXFL30xrmcFpNRp/WTuItYQ//Thmpb4L7qYsY01
         3dxDjW9HgjkkQ35ye2G1XAc9WriXV9zk2sw2Aju2YQM4PIi4SzuYzeeGCMf06Cc8RdBH
         rMVfCyDb66kGccF04wzYuDBS2d3qESWTKFTAvHKMG3nPunZSiFvcDwqeqXD0V1V4x6Q0
         j2WsjHUDaQps8Z4U1AQxdbJmjj6By3Pn2zYU0atLNIQcCe0euAy+hpoWlGPExcYwy8F5
         Drbw==
X-Gm-Message-State: AOJu0Yx0No9cCDOChG9eNCSvSyfUFPL9XkoYn+bs0w71gozcyhhRAUMD
	NdhSXdDHSVnAazbcoexrC9CCWBSAq/NSCPd/daONNa8ODtTgDErot/Uy0zpu2ck=
X-Google-Smtp-Source: AGHT+IGSIrWbB8jR5uaJBwAlIfAilmzMPT34+qSqtn8M+K3ASa98MtXlrgLootz9nRYzgIf22ww9/A==
X-Received: by 2002:a05:6602:2806:b0:7c0:3e72:998c with SMTP id d6-20020a056602280600b007c03e72998cmr6003233ioe.9.1706979238133;
        Sat, 03 Feb 2024 08:53:58 -0800 (PST)
X-Forwarded-Encrypted: i=0; AJvYcCUD62zg8tJ7qMwNwxmrNMP/+OYqlFBEhICF5gxfVobVJ4LnXerUR5pumG2PtuG5+Cmz7Qfs6PkvZNFzjWFg6HopgDfdIH+CrhJFHbAwLVkYFE1Gky5g76gmocMJz7rKSZSFH0wz0PGpn+QujBSeWaW1bTd4givdDsdoFza+0pxjcv6yKGy7rEu1/s7iTfuXWHEMSK1g8YxlUZ4ksVEg9YAVZdvygkgS04Ukez64aJpKQb5+2v2XodxFNH/1cAABEgBKWMPLLzszvggkQTSHX1GIolk8NFkZPPeLGYeYiUkpbeoRwsEhdm91rZxvI2XOpmQOT3rUKclMKk6QdMrzukJVrFFPyjXfvG//tBYVoSxIwE0BlykyOEbpyG+4FQFGigvg4XfwpnyZMSC9GgupXhY5d+t8AFac/q1sF2IdQXbISCSiY4ZAAaQI5dXDRVcf5BbfkjTrnoErFj1kkAX0sAKCdiLjVXD45OcGOIwrmReYBeajeQ9mV18gnX4UKlvr+uguAgY1PxVQ3g+CAAvwSlD8PdWuun7nmhBAM0+PBzXyteqCNHXeiswiDUcbqMyv9vhmmzJSJJP9iU07weq0Ne/emI/B35nszR/mec2Vw6qhN2F7u7TA22yJ61oR0pGna47Zv3k+AwHQdQ2z1JcP/od3janjHDB1aTzX9NNnYpC/WvYklUCj757VfqhEfzsVwqOTqRvRQcbYSS6bjs695FEGfS+gTqoI9XaRfw/wVyQvzSz0pCKN+ybkBc8UrWX3nt1CEdOw0keAF86Jp6Og8hwRbADGnVhU80JfhgEPIiVyzk4gWlVMOGMPHgDd00CbvE1A5M2HCUJrRackwYDqHSvO/JLky9AjE2C+/u1wQaqiRVngv6pYBgBUAzCqqqEK7X680hK1IciJbH63FpWpnoSS4FSoDH6zlB7rzbllUnyRFzEN8lftCtU9vmNGp84/0bO6zC
 tPc+kBpnmgA8VI5bKu/CBQBhxIXDGMbduBGf5zFg/mUqGiqIRi/nukYaNl5I8AcS2jy5e2zjr3Jfer0jAAOV7PBb7frc24lvmLSilFIjuj+0MkhPhuOWv5cvogwrsDLXMJ75BPLDJ3j54uiLyFRUhAmNX80hkWwe4o9O3vAKH/wFiBgsUin1KJr7WD0JtKOfNhxluLTZcCpooyc1EfcgOYrHNZNWHp8A==
Received: from aford-System-Version.lan ([2601:447:d002:5be:d9b2:bb4f:5531:6aa9])
        by smtp.gmail.com with ESMTPSA id t30-20020a05663836de00b00470b29b82b1sm1086256jau.154.2024.02.03.08.53.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 03 Feb 2024 08:53:56 -0800 (PST)
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
Subject: [PATCH V8 05/12] arm64: dts: imx8mp: add HDMI power-domains
Date: Sat,  3 Feb 2024 10:52:45 -0600
Message-ID: <20240203165307.7806-6-aford173@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240203165307.7806-1-aford173@gmail.com>
References: <20240203165307.7806-1-aford173@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240203_085400_722100_4F2BB5B9 
X-CRM114-Status: UNSURE (   9.18  )
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

From: Lucas Stach <l.stach@pengutronix.de>

This adds the PGC and HDMI blk-ctrl nodes providing power control for
HDMI subsystem peripherals.

Signed-off-by: Adam Ford <aford173@gmail.com>
Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
V2:  Add missing power-domains hdcp and hrv
---
 arch/arm64/boot/dts/freescale/imx8mp.dtsi | 38 +++++++++++++++++++++++
 1 file changed, 38 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8mp.dtsi b/arch/arm64/boot/dts/freescale/imx8mp.dtsi
index 76c73daf546b..5c54073de615 100644
--- a/arch/arm64/boot/dts/freescale/imx8mp.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mp.dtsi
@@ -836,6 +836,23 @@ pgc_mediamix: power-domain@10 {
 							 <&clk IMX8MP_CLK_MEDIA_APB_ROOT>;
 					};
 
+					pgc_hdmimix: power-domains@14 {
+						#power-domain-cells = <0>;
+						reg = <IMX8MP_POWER_DOMAIN_HDMIMIX>;
+						clocks = <&clk IMX8MP_CLK_HDMI_ROOT>,
+							 <&clk IMX8MP_CLK_HDMI_APB>;
+						assigned-clocks = <&clk IMX8MP_CLK_HDMI_AXI>,
+								  <&clk IMX8MP_CLK_HDMI_APB>;
+						assigned-clock-parents = <&clk IMX8MP_SYS_PLL2_500M>,
+									 <&clk IMX8MP_SYS_PLL1_133M>;
+						assigned-clock-rates = <500000000>, <133000000>;
+					};
+
+					pgc_hdmi_phy: power-domains@15 {
+						#power-domain-cells = <0>;
+						reg = <IMX8MP_POWER_DOMAIN_HDMI_PHY>;
+					};
+
 					pgc_mipi_phy2: power-domain@16 {
 						#power-domain-cells = <0>;
 						reg = <IMX8MP_POWER_DOMAIN_MIPI_PHY2>;
@@ -1361,6 +1378,27 @@ eqos: ethernet@30bf0000 {
 				intf_mode = <&gpr 0x4>;
 				status = "disabled";
 			};
+
+			hdmi_blk_ctrl: blk-ctrl@32fc0000 {
+				compatible = "fsl,imx8mp-hdmi-blk-ctrl", "syscon";
+				reg = <0x32fc0000 0x23c>;
+				clocks = <&clk IMX8MP_CLK_HDMI_APB>,
+					 <&clk IMX8MP_CLK_HDMI_ROOT>,
+					 <&clk IMX8MP_CLK_HDMI_REF_266M>,
+					 <&clk IMX8MP_CLK_HDMI_24M>,
+					 <&clk IMX8MP_CLK_HDMI_FDCC_TST>;
+				clock-names = "apb", "axi", "ref_266m", "ref_24m", "fdcc";
+				power-domains = <&pgc_hdmimix>, <&pgc_hdmimix>,
+						<&pgc_hdmimix>, <&pgc_hdmimix>,
+						<&pgc_hdmimix>, <&pgc_hdmimix>,
+						<&pgc_hdmimix>, <&pgc_hdmi_phy>,
+						<&pgc_hdmimix>, <&pgc_hdmimix>;
+				power-domain-names = "bus", "irqsteer", "lcdif",
+						     "pai", "pvi", "trng",
+						     "hdmi-tx", "hdmi-tx-phy",
+						     "hdcp", "hrv";
+				#power-domain-cells = <1>;
+			};
 		};
 
 		aips5: bus@30c00000 {
-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
