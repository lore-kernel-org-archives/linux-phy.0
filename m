Return-Path: <SRS0=m7K2=OS=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB1D2C433EF
	for <linux-phy@archiver.kernel.org>; Tue, 28 Sep 2021 02:20:33 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 72B3261260
	for <linux-phy@archiver.kernel.org>; Tue, 28 Sep 2021 02:20:33 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 72B3261260
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=linaro.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DQWeKZEPYYmVyuDuk2HCw+a358uyINj7eF3/kRt8enw=; b=on3dDsQUMegFr4
	d2rRbvTZg56BbtUUiw6Kg5Q3tXdUtankka1d9rO6U3l/rriF9Ye+JflrqZInTo3C8xZ5YE3352Anp
	i58ZDp7iv2aW2SonwP9YV8BamcTv6d6F0kkaCyRHMO0T3YumKI14cRROwmBOVL3Edb/XIVyyedZzg
	u+tFsK0OdreaHcSbMOWr9gGbVnbj6+uz/XdeQqwfIM0R1ymERrGX4kigZGcrFsfkfmeOXCeQtXqPu
	RR5xG7iV2ng26EukBkSHHwzvkkD9IcXw2cuxSAn6N4835d4rh1kqY4A4qbSbWjFQpiMIGMj4ABp64
	h21kM8dkh4GrnOsmfRbg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mV2jR-005Ff2-1h; Tue, 28 Sep 2021 02:20:33 +0000
Received: from mail-pf1-x435.google.com ([2607:f8b0:4864:20::435])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mV2jO-005FeC-Q3
 for linux-phy@lists.infradead.org; Tue, 28 Sep 2021 02:20:32 +0000
Received: by mail-pf1-x435.google.com with SMTP id y8so17607867pfa.7
 for <linux-phy@lists.infradead.org>; Mon, 27 Sep 2021 19:20:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=KEllPcS5Xq9Pyinz9uhBulFqCz5TInIHturtjFlsWfM=;
 b=T87rTQzEU62NuU3FOhvPREGW7/nPgaG5Bzo+GXN2I0O/jz2fHahkOXybbH4MdRKvCP
 WJEjY8UZ7c3qBpCP7kfotW2esh3XCYpDqtX+BxtU/rBeUaUMgJO7N6DBYuhBoG4deGjt
 qGFLAJW3fjE1vFb5YF3JySkjjDRQew9M5nF6lE+Q/o7SBJuhhJv93Jzw3snGguRos0dO
 RsIXhZdioVhosWYH4Ov0asxioE4XHit85mCroKr3NYGgNBij1/tw49ogg3VmoeD8EcwU
 ZL4Zl9FytxEunl+sr8hsbQKXEsUYYKtJvzESv/tkQZf1mLLWSYo5ylP0QezLY2wle8b9
 sq3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=KEllPcS5Xq9Pyinz9uhBulFqCz5TInIHturtjFlsWfM=;
 b=pxXUE5y3aKGX10aIRzkx3l/e97uft0luRbMb95Sk7L2GlXDkTgcH9CgzRWaJJWIQ3k
 VRFa6UpGftkimSDrB6F/187tqGy0pgeKtORgfxHfb+Xt8uNOryODuCALkJ4pnisZMd7Z
 67TH8x9+eFSumrJHexgUovCp9uUgtVfiI+wAOeq1grkk9kYdYoaCVp7CoFOhKm7sB52l
 Gl1aFOjEQ97BAGLiWDxE154zX+fkkgfeuUtL11dJgejBOdjqEY7njiqHDMA42KeoiCWQ
 prLCD0umy7eHU9052e9ihcTh8okOMcJY/T2M9SY6D5VO9LIh3TqOgvpKu10zvKwNnji+
 Q/MA==
X-Gm-Message-State: AOAM530gMFJ+MzWy+S/guxI2e+FjaSFOinr+gsySXtz+sikYfoeuSpzV
 3FUyjMpARkR1G21vlrr/I8JYcw==
X-Google-Smtp-Source: ABdhPJy4QvjIvE5bquuYcb7fMbqGz4cZlG5kaauiiTmBYpbUf2ig1Y5Xi+Wqm45331UsVXUZzzKj+Q==
X-Received: by 2002:a62:4d42:0:b0:44b:3078:7387 with SMTP id
 a63-20020a624d42000000b0044b30787387mr2859388pfb.27.1632795630041; 
 Mon, 27 Sep 2021 19:20:30 -0700 (PDT)
Received: from localhost.localdomain (80.251.214.228.16clouds.com.
 [80.251.214.228])
 by smtp.gmail.com with ESMTPSA id u12sm19178729pgi.21.2021.09.27.19.20.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 27 Sep 2021 19:20:29 -0700 (PDT)
From: Shawn Guo <shawn.guo@linaro.org>
To: Vinod Koul <vkoul@kernel.org>, Bjorn Andersson <bjorn.andersson@linaro.org>
Cc: AngeloGioacchino Del Regno <angelogioacchino.delregno@somainline.org>,
 Konrad Dybcio <konrad.dybcio@somainline.org>,
 Jeffrey Hugo <jeffrey.l.hugo@gmail.com>,
 Jami Kettunen <jamipkettunen@gmail.com>, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 linux-kernel@vger.kernel.org, Shawn Guo <shawn.guo@linaro.org>
Subject: [PATCH v2 3/3] arm64: dts: qcom: Add missing vdd-supply for QUSB2 PHY
Date: Tue, 28 Sep 2021 10:20:02 +0800
Message-Id: <20210928022002.26286-4-shawn.guo@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210928022002.26286-1-shawn.guo@linaro.org>
References: <20210928022002.26286-1-shawn.guo@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210927_192030_869052_CC8AF481 
X-CRM114-Status: GOOD (  10.04  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

QUSB2 PHY requires vdd-supply for digital circuit operation.  Add it for
platforms that miss it.

Signed-off-by: Shawn Guo <shawn.guo@linaro.org>
---
 arch/arm64/boot/dts/qcom/apq8096-db820c.dtsi           | 2 ++
 arch/arm64/boot/dts/qcom/msm8996-sony-xperia-tone.dtsi | 1 +
 arch/arm64/boot/dts/qcom/msm8998-clamshell.dtsi        | 1 +
 arch/arm64/boot/dts/qcom/msm8998-oneplus-common.dtsi   | 1 +
 4 files changed, 5 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/apq8096-db820c.dtsi b/arch/arm64/boot/dts/qcom/apq8096-db820c.dtsi
index 51e17094d7b1..d9826ce27e50 100644
--- a/arch/arm64/boot/dts/qcom/apq8096-db820c.dtsi
+++ b/arch/arm64/boot/dts/qcom/apq8096-db820c.dtsi
@@ -230,6 +230,7 @@
 &hsusb_phy1 {
 	status = "okay";
 
+	vdd-supply = <&vreg_l28a_0p925>;
 	vdda-pll-supply = <&vreg_l12a_1p8>;
 	vdda-phy-dpdm-supply = <&vreg_l24a_3p075>;
 };
@@ -237,6 +238,7 @@
 &hsusb_phy2 {
 	status = "okay";
 
+	vdd-supply = <&vreg_l28a_0p925>;
 	vdda-pll-supply = <&vreg_l12a_1p8>;
 	vdda-phy-dpdm-supply = <&vreg_l24a_3p075>;
 };
diff --git a/arch/arm64/boot/dts/qcom/msm8996-sony-xperia-tone.dtsi b/arch/arm64/boot/dts/qcom/msm8996-sony-xperia-tone.dtsi
index 507396c4d23b..61ea6d4ef8ac 100644
--- a/arch/arm64/boot/dts/qcom/msm8996-sony-xperia-tone.dtsi
+++ b/arch/arm64/boot/dts/qcom/msm8996-sony-xperia-tone.dtsi
@@ -184,6 +184,7 @@
 &hsusb_phy1 {
 	status = "okay";
 
+	vdd-supply = <&pm8994_l28>;
 	vdda-pll-supply = <&pm8994_l12>;
 	vdda-phy-dpdm-supply = <&pm8994_l24>;
 };
diff --git a/arch/arm64/boot/dts/qcom/msm8998-clamshell.dtsi b/arch/arm64/boot/dts/qcom/msm8998-clamshell.dtsi
index 125d7923d713..4f823974559b 100644
--- a/arch/arm64/boot/dts/qcom/msm8998-clamshell.dtsi
+++ b/arch/arm64/boot/dts/qcom/msm8998-clamshell.dtsi
@@ -102,6 +102,7 @@
 &qusb2phy {
 	status = "okay";
 
+	vdd-supply = <&vreg_l1a_0p875>;
 	vdda-pll-supply = <&vreg_l12a_1p8>;
 	vdda-phy-dpdm-supply = <&vreg_l24a_3p075>;
 };
diff --git a/arch/arm64/boot/dts/qcom/msm8998-oneplus-common.dtsi b/arch/arm64/boot/dts/qcom/msm8998-oneplus-common.dtsi
index 0f5c7828a901..243f4ee5da8c 100644
--- a/arch/arm64/boot/dts/qcom/msm8998-oneplus-common.dtsi
+++ b/arch/arm64/boot/dts/qcom/msm8998-oneplus-common.dtsi
@@ -260,6 +260,7 @@
 &qusb2phy {
 	status = "okay";
 
+	vdd-supply = <&vreg_l1a_0p875>;
 	vdda-pll-supply = <&vreg_l12a_1p8>;
 	vdda-phy-dpdm-supply = <&vreg_l24a_3p075>;
 };
-- 
2.17.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
