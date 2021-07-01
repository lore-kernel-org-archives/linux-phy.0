Return-Path: <SRS0=Uwmf=LZ=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FA16C11F64
	for <linux-phy@archiver.kernel.org>; Thu,  1 Jul 2021 09:39:22 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 71CEA61449
	for <linux-phy@archiver.kernel.org>; Thu,  1 Jul 2021 09:39:22 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 71CEA61449
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=L4yUp5BXy5836ugwHglZSzreR1mtNwoTeRpC906w0Vc=; b=JHTTYINiBurOTW
	w6Lihha2EEyHbIiee/Ja7mWUFnBvZ1fY/LMDP19cMdyftBUhUMMg9l03JXGFIaeNLYIN8vByFqjWH
	y79OgXFURRlhLvcE9tCNJVwD5Q2EASwST0janVGab2Bc6mDGdaYs82PsGXucPxxCqCqy9/kRJdjao
	nnXNBmepCoFgBCzOwFoTbhNpylexjWtMHnxqOtjN2EbHFe+pMtSnSkLhmnOUhGIjJmusdDpWzJz8Z
	jN1/wGHrldHsLR11rO4vWxQHZBvadXdSkE3Ug/+trdUf8h33hrz95BdC6mKa3WUEW6rWlWD4EqBG8
	3T/9tiN5Nn8Uc5K8LOQQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lytAI-00Gmbw-0g; Thu, 01 Jul 2021 09:39:22 +0000
Received: from mail-wr1-x433.google.com ([2a00:1450:4864:20::433])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lytAF-00GmaA-2n
 for linux-phy@lists.infradead.org; Thu, 01 Jul 2021 09:39:21 +0000
Received: by mail-wr1-x433.google.com with SMTP id p8so7374328wrr.1
 for <linux-phy@lists.infradead.org>; Thu, 01 Jul 2021 02:39:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=EteEmF3Lp/VaCzgm6zJMhc5umO2ASKXQnNmmMqr1tyY=;
 b=n27K8xSc5i9k4pRnthrnVcOCeJ7Nl2hOJLEBy4pNnYc/TBewzXbVZfhTzlnkCiSZkH
 +p1Ml12cArHwaAQuucyF4Y7bsC9WQLu3qOFSN5G8liifR9f/TYUXxg8Zr9qwoW21817z
 Ljigm3UGNACmRDtyQJ+XcTFhI423ymHuXLbP7HECNQFoy7CaNNRBzmQyCvjEfpgToYyj
 okdbdH9iH20L5JXc+M0diFvNYFBft9LDb1decwb2boaSbwXKriengXBtHtyruoR7vpHQ
 dkAI1A67aUvw+wzWs7fllAZ6Zd/rVs2+9pGhOTttsJCzoF2q7idqNXde1mPxDGQ1sBJ0
 kFEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=EteEmF3Lp/VaCzgm6zJMhc5umO2ASKXQnNmmMqr1tyY=;
 b=IXG7vtiJySRaJo6ZVvTJ4Hrk7awJFUeHBRFLmfYg29FCFkqQptH1bUyfEqQybfuR8Q
 1mYgJzS6S6KgmnbQf7RDpSgugY/ewMvq5yZQCANgSkvE4Obe7Vr5OMRCaHRfdvLV+BFZ
 45YrB4Lb7bfDOLPXridhqwzH92xjcUErVUntdyBuhV64wAKvwtOEsFNYJwqcwJEnO+P7
 avHLyVa1DM5zjwPVJa07iHSlZap0GaI4h8rpilwM94vwDYBvywyckpJI5nzYsUyxyb1Q
 ga20kKOLslALe+++votokRuKckjk8/RD5Zi1dNtIGg2MAoTxkpz8xtZKwtQkUSfXX/20
 Ga2w==
X-Gm-Message-State: AOAM531KXTuDhVjfSrPF7sfQdPTn8oS2DPYfifUGsZyhLMPYOLSfDRfM
 0FR8t4EwoKk0+JfGWx6Sphc=
X-Google-Smtp-Source: ABdhPJy1ZxB6OSrNUo8EIlwIhP2R2Oh066AMEgk+CCD2AjW50J2Uohgej+UhDxh5J4YfsYDMcgb8FA==
X-Received: by 2002:a5d:6841:: with SMTP id o1mr14964784wrw.370.1625132356515; 
 Thu, 01 Jul 2021 02:39:16 -0700 (PDT)
Received: from felia.fritz.box ([2001:16b8:2de7:3e00:21:6759:f8f2:826e])
 by smtp.gmail.com with ESMTPSA id k6sm22370164wms.8.2021.07.01.02.39.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 01 Jul 2021 02:39:15 -0700 (PDT)
From: Lukas Bulwahn <lukas.bulwahn@gmail.com>
To: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: linuxarm@huawei.com, mauro.chehab@huawei.com,
 linux-phy@lists.infradead.org, linux-staging@lists.linux.dev,
 linux-usb@vger.kernel.org, Ralf Ramsauer <ralf.ramsauer@oth-regensburg.de>,
 kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org,
 Lukas Bulwahn <lukas.bulwahn@gmail.com>
Subject: [PATCH] MAINTAINERS: repair reference in USB IP DRIVER FOR HISILICON
 KIRIN 970
Date: Thu,  1 Jul 2021 11:39:03 +0200
Message-Id: <20210701093903.28733-1-lukas.bulwahn@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210701_023919_170985_C44778F4 
X-CRM114-Status: GOOD (  11.95  )
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

Commit 8de6b7edd493 ("phy: phy-hi3670-usb3: move driver from staging into
phy") moves phy-hi3670-usb3.c from ./drivers/staging/hikey9xx/ to
./drivers/phy/hisilicon/, but the new file entry in MAINTAINERS refers to
./drivers/phy/hisilicon/phy-kirin970-usb3.c.

Hence, ./scripts/get_maintainer.pl --self-test=patterns complains:

  warning: no file matches  F:  drivers/phy/hisilicon/phy-kirin970-usb3.c

Repair the file entry by referring to the right location.

Fixes: 8de6b7edd493 ("phy: phy-hi3670-usb3: move driver from staging into phy")
Signed-off-by: Lukas Bulwahn <lukas.bulwahn@gmail.com>
---
applies cleanly on next-20210701

Mauro, please ack.
Greg, please pick this non-urgent minor fix on top of commit 8de6b7edd493

 MAINTAINERS | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/MAINTAINERS b/MAINTAINERS
index 66d047dc6880..a4e0c20b416a 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -19153,7 +19153,7 @@ M:	Mauro Carvalho Chehab <mchehab@kernel.org>
 L:	linux-usb@vger.kernel.org
 S:	Maintained
 F:	Documentation/devicetree/bindings/phy/hisilicon,hi3670-usb3.yaml
-F:	drivers/phy/hisilicon/phy-kirin970-usb3.c
+F:	drivers/phy/hisilicon/phy-hi3670-usb3.c
 
 USB ISP116X DRIVER
 M:	Olav Kongas <ok@artecdesign.ee>
-- 
2.17.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
