Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6F505C47DA2
	for <linux-phy@archiver.kernel.org>; Wed, 17 Jan 2024 14:04:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZYuoxgnbqTTtAY9h4XPFkaX6vXO2jtFjolP/lgPb88g=; b=kMYnY1qLayE6xB
	Yc0yM3iXUantJajSvZzkrRCFyZwzIoawQ7FhX8ar0gf2F/uBwR7fxtAuz6gcbuKrMyBluce150QiA
	oAUfQcMGwQIgzuCJYAWB2ubLNEBaKRyvR9fThSk+uqMZKFIg3BRiOX95kGhBO67VwhM/MTVSQGzlQ
	DA4o5naYVwSnc15cp3ep9lSE9Gp6NIiC5DkkdvZ98pchJY/bPZpI2IWXYp4t2FGgUrXcV8M244Ypa
	3MqtPKsTclS1DMzNfJV9ZtaJ8NhlGihJ18LiMw6Dm5sISt9SKXEaxmOOQcDWOhkwIYlfuJa08l7H6
	tqIzpNjLjsSb7mP2e25w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rQ6Wz-00GrBm-0G;
	Wed, 17 Jan 2024 14:04:37 +0000
Received: from mail-lf1-x131.google.com ([2a00:1450:4864:20::131])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rQ6Wr-00Gr1L-10
	for linux-phy@lists.infradead.org;
	Wed, 17 Jan 2024 14:04:33 +0000
Received: by mail-lf1-x131.google.com with SMTP id 2adb3069b0e04-50e7e55c0f6so13339684e87.0
        for <linux-phy@lists.infradead.org>; Wed, 17 Jan 2024 06:04:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1705500267; x=1706105067; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=UVMtrjYxxS8jU9P9HQIcKp62CJkYBOMDQz6j5+KpHA4=;
        b=AqMTMDA7AoClXPi+sAR+VISXhTvvJKO1aj+6ly3PKEr16gPzdQnPbZx2qHIModscJw
         k8KpBv/MrbkTlfWa/phsPpIDgSBZdTgyUPYa3K4mv3ArZ5K80FGjqoFcnny13aOxwG8R
         dBHl12mfifJfQoSt2hzQdEDgdtKkOaiNsOMg+n5yLfv+c04fWrWS4KOVzeySQJcZ+mKq
         Yg7DUF1xyKksiLS/1Evg9K/Owd7Dq0gf5o+sHaBDseYCuzSRfCxQa9y2AekuOmwyE5KB
         1ZbQmWg5TZb+i9D25F4CnGf3s8eeqV1lJSx1vW0k4YFCHTBoYG1TByZkM1ubH/Awqfoh
         WGwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705500267; x=1706105067;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=UVMtrjYxxS8jU9P9HQIcKp62CJkYBOMDQz6j5+KpHA4=;
        b=Xk2+3m76s/r01hDb+J3Kwk7llxNLtQAcah0+0V7hh/i3HWhK2x8nry3LJR2lSMxoJC
         wpwEu4mtwX23VxBQgTs4EuL0lg0sFvNyHCWSEJW5NO5Se4HRvwiVCm2FCmrCYKsolbsD
         ru5JCQrzOIXkEu6U4ORAupdfeqwNe/JvjVYi28/CbB9v7z5/6cRAC/dDsu5pkQ6KvuLG
         WMJME/zg6pkicG0DP3ZDD9r2UR21f7uUdF2Wg9FN2qXK2u26SqtziALN3AxmDXxn2zJA
         bBri3RerIjNMwluAOiyfuqV4T/vvbwlAPlo6iEmwHYKCS8RHbJVgpILfWYTJxMl0PFuL
         BkdQ==
X-Gm-Message-State: AOJu0Ywh40payHDv6jtd2XJ/GrdYVdoiNEPopxCNyLOW9R++NxekgSKp
	HucTT4lKWmqrO6iQjgqus5BXM+IoO649TA==
X-Google-Smtp-Source: AGHT+IGnKfW/zKJEKLJ57VfOhgD4hwJXRAAE7C1938RtE1q8aYT02DJ+oHYYF8UDbye1cQopCmc5qg==
X-Received: by 2002:a19:6455:0:b0:50e:ac2a:6b5b with SMTP id b21-20020a196455000000b0050eac2a6b5bmr2074559lfj.95.1705500267343;
        Wed, 17 Jan 2024 06:04:27 -0800 (PST)
Received: from umbar.lan ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id y29-20020a19915d000000b0050ec7a26420sm269711lfj.204.2024.01.17.06.04.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 17 Jan 2024 06:04:26 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Wed, 17 Jan 2024 16:04:25 +0200
Subject: [PATCH v2 4/6] arm64: dts: qcom: msm8998: declare VLS CLAMP
 register for USB3 PHY
MIME-Version: 1.0
Message-Id: <20240117-usbc-phy-vls-clamp-v2-4-a950c223f10f@linaro.org>
References: <20240117-usbc-phy-vls-clamp-v2-0-a950c223f10f@linaro.org>
In-Reply-To: <20240117-usbc-phy-vls-clamp-v2-0-a950c223f10f@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Lee Jones <lee@kernel.org>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Jeffrey Hugo <quic_jhugo@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-phy@lists.infradead.org
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=openpgp-sha256; l=1222;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=PIb4wJZB4VPlU9DjKkOwyEjMvVPp21zzloRzfQ9S7E8=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBlp95nHnrAdiE2GmvCls+EigE0xuWR5GY7+JU01
 Af/HfcBhoeJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZafeZwAKCRCLPIo+Aiko
 1WJ9B/9cRMVbhIbRZHH2bVMJlbRMpNAkNqBgxawM6doivzRBHH5vgI66vUToizJLw901etSNeuO
 zrwWdqqvLNU4auJhXTCl2lwLdqFfKpv2e4nJEzp55cJ6Djcjf5U5/JxD9gVf60FrdDso92OI2Fl
 WdA+lwvrYrC12gZwYGsHAmYyZs8Ce5YABZ8fAz4P+NnAvApYc/Lpp3cWBKrfAMapHFQlyoeaU1H
 viVvv73LppXB+nKK+glygLd/uUiZCKQ5ooaTkXUXdGEBxP15Y53qH5aoy2GCw9WLGpOX6R7n2ox
 2xpyf2IZBF5pA2dN9jUqmFK8VlJTAGRR63eUuUl2mfiH+I1A
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240117_060429_473349_151AE90C 
X-CRM114-Status: UNSURE (   8.13  )
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

The USB3 PHY on the MSM8998 platform doesn't have built-in
PCS_MISC_CLAMP_ENABLE register. Instead clamping is handled separately
via the register in the TCSR space. Declare corresponding register.

Fixes: 026dad8f5873 ("arm64: dts: qcom: msm8998: Add USB-related nodes")
Cc: Jeffrey Hugo <quic_jhugo@quicinc.com>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm64/boot/dts/qcom/msm8998.dtsi | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/msm8998.dtsi b/arch/arm64/boot/dts/qcom/msm8998.dtsi
index 2793cc22d381..317a91d669f8 100644
--- a/arch/arm64/boot/dts/qcom/msm8998.dtsi
+++ b/arch/arm64/boot/dts/qcom/msm8998.dtsi
@@ -1072,6 +1072,11 @@ tcsr_regs_1: syscon@1f60000 {
 			reg = <0x01f60000 0x20000>;
 		};
 
+		tcsr_regs_2: syscon@1fc0000 {
+			compatible = "qcom,msm8998-tcsr", "syscon";
+			reg = <0x01fc0000 0x26000>;
+		};
+
 		tlmm: pinctrl@3400000 {
 			compatible = "qcom,msm8998-pinctrl";
 			reg = <0x03400000 0xc00000>;
@@ -2174,6 +2179,8 @@ usb3phy: phy@c010000 {
 			reset-names = "phy",
 				      "phy_phy";
 
+			qcom,tcsr-reg = <&tcsr_regs_2 0xb244>;
+
 			status = "disabled";
 		};
 

-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
