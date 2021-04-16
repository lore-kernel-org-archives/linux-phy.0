Return-Path: <SRS0=hDbK=JN=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-16.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 58405C433B4
	for <linux-phy@archiver.kernel.org>; Fri, 16 Apr 2021 11:32:16 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 1C121611AB
	for <linux-phy@archiver.kernel.org>; Fri, 16 Apr 2021 11:32:16 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 1C121611AB
Authentication-Results: mail.kernel.org; dmarc=fail (p=quarantine dis=none) header.from=ti.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-ID:Date:
	Subject:CC:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Z0AFq5xBmq/hD5697///OmVCfo0WUkYvukdQXZMz1fk=; b=V/Bcoi++vIStjh4+jn3y3z8Ij
	V7jVi0Y3kBIDwmsdThEhCr0H+y5JdlRpwD5ygJDC+gtg+zpuRyFNy2ZqV8tCEnbBn0+XwLaTlRoV6
	4eFtccsPXzKlX+PYfr1nkhGP3SL4Y/zI/cpO5LK7473cFNZv2P8NciLzK/+zSArc5A81yAgBGED9e
	NRIq4tkjyBmRebPsHBsKOuNXKttEqopUUTbbiUwszNCPvrccHZuJC9IPHkZDsFCSuDZFU9p8yvB0f
	Go/yhKgtq5fXevt1AiisBmBCF/nWbM9ILBidjbHl+fXIrjzvdCZxziWHgncnS3zuIZHZv9FbNrOoC
	HWNLYumVA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lXMhq-001vhR-6y; Fri, 16 Apr 2021 11:32:14 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lXMgr-001vWw-CB
 for linux-phy@desiato.infradead.org; Fri, 16 Apr 2021 11:31:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=IlU5JTHbgq4me6qjMbuUKqaDA5SuF5DOc/xXRU46LRk=; b=cFpWdotSFWOj4+08KSf7pHmvjZ
 mFusGJunYUmc65bmnAE/2m1T5wGOaEbCFMAuaU9OBhC7Rf0HjbbHZI7y4umfP2OHAwNtFYslV7jGy
 SKQGdGOb2AJgZoElUDyiJg+Z09oUu3LkrdJwvkzWgG6bMmwfgAuoTQ0weYMHnZvq3h9xBLvzozn8N
 t86/sIHW+6yeprwLCxDOCL4+85a9jayq91beDL1HO/UuQIEJPD0DQ3xls+Y1/lGleCmRj7KLVzmmZ
 pO0wi865YU9WKtLgcmgIab7fgVHV5TUw8ebeTlFbdLz4a4CdpP220Xlnwaxgw4ZI53BzxgaB5E5XF
 DDcIBBRw==;
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lXMgo-009JqX-8v
 for linux-phy@lists.infradead.org; Fri, 16 Apr 2021 11:31:12 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 13GBV7jx106544;
 Fri, 16 Apr 2021 06:31:07 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1618572667;
 bh=IlU5JTHbgq4me6qjMbuUKqaDA5SuF5DOc/xXRU46LRk=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=HnMQBAeEMo/H52ClX9Jm9ZuhXkLBmMmH2ArgcWYHHEi0hVcxF8dujEpa1pIf+XUNj
 Dq7URl8wU8NgoOxz+HXWWc1IX+Bv9NZfba9x7e80xdpUQFU67O7h7ucONQaYf6e5CB
 EUrKq97Lra64A73eUfiqjroYflTgyhCg/n79GhmU=
Received: from DLEE113.ent.ti.com (dlee113.ent.ti.com [157.170.170.24])
 by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 13GBV7Uv122596
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Fri, 16 Apr 2021 06:31:07 -0500
Received: from DLEE103.ent.ti.com (157.170.170.33) by DLEE113.ent.ti.com
 (157.170.170.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2176.2; Fri, 16
 Apr 2021 06:31:06 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DLEE103.ent.ti.com
 (157.170.170.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2176.2 via
 Frontend Transport; Fri, 16 Apr 2021 06:31:06 -0500
Received: from gsaswath-HP-ProBook-640-G5.dal.design.ti.com
 (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id 13GBUwIv073816;
 Fri, 16 Apr 2021 06:31:03 -0500
From: Aswath Govindraju <a-govindraju@ti.com>
To: 
CC: <linux-kernel@vger.kernel.org>, <devicetree@vger.kernel.org>,
 <linux-phy@lists.infradead.org>, <linux-can@vger.kernel.org>, Kishon Vijay
 Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>, Rob Herring
 <robh+dt@kernel.org>, Marc Kleine-Budde <mkl@pengutronix.de>, Wolfgang
 Grandegger <wg@grandegger.com>, Lokesh Vutla <lokeshvutla@ti.com>, Vignesh
 Raghavendra <vigneshr@ti.com>,
 Grygorii Strashko <grygorii.strashko@ti.com>,
 Aswath Govindraju <a-govindraju@ti.com>
Subject: [PATCH v5 1/3] phy: core: Reword the comment specifying the units of
 max_link_rate to be Mbps
Date: Fri, 16 Apr 2021 17:00:56 +0530
Message-ID: <20210416113058.23815-2-a-govindraju@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210416113058.23815-1-a-govindraju@ti.com>
References: <20210416113058.23815-1-a-govindraju@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210416_043110_401216_774721D2 
X-CRM114-Status: GOOD (  10.12  )
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
