Return-Path: <SRS0=EEXn=IR=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55266C433DB
	for <linux-phy@archiver.kernel.org>; Fri, 19 Mar 2021 12:43:48 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id E74CB64EA4
	for <linux-phy@archiver.kernel.org>; Fri, 19 Mar 2021 12:43:47 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org E74CB64EA4
Authentication-Results: mail.kernel.org; dmarc=fail (p=quarantine dis=none) header.from=ti.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-ID:Date:
	Subject:CC:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=p6/Z7qXaZ9eMlKH/WNcpgGRy3XOkJNR+JTgEZa8wNB0=; b=bUq2b4somoIYpBe2+/FhoeXVS
	gO0NF5fxDvRZVTfg6K5ImEQ0Hzcj71FTnMptiMeSzcXCe2BCESbUff3VjPat2zHANaHVUYqYADxQl
	jLGdKXIx/hPPEVRvDzR/mzT3d1H2ICPOPJVZrRRkXLkTfnyZSfLdQ6+gPErb2YuargCrVywBZ3WnS
	a7fHKfazdBoVw7NFb2ISec9EMiu5rgjLkro8iTVQIqEOVN2/fiuQZx4GxzzDWa9HDkwpslmyk4uRu
	7jgas3bisHjQTZnBpvMF/rQSEuqUdHS9tTVSlZe74+E6TtU6ZMC4uksW9Q+HcuVdLwoqyXWXKXton
	GJIlGM+6A==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lNETi-007Pwm-Av; Fri, 19 Mar 2021 12:43:46 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lNERg-007Ps4-HX
 for linux-phy@lists.infradead.org; Fri, 19 Mar 2021 12:43:42 +0000
Received: from fllv0034.itg.ti.com ([10.64.40.246])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 12JCfb0c107946;
 Fri, 19 Mar 2021 07:41:37 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1616157697;
 bh=kDesQPQvYRjN7JUDLg1aWRBB+2K3tXaBtJ48Qzz8gLs=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=xm2bSvpRogLV8JZQeHziSlhgX16oBQ5OJULnHYWU1S/QH/Xcq9ma2qme/waq3XRgw
 Q6LXEmANiXwX2tnbQZpgHCT0Nl5MxSHvQvS31awDeAky6/ge93I7JTisx6YGrCndX1
 xmiw1wyGXqf40P8mKLmZ7Dg35HkqJ8lyoJN5MH7c=
Received: from DFLE103.ent.ti.com (dfle103.ent.ti.com [10.64.6.24])
 by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 12JCfbVN124074
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Fri, 19 Mar 2021 07:41:37 -0500
Received: from DFLE104.ent.ti.com (10.64.6.25) by DFLE103.ent.ti.com
 (10.64.6.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2176.2; Fri, 19
 Mar 2021 07:41:37 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DFLE104.ent.ti.com
 (10.64.6.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2176.2 via
 Frontend Transport; Fri, 19 Mar 2021 07:41:37 -0500
Received: from a0393678-ssd.dhcp.ti.com (ileax41-snat.itg.ti.com
 [10.172.224.153])
 by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id 12JCfTf2011913;
 Fri, 19 Mar 2021 07:41:34 -0500
From: Kishon Vijay Abraham I <kishon@ti.com>
To: Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>, Rob
 Herring <robh+dt@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>,
 Swapnil Jakhade <sjakhade@cadence.com>
CC: <linux-kernel@vger.kernel.org>, <devicetree@vger.kernel.org>,
 <linux-phy@lists.infradead.org>, Lokesh Vutla <lokeshvutla@ti.com>
Subject: [PATCH v7 01/13] phy: cadence: Sierra: Fix PHY power_on sequence
Date: Fri, 19 Mar 2021 18:11:16 +0530
Message-ID: <20210319124128.13308-2-kishon@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210319124128.13308-1-kishon@ti.com>
References: <20210319124128.13308-1-kishon@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210319_124341_069244_ED72F0E4 
X-CRM114-Status: GOOD (  11.12  )
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

Commit 44d30d622821d ("phy: cadence: Add driver for Sierra PHY")
de-asserts PHY_RESET even before the configurations are loaded in
phy_init(). However PHY_RESET should be de-asserted only after
all the configurations has been initialized, instead of de-asserting
in probe. Fix it here.

Fixes: 44d30d622821d ("phy: cadence: Add driver for Sierra PHY")
Signed-off-by: Kishon Vijay Abraham I <kishon@ti.com>
Cc: <stable@vger.kernel.org> # v5.4+
Reviewed-by: Philipp Zabel <p.zabel@pengutronix.de>
---
 drivers/phy/cadence/phy-cadence-sierra.c | 7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/drivers/phy/cadence/phy-cadence-sierra.c b/drivers/phy/cadence/phy-cadence-sierra.c
index 26a0badabe38..19f32ae877b9 100644
--- a/drivers/phy/cadence/phy-cadence-sierra.c
+++ b/drivers/phy/cadence/phy-cadence-sierra.c
@@ -319,6 +319,12 @@ static int cdns_sierra_phy_on(struct phy *gphy)
 	u32 val;
 	int ret;
 
+	ret = reset_control_deassert(sp->phy_rst);
+	if (ret) {
+		dev_err(dev, "Failed to take the PHY out of reset\n");
+		return ret;
+	}
+
 	/* Take the PHY lane group out of reset */
 	ret = reset_control_deassert(ins->lnk_rst);
 	if (ret) {
@@ -616,7 +622,6 @@ static int cdns_sierra_phy_probe(struct platform_device *pdev)
 
 	pm_runtime_enable(dev);
 	phy_provider = devm_of_phy_provider_register(dev, of_phy_simple_xlate);
-	reset_control_deassert(sp->phy_rst);
 	return PTR_ERR_OR_ZERO(phy_provider);
 
 put_child:
-- 
2.17.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
