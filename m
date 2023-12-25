Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2D838C3DA6E
	for <linux-phy@archiver.kernel.org>; Mon, 25 Dec 2023 12:03:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RJrvc/1ubUMlqTcu1T4gRqZlzcu5OmRl1puViA3GKCQ=; b=zmXRM9IR9NqbAO
	1P60nCeqwyIgr7s3D/7GclooJrRA+HoSqxL47n39i1WdFAvTCqyVg0ush1J7yNBY+jFuGOKdOfsWt
	bdi+XKpg3VHegj1h79Mm7B07YygVdHN3GGjzncEKIWxHxLToAV3INw5ZwR6/A2EsjAWsLKHGD/l+N
	QPOromZ+3oSh6q7QNvu7a/XUsqWNLyFIghUYLJS2lqD6vjs1lWyUYCrPpAWXBuE4WY08dpf6QSAfc
	tCz+rQgMI4yVf8OQm61ugrq8Q7abFpxy3RVXBTC8i0HpMvHO6WDaT66PUNqFj4piGOU/xFCwGVM3O
	6ngXs2umPyyYRKTQbTig==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rHjgS-00Amza-2t;
	Mon, 25 Dec 2023 12:03:48 +0000
Received: from mail-wm1-x331.google.com ([2a00:1450:4864:20::331])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rHjgP-00AmvD-0y
	for linux-phy@lists.infradead.org;
	Mon, 25 Dec 2023 12:03:46 +0000
Received: by mail-wm1-x331.google.com with SMTP id 5b1f17b1804b1-40d4a7f0d17so25968275e9.1
        for <linux-phy@lists.infradead.org>; Mon, 25 Dec 2023 04:03:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1703505824; x=1704110624; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=aBQy6vgMSA/KrUei65+R4AvaCjiClzbb1i54FcWf2Kc=;
        b=UVy/KzpOqlJ3aq/DFSzYZoee44Yvn5wuYA9mJQa385Y5hy6dD4Da1Hqu0TJKX3ZGxs
         UT6WkqgJvD8QzeAVpPpCJylUY0GC4r6xtBbWOOnEaWIzcEPFTqGDdoGlkoBKZuApP8o7
         MUCNKOVlx2jyrbRxKeFpWxLKv9sRf9Rn9gqEyqvajz4x12jpYeNNAGlRgO8Hg11CG/aK
         vypljNloLkEjg4FMb+K52zH8UV9BsZBTLgLv7m8ocQfeYhVl1BpmBVITfJ73oPRf2Slz
         jDneWS7BYYYqswJzTfCajAWImjJEkH6K0SnzATM49ZNQ0R/J43qsCURjc45UMoLgSLay
         xQPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703505824; x=1704110624;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=aBQy6vgMSA/KrUei65+R4AvaCjiClzbb1i54FcWf2Kc=;
        b=GdP2VnneImAHcP4N76bclRZi8dj93NA4s9qNmKwlIC9dTlMRPXi+Ffa5bELb0uvmR+
         XxM/1pJuCLq0DfcidgAmUkenUOWV6VM7ASQsDIBFrTQnoborTRRViNoLXqqXTyzLn2am
         IJAEnsLQwsGt74sSQye49no6NXM/bmx1cjiaATvVFf3JFLBSwOUxI6Fs5sirrrv5UF+q
         ETJ0ipgCpLm7gZLNHaFfvnW0xZrKACWR2T990EqQLDwo0pjTolcLTSUA9lF7m7GNcM/e
         nl5kcGwvRRoFXNZTvLt8kPrhz1XD1vlDNDQw60k+gySjzTZYyheAxbm+B+/4aAzuchUL
         M2qw==
X-Gm-Message-State: AOJu0Yx0tiuUp6di5MXi+MUOzqc7vZcH9hg26xBtW7teIr3BtHWzp4Ei
	HX8iZuR+Vc2ZTDusK3Vimb0=
X-Google-Smtp-Source: AGHT+IFqYujQM7qzRs2hqVvPlvkA+1xWN0S8j43BWOm5G7302VwXXV0bEQzIw5oXkTC1ANPIxeyy+A==
X-Received: by 2002:a05:600c:2203:b0:40d:33eb:d46a with SMTP id z3-20020a05600c220300b0040d33ebd46amr3045684wml.141.1703505823841;
        Mon, 25 Dec 2023 04:03:43 -0800 (PST)
Received: from david-ryuzu.fritz.box ([178.26.111.208])
        by smtp.googlemail.com with ESMTPSA id 14-20020a05600c020e00b0040d23cea7bcsm6349456wmi.1.2023.12.25.04.03.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Dec 2023 04:03:43 -0800 (PST)
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
Subject: [PATCH v3 8/8] arm64: dts: qcom: Add support for Xiaomi Redmi Note 9S
Date: Mon, 25 Dec 2023 13:00:01 +0100
Message-ID: <20231225120327.166160-9-davidwronek@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20231225120327.166160-1-davidwronek@gmail.com>
References: <20231225120327.166160-1-davidwronek@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231225_040345_339967_EE33268B 
X-CRM114-Status: GOOD (  13.96  )
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
 arch/arm64/boot/dts/qcom/Makefile                |  1 +
 .../boot/dts/qcom/sm7125-xiaomi-curtana.dts      | 16 ++++++++++++++++
 2 files changed, 17 insertions(+)
 create mode 100644 arch/arm64/boot/dts/qcom/sm7125-xiaomi-curtana.dts

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
