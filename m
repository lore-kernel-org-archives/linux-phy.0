Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 73986C7113B
	for <linux-phy@archiver.kernel.org>; Thu, 24 Aug 2023 21:20:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=f1ijshGjyoTkPWH7dGsP8dTcQEcAa9g+vSf0HBqeyqM=; b=f+ZPWjGj8B6XIH
	hN42EOurDKth7PvTUzPAtwX4d0opakoIHJAEMmAjDzi6g2G1w5QZQPfkQWLMjgPwzlf9VoCgMk81B
	ZK/0bXH0hNEtWriUFhxnrUcidajtxUq0ZPFov8PhwHNy9cL4WekdesQyyUv/5fGeQuOZN4+5E+Fww
	WqSppl/91vOpTXxaTIpf2OaXaM2Was70Jyhw9b470su0ruwgwL2eGFXioT+r3g/+7swsZlHPf4e3I
	je4klwcXBQBZndJRFW39KlybpgV0IqfsH3pg7xLTtpJJ2BWykKD/D51ahZnvDjwvcMfo4zuaMBOJ8
	etaoc6n7sfdToz9eqv0g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qZHkR-003oxK-0a;
	Thu, 24 Aug 2023 21:20:11 +0000
Received: from mail-lf1-x12c.google.com ([2a00:1450:4864:20::12c])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qZHkM-003oss-1k
	for linux-phy@lists.infradead.org;
	Thu, 24 Aug 2023 21:20:08 +0000
Received: by mail-lf1-x12c.google.com with SMTP id 2adb3069b0e04-5007616b756so357231e87.3
        for <linux-phy@lists.infradead.org>; Thu, 24 Aug 2023 14:20:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1692912005; x=1693516805;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ZpBNHpYglDb91ucrUq7ha/N1sRsDyurprg1I9sqkvpM=;
        b=ijpnJWvRvCpqv7sKtKdSlURCZwFQyL0/odtMMXsdbet9Y8ulyBLkjlMBYiiQNFgRVI
         a5S0Mv2CGeZTwT+a39vaZHmYIbD0OuxtMhWxsPh3CXtOWqhvSVlHpqI+LYbRTf4IArRQ
         DD1uVQ/C0ctiIrSg2lzVEBEsGIvmWVJyPcFN2GiBp+n0/cEjylCAc8KEkzubbHc587LB
         vU0gC7AhPkl31CGcq9XUUutd1HuTmAA9qzjpxrbrNN7qUMxIuiCL8gm7w2622ckiqw1g
         uUuWbtaEbg1wAjCvGw6WzvERJihoC2s8QdtUKuz7s4gjpklIQPIEsdGGKCBGh7oSK8m8
         msuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692912005; x=1693516805;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ZpBNHpYglDb91ucrUq7ha/N1sRsDyurprg1I9sqkvpM=;
        b=DM4/qGqWPsu1+aS69/DY5n+4/aSO4F4GQ4y/Of4nmqnw1+fr2kYHDlbv1A4GHvXN6T
         /zqwh3+zfDFIaHYQIx7jpLBSjwRiRWQ012OuI/aoLVPQRGKEuT0KeJBhfDxsddTp1nek
         9uGowJOvbg3BtO2tVq4InVsc7cDqLcZj4dxPS1QtT9VuBSEEstQtWTJsUxtu2VedC3IY
         u1bNzlVhtXaIPvlYETPgWdhilrC29pSQ6G35GXINamf1ClA2yc6gGFDWeqjkk4t2YxSQ
         I+PiVOQZNtyJMOD5t7PH7cedECh8yZYbNsYOlxZKs8dC3F/y51hBUkjH3cVtyGLTSyEg
         Rs4A==
X-Gm-Message-State: AOJu0YykuVeBlHPlI6HnHkJ+EW6Wtmf0/ToMS+8hysDWni4LZSva7DDL
	TnYMsyYUIw8zvIJnGmyepHyzfg==
X-Google-Smtp-Source: AGHT+IFJLL+HnUoq2AGB/0XiOvIYH+a5RAXI9OBzyswtrCLQypr7wS+cDnxRIWbz868/ustNAs2FRw==
X-Received: by 2002:a05:6512:3241:b0:4fe:94a1:da84 with SMTP id c1-20020a056512324100b004fe94a1da84mr10597379lfr.5.1692912005162;
        Thu, 24 Aug 2023 14:20:05 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id j29-20020a056512029d00b004fe4ab686b4sm17690lfp.167.2023.08.24.14.20.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 24 Aug 2023 14:20:04 -0700 (PDT)
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
Subject: [PATCH v3 13/16] arm64: dts: qcom: sm8250: switch USB QMP PHY to new style of bindings
Date: Fri, 25 Aug 2023 00:19:49 +0300
Message-Id: <20230824211952.1397699-14-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230824211952.1397699-1-dmitry.baryshkov@linaro.org>
References: <20230824211952.1397699-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230824_142006_587992_E4FDDBCA 
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
 arch/arm64/boot/dts/qcom/sm8250.dtsi | 38 ++++++++++++----------------
 1 file changed, 16 insertions(+), 22 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8250.dtsi b/arch/arm64/boot/dts/qcom/sm8250.dtsi
index abe39b0470da..974bdc1a9f34 100644
--- a/arch/arm64/boot/dts/qcom/sm8250.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8250.dtsi
@@ -3575,32 +3575,26 @@ usb_1_qmpphy: phy@88e8000 {
 
 		usb_2_qmpphy: phy@88eb000 {
 			compatible = "qcom,sm8250-qmp-usb3-uni-phy";
-			reg = <0 0x088eb000 0 0x200>;
-			status = "disabled";
-			#address-cells = <2>;
-			#size-cells = <2>;
-			ranges;
+			reg = <0 0x088eb000 0 0x1000>;
 
 			clocks = <&gcc GCC_USB3_SEC_PHY_AUX_CLK>,
-				 <&rpmhcc RPMH_CXO_CLK>,
 				 <&gcc GCC_USB3_SEC_CLKREF_EN>,
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
-				      <0 0x088eb800 0 0x800>;
-				#clock-cells = <0>;
-				#phy-cells = <0>;
-				clocks = <&gcc GCC_USB3_SEC_PHY_PIPE_CLK>;
-				clock-names = "pipe0";
-				clock-output-names = "usb3_uni_phy_pipe_clk_src";
-			};
+			status = "disabled";
 		};
 
 		sdhc_2: mmc@8804000 {
@@ -3905,7 +3899,7 @@ usb_2_dwc3: usb@a800000 {
 				iommus = <&apps_smmu 0x20 0>;
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
