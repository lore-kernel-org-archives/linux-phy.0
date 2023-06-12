Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7D311C7EE25
	for <linux-phy@archiver.kernel.org>; Mon, 12 Jun 2023 09:50:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aO9QAYyAY34kl3+CvVHtKKpDDZmO9xtpBOz77Di5iIU=; b=xvLWngcuI9y6no
	ZmrM7f+ar96W8Dyh+7JZnO/RiHgCgZTt3S48j/9zJepVzKe6lBGpIG76oqjSsZxhKu4wjImsxL77w
	i2OqR/yQN+MoSdaQ3Y6RsoEKtISwm5qEw3tQ9gbygQJLAXVoXUAGgxZlwS2rPuSR5h9ph51WtPdp+
	hmanE49xo01R33nTHX+EwFGlXmURc9BBJ8TT/fkhAN2B5xWYAb5ioJLfKkswJ9oZMqH1tf5OoSPEU
	tqXzzT/Gswwm6GkEZDUTpQ15+DGwhVe5vSVUTt386YRKq0b81830fzc+FK3mYiJ22ubFEkn0k8qtP
	eqln/WkftuZUQ8dTZObQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q8eC4-003Mv9-0R;
	Mon, 12 Jun 2023 09:50:36 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q8eC3-003Mu8-1H
	for linux-phy@bombadil.infradead.org;
	Mon, 12 Jun 2023 09:50:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=cjVXwVFp50u0PUxr/5pPlG4sgNjLclV10ezIygBZf1w=; b=ORD25E7WCb3lGxwf1daVnXufl2
	NIkg2t/gq4BTIJfK2bBom8JGUEkuFhX/q2dZVeZdA2Rw+63Pmsd/UQga5m+H7QH1jR5uKu/+CZvDM
	XmSQIOC0Tfsbk/hSU7+6GR8x1awLOhKbTzx+87qobEGAXy9rbDtPdtBYnZ3NBa4xK9NwilQmrip5e
	R5ukXPxhTSGnpNBu4SELl15fNO6kS6Cc2DZi8s4Hvk7imfYrk1enUaqLuc8/w7GBhNqIs+OY5lz0i
	ps1psTwi6/1fUH/qK6H0DoPSluFDueKw22ozsmYNumn1mMM3OtjFC5L53zfmlcE6ssuU8QqX6WuF8
	+DHJxEkQ==;
Received: from mail-wm1-x330.google.com ([2a00:1450:4864:20::330])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q8dn8-008k3y-1G
	for linux-phy@lists.infradead.org;
	Mon, 12 Jun 2023 09:24:52 +0000
Received: by mail-wm1-x330.google.com with SMTP id 5b1f17b1804b1-3f7fcdc7f7fso26933425e9.0
        for <linux-phy@lists.infradead.org>; Mon, 12 Jun 2023 02:24:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20221208.gappssmtp.com; s=20221208; t=1686561888; x=1689153888;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=cjVXwVFp50u0PUxr/5pPlG4sgNjLclV10ezIygBZf1w=;
        b=2LxLhnK7e46mui8dhof9QAMYFAXj+RyNY51koDXFIyUq+oeAgfB5Yunm2wkRuj1JMn
         kZaCwUavQC6RW+LqMlWJwEmkbL8jYXkjd+0ANuO3gB4RfugPiO63GVGDem2oaXmUGXY6
         eAlLWzfGQJsrYyk6s/qe+xejpzIL2oEbCV4biO8JIzCtGSZlK2U1RNqppXvdTzoPFYj1
         3uySIa1BuTRWIipEsHrVcQc4yvQ9rYYM8rlnBgv7OYXKE2GKN9SYzVWyi+JBty3FKAs6
         AGFFcXEHyxxr14wTLOjNholiBRGWtf+J2xMsFuYww1sG2cHVlfE8DjukIKEYzRH+nuip
         3ZBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686561888; x=1689153888;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=cjVXwVFp50u0PUxr/5pPlG4sgNjLclV10ezIygBZf1w=;
        b=YKuR72dlXKLcCYJ+ChrT630yA2xCN5eIZH+zVkPuR04Kxrk9WpgwCKLkAgCDgiO5Xu
         LFKtnEgzMDRqu35iwcvBkF2MJkKXh/itI8cjVnYUGCkWXzX9T9PBI9bXh/M7zulCKd4e
         3AyfePsoXdOAl+gctQ+mAmN8n3PvvJV77Ks3noOxgbp/9LU0nPIu6Rl+OnXgdsg7c3qz
         dKnzXJ1IaFeM5dKWlOz1cvwe2qnFErikt6WbgQMea/C+q4Cqsv4JgMg2kw6hld+tcVwz
         HeHTMTdHdqtABlIB2rksZpSqYIjE8JsVsjPNdBwPNMkOl8at8afoO2bc+3HjkWFp1Glk
         0Yzw==
X-Gm-Message-State: AC+VfDw93T+Wqo/HXMiJ4/ScAd5TE9IQZuBQbo9vYP44SXktn0/X5uM0
	hfyjwCBFp80CMGp+yfJyii+f1Q==
X-Google-Smtp-Source: ACHHUZ5VMYcwm8OhSaptz22TDIOQZKg2qtYe5RLNTkB2yZzQSZhIqFe5Wt+EaJyET4ed5soNUXNxKQ==
X-Received: by 2002:a05:600c:880f:b0:3f7:148b:c310 with SMTP id gy15-20020a05600c880f00b003f7148bc310mr8862440wmb.13.1686561888007;
        Mon, 12 Jun 2023 02:24:48 -0700 (PDT)
Received: from brgl-uxlite.home ([2a01:cb1d:334:ac00:a222:bbe9:c688:33ae])
        by smtp.gmail.com with ESMTPSA id p14-20020a7bcc8e000000b003f727764b10sm10892044wma.4.2023.06.12.02.24.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Jun 2023 02:24:47 -0700 (PDT)
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
Subject: [PATCH 15/26] net: stmmac: dwmac-qcom-ethqos: add support for the optional phy-supply
Date: Mon, 12 Jun 2023 11:23:44 +0200
Message-Id: <20230612092355.87937-16-brgl@bgdev.pl>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230612092355.87937-1-brgl@bgdev.pl>
References: <20230612092355.87937-1-brgl@bgdev.pl>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230612_102450_771065_2C7A965F 
X-CRM114-Status: GOOD (  12.04  )
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

On sa8775p-ride we need to enable the power supply for the external PHY.

Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
---
 drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c b/drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c
index 2f6b9b419601..21f329d2f7eb 100644
--- a/drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c
+++ b/drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c
@@ -8,6 +8,7 @@
 #include <linux/phy.h>
 #include <linux/phy/phy.h>
 #include <linux/property.h>
+#include <linux/regulator/consumer.h>
 
 #include "stmmac.h"
 #include "stmmac_platform.h"
@@ -692,6 +693,10 @@ static int qcom_ethqos_probe(struct platform_device *pdev)
 	if (ret)
 		goto out_config_dt;
 
+	ret = devm_regulator_get_enable_optional(dev, "phy");
+	if (ret < 0 && ret != -ENODEV)
+		goto out_config_dt;
+
 	ethqos->serdes_phy = devm_phy_optional_get(dev, "serdes");
 	if (IS_ERR(ethqos->serdes_phy)) {
 		ret = PTR_ERR(ethqos->serdes_phy);
-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
