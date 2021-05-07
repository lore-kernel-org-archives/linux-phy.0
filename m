Return-Path: <SRS0=/0rM=KC=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4E9A8C433ED
	for <linux-phy@archiver.kernel.org>; Fri,  7 May 2021 06:01:57 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id BDD91613E8
	for <linux-phy@archiver.kernel.org>; Fri,  7 May 2021 06:01:56 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org BDD91613E8
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=P+8dJ6EcMdT0YlhRai8zKZQJTjVFZY9XJJ21uinplvI=; b=faryn1joQnUNL7M245eXFyynm8
	YaVQcWzHImwR7rk4dvo9xP5dr1pnhfgh4+yQimTGElhhnueverbHM/SJ4nLMp9zDn54u9PgqS0qvP
	36wLCJKa7KQunC3xOq7Oh7NPJrS/3DfxsjoCdf6BH3jyEA+5aE6CQaEw68hbeok2oh1UbAptSsYqg
	aFbvmCjCx/mrJoBzXErxmbB+xhDAvd+cBT6aa9fhUIbbD37a+/tkUJoEfUBva5ZMH//FpL4tVGeqd
	+Tgp9qZvriXD/E+eQ7qRJbQOxA0Ih37m9k9FsKg7V0ZYTRdQh0Zbtez1qJH0OsZCeNNofQjm82rBu
	Oms2HMCg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1letYh-006DBo-4c; Fri, 07 May 2021 06:01:55 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1letYc-006DBW-Pz
 for linux-phy@desiato.infradead.org; Fri, 07 May 2021 06:01:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:In-Reply-To:References;
 bh=gdoi/Ql794n4I6ECv2j9dtEFRugBMOEUCreF0AscFPk=; b=q0TS29dHw2ZonlTvR2kV6vCMRv
 sHe+klCgoqFMd8uSVMS6x5vX9KtxHZURHQ7cZMm0a27OfngIXGp7Y6ww+YsmHZ86lYBpWxjjUzFFm
 mtRgKtOOMfVC7d+rHeDBgrsbdhWSvcPewKNwFgk8Ea7alQ00Yda11m8+OnWkRZ6AU1W/F3aotbqUG
 R7w3lX2ID01GoiDo4QRmkr8J9Dl5GeLkKWsIUrwKC+2EUaFVgBGA8nVOnaIZyZEWMySnWRXistzrY
 tmGFATwKwQIKvJKPQB+OqkRwKTj2chf34JczF0omswm1M6YOoxXecMuw2hTe42pvxjACZS82Apxm2
 owc5FSQg==;
Received: from mail-wm1-x32e.google.com ([2a00:1450:4864:20::32e])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1letYa-006bkD-5V
 for linux-phy@lists.infradead.org; Fri, 07 May 2021 06:01:49 +0000
Received: by mail-wm1-x32e.google.com with SMTP id
 s5-20020a7bc0c50000b0290147d0c21c51so4170888wmh.4
 for <linux-phy@lists.infradead.org>; Thu, 06 May 2021 23:01:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=gdoi/Ql794n4I6ECv2j9dtEFRugBMOEUCreF0AscFPk=;
 b=ZRs7XjuVmWRbqGlwoI/5q5k9lWVg/dGkjtzP/COgnl8vyQaVMjg9aGtksgTZeVojDY
 qKaY+5mtSPQRzlWo8E4XPy1qhS4Ld9v1vIWSDJJmPwCOw1zQ0CG2K5qZH1/GxOMDMKCU
 VOcsTDv1g6AajWCd7fH8/bW6tg/SeOD9xITxni1YAS+xP3WZeZYssGesuYshEk9SgC9u
 GGspo+/l2X9B2YDDJqYq/gwDcKQxO3aBaoRfTixaCA39UWR5a9J8S77il0HCl8PalyFa
 aLZkrCnWiSDCAOpFoipN4ZdyALgVDEC4n0ayLhIP9p5wsUAZpmM7t3sPl/RpWjjQGU1Y
 rNZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=gdoi/Ql794n4I6ECv2j9dtEFRugBMOEUCreF0AscFPk=;
 b=nJFSMQIIsWvjSKDDvkCYOK82AEnLyHTSQQ+DuB+zLKdtyAmvB0UUZEvcmKRxHS4c3E
 pqQ8tOQBlDu5xxNUTUs5HnOhk6Yef/jLjQuEPbQjkkpbk4CbaImtrGW5PNi6zQAcQEOs
 7xNq5biNYSn73CRWzt7fertVNseEI220lAgiKnoT9tm6DoejZNyQjzU5UXwchkM62YaG
 A5zEj6aFZ7pMVTkMwLi1PIeeI3u896J8Tr1wkO+uYi6JbfVJr4plhiTqW115flTkDHVG
 XZLe/GocmTozbr4tJvpyQOAFegeFEUjI07JICGZ9pFqHyp3T3ZkPtWQaUUtni78QJ13Z
 8zfA==
X-Gm-Message-State: AOAM5303FQN+kKoI0zZfW4zwaha8yTfrOR1ZzdkyuCv5a3CSFTevlfud
 /LYxSuxRDhq/qA3coK6CaJ8=
X-Google-Smtp-Source: ABdhPJy6AVR/t54PlZkE7ZrKrOCcVGpPfgWXcYCh5LyVUnABjvf/JzN7PpjBMHth6obsTFxS1ZPHrg==
X-Received: by 2002:a05:600c:3205:: with SMTP id
 r5mr7967581wmp.78.1620367304414; 
 Thu, 06 May 2021 23:01:44 -0700 (PDT)
Received: from localhost.localdomain
 (231.red-83-51-243.dynamicip.rima-tde.net. [83.51.243.231])
 by smtp.gmail.com with ESMTPSA id r2sm7120242wrt.79.2021.05.06.23.01.43
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 06 May 2021 23:01:43 -0700 (PDT)
From: Sergio Paracuellos <sergio.paracuellos@gmail.com>
To: vkoul@kernel.org
Cc: linux-phy@lists.infradead.org, kishon@ti.com, linux-kernel@vger.kernel.org,
 linux-staging@lists.linux.dev, gregkh@linuxfoundation.org, neil@brown.name,
 ilya.lipnitskiy@gmail.com, kernel test robot <lkp@intel.com>
Subject: [PATCH] phy: ralink: phy-mt7621-pci: properly print pointer address
Date: Fri,  7 May 2021 08:01:42 +0200
Message-Id: <20210507060142.17049-1-sergio.paracuellos@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210506_230148_245418_E757FD2C 
X-CRM114-Status: GOOD (  10.99  )
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

The way of printing the pointer address for the 'port_base'
address got into compile warnings on some architectures
[-Wpointer-to-int-cast]. Instead of use '%08x' and cast
to an 'unsigned int' just make use of '%px' and avoid the
cast.

Fixes: d87da32372a0 ("phy: ralink: Add PHY driver for MT7621 PCIe PHY")
Reported-by: kernel test robot <lkp@intel.com>
Signed-off-by: Sergio Paracuellos <sergio.paracuellos@gmail.com>
---
 drivers/phy/ralink/phy-mt7621-pci.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/phy/ralink/phy-mt7621-pci.c b/drivers/phy/ralink/phy-mt7621-pci.c
index 753cb5bab930..4705931fb072 100644
--- a/drivers/phy/ralink/phy-mt7621-pci.c
+++ b/drivers/phy/ralink/phy-mt7621-pci.c
@@ -272,8 +272,8 @@ static struct phy *mt7621_pcie_phy_of_xlate(struct device *dev,
 
 	mt7621_phy->has_dual_port = args->args[0];
 
-	dev_info(dev, "PHY for 0x%08x (dual port = %d)\n",
-		 (unsigned int)mt7621_phy->port_base, mt7621_phy->has_dual_port);
+	dev_info(dev, "PHY for 0x%px (dual port = %d)\n",
+		 mt7621_phy->port_base, mt7621_phy->has_dual_port);
 
 	return mt7621_phy->phy;
 }
-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
