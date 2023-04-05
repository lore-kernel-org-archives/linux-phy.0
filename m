Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7E8A8C76188
	for <linux-phy@archiver.kernel.org>; Wed,  5 Apr 2023 19:19:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JLzGfLVLMRKNW6FU6msTB29JEL+3cLMV9txtE8QsQuw=; b=bfcLrlfAgnfWc4
	3Np7CuYIwphrEgyMy0a9xY03NT1TJSr3DooEtBLZuRPsFEJH0Z1vN6tJEgflmgiLE9A3c3MAmzbJH
	8tLtqUgRVXT/qU4GIkvQFrZxI15rLoWVHV4UUi2TnVGpuZlu2jewKAiu+5SJ/Sd6+GG9laZUXBm9j
	QmR/TdjjwtPyIw5wzuDLcuLSWUWqeit8rfxSbkxm0+MieClTOQKb3ShjRrlawPUb1FCET/Ssz2gMT
	DkkQYdq1puOuFm2GJ5FnuVjx/KOS8dXHoiUcnyTSo2DMulsl2dizaZcdecUGEY3ws8qi1h1bIQ0ar
	hVvqxrVuiEj3a27Hizpg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pk8fG-005Uup-0K;
	Wed, 05 Apr 2023 19:19:26 +0000
Received: from mail-pj1-x1033.google.com ([2607:f8b0:4864:20::1033])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pk8fC-005Utr-2m
	for linux-phy@lists.infradead.org;
	Wed, 05 Apr 2023 19:19:24 +0000
Received: by mail-pj1-x1033.google.com with SMTP id q102so34996224pjq.3
        for <linux-phy@lists.infradead.org>; Wed, 05 Apr 2023 12:19:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1680722361;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0XxX9v4o0e9A74KVKINLnIuAStvu5tpKtcGeS/xTyjw=;
        b=r1mhd2GF/+9tjdL87AbcmzOd3rkhNQV3KxOpogVAVFo6FU6ZsRwSgp8KQYMOVXLixh
         PwJw5uUAkRxgRk2gDFcm3oVKXidT+XVIVFIVDzaA0oM+Nfv5TFi9lst4S6uwuMiEaZCu
         zZeo2pIzSvAsXStGJ6aySOim5IRqZXz1wqbD4VYRdHiTUM+POVdtvj2XKeXZRtvpXrvx
         vUqy5/1BG/EnCMlDwJenhiH0HqCG59WA85iTkCDRVG7JRm+5jR6Diyfj0Thi+tbOSU2B
         cZLMx4VQ1gpiGV35Eb6OEgF2kKHdtQK7EokKWI02pWEJJW43v0D8m72a1/GjHPNdVoUo
         dPOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680722361;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=0XxX9v4o0e9A74KVKINLnIuAStvu5tpKtcGeS/xTyjw=;
        b=XRPZUYgWo+fQopSWJR+CaetbpYDj7SKLA5rYgRv9uhBn6xKMDzN5vU6lppppZnYAtD
         cemdyg4JpdSdgojBL0rG71bY46BQMrpMZoANudI0vqFVxyfrr597jJm7LKF5cNx8Claw
         rRq8mrlzRkM7mQFPr2QU5jdYoPTHB0cwapzfJ3vfpzkxhdp9hxst49Jff0cax1sdUp1R
         zwg3MQZsKBa3JVaO8t0XPVpCV65sKbVzU5z/MzwMqSU5GNFwaRmRanFh8rovnImkGGBP
         86RI/hyBYJhbBBfEKxPm1lJtuN0P44iU34P2mDkDu0onqG9JoE7NRknmFgBcbjlKkgBC
         ruog==
X-Gm-Message-State: AAQBX9dP98Rdg7e6GCNASaVppI7vq/sM9JboeDIyuQAozgVSDKbIjsjU
	KSTY3JjRqlOn/rjmvBQhPZ2fvA==
X-Google-Smtp-Source: AKy350bW7kORq9ng9TSwhF++9ITY36DTz8cCbabmYwBSnB2TYNOCb94n80FxqeGGQTsYBt5H/92SPg==
X-Received: by 2002:a17:90a:3ec3:b0:23d:39e:6054 with SMTP id k61-20020a17090a3ec300b0023d039e6054mr3679223pjc.5.1680722361664;
        Wed, 05 Apr 2023 12:19:21 -0700 (PDT)
Received: from localhost.localdomain ([223.233.67.41])
        by smtp.gmail.com with ESMTPSA id d9-20020a170902aa8900b001a1d7329235sm10478097plr.234.2023.04.05.12.19.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 05 Apr 2023 12:19:21 -0700 (PDT)
From: Bhupesh Sharma <bhupesh.sharma@linaro.org>
To: linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-phy@lists.infradead.org
Cc: agross@kernel.org,
	linux-kernel@vger.kernel.org,
	andersson@kernel.org,
	bhupesh.sharma@linaro.org,
	bhupesh.linux@gmail.com,
	krzysztof.kozlowski@linaro.org,
	robh+dt@kernel.org,
	konrad.dybcio@linaro.org,
	kishon@kernel.org,
	vkoul@kernel.org,
	krzysztof.kozlowski+dt@linaro.org
Subject: [PATCH v5 2/2] arm64: dts: qcom: sm6115: Add USB SS qmp phy node
Date: Thu,  6 Apr 2023 00:46:33 +0530
Message-Id: <20230405191633.1864671-3-bhupesh.sharma@linaro.org>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20230405191633.1864671-1-bhupesh.sharma@linaro.org>
References: <20230405191633.1864671-1-bhupesh.sharma@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230405_121922_899362_C6767043 
X-CRM114-Status: UNSURE (   9.94  )
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

Add USB superspeed qmp phy node to dtsi.

Make sure that the various board dts files (which include sm4250.dtsi file)
continue to work as intended.

Signed-off-by: Bhupesh Sharma <bhupesh.sharma@linaro.org>
---
 .../boot/dts/qcom/sm4250-oneplus-billie2.dts  |  3 ++
 arch/arm64/boot/dts/qcom/sm6115.dtsi          | 36 +++++++++++++++++--
 .../boot/dts/qcom/sm6115p-lenovo-j606f.dts    |  3 ++
 3 files changed, 40 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sm4250-oneplus-billie2.dts b/arch/arm64/boot/dts/qcom/sm4250-oneplus-billie2.dts
index a1f0622db5a0..75951fd439df 100644
--- a/arch/arm64/boot/dts/qcom/sm4250-oneplus-billie2.dts
+++ b/arch/arm64/boot/dts/qcom/sm4250-oneplus-billie2.dts
@@ -242,6 +242,9 @@ &usb {
 &usb_dwc3 {
 	maximum-speed = "high-speed";
 	dr_mode = "peripheral";
+
+	phys = <&usb_hsphy>;
+	phy-names = "usb2-phy";
 };
 
 &usb_hsphy {
diff --git a/arch/arm64/boot/dts/qcom/sm6115.dtsi b/arch/arm64/boot/dts/qcom/sm6115.dtsi
index 2a51c938bbcb..b2fa565e4816 100644
--- a/arch/arm64/boot/dts/qcom/sm6115.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm6115.dtsi
@@ -650,6 +650,38 @@ usb_hsphy: phy@1613000 {
 			status = "disabled";
 		};
 
+		usb_qmpphy: phy@1615000 {
+			compatible = "qcom,sm6115-qmp-usb3-phy";
+			reg = <0x0 0x01615000 0x0 0x200>;
+			clocks = <&gcc GCC_AHB2PHY_USB_CLK>,
+				 <&gcc GCC_USB3_PRIM_CLKREF_CLK>,
+				 <&gcc GCC_USB3_PRIM_PHY_COM_AUX_CLK>;
+			clock-names = "cfg_ahb",
+				      "ref",
+				      "com_aux";
+			resets = <&gcc GCC_USB3PHY_PHY_PRIM_SP0_BCR>,
+				 <&gcc GCC_USB3_PHY_PRIM_SP0_BCR>;
+			reset-names = "phy_phy", "phy";
+			status = "disabled";
+			#address-cells = <2>;
+			#size-cells = <2>;
+			ranges;
+
+			usb_ssphy: phy@1615200 {
+				reg = <0x0 0x01615200 0x0 0x200>,
+				      <0x0 0x01615400 0x0 0x200>,
+				      <0x0 0x01615c00 0x0 0x400>,
+				      <0x0 0x01615600 0x0 0x200>,
+				      <0x0 0x01615800 0x0 0x200>,
+				      <0x0 0x01615a00 0x0 0x100>;
+				#clock-cells = <0>;
+				#phy-cells = <0>;
+				clocks = <&gcc GCC_USB3_PRIM_PHY_PIPE_CLK>;
+				clock-names = "pipe0";
+				clock-output-names = "usb3_phy_pipe_clk_src";
+			};
+		};
+
 		qfprom@1b40000 {
 			compatible = "qcom,sm6115-qfprom", "qcom,qfprom";
 			reg = <0x0 0x01b40000 0x0 0x7000>;
@@ -1100,8 +1132,8 @@ usb_dwc3: usb@4e00000 {
 				compatible = "snps,dwc3";
 				reg = <0x0 0x04e00000 0x0 0xcd00>;
 				interrupts = <GIC_SPI 255 IRQ_TYPE_LEVEL_HIGH>;
-				phys = <&usb_hsphy>;
-				phy-names = "usb2-phy";
+				phys = <&usb_hsphy>, <&usb_ssphy>;
+				phy-names = "usb2-phy", "usb3-phy";
 				iommus = <&apps_smmu 0x120 0x0>;
 				snps,dis_u2_susphy_quirk;
 				snps,dis_enblslpm_quirk;
diff --git a/arch/arm64/boot/dts/qcom/sm6115p-lenovo-j606f.dts b/arch/arm64/boot/dts/qcom/sm6115p-lenovo-j606f.dts
index 10c9d338446c..d60cc024749b 100644
--- a/arch/arm64/boot/dts/qcom/sm6115p-lenovo-j606f.dts
+++ b/arch/arm64/boot/dts/qcom/sm6115p-lenovo-j606f.dts
@@ -280,6 +280,9 @@ &usb {
 &usb_dwc3 {
 	maximum-speed = "high-speed";
 	dr_mode = "peripheral";
+
+	phys = <&usb_hsphy>;
+	phy-names = "usb2-phy";
 };
 
 &usb_hsphy {
-- 
2.38.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
