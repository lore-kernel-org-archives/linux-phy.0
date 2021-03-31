Return-Path: <SRS0=Nkk4=I5=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-16.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF73BC433B4
	for <linux-phy@archiver.kernel.org>; Wed, 31 Mar 2021 13:14:41 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 6931461969
	for <linux-phy@archiver.kernel.org>; Wed, 31 Mar 2021 13:14:41 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 6931461969
Authentication-Results: mail.kernel.org; dmarc=fail (p=quarantine dis=none) header.from=ti.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:CC:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=eU06ejVSEJAFH5MjPUixhIDYdy2ENgmD6FfSk8060QM=; b=CFFhC7u2Z8ot17aUYDDb/dM7gg
	oscgS9PsWzAdk8TxBeYhVIf9bacdjxQa/TXmiPoEjA6OwADvAqeZlzp+gkLKrWK4N6VhSE6ngWzUg
	yD6+zbvJX7zm5pE81QQ8uO6KUPl0B+ghHcSebGhVMeB3jG3FjfWlOQRBL/dYNOAX1IocYcxXHEVwT
	h41nqK2CyDdaYMLT3QsMvexgWa/ZrocN7J0+UHYjZuxVvX9iEyG3kSDgPWYZ7WsZtvCYbr+snqVja
	tD+AcT29xvQ7leL5fAsQ/x5513cJdznFBRC2G+cFHrgUtapTFmC+kOfu48CrPktGdKN5rxngyxG86
	gAjZto7g==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lRagA-006dM1-Kt; Wed, 31 Mar 2021 13:14:38 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lRafz-006dIT-4u
 for linux-phy@lists.infradead.org; Wed, 31 Mar 2021 13:14:35 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 12VDEKEu004547;
 Wed, 31 Mar 2021 08:14:20 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1617196460;
 bh=emzISIIaj9DN6ngJlWUurFnk/Mw6N2UJ67+bocEf8FA=;
 h=From:To:CC:Subject:Date;
 b=yRsRt2opczkiM160TTcSWE1JjumxzPh9KCBb8YyPDJvkLglNxoRfRCM+rs0qSdk8J
 bkcfatMSvOOFzxLdAWwlmojRlZhPi632vtIlMJVb5nVqIoZmpJz0p0q9dBSzgxOVpK
 9lRG7wM+h4ghpV9nNlB3p6rj+CnIHIolRIvwAijk=
Received: from DFLE104.ent.ti.com (dfle104.ent.ti.com [10.64.6.25])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 12VDEKFl081787
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Wed, 31 Mar 2021 08:14:20 -0500
Received: from DFLE108.ent.ti.com (10.64.6.29) by DFLE104.ent.ti.com
 (10.64.6.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2176.2; Wed, 31
 Mar 2021 08:14:20 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DFLE108.ent.ti.com
 (10.64.6.29) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2176.2 via
 Frontend Transport; Wed, 31 Mar 2021 08:14:20 -0500
Received: from a0393678-ssd.dhcp.ti.com (ileax41-snat.itg.ti.com
 [10.172.224.153])
 by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id 12VDEHLl054143;
 Wed, 31 Mar 2021 08:14:18 -0500
From: Kishon Vijay Abraham I <kishon@ti.com>
To: Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>
CC: <linux-kernel@vger.kernel.org>, <linux-phy@lists.infradead.org>, Lokesh
 Vutla <lokeshvutla@ti.com>
Subject: [PATCH] phy: ti: j721e-wiz: Configure 'p_standard_mode' only for
 DP/QSGMII
Date: Wed, 31 Mar 2021 18:44:17 +0530
Message-ID: <20210331131417.15596-1-kishon@ti.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210331_141427_795300_BA21D4B7 
X-CRM114-Status: UNSURE (   9.06  )
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

Configure 'p_standard_mode' only for DP/QSGMII as for other modes
it's not used as per the programming sequence. Add "continue" in the
else to prevent random value from being written to p_standard_mode.

Signed-off-by: Kishon Vijay Abraham I <kishon@ti.com>
---
 drivers/phy/ti/phy-j721e-wiz.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/phy/ti/phy-j721e-wiz.c b/drivers/phy/ti/phy-j721e-wiz.c
index 95905e5c4f3d..fc636233dbd6 100644
--- a/drivers/phy/ti/phy-j721e-wiz.c
+++ b/drivers/phy/ti/phy-j721e-wiz.c
@@ -340,6 +340,8 @@ static int wiz_mode_select(struct wiz *wiz)
 			mode = LANE_MODE_GEN1;
 		else if (wiz->lane_phy_type[i] == PHY_TYPE_QSGMII)
 			mode = LANE_MODE_GEN2;
+		else
+			continue;
 
 		ret = regmap_field_write(wiz->p_standard_mode[i], mode);
 		if (ret)
-- 
2.17.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
