Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 50BECC10F1A
	for <linux-phy@archiver.kernel.org>; Wed,  1 May 2024 16:19:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Gj3gCVLRnCGzXRb3kiVY0e+ealB2nlqrPvUr9nLF6KI=; b=lJKRNaCLs69PLD
	mL8VIs0Gb6EtCOttFzL5ZsHi0RqIkGq8zdFJFXEDH+EU9jnnlH5nnJ0LVd01N9xCZsODzFvotHnfp
	OGuSWV63Un1jS8DGQwbu/7RdBr8oQIfiW6SFSbNFK+psvC4TWwk6dnL4PQj6WvHapsjua2f7JuiMk
	0NLeQaVgIBVJS/g++4vZ/H59wAnrtzsfoxoVlVqdVpa/oGgqW232W+G2U/yVT0AotbDLbkjS992Ks
	/LnuR/AJZ2wRBuTT2pu4m7aXx25jb0elx/8ae77Bid6SZUnUbaTYwc3U3i5cZEd16r+YyWJcvXF6Y
	gJZH0epoYOR0t+gzV2tQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s2CgY-0000000A7I5-3hbk;
	Wed, 01 May 2024 16:19:58 +0000
Received: from mail-lf1-x136.google.com ([2a00:1450:4864:20::136])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s2CgU-0000000A7Dh-2QAc
	for linux-phy@lists.infradead.org;
	Wed, 01 May 2024 16:19:56 +0000
Received: by mail-lf1-x136.google.com with SMTP id 2adb3069b0e04-51ca95db667so7031951e87.0
        for <linux-phy@lists.infradead.org>; Wed, 01 May 2024 09:19:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1714580392; x=1715185192; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=OBu8uJvPg1UvIc+mH2v8BNRxGrigWtykVG4/Hi5iSBE=;
        b=Zh1Cke/LFMB5Ih7EyjkAgbrUlOMCNiHTpFftmt5GQSLdsnxcaChJIYk7EG7xi9hebz
         lQZE95Wo/cYxJpGltLU3pI0K19kpWKyBbCqcUOZb6Y6Sk9VIFXuBof8uapweeJhWlQgy
         bOzrN4xHfcmJmig7SMFTl22i3KxESrIuUdh9wo3Euiy+8AFMc7jjOZWc1/AIgyqQ4i4l
         vesuPdOWUQXaoayUSNfgT8aqwCl5FOJTYRoAheNTvW//Edm2jQYh/3TTimHH/QPUd1iV
         EnnSnsat0GovgtDKdM9thKzOTZW+CopQ8eecI7v6q6w8VVKbOLRNcvNJtg73nGHIjeoO
         cOVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714580392; x=1715185192;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=OBu8uJvPg1UvIc+mH2v8BNRxGrigWtykVG4/Hi5iSBE=;
        b=obFSpvxAFae/ljiwi+ZKHjTJC4Z5Bg0atn4d+lzEWPIoZg5nJ95pUH8Lc2z6srHuHP
         Qxp0vU5lrrxi6D1DjIOGuNFNWF4Q3TNGYQEY6eRTwetPGbfSD9cDTPsX5brGKBwF33/9
         BGcgzlIbw+mwqg4mowhdcNvXF3jMIp7Iid/Y3s+35vMM6D7DqC380j0/dP89m1q5eDJX
         JzIXQtT/XGZM02/DAb2MfoOLFFKOFWgzVo3HUCpXlroYtr/ARLJiPS92U9gSdv8sBOVT
         N7KGPIduF3TOhuyEL0s4MTc8gs578WJUSSLDGw1sA2JtEhLHR9Xmz9STgjia0VT+oC8U
         naoQ==
X-Forwarded-Encrypted: i=1; AJvYcCWW6QFLhWIdHJMUXaP39LZr2XM4ME+Y6WyE0DaDk6wGiCZkpsQsxn0Zl/vty8Ze6kGbBg08D5KmguRGDWxeQSM2z+lYIw0P2bU19r9j/A==
X-Gm-Message-State: AOJu0YyHAWBoaIIOd10k3ayfx8h5PBEIWC8Ahz8cpxAtShCMig5Cjf0b
	1L0QJ3GgiJ7GCxNHYY+fKDrkmJ34QRIUlD5mmtu8GXSTDJj0f3yaNy7ehYaY944=
X-Google-Smtp-Source: AGHT+IHO8D7t79jPZVj7GXV0IfVFmAJztyQ9VRH2f50wnpSv+Pf+ol4AKyqgnp0U+Cq+lf34L9WmwA==
X-Received: by 2002:ac2:41c4:0:b0:51a:d9a3:dbf5 with SMTP id d4-20020ac241c4000000b0051ad9a3dbf5mr2356904lfi.47.1714580392074;
        Wed, 01 May 2024 09:19:52 -0700 (PDT)
Received: from umbar.lan ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id d30-20020a0565123d1e00b00516d0029383sm4909306lfv.28.2024.05.01.09.19.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 01 May 2024 09:19:51 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Wed, 01 May 2024 19:19:37 +0300
Subject: [PATCH 11/13] arm64: dts: qcom: sm8450: add power-domain to UFS
 PHY
MIME-Version: 1.0
Message-Id: <20240501-qcom-phy-fixes-v1-11-f1fd15c33fb3@linaro.org>
References: <20240501-qcom-phy-fixes-v1-0-f1fd15c33fb3@linaro.org>
In-Reply-To: <20240501-qcom-phy-fixes-v1-0-f1fd15c33fb3@linaro.org>
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Abel Vesa <abel.vesa@linaro.org>, 
 Wesley Cheng <quic_wcheng@quicinc.com>, cros-qcom-dts-watchers@chromium.org, 
 Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, 
 David Wronek <davidwronek@gmail.com>, Andy Gross <andy.gross@linaro.org>, 
 Evan Green <evgreen@chromium.org>, Douglas Anderson <dianders@chromium.org>, 
 Iskren Chernev <me@iskren.info>, Luca Weiss <luca.weiss@fairphone.com>, 
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>, 
 Yassine Oudjana <y.oudjana@protonmail.com>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Krzysztof Kozlowski <krzk@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@somainline.org>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=798;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=LRBZxO+Nudwm9N9s/JWAgHDzC0dYV1KQNWrzIhyLeXM=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBmMmua/rT0OXXocvCG8b8gq/7FNAEDPOaV91fBc
 6W0ZKsMdHeJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZjJrmgAKCRCLPIo+Aiko
 1f+9B/0VYtVSGVWCZvPqh0QKUYhggov+CDpfC1AhnYA+ejG9qFFpC7F4AYWaU0NJmkpSx6Hilcj
 S7KVLLLMLwWN2MYwey5lM1g02FZnkaTiokCt4HehqxY4rZTnWzsh3byfcT0ZzqviHR4EmtbiUFD
 X6N9buwh8a0yPEUX3rb7h7mR2/f/hKSsOUoALc+gsZ6pRrzM+vnPFwAju6x9DVExxw37Tj5u93u
 i/uId9z0qQKt+nESK7UHfCmA3ASmYtLITTzREto1Z1c1rfse3nqw2bQLF3jkVhWKG4TFBAI7GXG
 pLwqajBK6GFL8yIf27UrOxs0+TLhBCVDCdE+d77cdQY+iiL7
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240501_091954_779491_95FD9102 
X-CRM114-Status: UNSURE (   8.52  )
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

The UFS PHY is powered on via the UFS_PHY_GDSC power domain. Add
corresponding power-domain the the PHY node.

Fixes: 07fa917a335e ("arm64: dts: qcom: sm8450: add ufs nodes")
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8450.dtsi | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm8450.dtsi b/arch/arm64/boot/dts/qcom/sm8450.dtsi
index 71797f337d19..ccb2255a94a2 100644
--- a/arch/arm64/boot/dts/qcom/sm8450.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8450.dtsi
@@ -4429,6 +4429,8 @@ ufs_mem_phy: phy@1d87000 {
 				 <&gcc GCC_UFS_PHY_PHY_AUX_CLK>,
 				 <&gcc GCC_UFS_0_CLKREF_EN>;
 
+			power-domains = <&gcc UFS_PHY_GDSC>;
+
 			resets = <&ufs_mem_hc 0>;
 			reset-names = "ufsphy";
 

-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
