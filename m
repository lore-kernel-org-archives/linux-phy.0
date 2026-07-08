Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 718CCC43458
	for <linux-phy@archiver.kernel.org>; Wed,  8 Jul 2026 08:15:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=AANbKA3bJu3NPjba+psQ3rEagFMIGqwOoJSZVSuOx8g=; b=PoEun1y8UaR1E+
	m1dy3i9PM9CkCKyat1FSMAlirsjLeETCCDaMKEmft4DUfZFPTfwsby/T7Xt0feYBLT5sEmEt4Nia/
	faLg489KtnkyK/ePviyl+YOaLkDlurLVF/J3hYMmWF+cFoTLVNxNX09iJOfKGrHHV1LlcIXlR6k6Y
	ep3+061Vn0K4cTz7BBMoZxmPaOlqM3DykhHgYoA0XTk2dnDE9udJWt0JnkuRG/qWc8joc9DBlwSKc
	wMm5mQuULAAm7HPqVwTcMYC3zxQqwSDdrcQUbxkS5eCEIGy+z9L8kgg9TJYP7fupV7/3n4W3qFNo0
	HCw/bjV4e5k0UMUkTxjA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1whNR7-0000000GapV-03Ab;
	Wed, 08 Jul 2026 08:15:17 +0000
Received: from mail-pj1-x1032.google.com ([2607:f8b0:4864:20::1032])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1whNR4-0000000Gap4-2FlC
	for linux-phy@lists.infradead.org;
	Wed, 08 Jul 2026 08:15:15 +0000
Received: by mail-pj1-x1032.google.com with SMTP id 98e67ed59e1d1-380cda7f00cso373105a91.0
        for <linux-phy@lists.infradead.org>; Wed, 08 Jul 2026 01:15:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1783498514; x=1784103314; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=ZbH82DynMh5IRVn3HwwkYgwIRHz/+MBq3cLHIEXoxR4=;
        b=rTZJC3mbOsTSxGc5xcb/ap9J5xUQYFRNILeXrergaO5R/tHe/EJ7BQK+jqVVNSbMWG
         MiaLbNPmfXF9USaAljp8riNGo12tEHFgEaUIXyc95HbG3WQe2x2wgAPt5whvUpYZQ7Kk
         9UEM3pE9WzvOcwajJut9nUv67IO5AHn6iAKdftBrA+Yf0dNWfcEyiUnzgwlCFjCBAJun
         LGlv1MZyUR+cR4l/cBpTo7tAi9Ye9btrsqvvgOzwkE/zmii6h54j4JmwToWHeKxiiK/H
         sgPH9r/My6t9mufmiYc1K17ufFInVtbFfC5g6P35LpgR38vWe21cGQyeIhcI2NgTlAGV
         6N+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783498514; x=1784103314;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to:content-type;
        bh=ZbH82DynMh5IRVn3HwwkYgwIRHz/+MBq3cLHIEXoxR4=;
        b=LJdbymL583GnAEwrOTvVlD13u1VSqesrMrbx+A3CS1U+oDiQE03yPMdhu+jal8Gg8R
         Se/vog+NN8O7Yb7Z0HFzyZKVQ7aebX0WS+a4RZW5y3GOAjP0DWW14UQMp8mLiEhhrVk6
         dWf//AY115Ba4dDLUcg3ZIiz75eE8ex4bfPDSoSAZAxo1iER7PycSXU8rFdRxvrGI0gq
         LBM7E4OVago3DK3YtZn2B28iK0Z37Dm9bpNNz7P9pZYMneKnd3uTZxhDt5aUhP0U4pxE
         bz1oebnROVIpzp/3GX2xJh0QwmsS2sPqUl6ch76oFiCfbr264HzgTnrJSkIgUGU9bcqP
         asWw==
X-Forwarded-Encrypted: i=1; AHgh+RrHlHedi3hM3lej/bUUnwKIy/3Hv+Mnx9ETuEknTlotfde1M9HazvKQiqxjdDdC7nxZ5YjPFGgdLBM=@lists.infradead.org
X-Gm-Message-State: AOJu0YyMWmjQJybyDqzVXlMPjRat0NC3M6FZ2ucQGURrexJGSXMryZOl
	ctv8H9GBzI8OkUbSZAyWxkW8pUaxX8mmlVc3RMUOKt64n8fZTaI08k5M
X-Gm-Gg: AfdE7cm60DExGQsAf4HaKXizDq5fgYvj4mqtcj1lBE1xhCJ5lq0Fq6IrqgwOhtwofx1
	8DtsrobTdSnrDor4viaOqeuCdpqli3TSWaZxWcwmfJeW8Qaqmye6lAgcW1huhl4AjxZFm3ukmAt
	XGsic8x+shClo8aaguqdr+0Hz8JFn3pRQ34eioUbGnTXBUbgMjpnOQx4mqd4lFIaCwbJ2ldRClB
	wx4ioXAqkRD5rAAf9IPuy2rVWIZlJJLF4Vni+5iv5PCfT1ZpBZlR6OVlseOdfD2STp+yZJTDJ1v
	V0sIxtAbUqEsxoqlmPjXKnhwA4OrbSpbyMNeTM3LPLIpTFPx0trldLVSOLpp9vOTJZ52DEgCA5z
	SWHckcyvGlB6cg6G1HikZmW4v/Z+7Osra8x5NOZGk2cZSo33RJlRQL3+W/XxySxhA/aCFfzQ=
X-Received: by 2002:a17:90b:4c:b0:37c:8628:f79e with SMTP id 98e67ed59e1d1-38940248a3dmr1509053a91.16.1783498513676;
        Wed, 08 Jul 2026 01:15:13 -0700 (PDT)
Received: from lgs.. ([2001:250:5800:1000::f280])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-387d20a361asm2337241a91.15.2026.07.08.01.15.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Jul 2026 01:15:13 -0700 (PDT)
From: Guangshuo Li <lgs201920130244@gmail.com>
To: Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Johan Hovold <johan@kernel.org>,
	Guangshuo Li <lgs201920130244@gmail.com>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] phy: ti: omap-usb2: fix OF node leak at probe
Date: Wed,  8 Jul 2026 16:12:54 +0800
Message-ID: <20260708081254.734892-1-lgs201920130244@gmail.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260708_011514_578362_D76FB34F 
X-CRM114-Status: GOOD (  10.93  )
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

omap_usb2_probe() parses the ctrl-module phandle and then looks up the
corresponding platform device.

of_parse_phandle() returns a device node with a reference that must be
dropped by the caller. The driver currently keeps the device reference
taken by of_find_device_by_node() until unbind, but never drops the
temporary OF node reference taken by of_parse_phandle().

Drop the OF node reference after of_find_device_by_node() has consumed
the node. This covers both the successful lookup path and the

Fixes: 9955a7835bf3 ("phy: omap-usb2: use *syscon* framework API to power on/off the PHY")
Signed-off-by: Guangshuo Li <lgs201920130244@gmail.com>
---
 drivers/phy/ti/phy-omap-usb2.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/phy/ti/phy-omap-usb2.c b/drivers/phy/ti/phy-omap-usb2.c
index 1eb252604441..660df3181e4f 100644
--- a/drivers/phy/ti/phy-omap-usb2.c
+++ b/drivers/phy/ti/phy-omap-usb2.c
@@ -426,6 +426,7 @@ static int omap_usb2_probe(struct platform_device *pdev)
 		}
 
 		control_pdev = of_find_device_by_node(control_node);
+		of_node_put(control_node);
 		if (!control_pdev) {
 			dev_err(&pdev->dev, "Failed to get control device\n");
 			return -EINVAL;
-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
