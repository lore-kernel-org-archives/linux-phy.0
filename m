Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E51CBC76196
	for <linux-phy@archiver.kernel.org>; Fri,  7 Apr 2023 06:11:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BSehUh5V2NICHYWLX/6Wqny5UOrdUxT+6RnVinN8stM=; b=vmyZEcabV/me6o
	MMo4VH12Y4QoAf+VcYcodjkAzo/KR05lRSJd4BcVYx8BpkBDzxdj27gU/VNjv+idpnUFypjpNRGEs
	I2m00QgK0QJzB5nPHj0+mOZa5xa7hFto8fpjrnJoGQkw+++XwDFr3QIPveD/gz/L4mY6pHB6w5aVQ
	n3D2/SMOJ0McOM4sSCd8qYmRsVuB/EP1sHsaPW3N+xhcKvzsYzf7RD4/xhtKnvFscn+L2SxOQoGmw
	7IsDAwUBDxovI7fW/aEFKBmJiWjQAxxtH9HJaZyLvnlZSkCZ48va7YyzozG25ALBIz8wxrarAw/5f
	+VDHhQKZwYD4+0qLVUKw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pkfK7-009FF5-1e;
	Fri, 07 Apr 2023 06:11:47 +0000
Received: from mail-pl1-x630.google.com ([2607:f8b0:4864:20::630])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pkfK4-009FDw-1L
	for linux-phy@lists.infradead.org;
	Fri, 07 Apr 2023 06:11:45 +0000
Received: by mail-pl1-x630.google.com with SMTP id d9443c01a7336-1a4f7b041dfso264705ad.3
        for <linux-phy@lists.infradead.org>; Thu, 06 Apr 2023 23:11:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1680847903;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=211/WQndq/0dIl4SBYP+HR+YcyINuvXrDMq+d+OBMX0=;
        b=lIm2dOTV1ZyuKjez2fSI0LPbQVa4KKfwrbjvSJegqX/etzx4+UuDyt4VMVUuOmqXZh
         eYtKJ+tY+5EnH4q3WvFr6YsnG8hZSVYA6dcUENfbDukd1+PtsFY/TNQcfNZ9UJbMCZXl
         H04QxaDhreuEVjVgjrtUzMMZSt99NE62IDD+POwPQlMk9DG2GNkiqqP2OIHoL1GQtYGq
         lFYdHzjq2xjmwm2W+GTP90JFxWBTZdTFil+23TQkZQEcf4+hRvuaUSarLliAGVn0GAhW
         RRyej4c0zdtxcSmzg1+mGRxqgVw6SqBgxvHLB9AhqWbYs2g0907aEOvPnzGG51nNo005
         I2ZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680847903;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=211/WQndq/0dIl4SBYP+HR+YcyINuvXrDMq+d+OBMX0=;
        b=llNO1448tEehu2JH5+9dciagdfgdvvgal2n81cxXl/dgR7ewz41WcZeA0+ejmXdnSa
         LOA8krRau52azukRuRL5vgzP2khKJAGRZZiVQn+iAKiDkdPcFco0Ucg0PqzVxHqqJ8l9
         bHWTQo0Uu6uiwgXmxYijIRytyYjtxXFCVzkgJjJ5jV2bJPS6hMTKja/zAoIKnVKTbUON
         imJUmYvbAsee2XcUgqZYXMIA/rZqlXubW5RiJjuwqU3SCNEMPqtGUowKf7Nav6mEWFX7
         xRYfKr6bsKgP1tjsGSNFLOW+Yrl84IFKnQKaiMxdeKwoKTUukuikseUYJ18nXEoByKju
         +/Lg==
X-Gm-Message-State: AAQBX9e+fCSpBysgS4QOfow6goAIhyKVEoOLhR0IDhWA8fK3KgkPNgTk
	d3lgP0Gv8T1XpxAEdhJ3k5cELR4NkzCA4TmaesQ=
X-Google-Smtp-Source: AKy350bzkyU/L95q1La6S7UbwY2cS2FuyGPLUXtdRiLUdUhCCWKIm6ciLc7IhgzxzDKXjvMjwoFsBQ==
X-Received: by 2002:a62:7b50:0:b0:62a:5769:25f9 with SMTP id w77-20020a627b50000000b0062a576925f9mr1420730pfc.28.1680847903256;
        Thu, 06 Apr 2023 23:11:43 -0700 (PDT)
Received: from localhost.localdomain ([2401:4900:1c60:6a11:8ba1:beba:def7:a4ae])
        by smtp.gmail.com with ESMTPSA id u25-20020aa78399000000b0062d7e9bb17asm2253879pfm.81.2023.04.06.23.11.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 06 Apr 2023 23:11:42 -0700 (PDT)
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
Subject: [PATCH v6 2/2] arm64: dts: qcom: sm6115: Add USB SS qmp phy node
Date: Fri,  7 Apr 2023 11:41:22 +0530
Message-Id: <20230407061122.2036838-3-bhupesh.sharma@linaro.org>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20230407061122.2036838-1-bhupesh.sharma@linaro.org>
References: <20230407061122.2036838-1-bhupesh.sharma@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230406_231144_452256_E7914A3B 
X-CRM114-Status: GOOD (  10.07  )
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
index 2505c815c65a..f42065a0a71d 100644
--- a/arch/arm64/boot/dts/qcom/sm6115.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm6115.dtsi
@@ -651,6 +651,38 @@ usb_hsphy: phy@1613000 {
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
+			resets = <&gcc GCC_USB3_PHY_PRIM_SP0_BCR>,
+				 <&gcc GCC_USB3PHY_PHY_PRIM_SP0_BCR>;
+			reset-names = "phy", "phy_phy";
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
@@ -1101,8 +1133,8 @@ usb_dwc3: usb@4e00000 {
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
