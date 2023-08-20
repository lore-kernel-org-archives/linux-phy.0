Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 123E2EE49A4
	for <linux-phy@archiver.kernel.org>; Sun, 20 Aug 2023 14:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rnLZk5oQ1rMYOl1rkefhtcE6ZY0Z83SZHHUSn/aNh8w=; b=Bs+N2qwxUhXTh6
	n12TCSAZXiGQLEG1/czYBhS6tMgeQoIYptDo1AEeA0eexuGDXODTeMLk7tT+vq48ybJrkuvuyJbjp
	1HXbH9tG6OzvP0mZVOUfFtGrMUSlbZ2quCUfT0tI1j1t1G9JXMpHyIFF1Beq+AsFgx609a3h0l4pY
	qzDBTs2BAud5O5PNbaKiD/Z35hz32qyv2TuKFN0VNXjrqVDIlPA5N8AKw479XFtDgd/7bg6emm4uL
	jEsQNRxJPXMQFHhi9iVdW6RX6KGtMuJ4pK8BY3ZD1ybYC5o1OFEzcmOKuUPMyGeoZDcXrLzaFguT8
	cfHWsY6WrWbVxakpB2fQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qXjIT-00C1D2-1u;
	Sun, 20 Aug 2023 14:20:53 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qXjIS-00C1CI-0n
	for linux-phy@bombadil.infradead.org;
	Sun, 20 Aug 2023 14:20:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=1TArgQnUK7j9nkLUqHv2y1T1IJwhipKOL29cPJl3BqI=; b=lIukYJjeCx8Xd3xk4Y8P1a09Wf
	b9p0p/2CzUSUChYB8mIo6pFYLuZsgZATp3Bzi8wATBWJ+PM8TYofgLdQqZsOL3njgumTSnjIQb+Mg
	y1igN/T82so03mXjv1E5KKz7HyfgJt5PQODRnLPTUBJDFInr5hQ63177l+JKXiJRRbeHI/6wZRDz/
	HZha9xMtOJjvnXNJYgvWNZIWTDVef1irpMpdsOwyk/3Pl8kfc9FKOXfq/3GMKN9zEX51ePQ7kR6JA
	SMvpy8x0IcnD4iHpx/n7CFtKN4IQs4x8HyvpYvOmBUm1S5n79/7xh5Yh+Hy4whLD542nPE/L8HCLT
	Wr1VQWdw==;
Received: from mail-lj1-x234.google.com ([2a00:1450:4864:20::234])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qXjIO-000XsS-0K
	for linux-phy@lists.infradead.org;
	Sun, 20 Aug 2023 14:20:51 +0000
Received: by mail-lj1-x234.google.com with SMTP id 38308e7fff4ca-2bb99fbaebdso40277211fa.0
        for <linux-phy@lists.infradead.org>; Sun, 20 Aug 2023 07:20:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1692541246; x=1693146046;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1TArgQnUK7j9nkLUqHv2y1T1IJwhipKOL29cPJl3BqI=;
        b=pPVYH0Rjpj2adT6Bg5mApLF4HS6CbxyWkG6wAG9hD6lTSHOmqCZX+AExWpjNzxTuGs
         q7R3EjZD4eHv8JG7bXKu+yfn0R7zZ9JjY192WT6qDBuTs33GD49wjidqr9UXMCtFd3pg
         xfVFGUwGaozoj6iIwJngChWamCEtTgJEqyzXTFte6S3qLG0M3K9+gX5GxLmfaFD3SQVi
         5m9kX3337izW1u11gx4Art/+l1lhurHW9Yt8ojUucZTx6W/elNIMlDpjZJZ5UWCgKLwb
         Iwx7k5jjZcYLYSwEofN/Am8TKelupC+7+MWzH3rES4mQhchRd5/8r0ptw6AvjKXC/Juw
         raGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692541246; x=1693146046;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=1TArgQnUK7j9nkLUqHv2y1T1IJwhipKOL29cPJl3BqI=;
        b=IcpW5VCMduAakzCIveWP5MGQdFxsMlofWPyAonO1aCY6fXY9jHFCXFxW93cdywZPim
         fBJCtQuA8M95LhTqBhNHmQObBbsPWu8MdiVWwKXu6R8Yw4YQqKI9qfkgWrE2HlyI/9ym
         jr88A618joodtdenYoTzuaGCMvdKM5HggKyE+G3BWXn4CntP9RiTSl3Jj9Zb85DNAVHR
         8geAgnHlxkYJwukXYj7WCi+Nzm6i7kDx5SOALeA9HtG0v9bNG9Lz0ILuuTm4fHRuP5KV
         fxsDCZj7yIgYJKyHBfjGQkKVRYd8SRzVSBJOnYiFIVGkTqKH40MKFv0Cw99t1OOtOsWK
         oUgQ==
X-Gm-Message-State: AOJu0YwwtPPcAp0lXbu/sR857mzeMfADQG4rJfMBRVMdqKknBYjVc35Q
	Hq3cLipCDFbIVOxF8VsNzdPyMw==
X-Google-Smtp-Source: AGHT+IFDfeRM2sOdVe+CQ9UKJVHJELx9qdU/6AcrwHa25asufnyxGok6kQy7xzw0/IqqneP2RuYKpg==
X-Received: by 2002:a2e:82d5:0:b0:2bb:9710:9d89 with SMTP id n21-20020a2e82d5000000b002bb97109d89mr2895311ljh.10.1692541246365;
        Sun, 20 Aug 2023 07:20:46 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id n9-20020a2e7209000000b002b9e501a6acsm1706222ljc.3.2023.08.20.07.20.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 20 Aug 2023 07:20:45 -0700 (PDT)
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
Subject: [PATCH v3 11/18] arm64: dts: qcom: sc7280: switch PCIe QMP PHY to new style of bindings
Date: Sun, 20 Aug 2023 17:20:28 +0300
Message-Id: <20230820142035.89903-12-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230820142035.89903-1-dmitry.baryshkov@linaro.org>
References: <20230820142035.89903-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230820_152048_211283_32FCD327 
X-CRM114-Status: UNSURE (   8.80  )
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
 arch/arm64/boot/dts/qcom/sc7280.dtsi | 40 +++++++++++-----------------
 1 file changed, 16 insertions(+), 24 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sc7280.dtsi b/arch/arm64/boot/dts/qcom/sc7280.dtsi
index 4353f7265877..169cf38c77d3 100644
--- a/arch/arm64/boot/dts/qcom/sc7280.dtsi
+++ b/arch/arm64/boot/dts/qcom/sc7280.dtsi
@@ -869,7 +869,7 @@ gcc: clock-controller@100000 {
 			reg = <0 0x00100000 0 0x1f0000>;
 			clocks = <&rpmhcc RPMH_CXO_CLK>,
 				 <&rpmhcc RPMH_CXO_CLK_A>, <&sleep_clk>,
-				 <0>, <&pcie1_lane>,
+				 <0>, <&pcie1_phy>,
 				 <0>, <0>, <0>,
 				 <&usb_1_qmpphy QMP_USB43DP_USB3_PIPE_CLK>;
 			clock-names = "bi_tcxo", "bi_tcxo_ao", "sleep_clk",
@@ -2121,7 +2121,7 @@ pcie1: pci@1c08000 {
 
 			clocks = <&gcc GCC_PCIE_1_PIPE_CLK>,
 				 <&gcc GCC_PCIE_1_PIPE_CLK_SRC>,
-				 <&pcie1_lane>,
+				 <&pcie1_phy>,
 				 <&rpmhcc RPMH_CXO_CLK>,
 				 <&gcc GCC_PCIE_1_AUX_CLK>,
 				 <&gcc GCC_PCIE_1_CFG_AHB_CLK>,
@@ -2155,7 +2155,7 @@ pcie1: pci@1c08000 {
 
 			power-domains = <&gcc GCC_PCIE_1_GDSC>;
 
-			phys = <&pcie1_lane>;
+			phys = <&pcie1_phy>;
 			phy-names = "pciephy";
 
 			pinctrl-names = "default";
@@ -2171,15 +2171,22 @@ pcie1: pci@1c08000 {
 
 		pcie1_phy: phy@1c0e000 {
 			compatible = "qcom,sm8250-qmp-gen3x2-pcie-phy";
-			reg = <0 0x01c0e000 0 0x1c0>;
-			#address-cells = <2>;
-			#size-cells = <2>;
-			ranges;
+			reg = <0 0x01c0e000 0 0x1000>;
 			clocks = <&gcc GCC_PCIE_1_AUX_CLK>,
 				 <&gcc GCC_PCIE_1_CFG_AHB_CLK>,
 				 <&gcc GCC_PCIE_CLKREF_EN>,
-				 <&gcc GCC_PCIE1_PHY_RCHNG_CLK>;
-			clock-names = "aux", "cfg_ahb", "ref", "refgen";
+				 <&gcc GCC_PCIE1_PHY_RCHNG_CLK>,
+				 <&gcc GCC_PCIE_1_PIPE_CLK>;
+			clock-names = "aux",
+				      "cfg_ahb",
+				      "ref",
+				      "refgen",
+				      "pipe";
+
+			clock-output-names = "pcie_1_pipe_clk";
+			#clock-cells = <0>;
+
+			#phy-cells = <0>;
 
 			resets = <&gcc GCC_PCIE_1_PHY_BCR>;
 			reset-names = "phy";
@@ -2188,21 +2195,6 @@ pcie1_phy: phy@1c0e000 {
 			assigned-clock-rates = <100000000>;
 
 			status = "disabled";
-
-			pcie1_lane: phy@1c0e200 {
-				reg = <0 0x01c0e200 0 0x170>,
-				      <0 0x01c0e400 0 0x200>,
-				      <0 0x01c0ea00 0 0x1f0>,
-				      <0 0x01c0e600 0 0x170>,
-				      <0 0x01c0e800 0 0x200>,
-				      <0 0x01c0ee00 0 0xf4>;
-				clocks = <&gcc GCC_PCIE_1_PIPE_CLK>;
-				clock-names = "pipe0";
-
-				#phy-cells = <0>;
-				#clock-cells = <0>;
-				clock-output-names = "pcie_1_pipe_clk";
-			};
 		};
 
 		ipa: ipa@1e40000 {
-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
