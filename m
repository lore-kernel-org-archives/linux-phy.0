Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A5D94EB64DD
	for <linux-phy@archiver.kernel.org>; Thu, 15 Jun 2023 12:15:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3u2x78t15R16t4hoVlqOAENPd6HdvsRHHmknBHT96Wg=; b=x5QL46wngsfJaH
	irdE9t6NW0xR+1A88QOhEN08DdfLKVTtHrQk1x7FWLV+EuG0Qj6bJZgu6pYfqjhDC0ZYmkk0D9Jmo
	RfgJsi9tHKxkgnBswVCeZ47eEZP9eBSPrlj69YZHbb8KWPkD0nZvi0F2UBq0bmN6oj6nuhPabrISB
	tDbKZB5CF9qBn1K2Hdhm/H71xmBf7fMKtv5cOm45Kfe35HYR1TcotOCvmEoRUO3cl6M7+ask7CywR
	B8+U4J7j4e6fSZlfvcW7r0JgilPyF1bms0zrBXEeaaZkCcJPKpImZo1/6bxlk0Oo+XrvrJXPguLTo
	k0shwJ+jaspkDAzT4Z+g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q9lsr-00EpYK-0e;
	Thu, 15 Jun 2023 12:15:25 +0000
Received: from mail-wm1-x333.google.com ([2a00:1450:4864:20::333])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q9lsH-00Ep3s-17
	for linux-phy@lists.infradead.org;
	Thu, 15 Jun 2023 12:14:50 +0000
Received: by mail-wm1-x333.google.com with SMTP id 5b1f17b1804b1-3f8cc04c287so17458065e9.0
        for <linux-phy@lists.infradead.org>; Thu, 15 Jun 2023 05:14:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20221208.gappssmtp.com; s=20221208; t=1686831285; x=1689423285;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2s2NJclKWNK/7cl/j+crrrKprFB1owa3fhzvvYgN/iA=;
        b=lGAO4cZ33L5Jbp2mlY4NQJspQLvhSXiQm08SD4SEX4OLoRpVmGWA61a79P1eOvagch
         inxFGMFi3C+JKEntWs2sfLwP591k2BS7aFfwjhimGYlEoOtJKA8InvVW1H3f0CY56q05
         q3HqoJWweDF05uYfrT1VW3K2S9shFYBKCpZgwES6T5GVZAtl8+DLIoRLcvfBGhbghnud
         xk626rmFw4jjIkz72ospjVlFAAcmvaC6zrHz2tIyC6nDl9A1LLJmQKhqxN3yO13Nfso0
         Eui02VQbKZtH6ko2/q9n5QAdIg7FqPdah3dcTdYIBUFWDXT+PBMUx01J7xEOIVqnnrsm
         jg/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686831285; x=1689423285;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=2s2NJclKWNK/7cl/j+crrrKprFB1owa3fhzvvYgN/iA=;
        b=RlNr4HfYu8Hy8LHUfCdYkztANVvcN40TR106Mesoc1ujQF7jnmJKB1qZ3xU2ZvsKc/
         8ynI7o7qgIHmGaHxweNpRF0lZN3RAr0e6oJZx+T8Q3a/vV1vTzeO9Y0Fe0DK+wuKlcXh
         GRPXlSYRb1dzp9eXwqaZ/X8JjaXH4+RrVrysPz152IYvY0lAYv28dYUQsgRAspbuPEuE
         asE2Qk2ngOvGnj2MBoipefNhJ6GvHpwcB1+tjOaFy0zBOeFikedAuX0pTRzEnxxmLYCt
         uSWfxXMwnV0/RlygYfKUMMN07PnjO7ebBGOgzvdGU1jli1Tq8J69IriF1S9cw0naW6oc
         /syQ==
X-Gm-Message-State: AC+VfDxiOdrBx6NIOTLDzXZP9sp5SxtYDvH9sP8RVZiCIIz2LuUzT4uq
	gXbk6Js2msuW6ZdTOgD5I+8pPA==
X-Google-Smtp-Source: ACHHUZ4WICs2fqca+psah+Z2d7TrVZS4kdor2VF0fgiRWgR85G93s3CfhbpBS4eHOOL3RnM3K9lIAw==
X-Received: by 2002:adf:dc42:0:b0:306:28f4:963c with SMTP id m2-20020adfdc42000000b0030628f4963cmr11134252wrj.23.1686831285209;
        Thu, 15 Jun 2023 05:14:45 -0700 (PDT)
Received: from brgl-uxlite.home ([2a01:cb1d:334:ac00:2ad4:65a7:d9f3:a64e])
        by smtp.gmail.com with ESMTPSA id k17-20020a5d4291000000b003047ea78b42sm20918012wrq.43.2023.06.15.05.14.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 15 Jun 2023 05:14:44 -0700 (PDT)
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
	Bartosz Golaszewski <bartosz.golaszewski@linaro.org>,
	Andrew Halaney <ahalaney@redhat.com>
Subject: [PATCH v2 09/23] net: stmmac: dwmac-qcom-ethqos: add missing include
Date: Thu, 15 Jun 2023 14:14:05 +0200
Message-Id: <20230615121419.175862-10-brgl@bgdev.pl>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230615121419.175862-1-brgl@bgdev.pl>
References: <20230615121419.175862-1-brgl@bgdev.pl>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230615_051449_404052_914DBAB7 
X-CRM114-Status: UNSURE (   8.28  )
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
Reviewed-by: Andrew Halaney <ahalaney@redhat.com>
---
 drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c b/drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c
index f0776ddea3ab..b66d64d138cb 100644
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
