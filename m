Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2CACAC4451C
	for <linux-phy@archiver.kernel.org>; Sat, 18 Jul 2026 09:01:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=4NBfME1FcCTVe3ZUErOc2tmUJ5N0AHGd/Y3TcYO8mFo=; b=lHsIVJvTmQWqNm
	l39+1roZOt41cXNi7nz0yv/Kr4NfPnHnvNhlV5sAqYeHN53ZxVSsuXPGDyTfmUIjJ2W/VlJNEZzKM
	kzXR1+qsFUEjG4kRnbio3qNQkpyD6NDQV+0Zt5SbqZ8aQolIDPaeagLQvcLqOhnpvDo+Dtf7JXBCQ
	nOJigfrm/2SC4iBkgtB0Hqk7b+M2vhg2j78kGxtnDhro0AN+C/bh0UWTCA33QfsjDMOnbdNLhyiYB
	8FpCaWFoe3TvdP1tE2ijN5obgXYa/OmPKwuGMWoYIyTHk75SxRq0YSLFuR3WkMgvv6YAUWc+/RrsV
	5UvaqF17ZrzvFUjBw5AQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wl0vM-00000003vZs-3aYw;
	Sat, 18 Jul 2026 09:01:32 +0000
Received: from mailgw.kylinos.cn ([124.126.103.232])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wl0vJ-00000003vZU-3HLB
	for linux-phy@lists.infradead.org;
	Sat, 18 Jul 2026 09:01:31 +0000
X-UUID: 3e877f22828711f1aa26b74ffac11d73-20260718
X-CTIC-Tags: HR_CC_COUNT, HR_CC_DOMAIN_COUNT, HR_CC_NAME, HR_CC_NO_NAME, HR_CTE_8B
	HR_CTT_MISS, HR_DATE_H, HR_DATE_WKD, HR_DATE_ZONE, HR_FROM_NAME
	HR_SJ_DIGIT_LEN, HR_SJ_LANG, HR_SJ_LEN, HR_SJ_LETTER, HR_SJ_NOR_SYM
	HR_SJ_PHRASE, HR_SJ_PHRASE_LEN, HR_SJ_WS, HR_TO_COUNT, HR_TO_DOMAIN_COUNT
	HR_TO_NO_NAME, IP_TRUSTED, SRC_TRUSTED, DN_TRUSTED, SA_TRUSTED
	SA_EXISTED, SN_TRUSTED, SN_EXISTED, SPF_NOPASS, DKIM_NOPASS
	DMARC_NOPASS, CIE_GOOD, CIE_GOOD_SPF, GTI_FG_BS, GTI_RG_INFO
	GTI_C_BU, AMN_GOOD, ABX_MISS_RDNS
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.3.12,REQID:ba9914f2-37e3-4032-8acf-333b6e1f93e9,IP:15,
	URL:0,TC:0,Content:0,EDM:0,RT:0,SF:0,FILE:0,BULK:0,RULE:Release_Ham,ACTION
	:release,TS:15
X-CID-INFO: VERSION:1.3.12,REQID:ba9914f2-37e3-4032-8acf-333b6e1f93e9,IP:15,UR
	L:0,TC:0,Content:0,EDM:0,RT:0,SF:0,FILE:0,BULK:0,RULE:Release_Ham,ACTION:r
	elease,TS:15
X-CID-META: VersionHash:e7bac3a,CLOUDID:5be6155edcd03bcdc2b15a42c10d8360,BulkI
	D:260718170121Q5UW0OD9,BulkQuantity:0,Recheck:0,SF:10|38|66|78|102|127|865
	|898,TC:nil,Content:0|15|50,EDM:-3,IP:-2,URL:0,File:nil,RT:nil,Bulk:nil,QS
	:nil,BEC:nil,COL:0,OSI:0,OSA:0,AV:0,LES:1,SPR:NO,DKR:0,DKP:0,BRR:0,BRE:0,A
	RC:0
X-CID-BVR: 2,SSN|SDN
X-CID-BAS: 2,SSN|SDN,0,_
X-CID-FACTOR: TF_CID_SPAM_SNR
X-CID-RHF: D41D8CD98F00B204E9800998ECF8427E
X-UUID: 3e877f22828711f1aa26b74ffac11d73-20260718
X-User: pengcan@kylinos.cn
Received: from lenovo [(116.128.244.171)] by mailgw.kylinos.cn
	(envelope-from <pengcan@kylinos.cn>)
	(Generic MTA with TLSv1.3 TLS_AES_256_GCM_SHA384 256/256)
	with ESMTP id 304838542; Sat, 18 Jul 2026 17:01:20 +0800
From: Can Peng <pengcan@kylinos.cn>
To: jack.zhu@starfivetech.com,
	changhuang.liang@starfivetech.com,
	keith.zhao@starfivetech.com,
	vkoul@kernel.org,
	neil.armstrong@linaro.org
Cc: linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Can Peng <pengcan@kylinos.cn>
Subject: [PATCH v2 0/2] phy: starfive: Fix JH7110 DPHY runtime PM cleanup
Date: Sat, 18 Jul 2026 17:00:52 +0800
Message-ID: <20260718090054.444513-1-pengcan@kylinos.cn>
X-Mailer: git-send-email 2.53.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260718_020130_488458_23033E04 
X-CRM114-Status: UNSURE (   6.19  )
X-CRM114-Notice: Please train this message.
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

The JH7110 DPHY TX and RX drivers both enable runtime PM during probe
without arranging for it to be disabled on later probe failures or on
driver unbind.

Use devm_pm_runtime_enable() in both drivers so the runtime PM state is
cleaned up automatically when probe fails after runtime PM has been
enabled and when the driver is unbound.

Changes in v2:
- Turn the single TX fix into a two-patch series.
- Add the matching runtime PM cleanup fix for the RX driver.

Can Peng (2):
  phy: starfive: Fix runtime PM cleanup in JH7110 DPHY TX probe
  phy: starfive: Fix runtime PM cleanup in JH7110 DPHY RX probe

 drivers/phy/starfive/phy-jh7110-dphy-rx.c | 5 ++++-
 drivers/phy/starfive/phy-jh7110-dphy-tx.c | 5 ++++-
 2 files changed, 8 insertions(+), 2 deletions(-)

-- 
2.53.0

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
