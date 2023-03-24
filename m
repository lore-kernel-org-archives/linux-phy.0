Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B2F0AC74A5B
	for <linux-phy@archiver.kernel.org>; Fri, 24 Mar 2023 02:26:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZeXC26XBkSYL0oUhgmjbMoS1lWejz3c9YvaabBJnh+4=; b=bHsvBu/UsdOugv
	+3DqAp5g/TyZm2gHaXgeS0LRkks30RtlMDIYlbQQAMlCr24ldgxLn/fiBPUowgiYhL0dffm6xjxXp
	NJLl8PzeTMtGPQij+3pEoZ0O9AwuIdyRKTltLSIYijVF22UIlzQGsJ+asImHBH0+jfDrE9K9HLUPn
	7IOBRDMUEFALYuXGzK9VcXuT+RONDhd9UytmAHfrwRD5cEwITgBc3XChhIerhu/rTZb99odZS231u
	DBxliXeeynd9LMvlOhNtwevNMcPpb/27Es71cq9mv/GD5mzCURYHejWfdUL26f9B3wUnDcjHFqAuJ
	d/+INEJN1uTmDPTaiumw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pfX7x-003OR0-0i;
	Fri, 24 Mar 2023 02:26:01 +0000
Received: from mail-lf1-x129.google.com ([2a00:1450:4864:20::129])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pfX7t-003OPZ-0B
	for linux-phy@lists.infradead.org;
	Fri, 24 Mar 2023 02:25:58 +0000
Received: by mail-lf1-x129.google.com with SMTP id j11so371469lfg.13
        for <linux-phy@lists.infradead.org>; Thu, 23 Mar 2023 19:25:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1679624755;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Wl63CU9Rl6YfDCPsB9roZSx3tsMqNAaCLrj8Bjbyllc=;
        b=E+gJtjcdRphBtb74O3PCE/m9qL/S6tCLqj9b5DeRrx2xjShztpCaNAfFq/lkcZJlUf
         Kn5fAqhY0jNhDgqqkFwM5Dk5PO/kh0X6ywLxcgeB5rlOcEwj7+DlO3Z59zZ5Quv9Qb4N
         tOXnKsapWokd1m3a/m8GXVMfB/nQSdVcy42yb2Tkk2F3iIN5wRtzEVDCnEwhCRfDhApk
         LuHCgr3cNtGi+aP7yM0+3719OC6cNGuSYVSarfFy/vBdg+v7LUp4PgQMASR7DAS07eaV
         aASmdRy2k5ywSgS3/LOhnNDSHFJFKlupXKojLSzIAma4XnzB+PE+3lJkSnI3oqxGaCaq
         dM2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679624755;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Wl63CU9Rl6YfDCPsB9roZSx3tsMqNAaCLrj8Bjbyllc=;
        b=O9xt9XndyqBekzykWkcQqtzBNf/+jYBqQ8oZ7YwqwhQQqmzFbm74qb8Ze5Jy1rkXnl
         NQihoRkPkPqRuMjQPp9cOZAtRp4i49HzSBebaVPb4QW87qtTHlplcrZw/m3rCCCGpOuz
         qPpdFG1Z39eDU65ngGM9s45IfiRt+RiHik4jz7eNwVPzmRdogaK2FB6evHgf+7f7Febk
         05WLEc/W5U8SN3vyEP6LE/w8n+MC1k53rInOWV92WdOfl/HeYyc17VSN6hYqGQHLbLSt
         KMiNjOdTY6WLJA7EXbRjZ/OIRbnn3lksV85PXP1qFsxp8YSUQg4uaZjlh6p87t/ZjY21
         eVIQ==
X-Gm-Message-State: AO0yUKVmGkvzxCuqfSkaeXG3FIknsQN1+s6/jCGyVOtCePnr92UaJM+F
	ex6CqwqBwAjvJ6TIj4a96H+5sF5Fqh8ZT4n+ysPrKw==
X-Google-Smtp-Source: AK7set+iRoOHRtxAn6Hz3EebpMzY/EAh9L4KFIWhbeaIFMthYPVwGVWs26wA3rv2nr9JjAL3Nzu0dw==
X-Received: by 2002:a05:6512:1316:b0:4ea:f63b:3b36 with SMTP id x22-20020a056512131600b004eaf63b3b36mr2197067lfu.10.1679624755695;
        Thu, 23 Mar 2023 19:25:55 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id x4-20020a19f604000000b004db3aa3c542sm3162628lfe.47.2023.03.23.19.25.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 Mar 2023 19:25:55 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>
Cc: linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	Johan Hovold <johan+linaro@kernel.org>
Subject: [PATCH 39/41] ARM: dts: qcom-sdx55: switch USB QMP PHY to new style of bindings
Date: Fri, 24 Mar 2023 05:25:12 +0300
Message-Id: <20230324022514.1800382-40-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230324022514.1800382-1-dmitry.baryshkov@linaro.org>
References: <20230324022514.1800382-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230323_192557_090881_084F8BC5 
X-CRM114-Status: UNSURE (   8.75  )
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

Change the USB QMP PHY to use newer style of QMP PHY bindings (single
resource region, no per-PHY subnodes).

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm/boot/dts/qcom-sdx55.dtsi | 26 +++++++++++---------------
 1 file changed, 11 insertions(+), 15 deletions(-)

diff --git a/arch/arm/boot/dts/qcom-sdx55.dtsi b/arch/arm/boot/dts/qcom-sdx55.dtsi
index 9148a840b8a0..d69e3e8b280e 100644
--- a/arch/arm/boot/dts/qcom-sdx55.dtsi
+++ b/arch/arm/boot/dts/qcom-sdx55.dtsi
@@ -228,7 +228,7 @@ usb_hsphy: phy@ff4000 {
 
 		usb_qmpphy: phy@ff6000 {
 			compatible = "qcom,sdx55-qmp-usb3-uni-phy";
-			reg = <0x00ff6000 0x1c0>;
+			reg = <0x00ff6000 0x1000>;
 			status = "disabled";
 			#address-cells = <1>;
 			#size-cells = <1>;
@@ -236,23 +236,19 @@ usb_qmpphy: phy@ff6000 {
 
 			clocks = <&gcc GCC_USB3_PHY_AUX_CLK>,
 				 <&gcc GCC_USB_PHY_CFG_AHB2PHY_CLK>,
-				 <&gcc GCC_USB3_PRIM_CLKREF_CLK>;
-			clock-names = "aux", "cfg_ahb", "ref";
+				 <&gcc GCC_USB3_PRIM_CLKREF_CLK>,
+				 <&gcc GCC_USB3_PHY_PIPE_CLK>;
+			clock-names = "aux",
+				      "cfg_ahb",
+				      "ref",
+				      "pipe";
+			clock-output-names = "usb3_uni_phy_pipe_clk_src";
+			#clock-cells = <0>;
+			#phy-cells = <0>;
 
 			resets = <&gcc GCC_USB3PHY_PHY_BCR>,
 				 <&gcc GCC_USB3_PHY_BCR>;
 			reset-names = "phy", "common";
-
-			usb_ssphy: phy@ff6200 {
-				reg = <0x00ff6200 0x170>,
-				      <0x00ff6400 0x200>,
-				      <0x00ff6800 0x800>;
-				#phy-cells = <0>;
-				#clock-cells = <0>;
-				clocks = <&gcc GCC_USB3_PHY_PIPE_CLK>;
-				clock-names = "pipe0";
-				clock-output-names = "usb3_uni_phy_pipe_clk_src";
-			};
 		};
 
 		mc_virt: interconnect@1100000 {
@@ -608,7 +604,7 @@ usb_dwc3: dwc3@a600000 {
 				iommus = <&apps_smmu 0x1a0 0x0>;
 				snps,dis_u2_susphy_quirk;
 				snps,dis_enblslpm_quirk;
-				phys = <&usb_hsphy>, <&usb_ssphy>;
+				phys = <&usb_hsphy>, <&usb_qmpphy>;
 				phy-names = "usb2-phy", "usb3-phy";
 			};
 		};
-- 
2.30.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
