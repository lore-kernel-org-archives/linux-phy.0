Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F146FC7EE43
	for <linux-phy@archiver.kernel.org>; Mon, 12 Jun 2023 09:25:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TgygUiyO3tg2U0oWwk4Li8wIUrRgtDb/CfIC1nhLzxQ=; b=vQEhdTabFtcYHp
	AI1+RgutFBDHCgPXYwBLtkmgf0WbVBDEdls26VZrdmmqfYS0QVwZPINquZURfG6xZJe1RgD9L3i+k
	FXTZGcglOd+wmd/x+z8MXG5ExlyGHNn71F7+2lqkanTotd/KYY1anfBnPEVmIq74+cwapH6tZtnAq
	JVbj3SdTUeORTGtYATTvYhaZcFLNV9THk27f8hTOc0ud0wTGFqde0Du0q9jjnCh3SQO1iwlkAcLB1
	aWcLjm2EAJja6IlLmPbAzTOzBfZgmXNkNVBVdhbaShN8Et3hnkAN/jcDiPjj34sU18GuUNk05onBe
	0UMMGXH1fj1632wO/0zg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q8dno-003HZj-1z;
	Mon, 12 Jun 2023 09:25:32 +0000
Received: from mail-wm1-x32c.google.com ([2a00:1450:4864:20::32c])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q8dnM-003HE1-0M
	for linux-phy@lists.infradead.org;
	Mon, 12 Jun 2023 09:25:06 +0000
Received: by mail-wm1-x32c.google.com with SMTP id 5b1f17b1804b1-3f7378a75c0so29531885e9.3
        for <linux-phy@lists.infradead.org>; Mon, 12 Jun 2023 02:25:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20221208.gappssmtp.com; s=20221208; t=1686561901; x=1689153901;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=CLaMx9+e4iuA9k0HKzXztUaaZBEZ9bpdRm0ATPtxSFs=;
        b=Z0vGtlAOr73GZC/Gj6eNFC/9k2Sm7GthQ5ThOHdTEND/fWcqoz9SHGZU7g4Oejo0+B
         RaV6BZ/igQvP2b+/IrEGbCH17+t+nX1v97JhXRnct3KrN+NH+rKKSmNU5mCdV4b8VRdx
         LxPR1YJ1FiMBcCV/4psL9l/br0kTlIiTM9S2TXH8Yt5k/l/Yji6lXbMjA3yDLYaN1t5F
         yTkATjmoZYcy0mVncUpNLUH8UkjQNLy9HERgoOXFhfpbFPFdkrhehA7+aktL68oKI3fc
         VfoghKsM37C8k9q6fKStc7pJd2JFqcOuHZ/fiUcQndVgIGO+EMPW0QhTOi40Ae765TFr
         GNLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686561901; x=1689153901;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=CLaMx9+e4iuA9k0HKzXztUaaZBEZ9bpdRm0ATPtxSFs=;
        b=JGP3/Fvui7ooFP8nmcoSUGkRklI5/KpMrfz0lafKjo6rQLpbM8wW+dtz+CAd0cct3x
         /ECU4Eim+6wJfLOuqFKamDB62gKyQA5QzQRaHfiYWFPoc7b4I/glkGtsdBUzXhky+oLW
         uReUg/uZ2UqCyCLyKQcgQ0Zc48ok4UEZ4+J0mfKR/yYVS72Mzbb2GRsxvEG8ZtPr91/o
         dxXkt1WPk2TCF6ODuNrPJu8J2CZVlsC7HyE8fO4aR/MmsjeZVPfFNQmwTwXLiLGQTnmA
         nZ0JLg1TybvismohPPp6Yjyh0MeBi8wZmdZUCsLWQrvXSm4c/McNNJ+ZzausKqNpd7ny
         4EKA==
X-Gm-Message-State: AC+VfDzLg1mDAO3jT4RUmJ0RvvSCGLuMcSbwszZpg6E/GA0dJg3bEppy
	S1e9px/RmmEmxQwtjR5f0VnMDw==
X-Google-Smtp-Source: ACHHUZ7qP7/SyTOU8/DDIX68G7BFQneP8olbAA34G/JnNTqmm2c9ABxgMYXONRfwTSOTiB3F/nspiw==
X-Received: by 2002:a05:600c:284a:b0:3f7:e818:1eb with SMTP id r10-20020a05600c284a00b003f7e81801ebmr5507867wmb.40.1686561901784;
        Mon, 12 Jun 2023 02:25:01 -0700 (PDT)
Received: from brgl-uxlite.home ([2a01:cb1d:334:ac00:a222:bbe9:c688:33ae])
        by smtp.gmail.com with ESMTPSA id p14-20020a7bcc8e000000b003f727764b10sm10892044wma.4.2023.06.12.02.25.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Jun 2023 02:25:01 -0700 (PDT)
From: Bartosz Golaszewski <brgl@bgdev.pl>
To: Vinod Koul <vkoul@kernel.org>,
	Bhupesh Sharma <bhupesh.sharma@linaro.org>,
	Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	"David S . Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>,
	Paolo Abeni <pabeni@redhat.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Giuseppe Cavallaro <peppe.cavallaro@st.com>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Jose Abreu <joabreu@synopsys.com>
Cc: netdev@vger.kernel.org,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-stm32@st-md-mailman.stormreply.com,
	Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
Subject: [PATCH 25/26] arm64: dts: qcom: sa8775p-ride: add pin functions for ethernet0
Date: Mon, 12 Jun 2023 11:23:54 +0200
Message-Id: <20230612092355.87937-26-brgl@bgdev.pl>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230612092355.87937-1-brgl@bgdev.pl>
References: <20230612092355.87937-1-brgl@bgdev.pl>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230612_022504_163269_F0032067 
X-CRM114-Status: UNSURE (   8.36  )
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

From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>

Add the MDC and MDIO pin functions for ethernet0 on sa8775p-ride.

Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
---
 arch/arm64/boot/dts/qcom/sa8775p-ride.dts | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sa8775p-ride.dts b/arch/arm64/boot/dts/qcom/sa8775p-ride.dts
index 7754788ea775..dbd9553aa5c7 100644
--- a/arch/arm64/boot/dts/qcom/sa8775p-ride.dts
+++ b/arch/arm64/boot/dts/qcom/sa8775p-ride.dts
@@ -370,6 +370,22 @@ &spi16 {
 };
 
 &tlmm {
+	ethernet0_default: ethernet0-default-state {
+		ethernet0_mdc: ethernet0-mdc-pins {
+			pins = "gpio8";
+			function = "emac0_mdc";
+			drive-strength = <16>;
+			bias-pull-up;
+		};
+
+		ethernet0_mdio: ethernet0-mdio-pins {
+			pins = "gpio9";
+			function = "emac0_mdio";
+			drive-strength = <16>;
+			bias-pull-up;
+		};
+	};
+
 	qup_uart10_default: qup-uart10-state {
 		pins = "gpio46", "gpio47";
 		function = "qup1_se3";
-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
