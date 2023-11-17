Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 374C1C5AD4C
	for <linux-phy@archiver.kernel.org>; Fri, 17 Nov 2023 20:17:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MgPtnBeaSO/NFsE3UKadoREALIli1twvdhOiVMwaiY4=; b=unfk7Eic4Nvp9G
	/1tPL33x8yOYtn648FqaNAL4H38i+15WVaEN/T2x2WugRCZn8ZKW2WwzdiKw0X+YW2069gKV7Qmvn
	RLJFhNeY0CD5cTa6GXNaCmh5kp7edXVn6nvK+fg9wFsLG6sZJjA+YrAjyMET86stydCbj9XaF6S1b
	KMI/O8veZv3f6InCbuf/zhInxqn632S0Ag4CX4fxm6QHLXHFVNfox30AVvnAfh8qAYJ9aG5VS/j70
	BxGBXwXrRHePAMaA6zZxNC9Qoh8pHYKl0nc1zp5kun1LNdY9jUJxuyS6PuqmVxgbPeSD9wt8uB+po
	AiIrFg6sdZQb8mHKLmgQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r45Hl-007DpJ-2w;
	Fri, 17 Nov 2023 20:17:53 +0000
Received: from mail-ed1-x52d.google.com ([2a00:1450:4864:20::52d])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r45Hj-007DmW-0b
	for linux-phy@lists.infradead.org;
	Fri, 17 Nov 2023 20:17:52 +0000
Received: by mail-ed1-x52d.google.com with SMTP id 4fb4d7f45d1cf-53f9af41444so3447356a12.1
        for <linux-phy@lists.infradead.org>; Fri, 17 Nov 2023 12:17:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1700252269; x=1700857069; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=vC+himnz38l/KoIV2K7+BOXv6I9H6nNXMdtkGXbKeCU=;
        b=HqjckG1O09k/HHmaNyBPUoI5oq9vcdn+//5CTdqgAEO1UoMjYV95UqSWmtC+PXxEUF
         TUwe76eYeDeUO4/qdLKFS48NGFxCXNymgFYMbstKt+i2nR8BJQS7E/exd/Q5YPUGh/j/
         aWkv1RgJf3SryNOHSKyyJ5CYLRpLQD3FtjHWEZmLuejXNhufV7dMPruIN3AP1zfPzSoF
         rQSYYFSxZEi8l6R+tN2J/w3lcYoQ4fMo7rmst5Q6bulmpfezj4OninxL0WMAUkkdxFnl
         riEeMfUueuG+Jc5L4vpQx2DupLSTaewX4N5A9VzGKv6RJh+maUCr13atiqhgjZisObgR
         Iarw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700252269; x=1700857069;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=vC+himnz38l/KoIV2K7+BOXv6I9H6nNXMdtkGXbKeCU=;
        b=T7qnTKjDHSt+cPQzKGqj/anWQrOkpqS8UsJEkZLZZ8ykHY7BrGNkgs9AuJEv2unYpT
         MX2lX5LPfvbl+4g+HVaVImzJghCQT04X5U6qIyK6jCwIREj3hpT7xNre6/yajG+6EeWX
         FUPPvVjiip/MZ8PLC22ImVMDTr7gCMz8K+fLc2Qxlj6h/vvS9LGVRZHVE3XAbxU/O/1M
         1iV2tdqbFrio5igOytOC8YgnSTWyvFpSG6ZJ5znjJSzv40EYGOwdR2UVZ6DKWQv9JRnq
         yZZrTeR3W6+sHxLpFb/rTrXIznmBiz5aMDGYg8d+rDTOSqUioUJ30FmRKGzOldwebIBn
         IMFQ==
X-Gm-Message-State: AOJu0Yy4ndJ0B2/47gPc2sE8MXYvl0PlJhG0kOEkqcWeM7apE/NztR+6
	Ez0jtA3brLLs3IvRKgW4Nrk=
X-Google-Smtp-Source: AGHT+IGCNBi4gWuvRE++iwdLWuYcOU7PqdFx0Dwq+NJsFkMmZzQ+CsPzHq5WwKF5sfxu4plbJLWyHA==
X-Received: by 2002:a17:907:9056:b0:9f8:f6bd:2952 with SMTP id az22-20020a170907905600b009f8f6bd2952mr134480ejc.32.1700252268786;
        Fri, 17 Nov 2023 12:17:48 -0800 (PST)
Received: from david-ryuzu.fritz.box ([188.195.169.6])
        by smtp.googlemail.com with ESMTPSA id e7-20020a1709062c0700b0099d804da2e9sm1130630ejh.225.2023.11.17.12.17.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 17 Nov 2023 12:17:48 -0800 (PST)
From: David Wronek <davidwronek@gmail.com>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Herbert Xu <herbert@gondor.apana.org.au>,
	"David S . Miller" <davem@davemloft.net>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	Avri Altman <avri.altman@wdc.com>,
	Bart Van Assche <bvanassche@acm.org>,
	Joe Mason <buddyjojo06@outlook.com>,
	hexdump0815@googlemail.com
Cc: cros-qcom-dts-watchers@chromium.org,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-crypto@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-scsi@vger.kernel.org,
	~postmarketos/upstreaming@lists.sr.ht,
	phone-devel@vger.kernel.org,
	David Wronek <davidwronek@gmail.com>
Subject: [PATCH v2 8/8] arm64: dts: qcom: Add support for Xiaomi Redmi Note 9S
Date: Fri, 17 Nov 2023 21:08:40 +0100
Message-ID: <20231117201720.298422-9-davidwronek@gmail.com>
X-Mailer: git-send-email 2.42.1
In-Reply-To: <20231117201720.298422-1-davidwronek@gmail.com>
References: <20231117201720.298422-1-davidwronek@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231117_121751_222481_08F45B25 
X-CRM114-Status: GOOD (  14.50  )
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
2.42.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
