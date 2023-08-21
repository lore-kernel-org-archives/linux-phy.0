Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E7BD1EE49B3
	for <linux-phy@archiver.kernel.org>; Mon, 21 Aug 2023 00:25:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tBTnCdIpXTEU2yZDGzbu57wb+mLu0PttqjUPIhJINnQ=; b=vKgQc14QaNj0cU
	ngXSwOi62uFqDehCvQ2RTcpNhrFiYqVga0mL8pqi2npr+efu85mWpxwZXVa7/v4LZq6bfcklV5lJ9
	WDwpiTvj6E7VMA3wPOFCHuYrXpTYQw5K9u5eMUIBd8ve4QjZEz9iNMOejNJmtY/jXDKDPEnr5IlEg
	qNh7p2pmxczQ2v24enWVmKHvnSFnYYHtsd4AblgJgTNGHYEdkLfbbuPfEoKm+QOvmN6++aVdxJrYr
	VhuKvgGSoQWMioGaPAgm+jF0xV5iW5t74tLZ2goepjsCpw6+RRITgM0gRZyjuVI0dQtrl8+C/u6fu
	x7iCfwu8M4oxNORIJ81g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qXsjw-00Cjry-1t;
	Mon, 21 Aug 2023 00:25:52 +0000
Received: from mail-lj1-x22d.google.com ([2a00:1450:4864:20::22d])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qXsjs-00Cjnh-0E
	for linux-phy@lists.infradead.org;
	Mon, 21 Aug 2023 00:25:50 +0000
Received: by mail-lj1-x22d.google.com with SMTP id 38308e7fff4ca-2bcbfb3705dso4712151fa.1
        for <linux-phy@lists.infradead.org>; Sun, 20 Aug 2023 17:25:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1692577546; x=1693182346;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ycYgwyr/6UwKw05jbUywqAg4PjJTQ2L3FELP5qNE/wY=;
        b=jxTDkNTf+F8oA9mqkiIJDhZKE10wnmEox5Mq3qYzZlIubpVeXoxpj+fZBL6UsMEbjN
         NwSs2X9p9EUGd0iDjIU0BIADKb/lCMD0h39cVqtP3VwnkKe/IsI9bG8IWVZF83Bb8JG7
         Gtst4O25/7/K4lr3R5Ej0JgHv5yHxod+t4gpGD6MZBD09a/4oiuXxJtGt/c6l7HDJtbo
         A6MeSWW0+SimZESbZ92sCjqAbx19kx5jrwrI73Bspudn7xsaFOAbNweBrlkytKpmF28O
         FYuxT32xOMbNTjxEJmEiNAITLVt5sdODLfoFbil0DByXg6/67dHzwZxU4UeZh51XWL+Y
         XPcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692577546; x=1693182346;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ycYgwyr/6UwKw05jbUywqAg4PjJTQ2L3FELP5qNE/wY=;
        b=VRO29y0pzo8G1p53bXaVONeKNeiecCPa5Y1ECwh+BqAd1F1tYmyNKAViq5v6kPVgM4
         3F+zfUtXqxK7goTfaxtJFbSIrq1IIdfYSS2fN9moWRa0k2xdssSU4+s5PDzwTOqBJQC5
         WUQvQ1OQkYLcUFY6R8p+SA8TV0cSyzTq54gBfgjILVOpwJPeoPM2tnVFotMDLyr1cQ6y
         QYnrnB8I9G5SN9280/WtDvoTaVt0vauxk8IpgjGiOKyDK9FzZxCWvgN5DWNhQtx1C6mp
         MG+TNRqKaMs4f+enx0LcUfGwutnLR6p17XHHvdMwY26rqcmw1NWSV94EXtFVnyhkcckF
         RcWg==
X-Gm-Message-State: AOJu0YxjzwOi07XY3QJo0hyqkDB7DS4IHB7d6O+dwopz6qmGszwnBrvf
	fQxyJqVH1Rp77rXm1XicXbO/SQ==
X-Google-Smtp-Source: AGHT+IHCLDf+PR2sQrPiZAzfuoy5kWHqUr+n8E7W8GLAmcXW5K+Bc+NLFV7rz/A7ZfuS8R0Dz9U/ZQ==
X-Received: by 2002:a2e:8519:0:b0:2b9:5fd2:763a with SMTP id j25-20020a2e8519000000b002b95fd2763amr3784765lji.35.1692577546668;
        Sun, 20 Aug 2023 17:25:46 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id h27-20020a2eb0fb000000b002b6fe751b6esm1964923ljl.124.2023.08.20.17.25.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 20 Aug 2023 17:25:46 -0700 (PDT)
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
Subject: [PATCH v2 12/16] arm64: dts: qcom: sm8150: switch USB QMP PHY to new style of bindings
Date: Mon, 21 Aug 2023 03:25:31 +0300
Message-Id: <20230821002535.585660-13-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230821002535.585660-1-dmitry.baryshkov@linaro.org>
References: <20230821002535.585660-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230820_172548_110320_FDB97910 
X-CRM114-Status: UNSURE (   9.06  )
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
