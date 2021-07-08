Return-Path: <SRS0=EZuF=MA=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 47C23C07E96
	for <linux-phy@archiver.kernel.org>; Thu,  8 Jul 2021 12:46:59 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 0837461584
	for <linux-phy@archiver.kernel.org>; Thu,  8 Jul 2021 12:46:59 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 0837461584
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=marvell.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zCsohLElf5HPh0pTlmLaNc2jZ7pVU0QSi4GtDTSqXRY=; b=Wrm3ro14wmVxzY
	LomXNeRH0HN6zYOw1B1PUn3qziCjI+GenIacr5eDx++XW+MWySV44FhS9j8ZLKaFf2dovQaYjpHm4
	P+/byuHxUJuhv8w2Hz8eQTlM8FupiZ64IhUTEivY0pFVzW15QACk6Q1SJJP4vSv/AwHF4nlzjp3KQ
	aowWG6PDSkVfMOzk7AWaP4rGCui5dnti4um56sipD5qiHyJuSdmiZU65CZlsu2Oy+Q7Rlvj5R3AVo
	MEIHlRPiVmB9GZGg3BpVU7bSJn7WUhwXz9Ua7bpPRTtDYGVBiPRkqcBvrTVIEM2GHcaP8rsN6dmVH
	I1r/V7NJbnnT5tR+5TgQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m1TQg-00GvVL-DQ; Thu, 08 Jul 2021 12:46:58 +0000
Received: from mx0a-0016f401.pphosted.com ([67.231.148.174]
 helo=mx0b-0016f401.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m1TQD-00GvIy-TG; Thu, 08 Jul 2021 12:46:31 +0000
Received: from pps.filterd (m0045849.ppops.net [127.0.0.1])
 by mx0a-0016f401.pphosted.com (8.16.0.43/8.16.0.43) with SMTP id
 168CextU011611; Thu, 8 Jul 2021 05:46:26 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=marvell.com;
 h=from : to : cc :
 subject : date : message-id : in-reply-to : references : mime-version :
 content-type; s=pfpt0220; bh=vU/MQb0b6PBeVeo7Wno8MSyvxiN+3dCexkda0qA+S5s=;
 b=YzavH4JWJeYQY4xhG/HTX2GjpM9H9B8tP87GJiatzfbCfrmv1aQ79KHDIJeq/kI4vwGH
 QnPXlwZuUG2dl5wZZ1AZIun+JKaU9BN3JIYXmS6807sGzDe2n8PspN7sXKgopCX3Ewx0
 EcdzcfnoY1UHHI1fL46PfXwiMNhoQICY705Feq4Rcs5ZJbUWIZlHHNZRxgtT2qn+1FKI
 nwn4io3qOadHtpZvLA683S19L/YYl8MvKkdtT3/SQ9dKCtMjAALon45rfWMIdFynwY1v
 ewaFc0vakBEPlomDG3jJqHXuHabS5UzxDknMLJVk5aRhUZCCH0Mjdvdp19Xr/e1CNFtA uQ== 
Received: from dc5-exch02.marvell.com ([199.233.59.182])
 by mx0a-0016f401.pphosted.com with ESMTP id 39nrnu1y17-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=NOT);
 Thu, 08 Jul 2021 05:46:26 -0700
Received: from DC5-EXCH01.marvell.com (10.69.176.38) by DC5-EXCH02.marvell.com
 (10.69.176.39) with Microsoft SMTP Server (TLS) id 15.0.1497.18;
 Thu, 8 Jul 2021 05:46:25 -0700
Received: from maili.marvell.com (10.69.176.80) by DC5-EXCH01.marvell.com
 (10.69.176.38) with Microsoft SMTP Server id 15.0.1497.18 via Frontend
 Transport; Thu, 8 Jul 2021 05:46:25 -0700
Received: from octopus.marvell.com (octopus.marvell.com [10.5.24.3])
 by maili.marvell.com (Postfix) with ESMTP id E9C453F7064;
 Thu,  8 Jul 2021 05:46:20 -0700 (PDT)
From: <kostap@marvell.com>
To: <miquel.raynal@bootlin.com>, <kishon@ti.com>, <vkoul@kernel.org>,
 <robh+dt@kernel.org>, <andrew@lunn.ch>, <gregory.clement@bootlin.com>,
 <sebastian.hesselbarth@gmail.com>, <vladimir.vid@sartura.hr>,
 <luka.kovacic@sartura.hr>, <linux-phy@lists.infradead.org>,
 <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
 <linux-arm-kernel@lists.infradead.org>
CC: <mw@semihalf.com>, <jaz@semihalf.com>, <nadavh@marvell.com>,
 <stefanc@marvell.com>, <bpeled@marvell.com>, Konstantin Porotchkin
 <kostap@marvell.com>
Subject: [PATCH v7 1/5] arch/arm64/boot/dts/marvell: fix NAND partitioning
 scheme
Date: Thu, 8 Jul 2021 15:46:08 +0300
Message-ID: <20210708124612.30742-2-kostap@marvell.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210708124612.30742-1-kostap@marvell.com>
References: <20210708124612.30742-1-kostap@marvell.com>
MIME-Version: 1.0
X-Proofpoint-ORIG-GUID: VF6jb6yGeF_fiYkvzos-znVEyqZlI72w
X-Proofpoint-GUID: VF6jb6yGeF_fiYkvzos-znVEyqZlI72w
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.391, 18.0.790
 definitions=2021-07-08_06:2021-07-08,
 2021-07-08 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210708_054630_053404_58229DDF 
X-CRM114-Status: GOOD (  13.32  )
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

From: Konstantin Porotchkin <kostap@marvell.com>

Eliminate 1MB gap between Linux and filesystem partitions.

Signed-off-by: Konstantin Porotchkin <kostap@marvell.com>
---
 arch/arm64/boot/dts/marvell/cn9130-db.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/marvell/cn9130-db.dts b/arch/arm64/boot/dts/marvell/cn9130-db.dts
index 2c2af001619b..9758609541c7 100644
--- a/arch/arm64/boot/dts/marvell/cn9130-db.dts
+++ b/arch/arm64/boot/dts/marvell/cn9130-db.dts
@@ -260,7 +260,7 @@
 			};
 			partition@200000 {
 				label = "Linux";
-				reg = <0x200000 0xd00000>;
+				reg = <0x200000 0xe00000>;
 			};
 			partition@1000000 {
 				label = "Filesystem";
-- 
2.17.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
