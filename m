Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 996BBC4332F
	for <linux-phy@archiver.kernel.org>; Thu, 14 Dec 2023 09:11:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pLJyx+owKN5vbaAXEip/ncSGXT2I07AxymFXBQSAaS8=; b=pNlwE+Jo0MUcu8
	EXockviTeJoZmHmjZ+vU7Af5VpbMLIsmYBrYeUynpjPT3yMqUev1Df2AoA8GrRotaA416wPJ11Ojq
	Zmy37GRDbMvLXj4MN/HRy3Btebm2DPbrzEKfXPQLVAw+hMCxkcD/7O0P3HAFJ6wiRwaVuxCS6K/ag
	Y7LRuIZbqX1MaanmBoboY9LOk6FgiWFr+nIpHHxBXM36QheW1H8Kq9NA7P8g3EXuENLDR/xj9+eTy
	Hwvw+St8TjDHogYJoMkWGOg33Yxs/ZwVaaA9yLFdKXtDgCikDowlI334qN2XognJW08tomulIAvHA
	hUp9cAc06JUiJ/AUdeWQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rDhl7-00HJdb-1B;
	Thu, 14 Dec 2023 09:11:57 +0000
Received: from mail-qk1-x729.google.com ([2607:f8b0:4864:20::729])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rDhl5-00HJcY-0Q
	for linux-phy@lists.infradead.org;
	Thu, 14 Dec 2023 09:11:56 +0000
Received: by mail-qk1-x729.google.com with SMTP id af79cd13be357-77f37772ab6so490901485a.0
        for <linux-phy@lists.infradead.org>; Thu, 14 Dec 2023 01:11:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1702545113; x=1703149913; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=E7tHzmERAQbZImeje4EMokx1gYyccc/9b3w+T8ZyCDU=;
        b=dmd0AUJmHPwBVca6vSj7zcRMQCRRMegxnuI9pewpeuaRHlHToxL0opCmt38XaCMTBo
         0onWNxPwyRTLCKtVPi6WOlwJZtKhYx9iQP91JWQEefpFD6uJ7urts3ylOxmQzdJYGlZf
         YQUvUG75dHybVGo/tvdJmL74V1NrALjD8aBK+MX2nRVXukk8Mz3youogheH3W1M57PG5
         lYnVNgCNP/QRy8BAagUBBhF1UVthJxiN+pVZBEohUVFA7e2AcL2x8RrH1vURsPb9BQp+
         CXYffF7Mcl8cuGGJE01HfNPT2exzRbn+2XZkBJ5d4rQzyxeqRD1SB7J90g08RnNz4vup
         UktA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702545113; x=1703149913;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=E7tHzmERAQbZImeje4EMokx1gYyccc/9b3w+T8ZyCDU=;
        b=WPTvuupS9M2DpqIuTy+i/g2DOAbEK8/pqZH9t2w3yvwb3J0OwnsZlHN0ZkAEEu682H
         0t9oHe62X1LWtqSx8qFQWSHrlH33fp5zFCWe+IGoADkojoz15zKuOeIxeUvqPyH1GqpA
         50TOBrEqJ7BBFIbb8M5eIDFWnCUHTRSQ8BKKN+/JWjU2l3n6YH6YKMEl1fyS/PSL7mXA
         SSqAmDzTWPcn26Zs+wBh/8sNsSvfD+EHg5f3sTYwhdXhrQOilnLb+qooWvmqwMNIyYpf
         BkK1eegS2NTMYghM3ObrMP/Cmb1DIxI7x48yXr1Gs9+Q/yjczO/YbDeYfyOxNxffkalt
         X2UA==
X-Gm-Message-State: AOJu0YzdSNDOsfX+Yw/DGeK3VdAM8/y9KzX++3EyC2gsjcTfRmHrg2IG
	YeoZtBCHQ1td5zoQZCUmBnUL
X-Google-Smtp-Source: AGHT+IGGOd9jlu9qhHJFGypL3G+lZIGRt/9aClzI8nCmgZYkeu4ehYfW0e9S6L8lARh5IDvJykKmNA==
X-Received: by 2002:a05:620a:21d5:b0:77f:3813:4212 with SMTP id h21-20020a05620a21d500b0077f38134212mr11387231qka.86.1702545112885;
        Thu, 14 Dec 2023 01:11:52 -0800 (PST)
Received: from localhost.localdomain ([117.213.102.12])
        by smtp.gmail.com with ESMTPSA id qt13-20020a05620a8a0d00b0077d75164ef9sm5144119qkn.124.2023.12.14.01.11.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 14 Dec 2023 01:11:52 -0800 (PST)
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: andersson@kernel.org,
	konrad.dybcio@linaro.org,
	vkoul@kernel.org,
	sboyd@kernel.org,
	mturquette@baylibre.com,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org
Cc: linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org,
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: [PATCH 06/16] arm64: dts: qcom: msm8998: Fix UFS PHY clocks
Date: Thu, 14 Dec 2023 14:40:51 +0530
Message-Id: <20231214091101.45713-7-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20231214091101.45713-1-manivannan.sadhasivam@linaro.org>
References: <20231214091101.45713-1-manivannan.sadhasivam@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231214_011155_169202_4193D90F 
X-CRM114-Status: UNSURE (   8.51  )
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

QMP PHY used in MSM8998 requires 3 clocks:

* ref - 19.2MHz reference clock from RPM
* ref_aux - Auxiliary reference clock from GCC
* qref - QREF clock from GCC

Fixes: cd3dbe2a4e6c ("arm64: dts: qcom: msm8998: Add UFS nodes")
Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 arch/arm64/boot/dts/qcom/msm8998.dtsi | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/msm8998.dtsi b/arch/arm64/boot/dts/qcom/msm8998.dtsi
index b6a3e6afaefd..d4c55e2b0043 100644
--- a/arch/arm64/boot/dts/qcom/msm8998.dtsi
+++ b/arch/arm64/boot/dts/qcom/msm8998.dtsi
@@ -1051,12 +1051,12 @@ ufsphy: phy@1da7000 {
 			status = "disabled";
 			ranges;
 
-			clock-names =
-				"ref",
-				"ref_aux";
-			clocks =
-				<&gcc GCC_UFS_CLKREF_CLK>,
-				<&gcc GCC_UFS_PHY_AUX_CLK>;
+			clocks = <&rpmcc RPM_SMD_LN_BB_CLK1>,
+				 <&gcc GCC_UFS_PHY_AUX_CLK>,
+				 <&gcc GCC_UFS_CLKREF_CLK>;
+			clock-names = "ref",
+				      "ref_aux",
+				      "qref";
 
 			reset-names = "ufsphy";
 			resets = <&ufshc 0>;
-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
