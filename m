Return-Path: <SRS0=oIvu=KB=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4BDB4C43461
	for <linux-phy@archiver.kernel.org>; Thu,  6 May 2021 11:17:41 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 9F81661185
	for <linux-phy@archiver.kernel.org>; Thu,  6 May 2021 11:17:40 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 9F81661185
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=y+RqqH9kqKHpzC+unYGARMTz/snWKrGRylcZ7M5lZ4Y=; b=TzyqJPlBuPnQf2NmrBSoHAMi3
	ToCYdFRxryXu5fleIzCpjGWwef36NpfMib4x7MWoBo04PiAk4NcR9GAdvz/BzjOtfa4anfaZqWIFc
	y85hKHq9YeE+HoFQTS/bto1SVvpxEVO8SgZ0u/XKqNPBmW24QOsmn4oWWjeo7fPOfcl4IVPWfpkE/
	M3S9372LknanA3eqJQWMHKi/VOwL+f3s8buWXgFkqXd5gFSo4/KeR2Uyf33MOepgl5h7Es434/+Fm
	nyV1bCvCaHgsBsThRsTux0+w1BKlVFM1s1XplOjFCx0EuYnYeC/T9IQ4ywTQA5cCy+XcYfUrNFAbA
	oudSI6uwQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lec0h-0046VQ-1G; Thu, 06 May 2021 11:17:39 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lebyq-0046Dm-JZ
 for linux-phy@desiato.infradead.org; Thu, 06 May 2021 11:15:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-Type:Content-ID:Content-Description;
 bh=MT2OIJc0hWlPnCiaadINGKimv/o5gd+Xz7S2c7tjZ5A=; b=3oYgZuXaU7YQkFmzk5rpEcQDJs
 tYcExwFnPWygrackoo5XtMBZItOilVk8ttb6WaV0KIaa5bEp0aD6GEGuayux7cKYaFsPtogtTEECc
 qil/9ssltXBUdNi15e62nIrtVjaYPj67txEu4N4GBJFSbqoEDtEhdAmpzk3E+/J2CQPyJKzq5g2pm
 HpyU9+lMdpWQdr+nIge1gbqZznpTwNuwz6S74Lqtoe8shFWKBahAEhWOq4YHVVDcWv2j+bxh7jAmt
 DrLAvyDvI88a/yDUm5qwmHXCoNdDP7Ti5cPp2yIcRox+5UbjrtiOiyfVxHwcgos7682sKO+5jGbgq
 JXlxe86A==;
Received: from mail-wr1-x436.google.com ([2a00:1450:4864:20::436])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lebym-005yhq-U2
 for linux-phy@lists.infradead.org; Thu, 06 May 2021 11:15:43 +0000
Received: by mail-wr1-x436.google.com with SMTP id a4so5183178wrr.2
 for <linux-phy@lists.infradead.org>; Thu, 06 May 2021 04:15:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=MT2OIJc0hWlPnCiaadINGKimv/o5gd+Xz7S2c7tjZ5A=;
 b=h2C/opMO/xlErlLNdiKWB3MBoV9Axf3M2fUjM5MeerPmbEYvsRMkdruuYJ+Us0E5yq
 FT/fa11B721XvsrdmV6OvnjhXN/xlJV5b2XuhiTGHANyvmiejdl8nMKH58WacAG9RTRz
 SwtigXWJKmFu+uwaQFVuMYeshCZgBeEdpYhfMP183k7c8uyMcXLS1uKBUpUPT1FoqJcL
 A/muttqnqY2WM+XULu4FuRtd6y2UXI9udvDwYHZAGYunuKQnbr7toKT2EMyT6wSZXGj4
 0SThp8n/d6QywFcL8KaXTmFex/ziy1EpTG8pHgBvVtPTeJSpBtbsCmOirP+4mpdZ0Irc
 ydNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=MT2OIJc0hWlPnCiaadINGKimv/o5gd+Xz7S2c7tjZ5A=;
 b=L3vQ1A0FIPPuioqSp5EZKJDHtO0xg82yUONPrVXPdKZlKYClZ9hdTPD2KaU0QLZSqi
 v6ApoK+Cd2KQG6czQVNayag8ZK8Kx+0WLGTdn9lACUyILT7dA4NPn7a9QeaJ1WKlwOU0
 i8xCu+/EnYVXhjmGSDNZNy8xvYwx5Nvj/cS2eVkxWia/+dpgJeFa2vGaxwpyvoeKdQI1
 jn1FeyxGyCnFQlurEe5uU4NCF7pDViex3vbN+bBgAJow9L5eTZDU1IPf+T49rWq12hCB
 cQAwEOfO4sO02g+ZQWtsqP3A6828DmOLoYap+ojv6FCmZYkBuG+JGMsR1tczKqIZ6Lr0
 n65Q==
X-Gm-Message-State: AOAM5327QA9m71qEBvnC0+I9EPn9hftkoZwfvBP1c1Il6pEhV0XcB/bw
 JoqhBPhGoszdH70BJ/uIS+g=
X-Google-Smtp-Source: ABdhPJzGyRIuyk5j7KRK+KqSfoclECQr1Gfb2VaxcdMsLESXtKRSzk91U979iL7Z8FNB3REDhwBNRA==
X-Received: by 2002:adf:ec4f:: with SMTP id w15mr4479506wrn.122.1620299739235; 
 Thu, 06 May 2021 04:15:39 -0700 (PDT)
Received: from localhost.localdomain
 (231.red-83-51-243.dynamicip.rima-tde.net. [83.51.243.231])
 by smtp.gmail.com with ESMTPSA id u5sm3642433wrt.38.2021.05.06.04.15.38
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 06 May 2021 04:15:38 -0700 (PDT)
From: Sergio Paracuellos <sergio.paracuellos@gmail.com>
To: vkoul@kernel.org
Cc: linux-phy@lists.infradead.org, kishon@ti.com, robh+dt@kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-staging@lists.linux.dev, gregkh@linuxfoundation.org, neil@brown.name,
 ilya.lipnitskiy@gmail.com
Subject: [PATCH 5/5] phy: ralink: Kconfig: convert mt7621-pci-phy into 'bool'
Date: Thu,  6 May 2021 13:15:31 +0200
Message-Id: <20210506111531.21978-6-sergio.paracuellos@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210506111531.21978-1-sergio.paracuellos@gmail.com>
References: <20210506111531.21978-1-sergio.paracuellos@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210506_041540_988662_C6F8DECB 
X-CRM114-Status: GOOD (  10.96  )
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

Make dependant on PCI_MT7621 configuration option and mark
this pci phy configuration as bool which has more sense.

Signed-off-by: Sergio Paracuellos <sergio.paracuellos@gmail.com>
---
 drivers/phy/ralink/Kconfig | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/phy/ralink/Kconfig b/drivers/phy/ralink/Kconfig
index c2373b30b8a6..ed0c71eff2c4 100644
--- a/drivers/phy/ralink/Kconfig
+++ b/drivers/phy/ralink/Kconfig
@@ -3,8 +3,8 @@
 # PHY drivers for Ralink platforms.
 #
 config PHY_MT7621_PCI
-	tristate "MediaTek MT7621 PCI PHY Driver"
-	depends on (RALINK && OF) || COMPILE_TEST
+	bool "MediaTek MT7621 PCI PHY Driver"
+	depends on (RALINK && OF && PCI_MT7621) || COMPILE_TEST
 	select GENERIC_PHY
 	select REGMAP_MMIO
 	help
-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
