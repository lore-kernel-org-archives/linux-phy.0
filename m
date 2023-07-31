Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 19DA3C001DE
	for <linux-phy@archiver.kernel.org>; Mon, 31 Jul 2023 11:49:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=35In0uCmv59ojlf/+r7ytoMQTuiHyem9zXbdqlJ6fD4=; b=1lbZLPC0YDtbE+
	OGlUZn4c1RygxWU6BgY383TpYJXaO+7z8Lhn7bOo2Hu0bbytYmEt4deioNidFnObuuFK1dQRM79nT
	JtlzlaZA2aEO9L35jscbA2kYeB654tglRR+vPb6cUBkhmbFuetwg99PMoeuCjMpRofzAMrlPlPAca
	v66I7SI9TFoyB3Xg7yk7zZrPWFTrp9Ak35q5YjgLECR1MUM7GgP0WZjs33jynoj6RgDLXaAobZ6o8
	oSkAFiO/K6vLc9EBjkAFmAqM9alpYJi4fpEXTLQvUHIT5Rzus2BDhbS43fft7JsLk+BnlFdUVC7LI
	PPY8I1eaRVBpqM1ZuYaQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qQROc-00FN49-2a;
	Mon, 31 Jul 2023 11:49:06 +0000
Received: from mail-ej1-x62a.google.com ([2a00:1450:4864:20::62a])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qQROa-00FN3J-0a
	for linux-phy@lists.infradead.org;
	Mon, 31 Jul 2023 11:49:05 +0000
Received: by mail-ej1-x62a.google.com with SMTP id a640c23a62f3a-9936b3d0286so703049966b.0
        for <linux-phy@lists.infradead.org>; Mon, 31 Jul 2023 04:49:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1690804140; x=1691408940;
        h=message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=k5s6A5U4bCqKX9zBuGy2auiAAIIEUq3nqLvJzYU+MjM=;
        b=CZm/FDbhbT2gtRX0cyfSNirUX3IGYeFEjHSlmMNJNdM3Mjw+W2QUrKNgz7W+vyrKbF
         sDbRyhw5IJ7uZxuVwZ+zo6vT9HQTskf31r5gtuQR09BW6KIcwftHuGtR767pXl8IINm5
         VFycAGKxYXwiAv2WDsuCTAhkxJJcHtAhnpZMSfxAdk8VWsNuNmBrpNtzFe6CAGBN++mw
         eCTwN+bHj1ihSPEakyB1pYQMjUUlmhTkR90fnpiiGiLF6pXdgN9eIgrzqGm+6gWd9oz2
         QLw0vLxDz7pjyVvPdYbj/xDRrZit4fCt7fh9IhIqxn3ThV3lsaU25/rWXR1erELuBr7V
         mf7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690804140; x=1691408940;
        h=message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=k5s6A5U4bCqKX9zBuGy2auiAAIIEUq3nqLvJzYU+MjM=;
        b=bfgLVHQS+0wvK//6/OhiyJaJMeZxnChDTvREABTmlW86ORxcQFf2NkIqtuEu1vX5DN
         u3mweLW2QvXGQYf/wfeDnYL7fEGXyCqrSOaGMI35LbqKFFhuM+vyzRyPIrAYnPTA68/V
         UVPXgafC4tBDRRja2VZS5nzqXeB5YsZEBa04br44qFJFeAKGu4GQZ5HPYEZE6Lk2yAW0
         cv1/ZwAgXh7cnuPPKlu1RR0qprOHZ7QnKp/0V696Rp3rrG3QimuUZd7/+QdvOf5BAitA
         3b2S7mOOiYrfSqZCihOvmEhzUm7Aa7Cu0xAIgaOqFh7O4ZESa4BhtIOEA2nchmHUP7DU
         XNUA==
X-Gm-Message-State: ABy/qLYs8QkbbKRPH0S3GGKrTLy1YFWO16noKFD1xdBsiMtql4HajqdW
	2aBjvriCelKYt0jJZCZh9k0=
X-Google-Smtp-Source: APBJJlEsLpE4SAtgI8XtELoIQrcSZV/UEognZflSa0wsKia9wLHj9xFS7H+FYXArdZykU1DH3gxFKA==
X-Received: by 2002:a17:906:3192:b0:99b:66eb:2162 with SMTP id 18-20020a170906319200b0099b66eb2162mr6513637ejy.5.1690804139752;
        Mon, 31 Jul 2023 04:48:59 -0700 (PDT)
Received: from felia.fritz.box ([2a02:810d:7e40:14b0:7172:435e:e8bd:2cf])
        by smtp.gmail.com with ESMTPSA id k13-20020a170906970d00b009893f268b92sm6063734ejx.28.2023.07.31.04.48.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 31 Jul 2023 04:48:59 -0700 (PDT)
From: Lukas Bulwahn <lukas.bulwahn@gmail.com>
To: Jack Zhu <jack.zhu@starfivetech.com>,
	Changhuang Liang <changhuang.liang@starfivetech.com>,
	Minda Chen <minda.chen@starfivetech.com>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	linux-phy@lists.infradead.org
Cc: kernel-janitors@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Lukas Bulwahn <lukas.bulwahn@gmail.com>
Subject: [PATCH] MAINTAINERS: correct file entry in STARFIVE JH7110 DPHY RX DRIVER
Date: Mon, 31 Jul 2023 13:48:56 +0200
Message-Id: <20230731114856.14401-1-lukas.bulwahn@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230731_044904_221428_5CB1B5E5 
X-CRM114-Status: GOOD (  10.62  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

Commit f8aa660841bc ("phy: starfive: Add mipi dphy rx support") adds the
MAINTAINERS section STARFIVE JH7110 DPHY RX DRIVER referring to
'phy-starfive-dphy-rx.c', but the file actually added in this commit is
named 'phy-jh7110-dphy-rx.c'.

Correct the file entry in STARFIVE JH7110 DPHY RX DRIVER.

Signed-off-by: Lukas Bulwahn <lukas.bulwahn@gmail.com>
---
 MAINTAINERS | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/MAINTAINERS b/MAINTAINERS
index 733bcfa0209a..003b0461641a 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -20345,7 +20345,7 @@ M:	Jack Zhu <jack.zhu@starfivetech.com>
 M:	Changhuang Liang <changhuang.liang@starfivetech.com>
 S:	Supported
 F:	Documentation/devicetree/bindings/phy/starfive,jh7110-dphy-rx.yaml
-F:	drivers/phy/starfive/phy-starfive-dphy-rx.c
+F:	drivers/phy/starfive/phy-jh7110-dphy-rx.c
 
 STARFIVE JH7110 MMC/SD/SDIO DRIVER
 M:	William Qiu <william.qiu@starfivetech.com>
-- 
2.17.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
