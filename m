Return-Path: <SRS0=EEXn=IR=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 16052C433DB
	for <linux-phy@archiver.kernel.org>; Fri, 19 Mar 2021 12:44:00 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id AB1DC64EA4
	for <linux-phy@archiver.kernel.org>; Fri, 19 Mar 2021 12:43:59 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org AB1DC64EA4
Authentication-Results: mail.kernel.org; dmarc=fail (p=quarantine dis=none) header.from=ti.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-ID:Date:
	Subject:CC:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=KYg1GjaZkWYOzBA05IXlKkVx9WMafyG5pbnLIxWwapU=; b=Sp3uVhqv2T2f93aLXAw41Hkyu
	VIa5VLoIrr2vl9r7d664EsIVUC3r8g2i+wEB0g2SZWRinvWAxrQftMhXMvaB+2kQ23ep8NOFNgVn0
	iDWh1WbxEmZngECbTCCIzvd0lL1qkABCHFHPmOPpwIIDRYa8KyeuQ8s1kSSfVMelSdd9KGalNCkMz
	ahbyngwLLZCtbBagNv5CgPaIbUndwT0r8cGan0RHHJzkOW03kZM+xcISPmpbphowciI0b08wiWJzb
	yDRY1Q0/T/vcYPGg3EYY2QcYiEWHqi7prws0AbjpJgLy6JeO4IXH7mh+Z85AuX9Iv1mM5D++dbP+i
	NQqJm7F2g==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lNETt-007PyE-Om; Fri, 19 Mar 2021 12:43:57 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lNERs-007PsW-Ny
 for linux-phy@lists.infradead.org; Fri, 19 Mar 2021 12:43:54 +0000
Received: from fllv0034.itg.ti.com ([10.64.40.246])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 12JCfoGu048316;
 Fri, 19 Mar 2021 07:41:50 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1616157710;
 bh=OsKa0EDwQKMOxN4rn2UsJ4wTaESxeSKXJwtpa+eVAPs=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=k3jnPGdtyJQDQ5BiVcth5uTqShAx9i5BpdE2iqVG0ZD5mZS6TZLUl75HejOJalRfS
 kDdd7pjMFLc1/nPY9xaZWBtLSrdoWGuXVNnOYLXL4KG32CxKXhpjpWnNEGhGXavavQ
 g1u4BI2aWhv41+LKL4D8SzkJUqeqm+1sgiy1klJM=
Received: from DFLE104.ent.ti.com (dfle104.ent.ti.com [10.64.6.25])
 by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 12JCfo2S124321
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Fri, 19 Mar 2021 07:41:50 -0500
Received: from DFLE114.ent.ti.com (10.64.6.35) by DFLE104.ent.ti.com
 (10.64.6.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2176.2; Fri, 19
 Mar 2021 07:41:49 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DFLE114.ent.ti.com
 (10.64.6.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2176.2 via
 Frontend Transport; Fri, 19 Mar 2021 07:41:49 -0500
Received: from a0393678-ssd.dhcp.ti.com (ileax41-snat.itg.ti.com
 [10.172.224.153])
 by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id 12JCfTf5011913;
 Fri, 19 Mar 2021 07:41:46 -0500
From: Kishon Vijay Abraham I <kishon@ti.com>
To: Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>, Rob
 Herring <robh+dt@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>,
 Swapnil Jakhade <sjakhade@cadence.com>
CC: <linux-kernel@vger.kernel.org>, <devicetree@vger.kernel.org>,
 <linux-phy@lists.infradead.org>, Lokesh Vutla <lokeshvutla@ti.com>
Subject: [PATCH v7 04/13] phy: ti: j721e-wiz: Get PHY properties only for
 "phy" or "link" subnode
Date: Fri, 19 Mar 2021 18:11:19 +0530
Message-ID: <20210319124128.13308-5-kishon@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210319124128.13308-1-kishon@ti.com>
References: <20210319124128.13308-1-kishon@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210319_124353_233563_8FD20ADC 
X-CRM114-Status: UNSURE (   8.39  )
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

"serdes" node (child node of WIZ) can have sub-nodes for representing links
or it can have sub-nodes for representing the various clocks within the
serdes. Instead of trying to read "reg" from every child node used for
assigning "lane_phy_type", read only if the child node's name is "phy"
or "link" subnode.
Ideally all PHY dt nodes should have node name as "phy", however
existing devicetree used "link" as subnode. So in order to maintain old
DT compatibility get PHY properties for "phy" or "link" subnode.

Signed-off-by: Kishon Vijay Abraham I <kishon@ti.com>
---
 drivers/phy/ti/phy-j721e-wiz.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/phy/ti/phy-j721e-wiz.c b/drivers/phy/ti/phy-j721e-wiz.c
index 1bb73822f44a..659597645201 100644
--- a/drivers/phy/ti/phy-j721e-wiz.c
+++ b/drivers/phy/ti/phy-j721e-wiz.c
@@ -1102,6 +1102,10 @@ static int wiz_get_lane_phy_types(struct device *dev, struct wiz *wiz)
 		u32 reg, num_lanes = 1, phy_type = PHY_NONE;
 		int ret, i;
 
+		if (!(of_node_name_eq(subnode, "phy") ||
+		      of_node_name_eq(subnode, "link")))
+			continue;
+
 		ret = of_property_read_u32(subnode, "reg", &reg);
 		if (ret) {
 			dev_err(dev,
-- 
2.17.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
