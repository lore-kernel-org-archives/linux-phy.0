Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 19093C4321E
	for <linux-phy@archiver.kernel.org>; Tue, 14 Dec 2021 22:59:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nSOjRwv2q/pBXUSupE26jWWm7Xki7L6+zWDFqgSDLj4=; b=pDiuBLsFQZTb30
	Lvstc0khZ5Xua/6Zz2NIpNwtdhnOzLfjwzlVC+DQ4jc9IfEg0YQNGJi2suWOXGDttWBqdpJMAzTYm
	2yvPX3XVz5CwX64TCn40lxFfxPxoK3uP82t7eNn641ESGl2a/hFBLY5GmWtv+rV/C/n6JYKIZABL+
	CtDtXGm/Co5VzOua3Gq+Gr8rgT6m/QWCb53ZVuQRX8UF8Q1F5Lrww1sjQ6AFdz+zbl4zJRMQzEjzA
	zgWmmDUHhhuNDnuyq9Atdtu+grMAxozaSDea75L2zZr8KwqyZdDBYr52X+2B/A3jNrfDMZlCp895D
	HpT79+7BQ2Pn7G9s9wuQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mxGlI-00G0UK-Hf; Tue, 14 Dec 2021 22:59:08 +0000
Received: from mail-lj1-x232.google.com ([2a00:1450:4864:20::232])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mxGlG-00G0SP-H2
 for linux-phy@lists.infradead.org; Tue, 14 Dec 2021 22:59:07 +0000
Received: by mail-lj1-x232.google.com with SMTP id l7so30614525lja.2
 for <linux-phy@lists.infradead.org>; Tue, 14 Dec 2021 14:59:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Wy6PRuTmEIMuhgtUQE9Eh1epb/l1hlZtagcw8/LrEbU=;
 b=R/Q1qLweiMg0Zg8xw8/ozd5KkUXh+rN8xbCem+FVbK/T1ZJdrb02PUcny/52ZtLB6o
 at3kTysu4Prk36hXg/mexDkQHcs/fyqnJti2fAyKTnAmMNtXuPS1qaQsL7sv/pi3fSng
 Ym6IAypWRN272NzDA6X1CBymfHqGP2GGYxkzv0ZReNUDNcI5+/p2hieqnKFCTc214ZII
 WQd6jsaPTSoNg366XLjscfaKXBSHzpDltyCWBefDexCoXlj66vlqfMX0lywcEbDzrZYe
 C555Wr3bdrbVH8w+NiM2VpPNWGvjUql270YLuJFsLi35XTy5e4EZH07JbsR7fRxwMNh+
 r5qg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Wy6PRuTmEIMuhgtUQE9Eh1epb/l1hlZtagcw8/LrEbU=;
 b=vjduqIFO/xhfEbr+f5VdcoKXMH5hqUgBF6ZMUgSxtNJndQc4sq17KGFuT4I/m6NdiU
 CpSQqIi7PSed1d1zJnVaTRE/66twuvsgVSP1EmLMr01y7Z3K/cOKeR20TjXyRgwFsaIw
 xFkNNMFOkaPyp/5fxShfMnnyfbQxzTRH86Gl9W0gNJBr3xmsOluku+YMGByxx6Zev8xb
 zXJHAjmu4Cp1rvUZTrY1bZYwzndgJ7unNygAVzRzdESdFcBpRhRd2F8heLxv+kXR8/z+
 u+hfpLjnDCyEpQerJE5N/GhB3ojxsoRtoyp7bqxyD5snaX8FytY+aMkHKpOtJBUMlqur
 qwIw==
X-Gm-Message-State: AOAM530ruQX5dDymrrLY6lFPcboMA1+gTPbRUElrr3tZY7orryeABz0t
 +R5BnlCTapnH+NgE3Ga6+FsA/g==
X-Google-Smtp-Source: ABdhPJyjdqL7mJ7Cld7u5cyp/CtCpC4tLposHIT80fAf5Jt7jLr8cc3MS9MDNcOerLIXwxsnhh90SA==
X-Received: by 2002:a05:651c:50c:: with SMTP id
 o12mr7664423ljp.88.1639522744780; 
 Tue, 14 Dec 2021 14:59:04 -0800 (PST)
Received: from eriador.lan ([2001:470:dd84:abc0::8a5])
 by smtp.gmail.com with ESMTPSA id t10sm45115lja.105.2021.12.14.14.59.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 14 Dec 2021 14:59:04 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Rob Herring <robh+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@ti.com>,
 Stanimir Varbanov <svarbanov@mm-sol.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Cc: Bjorn Helgaas <bhelgaas@google.com>,
 =?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>,
 linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org,
 devicetree@vger.kernel.org, linux-phy@lists.infradead.org
Subject: [PATCH v4 07/10] arm64: dts: qcom: sm8450: add PCIe0 PHY node
Date: Wed, 15 Dec 2021 01:58:43 +0300
Message-Id: <20211214225846.2043361-8-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20211214225846.2043361-1-dmitry.baryshkov@linaro.org>
References: <20211214225846.2043361-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211214_145906_585037_C31ADF4D 
X-CRM114-Status: UNSURE (   9.49  )
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

Add device tree node for the first PCIe PHY device found on the Qualcomm
SM8450 platform.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8450.dtsi | 42 ++++++++++++++++++++++++++--
 1 file changed, 40 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8450.dtsi b/arch/arm64/boot/dts/qcom/sm8450.dtsi
index 16a789cacb65..a047d8a22897 100644
--- a/arch/arm64/boot/dts/qcom/sm8450.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8450.dtsi
@@ -558,8 +558,12 @@ gcc: clock-controller@100000 {
 			#clock-cells = <1>;
 			#reset-cells = <1>;
 			#power-domain-cells = <1>;
-			clock-names = "bi_tcxo", "sleep_clk";
-			clocks = <&rpmhcc RPMH_CXO_CLK>, <&sleep_clk>;
+			clocks = <&rpmhcc RPMH_CXO_CLK>,
+				 <&pcie0_lane>,
+				 <&sleep_clk>;
+			clock-names = "bi_tcxo",
+				      "pcie_0_pipe_clk",
+				      "sleep_clk";
 		};
 
 		qupv3_id_0: geniqup@9c0000 {
@@ -625,6 +629,40 @@ i2c14: i2c@a98000 {
 			};
 		};
 
+		pcie0_phy: phy@1c06000 {
+			compatible = "qcom,sm8450-qmp-gen3x1-pcie-phy";
+			reg = <0 0x01c06000 0 0x200>;
+			#address-cells = <2>;
+			#size-cells = <2>;
+			ranges;
+			clocks = <&gcc GCC_PCIE_0_AUX_CLK>,
+				 <&gcc GCC_PCIE_0_CFG_AHB_CLK>,
+				 <&gcc GCC_PCIE_0_CLKREF_EN>,
+				 <&gcc GCC_PCIE_0_PHY_RCHNG_CLK>;
+			clock-names = "aux", "cfg_ahb", "ref", "refgen";
+
+			resets = <&gcc GCC_PCIE_0_PHY_BCR>;
+			reset-names = "phy";
+
+			assigned-clocks = <&gcc GCC_PCIE_0_PHY_RCHNG_CLK>;
+			assigned-clock-rates = <100000000>;
+
+			status = "disabled";
+
+			pcie0_lane: lanes@1c06200 {
+				reg = <0 0x1c06e00 0 0x200>, /* tx */
+				      <0 0x1c07000 0 0x200>, /* rx */
+				      <0 0x1c06200 0 0x200>, /* pcs */
+				      <0 0x1c06600 0 0x200>; /* pcs_pcie */
+				clocks = <&gcc GCC_PCIE_0_PIPE_CLK>;
+				clock-names = "pipe0";
+
+				#clock-cells = <0>;
+				#phy-cells = <0>;
+				clock-output-names = "pcie_0_pipe_clk";
+			};
+		};
+
 		config_noc: interconnect@1500000 {
 			compatible = "qcom,sm8450-config-noc";
 			reg = <0 0x01500000 0 0x1c000>;
-- 
2.33.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
