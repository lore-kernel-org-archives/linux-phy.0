Return-Path: <SRS0=wP85=II=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DDF44C433DB
	for <linux-phy@archiver.kernel.org>; Wed, 10 Mar 2021 12:08:58 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 6EAF064FD7
	for <linux-phy@archiver.kernel.org>; Wed, 10 Mar 2021 12:08:58 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 6EAF064FD7
Authentication-Results: mail.kernel.org; dmarc=fail (p=quarantine dis=none) header.from=ti.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:CC:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=LCOhmXuIwI/R+Vm1IlCSTMHCUhOMkTdn3YyJ70JHQRQ=; b=F0DWdcKB4lp8nWNBWbi5CdwoHg
	n/a6c3xeEExA7PnshIJ2sKjg5igW3810Qg84nPQE+CwcCPF1aI2IV1P+6T7S0nuKXlrHAf8fYNORP
	sus+0KrZjKi6WBVZqGLyaM3/gbqwak55QHOFiY3vVXWlvBxCC6C2uOHVbJpSvWiDhgZ35ptvQr3m+
	xA4JsNzWTIYQfk1a4kJIaJxVY7fTExw+Jn609dn5jpTjo9514j9JnF1J3v39i+dhI/aBksWoUHyaV
	RypbEGoNyhsXFbVCIL99BRZQyQreh+gbyzNDd9qZaFVcwAO5OYybjYe1qo52gAJ9VC6m/okf2VRZI
	EZhKbiYw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lJxe3-006n1X-A3; Wed, 10 Mar 2021 12:08:55 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lJxdy-006n0w-EO
 for linux-phy@lists.infradead.org; Wed, 10 Mar 2021 12:08:53 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 12AC8kNC031705;
 Wed, 10 Mar 2021 06:08:46 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1615378126;
 bh=qY7ThBBsSPEZdjnXNXPHXBLNpfP2APeZIQPl0uTiT+0=;
 h=From:To:CC:Subject:Date;
 b=NF/dADPkNFcAhISAI7kwje610H+vvHrAM9Hd80+Ku80BIkL0c6FKzqF2t0G1AEMz9
 5nsfEfopjwVmI5Md+H8eB2s1vb0uDKqu6AKAYjlkqLvg676EsEZIRcCBbkaG9M4aTI
 cNipE2JAm/FSeq+OzezPv84sHeB62nnL8SNWb37c=
Received: from DLEE105.ent.ti.com (dlee105.ent.ti.com [157.170.170.35])
 by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 12AC8kvO110849
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Wed, 10 Mar 2021 06:08:46 -0600
Received: from DLEE102.ent.ti.com (157.170.170.32) by DLEE105.ent.ti.com
 (157.170.170.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2176.2; Wed, 10
 Mar 2021 06:08:46 -0600
Received: from lelv0327.itg.ti.com (10.180.67.183) by DLEE102.ent.ti.com
 (157.170.170.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2176.2 via
 Frontend Transport; Wed, 10 Mar 2021 06:08:46 -0600
Received: from a0393678-ssd.dhcp.ti.com (ileax41-snat.itg.ti.com
 [10.172.224.153])
 by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id 12AC8ghb017368;
 Wed, 10 Mar 2021 06:08:44 -0600
From: Kishon Vijay Abraham I <kishon@ti.com>
To: Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 Swapnil Jakhade <sjakhade@cadence.com>
CC: <linux-kernel@vger.kernel.org>, <linux-phy@lists.infradead.org>, Lokesh
 Vutla <lokeshvutla@ti.com>
Subject: [PATCH v3 0/6] AM64: Add SERDES driver support
Date: Wed, 10 Mar 2021 17:38:34 +0530
Message-ID: <20210310120840.16447-1-kishon@ti.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210310_120850_837623_8105652D 
X-CRM114-Status: GOOD (  11.60  )
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

AM64 uses the same SERDES as in J7200, however AM642 EVM doesn't
have a clock generator (unlike J7200 base board). Here the clock from
the SERDES has to be routed to the PCIE connector. This series adds
support to drive reference clock output from SERDES and also adds
SERDES (torrent) and SERDES wrapper (WIZ) bindings.

v1 of the patch series can be found @ [1]
v2 of the patch series can be found @ [3]

Changes from v2:
*) Sent the DT bindings as a separate series [4]
*) Remove enabling PHY output clock in isolation mode

Changes from v1:
*) Model the internal clocks without device tree input (Add #clock-cells
   to SERDES DT nodes for getting a reference to the clock using index
   to phandle). This is in accordance with comment given by Rob [2].
   However the existing method to model clocks from device tree is not
   removed to support upstreamed device tree.
*) Included a patch to fix modifying static data by instance specific
   initializations.
*) Added a fix to delete "clk_div_sel" clk provider during cleanup

[1] -> https://lore.kernel.org/r/20201224114250.1083-1-kishon@ti.com
[2] -> http://lore.kernel.org/r/20210108025943.GA1790601@robh.at.kernel.org
[3] -> http://lore.kernel.org/r/20210222112314.10772-1-kishon@ti.com
[4] -> http://lore.kernel.org/r/20210310112745.3445-1-kishon@ti.com

Kishon Vijay Abraham I (6):
  phy: ti: j721e-wiz: Remove "regmap_field" from wiz_clk_{mux|div}_sel
  phy: ti: j721e-wiz: Delete "clk_div_sel" clk provider during cleanup
  phy: ti: j721e-wiz: Configure full rate divider for AM64
  phy: ti: j721e-wiz: Model the internal clocks without device tree
    input
  phy: ti: j721e-wiz: Enable reference clock output in cmn_refclk_<p/m>
  phy: cadence-torrent: Add support to drive refclk out

 drivers/phy/cadence/Kconfig               |   1 +
 drivers/phy/cadence/phy-cadence-torrent.c | 188 +++++++++++-
 drivers/phy/ti/phy-j721e-wiz.c            | 349 +++++++++++++++++++---
 3 files changed, 488 insertions(+), 50 deletions(-)

-- 
2.17.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
