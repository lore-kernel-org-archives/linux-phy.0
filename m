Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 98128C001B0
	for <linux-phy@archiver.kernel.org>; Thu, 10 Aug 2023 11:20:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gI2Hv+M35jmY7TQqCTO7folLmJ6dH7Jp7KFC8tk5BsE=; b=Eq1aCUjPsE9Pak
	EdxUrh2B39F1ASpoGb2rsHDXaQVF98zNnwwJ1xp8ynXgsiiHfJTz9cjhRk+WVHffvdpcyAc852m1/
	34gl8Me3E59Nbxyhl+Z2hYu9XEcVic6MXbife2Od9R5Jz99v1GDHRHrzszzlOr6ncFknAGni9Ftx3
	mOI53G79BPzLo2SMLynNI7udzmUYpNwyUb4FLWx0LFBi7UbThgXqGJtkym46IeCFrkyqsoBELr1PV
	LcljfpVCo0KZd9XuAurT7j8QQxcXqbCINJv11BuxQ4T2JgmzAbs+GU2yq8ipuRyCKZ4Cx64raZ6AK
	yRYsN5GTCilpAa1lNFGQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qU3i2-007PIt-0n;
	Thu, 10 Aug 2023 11:20:06 +0000
Received: from mail-ed1-x532.google.com ([2a00:1450:4864:20::532])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qU3hz-007PFx-28
	for linux-phy@lists.infradead.org;
	Thu, 10 Aug 2023 11:20:04 +0000
Received: by mail-ed1-x532.google.com with SMTP id 4fb4d7f45d1cf-523225dd110so1028711a12.0
        for <linux-phy@lists.infradead.org>; Thu, 10 Aug 2023 04:20:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1691666402; x=1692271202;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=rZOeWP2uVJNQooQGaWrKsom5vyBYi2Cs+dRQqMbSinA=;
        b=uhoOcvUVe0bA9VDaUDB4CZbwjc5LjFePldDAsSpXK/ssG/QT0MLJREbMIGY33+qJIq
         VkUuYjbOa+iNIk6eFCWlUwc463Mk0BbV5tnKsxPA7l0FjZGRtj+lyuMFEliYLbCpbNaq
         FjDJ7xIbMOJLCoJeVrYiwbo7q0M8NtkjaoyAXbxx1q8MTvy2Pug1EUgprmo6nAmkXIbC
         baHYZcn9h0ph6NxdatVgHCgdjmnyBV8MCEAlwmaOXNMQt8IduJOKuZIk3XEe4sw+bM2Z
         z/DvTBh0iG6Lj8magBqNfYKtBRfUAF2AJFV0Qy+FspzQRLDeCnMCQ1Wz0xBBmdbBF/r6
         jY0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1691666402; x=1692271202;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=rZOeWP2uVJNQooQGaWrKsom5vyBYi2Cs+dRQqMbSinA=;
        b=kpso26x7keTUlUBFa0QFOJS3OeOKCu8e9zAl3f1mQbenbQVl6NaXdTqnSU4eMBQvU+
         zkW1NXchF/YxMLttdttUWOvFFMtzvbL+WqsK1C31RLI4UB7byIx2SGE1xEHdDkWFtLX/
         yMB3uOtTPNudnp/FXcnT0TBRyw9wV8nud/WiQuNcxI+9olBojKMoayww/wmkapkMxEGk
         sbA5K1v67siPz+RfzfyEYrqdJ1bxO7YsY9T+IKr+8PwJ6jBK4ic03fg/9NQ311mru25M
         W7MLPe5WL93mgAMiufHFKdJ4lz5JEPVxtAS0AtaS8H5WJ2W3tbMKRckJNKv+odxtA1Io
         3iaQ==
X-Gm-Message-State: AOJu0Yz0v0CU740i2aeeCmZrVj2CjrG4R9twgZbJkvxtNsueRa0Up5ah
	wMWDLcyL2JxYEhdRJUykZlKjGg==
X-Google-Smtp-Source: AGHT+IEb7M7bOgezkAsIz5lgjpCqtLrCj++G22+kk8Us63mXo1tAqwqs1h6gIoztO+7rG9pP/dFhIg==
X-Received: by 2002:aa7:c148:0:b0:523:6c47:56f8 with SMTP id r8-20020aa7c148000000b005236c4756f8mr1903226edp.18.1691666401948;
        Thu, 10 Aug 2023 04:20:01 -0700 (PDT)
Received: from krzk-bin.. ([178.197.222.113])
        by smtp.gmail.com with ESMTPSA id l10-20020aa7d94a000000b0051a2d2f82fdsm672190eds.6.2023.08.10.04.20.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Aug 2023 04:20:01 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Lubomir Rintel <lkundrak@v3.sk>,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Cc: Andi Shyti <andi.shyti@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 2/4] phy: broadcom: ns-usb3: fix Wvoid-pointer-to-enum-cast warning
Date: Thu, 10 Aug 2023 13:19:56 +0200
Message-Id: <20230810111958.205705-2-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230810111958.205705-1-krzysztof.kozlowski@linaro.org>
References: <20230810111958.205705-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230810_042003_699937_26154D82 
X-CRM114-Status: GOOD (  10.30  )
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

'family' is an enum, thus cast of pointer on 64-bit compile test with
W=1 causes:

  drivers/phy/broadcom/phy-bcm-ns-usb3.c:209:17: error: cast to smaller integer type 'enum bcm_ns_family' from 'const void *' [-Werror,-Wvoid-pointer-to-enum-cast]

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 drivers/phy/broadcom/phy-bcm-ns-usb3.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/phy/broadcom/phy-bcm-ns-usb3.c b/drivers/phy/broadcom/phy-bcm-ns-usb3.c
index bbfad209c890..69584b685edb 100644
--- a/drivers/phy/broadcom/phy-bcm-ns-usb3.c
+++ b/drivers/phy/broadcom/phy-bcm-ns-usb3.c
@@ -206,7 +206,7 @@ static int bcm_ns_usb3_mdio_probe(struct mdio_device *mdiodev)
 	of_id = of_match_device(bcm_ns_usb3_id_table, dev);
 	if (!of_id)
 		return -EINVAL;
-	usb3->family = (enum bcm_ns_family)of_id->data;
+	usb3->family = (uintptr_t)of_id->data;
 
 	syscon_np = of_parse_phandle(dev->of_node, "usb3-dmp-syscon", 0);
 	err = of_address_to_resource(syscon_np, 0, &res);
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
