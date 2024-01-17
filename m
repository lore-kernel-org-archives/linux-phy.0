Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4282FC47DB1
	for <linux-phy@archiver.kernel.org>; Wed, 17 Jan 2024 14:04:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+0taBwFpj8+9iGneVuKgrLbkdYb6nFGOSVaDmZfAsL0=; b=M6ChTF5ZuqaZqy
	DoHtJuajIX+stC5p7KczQsfKdveQYTKXphvGhCHZfjDCiKGA2G56xK/CNNxKvPnBSD1SNZHgSKlmu
	Xi/YGzpEMjSTCFE0WbiLlXVvrwsI2t05XH+mDwNjdzo1L4ND0Evh/oW1LNfLQQ/hMrN50WS2hWF7G
	01kT70bt11R2LBtwETYwQxa2EjUJWXJ8lsIzQCOczptcrhqWWTqdvBJFeuPeIbI8fowV7BlsraCAV
	sudW0hMkP21HHRgpNnWvZH8DAly1BHVlXQrcNojKJhpmjD8ZPmOiqwaWA3KCagu3Ivzlwt7949YUj
	+j2dwTld37ZP/1GRD7Mw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rQ6Wy-00GrBP-2K;
	Wed, 17 Jan 2024 14:04:36 +0000
Received: from mail-lj1-x230.google.com ([2a00:1450:4864:20::230])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rQ6Ws-00Gr37-1s
	for linux-phy@lists.infradead.org;
	Wed, 17 Jan 2024 14:04:33 +0000
Received: by mail-lj1-x230.google.com with SMTP id 38308e7fff4ca-2cddb11b2e2so25877411fa.1
        for <linux-phy@lists.infradead.org>; Wed, 17 Jan 2024 06:04:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1705500268; x=1706105068; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=7dcqXSk1rgw9DCHRa1hWGcJ3G/KhQaZBYpq+KKrzSJo=;
        b=iDDPvOpZhTaa2bvgf23cvETyU5r5+a48KqsByt5nnBs9bVSDmNqb8H6/HydtqDdvlE
         hlw4LTRieLgaUiejwmLCqMzCxz3xuYsFpfekptqJUxIPy7+3GFAW4FC9I3VXb5xjwpdJ
         RXkUfG2nl4if+/QnudPGqojf1Qs3EQ4oRU8cSCVCrz8rWLQSg1H4NWnuO7XkbAf70GnW
         Ikx589OTCrG3C6pTXGAMrnWeB97ipsDrGFpVsCv/RR9aJtb7v/xDEmXFF3HsTk60/Svc
         avWbTwhex/tq7gbBmABUh5lWfG4c+rocNcI+FX8+Vg6eVnBUCfR3Ws6w9weFmID8v4G0
         oYrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705500268; x=1706105068;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=7dcqXSk1rgw9DCHRa1hWGcJ3G/KhQaZBYpq+KKrzSJo=;
        b=Byf2FTy9f/hdziiFh68NkpU9+NlNLgz3qFK5rj9EHSHqseR+LqBwWirIYaECf8vMEP
         uhFO8GtSu9ZNzzqtmkkpCeUxCG37ScRv/yzFGlIJnLsWNDPq6IrzbXOTWevUbmyLKInH
         TncroqljC6vSP3ah/XR84tslzNyzShy2h98anh9+J1C5S+wWmFVTjj10YonFKNuAPmnZ
         WquS13w7mnFlB6sFBJ0t/VxhMLZx57rAjC0Vs8BXRG3qZkABlX9gucq7Hwp24H58fbht
         RrVnY3mpoB00JnQDebwcylrvNHMgqvwC88FMnOt45hsMit407mjZS/EHSu6wZwujmTIt
         94IA==
X-Gm-Message-State: AOJu0Yz2VIEqIV/jHfff1PfzGZJzYrtU+NFPnxfT5bgCWnxoURmXjYRi
	urHtFDPGEw5lZpBokQyFF+s/Mii60yp7HQ==
X-Google-Smtp-Source: AGHT+IEuBH7Be/ByM7oNW69Rh3Ic7MZMVCjGkmr1PVTFS8RbyK0x36/q7neSLjxPiiYI2J++HAsmkg==
X-Received: by 2002:a05:6512:3c3:b0:50e:50ee:f378 with SMTP id w3-20020a05651203c300b0050e50eef378mr4154155lfp.65.1705500268534;
        Wed, 17 Jan 2024 06:04:28 -0800 (PST)
Received: from umbar.lan ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id y29-20020a19915d000000b0050ec7a26420sm269711lfj.204.2024.01.17.06.04.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 17 Jan 2024 06:04:28 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Wed, 17 Jan 2024 16:04:27 +0200
Subject: [PATCH v2 6/6] arm64: dts: qcom: sm6115: declare VLS CLAMP
 register for USB3 PHY
MIME-Version: 1.0
Message-Id: <20240117-usbc-phy-vls-clamp-v2-6-a950c223f10f@linaro.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1146;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=NBmVgz6T2xRikadcDCIPLqU0vzAxugCzfckrrP5Hw/U=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBlp95nYEfTL0rbQyBlpAOWkMsd4n59kYFKHJuLn
 GfzbGxz+ZeJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZafeZwAKCRCLPIo+Aiko
 1cWwB/4gFZwZL1igYrmLmmj209CRZXEYzmyz+UjKzbyhB+uXefm6F/zqzK8OPoNMAFMiKo8LOud
 A8LhAnp9c2a2I3DQrUBylUeOy4Mjj6XJtiSdhl2MAjPjd2V44T56wWcz+OiF8Q0S8ElaMG/5PZx
 0AsRBdkplWPyAlljw0hTFJEpVftrjqOjcEVBczNx4nOJV4Ar9GAU+zCFamJ95w6RE9igY4S3RHm
 D/4CgMw9og9Im4zDnQ4os0zkIO19v43pZxrXRvc760GvUwl41qE/TaXaXurqgAE0kesoK/0iZh5
 xIEhQNm3Q/ADRsUDWYHgoA35SAxp3tyPdlt7C2n/SrjHRgfz
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240117_060430_616401_34EFACBA 
X-CRM114-Status: UNSURE (   7.66  )
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

The USB3 PHY on the SM6115 platform doesn't have built-in
PCS_MISC_CLAMP_ENABLE register. Instead clamping is handled separately
via the register in the TCSR space. Declare corresponding register.

Fixes: 9dd5f6dba729 ("arm64: dts: qcom: sm6115: Add USB SS qmp phy node")
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm6115.dtsi | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm6115.dtsi b/arch/arm64/boot/dts/qcom/sm6115.dtsi
index 160e098f1075..0c48ea444759 100644
--- a/arch/arm64/boot/dts/qcom/sm6115.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm6115.dtsi
@@ -614,6 +614,11 @@ tcsr_mutex: hwlock@340000 {
 			#hwlock-cells = <1>;
 		};
 
+		tcsr_regs: syscon@3c0000 {
+			compatible = "qcom,sm6115-tcsr", "syscon";
+			reg = <0x0 0x003c0000 0x0 0x40000>;
+		};
+
 		tlmm: pinctrl@500000 {
 			compatible = "qcom,sm6115-tlmm";
 			reg = <0x0 0x00500000 0x0 0x400000>,
@@ -879,6 +884,8 @@ usb_qmpphy: phy@1615000 {
 
 			#phy-cells = <0>;
 
+			qcom,tcsr-reg = <&tcsr_regs 0xb244>;
+
 			status = "disabled";
 		};
 

-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
