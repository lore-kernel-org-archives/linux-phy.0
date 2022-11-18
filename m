Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B6E95C4332F
	for <linux-phy@archiver.kernel.org>; Fri, 18 Nov 2022 23:33:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Z21QJ8YQld3R4hoDICS0opQtnDEcMbhE0KheQ+fgL1M=; b=RGiR0IugiTQ5ji
	WCAlLS1wwML0LkDl5JB/JAGwg8ari4i1adIPdh6C1DrlXGgOfmbh8rgZ6WeRaXt99zZd3drb9ybwc
	Uz/RnndB4PxeBEm27f/tyo0cM5yxqMfAE5ehCi9GzCBuX2H6BqFcE2/zAIdsU/00SuKi2LC8ueEbq
	KsIAHze4Y20M3iDv+gIzmRSayC5iMaDYfBSqbYJqsIt4zflhqUMi0BX1yrQsKNukwR/uGxWHZWF+f
	UNiWt1uFQ4SgfeW33TN/aHRTYJOnKFI3aAwtkLhdGs4J5Sjn1sIXkKn3LPNMA616mWJJJKJaHXc2V
	hJzgImDg0q4L3VWrfE7w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1owAr7-009CO4-6Z; Fri, 18 Nov 2022 23:33:09 +0000
Received: from mail-lf1-x12e.google.com ([2a00:1450:4864:20::12e])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1owAr4-009CLi-5z
	for linux-phy@lists.infradead.org; Fri, 18 Nov 2022 23:33:07 +0000
Received: by mail-lf1-x12e.google.com with SMTP id j4so10688086lfk.0
        for <linux-phy@lists.infradead.org>; Fri, 18 Nov 2022 15:33:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ZZW/KVp2AUxGQEWc2f/qSxCfb9I/iYgRFf9DDe1VokY=;
        b=jeYxOBAae0nkZMhCajRWxNl4BsHIp/gJUcfUlzn4W//+IRNZdt4c+u4xkFcSSrbpF4
         sh037Zjjh6OBFnXtZv+L9j+5jwN0QKPZYxbyNd0iVqa6l+skXoNYza9N/xnry4guT1n1
         JKAYszaPm8LSW405Fg3GX108MPQgibCf63zG4K/d7lfbEBaF/OPiBxSqiEQDyWn0V89u
         3s/LkPs2lOO7+dT0hFtLBww8jCLoHgxPEgyNI/Y2eBpse3FLvWGxCCOhrA25KKbVtkLp
         ICnFJYDcnPyMQ3lTLyzzP6PnPu0dA/hI/rzUWoZ52tMD651+ax1umuzGfsq5zPTCwWLM
         zhIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ZZW/KVp2AUxGQEWc2f/qSxCfb9I/iYgRFf9DDe1VokY=;
        b=jXyesxnoqptL1r6lDa1jSmBqA0KGhFnKjum96NU+PW2uRYs2c51CZrhM2a3lG5LM1z
         kM9jb6Xflk/Ae1A3VPq8L1jbdDgpMKaJ49moD5I/2qZokjvY6KHxueWEs+D9HaQyX3B4
         K44O3zmjFOxvDrt/pNtEIY4hLs9MiYbpFKtsVCAmenluxDj998z2K9dDCwOy8E/alBum
         BZzYirzDF4mmEMfBQAvMHe48jz7T1VCWnT2I1AeWmbJKgV37dPl5oP7R/e2RHg7osHUE
         wg5+fly4JIUA5YiufkMnzSivnuloTls6798Pbvd6vfvHURSx/RsimcxbLTlrfeQB927M
         MHcg==
X-Gm-Message-State: ANoB5pl7EIi+W5i+vsDTY07Dmv8OGCukCrIL5Ic9CEaGdk+s0l9hjUa/
	WAeuC8OtWm9nXsMH011CM0uilVDwy6qvyutZ
X-Google-Smtp-Source: AA0mqf4jXbJTDhzUsg9iV+s2DbbmtyvSGp9egr4e4Kb0jNBK31FGHn1NPHnPzzzMdZbTag2CRNWLMA==
X-Received: by 2002:ac2:593c:0:b0:4b2:2cff:8448 with SMTP id v28-20020ac2593c000000b004b22cff8448mr2869937lfi.252.1668814381687;
        Fri, 18 Nov 2022 15:33:01 -0800 (PST)
Received: from eriador.lumag.spb.ru ([194.204.33.9])
        by smtp.gmail.com with ESMTPSA id k13-20020ac257cd000000b004947f8b6266sm843900lfo.203.2022.11.18.15.32.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 18 Nov 2022 15:33:01 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@somainline.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Jingoo Han <jingoohan1@gmail.com>,
	Gustavo Pimentel <gustavo.pimentel@synopsys.com>,
	Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
	=?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>
Cc: Philipp Zabel <p.zabel@pengutronix.de>,
	Johan Hovold <johan@kernel.org>,
	linux-arm-msm@vger.kernel.org,
	linux-pci@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org
Subject: [PATCH v4 8/8] arm64: dts: qcom: sm8350-hdk: enable PCIe devices
Date: Sat, 19 Nov 2022 01:32:42 +0200
Message-Id: <20221118233242.2904088-9-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20221118233242.2904088-1-dmitry.baryshkov@linaro.org>
References: <20221118233242.2904088-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221118_153306_278240_FFF0FB54 
X-CRM114-Status: UNSURE (   7.82  )
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

Enable PCIe0 and PCIe1 hosts found on SM8350 HDK board.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8350-hdk.dts | 80 +++++++++++++++++++++++++
 1 file changed, 80 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm8350-hdk.dts b/arch/arm64/boot/dts/qcom/sm8350-hdk.dts
index 69ae6503c2f6..bff75602303c 100644
--- a/arch/arm64/boot/dts/qcom/sm8350-hdk.dts
+++ b/arch/arm64/boot/dts/qcom/sm8350-hdk.dts
@@ -234,6 +234,39 @@ &mpss {
 	firmware-name = "qcom/sm8350/modem.mbn";
 };
 
+&pcie0 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pcie0_default_state>;
+
+	perst-gpios = <&tlmm 94 GPIO_ACTIVE_LOW>;
+	wake-gpios = <&tlmm 96 GPIO_ACTIVE_HIGH>;
+
+	status = "okay";
+};
+
+&pcie0_phy {
+	vdda-phy-supply = <&vreg_l5b_0p88>;
+	vdda-pll-supply = <&vreg_l6b_1p2>;
+
+	status = "okay";
+};
+
+&pcie1 {
+	perst-gpios = <&tlmm 97 GPIO_ACTIVE_LOW>;
+	wake-gpios = <&tlmm 99 GPIO_ACTIVE_HIGH>;
+
+	pinctrl-names = "default";
+	pinctrl-0 = <&pcie1_default_state>;
+
+	status = "okay";
+};
+
+&pcie1_phy {
+	status = "okay";
+	vdda-phy-supply = <&vreg_l5b_0p88>;
+	vdda-pll-supply = <&vreg_l6b_1p2>;
+};
+
 &qupv3_id_0 {
 	status = "okay";
 };
@@ -245,6 +278,53 @@ &slpi {
 
 &tlmm {
 	gpio-reserved-ranges = <52 8>;
+
+	pcie0_default_state: pcie0-default-state {
+		perst-pins {
+			pins = "gpio94";
+			function = "gpio";
+			drive-strength = <2>;
+			bias-pull-down;
+		};
+
+		clkreq-pins {
+			pins = "gpio95";
+			function = "pcie0_clkreqn";
+			drive-strength = <2>;
+			bias-pull-up;
+		};
+
+		wake-pins {
+			pins = "gpio96";
+			function = "gpio";
+			drive-strength = <2>;
+			bias-pull-up;
+		};
+	};
+
+	pcie1_default_state: pcie1-default-state {
+		perst-pins {
+			pins = "gpio97";
+			function = "gpio";
+			drive-strength = <2>;
+			bias-pull-down;
+		};
+
+		clkreq-pins {
+			pins = "gpio98";
+			function = "pcie1_clkreqn";
+			drive-strength = <2>;
+			bias-pull-up;
+		};
+
+		wake-pins {
+			pins = "gpio99";
+			function = "gpio";
+			drive-strength = <2>;
+			bias-pull-up;
+		};
+	};
+
 };
 
 &uart2 {
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
