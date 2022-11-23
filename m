Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F2C53C433FE
	for <linux-phy@archiver.kernel.org>; Wed, 23 Nov 2022 11:45:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AsS4eQBauZ1qW3e5iAlhOsrs/pLLMrJo6Y9gTq9araM=; b=Ilw7N3/19FHT0F
	2joyErm0G5IRmuNXDFu28MR9hkY38Fi5NcpVyKBMklMuAJxlyRvwYR2cR4c/HFTmFBmIbOoHiTxTa
	VDmP0aQS5Ypg7bRhx9bPi22E1KQOtaKwepmBHMkreaxAb5Zw12DdZJE+RzKzbeS3v+XNF+EJ+fOpb
	WNhWn3FnzFFBL30Hz80aKdvRnFaa8GDXWBH4J9wr+MBSiYs2rfefKCeih3Ix2FvFIkzLF2dCJnQXB
	xq11T8JIRGPYsyVt+n6C9TSEGjWJ6xi7GvShSBpvR40jeMz6BdpBgMkVf983YGpruhlQ4st8PYsMl
	946+uTfg4Zclnk+p+8uQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oxoCS-00Glfp-CP; Wed, 23 Nov 2022 11:45:56 +0000
Received: from mail-lf1-x12e.google.com ([2a00:1450:4864:20::12e])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oxnFK-00GQXu-Tw
	for linux-phy@lists.infradead.org; Wed, 23 Nov 2022 10:44:52 +0000
Received: by mail-lf1-x12e.google.com with SMTP id r12so27618072lfp.1
        for <linux-phy@lists.infradead.org>; Wed, 23 Nov 2022 02:44:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=BZqwSsUL+ERMj/YRxLvgc19HO/tKKIYJN0Ik3nuPdfk=;
        b=QgovQ2rk35SL5nPJOLJdNMyGzOLIR6k38vxoAbX12yZ+s7BSrY+WJ5lyqfJ/7oI0Bq
         gYTYTXxOng4msb5IEhChmwm8t4o7rndARpmei0uIYmX6ItJ0PcF0Q5M9fCUNNwog39IO
         idW8NmN1mxQPIPcVQQO5HBRh6KSwzcs64O5jaBRG1wH34KQGUwf6Iej15eoXFXIcGRyf
         jF357Iobqgra9a4/coSMWK67oDMGEkiyV0yg3GdtIiwyILzZUcnArrHk7HzzjVo6tw49
         27LGT3F0wHvsGiBckO059I7nRFM9MBJ5ljf9MPzcKe1ZWp8nAlWBa93hoSy8s5t7K/za
         Pr9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=BZqwSsUL+ERMj/YRxLvgc19HO/tKKIYJN0Ik3nuPdfk=;
        b=KmzUE50zVWdBZ+dQUCU7zkKm1dv28mpuWGJNjU3e4kECAGfrhRAzKWMYotQDBXp6cX
         4K2ADXo/HD62nMnGCJGoReqP3uSXXGR4npWDKf6zsnTA9gwyMNSOjtyvCJaDqmAmL2Hf
         IhBZThTuT/hm9OGMGx21Z/6ZxUH4XckkaFMCWsIQBXFsjk90UyiFbKgohGlBd9k1gJP+
         DADDIkvuAUI6puByCo3X8AvnQDIkBOBfgaANmJKGVcT9pCi6qUmh2W/1248I9C+z0mjJ
         ptBWxPWpk4/DRAQB6QIpAxFBmVnYomXPYihg8HcmXzvrEqGFYa1Y3Ghk/MriI/gJd28H
         i77w==
X-Gm-Message-State: ANoB5pkTpj4JjJzflRsefcFl976KcrALfVimTfeuKyUxh8Ltw1Vpk6/h
	FBlgoBBCBCRvv6XsU6Kzvr9Hfw==
X-Google-Smtp-Source: AA0mqf5RIDe4HX4rkFZ+er8WRhzzIbPIQEuuizkIy43aNNZunXbjhlx1KrkcIvfemtapD5ORPOpg6g==
X-Received: by 2002:a05:6512:2c85:b0:4a2:5937:e9b with SMTP id dw5-20020a0565122c8500b004a259370e9bmr8783104lfb.11.1669200287236;
        Wed, 23 Nov 2022 02:44:47 -0800 (PST)
Received: from eriador.lumag.spb.ru (dzpbg0ftyyyyyyyyyyyyt-3.rev.dnainternet.fi. [2001:14ba:a302:5f12::1])
        by smtp.gmail.com with ESMTPSA id be34-20020a056512252200b0049e9122bd1bsm2869082lfb.164.2022.11.23.02.44.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 23 Nov 2022 02:44:46 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@somainline.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Johan Hovold <johan@kernel.org>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	Konrad Dybcio <konrad.dybcio@linaro.org>
Subject: [PATCH v9 3/4] arm64: dts: qcom: sm8450: fix gcc clocks order to follow the schema
Date: Wed, 23 Nov 2022 12:44:42 +0200
Message-Id: <20221123104443.3415267-4-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20221123104443.3415267-1-dmitry.baryshkov@linaro.org>
References: <20221123104443.3415267-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221123_024450_981399_9FCB35BD 
X-CRM114-Status: UNSURE (   8.13  )
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

Move the sleep_clk to make sure the gcc device node follows the schema.

Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8450.dtsi | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8450.dtsi b/arch/arm64/boot/dts/qcom/sm8450.dtsi
index d32f08df743d..efb01fefe9c7 100644
--- a/arch/arm64/boot/dts/qcom/sm8450.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8450.dtsi
@@ -720,13 +720,13 @@ gcc: clock-controller@100000 {
 			#reset-cells = <1>;
 			#power-domain-cells = <1>;
 			clocks = <&rpmhcc RPMH_CXO_CLK>,
+				 <&sleep_clk>,
 				 <&pcie0_lane>,
-				 <&pcie1_lane>,
-				 <&sleep_clk>;
+				 <&pcie1_lane>;
 			clock-names = "bi_tcxo",
+				      "sleep_clk",
 				      "pcie_0_pipe_clk",
-				      "pcie_1_pipe_clk",
-				      "sleep_clk";
+				      "pcie_1_pipe_clk";
 		};
 
 		gpi_dma2: dma-controller@800000 {
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
