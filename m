Return-Path: <SRS0=0Txu=KF=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9D5FC43470
	for <linux-phy@archiver.kernel.org>; Mon, 10 May 2021 05:10:46 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 76D136147E
	for <linux-phy@archiver.kernel.org>; Mon, 10 May 2021 05:10:46 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 76D136147E
Authentication-Results: mail.kernel.org; dmarc=fail (p=quarantine dis=none) header.from=ti.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-ID:Date:
	Subject:CC:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=gpRdKUVNPFljRhjfnh1CnPQQSkmSBrnWmJncKFSowgc=; b=Hw3K2blmxPwLDVjyjJHO6S0mn
	lFJkHNRO3oo1f6UH09DRIteiA46XWZQMnUCPhi0FUJaKzEm7SIDFMrEiV7JxfJiUPLqUyYU0rj5+Q
	/Av5AvIVM8SzpX9Z+oXK0eP6TcsyMjzQBRGqmY/1eUrntImcU9pm/+zuWlkQm8YbJGcYxp6GLdyon
	pg3f+YLccUizxtXBatRtjVy7zRPuu9KxXMJJuaUQ1CHcKKvrJqEEXLO2xrf+dAytGFAb0jtJLo7tx
	Y0HPVkt/IsnGVihv+VXt2cyNQz3QC0DJL+DoHqTBNesg/WZguHqnZ1Kqb9fSA3Si0E89TdKYR0vwU
	rmhMaXAfg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lfyBo-00DAyx-Mc; Mon, 10 May 2021 05:10:44 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lfyBj-00DAyA-Of
 for linux-phy@desiato.infradead.org; Mon, 10 May 2021 05:10:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=D09BNE/QEQl6N7z7qggHPyShQPUog3qk6d/UXkkKZok=; b=VUHLqElYQp0hMtZM+8Lnh/IX0u
 kklaxz73nfGPBfSctpro8iZ7Z6YnjBqlkNj14g14bRIU8LMY8mjn1FsukqQ1/Ky9XaCg7Z7YiPPD5
 /KwcTjPAm6y8TaVeE0VfrfpofyVHx/8V4CywpmEcgniv5lGP1KGW1BM1QsydikvU4TGheEWUPejPe
 ycil6Pm9h6oBIPVGR+ip747gYWo9s2HS5i/qBF8Q9SWWSo42PTiIkSNNqNULeI4HNhwQTteSAlZEU
 YGVXAlcTya/OH0J0nvzoegeWRICLYV384zv5c7agvFW/odtMt1hO7zi+zLeo3JhYb3vFZu6zEbfBi
 DBpkALxw==;
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lfyBh-008IJC-8L
 for linux-phy@lists.infradead.org; Mon, 10 May 2021 05:10:38 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 14A5AXvn073470;
 Mon, 10 May 2021 00:10:33 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1620623433;
 bh=D09BNE/QEQl6N7z7qggHPyShQPUog3qk6d/UXkkKZok=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=r2NqDbSlCxTcDUFtpoNDlT2l0nFDX1I0MAud9qZxJM/+auuCXkDdO6XbaY6Ocpgf2
 ipDGqk09+x2hgOj+6jXJVcjrG0xIc2e3o0CSf7e6jzoxjLF1FQ+9wsEIEkrw7oyZu6
 4tpBGRD6rDXOXmvfTPNpDHcPE1OFLBYaqC4k2pAs=
Received: from DLEE114.ent.ti.com (dlee114.ent.ti.com [157.170.170.25])
 by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 14A5AXZM061787
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Mon, 10 May 2021 00:10:33 -0500
Received: from DLEE113.ent.ti.com (157.170.170.24) by DLEE114.ent.ti.com
 (157.170.170.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2176.2; Mon, 10
 May 2021 00:10:33 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DLEE113.ent.ti.com
 (157.170.170.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2176.2 via
 Frontend Transport; Mon, 10 May 2021 00:10:33 -0500
Received: from gsaswath-HP-ProBook-640-G5.dal.design.ti.com
 (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id 14A5A9nM113970;
 Mon, 10 May 2021 00:10:24 -0500
From: Aswath Govindraju <a-govindraju@ti.com>
To: 
CC: <linux-can@vger.kernel.org>, Marc Kleine-Budde <mkl@pengutronix.de>,
 Wolfgang Grandegger <wg@grandegger.com>, Vignesh Raghavendra
 <vigneshr@ti.com>, Lokesh Vutla <lokeshvutla@ti.com>, Aswath Govindraju
 <a-govindraju@ti.com>, Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul
 <vkoul@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, <linux-phy@lists.infradead.org>,
 <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>
Subject: [PATCH v6 1/3] phy: core: Reword the comment specifying the units of
 max_link_rate to be Mbps
Date: Mon, 10 May 2021 10:40:03 +0530
Message-ID: <20210510051006.11393-2-a-govindraju@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210510051006.11393-1-a-govindraju@ti.com>
References: <20210510051006.11393-1-a-govindraju@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210509_221037_396046_B7F62A60 
X-CRM114-Status: GOOD (  10.55  )
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

In some subsystems (eg. CAN, SPI), the max link rate supported can be less
than 1 Mbps and if the unit for max_link_rate is Mbps then it can't be
used. Therefore, leave the decision of units to be used, to the producer
and consumer.

Signed-off-by: Aswath Govindraju <a-govindraju@ti.com>
Acked-by: Marc Kleine-Budde <mkl@pengutronix.de>
---
 include/linux/phy/phy.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/include/linux/phy/phy.h b/include/linux/phy/phy.h
index 0ed434d02196..f3286f4cd306 100644
--- a/include/linux/phy/phy.h
+++ b/include/linux/phy/phy.h
@@ -125,7 +125,7 @@ struct phy_ops {
 /**
  * struct phy_attrs - represents phy attributes
  * @bus_width: Data path width implemented by PHY
- * @max_link_rate: Maximum link rate supported by PHY (in Mbps)
+ * @max_link_rate: Maximum link rate supported by PHY (units to be decided by producer and consumer)
  * @mode: PHY mode
  */
 struct phy_attrs {
-- 
2.17.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
