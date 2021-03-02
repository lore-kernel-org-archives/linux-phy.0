Return-Path: <SRS0=UbcY=ID=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6A31AC433DB
	for <linux-phy@archiver.kernel.org>; Fri,  5 Mar 2021 03:59:58 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id F187A64EE1
	for <linux-phy@archiver.kernel.org>; Fri,  5 Mar 2021 03:59:57 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org F187A64EE1
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=oMbglUWZTEp2SRvAC2FyC9tHrrZxNwzQI36pTTgpEcw=; b=cgg1jhaCheDh+6b3l26w/lldLo
	cYQq/PubrAG9bWhDrkA0USEy84700NLRlDGnDuJSd6IqYayB3fV8mZa9xoZTp0aQ7VD5Nz7HC6U9O
	7f/GOONzBFcxV5LLqF8FaUPGwlQk2omBEAYRSE0Z5Mfq9L9dmt1F4aJsvNubh45ktZHQytV4RgT1T
	rMnLoUkRhLLDsW0YHAVKmNzov+WF6Oy43roUGGLQlTmT4B04I09gT7/nwUPhPBh1yA7LLmAhO99Ef
	lbYIFkvixdNRvAJQS/1Hy6u3jvUWR30N9eQUWnTcwdyyw69sHdKVzsnXUSiFu8hWRVsJkVRLsnQ2c
	JdBppXSw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lI1d6-00CEee-9q; Fri, 05 Mar 2021 03:59:56 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lHT8m-005JuY-Vt
 for linux-phy@desiato.infradead.org; Wed, 03 Mar 2021 15:10:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
 Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:In-Reply-To:References;
 bh=WTqhktbSK+pb9FujmiEWqSsD3Ov6W1SagmahMe1crb4=; b=gMaUl9I4c0Xi6RfWKkcGFc9cW/
 MVJwUypSmgP8pVUe8x+NiEDVTUyMrU60vdJ6SRpBOJDvhc+8xu3CcMO3TqEME3xUe78D1euSJ9kHM
 AHfPefqz6FBdp2IxZzou6XRvxBkWoWhJ6LfdsvtBA8noV7MwY/l16ou7xJ2BdjVzx23dCwaaswy1G
 6tFQrOXYv90BLEnO/dmcreztVCda+E6P2rD0yu9Yz639Bpp/s/HLn/0XgqiKPQD7Kf4OUxe6euVlU
 o+71TJcikxShdbx/mhrKOIR21JTRNgzPdvGJf1XtYPrHM31N7C3zSm4pPLhNEFQtLxJxgMUjdnTg1
 OM1cXgTw==;
Received: from mail-wr1-x429.google.com ([2a00:1450:4864:20::429])
 by casper.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lH2gQ-00GyN3-CL
 for linux-phy@lists.infradead.org; Tue, 02 Mar 2021 10:55:20 +0000
Received: by mail-wr1-x429.google.com with SMTP id d11so19348182wrj.7
 for <linux-phy@lists.infradead.org>; Tue, 02 Mar 2021 02:55:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=WTqhktbSK+pb9FujmiEWqSsD3Ov6W1SagmahMe1crb4=;
 b=eekxItstzdek5bmY3Fy4eehDypAbrdub+lzL53FCHxqePg1RLZDjbEEHCxfe7H5MeL
 towuuIVEYAu76BFuny9l7i0558AzCjJQwktgvVC56VAIPG5pefsy7m+wYCgrwh0OwpNx
 tZb3O6EXXH7lqAbnkqYPREIe4oOmXsySzOSAbCE85QopRCcIKKht9ZcDJ0rpP7mYKEnK
 vviYTzhYaT90BQj+oIszMmWAJJrLlYs+e3CcNZ6yaJkA99jdrNtqgOWem7BKqI0WnguT
 SlYzp+ZW5ClaM4W0z+R77lXtqsS8NOCLuyQkkuFQ36eA8CGjqoL3YiRE2anwN2GEu1oP
 fZ7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=WTqhktbSK+pb9FujmiEWqSsD3Ov6W1SagmahMe1crb4=;
 b=D+1MoOOtrwXzM1OQV/dlAABp7lcSAeyj2Vx8u8cFMCv0kAFVogOq3n0Ac2cmWPCIVh
 /3j/Q9LXA1xoC/GBDZE4Q0MAckwC8SjhLCER0viigCEuUyyh0JuxehvrOqw4q1zOXc5B
 AiOsZ2cTXEplZgE6qWSHBe68IDRav/102g/AwoW2bSXhpdtqPz5iwymKEDHP2qkq2DK2
 KVjyoV7SCUmKbaNpdileD39uj9mRWRcAl1AS4wqUqTiBSjJgEw6jflp69Gchi/g8hLWv
 qAmmaN8EVeS9APEs4K7fDV6rWM4cXHuZOgJfHVi/AyE2YDcjJoczGY4zEU8CwNp0orY4
 xurA==
X-Gm-Message-State: AOAM533ObwkL2l9w6m2mF0ODESb35lz1RzT4IxYm3vr/b1SWwK1JO4Bi
 uwa5H6cEHhNQJ0UWTHdJlEw=
X-Google-Smtp-Source: ABdhPJz2NeMkaA+BYqC42OXCin/GZFMyb6o91RKMQqOLxd9eWe0+cyjePPdLgXfy8TyNxcUMz/i6ZA==
X-Received: by 2002:a5d:4c81:: with SMTP id z1mr6493646wrs.85.1614682454582;
 Tue, 02 Mar 2021 02:54:14 -0800 (PST)
Received: from localhost.localdomain (67.red-83-54-30.dynamicip.rima-tde.net.
 [83.54.30.67])
 by smtp.gmail.com with ESMTPSA id v5sm2270407wmh.2.2021.03.02.02.54.13
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 02 Mar 2021 02:54:14 -0800 (PST)
From: Sergio Paracuellos <sergio.paracuellos@gmail.com>
To: vkoul@kernel.org
Cc: kishon@ti.com, linux-phy@lists.infradead.org, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org, neil@brown.name
Subject: [PATCH] phy: ralink: phy-mt7621-pci: fix XTAL bitmask
Date: Tue,  2 Mar 2021 11:54:12 +0100
Message-Id: <20210302105412.16221-1-sergio.paracuellos@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210302_105520_338797_3B83287C 
X-CRM114-Status: GOOD (  10.87  )
X-Mailman-Approved-At: Fri, 05 Mar 2021 03:59:53 +0000
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

When this was rewriten to get mainlined and start to
use 'linux/bitfield.h' headers, XTAL_MASK was wrong.
It must mask three bits but only two were used. Hence
properly fix it to make things work.

Fixes: d87da32372a0 ("phy: ralink: Add PHY driver for MT7621 PCIe PHY")
Signed-off-by: Sergio Paracuellos <sergio.paracuellos@gmail.com>
---
 drivers/phy/ralink/phy-mt7621-pci.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/phy/ralink/phy-mt7621-pci.c b/drivers/phy/ralink/phy-mt7621-pci.c
index 9a610b414b1f..84ee2b5c2228 100644
--- a/drivers/phy/ralink/phy-mt7621-pci.c
+++ b/drivers/phy/ralink/phy-mt7621-pci.c
@@ -62,7 +62,7 @@
 
 #define RG_PE1_FRC_MSTCKDIV			BIT(5)
 
-#define XTAL_MASK				GENMASK(7, 6)
+#define XTAL_MASK				GENMASK(8, 6)
 
 #define MAX_PHYS	2
 
-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
