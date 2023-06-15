Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 196BAC001DC
	for <linux-phy@archiver.kernel.org>; Thu, 15 Jun 2023 12:15:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=897eMozgix+tSHPX85+ulJzE7mklEekBNQpFFX98PUk=; b=bGqDQr1gOvaWQ1
	C++Jvj5qaAn0qMGfeIId1qW9ut4ki6M6babwXEiOsBv7nE8wJT95dKE7lBz5CLRgQ8+XkvXEBBQ9w
	aCwdbyIrcPfhyQNfgZaewqKWdGUU6nRR7S0KD8ndaHT7qrnGus7Kcvm7iXvs0O9AwBgEqFdfuLqJS
	6j3De9H9yzutjiAo6L2uItRgVXMz+LddFek/j2TUKIt9OMlrk20lrEQWY6dEcRyVg9I4CPk9Nvi3P
	5TP/MeM32YmN4qA85lan9e99TWiDr6hcDaogat1O48BKd0OWG8HZGnqGl2cSabZlWEEqu/Ni5nLDx
	KNMm92qqYy1Ly2XP520w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q9ltJ-00Eq1T-27;
	Thu, 15 Jun 2023 12:15:53 +0000
Received: from mail-lf1-x12d.google.com ([2a00:1450:4864:20::12d])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q9lsZ-00EpJ0-03
	for linux-phy@lists.infradead.org;
	Thu, 15 Jun 2023 12:15:09 +0000
Received: by mail-lf1-x12d.google.com with SMTP id 2adb3069b0e04-4f7deee339dso1591141e87.0
        for <linux-phy@lists.infradead.org>; Thu, 15 Jun 2023 05:15:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20221208.gappssmtp.com; s=20221208; t=1686831302; x=1689423302;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=u1Al/KG8NWTXmmsHWuavPIHFHpGDFDNwIi35fFm7FN0=;
        b=q+jnV9dow2ysnpr+DgpUG8LSDiI1JSdSPsq2/CkxtBjah6EC0bynQ+fSdPMhtPBLc1
         201dqrsSMkKHprpmzk5PGtWSvxsjQUgHcveZq7U/1eIc57ycP69rjz3fb2a5AQ8px/ku
         ees+6WHgcOw8Sa+I+fHnzSKtNiVgBHfe/7fY3kC9TD36Dy87Fe3bXHvqbFqqYuCy7qRY
         JmyMAmT8SeHzbzI/yniHLMNp9ufgDZnfeluX6YCzcRiBpnx/OuK8LNvD60stAt9CrDSm
         r9GevzA5luS63q+SgfIMjXMcSq42ja5QRyU1kO/Kf4NJrs6XBQFu03lqIimOTIHKxIV8
         SjHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686831302; x=1689423302;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=u1Al/KG8NWTXmmsHWuavPIHFHpGDFDNwIi35fFm7FN0=;
        b=C7+lVUeWhlrrHn9y57boFNeJkvZkLa3wC1dg+wvSZGJTNRylvQ3Zxcx/DaGGwsYd6c
         tazfdNwEyV3L/mENRK0CyOLRwHdGP+8Wco+YLGVRA9AEkukRwV4thgMbvG78ttgK0mu5
         xFJOrVCjedtExgqyYm6ObOfJLlC6AlCnSkWRRmIMijZXk3KK7qcTmC3Qa4DEIQfGS4ju
         0KLD8T3LNSaL1BM1Mh1TLd25AXiH+uBxh7LGIJciQDXJs3XGU3nG6nTPUiP+Bh2WmWtH
         SXeOp/jBvjPllPmvMqOPbgSKclColi7B1dvluN3qovUXDT1vd5WTN5/60awFyaJ54JHM
         PITw==
X-Gm-Message-State: AC+VfDy7jWGzq2+Jws+BR1u2T/SMUzPGRfj7WT0c95qxa2d9vjmSAHY+
	WMPsBLzlZ2XV3CEiz67kNuNReg==
X-Google-Smtp-Source: ACHHUZ71nGyqLCIDXraYAB2R46ktf8+TAA7NQUM7KV4hyoUCCpF5gPBeqp3nE5oi+hiK82hXndAHdA==
X-Received: by 2002:a19:8c4b:0:b0:4db:3d51:6896 with SMTP id i11-20020a198c4b000000b004db3d516896mr9695706lfj.11.1686831302349;
        Thu, 15 Jun 2023 05:15:02 -0700 (PDT)
Received: from brgl-uxlite.home ([2a01:cb1d:334:ac00:2ad4:65a7:d9f3:a64e])
        by smtp.gmail.com with ESMTPSA id k17-20020a5d4291000000b003047ea78b42sm20918012wrq.43.2023.06.15.05.15.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 15 Jun 2023 05:15:01 -0700 (PDT)
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
Subject: [PATCH v2 22/23] arm64: dts: qcom: sa8775p-ride: add pin functions for ethernet0
Date: Thu, 15 Jun 2023 14:14:18 +0200
Message-Id: <20230615121419.175862-23-brgl@bgdev.pl>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230615121419.175862-1-brgl@bgdev.pl>
References: <20230615121419.175862-1-brgl@bgdev.pl>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230615_051507_056914_371BD193 
X-CRM114-Status: UNSURE (   8.63  )
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
Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>
---
 arch/arm64/boot/dts/qcom/sa8775p-ride.dts | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sa8775p-ride.dts b/arch/arm64/boot/dts/qcom/sa8775p-ride.dts
index 9f39ab59c283..bf90f825ff67 100644
--- a/arch/arm64/boot/dts/qcom/sa8775p-ride.dts
+++ b/arch/arm64/boot/dts/qcom/sa8775p-ride.dts
@@ -371,6 +371,22 @@ &spi16 {
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
