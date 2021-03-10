Return-Path: <SRS0=wP85=II=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C11C4C433E0
	for <linux-phy@archiver.kernel.org>; Wed, 10 Mar 2021 15:55:06 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 5C4D564EE2
	for <linux-phy@archiver.kernel.org>; Wed, 10 Mar 2021 15:55:06 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 5C4D564EE2
Authentication-Results: mail.kernel.org; dmarc=fail (p=quarantine dis=none) header.from=ti.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:CC:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=pHgwZGPluj8Xz82u8/4qw/CpQaE9kZQRyUZsRT43Aug=; b=dnrWW24+ZfXGR80ojOsN+R2tQV
	4cl4Suo0aTdsinovwm25NlXgZ45ogxsTXWX+ZVbe4fNMucqSSl9Ba2LPWGkvAwhZ2FgkWOznjPT34
	m2egw5ViJ3sX3F0/7LTUR6+5EbY5IL+Dld1izn9ZxE3RE/lkqvcoGLINKNpEn0JsL32o37CmeUXJ0
	Zav0lITrr2qeLPA+RH04INvLpXdmL1uNTZ8Re5ipSefUQPycxfZBvVrJychGchAihrCmbX5igUqpF
	Xf5F3clh2rN+P6ZFG33f4hNJky4K+ydrAb22nj+68w5+3KBPVnDyHEcknoDRAlgX5tDMjHeXMuE1Z
	hGppNDtw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lK1Au-0079ek-QD; Wed, 10 Mar 2021 15:55:04 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lK1Aq-0079db-Ey
 for linux-phy@lists.infradead.org; Wed, 10 Mar 2021 15:55:03 +0000
Received: from fllv0034.itg.ti.com ([10.64.40.246])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 12AFsuA7120873;
 Wed, 10 Mar 2021 09:54:56 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1615391696;
 bh=8AYrDZ9YTwYsvVYi/Y4U5QHZjjUnhc9h3+C5pzcRwqo=;
 h=From:To:CC:Subject:Date;
 b=Si4a9pP87FSkTc9KvUXBQBpMdJ0uHnykTc5C+FFVf79oYMjzIxLCKvJD4HF9ojtXV
 Fpqn0f4fKKiVKL8TOOwl1cj2+Lq9IqyrBqttqHU8eUVJUPCdRV+fHrXeOmBhxtUNLe
 D5TBAD1Vn8X/u78N21JoH+guFFw6bDZnUGE3me/4=
Received: from DFLE106.ent.ti.com (dfle106.ent.ti.com [10.64.6.27])
 by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 12AFsuab029139
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Wed, 10 Mar 2021 09:54:56 -0600
Received: from DFLE106.ent.ti.com (10.64.6.27) by DFLE106.ent.ti.com
 (10.64.6.27) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2176.2; Wed, 10
 Mar 2021 09:54:56 -0600
Received: from lelv0326.itg.ti.com (10.180.67.84) by DFLE106.ent.ti.com
 (10.64.6.27) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2176.2 via
 Frontend Transport; Wed, 10 Mar 2021 09:54:56 -0600
Received: from a0393678-ssd.dhcp.ti.com (ileax41-snat.itg.ti.com
 [10.172.224.153])
 by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 12AFsq5h082613;
 Wed, 10 Mar 2021 09:54:53 -0600
From: Kishon Vijay Abraham I <kishon@ti.com>
To: Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>, Rob
 Herring <robh+dt@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>,
 Swapnil Jakhade <sjakhade@cadence.com>
CC: <linux-kernel@vger.kernel.org>, <devicetree@vger.kernel.org>, Lokesh Vutla
 <lokeshvutla@ti.com>, <linux-phy@lists.infradead.org>
Subject: [PATCH 0/4] j721e-wiz/cadence-torrent: Support to skip SERDES
 configuration
Date: Wed, 10 Mar 2021 21:24:41 +0530
Message-ID: <20210310155445.534-1-kishon@ti.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210310_155501_628606_D6E3B572 
X-CRM114-Status: UNSURE (   5.56  )
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

Add support to skip SERDES configuration if it's already configured in
bootloader.

The wiz part was initially sent in [1] but that was sent more in the
context of Sierra but this is in context of Torrent. The Sierra part
would be sent later.

[1] -> http://lore.kernel.org/r/20201103035556.21260-1-kishon@ti.com

Faiz Abbas (1):
  phy: ti: j721e-wiz: Do not configure wiz if its already configured

Kishon Vijay Abraham I (3):
  phy: cadence-torrent: Group reset APIs and clock APIs
  phy: cadence-torrent: Do not configure SERDES if it's already
    configured
  phy: cadence-torrent: Explicitly request exclusive reset control

 drivers/phy/cadence/phy-cadence-torrent.c | 106 ++++++++++++++--------
 drivers/phy/ti/phy-j721e-wiz.c            |  21 ++++-
 2 files changed, 86 insertions(+), 41 deletions(-)

-- 
2.17.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
