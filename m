Return-Path: <SRS0=tTY/=KD=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97661C433ED
	for <linux-phy@archiver.kernel.org>; Sat,  8 May 2021 06:52:56 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 003206145E
	for <linux-phy@archiver.kernel.org>; Sat,  8 May 2021 06:52:55 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 003206145E
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=W3UcudMV/wJjNF1OCs0PyGhxJ6IvNMVxovTXBH9bl3Y=; b=f8dewC/c37hdF3p4lEwI6kujO
	nPdeWHM5z5J3eWnaWMc8ri/Zfz3KsUpMh5xVB+hqz3o5vqUPJRCWHrr9eJJlLeQebfkGxcuLngIHd
	XcXObQnDL/UZqDziASOmVRHd8FvWkjmXkjy7qjwpSn4r8XoS6Vcyy2z5b3VK0D2OdZmK58fTeqf2n
	UYdIw/PDa36wccPyuxlmtdOMmpgNIT4bduOtue/7kR22Bh+1W416PMvdqWLloWMPJdlGC+oui698f
	K6zibiJFoZJqM36nui0sbUwjL5mU3jLLn+mrUkoappoiayRtlc3IEzhGb55fMIoBfdmHkS+dsqbsC
	OEYciQaZg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lfGpa-0090Im-6K; Sat, 08 May 2021 06:52:54 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lfGpQ-0090HK-34
 for linux-phy@desiato.infradead.org; Sat, 08 May 2021 06:52:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-Type:Content-ID:Content-Description;
 bh=b+GCOf42Gs4UdMdK0477XZHtOpuU44Ecgu3QGsmZOXI=; b=pXPWIky9lk6Yft9njWJezGTaxN
 JWxlpnPWTlC3zSAb1tAlJGezJbqJjeglgk3a218r60DUTK/kAJX7m9tFJNuYqM5J5bn31RuQzPAbP
 HIC/NW1DAOGczeMbEb/fRdLCP4mwLa4UIJ8K+eZsrRmjkKryRnXj2VYGiGPY95jvLBIzX8Gh4u9HJ
 BPA7TTP7wLsWrYXgcea1XHQEYj8di5p/jtaNAgwig7WrFq+O83HNjgqbWwnv24+lHSB0SMINOFv5X
 mgWwP/oooMewp1ROqcIeyviEyTtMY1Z4hWGa+bApjvQHSgmtgMB1KQrPIe2VNobr/diM7SnhjO2ED
 Des9KmWw==;
Received: from mail-wr1-x42f.google.com ([2a00:1450:4864:20::42f])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lfGpN-007PMW-Fm
 for linux-phy@lists.infradead.org; Sat, 08 May 2021 06:52:42 +0000
Received: by mail-wr1-x42f.google.com with SMTP id m9so11361485wrx.3
 for <linux-phy@lists.infradead.org>; Fri, 07 May 2021 23:52:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=b+GCOf42Gs4UdMdK0477XZHtOpuU44Ecgu3QGsmZOXI=;
 b=D7YXSUvFJ1UwGS+L85/ddn9o7Vw4zuD6OMLrBiYsz5zuj3d44dVU9fOL5dEsSZggE1
 HESWScDH+/OMGjnTOi+Gg9msmbatZU98GC70wqhS5l71pT0Zge9OzSVCIg7X2DlbMcp9
 c1hdumLmmRg90tivSQMzAtHoUnxtXvoqm+nZ/EmlqFQ5xNRuvh/7dBEoaC48WqOR7Cbw
 E6QlYKZSIo0VB7RPw2c5F7SdURRi+GPP/h4laftc2bLQExdy6pJL99bgaA2raUhbL4pd
 6jZWeBiefAw3O6Nu9MWKX7DIyHp6ikkHJRcGx+F4ycwk6z6k67slL3bErsjEaraEdODc
 dF4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=b+GCOf42Gs4UdMdK0477XZHtOpuU44Ecgu3QGsmZOXI=;
 b=JH8qKlYZBapQhNOjTXqH3+eq29xsteayj/ZFGbiW4BjreRGj0BVaTEi9lWgH/9FduG
 6Ocwtd0011QcnzLOliComJ0U3IRQk6CB8NBnlE90MZEuAINTKP9Dcgcxv0blZpclP8qP
 PDSI+izvCi64rulFaAci3Zd+aGYkIUFcoRtbFpiV+vUhULGuQkIrzwvIkOMF1qhnggSb
 qlcb/8H9FDleLiLn8W9JN+SwgyvpmLSZ+Kf2NPyOuT60y0u832WNCOFZiehgBB/Ce4Jq
 qhdJNzqKO27RfZLb0klJwxlcf4ODxVPTVMlTk35frqZ6pLsfjqlpvsRhFLzz3PLOO7Jk
 cRag==
X-Gm-Message-State: AOAM533tXVEQWQurZLwM8HrEX6qof2KuwVrBMe2OPggxcqOB0j72x5hn
 aXicfst1JhQNqcbBWA9r4RY=
X-Google-Smtp-Source: ABdhPJzJmb7g9rySb6hDTExDxrdT2v6fxhAzYGLCgbfbAq9xJrgWHzJjWZhQvsb+hXEHxu/2QIvUow==
X-Received: by 2002:a5d:4b42:: with SMTP id w2mr17885451wrs.248.1620456760085; 
 Fri, 07 May 2021 23:52:40 -0700 (PDT)
Received: from localhost.localdomain
 (231.red-83-51-243.dynamicip.rima-tde.net. [83.51.243.231])
 by smtp.gmail.com with ESMTPSA id b12sm11638010wro.28.2021.05.07.23.52.39
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 07 May 2021 23:52:39 -0700 (PDT)
From: Sergio Paracuellos <sergio.paracuellos@gmail.com>
To: vkoul@kernel.org
Cc: linux-phy@lists.infradead.org, kishon@ti.com,
 linux-staging@lists.linux.dev, gregkh@linuxfoundation.org, neil@brown.name,
 ilya.lipnitskiy@gmail.com
Subject: [PATCH v2 5/6] phy: ralink: Kconfig: convert mt7621-pci-phy into
 'bool'
Date: Sat,  8 May 2021 08:52:31 +0200
Message-Id: <20210508065232.4882-6-sergio.paracuellos@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210508065232.4882-1-sergio.paracuellos@gmail.com>
References: <20210508065232.4882-1-sergio.paracuellos@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210507_235241_540332_5D7802AF 
X-CRM114-Status: GOOD (  10.88  )
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

Make dependent on PCI_MT7621 configuration option and mark
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
