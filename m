Return-Path: <SRS0=EqQx=LP=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.1 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,USER_AGENT_GIT autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91417C49EA2
	for <linux-phy@archiver.kernel.org>; Mon, 21 Jun 2021 07:28:19 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 5BB2660E08
	for <linux-phy@archiver.kernel.org>; Mon, 21 Jun 2021 07:28:19 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 5BB2660E08
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JWg21hOHAswanwMNDEE1kGp64jm7nraUibxYCBKocvo=; b=lF8c7syP+sZAhw
	Jo6Ar88SPzaRGzyFYnnvK4OTQ7upz4H0IuniInyB/+HoXctSrl1oRVy88hzVoEtXSFxTst1PuiaSa
	Ye+N8NhYQkm7kJyaMfZbIibXasI6nYAbvO1f/Kv4qlD81POlKTqgbq4vCyvPWu3UJSsb+Kow71njo
	TU3XDShUBI1tIjhJZ4zdowVpgdQaQf/2yvQStmoEklYsLwAi48KfSAm4hZURWhmKEOs55SX4SN78X
	IYChd++lhVZ9NU/BF2fqBN5XkCIUOw/2P6uT4OuScwZJAlmHxgCUC0HLafDW+L1xGOB8J/48TKdss
	xtGtC0xryZmGoJNSrDHQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lvELy-002VFj-As; Mon, 21 Jun 2021 07:28:18 +0000
Received: from mail-pg1-x532.google.com ([2607:f8b0:4864:20::532])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lvEJ7-002TzC-9b
 for linux-phy@lists.infradead.org; Mon, 21 Jun 2021 07:25:22 +0000
Received: by mail-pg1-x532.google.com with SMTP id e20so13466275pgg.0
 for <linux-phy@lists.infradead.org>; Mon, 21 Jun 2021 00:25:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=wE0EtFYsjB5vlJwRJRnVD3mRJGbikL6A/mq3nMXEQvo=;
 b=EXV22jysZtFBGfkOj6eka+mm+ScqN1Gb+9Drg+5vhkPlVJF+YFq3khisQeIp1MwM4k
 5+bruQxYxg1/hjhUZnCxLAXEl9Cc23GXlH0C4wty7MYRQPvGJBeGK7jU3QNvRNf2pqaP
 5Df8uMr4bfWCrKq4/osNjUUK3c5pmy/xMWy50=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=wE0EtFYsjB5vlJwRJRnVD3mRJGbikL6A/mq3nMXEQvo=;
 b=Mf3t41qzrOL0dpWLU/aWhI7rl7b+RBKo7hMdm6VYy5yz5xNLlpfjXhXOLTltUKovWS
 ENs+GEx9S6MWUo0nlU/uHSs2NcoCHijqagvIyLEg9QgQI0iF35nmao61+DchTIeixKuR
 Ry6f+WEFMmeXP594Pv0C5/vikyBRW6DAE4ln4OX+5YLrwwdjNwqcBp8DDULkJch6ZOxj
 P4gJ4QEtZZC8LcikUORWTr01+VRvlgas+1ewSmMucLSWz0ZgVhak9C0e5w3uSKo1lMFp
 8ab+6N2oorwtvwlIyWPyHzae0CvE1RHpt8wjSwBSZozV/vA+W1AI+9nX06zzKDpbe6Y4
 vXwA==
X-Gm-Message-State: AOAM533O1l2yk+b+30puHHhWudIEIv4kW4p1/yYqFnHUPjGsS1xV86VM
 cNn5Nh0XNw7lMUI4d1KFwzQ+0Q==
X-Google-Smtp-Source: ABdhPJzRHoAtTRbTlR5W+aeNHLX4JpicPLn++ox7Da1Q5l/obTH4wW4HwzGNFYk/GzMiTBnG3OWONg==
X-Received: by 2002:a63:4915:: with SMTP id w21mr22619815pga.363.1624260320470; 
 Mon, 21 Jun 2021 00:25:20 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c00a:a884:139:e97f:a55d:7f66])
 by smtp.gmail.com with ESMTPSA id
 21sm13951294pfh.103.2021.06.21.00.25.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 21 Jun 2021 00:25:20 -0700 (PDT)
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
Subject: [RFC PATCH 6/9] arm64: dts: imx8mm: Add display mix blk ctl
Date: Mon, 21 Jun 2021 12:54:21 +0530
Message-Id: <20210621072424.111733-7-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210621072424.111733-1-jagan@amarulasolutions.com>
References: <20210621072424.111733-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210621_002521_393619_F49EBE82 
X-CRM114-Status: UNSURE (   9.36  )
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

Add display mix blk control node for i.MX8MM.

Cc: Rob Herring <robh+dt@kernel.org>
Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 arch/arm64/boot/dts/freescale/imx8mm.dtsi | 26 +++++++++++++++++++++++
 1 file changed, 26 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8mm.dtsi b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
index 849dd0250ba9..fe5485ee9419 100644
--- a/arch/arm64/boot/dts/freescale/imx8mm.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
@@ -663,6 +663,20 @@ pgc_gpu: power-domain@5 {
 						resets = <&src IMX8MQ_RESET_GPU_RESET>;
 						power-domains = <&pgc_gpumix>;
 					};
+
+					pgc_dispmix: power-domain@10 {
+						#power-domain-cells = <0>;
+						reg = <IMX8MM_POWER_DOMAIN_DISPMIX>;
+						clocks = <&clk IMX8MM_CLK_DISP_ROOT>,
+							 <&clk IMX8MM_CLK_DISP_AXI_ROOT>,
+							 <&clk IMX8MM_CLK_DISP_APB_ROOT>;
+					};
+
+					pgc_mipi: power-domain@11 {
+						#power-domain-cells = <0>;
+						reg = <IMX8MM_POWER_DOMAIN_MIPI>;
+						power-domains = <&pgc_dispmix>;
+					};
 				};
 			};
 		};
@@ -1016,6 +1030,18 @@ aips4: bus@32c00000 {
 			#size-cells = <1>;
 			ranges = <0x32c00000 0x32c00000 0x400000>;
 
+			dispmix_blk_ctl: blk-ctl@32e28000 {
+				compatible = "fsl,imx8mm-dispmix-blk-ctl", "syscon";
+				reg = <0x32e28000 0x100>;
+				#power-domain-cells = <1>;
+				power-domains = <&pgc_dispmix>, <&pgc_mipi>;
+				power-domain-names = "dispmix", "mipi";
+				clocks = <&clk IMX8MM_CLK_DISP_ROOT>,
+					 <&clk IMX8MM_CLK_DISP_AXI_ROOT>,
+					 <&clk IMX8MM_CLK_DISP_APB_ROOT>;
+				clock-names = "disp", "axi", "apb";
+			};
+
 			usbotg1: usb@32e40000 {
 				compatible = "fsl,imx8mm-usb", "fsl,imx7d-usb";
 				reg = <0x32e40000 0x200>;
-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
