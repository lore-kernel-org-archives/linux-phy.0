Return-Path: <SRS0=B2Kc=I4=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-16.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2BD67C433DB
	for <linux-phy@archiver.kernel.org>; Tue, 30 Mar 2021 11:04:16 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id A863F61983
	for <linux-phy@archiver.kernel.org>; Tue, 30 Mar 2021 11:04:15 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org A863F61983
Authentication-Results: mail.kernel.org; dmarc=fail (p=quarantine dis=none) header.from=ti.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-ID:Date:
	Subject:CC:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=EwulIbbur4xigeROlkz9OOoRN9Jn8hc9SGGGEQBBLaQ=; b=HxqxJwuVCHAELYWfoushRDNlB
	2H7eai0Z8pccFxLyrPT2RniHUv6BlqITIr2MeMBJn1VzDLjta/SDm9H11RuScJAr4K/XAm/gw1HGx
	O4hjBEfYPNO2cCleQtv2gEnX3/nUNkX3KCEIRX9P70xovfCXN/HpVrVinCwKUnmvEkM9ER1RMakz5
	jN3F5Ir7tMaUKON/9GBWJbmlIWYYmcM/csJ4+jbMJy8bIZmhNx9hiquqm1gsE7r35qCeygFSfSTBo
	4HV4xUoPAIhAEv+wGdNmprKwlV6wCqwrBqpIXCaj3/94bX5iUjuq//mq3FP38c+gSfDKykInihllq
	u7aR11ovg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lRCAP-003VXy-Cu; Tue, 30 Mar 2021 11:04:13 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lRC8F-003UxZ-Dk
 for linux-phy@lists.infradead.org; Tue, 30 Mar 2021 11:02:16 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 12UB1uUX058333;
 Tue, 30 Mar 2021 06:01:56 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1617102116;
 bh=zVbm80RW9znWpWAXSvX145Ca/gV7RBbyfBNgpqlberw=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=i+PtOoQ5w+hwWlXhXJeVBthStrFkR0EjX6mi5mY2Sc6PF/9s/htzsfJvs7TptC1av
 nsCNj1a5wDrMS9X8CEIzGcfxCcXw2ittNwPAEqTI1E77sDlTjBVT8TkSq1NyevH+ip
 eQTEKNZR+0bcNbKdw5qhgHhUWXOLd3ri030nni/k=
Received: from DFLE101.ent.ti.com (dfle101.ent.ti.com [10.64.6.22])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 12UB1uQ0013153
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Tue, 30 Mar 2021 06:01:56 -0500
Received: from DFLE112.ent.ti.com (10.64.6.33) by DFLE101.ent.ti.com
 (10.64.6.22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2176.2; Tue, 30
 Mar 2021 06:01:55 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DFLE112.ent.ti.com
 (10.64.6.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2176.2 via
 Frontend Transport; Tue, 30 Mar 2021 06:01:56 -0500
Received: from a0393678-ssd.dhcp.ti.com (ileax41-snat.itg.ti.com
 [10.172.224.153])
 by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id 12UB1dcm094447;
 Tue, 30 Mar 2021 06:01:53 -0500
From: Kishon Vijay Abraham I <kishon@ti.com>
To: Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 Philipp Zabel <p.zabel@pengutronix.de>
CC: Swapnil Jakhade <sjakhade@cadence.com>, <linux-phy@lists.infradead.org>,
 <linux-kernel@vger.kernel.org>, Lokesh Vutla <lokeshvutla@ti.com>
Subject: [PATCH v2 4/5] phy: cadence-torrent: Explicitly request exclusive
 reset control
Date: Tue, 30 Mar 2021 16:31:37 +0530
Message-ID: <20210330110138.24356-5-kishon@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210330110138.24356-1-kishon@ti.com>
References: <20210330110138.24356-1-kishon@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210330_120159_977997_2BD17C74 
X-CRM114-Status: UNSURE (   9.68  )
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

No functional change. Since the reset controls obtained in
Torrent is exclusively used by the Torrent device, use
exclusive reset control request API calls.

Signed-off-by: Kishon Vijay Abraham I <kishon@ti.com>
Reviewed-by: Swapnil Jakhade <sjakhade@cadence.com>
---
 drivers/phy/cadence/phy-cadence-torrent.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/phy/cadence/phy-cadence-torrent.c b/drivers/phy/cadence/phy-cadence-torrent.c
index 5ee1657f5a1c..ff8bb4b724c0 100644
--- a/drivers/phy/cadence/phy-cadence-torrent.c
+++ b/drivers/phy/cadence/phy-cadence-torrent.c
@@ -2264,7 +2264,7 @@ static int cdns_torrent_reset(struct cdns_torrent_phy *cdns_phy)
 		return PTR_ERR(cdns_phy->phy_rst);
 	}
 
-	cdns_phy->apb_rst = devm_reset_control_get_optional(dev, "torrent_apb");
+	cdns_phy->apb_rst = devm_reset_control_get_optional_exclusive(dev, "torrent_apb");
 	if (IS_ERR(cdns_phy->apb_rst)) {
 		dev_err(dev, "%s: failed to get apb reset\n",
 			dev->of_node->full_name);
-- 
2.17.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
