Return-Path: <SRS0=B2Kc=I4=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-16.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7AE7C433E0
	for <linux-phy@archiver.kernel.org>; Tue, 30 Mar 2021 11:04:16 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 5B89E61989
	for <linux-phy@archiver.kernel.org>; Tue, 30 Mar 2021 11:04:16 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 5B89E61989
Authentication-Results: mail.kernel.org; dmarc=fail (p=quarantine dis=none) header.from=ti.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-ID:Date:
	Subject:CC:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=XJQPt8TeuDaBiiZLvSz7yQ47iYyoxe5pNyRiufESrYE=; b=quGf2YWU1BZiWex59BZ1tl56I
	L0bLQfEHwfe9UQZiwgikfB+NhQldgXHaJvy9QUVKO/JAJWHtRx/B5vtmbxoW7bmEwERoM+dxoDRWl
	Vljtq4k81WBurZmJoeFxdS7MyCK/6+cp6A4zUpg2+oVBcslFEZsj25DjQV2G1UAs+bPaaPoQGSmvV
	O+tsdTj6IEXOzHbiUGXO9pMverSWLbhnVfPPkqbf0y/YdhhZoDO9Dh6hKu2mGal1DJ5lDGHNU1mXX
	YcaFOLW4ZsTdlubeg3gaayD70YM+FvJti3LvKmTzB2Nq3og4gkaAbUsxGLZx/Xv6+u7EYnFvM5Mgd
	PxTQbsb0A==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lRCAQ-003VYo-9D; Tue, 30 Mar 2021 11:04:14 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lRC8J-003Uyc-75
 for linux-phy@lists.infradead.org; Tue, 30 Mar 2021 11:02:14 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 12UB1xNs058344;
 Tue, 30 Mar 2021 06:01:59 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1617102119;
 bh=dyOe3pqXIdf8j+8HvSMwBv/J0i5wdpG3jbV9aLdsIZ0=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=dpclOnoD9zx3RN8v4H9CDxycMI+napWi9w1izugPIuLVBtcUcq0uOtc3oYgHpo4d+
 H78oySkiebWh98uX060DO1yEVvGGwwqMNZIzslEwGfCWk8p9yUIHo2eFyxad9pQFjk
 Pv1jfoiZSetmOzzACiHdgQaTu72J7AFvEDD/v2eQ=
Received: from DLEE104.ent.ti.com (dlee104.ent.ti.com [157.170.170.34])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 12UB1xkL023018
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Tue, 30 Mar 2021 06:01:59 -0500
Received: from DLEE113.ent.ti.com (157.170.170.24) by DLEE104.ent.ti.com
 (157.170.170.34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2176.2; Tue, 30
 Mar 2021 06:01:59 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DLEE113.ent.ti.com
 (157.170.170.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2176.2 via
 Frontend Transport; Tue, 30 Mar 2021 06:01:59 -0500
Received: from a0393678-ssd.dhcp.ti.com (ileax41-snat.itg.ti.com
 [10.172.224.153])
 by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id 12UB1dcn094447;
 Tue, 30 Mar 2021 06:01:56 -0500
From: Kishon Vijay Abraham I <kishon@ti.com>
To: Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 Philipp Zabel <p.zabel@pengutronix.de>
CC: Swapnil Jakhade <sjakhade@cadence.com>, <linux-phy@lists.infradead.org>,
 <linux-kernel@vger.kernel.org>, Lokesh Vutla <lokeshvutla@ti.com>
Subject: [PATCH v2 5/5] phy: cadence-torrent: Add delay for PIPE clock to be
 stable
Date: Tue, 30 Mar 2021 16:31:38 +0530
Message-ID: <20210330110138.24356-6-kishon@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210330110138.24356-1-kishon@ti.com>
References: <20210330110138.24356-1-kishon@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210330_120203_883166_84408251 
X-CRM114-Status: UNSURE (   8.92  )
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

The Torrent spec specifies delay of 660.5us after phy_reset is
asserted by the controller. To be on the safe side provide a delay
of 5ms to 10ms in ->phy_on() callback where the SERDES is already
configured in bootloader.

Signed-off-by: Kishon Vijay Abraham I <kishon@ti.com>
---
 drivers/phy/cadence/phy-cadence-torrent.c | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/drivers/phy/cadence/phy-cadence-torrent.c b/drivers/phy/cadence/phy-cadence-torrent.c
index ff8bb4b724c0..0477e7beebbf 100644
--- a/drivers/phy/cadence/phy-cadence-torrent.c
+++ b/drivers/phy/cadence/phy-cadence-torrent.c
@@ -371,7 +371,16 @@ static const struct phy_ops cdns_torrent_phy_ops = {
 	.owner		= THIS_MODULE,
 };
 
+static int cdns_torrent_noop_phy_on(struct phy *phy)
+{
+	/* Give 5ms to 10ms delay for the PIPE clock to be stable */
+	usleep_range(5000, 10000);
+
+	return 0;
+}
+
 static const struct phy_ops noop_ops = {
+	.power_on	= cdns_torrent_noop_phy_on,
 	.owner		= THIS_MODULE,
 };
 
-- 
2.17.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
