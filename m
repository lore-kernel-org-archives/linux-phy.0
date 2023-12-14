Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6CA10C4332F
	for <linux-phy@archiver.kernel.org>; Thu, 14 Dec 2023 09:12:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=O2i2En3vWziP0l42oitKQvFZ6KGmnil2kRV5RIh2b1s=; b=tqMEYysE6vZqYS
	G0mBeKXEaIZITTICa5vYGQn9D4ddzvMxPE5SeEzbCqvQaKE1L4H9vJrsx9HC/F6Nd4/tcnLlpOgja
	B95O8XQkpTEa4VT7YIHHLOkVYIlIA1D/js/q8TncW7UHfH1CUbWXJVdaUT6GRq9SLZbhZpeqGF/H2
	DfSnT06oiMhMgvTugnsl9lHnmQp7ghh5ld2dKYtDfWtmdNSTwZPBsaVcrEpAKi34243mut6xfzBkt
	vZBwYHrctoGU0MiZxXw2QTErUwqy0FBFpvmPpLsOT8riKcjO+XtZFUzIzSwVv/Zn0Vjf1npwOVwZ8
	w3HI4cVdzyd8WXQfofVQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rDhlg-00HJlW-0Z;
	Thu, 14 Dec 2023 09:12:32 +0000
Received: from mail-qv1-xf2d.google.com ([2607:f8b0:4864:20::f2d])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rDhle-00HJku-1C
	for linux-phy@lists.infradead.org;
	Thu, 14 Dec 2023 09:12:31 +0000
Received: by mail-qv1-xf2d.google.com with SMTP id 6a1803df08f44-67ad891ff36so50097016d6.1
        for <linux-phy@lists.infradead.org>; Thu, 14 Dec 2023 01:12:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1702545148; x=1703149948; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=gvNQvdCy0O2wlOymvN0iIUEpRjoZ42RcAo4vagPpclg=;
        b=EqJCZeMfdqPOiMLksWfblTAq+41Xb3S3f/Xh3JbzxZ+L5BatzHykjl3aqyZI1aswAP
         XEIXUS8deHbV1DFeM8GS8tnQbWBEfbmb9dH2JFzREt9Yqc3CdxyfoBekOunXK3H4xStD
         nezHd4IyulpiBbL5GCysPxdQjsjW/gTh43YF6tWiR+jaBnu2II9kFL5+8D0Hv8KaTsbN
         tPRcY9zUHRtRarJE+c1u/c6mgqw2aiVPa+BTZzU028sXqrR2lsC41nbglnJKSZoJI1GR
         DaxqswfRgLXPmFbVpnRi4fmYo4owqt3q7K47CBqoyfcgRhPoGVdXvmxgsKel9BP9CGbC
         gZwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702545148; x=1703149948;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=gvNQvdCy0O2wlOymvN0iIUEpRjoZ42RcAo4vagPpclg=;
        b=NFfs/xBXAL6Vwa7AwOFJRFPMa7w4WPcJWBUFftI++PG0c2xh01Gv/1FILbq1B+4AcE
         RvgngNZeCDhR6TghYHtPMejDVyfxjoHtWUesMBaKf1eYCbfZ/qK011S7DS5UJ/pf/GZt
         cpMYfE5nAQzeuHjlhQu2CuyBjt6KhbCpMZt6wQwNektMqCVVmrYowAcbGbX7qTgIeqj1
         EYTiq6dzGXGs/ZtWrq6LSHf0OH+1cp8V0pEj0pjJ/uZpyAwr9hu0na4EM41XUycl+TSh
         6Jwchm3zywFarho8HT8CFolaYHHmN4DGa9FneQjdmG092F3OabuqpZ7wAjYRFXcZ4TGd
         61UQ==
X-Gm-Message-State: AOJu0YwvRm8h2CJHnl4IAIPcVr50U6yrZ7EuFJFSDPQGk6RNp7qqrEhu
	ujHewLOnNNZmzgXaLyMuxgb6
X-Google-Smtp-Source: AGHT+IHKV2g0kNYONFuj/bO3jVZJAPZFJ9rV4Fa7zy4o4C1WAr4wKwvCb2AiIaMwbW9Aq+iM6pw/6Q==
X-Received: by 2002:ad4:5ccf:0:b0:67f:4c4:e8a5 with SMTP id iu15-20020ad45ccf000000b0067f04c4e8a5mr1792743qvb.24.1702545148371;
        Thu, 14 Dec 2023 01:12:28 -0800 (PST)
Received: from localhost.localdomain ([117.213.102.12])
        by smtp.gmail.com with ESMTPSA id qt13-20020a05620a8a0d00b0077d75164ef9sm5144119qkn.124.2023.12.14.01.12.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 14 Dec 2023 01:12:28 -0800 (PST)
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
Subject: [PATCH 12/16] arm64: dts: qcom: sm8250: Fix UFS PHY clocks
Date: Thu, 14 Dec 2023 14:40:57 +0530
Message-Id: <20231214091101.45713-13-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20231214091101.45713-1-manivannan.sadhasivam@linaro.org>
References: <20231214091101.45713-1-manivannan.sadhasivam@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231214_011230_409374_B89A3EA0 
X-CRM114-Status: UNSURE (   9.04  )
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

QMP PHY used in SM8250 requires 3 clocks:

* ref - 19.2MHz reference clock from RPMh
* ref_aux - Auxiliary reference clock from GCC
* qref - QREF clock from GCC

While at it, let's move 'clocks' property before 'clock-names' to match
the style used commonly.

Fixes: b7e2fba06622 ("arm64: dts: qcom: sm8250: Add UFS controller and PHY")
Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8250.dtsi | 8 +++++---
 1 file changed, 5 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8250.dtsi b/arch/arm64/boot/dts/qcom/sm8250.dtsi
index c1b7f9620ec6..e47c515af6cf 100644
--- a/arch/arm64/boot/dts/qcom/sm8250.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8250.dtsi
@@ -2486,10 +2486,12 @@ ufs_mem_phy: phy@1d87000 {
 			#address-cells = <2>;
 			#size-cells = <2>;
 			ranges;
-			clock-names = "ref",
-				      "ref_aux";
 			clocks = <&rpmhcc RPMH_CXO_CLK>,
-				 <&gcc GCC_UFS_PHY_PHY_AUX_CLK>;
+				 <&gcc GCC_UFS_PHY_PHY_AUX_CLK>,
+				 <&gcc GCC_UFS_1X_CLKREF_EN>;
+			clock-names = "ref",
+				      "ref_aux",
+				      "qref";
 
 			resets = <&ufs_mem_hc 0>;
 			reset-names = "ufsphy";
-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
