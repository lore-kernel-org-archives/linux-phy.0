Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 70FE7C47422
	for <linux-phy@archiver.kernel.org>; Wed, 24 Jan 2024 07:37:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oiTOSM8t07kybbUPCQeSjza50ucFSgSutX4vACJnPiM=; b=ggOzdorXtKVBRC
	vy9tyUwicLx0BdZG++pbstpyblpoPATbN89iR3JzH0f2wtr+yeM9en3H1ahYHefzXwkg51z/v0zgw
	JXBEPaPQXCaajzyCjtb+70cjU2imGrjo3Ldp6rGFxPArLi8zWIgu+Ip549LPlEaNWxJyF/9X0P4XZ
	GfwO0061hhJHQcof5rjfb2p6ZOJ//JrqWNGrhdgIoVJ+2DU7eSNNVkslOPVqNZ5jQ+TL4WgxDHflc
	b3IrkfNqCWgsgBIFpInSozSJhZ3N6LLc1lFdY8MR45j1mJWdIMwJaC70q/xgwsBf8sk+hTXW6DCGX
	8mOLUuYbUPLn/heFj2fg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rSXpM-001sXU-05;
	Wed, 24 Jan 2024 07:37:40 +0000
Received: from mail-pl1-x630.google.com ([2607:f8b0:4864:20::630])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rSXpJ-001sWh-2p
	for linux-phy@lists.infradead.org;
	Wed, 24 Jan 2024 07:37:39 +0000
Received: by mail-pl1-x630.google.com with SMTP id d9443c01a7336-1d70a98c189so30094555ad.1
        for <linux-phy@lists.infradead.org>; Tue, 23 Jan 2024 23:37:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706081856; x=1706686656; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=l7zLlm6d5CA8X7mFvOVBpegHqSNqfCtqpbevUvsC+dc=;
        b=IB20K0pGJMkITj8ZuE/XuUGwIunpKMKIqGK61zsF1RMB/5vRQj/py18KUyUOFwO3aZ
         1tpICIsDhv/gp7sRNkO/h8zBgjS7NL5yb2yCzKTYiUr4ZzWNgOgLKaf+nBKxIGccMIvp
         83go1XRy8KFztOxkoi394euGz/eQM4wqAlyVraVwPzZRpsmOXiRpCLklL169Bz8I4fHq
         pr9iuDz6P2rSLLX8+IFyNBmZKw0kAmsFBYdSc+nCoKb/68B3E6jhFOTCtddJQrjLwmBc
         0QNthU+0QYGeA+vDbKq+tCpe3q3DpC4eUJq9aWns7Na9aoV3d8DdW5MMZhjaKz/M4wtV
         oZIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706081856; x=1706686656;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=l7zLlm6d5CA8X7mFvOVBpegHqSNqfCtqpbevUvsC+dc=;
        b=LnJqw1TZwHJm1o5PC+82oMxEjuUudXwwUgFUIgRpyo7C5dv8h3eND8n2CNMybzvfWA
         MUqJCmkzcx3GZR6HrLwCvd7QjhucTb7O+6+vlmAYYzItD1NcpWxn7rM0h3jBarcBylYE
         wFhkXWvAg6Bb2ph5LaLgB3bBNqXXdnlAMi42rhfQv4AVbRhZtMXv+CJJyXA9QM3uez6t
         mM97dFiIsnh2hxMs/on6kfpZxpqSPmurtaYh4niL4IWs6BIuNqQ0OMZKCcIo6aKsBzSx
         3f2uCM6pIyjqoVrSKWlgwYXdufFme8aCxgmTpZm2n5WZi8Umj+4cTLliY4MRKTK6xZR2
         RYLg==
X-Gm-Message-State: AOJu0YxLZfxuiiDOQmToNVnIX9xiG6U98BMx2jgDRxIfZvKKXKcEGOm9
	oxgZPRTdRqo2LYCu7PiwGUhbDKdv8nLIe/toFtWKOPW+JHCKebeHcZTWM1ld+w==
X-Google-Smtp-Source: AGHT+IHlsAL4NqkYacbzZuLMy3cYbkj5DCyJUwh+SajhTTNjeDpitNlfwHG4VfJa42WgZplyNBAqSw==
X-Received: by 2002:a17:903:11cc:b0:1d7:46a2:9383 with SMTP id q12-20020a17090311cc00b001d746a29383mr326721plh.33.1706081856061;
        Tue, 23 Jan 2024 23:37:36 -0800 (PST)
Received: from [127.0.1.1] ([117.217.189.109])
        by smtp.gmail.com with ESMTPSA id t3-20020a170902b20300b001d726d9f591sm7386982plr.196.2024.01.23.23.37.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Jan 2024 23:37:35 -0800 (PST)
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Date: Wed, 24 Jan 2024 13:06:38 +0530
Subject: [PATCH 10/14] arm64: dts: qcom: sm8350: Drop PCIE_AUX_CLK from
 pcie_phy nodes
MIME-Version: 1.0
Message-Id: <20240124-pcie-aux-clk-fix-v1-10-d8a4852b6ba6@linaro.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1736;
 i=manivannan.sadhasivam@linaro.org; h=from:subject:message-id;
 bh=49EHGJo+BF0aAusaw6YV9QxMus+FF03TSQS/+RfWzT8=;
 b=owEBbQGS/pANAwAKAVWfEeb+kc71AcsmYgBlsL4EBMA0JPQ+taWm5D5iCJHV6WyXEqHPIoZZD
 U6GiyBn8wSJATMEAAEKAB0WIQRnpUMqgUjL2KRYJ5dVnxHm/pHO9QUCZbC+BAAKCRBVnxHm/pHO
 9Tf9B/wNcnSzONZ35yT0CY2kXhWYHcTu/lh+g6/zyMICDLDyuUoIMb84lVoC1rzB15CMmHG5HYL
 uc14OFvnZFRmLblaowYZ/f5Gc/MX1XdfLaBrkYtj5V4xNaBjlT3cOdSRxXbtW8dda2fkIz2CJ48
 CcESQ81hAKgTLVk0h4dD0nAy/7E32DB/JFTlLbbe6CcTCpY4lBw/o3JSZuA+5xqXgJMGl2SkwM8
 1IJb0QfcO1jIR2kcVwtinNom162H83LDvSZhcvgCf0WQlH802OzK6Mv+nDTLUUEPlvNrMRgul5z
 VFa01hCGZD73rM3RkRBHO3v8SvvcXVIl/u4NTdYV5umIymGM
X-Developer-Key: i=manivannan.sadhasivam@linaro.org; a=openpgp;
 fpr=C668AEC3C3188E4C611465E7488550E901166008
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240123_233737_914288_01FEA503 
X-CRM114-Status: UNSURE (   9.26  )
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
only required by the PCIe controller. Hence drop it from pcie_phy nodes.

Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8350.dtsi | 10 ++++------
 1 file changed, 4 insertions(+), 6 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8350.dtsi b/arch/arm64/boot/dts/qcom/sm8350.dtsi
index e78c83a897c2..23a9060f21d9 100644
--- a/arch/arm64/boot/dts/qcom/sm8350.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8350.dtsi
@@ -1571,12 +1571,11 @@ pcie0: pcie@1c00000 {
 		pcie0_phy: phy@1c06000 {
 			compatible = "qcom,sm8350-qmp-gen3x1-pcie-phy";
 			reg = <0 0x01c06000 0 0x2000>;
-			clocks = <&gcc GCC_PCIE_0_AUX_CLK>,
-				 <&gcc GCC_PCIE_0_CFG_AHB_CLK>,
+			clocks = <&gcc GCC_PCIE_0_CFG_AHB_CLK>,
 				 <&gcc GCC_PCIE_0_CLKREF_EN>,
 				 <&gcc GCC_PCIE0_PHY_RCHNG_CLK>,
 				 <&gcc GCC_PCIE_0_PIPE_CLK>;
-			clock-names = "aux", "cfg_ahb", "ref", "rchng", "pipe";
+			clock-names = "cfg_ahb", "ref", "rchng", "pipe";
 
 			resets = <&gcc GCC_PCIE_0_PHY_BCR>;
 			reset-names = "phy";
@@ -1654,12 +1653,11 @@ pcie1: pcie@1c08000 {
 		pcie1_phy: phy@1c0e000 {
 			compatible = "qcom,sm8350-qmp-gen3x2-pcie-phy";
 			reg = <0 0x01c0e000 0 0x2000>;
-			clocks = <&gcc GCC_PCIE_1_AUX_CLK>,
-				 <&gcc GCC_PCIE_1_CFG_AHB_CLK>,
+			clocks = <&gcc GCC_PCIE_1_CFG_AHB_CLK>,
 				 <&gcc GCC_PCIE_1_CLKREF_EN>,
 				 <&gcc GCC_PCIE1_PHY_RCHNG_CLK>,
 				 <&gcc GCC_PCIE_1_PIPE_CLK>;
-			clock-names = "aux", "cfg_ahb", "ref", "rchng", "pipe";
+			clock-names = "cfg_ahb", "ref", "rchng", "pipe";
 
 			resets = <&gcc GCC_PCIE_1_PHY_BCR>;
 			reset-names = "phy";

-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
