Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7FDD5C74A5B
	for <linux-phy@archiver.kernel.org>; Fri, 24 Mar 2023 02:25:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EYklFgAahimkAgZUSQtbKpa82udc60EBnmarvydNxak=; b=tW/0dtaKMfVlun
	dk/vNQzKblGQ91u5YV9Azwht7IeOBA2Qhlyo6dtGg16aTWisB1+rSS/9KdxBEsDDm2cb4Jh0eLHu2
	rivMnWU8Fcg/w+JK4MNbFKDZbaz90EgzqMjIUmCeSIlA6+J/w9xzVxr6iwVRuOyRd+xRRhYewoR4Z
	dA5oMK5QouK+AGdhkxGS/1fNeQnThHit/LL8vI1XVZyOijFumNYjRcvU5Q0yaRiPpEWwafQzRbxbP
	GOOHBhoNUARJ6L6xch98S5RwjVz7brcvSLpr9Qpz4VT4RQBUegqsNmr7NHARSyxskRSvkOjh0NJO5
	TOLm3aI/fjp2Kz3oJd8w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pfX7r-003OOn-0R;
	Fri, 24 Mar 2023 02:25:55 +0000
Received: from mail-lf1-x12c.google.com ([2a00:1450:4864:20::12c])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pfX7l-003OIW-2U
	for linux-phy@lists.infradead.org;
	Fri, 24 Mar 2023 02:25:51 +0000
Received: by mail-lf1-x12c.google.com with SMTP id i13so392954lfe.9
        for <linux-phy@lists.infradead.org>; Thu, 23 Mar 2023 19:25:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1679624749;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=EDKvQCeMoGwiw40h9Bag44+2baOTORhe0LnGjTNpiNg=;
        b=Q4L5pizVBFwLbyJ1fbrXgq/YMPogv93ss107gxvPA3ceHP+nl0asqg9knGLEdecQob
         A4DfDKBp3jVWJbrgKJv/cbaALJoUZgm5iMPRHY4+PfJt7qUFf6Cy2Cl6gDQAZVdQUUUr
         MK5KrWZyihrhBPyKp+b/B+mzBhpCzCWT944RzE4C21TCbPqi7ROiuE5PmK6RFxzkNHYN
         +El95VATHNq9mn1MZdsnc4SA7g5X3lIeNtoAGEzldi0TmfvFrz9r2/1ahhdBQNGMqtqa
         Ec22nFrjeuRdTNIVfBE/Kd/4fXYhmTkVGtt3QbaBk9Xf2WR/UuZeNULW7EyTr08bhXuN
         8U/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679624749;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=EDKvQCeMoGwiw40h9Bag44+2baOTORhe0LnGjTNpiNg=;
        b=J+I4q7lH1ZGZO9s2yRZT68iZdTBc2WUgbgFmSkP199Vfwx+UwslfG4od5yWELbBtZH
         ZrZlz9xoDTUsGxGc/8VmiNWTiCpPNorZMGNV1dS8dD760fi2Lm/h8+fdhfjVrXQrMWag
         8CqsZTOPFAkcZviKa3/NsNxHl1abMYIFH8si9nIQpXneyVN6N2ZWNNG1AWjeZGmfBzSz
         GxFr3O0w3gJmEFfHhQjYpf9M3FFy6JXU8WAfMPlO9PjOZVVvRa7iZZtEFukFGcQdFdDh
         MnOmCckESGshUkzc5poJH3fawKDsRdcWnYvBlL7zfHBhQfS6XUdXZWD/zE1zFtxzg6pE
         9SBQ==
X-Gm-Message-State: AAQBX9fs0HGfNsvOzXPiATMXoDtH0BdjfR+OPYBRwjWyy3vmg/izf+Dv
	O+43W4JRTq0AdZF/M5kjOEed0A==
X-Google-Smtp-Source: AKy350aYJVumqei3jmhZZ6bZCf1+zSa7re/ypE6jeDupNGN0xMhkcEYm6nQPKUnIuAR0HWIAjiVckA==
X-Received: by 2002:ac2:5613:0:b0:4ea:f7be:e071 with SMTP id v19-20020ac25613000000b004eaf7bee071mr222013lfd.46.1679624749296;
        Thu, 23 Mar 2023 19:25:49 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id x4-20020a19f604000000b004db3aa3c542sm3162628lfe.47.2023.03.23.19.25.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 Mar 2023 19:25:48 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>
Cc: linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	Johan Hovold <johan+linaro@kernel.org>
Subject: [PATCH 32/41] arm64: dts: qcom: ipq8074: switch PCIe QMP PHY to new style of bindings
Date: Fri, 24 Mar 2023 05:25:05 +0300
Message-Id: <20230324022514.1800382-33-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230324022514.1800382-1-dmitry.baryshkov@linaro.org>
References: <20230324022514.1800382-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230323_192549_819296_4D0B2A6C 
X-CRM114-Status: UNSURE (   8.95  )
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
 arch/arm64/boot/dts/qcom/ipq8074.dtsi | 63 +++++++++++----------------
 1 file changed, 26 insertions(+), 37 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/ipq8074.dtsi b/arch/arm64/boot/dts/qcom/ipq8074.dtsi
index e7ac3f886611..cf0d77b55395 100644
--- a/arch/arm64/boot/dts/qcom/ipq8074.dtsi
+++ b/arch/arm64/boot/dts/qcom/ipq8074.dtsi
@@ -183,59 +183,48 @@ qusb_phy_0: phy@79000 {
 
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
+				<&gcc GCC_PCIE0_AHB_CLK>,
+				<&gcc GCC_PCIE0_PIPE_CLK>;
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
 				<&gcc GCC_PCIE0PHY_PHY_BCR>;
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
+				<&gcc GCC_PCIE1_AHB_CLK>,
+				<&gcc GCC_PCIE1_PIPE_CLK>;
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
 				<&gcc GCC_PCIE1PHY_PHY_BCR>;
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
@@ -760,7 +749,7 @@ pcie1: pci@10000000 {
 			#address-cells = <3>;
 			#size-cells = <2>;
 
-			phys = <&pcie_phy1>;
+			phys = <&pcie_qmp1>;
 			phy-names = "pciephy";
 
 			ranges = <0x81000000 0x0 0x00000000 0x10200000 0x0 0x10000>,   /* I/O */
@@ -822,7 +811,7 @@ pcie0: pci@20000000 {
 			#address-cells = <3>;
 			#size-cells = <2>;
 
-			phys = <&pcie_phy0>;
+			phys = <&pcie_qmp0>;
 			phy-names = "pciephy";
 
 			ranges = <0x81000000 0x0 0x00000000 0x20200000 0x0 0x10000>,   /* I/O */
-- 
2.30.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
