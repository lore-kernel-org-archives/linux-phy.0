Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 89AE0C3525C
	for <linux-phy@archiver.kernel.org>; Sat, 11 Dec 2021 02:18:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nSOjRwv2q/pBXUSupE26jWWm7Xki7L6+zWDFqgSDLj4=; b=cGXo1+wLV6W+jE
	iP76nx5RFARAJXoPSCmznFHu+QfjRTuL0YIIQykxs5Vgrh9c/+okoL1y1eM9OM0d7ru+Sy21DKEDv
	zQqt5roTVrqnnq1kB7U6H+3ECPczYwDmOSyrks9fzqU4eL3rJZhh8lJOBcx9FsA82i2hUTtWNjYMm
	J5F/1NxP+k8jHDKnjGCHpWG219t5bAP/HWAf/XAUE6SUvvUmK/r5XJTWsBp9W8iKMjIRNQkhNaLE/
	DrrkMbRO+aHvToFFYVf175Q825PQZytQE/ur6kz0k+KLhuyNQJ8vChpICq1quMnnrCeB9yIr4EMMe
	VhDO1yIjkQUAU69RV3lQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mvrxk-004RA2-UL; Sat, 11 Dec 2021 02:18:12 +0000
Received: from mail-lf1-x131.google.com ([2a00:1450:4864:20::131])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mvrxh-004R71-To
 for linux-phy@lists.infradead.org; Sat, 11 Dec 2021 02:18:11 +0000
Received: by mail-lf1-x131.google.com with SMTP id k37so21255859lfv.3
 for <linux-phy@lists.infradead.org>; Fri, 10 Dec 2021 18:18:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Wy6PRuTmEIMuhgtUQE9Eh1epb/l1hlZtagcw8/LrEbU=;
 b=OfwlpSgVRWdrSRtKJ9LkXRsLDJDbVctMLNM57ZoNt/KNoiJbTtLYNABkItj9ftMrse
 XaNGT3JNbz8RLdRBRPUxaeoXDCdBB5iaoK8Od8rMSL3N6VhNftJXsgSRxCcxd89k3YNZ
 3SwASbtUv68yGvHkk6ylcdYA2EA4M1ZSPd4vypyCo180OhHVpKUe4Fij2m4e1ptQpOZk
 KGgPnenz8OQimip7MDJ2wVRgQFx0SEKfkC3BL1UTRa12o5kuhsA/dkleCrZBNca6c6dI
 XBjHIfVItPTuYR/vUyndx8MRk/cPOvxtqXGa+wPKS6nvR4bLKQihJrjMXdv7CMH1YJm2
 SoMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Wy6PRuTmEIMuhgtUQE9Eh1epb/l1hlZtagcw8/LrEbU=;
 b=O+TgnCl0zMy48YX/JKzaoFGF+xikhVXS7pKTEXes+5bB35iZmVgt3BiAVqo8LUIWEY
 yhTeBCwUplHbm7qwD+Hm4Vl3DKxEKkH5fiGoieK679JkKS70Tojydi7XC+iwdIg6UAxI
 mUf1Z99CdOtwGFeov5WlaSD7+U22BjVpOOEM0Qn95xCnkDXrd9M2K4vPtTm0mwnqVSkH
 pRjrGfpt7rQE5NSlZCSB6mv/nuq/EMw8mYw8amBj2QJ5a6fY4OR++J4q4KPdrpGnByws
 mqoFGkBQOFlcaohIwFegKs7ld+kpcEsrn0OPqi2QWAaG5yI/cp25B5s81zW1Xe22BmqR
 hOeA==
X-Gm-Message-State: AOAM530XhQQkVew+uV8ILUJIhcIuOHEt/AFNGq4PwfGkoLbOuEDR9MkJ
 WiZ73dSaoTEWA2y2TxVy09rAEA==
X-Google-Smtp-Source: ABdhPJzmXShy36/phvBmUI9smRRo4joSftJpGMCLSDaUtDXtqRpWk3cZzrpEFD4H18oMDTuBUhZoNQ==
X-Received: by 2002:a19:6717:: with SMTP id b23mr15861453lfc.659.1639189088517; 
 Fri, 10 Dec 2021 18:18:08 -0800 (PST)
Received: from eriador.lan ([37.153.55.125])
 by smtp.gmail.com with ESMTPSA id y7sm504663lfj.90.2021.12.10.18.18.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 10 Dec 2021 18:18:07 -0800 (PST)
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
Subject: [PATCH v3 07/10] arm64: dts: qcom: sm8450: add PCIe0 PHY node
Date: Sat, 11 Dec 2021 05:17:55 +0300
Message-Id: <20211211021758.1712299-8-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20211211021758.1712299-1-dmitry.baryshkov@linaro.org>
References: <20211211021758.1712299-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211210_181809_982635_F619DE66 
X-CRM114-Status: UNSURE (   9.40  )
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
