Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 60022EE49AF
	for <linux-phy@archiver.kernel.org>; Sun, 20 Aug 2023 15:30:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ODyAZZbdkI31pFQa0GAabysx3JDgyLQHzFBSCvLkTAA=; b=burOf0+PlR7jqm
	VDYdQhflgVCllg2m9Om9svzvs2W9zq+ZsnM7/40fpZ+lsh4z2NIDotRXuB0LxyiSaQzn9rcU2Ydn7
	Mo3YMzl0cU3ZzTudVMICgUpySzEX1FrndZXHDxOBLDGMI/B2XluFaqHIt4IoN7m5XsGazNUOpRItz
	fUuesoJE0SmWQ8znm6G+8Iv2OovWCf8fsNvpYoDzXj+AQRB0/bIwFDcEZzivIYZSVAAXIBljs+2JX
	jpWrWpf0C9SdONy5ne8Z9w/7o2cOk36q0GY2SMyI/ZcgIUXNEj6P0faz4+p8WEBaqZjJNwj9TOAw9
	Qicfytpg7f3oOa46kcKQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qXkNY-00C6jk-03;
	Sun, 20 Aug 2023 15:30:12 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qXjIP-00C1Bf-2W
	for linux-phy@bombadil.infradead.org;
	Sun, 20 Aug 2023 14:20:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=8ieSi5zhiFrbXSTn35lxaJhF29o8BrgwBgh6oZMUD1w=; b=lWUT8kndPQ6VhUP07apIENGrZN
	hVyNe7pkvRhpR7i3WVJ8xz37oaJPoDObO49Fc0DjTtnR5HAVHcteaAV7dlJLmZ/pS0ONBj/GdJzm1
	SqlaAWFp8rnAesixg829qC4mCEmmiE2+/uh+5tBZgy9Sfb9KMjUVoNJhntuWSBjphf5CBvwaCTHSv
	75XASDnmdPai2zr1tdEn6MuLRCHyv/Gru7h+kgqdJJVYLkpr8XYZPmJD9P12K37Q6NErwQkDvJwN5
	NUmaXjhqWcUyBmhhBfILLgiUxyIR0qePS0HBKRzrx5c2GFJKfvmbNJfcJjLzoUjV2w0cKQCIootfn
	/k3BS4nw==;
Received: from mail-lj1-x22d.google.com ([2a00:1450:4864:20::22d])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qXjIM-000Xrq-0M
	for linux-phy@lists.infradead.org;
	Sun, 20 Aug 2023 14:20:48 +0000
Received: by mail-lj1-x22d.google.com with SMTP id 38308e7fff4ca-2b9b5ee9c5aso39892131fa.1
        for <linux-phy@lists.infradead.org>; Sun, 20 Aug 2023 07:20:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1692541245; x=1693146045;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8ieSi5zhiFrbXSTn35lxaJhF29o8BrgwBgh6oZMUD1w=;
        b=yUi0y5WGICukiWwrgN8dYrLwpgZeISKzS6jHeDla7/NmgDhgn8TKFbL5SeRY+Z9pYV
         w3Z9AQpKcvmQcSdRWgyhHYkvvgR8JiQ+P548mLwuA+AJsqe3twAilIzC70vVcGkSXH9U
         0d/J6AIzp0+rZh25ElgOtlY6865uR0OmV7y2msZqQhg2Hh/BOlpuU7jdZ3ZYxSphv/oA
         U+yTiQCIrce0Vn35wgjjyIMgD/1mMu2IKsiMG8KxQMeEtnhb3bcajzGHB6XUTGVgVFbO
         97cTQP5whBnCP59061WxUkqQOM5TXqUXwF8hkHfPe3H6hNKrArrPoZrNG1HRxWn/45FV
         Lt2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692541245; x=1693146045;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=8ieSi5zhiFrbXSTn35lxaJhF29o8BrgwBgh6oZMUD1w=;
        b=TZMwI9UWiFxbTAvPSUK/eJVmvnE63WTS+WKI65jkZ3c9r6t7Vk+mEUptw5hrtPZqvd
         GbedUyER3chE6mYgKIu+of85FArq+UyjKqh/k2lo6SO3ihwZYd3I8fH9S2RFFuS7oST9
         5WLTTcRDTffQDJ034xUoXJbMr3qST2yIwXCJZlrgMN57tsC+qDHfux5qJwbDwTi8BDML
         IBb76sOM8SJImQG9D+gPcaXg+3MNV4nswzOt2LwQA41rlkqtyCrc4KdQ748yZvIrjca4
         AU5PRaTCEOtqx2so3dRHIhIz5n9MIEeNG+gUA1lNdc1rALaSD9y0Zk6znXRvKNIApKOA
         UZwQ==
X-Gm-Message-State: AOJu0YxpD1fpFkDuBGnjB0hrm8RCuRDlbxl9Yz10vYppkMhaylDdEmlB
	auDZs4CWkHoGAbJ+gtrLmsO6pw==
X-Google-Smtp-Source: AGHT+IEKJvjZgMxWyPoXftbXEzY/1/U7TcY6WacPwz1iTq3jKY0XNssWXxgL0NDby8GebZV0yhZiCw==
X-Received: by 2002:a2e:8045:0:b0:2b9:ac48:d7f5 with SMTP id p5-20020a2e8045000000b002b9ac48d7f5mr3221123ljg.39.1692541244897;
        Sun, 20 Aug 2023 07:20:44 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id n9-20020a2e7209000000b002b9e501a6acsm1706222ljc.3.2023.08.20.07.20.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 20 Aug 2023 07:20:44 -0700 (PDT)
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
Subject: [PATCH v3 09/18] arm64: dts: qcom: ipq8074: switch PCIe QMP PHY to new style of bindings
Date: Sun, 20 Aug 2023 17:20:26 +0300
Message-Id: <20230820142035.89903-10-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230820142035.89903-1-dmitry.baryshkov@linaro.org>
References: <20230820142035.89903-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230820_152046_219868_524F969B 
X-CRM114-Status: UNSURE (   9.33  )
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
 arch/arm64/boot/dts/qcom/ipq8074.dtsi | 67 +++++++++++----------------
 1 file changed, 28 insertions(+), 39 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/ipq8074.dtsi b/arch/arm64/boot/dts/qcom/ipq8074.dtsi
index 00ed71936b47..3350804a2f62 100644
--- a/arch/arm64/boot/dts/qcom/ipq8074.dtsi
+++ b/arch/arm64/boot/dts/qcom/ipq8074.dtsi
@@ -211,59 +211,48 @@ qusb_phy_0: phy@79000 {
 
 		pcie_qmp0: phy@84000 {
 			compatible = "qcom,ipq8074-qmp-gen3-pcie-phy";
-			reg = <0x00084000 0x1bc>;
-			#address-cells = <1>;
-			#size-cells = <1>;
-			ranges;
+			reg = <0x00084000 0x1000>;
 
 			clocks = <&gcc GCC_PCIE0_AUX_CLK>,
-				<&gcc GCC_PCIE0_AHB_CLK>;
-			clock-names = "aux", "cfg_ahb";
+				 <&gcc GCC_PCIE0_AHB_CLK>,
+				 <&gcc GCC_PCIE0_PIPE_CLK>;
+			clock-names = "aux",
+				      "cfg_ahb",
+				      "pipe";
+
+			clock-output-names = "pcie20_phy0_pipe_clk";
+			#clock-cells = <0>;
+
+			#phy-cells = <0>;
+
 			resets = <&gcc GCC_PCIE0_PHY_BCR>,
-				<&gcc GCC_PCIE0PHY_PHY_BCR>;
+				 <&gcc GCC_PCIE0PHY_PHY_BCR>;
 			reset-names = "phy",
 				      "common";
 			status = "disabled";
-
-			pcie_phy0: phy@84200 {
-				reg = <0x84200 0x16c>,
-				      <0x84400 0x200>,
-				      <0x84800 0x1f0>,
-				      <0x84c00 0xf4>;
-				#phy-cells = <0>;
-				#clock-cells = <0>;
-				clocks = <&gcc GCC_PCIE0_PIPE_CLK>;
-				clock-names = "pipe0";
-				clock-output-names = "pcie20_phy0_pipe_clk";
-			};
 		};
 
 		pcie_qmp1: phy@8e000 {
 			compatible = "qcom,ipq8074-qmp-pcie-phy";
-			reg = <0x0008e000 0x1c4>;
-			#address-cells = <1>;
-			#size-cells = <1>;
-			ranges;
+			reg = <0x0008e000 0x1000>;
 
 			clocks = <&gcc GCC_PCIE1_AUX_CLK>,
-				<&gcc GCC_PCIE1_AHB_CLK>;
-			clock-names = "aux", "cfg_ahb";
+				 <&gcc GCC_PCIE1_AHB_CLK>,
+				 <&gcc GCC_PCIE1_PIPE_CLK>;
+			clock-names = "aux",
+				      "cfg_ahb",
+				      "pipe";
+
+			clock-output-names = "pcie20_phy1_pipe_clk";
+			#clock-cells = <0>;
+
+			#phy-cells = <0>;
+
 			resets = <&gcc GCC_PCIE1_PHY_BCR>,
-				<&gcc GCC_PCIE1PHY_PHY_BCR>;
+				 <&gcc GCC_PCIE1PHY_PHY_BCR>;
 			reset-names = "phy",
 				      "common";
 			status = "disabled";
-
-			pcie_phy1: phy@8e200 {
-				reg = <0x8e200 0x130>,
-				      <0x8e400 0x200>,
-				      <0x8e800 0x1f8>;
-				#phy-cells = <0>;
-				#clock-cells = <0>;
-				clocks = <&gcc GCC_PCIE1_PIPE_CLK>;
-				clock-names = "pipe0";
-				clock-output-names = "pcie20_phy1_pipe_clk";
-			};
 		};
 
 		mdio: mdio@90000 {
@@ -807,7 +796,7 @@ pcie1: pci@10000000 {
 			#address-cells = <3>;
 			#size-cells = <2>;
 
-			phys = <&pcie_phy1>;
+			phys = <&pcie_qmp1>;
 			phy-names = "pciephy";
 
 			ranges = <0x81000000 0x0 0x00000000 0x10200000 0x0 0x10000>,   /* I/O */
@@ -869,7 +858,7 @@ pcie0: pci@20000000 {
 			#address-cells = <3>;
 			#size-cells = <2>;
 
-			phys = <&pcie_phy0>;
+			phys = <&pcie_qmp0>;
 			phy-names = "pciephy";
 
 			ranges = <0x81000000 0x0 0x00000000 0x20200000 0x0 0x10000>,   /* I/O */
-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
