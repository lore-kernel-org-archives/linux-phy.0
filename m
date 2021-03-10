Return-Path: <SRS0=wP85=II=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D8685C433E6
	for <linux-phy@archiver.kernel.org>; Wed, 10 Mar 2021 12:09:03 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 7D72B64FE5
	for <linux-phy@archiver.kernel.org>; Wed, 10 Mar 2021 12:09:03 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 7D72B64FE5
Authentication-Results: mail.kernel.org; dmarc=fail (p=quarantine dis=none) header.from=ti.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-ID:Date:
	Subject:CC:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=s/4aNxkQT9lEmeUMD7ONFYzbt/iSh5XtY0CZwBqTBjk=; b=qy5qFEsGKUqBPgOktiODNjUYQ
	JhhRGy7GeWgKQStrvvzuxGxKPxBj99bTaptt6OgQpWp+lRoLLbwezZnoWxgQpo8KOfgyJtMjTuxqD
	bSmvuNrIUz6/8ciEYGo6SLsSIcvSms2nJSUF79lZIoO78LRIKkMHjsDq+ZRat7apn+1dL7/bd6HQW
	JHFlIFuI+YkeYwWln2oJRZPIdEqU3xcJmrT6/9hZRVmV4xdGipnxfLSbpjiJ7CzG9Ewgq59skIcJp
	tzVPm/U6bS/k/CqQC7wZmDmoZsyNik3FBN9hx1CsfLXuOv+0kHcuYpGQf+NZDch5K4lDWK6XcYg6/
	fTkMR3tgw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lJxe9-006n2X-A4; Wed, 10 Mar 2021 12:09:01 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lJxe3-006n1W-ON
 for linux-phy@lists.infradead.org; Wed, 10 Mar 2021 12:08:58 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 12AC8qYh031727;
 Wed, 10 Mar 2021 06:08:53 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1615378133;
 bh=aPZhKkrmpVrH4rdknlkaSt+wXkZ6Xm/lEzN/7YS7+4A=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=Hj/n0ue8O0juFqFcd8lpGrbxuwpFYZVvIJqaPobNn5/1JRpAelAwbkhcpavfHJMB0
 gQQoR55HZaFeC/GnTECHFOp7ZP+F4XRaHpVWC178IKzEydmTXxa9e4xvmY6D7llLSl
 HJ8iBAEtk5MB50CAe7mod/eeUjQ+7XgyKUW9Ba5Y=
Received: from DFLE103.ent.ti.com (dfle103.ent.ti.com [10.64.6.24])
 by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 12AC8qc7110907
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Wed, 10 Mar 2021 06:08:52 -0600
Received: from DFLE112.ent.ti.com (10.64.6.33) by DFLE103.ent.ti.com
 (10.64.6.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2176.2; Wed, 10
 Mar 2021 06:08:52 -0600
Received: from lelv0327.itg.ti.com (10.180.67.183) by DFLE112.ent.ti.com
 (10.64.6.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2176.2 via
 Frontend Transport; Wed, 10 Mar 2021 06:08:52 -0600
Received: from a0393678-ssd.dhcp.ti.com (ileax41-snat.itg.ti.com
 [10.172.224.153])
 by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id 12AC8ghd017368;
 Wed, 10 Mar 2021 06:08:50 -0600
From: Kishon Vijay Abraham I <kishon@ti.com>
To: Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 Swapnil Jakhade <sjakhade@cadence.com>
CC: <linux-kernel@vger.kernel.org>, <linux-phy@lists.infradead.org>, Lokesh
 Vutla <lokeshvutla@ti.com>
Subject: [PATCH v3 2/6] phy: ti: j721e-wiz: Delete "clk_div_sel" clk provider
 during cleanup
Date: Wed, 10 Mar 2021 17:38:36 +0530
Message-ID: <20210310120840.16447-3-kishon@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210310120840.16447-1-kishon@ti.com>
References: <20210310120840.16447-1-kishon@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210310_120856_951324_F4A1A122 
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

commit 091876cc355d ("phy: ti: j721e-wiz: Add support for WIZ module
present in TI J721E SoC") modeled both MUX clocks and DIVIDER clocks in
wiz. However during cleanup, it removed only the MUX clock provider.
Remove the DIVIDER clock provider here.

Fixes: 091876cc355d ("phy: ti: j721e-wiz: Add support for WIZ module present in TI J721E SoC")
Signed-off-by: Kishon Vijay Abraham I <kishon@ti.com>
---
 drivers/phy/ti/phy-j721e-wiz.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/phy/ti/phy-j721e-wiz.c b/drivers/phy/ti/phy-j721e-wiz.c
index 956a93d96d9b..1a4e09a394a8 100644
--- a/drivers/phy/ti/phy-j721e-wiz.c
+++ b/drivers/phy/ti/phy-j721e-wiz.c
@@ -608,6 +608,12 @@ static void wiz_clock_cleanup(struct wiz *wiz, struct device_node *node)
 		of_clk_del_provider(clk_node);
 		of_node_put(clk_node);
 	}
+
+	for (i = 0; i < wiz->clk_div_sel_num; i++) {
+		clk_node = of_get_child_by_name(node, clk_div_sel[i].node_name);
+		of_clk_del_provider(clk_node);
+		of_node_put(clk_node);
+	}
 }
 
 static int wiz_clock_init(struct wiz *wiz, struct device_node *node)
-- 
2.17.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
