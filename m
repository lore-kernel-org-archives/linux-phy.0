Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3AFEBCCF9FE
	for <linux-phy@archiver.kernel.org>; Thu, 30 Oct 2025 14:28:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PdBHCz1afEZ03qtQARiiSnVaN9VW579jOG9JjBsLaxs=; b=thuW0kPStvnkiV
	+SFjKIxm94katCHVjIGYr7SZ+MOCQFAhrNYY1HSVjAFGf5muE2FLSJGiITFDZK4uuXvebXayCFKgF
	vCl2rVhNsWvog9Qf+44GQp9mCTq2uxuSfpfoWOed+oCJe9oia+uxK8WOm1fLcMolGvgLb3vTInwZl
	StapLrDmxvsmpwv4U8VWESarGHCtN7oeUrHDv6itSxxSabaeqjmGdPMe5No/77lmhb2AGFe1HtYCf
	HAWd5syl7JibhvxX3E7VO2Zge6wQ94reIljwJe/wgcWaeRqpvBz7g2w0gcdKVjoGhVwe61az2m+vP
	JZKepOGf9A67ZDwg+DUQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vETe2-00000004IwH-4AKQ;
	Thu, 30 Oct 2025 14:28:54 +0000
Received: from mail-wm1-x331.google.com ([2a00:1450:4864:20::331])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vETe0-00000004Iv9-3cFD
	for linux-phy@lists.infradead.org;
	Thu, 30 Oct 2025 14:28:54 +0000
Received: by mail-wm1-x331.google.com with SMTP id 5b1f17b1804b1-471b80b994bso14332005e9.3
        for <linux-phy@lists.infradead.org>; Thu, 30 Oct 2025 07:28:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1761834531; x=1762439331; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=0hky9aZYZhqPebPVWCtl7ijJ819/bzTMDH0Hz4vsdJA=;
        b=Q2mmN1GhEFS/fZSXmFL80Qjj11c43i6E0MGjgG4iZHUeCP+5hFiU0ccv0l3zB+KZ2n
         PMAlrYs4xF4c98JYUCAa/oMC0kkLPGDfghnpQVMd83Flbcf8/3fRu4+a+ZgOYCOBpbo6
         2jneZCWUtesEICiUieGgRV781YAEi7cQMgA76mfAQ8TCNBE4DCy0YjY8U5emUPe0D7m3
         mKqXZQrO6JzNO37zR0HJvyhXmvMCGAIdwqZWEhEa0WhzZ1w5B26G5xXQGOq1CQq36UcG
         Le+Ib/x2bqD/lD6ZRhm7atl3UQObWRueE9dg7V59w4NV9QTkF2G6bIgiozXPSmZqEVZi
         Ag6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761834531; x=1762439331;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=0hky9aZYZhqPebPVWCtl7ijJ819/bzTMDH0Hz4vsdJA=;
        b=ZGUu60hOOEwU5DCH3M8wwbZUrDa63ZeUiHZhN6uieGienON5CqVvbnuH78nj5f2iHa
         tK34HCJTZWXb/YL7iF5BNGFITwh7C7p6m2/CdwlUw+mHAsEXEugu7JzXbhCikbXf28Jm
         uHJo+r9Nf9eeYy+f8WJHfg6zHdC2ia1QHPGyCXI1UZqZywJOZkR5UpNG3oQE3pkPAnqJ
         BxQxTCj3UH72bqkMViJlePdAns4XVl6N5tj98zJxepXCqk4Oyuvh9bpPiQ/6zcA4WSEP
         m/X8uozVKn9DdAq4P5Dt0yOC8VvvLsMSvBoyo4fwwOqs1Wy/PA6INliCvOoMd99b6SWC
         9rfA==
X-Forwarded-Encrypted: i=1; AJvYcCVdU5t2nSd9bwpzYXLMwEYLuVBOYogPx27GIR0Bp5g7DGAR/1FupSlNYCjIrxM/c05EjUhSxnlkWZA=@lists.infradead.org
X-Gm-Message-State: AOJu0YzJ6rrfvkCcgkQRxh0oHty7DGX/6EeMtlCRw4RdFAYhTDNx4Xb+
	zaV84aXeLwbkt6ucbkoJIb2lSAHHbKs75/II6Vt1BbenKb2kipQ31I3EulczPa8cNqk=
X-Gm-Gg: ASbGncudHBdEVtTvc1JJdwYbfeNI4e/L/Pz7So5VNwJZpEImGGXc8AzV+e5eQo7zb9P
	6poYuVmrkf2LlsnI5KQTZ7aEBtGkYXQicBS0k/POHyoglEInOD9aQuGjixEvhD+cHH0mamBfn2t
	POTgKhTt3RdRH2MXj9zXwQ1nlXAf2sv1MRjnm7aj4NjkzduDsqXW+cqstxJm+p23uIXRcSOdRhv
	cswcAV2xot+y11KeFqpc2KiOfcrW+aPwC45uTbfAB7R5U80RFKT+tMXoMSfci0mB/BFR/Cfq8SL
	MdypSAOoUtEa0mTGE61UN3sQAiFZVcNDgdmqCPWsyakjubsfm9tifnc5LGWg3suQ/TL5jgdTsus
	DldjVC2D4WEkptRqG2audz9GH5OFCifd5Qyded0ShbhHXT3sYnq3igJpEmTEN60kAYgmnahvDFx
	erapGyjikx
X-Google-Smtp-Source: AGHT+IEQ2IyXRDcnIR3RPu3dYi/RV8FM42o3crX9ZDsG/wo/02yDOOqeF7iZ59gxjUjBQUJ3Gx2uBA==
X-Received: by 2002:a05:600c:1c1a:b0:477:1af2:f40a with SMTP id 5b1f17b1804b1-4772673665cmr31213715e9.17.1761834530750;
        Thu, 30 Oct 2025 07:28:50 -0700 (PDT)
Received: from hackbox.lan ([86.121.7.169])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4772899fdfbsm42230475e9.4.2025.10.30.07.28.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 30 Oct 2025 07:28:49 -0700 (PDT)
From: Abel Vesa <abel.vesa@linaro.org>
Date: Thu, 30 Oct 2025 16:28:31 +0200
Subject: [PATCH v5 3/3] arm64: dts: qcom: x1e80100: Add missing TCSR ref
 clock to the DP PHYs
MIME-Version: 1.0
Message-Id: <20251030-phy-qcom-edp-add-missing-refclk-v5-3-fce8c76f855a@linaro.org>
References: <20251030-phy-qcom-edp-add-missing-refclk-v5-0-fce8c76f855a@linaro.org>
In-Reply-To: <20251030-phy-qcom-edp-add-missing-refclk-v5-0-fce8c76f855a@linaro.org>
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Dmitry Baryshkov <lumag@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
 Sibi Sankar <sibi.sankar@oss.qualcomm.com>, 
 Rajendra Nayak <quic_rjendra@quicinc.com>
Cc: Neil Armstrong <neil.armstrong@linaro.org>, 
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Krzysztof Kozlowski <krzk@kernel.org>, Abel Vesa <abel.vesa@linaro.org>, 
 Krzysztof Kozlowski <krzk@kernel.org>, stable@vger.kernel.org
X-Mailer: b4 0.15-dev-dedf8
X-Developer-Signature: v=1; a=openpgp-sha256; l=1887; i=abel.vesa@linaro.org;
 h=from:subject:message-id; bh=LwKDeDbaB/qNO5GHXE665iLTfSrN9deeeAEkKC4gPHM=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBpA3YYkG+n2s2QP25YZJkhRj+64fBjigIHVQhOr
 ljmQoEGuImJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCaQN2GAAKCRAbX0TJAJUV
 Vn/4EACEkEbtxyf3mOVY1BDh7gwSldWCpPcz5fLbcP4lZ0hYKcvvQv7C0o1MXscxfkbbye6riSx
 WMvFfaAbGEdlLocol1aGWy28k6ce81iMXlqhQBJZX1YnpC22dBvElFdFk6KHpM9Y+KY3m5GEkv7
 n9vC6MGwZTXoZDtd6ArJxHl0PY2+YT1+qXnypTvy8DMdqrQmDykkCN5SJQA5gmVqn3VgS6VEWCM
 fum4bTQOeRJ5ZO9/AP11QROQ+MzQeUJ0hTR7S/wphKlfG/85M3eWjvhFfNOi7ZncmLUJ50j5cKj
 UGk4Cc5Q9neWb/YxmvCCZSzgKDAK17HKw4TOmdwGV0iyaRQiHjeP1JAr1/APS/ppprI6GbkDQdr
 KsJcvWMH1C/Sl7uzRoWL2Eb1Q70Hs5c9rUWxvjEBwQUjFglk1gQNeK3AaV1/Hv6s/D0Za6aqGP4
 FKC2yza37pZT2NL1sZKqF3GHIPuCDztT0q8byzy+ntPrZbntWPuYhtkc7EfubOTBYA+2uI89CGP
 ffx9zHhp/cChkCDL+nYjDRtJ7Wq5LfvCPaXxoX86n4g+kd0/P27xmQsPDNCWypCQXTA4xSYenT2
 +wGylqHHFIenX9+uhCB8EmJ+AXPjFAd2lZVFq3HzSN5cU5AUUe50q6XjgIRtNWK3OGhJh8PSkv/
 /PnBWeCfujozQzg==
X-Developer-Key: i=abel.vesa@linaro.org; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251030_072852_924087_6D69D689 
X-CRM114-Status: GOOD (  11.37  )
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

The DP PHYs on X1E80100 need the ref clock which is provided by the
TCSR CC.

The current X Elite devices supported upstream work fine without this
clock, because the boot firmware leaves this clock enabled. But we should
not rely on that. Also, even though this change breaks the ABI, it is
needed in order to make the driver disables this clock along with the
other ones, for a proper bring-down of the entire PHY.

So lets attach it to each of the DP PHYs in order to do that.

Cc: stable@vger.kernel.org # v6.9
Fixes: 1940c25eaa63 ("arm64: dts: qcom: x1e80100: Add display nodes")
Reviewed-by: Bjorn Andersson <andersson@kernel.org>
Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---
 arch/arm64/boot/dts/qcom/hamoa.dtsi | 12 ++++++++----
 1 file changed, 8 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/hamoa.dtsi b/arch/arm64/boot/dts/qcom/hamoa.dtsi
index a17900eacb20396a9792efcfcd6ce6dd877435d1..59603616a3c229c69467c41e6043c63daa62b46b 100644
--- a/arch/arm64/boot/dts/qcom/hamoa.dtsi
+++ b/arch/arm64/boot/dts/qcom/hamoa.dtsi
@@ -5896,9 +5896,11 @@ mdss_dp2_phy: phy@aec2a00 {
 			      <0 0x0aec2000 0 0x1c8>;
 
 			clocks = <&dispcc DISP_CC_MDSS_DPTX2_AUX_CLK>,
-				 <&dispcc DISP_CC_MDSS_AHB_CLK>;
+				 <&dispcc DISP_CC_MDSS_AHB_CLK>,
+				 <&tcsr TCSR_EDP_CLKREF_EN>;
 			clock-names = "aux",
-				      "cfg_ahb";
+				      "cfg_ahb",
+				      "ref";
 
 			power-domains = <&rpmhpd RPMHPD_MX>;
 
@@ -5916,9 +5918,11 @@ mdss_dp3_phy: phy@aec5a00 {
 			      <0 0x0aec5000 0 0x1c8>;
 
 			clocks = <&dispcc DISP_CC_MDSS_DPTX3_AUX_CLK>,
-				 <&dispcc DISP_CC_MDSS_AHB_CLK>;
+				 <&dispcc DISP_CC_MDSS_AHB_CLK>,
+				 <&tcsr TCSR_EDP_CLKREF_EN>;
 			clock-names = "aux",
-				      "cfg_ahb";
+				      "cfg_ahb",
+				      "ref";
 
 			power-domains = <&rpmhpd RPMHPD_MX>;
 

-- 
2.48.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
