Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 46DF5C47422
	for <linux-phy@archiver.kernel.org>; Wed, 24 Jan 2024 07:37:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gWV2IOr0CXfAsaVWE+rDIDCm3oE0Z8YTrY2OoTYouBk=; b=QySd3Q3krxA21C
	kesx5V5JRqGSB7AP7XSx4fpqrkluJnRFwsnB6H0RpayfLtltYU46jSrSVZcPZxtaP3gxiKYAF/pMo
	Zbwo7etFWkmSixpZSEByb9qqok5OeoXWIsLiK7GpI8QU7eef6v48bsPykL1XTa/3dsriyr8fPFL/x
	aczy0iOANsBrL6n2peXvEIyLTGHPqbQRi0AN0aibsIxSeMA5kKpSEg+K9YzThbnsKduhRJmsxc6fH
	n9+PkCL8wWqqR4zyWTFjCSwtybGXprI5qBnQveE82o0Nz+IZT4EMqOS4S72TRBwVsFbI3+lRV7ULV
	+ACueQCTorR1UX4iaaLA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rSXpU-001saa-2k;
	Wed, 24 Jan 2024 07:37:48 +0000
Received: from mail-pl1-x636.google.com ([2607:f8b0:4864:20::636])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rSXpT-001sZi-0C
	for linux-phy@lists.infradead.org;
	Wed, 24 Jan 2024 07:37:48 +0000
Received: by mail-pl1-x636.google.com with SMTP id d9443c01a7336-1d73066880eso30743685ad.3
        for <linux-phy@lists.infradead.org>; Tue, 23 Jan 2024 23:37:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706081866; x=1706686666; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Mr0QFQLGsGU3UCE22ZWg0GRl1d55JhYRsXZlu7CT5Ek=;
        b=e1RduZ+ZMvww6AyNyIU/SORIzypQN04L9mSycSCLgzYaVJ4VqY46emfKskyCHTqnke
         PGa/M9p1DdDum2AH8Rj0fOYXh1gObzqJQx+FJGV4vYm55HPNZjLs2eJLpLDxPanFLumm
         +lufctRtJUXy4obbKrP1Ek5449wVD0uxgpfYeB1cB40RA023C6owW5vQRyMgUv9unJTn
         aq5nuI54oyogbiv2+xK6swYGe70GKSncyre1L9dhRge2UBcLUNOg731gCMuOvPvDaVy/
         JbnL0sL2Wcl0SPIHa0H668A73WU/dr+i+ebwb5/5ShCCewiAJ3KFnFRS9DRXxQWpgeT4
         JmgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706081866; x=1706686666;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Mr0QFQLGsGU3UCE22ZWg0GRl1d55JhYRsXZlu7CT5Ek=;
        b=hB3yQLFwe68BbmSeuOuVdhW5Wu0QfA7zGcj1+pNRKZh1QqvAvgE6oMh7daieQPILFI
         bVQW4LQnU/7HD5twgOXyRDYWq5/VT2egsl3qzYpmgfT1VjITDWrUrfRPC/o4H7LtPH42
         qOAB/6kM8epoil2lUHCYW5/hpFMYSm5a74X7XMF1No7Fd4F88eB6YX1Jxw4aYwaeuRzy
         IpSrlWDE0p7D5X+5U5HdEANE0Hvdv3Wt6myTLVWFaWyYpL6bKFXDUfali0FgvQ9xkSEA
         GoLg++eDfCOVDN4K47JA3aTtpll1K55x9geNadMqM0HgrStaz2K2RY/0x+dsyP/wmHZW
         UjXw==
X-Gm-Message-State: AOJu0Yx8iIyLJfQ9B5HpLbB0wAf8SCgZeG/J17foTgf/HbTPj4u0+M7S
	T/VsTIeJI24Gxhs1o7nIWYjH7+nlrvltHahI+XYK533/8rNAW+wiXsRJl+tTMw==
X-Google-Smtp-Source: AGHT+IEemWCxH9v5TmBpKga6APSBH20NfGHRPu+nLdozyRscwokzFFdRSMk/PTPGdmr44O68Z+RdUw==
X-Received: by 2002:a17:902:a616:b0:1d0:6ffe:a1a with SMTP id u22-20020a170902a61600b001d06ffe0a1amr440390plq.120.1706081866524;
        Tue, 23 Jan 2024 23:37:46 -0800 (PST)
Received: from [127.0.1.1] ([117.217.189.109])
        by smtp.gmail.com with ESMTPSA id t3-20020a170902b20300b001d726d9f591sm7386982plr.196.2024.01.23.23.37.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Jan 2024 23:37:46 -0800 (PST)
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Date: Wed, 24 Jan 2024 13:06:40 +0530
Subject: [PATCH 12/14] arm64: dts: qcom: sm8550: Drop PCIE_AUX_CLK from
 pcie_phy node
MIME-Version: 1.0
Message-Id: <20240124-pcie-aux-clk-fix-v1-12-d8a4852b6ba6@linaro.org>
References: <20240124-pcie-aux-clk-fix-v1-0-d8a4852b6ba6@linaro.org>
In-Reply-To: <20240124-pcie-aux-clk-fix-v1-0-d8a4852b6ba6@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, cros-qcom-dts-watchers@chromium.org
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=openpgp-sha256; l=1138;
 i=manivannan.sadhasivam@linaro.org; h=from:subject:message-id;
 bh=qbS3T4RFVlJivCmN4hJ4Xsqqhf8ddqNIBdThgGXkGnY=;
 b=owEBbQGS/pANAwAKAVWfEeb+kc71AcsmYgBlsL4FTWuUoQIXeVx6vSsYrfv+1E10lScR+ZHtL
 eUWXb94QZmJATMEAAEKAB0WIQRnpUMqgUjL2KRYJ5dVnxHm/pHO9QUCZbC+BQAKCRBVnxHm/pHO
 9dc8B/98bZbvZy8V9hBe0ncd/s65E4uiIGidQTmD+Dz0V9tH1ytXtu/tD2tpMNqK+QTIAJJq59X
 3cuKmhgSQDgXiiz98Shz+xCq8TjmqYMNfyjopeq7+mHoGbS3y54BhY8pW7V+cpQmzMDJ/UcZNMp
 X1+8h+POmcY90EJ38NkAv16uOlwkv1dNyv/SpsV1vBSuc2OQ0tZhf2HGq7ukHPlPspq+0YO5ibA
 ABdoRog+r63cOF0yzw9CvkVacAQNkPK9y4qOhgNjk2AtcHR1Lt3K28V07t0RiIqWQK1X/kf9xvw
 T835vebbz9UYnVxLEPB23lI58DzhZjWFzE50unZQ6Wmdhubs
X-Developer-Key: i=manivannan.sadhasivam@linaro.org; a=openpgp;
 fpr=C668AEC3C3188E4C611465E7488550E901166008
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240123_233747_098036_E827880B 
X-CRM114-Status: UNSURE (   8.89  )
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

PCIe PHY hw doesn't require PCIE_AUX_CLK for functioning. This clock is
only required by the PCIe controller. Hence drop it from pcie_phy node.

Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8550.dtsi | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8550.dtsi b/arch/arm64/boot/dts/qcom/sm8550.dtsi
index ee1ba5a8c8fc..f074683f7940 100644
--- a/arch/arm64/boot/dts/qcom/sm8550.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8550.dtsi
@@ -1760,13 +1760,11 @@ pcie0_phy: phy@1c06000 {
 			compatible = "qcom,sm8550-qmp-gen3x2-pcie-phy";
 			reg = <0 0x01c06000 0 0x2000>;
 
-			clocks = <&gcc GCC_PCIE_0_AUX_CLK>,
-				 <&gcc GCC_PCIE_0_CFG_AHB_CLK>,
+			clocks = <&gcc GCC_PCIE_0_CFG_AHB_CLK>,
 				 <&tcsr TCSR_PCIE_0_CLKREF_EN>,
 				 <&gcc GCC_PCIE_0_PHY_RCHNG_CLK>,
 				 <&gcc GCC_PCIE_0_PIPE_CLK>;
-			clock-names = "aux", "cfg_ahb", "ref", "rchng",
-				      "pipe";
+			clock-names = "cfg_ahb", "ref", "rchng", "pipe";
 
 			resets = <&gcc GCC_PCIE_0_PHY_BCR>;
 			reset-names = "phy";

-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
