Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EA1D0C47422
	for <linux-phy@archiver.kernel.org>; Wed, 24 Jan 2024 07:36:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=c5VRZrl+JBoCE7KdBOxPetR6PNizWT3qINGiMhyuCUI=; b=CMQq/+I8wSYB/D
	7zHmxnwIcD3nGGuSD23DBLp9Su9l1sfCIhbIGCcud0YWRREHWd/NpAPVezS9cW5cuWP2LNoZJGimP
	jBBdyJy05ObtxTgwdGJ3WUw2TyThPj7lK/Xh6JE9FDwqyOqReHhtw4okRAr6tdwWpkBeG7hD/eSVP
	Sjfi/eyQtGGDZTHP136gflKar6vDPRGJBRs8LGFoQvK+s3WmesgQUr4O0gRXGnGS6fSbB8PJrnqzO
	aMXn+gJ788566ogfdx9R8szs4PFB3uEtmSamPaXMRtzqS6dSzLY0mUlIg3L3hK1lfQ74ksqlbuL13
	cuGCOtvObXR9usTHRYQA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rSXof-001sKN-1f;
	Wed, 24 Jan 2024 07:36:57 +0000
Received: from mail-pg1-x533.google.com ([2607:f8b0:4864:20::533])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rSXod-001sJQ-0W
	for linux-phy@lists.infradead.org;
	Wed, 24 Jan 2024 07:36:56 +0000
Received: by mail-pg1-x533.google.com with SMTP id 41be03b00d2f7-5cec32dedf3so2733520a12.0
        for <linux-phy@lists.infradead.org>; Tue, 23 Jan 2024 23:36:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706081814; x=1706686614; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=NEnCFhhmwsb7wajVYXLbkhkhFCstNg2EJe/RBvp+MYA=;
        b=I5dJbOf3IMrwE97cg+3tsynucxPHlmH26RQEG4NHH/tzTZPPi9gAuMekMF8nRmtx4j
         G9khZvbPPscaWxsbWFUZo6hAHMGxdmbqZI8eX+CY7hb5DK0D5R7KKyxtudcic+aY1uZe
         rOoISHExKa8hFwoYKEw8CnWMiLCS4YfJHLXSWjWvL5S9DFt1IQT4EIvp4HUM6rSXg5FN
         Ow59buCl7Bh2hNrD2YRhDUrlFXayd+4dhKM7ElrZPSwQ8k0AVOOBrB/qGs3yuWRfTXlM
         Z/Pd07ZbNQCehqpBAI+IB3fMA6CnrPUZAG29zuRNfRsh4UxC2Ko4nTVw3tNDXTiGNWo8
         sElw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706081814; x=1706686614;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=NEnCFhhmwsb7wajVYXLbkhkhFCstNg2EJe/RBvp+MYA=;
        b=KpN1D06yMwAcgcOwwHf6rtbCqh0VjC5PBDDyEjWbJwHVqTt29/Ii9Dd7MYG5x8gyW5
         MuF+JXDr4sQQpd5ZmcG1oTdrDPDQvgtb6D5ONEb/tugUpHVkYh9R/ABFfkKgwbCh1gIw
         xLKG1QwsYsLe8HkYC5q2z2rtvkq9nC5Y/bpdQFxj6o3Svu6Rqf5LviyEAK7yQZ6hcUvW
         hVR+MFXAqOR+YJvjkoKINmZg1xZ3J0smUF71JPoHPEe6ver8xGxJLCeNja4P6Q+IC+Xy
         pbZPdrxqmiBpuVFi4hxhdIqK1Bo9FsMTsh8Ppr5LQbvOSC1UrgMJM3iV8J7h0fGHWudy
         9t4A==
X-Gm-Message-State: AOJu0YwxFzcJ7PBHRI433M+eF/hMQY1XNeCKphrH1pqFUNKPYjlAmtTz
	BDLjdj489o0hnQbGROmKkPBCbs4QTzIyV10deGNJZl5kJUbUABwx4Xa0RSkDtQ==
X-Google-Smtp-Source: AGHT+IF5vLJU2eGh5b5arpYHW5lYcd7oWV3PajDcJ2tAy3xBarUKGSR/ATJC0UF0GUZB4gYaeGJ2JA==
X-Received: by 2002:a17:903:120a:b0:1d4:2330:85a3 with SMTP id l10-20020a170903120a00b001d4233085a3mr341846plh.20.1706081813873;
        Tue, 23 Jan 2024 23:36:53 -0800 (PST)
Received: from [127.0.1.1] ([117.217.189.109])
        by smtp.gmail.com with ESMTPSA id t3-20020a170902b20300b001d726d9f591sm7386982plr.196.2024.01.23.23.36.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Jan 2024 23:36:53 -0800 (PST)
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Date: Wed, 24 Jan 2024 13:06:30 +0530
Subject: [PATCH 02/14] arm64: dts: qcom: ipq6018: Drop PCIE_AUX_CLK from
 pcie_phy node
MIME-Version: 1.0
Message-Id: <20240124-pcie-aux-clk-fix-v1-2-d8a4852b6ba6@linaro.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=979;
 i=manivannan.sadhasivam@linaro.org; h=from:subject:message-id;
 bh=fGj8Hc8YGkorO50XWw23uE3LCV1avN5lQsXZGvyanM8=;
 b=owEBbQGS/pANAwAKAVWfEeb+kc71AcsmYgBlsL4CGTLW5PHE4v+QOjUwEzMEiiZ5MfA5DaNcj
 cyvMk7JDkGJATMEAAEKAB0WIQRnpUMqgUjL2KRYJ5dVnxHm/pHO9QUCZbC+AgAKCRBVnxHm/pHO
 9fWvB/42xwjITFqhAyVbIdl55fGwYHKR5rjdxAep68tNBpd/TDx47zwOB4CQorP44+PsGLFCCuJ
 Kd+miwAqOtGDcUbCdlmEtGByRdfJ4lYIJSThJHw+8cZMHdJfPOTbQgQx72cRm21eTxP62gerfNU
 ghiEAGHcO4Cn7M0s4yznO6JUcBxCJJh2ZvD0Xrq1pMZXtErnpGMvMTxcI2qlSzVHLqCFvfUVViK
 1lMyaKbezsLE8Erot6tjnO8oqu+s8kQL2Fz/eSWOPxygbqdJhwiBM5sfhFSJjeu91I3ZFhfE7Jv
 1SRvB5M7rigAG/cuuo3CWLPvKtwZAMZt/sdlvK8ka2s6b+m6
X-Developer-Key: i=manivannan.sadhasivam@linaro.org; a=openpgp;
 fpr=C668AEC3C3188E4C611465E7488550E901166008
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240123_233655_201599_88EFB93C 
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

PCIe PHY hw doesn't require PCIE_AUX_CLK for functioning. This clock is
only required by the PCIe controller. Hence drop it from pcie_phy node.

Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 arch/arm64/boot/dts/qcom/ipq6018.dtsi | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/ipq6018.dtsi b/arch/arm64/boot/dts/qcom/ipq6018.dtsi
index 5e1277fea725..1767e5abd76d 100644
--- a/arch/arm64/boot/dts/qcom/ipq6018.dtsi
+++ b/arch/arm64/boot/dts/qcom/ipq6018.dtsi
@@ -283,11 +283,9 @@ pcie_phy: phy@84000 {
 			reg = <0x0 0x00084000 0x0 0x1000>;
 			status = "disabled";
 
-			clocks = <&gcc GCC_PCIE0_AUX_CLK>,
-				<&gcc GCC_PCIE0_AHB_CLK>,
+			clocks = <&gcc GCC_PCIE0_AHB_CLK>,
 				<&gcc GCC_PCIE0_PIPE_CLK>;
-			clock-names = "aux",
-				      "cfg_ahb",
+			clock-names = "cfg_ahb",
 				      "pipe";
 
 			clock-output-names = "gcc_pcie0_pipe_clk_src";

-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
