Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 19C7CC83003
	for <linux-phy@archiver.kernel.org>; Thu, 24 Aug 2023 21:20:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tBTnCdIpXTEU2yZDGzbu57wb+mLu0PttqjUPIhJINnQ=; b=MQH0baR6+WHx5o
	WOJN1UeIQliKSdQH/nJflDcPdRCx7WHRjSZdw8JDJIIRYnP1blCwWweIqdSxu+aZRRz7ejsA9m1ex
	+MdbGn5uLQLFDrjjSrCrtqpal5Ra0AyGI0xpYiLJz5bngPRxmN3fSv6IabBYkom6S3M/aHowc8Tv1
	v9h4Qt4VZ6s3zmDZY+HxqFbbkHpxe8PvLQPnPdnYIQUxwFadB6eEpRMuxkLGSmBpYtc5vRNgh/mKL
	Cdf9XIAYBX4MsodxhE7C7QEwyC3i7jJCjPFGaOaoxcAVJL2h9KHxZbLthpjmsMV4Wkve4PtJ9A3t/
	K00hq8ruE4ihyceQlQ4w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qZHkQ-003ox3-2N;
	Thu, 24 Aug 2023 21:20:10 +0000
Received: from mail-lf1-x132.google.com ([2a00:1450:4864:20::132])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qZHkL-003orc-2C
	for linux-phy@lists.infradead.org;
	Thu, 24 Aug 2023 21:20:07 +0000
Received: by mail-lf1-x132.google.com with SMTP id 2adb3069b0e04-4ff9b389677so358265e87.3
        for <linux-phy@lists.infradead.org>; Thu, 24 Aug 2023 14:20:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1692912004; x=1693516804;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ycYgwyr/6UwKw05jbUywqAg4PjJTQ2L3FELP5qNE/wY=;
        b=n6yZuolq0io1VBg/XNpq3HJfNBZrkM8EX8vPxv3C7jd725afVb0zSuSrrqW/YEBIUP
         qXB4bJw11gZgc6uAP+dyr+GIbvrfr6MDn/VomwASyzwFFmz2zvZDmIiCkVCTWmM22Bi4
         /K8GxDERyVdsU6aKjefVcjSC5HSt/RKBDCkgkUUVmY11QHo0jIk+wJekyOPhjSIin/zG
         u6O7d+wT9v9GaDUNGszixEdRk0hqbtkYr3zzAOmT9qhqHHFIteluw8pJxffJ2OJ6oZ+q
         BDXWHQ8/RBpL7j8/ztx+al4TZOvMlhhjmNGDl/xoq4GYvppaSvQ5fE1XUz2FiemcBc51
         ityw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692912004; x=1693516804;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ycYgwyr/6UwKw05jbUywqAg4PjJTQ2L3FELP5qNE/wY=;
        b=jgdLe/JgvJLC0+6UVRVN03l2zK2WCJku05FdpccaWf+n8R/BnGvsusplpgdFNGLkdS
         yPZPZtk7bZBPutkNUOU1HhkeV8FYRhNaCGL5SYtUatp1o1pmAO9TV97Tr+DtchlTBJ1j
         OWwfrUwMPJlByRPghGW+u880j2d0PQRvcRIXu3VGqw3eBmK7/TWjNDGg+e/mcUNkduK9
         ioIYxElY2lM4x8yU9AxQSZlOEkTmrP1EUl+vtt2Vk8jIvjBt2zp9NgG0oYg204ruEMQJ
         K60YXqrCOBmiY63Eif+m1mNajnFF7PjhPCt5wsarf6x8vReP9Rlk6PGEN1z44cH8V9a8
         agsw==
X-Gm-Message-State: AOJu0YzR4ez+lUpcD/J/Xsw47KiGcS6xWQk56gNdWAx4uJmNgPSe8y8J
	Pw1CoXYOD4D9kJv0TvnvG5WX9g==
X-Google-Smtp-Source: AGHT+IEuoWh1oqjbNkq5s2su0pYLByrkLX7fOaAVRW11wy1GIWq2RFZPhXQEed5n/nvUKn9ELcrKiA==
X-Received: by 2002:a19:6552:0:b0:500:7e70:ddf7 with SMTP id c18-20020a196552000000b005007e70ddf7mr9470617lfj.52.1692912004382;
        Thu, 24 Aug 2023 14:20:04 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id j29-20020a056512029d00b004fe4ab686b4sm17690lfp.167.2023.08.24.14.20.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 24 Aug 2023 14:20:03 -0700 (PDT)
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
Subject: [PATCH v3 12/16] arm64: dts: qcom: sm8150: switch USB QMP PHY to new style of bindings
Date: Fri, 25 Aug 2023 00:19:48 +0300
Message-Id: <20230824211952.1397699-13-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230824211952.1397699-1-dmitry.baryshkov@linaro.org>
References: <20230824211952.1397699-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230824_142005_746609_81E27F8B 
X-CRM114-Status: UNSURE (   9.15  )
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
 arch/arm64/boot/dts/qcom/sm8150.dtsi | 39 ++++++++++++----------------
 1 file changed, 16 insertions(+), 23 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8150.dtsi b/arch/arm64/boot/dts/qcom/sm8150.dtsi
index d9f0d7410661..380712aee977 100644
--- a/arch/arm64/boot/dts/qcom/sm8150.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8150.dtsi
@@ -3442,33 +3442,26 @@ usb_1_qmpphy: phy@88e8000 {
 
 		usb_2_qmpphy: phy@88eb000 {
 			compatible = "qcom,sm8150-qmp-usb3-uni-phy";
-			reg = <0 0x088eb000 0 0x200>;
-			status = "disabled";
-			#address-cells = <2>;
-			#size-cells = <2>;
-			ranges;
+			reg = <0 0x088eb000 0 0x1000>;
 
 			clocks = <&gcc GCC_USB3_SEC_PHY_AUX_CLK>,
-				 <&rpmhcc RPMH_CXO_CLK>,
 				 <&gcc GCC_USB3_SEC_CLKREF_CLK>,
-				 <&gcc GCC_USB3_SEC_PHY_COM_AUX_CLK>;
-			clock-names = "aux", "ref_clk_src", "ref", "com_aux";
+				 <&gcc GCC_USB3_SEC_PHY_COM_AUX_CLK>,
+				 <&gcc GCC_USB3_SEC_PHY_PIPE_CLK>;
+			clock-names = "aux",
+				      "ref",
+				      "com_aux",
+				      "pipe";
+			clock-output-names = "usb3_uni_phy_pipe_clk_src";
+			#clock-cells = <0>;
+			#phy-cells = <0>;
 
-			resets = <&gcc GCC_USB3PHY_PHY_SEC_BCR>,
-				 <&gcc GCC_USB3_PHY_SEC_BCR>;
-			reset-names = "phy", "common";
+			resets = <&gcc GCC_USB3_PHY_SEC_BCR>,
+				 <&gcc GCC_USB3PHY_PHY_SEC_BCR>;
+			reset-names = "phy",
+				      "phy_phy";
 
-			usb_2_ssphy: phy@88eb200 {
-				reg = <0 0x088eb200 0 0x200>,
-				      <0 0x088eb400 0 0x200>,
-				      <0 0x088eb800 0 0x800>,
-				      <0 0x088eb600 0 0x200>;
-				#clock-cells = <0>;
-				#phy-cells = <0>;
-				clocks = <&gcc GCC_USB3_SEC_PHY_PIPE_CLK>;
-				clock-names = "pipe0";
-				clock-output-names = "usb3_uni_phy_pipe_clk_src";
-			};
+			status = "disabled";
 		};
 
 		sdhc_2: mmc@8804000 {
@@ -3631,7 +3624,7 @@ usb_2_dwc3: usb@a800000 {
 				iommus = <&apps_smmu 0x160 0>;
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
