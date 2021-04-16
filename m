Return-Path: <SRS0=hDbK=JN=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-16.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3DD02C433B4
	for <linux-phy@archiver.kernel.org>; Fri, 16 Apr 2021 05:27:09 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id AC8E861073
	for <linux-phy@archiver.kernel.org>; Fri, 16 Apr 2021 05:27:08 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org AC8E861073
Authentication-Results: mail.kernel.org; dmarc=fail (p=quarantine dis=none) header.from=ti.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-ID:Date:
	Subject:CC:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Z0AFq5xBmq/hD5697///OmVCfo0WUkYvukdQXZMz1fk=; b=VaQAXGx645RP1L1+8dmH7e8YT
	5VcdqmQX9adaHC89XbN26PS978D3g7eHh30GTZxu5nvFRXuEQV527yKcUm2MqepdmN359DsV1CneY
	x8RiqIHxiT3xdV+nQsKKbQ2JwVadKRUhzDITrn+TkbkqeSDjrns4lYpr25NDZj1Bq1Ia0/pX2Hqq9
	2Hdzdq2tqEdivu52s47GNterw8mbG8jvnlLKyjcYPWSN6gezGEFNOmsbYX1lcyGeO4qWU+64ztvjP
	oPq2IVe7vCGTTTDaY1KQuIBPReb0LEFAMl5lh1ECrS/fpPmtPpVJxR1sJpAAeAZ1A502R++dNDe4r
	e6V5yHwSg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lXH0V-000sUu-2K; Fri, 16 Apr 2021 05:27:07 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lXH0R-000sTY-2e
 for linux-phy@desiato.infradead.org; Fri, 16 Apr 2021 05:27:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=IlU5JTHbgq4me6qjMbuUKqaDA5SuF5DOc/xXRU46LRk=; b=0i+uhHo9fSNsONqCh6nG8cNxNf
 TNCsfX9Klw5iVuxvK7NFMLFYCGyNYIkz5Ft5EOwDkjCsuwX4mHX1faTJh0mFrgwICfG1ByBPgckCS
 3BFqosGouw7u/2GEBscGIiiUfh+LW8MPa18vJb27SV4E/+wyspdwwH43Fi+rZ+/kst+HUiy1G1lt1
 AjDwzDXGJVD6l5Rt6TkBEVZX2uz7ijPGb1SdQh1Mwk0HF/TTB0iHEbSr4y/pfFkNfAREtJEi1keYr
 i9TOKKXKr1ExZ2ArLWkJ+t8ACGh+OuGNxLH/jr56+p1Me2SEZ/9cwbZFIxDHm1TU1UYP5WLYrHhTX
 wfJQ0GKw==;
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lXH0O-0095aA-4z
 for linux-phy@lists.infradead.org; Fri, 16 Apr 2021 05:27:01 +0000
Received: from fllv0034.itg.ti.com ([10.64.40.246])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 13G5QuRQ102713;
 Fri, 16 Apr 2021 00:26:56 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1618550816;
 bh=IlU5JTHbgq4me6qjMbuUKqaDA5SuF5DOc/xXRU46LRk=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=NkeaY3fFtHXqBwBNi1DVYRt85Hoeyu+uYubNcQYHs/sbKxunXcjLqIZ65l71khckK
 er+6FjUEJc0OdDIH8lEATu8hN0qFkrnknzTNhEYCmptRa9qm0T5kPGF1HlfCkB70FB
 UlnJUORCDF8es62648ERQinVNFooV138b815MhLs=
Received: from DLEE109.ent.ti.com (dlee109.ent.ti.com [157.170.170.41])
 by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 13G5QuMf119127
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Fri, 16 Apr 2021 00:26:56 -0500
Received: from DLEE102.ent.ti.com (157.170.170.32) by DLEE109.ent.ti.com
 (157.170.170.41) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2176.2; Fri, 16
 Apr 2021 00:26:56 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DLEE102.ent.ti.com
 (157.170.170.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2176.2 via
 Frontend Transport; Fri, 16 Apr 2021 00:26:56 -0500
Received: from gsaswath-HP-ProBook-640-G5.dal.design.ti.com
 (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id 13G5QlLM023847;
 Fri, 16 Apr 2021 00:26:52 -0500
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
Subject: [PATCH v4 1/3] phy: core: Reword the comment specifying the units of
 max_link_rate to be Mbps
Date: Fri, 16 Apr 2021 10:56:45 +0530
Message-ID: <20210416052647.2758-2-a-govindraju@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210416052647.2758-1-a-govindraju@ti.com>
References: <20210416052647.2758-1-a-govindraju@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210415_222700_279444_FDF2FB18 
X-CRM114-Status: GOOD (  10.21  )
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
