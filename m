Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AF190C47DDC
	for <linux-phy@archiver.kernel.org>; Sun, 21 Jan 2024 16:59:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Nf4WoEIws0Bea0pAC46VswjataiiwkV8FNagguQarn4=; b=Y1WjtjqWCToGmo
	1NyxTdtquzcavq5oCZ1j8gt79zAsqSasPp+cykvgQjpc+csqE5UXRMCy+tiy9l0AjOZWouDNofiH/
	z8YgbxU/ZEXEnxmemoHrooT+x3AF3jQ64Qipx/ZtofpaLVby5G1/MQRFs7As4Ymj9q+h54V5YZTm6
	8OrTbeijzvPBn1nFUPn4QZC5O/+2lFajg6RpF/kWcMyxpS14HXDWzNvxnB+DF79EYZB36AhKB/+F7
	9iJZdl7V82BwkEUYH+2tJXfk1NnIRgqd6R/qT/ec/LvikRUBCQ8bFcdUfgW2hex0So62PP2Yqtbdy
	jrdT1t4r0mD45eakpBCQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rRbAQ-009m0W-0w;
	Sun, 21 Jan 2024 16:59:30 +0000
Received: from mail-wm1-x329.google.com ([2a00:1450:4864:20::329])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rRbAN-009lx2-2D
	for linux-phy@lists.infradead.org;
	Sun, 21 Jan 2024 16:59:28 +0000
Received: by mail-wm1-x329.google.com with SMTP id 5b1f17b1804b1-40e60e135a7so24339315e9.0
        for <linux-phy@lists.infradead.org>; Sun, 21 Jan 2024 08:59:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1705856364; x=1706461164; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=gK5nK5PwrUn57SfZW8dbKzVdKzftzCnA6l6yN9PxC7A=;
        b=MeoGo6tIA2gG4d340UKa4LbiuhgBc0Ys4hSrHaqNZdOoqrcoUnxXlK9gqISrgwgAMn
         FOKQ73Oq3EQXI122Onc5e5ALnc5AThtHnCg85fmZQJtNy/UTDdI48eOYP4uqVWodaiQC
         eZyERhe5CFxhgMCEnsqxNhBemoPGVVjwBFi76wMOcslTDRMOhCRsCnWcK2Nm5BXGhw5b
         2L00x9vw6Bjjrxa+alYpPOtdRAgmGS8M+nfzWRj3C0osKNOWyDV59B3D2MshjSLB8GVa
         zLlaS3tDDevA9oNIpLApHk908dFr7WFZgJiR78uc/lhQmtsJgVi5fMGt1FTvPGvP3ud3
         lWCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705856364; x=1706461164;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=gK5nK5PwrUn57SfZW8dbKzVdKzftzCnA6l6yN9PxC7A=;
        b=Zn3/SQPZFW1Mz9xfUkikz2UIa49pQnSybi+VDZnJJLKNsXI2PQX4XgDJn1R2S3Zrn5
         ly8HyDJ5sPuTRhgyvX2tGDqhna2Vhvt5uZfZqjGRj3rJp02L+wR/X+0UuuaYHUt6JGCZ
         hMcUquO2TIEslDGqgAXqo4odxHpm5tvkInaZUa1h2+bHDrQwlTD7DdtrOEHGBLWeiABt
         0KhmeZBHtLWIxuCp3TjOdavuOG9/9pf5HE+4DIfQ3mxy9667c7I59jNHwrER4zugbA2Q
         YKat6cvDwRXF5aWOz4pLuJiTJuZZgVQ0Z74658+gZ/jf/WuPsJwWSgKnhYvXjnKG6b6M
         pcxg==
X-Gm-Message-State: AOJu0YxaxnWYP5SXA5PepBX9tpcYYxVRZLPkuAxAEKgE5kiohLEZpEt9
	v1rPR6Yt+Vv90EOILEBob67tMxx2/G4zKeQcpsrD4KUYlex/fF0E
X-Google-Smtp-Source: AGHT+IFsVH6k6ajfNQ3Ngf6ihWQLiw+5zO5HU7ToHaJReIYrKn3JxVQHaGOVUIXkWbhe2r1Bm4y/AA==
X-Received: by 2002:adf:e58d:0:b0:337:c4d0:3ce9 with SMTP id l13-20020adfe58d000000b00337c4d03ce9mr1889216wrm.87.1705856363900;
        Sun, 21 Jan 2024 08:59:23 -0800 (PST)
Received: from david-ryuzu.localdomain ([178.26.111.181])
        by smtp.googlemail.com with ESMTPSA id q5-20020adff505000000b00339214d70b5sm6541115wro.85.2024.01.21.08.59.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 21 Jan 2024 08:59:23 -0800 (PST)
From: David Wronek <davidwronek@gmail.com>
Date: Sun, 21 Jan 2024 17:57:48 +0100
Subject: [PATCH v4 8/8] arm64: dts: qcom: Add support for Xiaomi Redmi Note
 9S
MIME-Version: 1.0
Message-Id: <20240121-sm7125-upstream-v4-8-f7d1212c8ebb@gmail.com>
References: <20240121-sm7125-upstream-v4-0-f7d1212c8ebb@gmail.com>
In-Reply-To: <20240121-sm7125-upstream-v4-0-f7d1212c8ebb@gmail.com>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, 
 Herbert Xu <herbert@gondor.apana.org.au>, 
 "David S. Miller" <davem@davemloft.net>, Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>, 
 Alim Akhtar <alim.akhtar@samsung.com>, Avri Altman <avri.altman@wdc.com>, 
 Bart Van Assche <bvanassche@acm.org>, Andy Gross <agross@kernel.org>, 
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, 
 cros-qcom-dts-watchers@chromium.org
Cc: linux-arm-msm@vger.kernel.org, linux-crypto@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-scsi@vger.kernel.org, linux-phy@lists.infradead.org, 
 ~postmarketos/upstreaming@lists.sr.ht, David Wronek <davidwronek@gmail.com>, 
 Joe Mason <buddyjojo06@outlook.com>
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=ed25519-sha256; t=1705856354; l=1769;
 i=davidwronek@gmail.com; s=20240121; h=from:subject:message-id;
 bh=sSzRKjO93UpTlJ8GvJQsTstGtWQctFuueHqgHmEaLmI=;
 b=KrhjqRs6MaRVLwt8z7GQUu3O8KHdE2udwZmCwSHa9BL7BkdLOzrrS2oaMXY4HjKggisfo+hCq
 zVjPjqKqSTMCv+Zem4h0Jtp8mBbAA6H2PjTlO1wTwkBIfA2u1sKOQjF
X-Developer-Key: i=davidwronek@gmail.com; a=ed25519;
 pk=PJIYyFK3VrK6x+9W6ih8IGSJ5dxRXHiYay+gG1qQzqs=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240121_085927_722414_7024CF98 
X-CRM114-Status: GOOD (  12.93  )
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

Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>
Signed-off-by: Joe Mason <buddyjojo06@outlook.com>
Signed-off-by: David Wronek <davidwronek@gmail.com>
---
 arch/arm64/boot/dts/qcom/Makefile                  |  1 +
 arch/arm64/boot/dts/qcom/sm7125-xiaomi-curtana.dts | 16 ++++++++++++++++
 2 files changed, 17 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/Makefile b/arch/arm64/boot/dts/qcom/Makefile
index 39889d5f8e12..2e6984bbbb83 100644
--- a/arch/arm64/boot/dts/qcom/Makefile
+++ b/arch/arm64/boot/dts/qcom/Makefile
@@ -210,6 +210,7 @@ dtb-$(CONFIG_ARCH_QCOM)	+= sm6125-sony-xperia-seine-pdx201.dtb
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
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
