Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4026AC3DA5D
	for <linux-phy@archiver.kernel.org>; Mon, 15 Jul 2024 13:09:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tQCHrfcmVadajqILByxUfUcOVCpFiXupZhm6OG5Mtvk=; b=im1WffdznNl5yj
	BuQYUzNJv4hFOfvDM/EaxDYx+6pwa6tJTfqsCkqKMkS7g5RGmqZsjtc08zKamTXb/jaXVYSdis+uy
	RIjPOeQhwZ8pGCQ0okJXYYSTRmG1twY7d4VOCkner9fw/+Xf7118iHHFmbHA3PHIwRGv/44Il54VD
	9hJlAaOwFIgQmW+089gkjqgMgC5kjGFm/xJOvXNBPgYfKfriH2ravrNnPmwacn27QONUoBMdiz56T
	z0ikRfliqNez4x5HarYBASE89m0d1oTGn0iD876uLuSqz+tZ2k8Y47jgebxQ0aoTsIp8qTW7z5rYf
	ceJSvqNjZ9B443NDVEsg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sTLS9-000000079gF-3OoG;
	Mon, 15 Jul 2024 13:09:17 +0000
Received: from mail-wr1-x435.google.com ([2a00:1450:4864:20::435])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sTLS7-000000079fE-1sP8
	for linux-phy@lists.infradead.org;
	Mon, 15 Jul 2024 13:09:16 +0000
Received: by mail-wr1-x435.google.com with SMTP id ffacd0b85a97d-3678fbf4a91so2218609f8f.1
        for <linux-phy@lists.infradead.org>; Mon, 15 Jul 2024 06:09:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1721048954; x=1721653754; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=cg1g1741KIeUKYb9m11yGc/6n/X3TYaI+dSIEkjSgkY=;
        b=vhA8EkebE/WOltLhlVSwvyHaWbN7ZLjtW63d9xTzt9n1hpPoj+kFeSjG67p04mX7Sk
         u5m9fQvGksS2mGxATLF18isXKCBrEFp67uV4t29zX3v3wDYqeD4v9Xf5nh8NVu31Fo+O
         q40mMQW88tsBtKIoN0KQcuTSQsga7ngOPl3JlX0h4x5uQ0iPYpqhIMAH0CqxCwMrExPY
         OP7ujUfrNlSzQx/JXoOiu0RNRi9mIbT/vEOPQG220STt2MZSgBF1f0a2hn6Wvq4us1Hb
         cL7nSKmjWiipUImnsV30P2HdRlQVeq2/EVEIVkozfyqdUpVIzH1fBjLdlteeEtwxDe+3
         w4Ww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721048954; x=1721653754;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=cg1g1741KIeUKYb9m11yGc/6n/X3TYaI+dSIEkjSgkY=;
        b=ghWPmIP/LlMNwyD51rMaKNCqj1WCrYTcyTWYrYxBy2dID0pOlWYyZGWPZkCEjb+7I5
         aVWnSOlztaHXXa1fjRyAv8uRDv9APCneozXIkkEKic/2KdzAHWEUsgHvj5HKYwggmopV
         zJmspZ3kZBti59ztKzG7IZK20TCN7iebH0/yg6jMUxVWCaSBm1qcVf1+GVN50GXzvVVg
         vT8SLJuSYHkgx5kXV9pX5pMcSWh3k3FgF8wThcj7iF3m+44OfUiBeu1t6J5cRulGlbFJ
         jz2I0pWLfVMHvmD9A4Ed6xjHA9Q0050FGEFf+q0tJ+5x3qpvszziYJtJ+3tJhjwMH7WW
         qvbw==
X-Forwarded-Encrypted: i=1; AJvYcCWINEx66LxIDsItqwNMbv92ikpIR9knon4Ftmlcz6mtdBX0XE66iizjm+zNzmB9c5ZL6Meje5ViUhL3XzqEvoFPAnvhTgGCmCTf56q6AA==
X-Gm-Message-State: AOJu0YzZTt3dXFgLiYk5b4Vo/3A4pNBSreALlfL8vKfPA8PqclUgmYR3
	Ymvmx3QPRHxmAVo2SFQsf8kpS52hsdASmHAd58c2D2uHdfMngg07fKhWrdhu+dk=
X-Google-Smtp-Source: AGHT+IHTCA8ycbg+4n5AdBnrvp1TwQNdgC6l8a55ueOh87lc552vC36yNGKeIdFpKvE0CAMgsrh4ew==
X-Received: by 2002:a5d:4dc8:0:b0:367:91d6:e12e with SMTP id ffacd0b85a97d-367ceaca9e9mr12859126f8f.44.1721048954235;
        Mon, 15 Jul 2024 06:09:14 -0700 (PDT)
Received: from rayyan-pc.broadband ([2a0a:ef40:ee7:2401:197d:e048:a80f:bc44])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3680daccdffsm6417766f8f.54.2024.07.15.06.09.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Jul 2024 06:09:13 -0700 (PDT)
From: Rayyan Ansari <rayyan.ansari@linaro.org>
To: devicetree@vger.kernel.org,
	linux-arm-msm@vger.kernel.org
Cc: Rayyan Ansari <rayyan.ansari@linaro.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org,
	Rob Herring <robh@kernel.org>,
	Vinod Koul <vkoul@kernel.org>
Subject: [PATCH 2/2] ARM: dts: qcom: apq8064: drop reg-names on sata-phy node
Date: Mon, 15 Jul 2024 14:01:07 +0100
Message-ID: <20240715130854.53501-3-rayyan.ansari@linaro.org>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240715130854.53501-1-rayyan.ansari@linaro.org>
References: <20240715130854.53501-1-rayyan.ansari@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240715_060915_505719_6D4BF4BD 
X-CRM114-Status: UNSURE (   9.58  )
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

Remove the reg-names property in the sata-phy node as it is not present
in the bindings and is not required by the driver.

Signed-off-by: Rayyan Ansari <rayyan.ansari@linaro.org>
---
 arch/arm/boot/dts/qcom/qcom-apq8064.dtsi | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm/boot/dts/qcom/qcom-apq8064.dtsi b/arch/arm/boot/dts/qcom/qcom-apq8064.dtsi
index 769e151747c3..81cf387e1817 100644
--- a/arch/arm/boot/dts/qcom/qcom-apq8064.dtsi
+++ b/arch/arm/boot/dts/qcom/qcom-apq8064.dtsi
@@ -871,7 +871,6 @@ sata_phy0: phy@1b400000 {
 			compatible = "qcom,apq8064-sata-phy";
 			status = "disabled";
 			reg = <0x1b400000 0x200>;
-			reg-names = "phy_mem";
 			clocks = <&gcc SATA_PHY_CFG_CLK>;
 			clock-names = "cfg";
 			#phy-cells = <0>;
-- 
2.45.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
