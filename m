Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1A274C35274
	for <linux-phy@archiver.kernel.org>; Mon, 18 Dec 2023 12:08:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=l9KC+OzREHkw5GV/sCPU3tQJKB2+Asqtxfgj2y238/M=; b=fpwj2SN84qorif
	ooNXgr2o+gxeZEjGM/HawyrLp5PY03yv0aydXIWOjXWXDOUTmy1D4azp4S+mYIfzBt8VpncclzgMk
	wnkhcLC6hg5zQF9FcS4BK6y5hZM5ETpnbaCw67HC8lLIaSgNMEU60ue77VU9IIP0f4/sq0EPCplLG
	bLlnB6fY0SQMVCjihfrXLJ4vFtQPnsY7PCN/2n5eVLdyCbWu/s3JRelmlfL+VP8hmGxnTmWKL94/g
	nnM4C+Vm+F9y31CHjCnaBDgGji18pQ8//vFHgO944HF34peL7DtKoUCrilQxOUuPd0/82Qz0W91BY
	JUxu3v9BHLI3X0rphl0w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rFCPf-00AYNc-2h;
	Mon, 18 Dec 2023 12:07:59 +0000
Received: from mail-pg1-x52c.google.com ([2607:f8b0:4864:20::52c])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rFCPd-00AYLs-09
	for linux-phy@lists.infradead.org;
	Mon, 18 Dec 2023 12:07:59 +0000
Received: by mail-pg1-x52c.google.com with SMTP id 41be03b00d2f7-5ca29c131ebso2442796a12.0
        for <linux-phy@lists.infradead.org>; Mon, 18 Dec 2023 04:07:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1702901275; x=1703506075; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=KzU01i6st7Fo+4S1d9zRuY0iUyHKgjsO1CA7YDVBW60=;
        b=W54t/IWFN5VRRkDbEk8JI9xZaaS7BAsV8Qj7NkPnbxflJMLoTgZRH6eG0b+SLFa3mf
         iMLDBJGaMLFR+L8+9jAVemi+kTNaNF308F1lswuqnvL0X1L1ZqgWoMR6vhByfU+OmsE4
         CJUkZzctHlcxlLsBYqYAtbHq+Fnbo2PKL25fV3/HhUVEfu47WnKw208H9T82ruw4VmEd
         kIhRX0aIogDU3yHwDvrXExhsJr6GkK2a0CHTUa4PSsePgPKTLWzqp+UJPM05HcRbOQ6t
         0GXPrKoMjkILfaJBGVEd2bNcccfe3ErLMRleBH+wWi3nicBTAIRIik2/lJ1YK7XtRZjd
         Ye+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702901275; x=1703506075;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=KzU01i6st7Fo+4S1d9zRuY0iUyHKgjsO1CA7YDVBW60=;
        b=T8PSZkKa3/VZmIThyLtQmRqxYfAn9OKeJbrMMjowEH5lmMbli70n3vIoJlIsFp2+6X
         vrDQk0OuZFL8KI3zyyf7dBrkZNpxw2wSSGGqW8h8kPiSjFQhzhk3YD51FXkBaSukDjZA
         ncJyFky+4EyJHnW2TX8a7WWZSSl/mftembNoPVx3ooFmigbGyNR1uxtlVu9sk3aH5uK5
         jw7/4rV+9Bjk2nWC5ue3DdIqHw3645K2/iRmCBR0cGh9A2E5jrGcrgVhL4C5VAiT/9sL
         aOPH0Qq0oYlcPsEV81LHTB7VwInpe5zJRKPgUbEaFMMUk7zrzuUAeLPda5AlwZt9S78B
         z3ng==
X-Gm-Message-State: AOJu0YyCXHQh94MNYdSltRfpRe7RtzzNOtrermAoFR9zLuTsSRfc9JaP
	CY7vE0oV4fUE9AT0cUunhMQh
X-Google-Smtp-Source: AGHT+IGpYOV/SJS+GqznnUdK0MyAkEm3zZZSxOs9irbVbbQ1gkqu08h5/o5UYUypquxsVeUHv6aoQg==
X-Received: by 2002:a17:902:d54c:b0:1d3:3952:8885 with SMTP id z12-20020a170902d54c00b001d339528885mr13518743plf.11.1702901275224;
        Mon, 18 Dec 2023 04:07:55 -0800 (PST)
Received: from localhost.localdomain ([117.207.27.21])
        by smtp.gmail.com with ESMTPSA id j18-20020a170902c3d200b001d368c778dasm1285709plj.235.2023.12.18.04.07.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 18 Dec 2023 04:07:54 -0800 (PST)
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
	quic_cang@quicinc.com,
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: [PATCH v2 05/16] arm64: dts: qcom: msm8996: Fix UFS PHY clocks
Date: Mon, 18 Dec 2023 17:37:01 +0530
Message-Id: <20231218120712.16438-6-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20231218120712.16438-1-manivannan.sadhasivam@linaro.org>
References: <20231218120712.16438-1-manivannan.sadhasivam@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231218_040757_078968_BEFEAE8C 
X-CRM114-Status: UNSURE (   9.38  )
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

QMP PHY used in MSM8996 requires 2 clocks:

* ref - 19.2MHz reference clock from RPM
* qref - QREF clock from GCC

Fixes: 27520210e881 ("arm64: dts: qcom: msm8996: Use generic QMP driver for UFS")
Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 arch/arm64/boot/dts/qcom/msm8996.dtsi | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/msm8996.dtsi b/arch/arm64/boot/dts/qcom/msm8996.dtsi
index 6ba9da9e6a8b..b235f1d651aa 100644
--- a/arch/arm64/boot/dts/qcom/msm8996.dtsi
+++ b/arch/arm64/boot/dts/qcom/msm8996.dtsi
@@ -2105,8 +2105,8 @@ ufsphy: phy@627000 {
 			#size-cells = <1>;
 			ranges;
 
-			clocks = <&gcc GCC_UFS_CLKREF_CLK>;
-			clock-names = "ref";
+			clocks = <&rpmcc RPM_SMD_LN_BB_CLK>, <&gcc GCC_UFS_CLKREF_CLK>;
+			clock-names = "ref", "qref";
 
 			resets = <&ufshc 0>;
 			reset-names = "ufsphy";
-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
