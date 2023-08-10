Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 88DBAC001B0
	for <linux-phy@archiver.kernel.org>; Thu, 10 Aug 2023 11:20:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jtALTjof1F/h+0y4/R9pm+LHueQoE+mkFKJG5CyrT9I=; b=TaJPDyjLkTf21V
	F3u9YoNfTqXKaMlVB68CzCfVjwLS6auipvZB4Js+Qdq0WMUy5aojSyOpcQoktb7GHa+6NTiapfpDg
	vmZHznd44rsUF2EcB2PnDgOjHNi99aMOzJUW62+NMGN8X8tKVnkVlsMsSoL6sp85OykOxP1kvPVmr
	0XXpHqRcQQWEj/+85vepeOVLQFwpCpTdOMnmRD1bDOH4UjaCgIyyYWGro4ag/Fsn1BtG9OOaTLfx0
	D4/8iySt5Rg9/Pw8Mn/e1M0tGW47z0G6f+XPW94rQ8Q6fS3TxHrQGqdIF5QDqt58C8bL8+h145slD
	fThNncoAAw1osDkWgTOg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qU3iB-007PNG-0t;
	Thu, 10 Aug 2023 11:20:15 +0000
Received: from mail-ed1-x52c.google.com ([2a00:1450:4864:20::52c])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qU3i2-007PHy-16
	for linux-phy@lists.infradead.org;
	Thu, 10 Aug 2023 11:20:07 +0000
Received: by mail-ed1-x52c.google.com with SMTP id 4fb4d7f45d1cf-523ba00a581so42747a12.2
        for <linux-phy@lists.infradead.org>; Thu, 10 Aug 2023 04:20:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1691666405; x=1692271205;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=rjRrPL3giyS12WpTx8mH1BV4cSs+Hb0fY60hyKCefvc=;
        b=DdSvEMf1eAnZGQZ/9FRALSlwt2iOxo0rsPe/51k5UmLZFZkfvRKyxDesDZJPtx1B3z
         gAoXq9TPVCrsGvLbpZa6pmuYaR01wFBmwLR2ywQLYx1qCsv8skIzEhY5Ly0yUz3A0eeL
         zFlow1dIoZehUAqK2IJJ0sjuHxFJJj9leFHGxKifnkNt8erRcth+VTHV2vmk2VVqFLhO
         t/SGdaHkoPTjgPmH39xSqQ2ToQHaEwjh06L/E001KoaKbeEx6DiwCJzd3YPQ06AZj+lN
         Fp0dy/7H2ZjikrjL7K9+BCrDi03SGanWkYhVRohDYS3DqPAJuQpHqtowUkPZdScryF6j
         svVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1691666405; x=1692271205;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=rjRrPL3giyS12WpTx8mH1BV4cSs+Hb0fY60hyKCefvc=;
        b=jXppAeVYot7uvnVD6LlozUVHknjzyOnnu767gzGTyPEUEFxE5JS+Gj9gTwfek0gAxT
         u13wTukFuOw96biKKUTTwynhSWl7xQKbPWI5e1wT4mhdCik8eZLQ17rUHlF/aTaICQm5
         baXOtaYRN9dtwVLK2mk/Rm9Dtr9BV4hlH1N/AQgRHMjOWOvxdPOdxNZYJ9pFhQHAM8KU
         zI1qgh9ChKgOpoIBYX+ESnW9akfWXTmf6nP1L9OlTUZo/IoslE+Xxu6iACAbkG85Z3+/
         k1UhUyyJwYOEaZscvd5iimShp4VYmnokuawSzhy9pYr2AdTx8zdJbYGK6O9Jb2ixQwRk
         sWhQ==
X-Gm-Message-State: AOJu0YwiVSxQy2RrCVjm1FzO33Z3Kvc1YATZoRjL2v+JU1UovH1I6j5c
	iJg6BjxwF1s3mW+b+oEFoRANDQ==
X-Google-Smtp-Source: AGHT+IF958xthNASZUnlwJzqA0yJJGOR4I6Ld0t/wpSlG0seA0JNDjX1vM/bUIDiHFnWWkwvzjn0mQ==
X-Received: by 2002:a05:6402:1343:b0:522:28fa:3009 with SMTP id y3-20020a056402134300b0052228fa3009mr1646737edw.13.1691666404836;
        Thu, 10 Aug 2023 04:20:04 -0700 (PDT)
Received: from krzk-bin.. ([178.197.222.113])
        by smtp.gmail.com with ESMTPSA id l10-20020aa7d94a000000b0051a2d2f82fdsm672190eds.6.2023.08.10.04.20.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Aug 2023 04:20:04 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Lubomir Rintel <lkundrak@v3.sk>,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Cc: Andi Shyti <andi.shyti@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 4/4] phy: marvell pxa-usb: fix Wvoid-pointer-to-enum-cast warning
Date: Thu, 10 Aug 2023 13:19:58 +0200
Message-Id: <20230810111958.205705-4-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230810111958.205705-1-krzysztof.kozlowski@linaro.org>
References: <20230810111958.205705-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230810_042006_392650_C9199069 
X-CRM114-Status: GOOD (  10.56  )
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

'version' is an enum, thus cast of pointer on 64-bit compile test with
W=1 causes:

  phy-pxa-usb.c:299:26: error: cast to smaller integer type 'enum pxa_usb_phy_version' from 'const void *' [-Werror,-Wvoid-pointer-to-enum-cast]

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 drivers/phy/marvell/phy-pxa-usb.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/phy/marvell/phy-pxa-usb.c b/drivers/phy/marvell/phy-pxa-usb.c
index ffe889893ff4..6c98eb9608e9 100644
--- a/drivers/phy/marvell/phy-pxa-usb.c
+++ b/drivers/phy/marvell/phy-pxa-usb.c
@@ -296,7 +296,7 @@ static int pxa_usb_phy_probe(struct platform_device *pdev)
 
 	of_id = of_match_node(pxa_usb_phy_of_match, dev->of_node);
 	if (of_id)
-		pxa_usb_phy->version = (enum pxa_usb_phy_version)of_id->data;
+		pxa_usb_phy->version = (uintptr_t)of_id->data;
 	else
 		pxa_usb_phy->version = PXA_USB_PHY_MMP2;
 
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
