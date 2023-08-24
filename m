Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 839B4C27C40
	for <linux-phy@archiver.kernel.org>; Thu, 24 Aug 2023 21:20:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=U9pEU13V8C9XmhlntQbNygp4qPqfvscc/NtHmSC1Nng=; b=PrU2RU6z9MZz+q
	7nOy7n0x4dLPsWKOOEzQPhx4TH132h8OTJR15YgP/4BlrP2axSFrv+i/ekCSGVUI1IlU8IAEHmvL0
	5FsZLbH60QQJjFnSbpzT+qdjFXuq9ViG8Ud/2o2vB913IFClFc4gC2tuCQamtUVr1y3gfpd9qoct2
	HsTI7d0JqjOBMWRqVaG/eNnSYe9YDnZxM/Y/Etd4z7m+1JPMFf3Gw3RfoSluItTaRjJSytO3r1rUo
	B7SKmpsPHRm6h97jUICat+koVvEXEEFQ31th5QNcnenNbrqP+bMVfC1ggF9FxYOBmlaWP8U4Umcd9
	JFjPJ2Q8Wyecj5LQJDqg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qZHkV-003ozd-0T;
	Thu, 24 Aug 2023 21:20:15 +0000
Received: from mail-lj1-x22d.google.com ([2a00:1450:4864:20::22d])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qZHkQ-003oth-08
	for linux-phy@lists.infradead.org;
	Thu, 24 Aug 2023 21:20:11 +0000
Received: by mail-lj1-x22d.google.com with SMTP id 38308e7fff4ca-2bbbda48904so3466551fa.2
        for <linux-phy@lists.infradead.org>; Thu, 24 Aug 2023 14:20:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1692912006; x=1693516806;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xhz5s4p9df6iSnMVEljVBPUMS53rGAftjG7CgRxMulA=;
        b=jWjowwySdC2IJGQIWxGm6vENMRjYJTkw1xEpZoUYyhy0Jl1mHF0fKhaPXD10vSb1lr
         QoNUPBLD/EkJUiJzApKilVv5b0lUMGvdesoI5sYJPcmxSUYJNABW89DceO9KbPhg2sBj
         2Q7INTAqhRaETePwC88IQcbyzCvm6PJJ0FzqQRWcsuTZkT2TsM5o5o8L3FJJrDT3ZV9u
         SqOiAuszyl5HSMllqfuD5K/NxLPBaSkko8UefKZ6012CS6NWL3Mnf4QOHm3nuHrkRrHm
         kUcc9oqF3xdVas2pZ1z65IwCOtOpefMZwEx5AZH3HZZWsDsx5HBdSTNn1I6X8fsSdg7n
         UaqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692912006; x=1693516806;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=xhz5s4p9df6iSnMVEljVBPUMS53rGAftjG7CgRxMulA=;
        b=djOrelGWR6GCmRT2m529vohh79utzhIR9XfEQ7LdN4kSvfZw0ONLZSRkpMa48/zrrC
         gyZRO8dchVSFJ5W/iRHY07AiWrR07uYtOcxarwk12oL7Onqh0a0/YcPsVEwCmbfPgh7u
         XKqAnoflaBfMwtHfP3D8SpmEhLW0RLcajblbqBo3QqTF/0e79DJdikf7Enpge/AWqrEY
         jo5vS/FIP3OpJ2qeZAwym8VwT01RXoGX26mzxYANF0k63yb+3zkw4fdNcU85xyqilczv
         2XiMkjl1Sh7BXmbmNiHNqZEoAUy/YH+1YD0YPRi0MwiqZsnwxPT7e2Z5Dz3JGv6s+ZUj
         GYRg==
X-Gm-Message-State: AOJu0YzDZSzXSo/YS3YfG7dx6tXFnzCOPV2AzcFfnU6li7OvK8PG1AOf
	sCIFXjhdLnlXndhZPJaQHcb1GA==
X-Google-Smtp-Source: AGHT+IEg4KeUAvq05EQSKwbdBe9ho+XeYMG+Wt0V5yPIqSqmNEAGnxqwiDkZ/p9IOvAK8cqflhzm3w==
X-Received: by 2002:ac2:4ec3:0:b0:500:8fb1:7a47 with SMTP id p3-20020ac24ec3000000b005008fb17a47mr5341580lfr.30.1692912006023;
        Thu, 24 Aug 2023 14:20:06 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id j29-20020a056512029d00b004fe4ab686b4sm17690lfp.167.2023.08.24.14.20.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 24 Aug 2023 14:20:05 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Philipp Zabel <p.zabel@pengutronix.de>,
	Johan Hovold <johan@kernel.org>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org
Subject: [PATCH v3 14/16] arm64: dts: qcom: sm8350: switch USB QMP PHY to new style of bindings
Date: Fri, 25 Aug 2023 00:19:50 +0300
Message-Id: <20230824211952.1397699-15-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230824211952.1397699-1-dmitry.baryshkov@linaro.org>
References: <20230824211952.1397699-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230824_142010_099350_A0502C5C 
X-CRM114-Status: UNSURE (   9.14  )
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
 arch/arm64/boot/dts/qcom/sm8350.dtsi | 39 ++++++++++++----------------
 1 file changed, 16 insertions(+), 23 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8350.dtsi b/arch/arm64/boot/dts/qcom/sm8350.dtsi
index a26dff42329c..8faf9c2e7d09 100644
--- a/arch/arm64/boot/dts/qcom/sm8350.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8350.dtsi
@@ -2229,34 +2229,27 @@ usb_1_qmpphy_dp_in: endpoint {
 			};
 		};
 
-		usb_2_qmpphy: phy-wrapper@88eb000 {
+		usb_2_qmpphy: phy@88eb000 {
 			compatible = "qcom,sm8350-qmp-usb3-uni-phy";
-			reg = <0 0x088eb000 0 0x200>;
+			reg = <0 0x088eb000 0 0x2000>;
 			status = "disabled";
-			#address-cells = <2>;
-			#size-cells = <2>;
-			ranges;
 
 			clocks = <&gcc GCC_USB3_SEC_PHY_AUX_CLK>,
-				 <&rpmhcc RPMH_CXO_CLK>,
 				 <&gcc GCC_USB3_SEC_CLKREF_EN>,
-				 <&gcc GCC_USB3_SEC_PHY_COM_AUX_CLK>;
-			clock-names = "aux", "ref_clk_src", "ref", "com_aux";
-
-			resets = <&gcc GCC_USB3PHY_PHY_SEC_BCR>,
-				 <&gcc GCC_USB3_PHY_SEC_BCR>;
-			reset-names = "phy", "common";
+				 <&gcc GCC_USB3_SEC_PHY_COM_AUX_CLK>,
+				 <&gcc GCC_USB3_SEC_PHY_PIPE_CLK>;
+			clock-names = "aux",
+				      "ref",
+				      "com_aux",
+				      "pipe";
+			clock-output-names = "usb3_uni_phy_pipe_clk_src";
+			#clock-cells = <0>;
+			#phy-cells = <0>;
 
-			usb_2_ssphy: phy@88ebe00 {
-				reg = <0 0x088ebe00 0 0x200>,
-				      <0 0x088ec000 0 0x200>,
-				      <0 0x088eb200 0 0x1100>;
-				#phy-cells = <0>;
-				#clock-cells = <0>;
-				clocks = <&gcc GCC_USB3_SEC_PHY_PIPE_CLK>;
-				clock-names = "pipe0";
-				clock-output-names = "usb3_uni_phy_pipe_clk_src";
-			};
+			resets = <&gcc GCC_USB3_PHY_SEC_BCR>,
+				 <&gcc GCC_USB3PHY_PHY_SEC_BCR>;
+			reset-names = "phy",
+				      "phy_phy";
 		};
 
 		dc_noc: interconnect@90c0000 {
@@ -2409,7 +2402,7 @@ usb_2_dwc3: usb@a800000 {
 				iommus = <&apps_smmu 0x20 0x0>;
 				snps,dis_u2_susphy_quirk;
 				snps,dis_enblslpm_quirk;
-				phys = <&usb_2_hsphy>, <&usb_2_ssphy>;
+				phys = <&usb_2_hsphy>, <&usb_2_qmpphy>;
 				phy-names = "usb2-phy", "usb3-phy";
 			};
 		};
-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
