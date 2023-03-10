Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 030F1C6FA99
	for <linux-phy@archiver.kernel.org>; Fri, 10 Mar 2023 14:52:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=LFjlyW1r50Kd2Wyf886GCl20dBaMtlX8EgZywiqnrw8=; b=I7zR1zTQzItPtQ
	ZrKj99CSg7Xl4pkONyu2VGqC+MQxd225cDbYj9QC7u4IHTuR+Lda1iKdpbdp1VYpxGIoy9znYWhvj
	4NnUDBMvZ3dsYtoWXKH4Vorg1upAlhdo/rajIV4lnzd3QxdiXE9ZTv+3nfbKAHUQ6/WdyjVi0OII8
	2nT8Bn0fd4y0fR7Hq9e59Z1yX1G3IsmSRAfDgZPKoiJHbIUBbES9TkShO+Vw5ckfykuFNkkin/FmO
	EIV1ZI0nA7/J6+sO5m1/HNIBEam3suqqLSWMqPFxZ+tdw8a2x4QAxWsAbGwM95E9LHznmeD+IZQY6
	+DcC+cBzjNgvqmm393UA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pae6Q-00EpMP-76
	for linux-phy@archiver.kernel.org; Fri, 10 Mar 2023 14:52:14 +0000
Received: from mail-oa1-f50.google.com ([209.85.160.50])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pae2u-00EnDP-NH; Fri, 10 Mar 2023 14:48:38 +0000
Received: by mail-oa1-f50.google.com with SMTP id 586e51a60fabf-17671fb717cso6053642fac.8;
        Fri, 10 Mar 2023 06:48:36 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678459716;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=GQ2+PQGllxO2iVkzKima9jszwdEFIn3jQrBHflP9Onc=;
        b=NPRspIYYwqZbCWLwYcphtrfzD6B8Y/CJCw3ofy3TxsOhf9HNKoglrAvzhj5sRyqTmk
         T/RtQooZzmJNup/EUkZeuLICPBfoLMNXVjMhC2XKlJ4nwVFgv+jAAOUeyQKb45OVHWaH
         omyaR4t+Ln9p3L+3TIT7AAA3sykVjHSCYH/zq21rfVDT5Q05Ccahg4KdCcCBwYVArHfd
         p13FpXrdJ6GXxFPd0VxBCSM3M2jF808ZrhNoffzB5UbwsRcjTHLFosum7EnmAA4VzkrK
         wvnoaHWC7QWPQ6SnbpFHX8m9uU55sZIcmOG1uJtZ3C82eGXNJaS+BW+xUaYenDi/ULo2
         Klgg==
X-Gm-Message-State: AO0yUKWyyi9yZJBhM8ZeKXj+Bau1Vh3b4YPAaVEyBFuzMI901lpXDEjt
	jcGjtjHMQTaezrAw6T7WZw==
X-Google-Smtp-Source: AK7set9dCtF6YjDNuDf/itnbkBqLEzqFi/95OtxgYDb7R2Ro64NdR9SeQyVNbDETqd4yarYgCX0wAg==
X-Received: by 2002:a05:6870:2108:b0:16e:2d3f:187 with SMTP id f8-20020a056870210800b0016e2d3f0187mr17201161oae.11.1678459716307;
        Fri, 10 Mar 2023 06:48:36 -0800 (PST)
Received: from robh_at_kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id e6-20020a056870920600b0017630fe87e5sm88853oaf.33.2023.03.10.06.48.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 10 Mar 2023 06:48:35 -0800 (PST)
Received: (nullmailer pid 1544626 invoked by uid 1000);
	Fri, 10 Mar 2023 14:47:20 -0000
From: Rob Herring <robh@kernel.org>
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, Chen-Yu Tsai <wens@csie.org>, Jernej Skrabec <jernej.skrabec@gmail.com>, Samuel Holland <samuel@sholland.org>
Cc: devicetree@vger.kernel.org, linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev, linux-kernel@vger.kernel.org
Subject: [PATCH] phy: Use of_property_present() for testing DT property presence
Date: Fri, 10 Mar 2023 08:47:20 -0600
Message-Id: <20230310144720.1544600-1-robh@kernel.org>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230310_064836_819150_64963372 
X-CRM114-Status: GOOD (  12.95  )
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

It is preferred to use typed property access functions (i.e.
of_property_read_<type> functions) rather than low-level
of_get_property/of_find_property functions for reading properties. As
part of this, convert of_get_property/of_find_property calls to the
recently added of_property_present() helper when we just want to test
for presence of a property and nothing more.

Signed-off-by: Rob Herring <robh@kernel.org>
---
 drivers/phy/allwinner/phy-sun4i-usb.c  | 2 +-
 drivers/phy/broadcom/phy-bcm-ns-usb2.c | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/phy/allwinner/phy-sun4i-usb.c b/drivers/phy/allwinner/phy-sun4i-usb.c
index fbcd7014ab43..fc9f6fb447a0 100644
--- a/drivers/phy/allwinner/phy-sun4i-usb.c
+++ b/drivers/phy/allwinner/phy-sun4i-usb.c
@@ -758,7 +758,7 @@ static int sun4i_usb_phy_probe(struct platform_device *pdev)
 		return PTR_ERR(data->vbus_det_gpio);
 	}
 
-	if (of_find_property(np, "usb0_vbus_power-supply", NULL)) {
+	if (of_property_present(np, "usb0_vbus_power-supply")) {
 		data->vbus_power_supply = devm_power_supply_get_by_phandle(dev,
 						     "usb0_vbus_power-supply");
 		if (IS_ERR(data->vbus_power_supply)) {
diff --git a/drivers/phy/broadcom/phy-bcm-ns-usb2.c b/drivers/phy/broadcom/phy-bcm-ns-usb2.c
index 6a36e187d100..269564bdf687 100644
--- a/drivers/phy/broadcom/phy-bcm-ns-usb2.c
+++ b/drivers/phy/broadcom/phy-bcm-ns-usb2.c
@@ -107,7 +107,7 @@ static int bcm_ns_usb2_probe(struct platform_device *pdev)
 		return -ENOMEM;
 	usb2->dev = dev;
 
-	if (of_find_property(dev->of_node, "brcm,syscon-clkset", NULL)) {
+	if (of_property_present(dev->of_node, "brcm,syscon-clkset")) {
 		usb2->base = devm_platform_ioremap_resource(pdev, 0);
 		if (IS_ERR(usb2->base)) {
 			dev_err(dev, "Failed to map control reg\n");
-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
