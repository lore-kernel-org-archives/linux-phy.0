Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3E145C433F5
	for <linux-phy@archiver.kernel.org>; Wed,  8 Dec 2021 17:15:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nSOjRwv2q/pBXUSupE26jWWm7Xki7L6+zWDFqgSDLj4=; b=hKN8R10+jsseRP
	JZtFCDx/q546eiRlDFULH7axXaEqPr0sU9MhF3r7y9rlV9mqKsWzO9O1TqWCh3I3+VqFeOycYc3LH
	NjAf20m/LTHEKOKH5MsCJA8NTxYRrX9TsSTnOp8HM1C0UKOTyfuwi9tdNhlNK+1J6X8wExmQpa/zL
	hwxX9gwjbQGATn2ogFixsjXXsn0d048yzlZV1bd4QBrBEOGidXEjC62J37yOqSoFwmdmYN2ADGZey
	5XQjVENOghuYGkJ2tj6ujetKsyeeVHjwP8y8MLC4wjhU4qwMtUu1DGJgXCbcfWV2w1ErKpZITOx9B
	kyWqs5/8kXDNhy+6BP3Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mv0X7-00Dh1v-NE; Wed, 08 Dec 2021 17:15:09 +0000
Received: from mail-lj1-x229.google.com ([2a00:1450:4864:20::229])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mv0X4-00DgyM-VS
 for linux-phy@lists.infradead.org; Wed, 08 Dec 2021 17:15:08 +0000
Received: by mail-lj1-x229.google.com with SMTP id a37so3816474ljq.13
 for <linux-phy@lists.infradead.org>; Wed, 08 Dec 2021 09:15:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Wy6PRuTmEIMuhgtUQE9Eh1epb/l1hlZtagcw8/LrEbU=;
 b=kvTv6C4DVypWGEwARfUKPOmofEd1AiPIkwobEqg4MZlDhOF4WnIH4Yc3JT3QIhWNdQ
 nnZDDPRhH9Qyow80n+YW0gw5pATWqYmYKcg0Xqte8qvcO4LOWzMpYM+lc1iV3H+y9muY
 CF+HraWcBKwBpbCrdyTufnd0qWrNmuclZ5EDJuw+wZrfjT77S9dx4jfz9cX3TXR+ER8A
 jcu/X/7E7Tqdw/rPFE+eWM1vGm3XTHBSYoMdMS7mxOZlApLeEWMIuxH0ZNUmVnTgp0UU
 5pC/RXqbhetm5rVWCtxqh7Y4ilRfmSF4QXNWD0K3LGG9aIDHstzV8IrBdXwXqj0vWygE
 IuQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Wy6PRuTmEIMuhgtUQE9Eh1epb/l1hlZtagcw8/LrEbU=;
 b=OAOZB8fgenzJc85hdEew6FWEhIRhPSRrRdoIWHxqGjUNfswvGtpENFfPLuzhDpxeq2
 XpjyK7e5S6PHPQX6wJU4ObG3yFb6k5sto5AEA+O6EPHHSx6xFmwjqDCHjZHFIEOA3YOS
 RILVfbpHP6XLbN4t0ZGtDmhTcmwOa2YO/Gu8w7r27Lgfg0fZux0mUEMaLgPm21QIqwYw
 NrQv/6LQxwrheT3xttHLq/PkEm9B4C4VAZduxbewtcXZsrQdIAcDPtNadIXWwgO8wIDw
 W0gAv8nOc1bKvTDvQHDfBQHpwVykm2WQXDJ7ZOQAgDUcvYAH3st62Ln8ck/Iy6b+w2JS
 7NnA==
X-Gm-Message-State: AOAM533JSnfsu2X9bGZZdhkFRYwkeaR/vhtUS/5/YYgWtbSjxikVevvs
 6egfRFsermJdZ46fJ8PlyPK0EQ==
X-Google-Smtp-Source: ABdhPJzWt+rW3M5J9Q9k2uKuS7PJ5quzNSxtn7Zouh8GMb+UI2nU8BN3fSgMDl7upQs9oJGaG6smuQ==
X-Received: by 2002:a2e:9dcf:: with SMTP id x15mr780862ljj.432.1638983704839; 
 Wed, 08 Dec 2021 09:15:04 -0800 (PST)
Received: from eriador.lan ([37.153.55.125])
 by smtp.gmail.com with ESMTPSA id t9sm307213lfe.88.2021.12.08.09.15.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 08 Dec 2021 09:15:04 -0800 (PST)
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
Subject: [PATCH v2 07/10] arm64: dts: qcom: sm8450: add PCIe0 PHY node
Date: Wed,  8 Dec 2021 20:14:39 +0300
Message-Id: <20211208171442.1327689-8-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20211208171442.1327689-1-dmitry.baryshkov@linaro.org>
References: <20211208171442.1327689-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211208_091507_084305_1462758E 
X-CRM114-Status: UNSURE (   9.78  )
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
