Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 17DC6EE49A6
	for <linux-phy@archiver.kernel.org>; Sun, 20 Aug 2023 14:21:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZkU7Sowj7MkHZgU4QOIomGerJ7lnnjYHSERB3v8nFRY=; b=P4G3DuxSX61UuR
	RTon7541El1cVhPnG0yU6qUTu8bqoZKpZKS+c5D7TVXDGkIdS6xKeWFHKx3iTgEPbJGXx0XE/OLWu
	ck+STdFe/p8q2bfzNgvfEFok/Rt6NvgGDoOSD6V+RMMuaGSpzNegwFJeoQBmvYmO8EBvwOY1m/whr
	Ii1REz1+KEaDNoo993I7PEPfLv/sncmtg8iJuOf0Jf9f4MlsfAWK3xmIMihSQvXj3q4bHidU+b1Pj
	LGh3Z2+uMORQS24mWD3mR0kim+vb7Rw2XmavWGxzNrhmgUvEvJ+8g7ElevcQZckyxY65Tm7ZEDOn9
	5oLaqy7xIKJiamuvEpvg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qXjIs-00C1J0-2a;
	Sun, 20 Aug 2023 14:21:18 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qXjIr-00C1I4-01
	for linux-phy@bombadil.infradead.org;
	Sun, 20 Aug 2023 14:21:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=6VSzMxgMAWTElzLoHLjSvLy7x/Zb4YMgFCggjZbwbLc=; b=HR1q6Kw8UcE0S5dvFy6bHDZb8N
	3MOTB3knACn1u2pogZ95vnJwIwUqH8nEFK4DTSuaGnG5fJzfLHNPAwC27v3qnRumyPDmxh73irvgf
	cyAH8/dGptRkz4iYgffj4CZ2mrOYv9Q455SjJ3ue4PxCvT8uwGjD7wSAio/68S4+RBkVmfNxFzsMJ
	qpWvlX3Swx3nKvabOm7IQlbHlU/wJ2OdEnFNF6b7NXQbZ+lQD0cFIQ2LHPWIarLkbki8WR/qNwb+Z
	0zmcryjwX+l+4tvtboPNaeNrkBnyXbezlfw1iYIz+LltcdN3y/CrHFg7tXIl/Rqy6PFsDu0Ht+4g5
	MsJ52sKg==;
Received: from mail-lj1-x22e.google.com ([2a00:1450:4864:20::22e])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qXjIL-000Xrm-30
	for linux-phy@lists.infradead.org;
	Sun, 20 Aug 2023 14:21:15 +0000
Received: by mail-lj1-x22e.google.com with SMTP id 38308e7fff4ca-2bbac8ec902so39999651fa.1
        for <linux-phy@lists.infradead.org>; Sun, 20 Aug 2023 07:20:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1692541244; x=1693146044;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6VSzMxgMAWTElzLoHLjSvLy7x/Zb4YMgFCggjZbwbLc=;
        b=xtC5sjpAjdIXtd3Op4dTQiks1lfhVXalkNvVA+BCOfgGJ7Z9om4hBt1cAH1op52k5a
         SnqJejgCCfEmGIfT/ruoC+iZ80Mc7uAgAQA7Su9T8cqSQ95yq02DkrNdC66I/AqvsjHr
         kTbQUWohJkQqHTYAMfAkrWFwQmgLUQ0Tiv0AabZt0lBIIBxBrU3yZevQ62fW7wvLniTp
         t7UFRUKAIGgAjcAMVjbe8aNkS04y7WUSrG81HExkpfTtinhQsrv9NYUaWrYpmWSQ7R1a
         NmqnoYVGj+irsrx4tOB2MjSMBKbbOAcOIBrjulR5ZbH2zGsrG/+cFgAqlBRz2wnI41xg
         3fKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692541244; x=1693146044;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=6VSzMxgMAWTElzLoHLjSvLy7x/Zb4YMgFCggjZbwbLc=;
        b=jw4UaHl+pQsg4ScucrkKmMqTIfJSaa06PMRoUMLNbITQ/qH93o8bUL+/ZEBF/kB0NO
         cu1EXeM3eUMwAbaAyhbxpxc6fUsGSjDNyKCO7dqLA6lntD1pjWJgY6NXALmE+L5Cx/1b
         XclEPQKrvHZi1EQFf81XUEPgnV/yXgi0aNQ/P3X0ibUD9JXEk67lzBdFR8a4uvU57U4p
         egT1P4nLEz31Ew8oCqS2AmXT2ArFTN/Le3D5Gd4JjK/Q2Bc774S8Hd2UaRt74S6zKV8l
         zAj0a9IEA/ww4ggoiaNW00yAc8WK+NJLRFLCDFlTr79321xNJMWIXEBMZ+g5epGIS3xg
         WqTQ==
X-Gm-Message-State: AOJu0YzDYT0Rv8VgMxllegWkjbzER8fEqilebqGO3Z7liPvEQ7XdfOAp
	utZjuR/KDwJ6hcCJ29b6nWbpWQ==
X-Google-Smtp-Source: AGHT+IHrH7RBK2mYgF8w9abBzh44qYXAa+h0IaK23qfpv+eScUIr4kfwArfpu6QWhdOBrliMhlqzyw==
X-Received: by 2002:a2e:8e90:0:b0:2b7:344c:a039 with SMTP id z16-20020a2e8e90000000b002b7344ca039mr3103859ljk.33.1692541244100;
        Sun, 20 Aug 2023 07:20:44 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id n9-20020a2e7209000000b002b9e501a6acsm1706222ljc.3.2023.08.20.07.20.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 20 Aug 2023 07:20:43 -0700 (PDT)
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
Subject: [PATCH v3 08/18] arm64: dts: qcom: ipq6018: switch PCIe QMP PHY to new style of bindings
Date: Sun, 20 Aug 2023 17:20:25 +0300
Message-Id: <20230820142035.89903-9-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230820142035.89903-1-dmitry.baryshkov@linaro.org>
References: <20230820142035.89903-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230820_152046_062339_DABA508E 
X-CRM114-Status: UNSURE (   8.91  )
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

Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm64/boot/dts/qcom/ipq6018.dtsi | 32 ++++++++++-----------------
 1 file changed, 12 insertions(+), 20 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/ipq6018.dtsi b/arch/arm64/boot/dts/qcom/ipq6018.dtsi
index 47b8b1d6730a..3c8a2f4e26a3 100644
--- a/arch/arm64/boot/dts/qcom/ipq6018.dtsi
+++ b/arch/arm64/boot/dts/qcom/ipq6018.dtsi
@@ -278,33 +278,25 @@ qusb_phy_0: qusb@79000 {
 
 		pcie_phy: phy@84000 {
 			compatible = "qcom,ipq6018-qmp-pcie-phy";
-			reg = <0x0 0x00084000 0x0 0x1bc>; /* Serdes PLL */
+			reg = <0x0 0x00084000 0x0 0x1000>;
 			status = "disabled";
-			#address-cells = <2>;
-			#size-cells = <2>;
-			ranges;
 
 			clocks = <&gcc GCC_PCIE0_AUX_CLK>,
-				<&gcc GCC_PCIE0_AHB_CLK>;
-			clock-names = "aux", "cfg_ahb";
+				<&gcc GCC_PCIE0_AHB_CLK>,
+				<&gcc GCC_PCIE0_PIPE_CLK>;
+			clock-names = "aux",
+				      "cfg_ahb",
+				      "pipe";
+
+			clock-output-names = "gcc_pcie0_pipe_clk_src";
+			#clock-cells = <0>;
+
+			#phy-cells = <0>;
 
 			resets = <&gcc GCC_PCIE0_PHY_BCR>,
 				<&gcc GCC_PCIE0PHY_PHY_BCR>;
 			reset-names = "phy",
 				      "common";
-
-			pcie_phy0: phy@84200 {
-				reg = <0x0 0x00084200 0x0 0x16c>, /* Serdes Tx */
-				      <0x0 0x00084400 0x0 0x200>, /* Serdes Rx */
-				      <0x0 0x00084800 0x0 0x1f0>, /* PCS: Lane0, COM, PCIE */
-				      <0x0 0x00084c00 0x0 0xf4>; /* pcs_misc */
-				#phy-cells = <0>;
-
-				clocks = <&gcc GCC_PCIE0_PIPE_CLK>;
-				clock-names = "pipe0";
-				clock-output-names = "gcc_pcie0_pipe_clk_src";
-				#clock-cells = <0>;
-			};
 		};
 
 		mdio: mdio@90000 {
@@ -756,7 +748,7 @@ pcie0: pci@20000000 {
 			#address-cells = <3>;
 			#size-cells = <2>;
 
-			phys = <&pcie_phy0>;
+			phys = <&pcie_phy>;
 			phy-names = "pciephy";
 
 			ranges = <0x81000000 0x0 0x00000000 0x0 0x20200000 0x0 0x10000>,
-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
