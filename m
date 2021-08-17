Return-Path: <SRS0=Ei7n=NI=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9108BC4338F
	for <linux-phy@archiver.kernel.org>; Tue, 17 Aug 2021 04:19:09 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 5CDC160F14
	for <linux-phy@archiver.kernel.org>; Tue, 17 Aug 2021 04:19:09 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 5CDC160F14
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=g3WCz0sAD2tXCQjxSpc3X3LJnqzjsRJk1J+QozBXwoo=; b=aoaio23yIuIUAV
	uEhlo/PcSO0zEgzScZpIuErSZgG3XRpCktHlijpf2QAg7Cx6qQdNy6a5eaf9jzRo4CljPyzQCfOHJ
	ZqhnW2udVFz+vYM9aVWj5jFOlU1wu7Up65SJA80pvsAYifNZ/Unk3s1m+tUl50HdSXwZ6Qiw1OMmM
	WSczwtKbCW61L9HOgJNiHnUqDFZ/4XYI/m8hhG8r9ZkNvafKkXJ4PnMekFM1tpbYCrZIDmjSzol4a
	O9UPsJu6IvYNlOq+cT3IldWPF0v1tl/uM91b/aL4+fNqkHGVc0sermoxe0cqGvoTk/1FSKAwMklma
	JQNxK9mnaFJMnT0tH/FQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mFqZA-0015hT-LZ; Tue, 17 Aug 2021 04:19:08 +0000
Received: from mail-pl1-x62e.google.com ([2607:f8b0:4864:20::62e])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mFqYf-0015Q3-FH; Tue, 17 Aug 2021 04:18:38 +0000
Received: by mail-pl1-x62e.google.com with SMTP id u15so7880132plg.13;
 Mon, 16 Aug 2021 21:18:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=rvpv+8q3g4xCHMUozwIBpDBoqFRGyAKVfv9xddtyv5o=;
 b=ArRnDWoSagJFh4S5NLbf/Ola1AVbgrrsrTUdIAh/Fe7CUJ6va4b5YgnsxcVOfY16uP
 fjDXyZdxRvxHSlNJXWy3dzPAo/psaerexJAvkPeixdGHrWO3EmRtCM+lH5cYtLcHIltz
 zbsXmYg8TiK/IvYSdfRXsSIZ0qlKpgry0OP/9AAtp2v+BAUPNdORRZrVi/QIGVVtSQu7
 s2hbIcvd9FsG2Mxi7mAqO45BLJUEh+Sp8uIzWUJ1u6uGX5uF+sevXdHKcuY8P0N41qVj
 Ctct6nIPCWvaGj79DInYH4tlD/ARfSQMtstiJRTwHEVkdSZAyPXPCqM3TLZCbTP3gH3+
 LB8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=rvpv+8q3g4xCHMUozwIBpDBoqFRGyAKVfv9xddtyv5o=;
 b=Xpgkq8nocxHd88kalMNFrYaRPCL6/h2SH0HGs1uaMHYd6QKdE1Ga8hy2nmGCNWtirz
 NbhFZ0IQA8avv0MKcepazuiR8UhQSaQWJ2i7X6WXpQXn42g+twZ36pC9Usligc+yBydK
 D91zWVzmiBZnti8lIksMP61/zvQRJrcQKvZ0yDRiSabJpJG3Cj0pOYONUMAmPisg0wR7
 ofba+tkTZCCNCpmntGusKoLuvPzVoM+qzL0R+urFa6I3qk6iYl/dK7E/QKdKbP7nJPe+
 1HjAHEWH1oM8hQz6aIcAz+4cPxP4RZ3R7yNSHSPUbCDevJ0I8OAklBjIOjOej1aCvS1x
 8xvg==
X-Gm-Message-State: AOAM531g3/FR5SKBTGRWwBYU9X6XMR5nP0kv0x+7WZaCwmnuOQm0jbs8
 ACtCXIdJfGCVckNo4m75LM9xPcU3HO4N6g==
X-Google-Smtp-Source: ABdhPJyfFtCrZ2P3scFr8d1eXqGQaE49+b6pBgykLWEAqZG3Y0vHwldNwb59wz/fYDPbKVgezj55LQ==
X-Received: by 2002:a05:6a00:cd0:b0:3e2:209e:4e30 with SMTP id
 b16-20020a056a000cd000b003e2209e4e30mr1630426pfv.59.1629173916369; 
 Mon, 16 Aug 2021 21:18:36 -0700 (PDT)
Received: from archl-on1.. ([103.51.72.143])
 by smtp.gmail.com with ESMTPSA id g11sm705676pfo.166.2021.08.16.21.18.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 16 Aug 2021 21:18:35 -0700 (PDT)
From: Anand Moon <linux.amoon@gmail.com>
To: linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org
Cc: Anand Moon <linux.amoon@gmail.com>,
 Matt Corallo <oc2udbzfd@mattcorallo.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Rob Herring <robh+dt@kernel.org>, Neil Armstrong <narmstrong@baylibre.com>,
 Kevin Hilman <khilman@baylibre.com>, Jerome Brunet <jbrunet@baylibre.com>,
 Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 Emiliano Ingrassia <ingrassia@epigenesys.com>,
 Brian Kim <brian.kim@hardkernel.com>
Subject: [PATCHv3 6/6] phy: amlogic: meson8b-usb2: don't log an error on
 -EPROBE_DEFER
Date: Tue, 17 Aug 2021 09:45:40 +0530
Message-Id: <20210817041548.1276-7-linux.amoon@gmail.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210817041548.1276-1-linux.amoon@gmail.com>
References: <20210817041548.1276-1-linux.amoon@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210816_211837_630425_A65BEB92 
X-CRM114-Status: GOOD (  13.63  )
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

devm_phy_create can return -EPROBE_DEFER if the vbus-supply is not ready
yet. Silence this warning as the driver framework will re-attempt
registering the PHY. Use dev_err_probe() for phy resources to indicate
the deferral reason when waiting for the resource to come up.

Cc: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Reviewed-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Signed-off-by: Anand Moon <linux.amoon@gmail.com>
---
None.
---
 drivers/phy/amlogic/phy-meson8b-usb2.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/phy/amlogic/phy-meson8b-usb2.c b/drivers/phy/amlogic/phy-meson8b-usb2.c
index 2aad45c55494..cf10bed40528 100644
--- a/drivers/phy/amlogic/phy-meson8b-usb2.c
+++ b/drivers/phy/amlogic/phy-meson8b-usb2.c
@@ -277,8 +277,8 @@ static int phy_meson8b_usb2_probe(struct platform_device *pdev)
 
 	phy = devm_phy_create(&pdev->dev, NULL, &phy_meson8b_usb2_ops);
 	if (IS_ERR(phy)) {
-		dev_err(&pdev->dev, "failed to create PHY\n");
-		return PTR_ERR(phy);
+		return dev_err_probe(&pdev->dev, PTR_ERR(phy),
+				     "failed to create PHY\n");
 	}
 
 	phy_set_drvdata(phy, priv);
-- 
2.32.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
