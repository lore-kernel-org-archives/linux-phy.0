Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D0551C7EE43
	for <linux-phy@archiver.kernel.org>; Mon, 12 Jun 2023 09:24:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sjQXnSDL0N7O2qmR/psC5Q2jMeKsJ6DIm7VsI/6/JMQ=; b=rEEtOs8wEM9WP3
	z55hwVxsPYQupTwexjZY/FYO8AttQZknucwtiaDzgRpkHObPOHhlfCol/+MAVtW41Pv7pPUViMLdp
	73z7TRdiRI9s6co5loQ3JN8bIB4S8c934p+g1OksBu6uWLwtGd97jOfPBQjD9NKzlSUNy0ci2lzn0
	joL8/p3n6iLIhdexTcv9pWyI/wszCh3WiOn2XO0IxL71BwBD27rpBYZRc2toFAKxDpoPT2W8woEGl
	8p2C5gIOHm0gADSHNk0NEP8PCpeDss/+VbQGM9RH/VAKdJ1uIqO1RBSflKFEHN+uU9av8qirAWC1T
	q7WtxaBsGd25YqHSgKRA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q8dn9-003H7Z-1X;
	Mon, 12 Jun 2023 09:24:51 +0000
Received: from mail-wm1-x32e.google.com ([2a00:1450:4864:20::32e])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q8dmy-003Gxu-2C
	for linux-phy@lists.infradead.org;
	Mon, 12 Jun 2023 09:24:42 +0000
Received: by mail-wm1-x32e.google.com with SMTP id 5b1f17b1804b1-3f7f6341b99so29814245e9.2
        for <linux-phy@lists.infradead.org>; Mon, 12 Jun 2023 02:24:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20221208.gappssmtp.com; s=20221208; t=1686561879; x=1689153879;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9517L+m6kHVlackMfaxSN+CNphejP2hqUH4D90m9Olw=;
        b=niV8zcJpx+FM/U+qoIxdAubWZD03pWCf8LOroYc/q2tXxGMobXAhRDTkiRBScpbEha
         nmxGS6K4K+sMXcJWCBnsRrq2MLQI+me1BzhofFvIbxfFBqtqVfBnlU9NnJ+S/3YdL81N
         /pMUKBNVFHGFG4pB4KMmO0Tm3YSZ/mtio9kHJMTOzA12sEv0MYYTtbBZ0g1XISkS4YXu
         HIpSDd0gsNCx9eAULp0cL5z0caPJYHrM67slR1Ji1AyGcoXvSRtRttHMVkb6nWUiHY1I
         3Vr6JmgkhnmHSgmjDaKJSXOBVvR+k1fRIz9MfUkxMIHyJffKzIcI+Zs0Ptrp3HHe31Zi
         31rw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686561879; x=1689153879;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=9517L+m6kHVlackMfaxSN+CNphejP2hqUH4D90m9Olw=;
        b=XG0jXblLdgVGYtPcnZi4tRYnIGmf7vZVe8eFFjsRfCLbZHa1Bs61EDTSXPkspo2h3F
         T0uO40tpcH1XHZP5ZFDZXZmcjMI7BVCJFlQ3Rwqh02pXYm39f8TigcfCcRW6PD3yxnwv
         toqGXJaomSvUixE/67Hn9EFHQRvfkBZwNi2dJ6x3afmYiZwi5vUOLbtRWdhvinJAVMV1
         GQ3NySs7G/kvKGgjYSxVdkC6m2oDCCd7Wosp9Jpux47+2pbhTP4AXI9z1iT2u4PjF4DB
         ig48anAu0fO2QDrES/dpXjZjXJmxEy3B1VthTladODkp89jepCcx8IMHfbMs41FYcJLb
         ycng==
X-Gm-Message-State: AC+VfDzbhTwv3PMDzlTse6MIVn4mePYY57oOG4gEioQ/Gyc+ShTQn26Q
	GY/SZ4O1Hfw1jCjuUGyP8ZLGAg==
X-Google-Smtp-Source: ACHHUZ7OmuBoNhbMPtzJgMKKXL9pAuDmUXCPSMeBXS0fx0sGH2DzxWk99X8iZUVMp3kJqiLAHi07Gg==
X-Received: by 2002:a7b:c84c:0:b0:3f7:33cf:707b with SMTP id c12-20020a7bc84c000000b003f733cf707bmr6349917wml.1.1686561879026;
        Mon, 12 Jun 2023 02:24:39 -0700 (PDT)
Received: from brgl-uxlite.home ([2a01:cb1d:334:ac00:a222:bbe9:c688:33ae])
        by smtp.gmail.com with ESMTPSA id p14-20020a7bcc8e000000b003f727764b10sm10892044wma.4.2023.06.12.02.24.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Jun 2023 02:24:38 -0700 (PDT)
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
Subject: [PATCH 09/26] net: stmmac: dwmac-qcom-ethqos: add missing include
Date: Mon, 12 Jun 2023 11:23:38 +0200
Message-Id: <20230612092355.87937-10-brgl@bgdev.pl>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230612092355.87937-1-brgl@bgdev.pl>
References: <20230612092355.87937-1-brgl@bgdev.pl>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230612_022440_735850_08CC0959 
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

From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>

device_get_phy_mode() is declared in linux/property.h but this header
is not included.

Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
---
 drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c b/drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c
index e19d142630d3..ecb94e5388c7 100644
--- a/drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c
+++ b/drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c
@@ -6,6 +6,7 @@
 #include <linux/of_device.h>
 #include <linux/platform_device.h>
 #include <linux/phy.h>
+#include <linux/property.h>
 #include "stmmac.h"
 #include "stmmac_platform.h"
 
-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
