Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 68F0FC3ABCB
	for <linux-phy@archiver.kernel.org>; Wed, 14 May 2025 05:52:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:
	Message-Id:MIME-Version:Subject:Date:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TgH+5wv+n3t4RfFpSG3s+zmgevyM1Ph0BdUybEQydeA=; b=ymcNvFX7v3Tnqc
	OTpLH94vcmojsPo+kO/y4Be/i8QZQfq6vLD76qddOj0J8QLwjntZ6j9mdk7/kS/xcGQFYxFojad2e
	/Vw4kKT3RfpM1ppaGCQduwp0oTtW2sp41hzASJsdEQ6zuDWzjXr/IhCSnip34nFPAXEXOG4U5oJ/6
	wVnLYssMnRJE1lPgJrGinRYn1wQJ9KD1eZclVpqd6yKCtNSWCC9TDT54dMm1DnvzfWYSuttw4nJaa
	v2+aj/mrhLjdZsq8EmwAOXo0/DHuFtquz0rD71AigMUfD26wFH1icRzMaen4QmjSKm7Ae9r+edoWM
	dYWToKIqW/m2wgGDUbLA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uF52l-0000000E6tb-0PHn;
	Wed, 14 May 2025 05:52:39 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uF52h-0000000E6sT-3HZH
	for linux-phy@lists.infradead.org;
	Wed, 14 May 2025 05:52:36 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 3F1F74A3CF;
	Wed, 14 May 2025 05:52:34 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E7087C4CEF1;
	Wed, 14 May 2025 05:52:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747201954;
	bh=EePur+oXQTN/Q0Mfo8DIsWZ0cPCciOMp+Cc7Bx6MPW8=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
	b=TjbXlIr8tSBr86YWv+eDCsx+UjpMXz7ldV62sd+knYTTatma5LVSElbFrD2yjsvlG
	 yQPqEW4FX10dFFdu1Js79LubPodXy20IfxboVCQW2Vsv0X5AXOVsARki6cRxgMCnWO
	 2GL/rE4uH4VvM7C2sDQsuyJNaFk+FilfoSVUpi+Z82II+173liBupp7pU/fNcIWgSs
	 nWAe8TNKZdyAmznPc1XsyS+np0msVEqahOePAf7r/Sx8xdA/Mx+co824R8z7jSavNO
	 1rhlIVsVWDIW3Qo5bIAeG4DxbivlQAQqApLdbyu/jU7FWnM/qJklT7kC5b3Y90bRu9
	 UkKRSZy8km/fw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D9CD3C3ABCB;
	Wed, 14 May 2025 05:52:33 +0000 (UTC)
From: George Moussalem via B4 Relay <devnull+george.moussalem.outlook.com@kernel.org>
Date: Wed, 14 May 2025 09:52:14 +0400
Subject: [PATCH v10 2/2] arm64: dts: qcom: ipq5018: Enable PCIe
MIME-Version: 1.0
Message-Id: <20250514-ipq5018-pcie-v10-2-5b42a8eff7ea@outlook.com>
References: <20250514-ipq5018-pcie-v10-0-5b42a8eff7ea@outlook.com>
In-Reply-To: <20250514-ipq5018-pcie-v10-0-5b42a8eff7ea@outlook.com>
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Nitheesh Sekar <quic_nsekar@quicinc.com>, 
 Varadarajan Narayanan <quic_varada@quicinc.com>, 
 Bjorn Helgaas <bhelgaas@google.com>, 
 Lorenzo Pieralisi <lpieralisi@kernel.org>, 
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>, 
 Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, 
 Praveenkumar I <quic_ipkumar@quicinc.com>, 
 =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-pci@vger.kernel.org, George Moussalem <george.moussalem@outlook.com>, 
 20250317100029.881286-1-quic_varada@quicinc.com, 
 20250317100029.881286-2-quic_varada@quicinc.com, 
 Sricharan Ramabadhran <quic_srichara@quicinc.com>, 
 Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>, 
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1747201951; l=2062;
 i=george.moussalem@outlook.com; s=20250321; h=from:subject:message-id;
 bh=OKmTrcmt0ksiQwz9dz8aVIs/K+GfvvlMVFo78Mfk/ZA=;
 b=Kdpp0nNjPVPIkhZUEbwUlCo6UHMoANmtgHx2Kel29NApsyxP4Vf0gWcib6DlzyYlQZMG5enJQ
 HaFqTRaMVQXDjtGTc5p3c1nCZm75Lu0AqLuz26tXIig+5Ob1Wnd5E23
X-Developer-Key: i=george.moussalem@outlook.com; a=ed25519;
 pk=/PuRTSI9iYiHwcc6Nrde8qF4ZDhJBlUgpHdhsIjnqIk=
X-Endpoint-Received: by B4 Relay for george.moussalem@outlook.com/20250321
 with auth_id=364
X-Original-From: George Moussalem <george.moussalem@outlook.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250513_225235_871524_1AC95B9B 
X-CRM114-Status: UNSURE (   7.49  )
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
Reply-To: george.moussalem@outlook.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

From: Nitheesh Sekar <quic_nsekar@quicinc.com>

Enable the PCIe controller and PHY nodes for RDP 432-c2.

Signed-off-by: Nitheesh Sekar <quic_nsekar@quicinc.com>
Signed-off-by: Sricharan Ramabadhran <quic_srichara@quicinc.com>
Acked-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Signed-off-by: George Moussalem <george.moussalem@outlook.com>
---
 arch/arm64/boot/dts/qcom/ipq5018-rdp432-c2.dts | 40 ++++++++++++++++++++++++++
 1 file changed, 40 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/ipq5018-rdp432-c2.dts b/arch/arm64/boot/dts/qcom/ipq5018-rdp432-c2.dts
index 8460b538eb6a3e2d6b971bd9637309809e0c0f0c..43def95e9275258041e7522ba4098a3767be3df1 100644
--- a/arch/arm64/boot/dts/qcom/ipq5018-rdp432-c2.dts
+++ b/arch/arm64/boot/dts/qcom/ipq5018-rdp432-c2.dts
@@ -9,6 +9,8 @@
 
 #include "ipq5018.dtsi"
 
+#include <dt-bindings/gpio/gpio.h>
+
 / {
 	model = "Qualcomm Technologies, Inc. IPQ5018/AP-RDP432.1-C2";
 	compatible = "qcom,ipq5018-rdp432-c2", "qcom,ipq5018";
@@ -28,6 +30,20 @@ &blsp1_uart1 {
 	status = "okay";
 };
 
+&pcie0 {
+	pinctrl-0 = <&pcie0_default>;
+	pinctrl-names = "default";
+
+	perst-gpios = <&tlmm 15 GPIO_ACTIVE_LOW>;
+	wake-gpios = <&tlmm 16 GPIO_ACTIVE_LOW>;
+
+	status = "okay";
+};
+
+&pcie0_phy {
+	status = "okay";
+};
+
 &sdhc_1 {
 	pinctrl-0 = <&sdc_default_state>;
 	pinctrl-names = "default";
@@ -43,6 +59,30 @@ &sleep_clk {
 };
 
 &tlmm {
+	pcie0_default: pcie0-default-state {
+		clkreq-n-pins {
+			pins = "gpio14";
+			function = "pcie0_clk";
+			drive-strength = <8>;
+			bias-pull-up;
+		};
+
+		perst-n-pins {
+			pins = "gpio15";
+			function = "gpio";
+			drive-strength = <8>;
+			bias-pull-up;
+			output-low;
+		};
+
+		wake-n-pins {
+			pins = "gpio16";
+			function = "pcie0_wake";
+			drive-strength = <8>;
+			bias-pull-up;
+		};
+	};
+
 	sdc_default_state: sdc-default-state {
 		clk-pins {
 			pins = "gpio9";

-- 
2.49.0



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
