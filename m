Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6D1A2C48285
	for <linux-phy@archiver.kernel.org>; Wed, 31 Jan 2024 07:09:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uVmXovVux5i5GB7bBYhcA5pFHmFmP+nA6zJsbOLgwpk=; b=xfsqXfvNUS2Hhw
	usEvBKd7HLPMUmFSaxRmc2yiZ2d1CRQ992PhYR60ZGr1lDTci+7wkmK6gPqleuJwWd0Xapq7qpXiF
	RpFLwqyN23+3DLSopI9+l8AZvEdUTqUJk0EKjblBTqmgBaESfc8k6aQYgKqz6HyrSoD2faAkaiYaR
	wjshyTtzK1hKUbMpQNt7VT5zMDF6L6mCakJkHnABNv3SOmNZyKR91mGDON/flY8JMKBdEiBuumHtQ
	BoddBcm5JCTATey5E5JkjSK9lTPq7gABA0NyghFKYB5i341SqqwTQPdPqdkv1/xNEAtR92XwkKLrc
	sCOm5pTxI+s5KpU8ALNA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rV4ix-00000001jZe-0JeY;
	Wed, 31 Jan 2024 07:09:31 +0000
Received: from mail-oi1-x231.google.com ([2607:f8b0:4864:20::231])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rV4it-00000001jYZ-3fHX
	for linux-phy@lists.infradead.org;
	Wed, 31 Jan 2024 07:09:29 +0000
Received: by mail-oi1-x231.google.com with SMTP id 5614622812f47-3bb9d54575cso3531756b6e.2
        for <linux-phy@lists.infradead.org>; Tue, 30 Jan 2024 23:09:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706684966; x=1707289766; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=VsKsHLnZZRVFbdLOT/GXrxZpNNOvT2cxF7mVntjOUtA=;
        b=IxJng4C6fgXGf6szjs0jF8gQujcn9bLzjVGP7e+mXjtipMZbyY+EWVz0BmGmPDTpeR
         LIOg88eNEMBm7k9dmXIK9D3wryqXXsn5HFmdML897cBlpHzH5StdirnvT/6c+IvCzs/i
         Tupb1LvUxfuZUQrFuRf1Dbf3hAscYDwE4DGrq4gZMRymP/bfBlfMoYBGd/2SbYmox+IF
         tzImPjbP3SKlgEqukt5kj4nQtSWPE6Fh3WcMQAX/4Jiu0V5xZMdJZ96KIIoL8SQcMgYb
         ZKFrLtlwspugP7tZ2hPJFhKOrjHhgetlkWBifb7wkEO8ZPZbpYv/8FS1VD2I6LTEV1LO
         3KNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706684966; x=1707289766;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=VsKsHLnZZRVFbdLOT/GXrxZpNNOvT2cxF7mVntjOUtA=;
        b=E7DAkN6p9KUklgMX4EmvoayIRSD5Mtw20H1c4X5mc8AHjfWlby3PdHNO/d4c+BfAlE
         LNh6BkqqDwvQnniaGOwmd5EkH0SmSDX6E77g1RNLEDxjiSiHrBSW3JB+s4+qBSbqUIE2
         20MgutA+ccCKIPlM95D4mVVd60gKumWu/vpXViY3B7pmjSTo58i7YiL59sM5wVthF91y
         uP9r8tQ6F2Bp6pov/bfk+UJkREfxyngTSY7/8LpWrXdN9wCY3EfteMvWwSg+NdT6OFQ8
         lCPOb0F5UB0mLacAaKt2yxJAZDRYt7RQi6/8c6vWonkdy6Cwb9Sgwa7/vVn0/g4/nJd7
         YO1Q==
X-Gm-Message-State: AOJu0Yy1s69r/qguAMNIurZ58YowsGAHxFD84J6eK9G5tZ12xHoQxYWH
	iQl0/mBysdSoGfxaYcFO87BD5z6bpq4jdIueKDcayXpJOdzHPFVCbQ17N6sepg==
X-Google-Smtp-Source: AGHT+IHM5zi4vLAiNj22W4jpSpd3N2fH0/FFQdfPtbAfaFZN9NSSK0LLs03P3esKJl6fT9DRlfeCUg==
X-Received: by 2002:a05:6808:13c9:b0:3be:bc8f:d0e8 with SMTP id d9-20020a05680813c900b003bebc8fd0e8mr1143400oiw.49.1706684966747;
        Tue, 30 Jan 2024 23:09:26 -0800 (PST)
Received: from [127.0.1.1] ([103.28.246.26])
        by smtp.gmail.com with ESMTPSA id lp17-20020a056a003d5100b006ddd182bf1csm9087956pfb.46.2024.01.30.23.09.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Jan 2024 23:09:26 -0800 (PST)
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Date: Wed, 31 Jan 2024 12:37:39 +0530
Subject: [PATCH v3 16/17] arm64: dts: qcom: sm8550: Fix UFS PHY clocks
MIME-Version: 1.0
Message-Id: <20240131-ufs-phy-clock-v3-16-58a49d2f4605@linaro.org>
References: <20240131-ufs-phy-clock-v3-0-58a49d2f4605@linaro.org>
In-Reply-To: <20240131-ufs-phy-clock-v3-0-58a49d2f4605@linaro.org>
To: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-clk@vger.kernel.org, quic_cang@quicinc.com, 
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=openpgp-sha256; l=1292;
 i=manivannan.sadhasivam@linaro.org; h=from:subject:message-id;
 bh=2pFeMFE9K1lnH+vs0mTsUIbBpmIvmtvsqfj+wGRcs4c=;
 b=owEBbQGS/pANAwAKAVWfEeb+kc71AcsmYgBlufG/LkeEDpyAXXI9tmW2PAOllJpYAlYBTh3G7
 ajZnNtM6JSJATMEAAEKAB0WIQRnpUMqgUjL2KRYJ5dVnxHm/pHO9QUCZbnxvwAKCRBVnxHm/pHO
 9e4YB/9RYVsBBrUDxm5/cgJp5gO+DfrL7ei5FAUTqVTqBVGUYfDq1X//2pHq6gKjp7rISeHeNrA
 WwkQekYMBf5igsNx9LsTKI34z3QHr85+MA77fhfGFDPKyb7yE34k/dX3XSTshdteuEa4URZLxaI
 kGneL/rMdtLKFxRBfo9nijp2dF9IoHfXHCIgpl4/cLG6srNQ3fjHYUWR5yE1zVWgEL1Ea4Py1Vw
 RMe1Bt7HfrU/RzY2fbMONwbcR7hNQe70NDSaoiQdS83thRxZFgp4041RPefcSMCUOAJvon+FM5P
 FG7PD5VOkCqGFxzIftQHKdIloMQnpO55ePBxjveNndr9g023
X-Developer-Key: i=manivannan.sadhasivam@linaro.org; a=openpgp;
 fpr=C668AEC3C3188E4C611465E7488550E901166008
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240130_230928_007040_6319A6CE 
X-CRM114-Status: UNSURE (   9.08  )
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

QMP PHY used in SM8550 requires 3 clocks:

* ref - 19.2MHz reference clock from RPMh
* ref_aux - Auxiliary reference clock from GCC
* qref - QREF clock from TCSR

Fixes: 35cf1aaab169 ("arm64: dts: qcom: sm8550: Add UFS host controller and phy nodes")
Reviewed-by: Can Guo <quic_cang@quicinc.com>
Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>
Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8550.dtsi | 9 ++++++---
 1 file changed, 6 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8550.dtsi b/arch/arm64/boot/dts/qcom/sm8550.dtsi
index c89d8f3dad21..736e40564a5f 100644
--- a/arch/arm64/boot/dts/qcom/sm8550.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8550.dtsi
@@ -1933,9 +1933,12 @@ crypto: crypto@1dfa000 {
 		ufs_mem_phy: phy@1d80000 {
 			compatible = "qcom,sm8550-qmp-ufs-phy";
 			reg = <0x0 0x01d80000 0x0 0x2000>;
-			clocks = <&tcsr TCSR_UFS_CLKREF_EN>,
-				 <&gcc GCC_UFS_PHY_PHY_AUX_CLK>;
-			clock-names = "ref", "ref_aux";
+			clocks = <&rpmhcc RPMH_CXO_CLK>,
+				 <&gcc GCC_UFS_PHY_PHY_AUX_CLK>,
+				 <&tcsr TCSR_UFS_CLKREF_EN>;
+			clock-names = "ref",
+				      "ref_aux",
+				      "qref";
 
 			power-domains = <&gcc UFS_MEM_PHY_GDSC>;
 

-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
