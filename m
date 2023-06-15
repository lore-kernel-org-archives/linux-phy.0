Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2C684EB64DC
	for <linux-phy@archiver.kernel.org>; Thu, 15 Jun 2023 12:15:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=C3I7hNlE9TX1UV0elaceWWlI/KXGIwladNPbIYKTytU=; b=psMiEWBNzFUAPy
	IEIyLjLsYKukkMZimh7ZojFl6dBtVR0B7U4yVdJJY5E5NWT4KQoilS64yFkIK3E8QXU7kr8vipEKn
	Z8dNb+1p1S64Ig2OuMiE3affS84eipA2UeQ3J9NF+Vdo208XZbasH5SOnuW28DtUbZhOmZ+DYWsnL
	y+9gJyxZhg9EAxWlZgLNnmI4r9BZ4oVc4JiAa9BLY2alEsgO7CeyVqHRp8EFLJ9NaOJDuW9CqmWMZ
	IEqT4kIZ6XPwMeMcZTtRuFrnH6nfLgiPaglMj1fvzMOws82K/RZDzYYTuay4mw1UiBfas+EkigZSm
	A4GyeCXNzXEVR3yuNxjw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q9lsr-00EpYe-1m;
	Thu, 15 Jun 2023 12:15:25 +0000
Received: from mail-wm1-x32a.google.com ([2a00:1450:4864:20::32a])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q9lsI-00Ep4q-1U
	for linux-phy@lists.infradead.org;
	Thu, 15 Jun 2023 12:14:52 +0000
Received: by mail-wm1-x32a.google.com with SMTP id 5b1f17b1804b1-3f8d1eb535eso15870505e9.3
        for <linux-phy@lists.infradead.org>; Thu, 15 Jun 2023 05:14:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20221208.gappssmtp.com; s=20221208; t=1686831286; x=1689423286;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=r1Ok1IYka1vb/vM8tvKH2bExKZHEfvi4JId7lcZB7pk=;
        b=H2PTh4hD9hzbycE5igomrrO0DCv84czKWu9BdxtjyDf6LSzC48IU4LSjyvYlAgB8nt
         jNpjXeMumj8pFyWnMh0IldN/tcmk/RBW7X/oAbEjT5pHbowgacjdTyikRxoqYb/fN4C0
         arIdhnzIjcn+mByXIb+/knuZZ5BRjT6+YbTRmovjHKlg1gmvOmEkzkBTGV7CsOjZbMoi
         IkbAMBaShTFb6BN0Mgu9ccN6nDsZFfr4ZUeDKfws4BZZJbGyf/GrbDS41qv7hZIp9caW
         GGj+yG4g8SfHbqd9po7aVCM6vChyNGXDXkNcvDjxKScxrOgS7Vpim+2KqOL1bfg5tDPJ
         1Edw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686831286; x=1689423286;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=r1Ok1IYka1vb/vM8tvKH2bExKZHEfvi4JId7lcZB7pk=;
        b=CcRXZuT+buwEWqjQn+7v7qVzqp2cjn7UhdODJAhVvvAS6Eps9fDJKiO9WSKBGIKK8D
         6E/OMoLr2fcFahj+nBFe2JWaWJa1siXQE4u7AQ5CWziflAOYWBkwuLWzRHRTckJOuBQc
         xAAsmxARI9YJ15BhGiz6/4p6rYWfIVIaBtjPirn4oVIh6irvexkdsY9irZPRXNBkaiz/
         wriw1EY7D/B44sVkqRln5myzqmm6jbAua723w+wYUvnOlbskYBLXOwOJ8O52EjwrMbIj
         OmgC7GdPejkSsPcs07p6GYGEWhZOXRlmX1Qc8DUlMbfjff0S9HvRHaQ08yGzv27iSKzm
         g/6w==
X-Gm-Message-State: AC+VfDxrqu4Gzef/BGgITtq0EoXTmFJFVMwk42ZUyL577LV22++o0tJv
	/4F8TNstdfG0F0yIZqxrSPnRQQ==
X-Google-Smtp-Source: ACHHUZ4r1A3qaTK5WSf+N6NhTfrUIoixv+YgCS9FosZwGOvt8xYnavFbEe9tPLw5/qL92M2SWSYV4Q==
X-Received: by 2002:adf:ec0f:0:b0:30f:cc8f:e48c with SMTP id x15-20020adfec0f000000b0030fcc8fe48cmr4937374wrn.25.1686831286752;
        Thu, 15 Jun 2023 05:14:46 -0700 (PDT)
Received: from brgl-uxlite.home ([2a01:cb1d:334:ac00:2ad4:65a7:d9f3:a64e])
        by smtp.gmail.com with ESMTPSA id k17-20020a5d4291000000b003047ea78b42sm20918012wrq.43.2023.06.15.05.14.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 15 Jun 2023 05:14:46 -0700 (PDT)
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
Subject: [PATCH v2 10/23] net: stmmac: dwmac-qcom-ethqos: add a newline between headers
Date: Thu, 15 Jun 2023 14:14:06 +0200
Message-Id: <20230615121419.175862-11-brgl@bgdev.pl>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230615121419.175862-1-brgl@bgdev.pl>
References: <20230615121419.175862-1-brgl@bgdev.pl>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230615_051450_518451_3968A0B1 
X-CRM114-Status: UNSURE (   8.42  )
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

Typically we use a newline between global and local headers so add it
here as well.

Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
Reviewed-by: Andrew Halaney <ahalaney@redhat.com>
---
 drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c b/drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c
index b66d64d138cb..e3a9b785334d 100644
--- a/drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c
+++ b/drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c
@@ -7,6 +7,7 @@
 #include <linux/platform_device.h>
 #include <linux/phy.h>
 #include <linux/property.h>
+
 #include "stmmac.h"
 #include "stmmac_platform.h"
 
-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
