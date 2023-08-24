Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4A594C3DA6F
	for <linux-phy@archiver.kernel.org>; Thu, 24 Aug 2023 21:20:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=B2M/otJ1WjsIkjdDFHHkSejt7gEkI2Ei3/ayr2Pt2rM=; b=dfFLBh/Oz47FTS
	R0x9RNiBYFs+b10+iDOfQahiHiJQJSp7G3XCIv6O2BA8y+D/PQgUlTehqKXrysiV5Zo/Duq8JjKDE
	Mk8h0+Vfx+KlXGjaaIzZ4g5B2EWnHZywQu9UvTz06Idueg0Q4je4vlnLF8ddj+7Dks+k/wNhFN5u2
	bGaTFQKyUDI057XPqXyF+bPBx0cCjA0BmFCwQACJMu6ibXA19M/tnuKRjUwUTF+BWq/MPhWSDBqA2
	19Oie8vKVzab+Y6y9QlmTYUgrYAFwOAckTlHo4GIkky/lVNZRcVBjG1qroXWU6Rpa7QpEQE1N9ovH
	mduClp+Ynrif9DDNlRvg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qZHkV-003ozq-28;
	Thu, 24 Aug 2023 21:20:15 +0000
Received: from mail-lj1-x233.google.com ([2a00:1450:4864:20::233])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qZHkR-003ouv-1F
	for linux-phy@lists.infradead.org;
	Thu, 24 Aug 2023 21:20:12 +0000
Received: by mail-lj1-x233.google.com with SMTP id 38308e7fff4ca-2bcc846fed0so3560621fa.2
        for <linux-phy@lists.infradead.org>; Thu, 24 Aug 2023 14:20:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1692912007; x=1693516807;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=T2cQbFAa2dZ8daCARAy1nE0Yfl5a2H4VUsq7LUs1D2Q=;
        b=V2snjtbLmf4S+8yNVPkHG0ezZhmiEjEIE6sP3FJTjUyMedWm5lXKPvUiZlR7pFe0VQ
         /AuDAAbOfDFr5nGai9Y2VVu1XavXBKp2cAshCmpw2fLIsqragsKGc32zoazGobiniGiD
         UkC8mAFXG2cruDSoyX5wEKc8ryhEQn2Ep8RjaZjgJ0V5Tq+h9uKqBH/NzPdONuxHeEzy
         /ZGHzSCJ/6NJa/lJJCP6YTxMPM+jdeye+uXYJRxNnFUgkNELx1FDm4ne3MzkP/Y7U/Ip
         UkJjj80+b18MxQdZk0kBbw8jEdc3F/+l6RXna4RlPtvFGVTb8S7R+4UdhPboGZIfGXCK
         ucpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692912007; x=1693516807;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=T2cQbFAa2dZ8daCARAy1nE0Yfl5a2H4VUsq7LUs1D2Q=;
        b=keHXqgn8KKYbjCqgztS7pnl4gUFPQDC7PcrWFYcI9U7QD9myYadpEgn1OdO2p0QSDg
         loEPyUkg9akTmRftubWDB6O3osKEh2jftLkgZO7gtgFDgsxVsVWx8ffu5alkLdPLb/yb
         Bn7IBHPrrIKK2T+Z95UKGUAdlrnKjwFAPRaCKGpXTaw1w6RmqpuEa0E6p2ssj36jugAI
         urzZCAa8Gtu1jNKcIdPb+yLrB++zpsgTEyz4GsarPBmBnaoHPkxwMieyE4KqcT6ky7ja
         6mhDah/59XNUWFGN8yZPXQ6V1Ptw04FAfFW1czCmOZrvce5I08sZKw1mJa+jvK5hUqVi
         PWKg==
X-Gm-Message-State: AOJu0YwR+j2TtDvUb5Nmwq61hVOCbMFTcuIyiHF8bfBP7YIrGCx1OMfY
	6ld/T9w0cxJza+0IlAhu+Hx2Fw==
X-Google-Smtp-Source: AGHT+IGOtvbHAfKUQzmXtpMF+lbgcH2+b2VWk4P465JPvUYZs+fN5kZkjSwf23XjGk/kHkN9ZQqS9Q==
X-Received: by 2002:a05:6512:3da7:b0:4fb:7cea:882a with SMTP id k39-20020a0565123da700b004fb7cea882amr14760939lfv.3.1692912007470;
        Thu, 24 Aug 2023 14:20:07 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id j29-20020a056512029d00b004fe4ab686b4sm17690lfp.167.2023.08.24.14.20.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 24 Aug 2023 14:20:07 -0700 (PDT)
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
Subject: [PATCH v3 16/16] ARM: dts: qcom-sdx65: switch USB QMP PHY to new style of bindings
Date: Fri, 25 Aug 2023 00:19:52 +0300
Message-Id: <20230824211952.1397699-17-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230824211952.1397699-1-dmitry.baryshkov@linaro.org>
References: <20230824211952.1397699-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230824_142011_439690_8B8A2D0A 
X-CRM114-Status: UNSURE (   9.22  )
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
 arch/arm/boot/dts/qcom/qcom-sdx65.dtsi | 35 +++++++++++---------------
 1 file changed, 15 insertions(+), 20 deletions(-)

diff --git a/arch/arm/boot/dts/qcom/qcom-sdx65.dtsi b/arch/arm/boot/dts/qcom/qcom-sdx65.dtsi
index 1a3583029a64..27e2cc84c363 100644
--- a/arch/arm/boot/dts/qcom/qcom-sdx65.dtsi
+++ b/arch/arm/boot/dts/qcom/qcom-sdx65.dtsi
@@ -233,32 +233,27 @@ usb_hsphy: phy@ff4000 {
 
 		usb_qmpphy: phy@ff6000 {
 			compatible = "qcom,sdx65-qmp-usb3-uni-phy";
-			reg = <0x00ff6000 0x1c8>;
-			#address-cells = <1>;
-			#size-cells = <1>;
-			ranges;
+			reg = <0x00ff6000 0x2000>;
 
 			clocks = <&gcc GCC_USB3_PHY_AUX_CLK>,
+				 <&gcc GCC_USB3_PRIM_CLKREF_EN>,
 				 <&gcc GCC_USB_PHY_CFG_AHB2PHY_CLK>,
-				 <&gcc GCC_USB3_PRIM_CLKREF_EN>;
-			clock-names = "aux", "cfg_ahb", "ref";
+				 <&gcc GCC_USB3_PHY_PIPE_CLK>;
+			clock-names = "aux",
+				      "ref",
+				      "cfg_ahb",
+				      "pipe";
+			clock-output-names = "usb3_uni_phy_pipe_clk_src";
+			#clock-cells = <0>;
+			#phy-cells = <0>;
 
-			resets = <&gcc GCC_USB3PHY_PHY_BCR>,
-				 <&gcc GCC_USB3_PHY_BCR>;
-			reset-names = "phy", "common";
+			resets = <&gcc GCC_USB3_PHY_BCR>,
+				 <&gcc GCC_USB3PHY_PHY_BCR>;
+			reset-names = "phy",
+				      "phy_phy";
 
 			status = "disabled";
 
-			usb_ssphy: phy@ff6200 {
-				reg = <0x00ff6e00 0x160>,
-				      <0x00ff7000 0x1ec>,
-				      <0x00ff6200 0x1e00>;
-				#phy-cells = <0>;
-				#clock-cells = <0>;
-				clocks = <&gcc GCC_USB3_PHY_PIPE_CLK>;
-				clock-names = "pipe0";
-				clock-output-names = "usb3_uni_phy_pipe_clk_src";
-			};
 		};
 
 		system_noc: interconnect@1620000 {
@@ -520,7 +515,7 @@ usb_dwc3: usb@a600000 {
 				iommus = <&apps_smmu 0x1a0 0x0>;
 				snps,dis_u2_susphy_quirk;
 				snps,dis_enblslpm_quirk;
-				phys = <&usb_hsphy>, <&usb_ssphy>;
+				phys = <&usb_hsphy>, <&usb_qmpphy>;
 				phy-names = "usb2-phy", "usb3-phy";
 			};
 		};
-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
