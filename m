Return-Path: <SRS0=tTY/=KD=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,URIBL_BLOCKED,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A57C9C4360C
	for <linux-phy@archiver.kernel.org>; Sat,  8 May 2021 07:09:47 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 2CA4961458
	for <linux-phy@archiver.kernel.org>; Sat,  8 May 2021 07:09:47 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 2CA4961458
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=PdpuTlviHGssm9LdQnnkO1fTgrIHmbExW/8CnnFUd80=; b=l9TtgnTdShakqrYqjLxrWgtcp
	DsZ2EX1LvXpBi/LwaFJ5Qk/BBacCiB0EGQfwH82fbjjXUwQ1rThgNmNzqKYe3wzHJbxLWFre0qdtf
	eTUM9eUIP3IofoeAbD3jCKjCnyXs7M3ku7n5GymIAjluFKktu0BnSSLMV6GldY+6faGT7CJo0H5ZK
	XEfhm4zpWU/fxdevtOCrR9jigU3Er+ESQ5dYFopf3t3NId6EDV/TVNeTdgZ3hKeUf5O6RRR9FBHGE
	B8yiMD7VMByDmPzmeahqnGRVqY4SNUPd2iHUSxsAvJYxf5EXewDK7FhezV2ddLe5fP6oPPuXw+V+r
	e3u6sQMIg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lfH5t-00926W-AK; Sat, 08 May 2021 07:09:45 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lfH5p-00925h-Jx
 for linux-phy@desiato.infradead.org; Sat, 08 May 2021 07:09:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-Type:Content-ID:Content-Description;
 bh=rnhsZglV9Tim8CW0KmXYUH85PSzSV/y0PNcnH/Ygu/E=; b=t/pfKL5NXkSdbSK04MvriyULbq
 thqx/S0QFvQJfSGmeCllH0QOyjaQvseNSchf/b6mcRR2vh3NNDM2qp70mSC6Yse1ZrVMVlFec00bs
 QQYE2kSP3w8X/IrjpL5SKwB2oWt543m8NHtaL7oB+xVcbjNt5x4yZ3RjvghmydJofNa2ihIL71zRV
 /8QZAinb7DSj/w/bXlY+qNvRVcqBu6QqIfjhsZ2PlI0M3iQp8S4uyT8fIwJ9NM+nrRvmoHS+vBVit
 P9XiljhrDYbsj8ODDHQW+GNlk5M/sYb2uNNMs+6mfDsUFqx5YtzWoXxPdk7LsceoRdiFvrrgLo3gv
 JF3lATWw==;
Received: from mail-wm1-x330.google.com ([2a00:1450:4864:20::330])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lfH5m-007Pn7-9w
 for linux-phy@lists.infradead.org; Sat, 08 May 2021 07:09:40 +0000
Received: by mail-wm1-x330.google.com with SMTP id
 4-20020a05600c26c4b0290146e1feccd8so6022901wmv.1
 for <linux-phy@lists.infradead.org>; Sat, 08 May 2021 00:09:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=rnhsZglV9Tim8CW0KmXYUH85PSzSV/y0PNcnH/Ygu/E=;
 b=YLg1H8X1j8kxUMAwnZhsSw/AkR3W4e1l8e6kRcSupQ2mSM9AU9BScMbsuG54kJlJxr
 5teQ4DCcfgqhMz/wfJprNpVtpd8eigd6YcyD+U2CkSgrzer0G9+YOUnxvxw8/3Ez1pTT
 c2nXftEVH8gWQYBJvkTo7akxHI7hHE3MgsKrSLV4l/aHDaDMfZWvmdzxQfSEv5dZD3Nb
 C4aT/rUFgJjFMCvufPdZ6rhO68m+/fcVhGOt0FehxV7+4t9hCaaf/c8XFQQ3f1KSZb5F
 4lP1/E2tDny2sLb5scTUNuliBI2s+ppzvisEHbyrWNtknRIe7AwSpAzqvQ/UA17XQ9Hc
 vVOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=rnhsZglV9Tim8CW0KmXYUH85PSzSV/y0PNcnH/Ygu/E=;
 b=MF05R/vEH8v0Kg2xYAyU8AKes4gMbKaUfYk0Q3aFMb35+/ALkR2GWwFAeA9NrgAuuR
 DidWxuZCsphia/raONP/bij8zn5kCABPHGNfA/2cBm0TQn6i9T1wpiGpHrUdewls7s31
 OmAvKaifrKFsAGrofhal/Ur5AX9O68YHWYs3yRsRfAxDlI0KxwnnmgWHyILWpbg/au7G
 uUdHPJBj1hM5ql433nrpyz3ML9lydY2TDn5zlEln3KQq+aR5XHkjCA6xrcW4X42o5590
 Z8Kze7wG6y7JDt3g6iKHB0pJeyTV/gC86cZsmpjrU/f0Wyf5HBewItl4PUbVtoIw9HcE
 Mohw==
X-Gm-Message-State: AOAM530GopUM9DHBg55l0Byq1k3F2U96ih3Bhht6jSxAfOtrLAG4FZtN
 xIT3+46XTwAoc2dUymKlhnA=
X-Google-Smtp-Source: ABdhPJyi+7UG69Vr4iIbxkAYCyKrApkNdVexRvTWHId3nfd9GQLU8QIDLtXsgRizPVYG2wq/iAbBFA==
X-Received: by 2002:a05:600c:2315:: with SMTP id
 21mr14259673wmo.39.1620457776835; 
 Sat, 08 May 2021 00:09:36 -0700 (PDT)
Received: from localhost.localdomain
 (231.red-83-51-243.dynamicip.rima-tde.net. [83.51.243.231])
 by smtp.gmail.com with ESMTPSA id s18sm11740345wro.95.2021.05.08.00.09.35
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 08 May 2021 00:09:36 -0700 (PDT)
From: Sergio Paracuellos <sergio.paracuellos@gmail.com>
To: vkoul@kernel.org
Cc: kishon@ti.com, devicetree@vger.kernel.org, linux-phy@lists.infradead.org,
 robh+dt@kernel.org, linux-staging@lists.linux.dev,
 gregkh@linuxfoundation.org, neil@brown.name, ilya.lipnitskiy@gmail.com
Subject: [PATCH RESEND v2 4/6] phy: ralink: Kconfig: enable COMPILE_TEST on
 mt7621-pci-phy driver
Date: Sat,  8 May 2021 09:09:28 +0200
Message-Id: <20210508070930.5290-5-sergio.paracuellos@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210508070930.5290-1-sergio.paracuellos@gmail.com>
References: <20210508070930.5290-1-sergio.paracuellos@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210508_000938_353696_87F10E46 
X-CRM114-Status: GOOD (  12.05  )
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

After use the clock apis and avoid custom architecture
code this driver can properly be enabled for COMPILE_TEST.

Signed-off-by: Sergio Paracuellos <sergio.paracuellos@gmail.com>
---
 drivers/phy/ralink/Kconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/phy/ralink/Kconfig b/drivers/phy/ralink/Kconfig
index ecc309ba9fee..c2373b30b8a6 100644
--- a/drivers/phy/ralink/Kconfig
+++ b/drivers/phy/ralink/Kconfig
@@ -4,7 +4,7 @@
 #
 config PHY_MT7621_PCI
 	tristate "MediaTek MT7621 PCI PHY Driver"
-	depends on RALINK && OF
+	depends on (RALINK && OF) || COMPILE_TEST
 	select GENERIC_PHY
 	select REGMAP_MMIO
 	help
-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
