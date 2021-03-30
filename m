Return-Path: <SRS0=B2Kc=I4=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-11.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98647C433C1
	for <linux-phy@archiver.kernel.org>; Tue, 30 Mar 2021 11:04:09 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 140C160C3D
	for <linux-phy@archiver.kernel.org>; Tue, 30 Mar 2021 11:04:09 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 140C160C3D
Authentication-Results: mail.kernel.org; dmarc=fail (p=quarantine dis=none) header.from=ti.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:CC:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=B1IrZKjvfuLKeWQJM7Z05mgCNrvwfXUdsObPbWs7pB4=; b=FOGaTSVBsqJBmTOWAzcBdRHSGY
	4fm7qaKZ7pogrEO0zBne9gAsFYTgTfhfUOBVPscK2YFrCY1qvUdAtmiqRN6ynfjaq2KYprd8z+X3Y
	prtuKPIB7EO3F3HdNjJBrIDk8ar+BsRInnCPNfNI7E498s0+XmEHrwQT++nIqzOY+i7KKvACAQsSS
	qC6FgLoSk7Rv5uRGjGqst8GZHQ1bf0c4vnIdZpUVgMjLPM9D80pZeQ0mjm09P4Ne8ubC7MpzPuOA+
	SPCQX+NrcNwBGBpSp7RPX8P4WZbmPiHB8HSIMfwvULHuU/G+R6SQ/4La5jYvDGGbO/D2dq3oW3NPx
	UnkMqdSQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lRCAI-003VVy-TK; Tue, 30 Mar 2021 11:04:07 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lRC83-003UtC-Bv
 for linux-phy@lists.infradead.org; Tue, 30 Mar 2021 11:01:55 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 12UB1hNC118743;
 Tue, 30 Mar 2021 06:01:43 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1617102103;
 bh=OMvuHxJr7BKv7RxoGD9YOG+EXTnCbM+J+kgdYHeSvLg=;
 h=From:To:CC:Subject:Date;
 b=TDIoDP0rgt4udmXhRuBVM9Rbm3Na5jj8lNoxyTa7z+4gHUQnqKydiDfenO/ClnL5f
 FvYbUCYZNu/OTJXTUeFwknE1gEgZ6BXKf8thH5J+zeLYtvowV+6Cl9VxSVfPLPOlf4
 1NF/MV3UvgHa6fXoXc59r4Qi2M0Z0APMqThrq4e4=
Received: from DLEE107.ent.ti.com (dlee107.ent.ti.com [157.170.170.37])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 12UB1gXQ022730
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Tue, 30 Mar 2021 06:01:43 -0500
Received: from DLEE110.ent.ti.com (157.170.170.21) by DLEE107.ent.ti.com
 (157.170.170.37) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2176.2; Tue, 30
 Mar 2021 06:01:42 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DLEE110.ent.ti.com
 (157.170.170.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2176.2 via
 Frontend Transport; Tue, 30 Mar 2021 06:01:42 -0500
Received: from a0393678-ssd.dhcp.ti.com (ileax41-snat.itg.ti.com
 [10.172.224.153])
 by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id 12UB1dci094447;
 Tue, 30 Mar 2021 06:01:40 -0500
From: Kishon Vijay Abraham I <kishon@ti.com>
To: Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 Philipp Zabel <p.zabel@pengutronix.de>
CC: Swapnil Jakhade <sjakhade@cadence.com>, <linux-phy@lists.infradead.org>,
 <linux-kernel@vger.kernel.org>, Lokesh Vutla <lokeshvutla@ti.com>
Subject: [PATCH v2 0/5] j721e-wiz/cadence-torrent: Support to skip SERDES
 configuration
Date: Tue, 30 Mar 2021 16:31:33 +0530
Message-ID: <20210330110138.24356-1-kishon@ti.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210330_120150_251543_185ED85F 
X-CRM114-Status: UNSURE (   6.81  )
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

v1 of the patch series can be found at [2].

Changes from v1:
1) Added a patch to wait for PIPE clock to be stable
2) Added reviewed by from Swapnil

[1] -> http://lore.kernel.org/r/20201103035556.21260-1-kishon@ti.com
[2] -> http://lore.kernel.org/r/20210310155445.534-1-kishon@ti.com

Faiz Abbas (1):
  phy: ti: j721e-wiz: Do not configure wiz if its already configured

Kishon Vijay Abraham I (4):
  phy: cadence-torrent: Group reset APIs and clock APIs
  phy: cadence-torrent: Do not configure SERDES if it's already
    configured
  phy: cadence-torrent: Explicitly request exclusive reset control
  phy: cadence-torrent: Add delay for PIPE clock to be stable

 drivers/phy/cadence/phy-cadence-torrent.c | 115 +++++++++++++++-------
 drivers/phy/ti/phy-j721e-wiz.c            |  21 +++-
 2 files changed, 95 insertions(+), 41 deletions(-)

-- 
2.17.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
