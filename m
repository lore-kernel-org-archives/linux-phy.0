Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6176BE95A6B
	for <linux-phy@archiver.kernel.org>; Sat,  7 Oct 2023 14:01:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+AjguD+iSGumYp00pK/q60ySVe5ZexKN9vVFqeXlyTA=; b=lwrVOhxpVgu4MH
	y7OdB+1u5UKvSBsEFSD+mW0tM2VVFnadiWPUm5zefGLfjLJYR3JLwVeasDusYWxvnt7nOSJ2+u5SO
	7P8plQTHyn8WwCul2mDhfVI4UxuPbWznNFrKGKjp/cbWtBtNsOk4t1yGX4+cAsfAQIaRzmRtxjpbN
	iJJHdVVL+6te+zZfEfOiVx6T0eKxYf5uFnWCGyiy20ZLkkgXi3ajFU86OGGF7kI3slmeXdc350WTG
	0J8pQxwL70NFJ6fjn5i4RqRg/osKaiqz0CKrix0tXpK7qAcW7xcCT4Wuvxkq4UdnGUPbws1lmyHFH
	P3sbyOnGXYVaWR4ZXn0A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qp7rl-007cnS-02;
	Sat, 07 Oct 2023 14:01:13 +0000
Received: from mail-wm1-x329.google.com ([2a00:1450:4864:20::329])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qp7rg-007ckK-2l
	for linux-phy@lists.infradead.org;
	Sat, 07 Oct 2023 14:01:10 +0000
Received: by mail-wm1-x329.google.com with SMTP id 5b1f17b1804b1-40651a72807so29936665e9.1
        for <linux-phy@lists.infradead.org>; Sat, 07 Oct 2023 07:01:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1696687267; x=1697292067; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=MWjelm02UwHQeFfJRYeGKYAqi5E/N/b99cz5nFc0Cp0=;
        b=Vwq7bfn14d/PVvV8ZcetC5J/iEC6DFBHC0nYuJ45JC4ZNa00Z1t49EFY9VxBzrpnC4
         e3bzhEFwY7c2ofudJzicxJPTT/QdeRO7aGCZlBoZND+ggwzc6cChNa6HKI5pOBdWCgIS
         atiJuuYYoi+oqDOSAlgxPR6V63xeKGrdgz4s9qvkzdfChKqPwGFMTI1pQ5+YRec0ifFM
         qyy3ybuO4scyAuOAExW4BnluhaaezhkvHWz5obZEDehqCDIgFY4ENsWnz9hTf+7AeopK
         Vy4XfXd+25uDqTUCdAzNN/F71MTRdrrWCB117mXgSVaC5K2Pws7tOedhrwkZZExGBsTQ
         nBsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696687267; x=1697292067;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=MWjelm02UwHQeFfJRYeGKYAqi5E/N/b99cz5nFc0Cp0=;
        b=AIz1glAPXYgKByvVL+6FuiI6qYme16eXu4ker8cSWkb2K306KnhznX8RL1GLvdbYj/
         9Y2cGRYzt53TwAngWloW7oG4Wp7BytpOwGiz+kHliwNndv/SeDTZtDEO5UVJ+5IzDCGq
         XtwlF0S7F9B0NMpv/cPk6T/CCHcOZiIU+Q3lMJKuvJVBN/XfK5Z6FAS67Qn5oVcbrZ0b
         7+ShQ6siEJqqnC5pU1px8F9WJGDtOJwez1Sb2IEVNoKO//GoWIZaiJUIPQhMmeY6+7h1
         Je59aroCis0Fbp+oaLCBHBKjb/gU5B4MrFzgD0ex3W+o6YKdYpXTG+kuI1iDPhe81Nfz
         Hung==
X-Gm-Message-State: AOJu0YxpYSG14aWnRcXQHOh+RgM+p2GmhZX4KDketKHSTheMxSMFy3J8
	D+G40ZamaT9VQFffLdbSaCI=
X-Google-Smtp-Source: AGHT+IGZ0NQ8IIxs8Y9r9no4/Wi61xyYKIjIooHZrkFtqfgEySaKP3SYREGDsFHBHsb06pFTotav4A==
X-Received: by 2002:adf:e90a:0:b0:321:6fb0:9a8b with SMTP id f10-20020adfe90a000000b003216fb09a8bmr9548205wrm.70.1696687267534;
        Sat, 07 Oct 2023 07:01:07 -0700 (PDT)
Received: from david-ryuzu.fritz.box ([77.22.112.104])
        by smtp.googlemail.com with ESMTPSA id q8-20020a05600000c800b0032415213a6fsm4332043wrx.87.2023.10.07.07.01.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 07 Oct 2023 07:01:07 -0700 (PDT)
From: David Wronek <davidwronek@gmail.com>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	Avri Altman <avri.altman@wdc.com>,
	Bart Van Assche <bvanassche@acm.org>,
	Joe Mason <buddyjojo06@outlook.com>
Cc: cros-qcom-dts-watchers@chromium.org,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-scsi@vger.kernel.org,
	hexdump0815@googlemail.com,
	~postmarketos/upstreaming@lists.sr.ht,
	phone-devel@vger.kernel.org,
	David Wronek <davidwronek@gmail.com>
Subject: [PATCH 7/7] arm64: dts: qcom: Add support for Xiaomi Redmi Note 9S
Date: Sat,  7 Oct 2023 15:58:31 +0200
Message-ID: <20231007140053.1731245-8-davidwronek@gmail.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20231007140053.1731245-1-davidwronek@gmail.com>
References: <20231007140053.1731245-1-davidwronek@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231007_070108_897135_7DF65B2E 
X-CRM114-Status: GOOD (  14.35  )
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

From: Joe Mason <buddyjojo06@outlook.com>

Add a device tree for the Xiaomi Redmi Note 9S (curtana) phone, based on
sm7125-xiaomi-common.dtsi.

Signed-off-by: Joe Mason <buddyjojo06@outlook.com>
Signed-off-by: David Wronek <davidwronek@gmail.com>
---
 arch/arm64/boot/dts/qcom/Makefile                |  1 +
 .../boot/dts/qcom/sm7125-xiaomi-curtana.dts      | 16 ++++++++++++++++
 2 files changed, 17 insertions(+)
 create mode 100644 arch/arm64/boot/dts/qcom/sm7125-xiaomi-curtana.dts

diff --git a/arch/arm64/boot/dts/qcom/Makefile b/arch/arm64/boot/dts/qcom/Makefile
index d6cb840b7050..57974fb0c580 100644
--- a/arch/arm64/boot/dts/qcom/Makefile
+++ b/arch/arm64/boot/dts/qcom/Makefile
@@ -207,6 +207,7 @@ dtb-$(CONFIG_ARCH_QCOM)	+= sm6125-sony-xperia-seine-pdx201.dtb
 dtb-$(CONFIG_ARCH_QCOM)	+= sm6125-xiaomi-laurel-sprout.dtb
 dtb-$(CONFIG_ARCH_QCOM)	+= sm6350-sony-xperia-lena-pdx213.dtb
 dtb-$(CONFIG_ARCH_QCOM)	+= sm6375-sony-xperia-murray-pdx225.dtb
+dtb-$(CONFIG_ARCH_QCOM)	+= sm7125-xiaomi-curtana.dtb
 dtb-$(CONFIG_ARCH_QCOM)	+= sm7125-xiaomi-joyeuse.dtb
 dtb-$(CONFIG_ARCH_QCOM)	+= sm7225-fairphone-fp4.dtb
 dtb-$(CONFIG_ARCH_QCOM)	+= sm8150-hdk.dtb
diff --git a/arch/arm64/boot/dts/qcom/sm7125-xiaomi-curtana.dts b/arch/arm64/boot/dts/qcom/sm7125-xiaomi-curtana.dts
new file mode 100644
index 000000000000..12f517a8492c
--- /dev/null
+++ b/arch/arm64/boot/dts/qcom/sm7125-xiaomi-curtana.dts
@@ -0,0 +1,16 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright (c) 2023, Joe Mason <buddyjojo06@outlook.com>
+ */
+
+/dts-v1/;
+
+#include "sm7125-xiaomi-common.dtsi"
+
+/ {
+	model = "Xiaomi Redmi Note 9S";
+	compatible = "xiaomi,curtana", "qcom,sm7125";
+
+	/* required for bootloader to select correct board */
+	qcom,board-id = <0x20022 1>;
+};
-- 
2.42.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
