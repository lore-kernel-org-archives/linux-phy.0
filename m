Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B7863C7619A
	for <linux-phy@archiver.kernel.org>; Fri, 24 Mar 2023 02:25:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AcElw/b1XYnc2FI/h+I5IvgUAk2LxQuu7K9YxQp6l8s=; b=GaStsfhVIAQcGB
	Ovj1kvqHQrpoBTsFFaH13pGV2/fACEJClsDNswCn1FwOL8SmYprF2SFGauLFg3MxSE1qeM1j4NAJk
	w0BCjQqihVF0uCR2gJMKEnkfDLfPTfyh2n5UhtBXwSypsdpqCwztGFyyTbBgkhASqecxDMyTCtwMM
	2hAb2cW4rqbKQIXqI8Rf2dK3TPqr0yulNGQJhGyPRnJNpLlfMxVCKdK6cbP7IA+Dyte6upQ2qFmrq
	RGL0JteXXw5E5DaZTObN3oFkk6rqaw82+yyuaVjT+s7U0PZZJvOJYPuArV145r06ZRN4QkXoux3WF
	68gYrixgJw3ZePg8TViA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pfX7r-003OP7-1J;
	Fri, 24 Mar 2023 02:25:55 +0000
Received: from mail-lf1-x12d.google.com ([2a00:1450:4864:20::12d])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pfX7m-003ODA-26
	for linux-phy@lists.infradead.org;
	Fri, 24 Mar 2023 02:25:51 +0000
Received: by mail-lf1-x12d.google.com with SMTP id q16so387237lfe.10
        for <linux-phy@lists.infradead.org>; Thu, 23 Mar 2023 19:25:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1679624750;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=tDMRxe5lO0BDqNSwVoHfn6VZH37WgUUYrngIiH3uSZM=;
        b=S6WApY8IuUkybIY+ut33PuOuhmQk/8rpCbkYoQXdR3P1kZN+WuauwzI4k91roHn9Tn
         IX/6o1ak3Nc5XMJUrs1OKoQ5NXxPii+ejNxpAFKfjvK02IUdp97G6g6OIrUvURjeqnvq
         nu3KW4gCkICvEF5Xch/JBhXd88iNlYOlaMdUIV/LZqo6uQvB+idGbZ1L/CxtHhCvSDT2
         F5iQfalNI5fkvadpQX74VLMzPmJxj72TSegFD4m6W9geoySewPspzRE5Yoyf8r8Ih0pz
         whm0dg5D5i4bo8AsGrMuYwViKsyDyIuQ2W0VeEaeC9U/Jy/0jYYMHjvSlulWWf5sOEjW
         17cQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679624750;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=tDMRxe5lO0BDqNSwVoHfn6VZH37WgUUYrngIiH3uSZM=;
        b=xIZG3qONBSqOwqhP0dmsZmCwp6p9kWzE+l1BfikAtiYpzfFBCcVfIsRgNazdfYf2cT
         xDqDfzJ9kU8O6lzDCGKgvtvLorLM88ZRU27TsvW9OPWUH0fj0nmbizbThPu5/wgpST9v
         DUlkRK8pR0wnGZW6qeA3JIsLhGmkaUav5Bo+Mp1DJT4V9GlkDAFwvlC9ZZ0BajFchpcs
         MU/iT3zX9O6RnOb6GxmTlIvsbd2XdwBewIWMWNgBYBzuxZ5uyslL3FmYLqQo8NLaoZJn
         wN4dinY6t1kRLwyrWGKPGYc2vrRvEdiQRDnElt1zm407polS/faW4tbUdCSpPzbRPzbO
         ed4Q==
X-Gm-Message-State: AAQBX9d+psvulPAzuap8zIPcDN8lgd7GUY3v/e95BNgApQ637yNno05I
	PKp9CVuPleLUWUMvk/sitCdlPA==
X-Google-Smtp-Source: AKy350bvppPdjKfk2GacjVD6rpqI2EBJpdxO6atQjRnD2ihfzeTZiL4sOhNyVdhUFxi3DJjGMUKxVw==
X-Received: by 2002:a05:6512:3b11:b0:4db:787:e43b with SMTP id f17-20020a0565123b1100b004db0787e43bmr2635056lfv.8.1679624750200;
        Thu, 23 Mar 2023 19:25:50 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id x4-20020a19f604000000b004db3aa3c542sm3162628lfe.47.2023.03.23.19.25.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 Mar 2023 19:25:49 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>
Cc: linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	Johan Hovold <johan+linaro@kernel.org>
Subject: [PATCH 33/41] arm64: dts: qcom: msm8998: switch PCIe QMP PHY to new style of bindings
Date: Fri, 24 Mar 2023 05:25:06 +0300
Message-Id: <20230324022514.1800382-34-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230324022514.1800382-1-dmitry.baryshkov@linaro.org>
References: <20230324022514.1800382-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230323_192550_706123_02189310 
X-CRM114-Status: UNSURE (   8.12  )
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

Change the PCIe QMP PHY to use newer style of QMP PHY bindings (single
resource region, no per-PHY subnodes).

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm64/boot/dts/qcom/msm8998.dtsi | 30 ++++++++++++---------------
 1 file changed, 13 insertions(+), 17 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/msm8998.dtsi b/arch/arm64/boot/dts/qcom/msm8998.dtsi
index 11e7d5b6f6d6..72221cd5fd1a 100644
--- a/arch/arm64/boot/dts/qcom/msm8998.dtsi
+++ b/arch/arm64/boot/dts/qcom/msm8998.dtsi
@@ -918,7 +918,7 @@ pcie0: pci@1c00000 {
 			#address-cells = <3>;
 			#size-cells = <2>;
 			num-lanes = <1>;
-			phys = <&pciephy>;
+			phys = <&pcie_phy>;
 			phy-names = "pciephy";
 			status = "disabled";
 
@@ -948,32 +948,28 @@ pcie0: pci@1c00000 {
 
 		pcie_phy: phy@1c06000 {
 			compatible = "qcom,msm8998-qmp-pcie-phy";
-			reg = <0x01c06000 0x18c>;
-			#address-cells = <1>;
-			#size-cells = <1>;
+			reg = <0x01c06000 0x1000>;
 			status = "disabled";
-			ranges;
 
 			clocks = <&gcc GCC_PCIE_PHY_AUX_CLK>,
 				 <&gcc GCC_PCIE_0_CFG_AHB_CLK>,
-				 <&gcc GCC_PCIE_CLKREF_CLK>;
-			clock-names = "aux", "cfg_ahb", "ref";
+				 <&gcc GCC_PCIE_CLKREF_CLK>,
+				 <&gcc GCC_PCIE_0_PIPE_CLK>;
+			clock-names = "aux",
+				      "cfg_ahb",
+				      "ref",
+				      "pipe";
+
+			clock-output-names = "pcie_0_pipe_clk_src";
+			#clock-cells = <0>;
+
+			#phy-cells = <0>;
 
 			resets = <&gcc GCC_PCIE_0_PHY_BCR>, <&gcc GCC_PCIE_PHY_BCR>;
 			reset-names = "phy", "common";
 
 			vdda-phy-supply = <&vreg_l1a_0p875>;
 			vdda-pll-supply = <&vreg_l2a_1p2>;
-
-			pciephy: phy@1c06800 {
-				reg = <0x01c06200 0x128>, <0x01c06400 0x1fc>, <0x01c06800 0x20c>;
-				#phy-cells = <0>;
-
-				clocks = <&gcc GCC_PCIE_0_PIPE_CLK>;
-				clock-names = "pipe0";
-				clock-output-names = "pcie_0_pipe_clk_src";
-				#clock-cells = <0>;
-			};
 		};
 
 		ufshc: ufshc@1da4000 {
-- 
2.30.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
