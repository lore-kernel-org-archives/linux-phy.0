Return-Path: <SRS0=EEXn=IR=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 678B3C433E0
	for <linux-phy@archiver.kernel.org>; Fri, 19 Mar 2021 12:43:47 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 0D57E600EF
	for <linux-phy@archiver.kernel.org>; Fri, 19 Mar 2021 12:43:47 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 0D57E600EF
Authentication-Results: mail.kernel.org; dmarc=fail (p=quarantine dis=none) header.from=ti.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:CC:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=eLWJDXsVvMh78I143l0kREFnPTdDoPo9ByDhHhiAcp0=; b=hTtFdv22VMh4Vbo8esb3U5gcuU
	9s/lMr0OmP1RnXjOdJx/QEo5dPAbQWSiNYLD27quW4sD5lRpErP2w6H79cQFdRhembmEHnvUwDPt5
	iA/4wylUDanNZRBJTx9iDKzfJibOQW5T0/R/VzaqSbTNa3kq9B+wff4Z0GRFJgucsjP+cLhy4NCIy
	NwQW8V7MGvC8+UP0f071+OIOzS1V8Hb0PrkO4KhNPjJvTfPIRFlkzCFW4G2p07SRycl6+iPjaCalG
	cxmCVq1ceHUdiOV68fnBjmH1VSAH/v7bTUwc1sUq4ONl0MWdVpE7HhZynVZG5g6ET2wtqPO0PHa0e
	30cLPRIA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lNETh-007PwS-0H; Fri, 19 Mar 2021 12:43:45 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lNERd-007Ps1-Ou
 for linux-phy@lists.infradead.org; Fri, 19 Mar 2021 12:43:41 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 12JCfYFP107917;
 Fri, 19 Mar 2021 07:41:34 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1616157694;
 bh=uSKf2oDFa6c9KV6u9vbyFkn/JVaeAc8Tka00BC8gqUI=;
 h=From:To:CC:Subject:Date;
 b=IO9lDVr8Gs1O7/PRrBS/Ys2gZPnJzbxAlj51kYqvaodJU8D9JS+5miFwp1uPtv8K5
 Pv1egDeN8s9t4kkXviB2VeIeofHoqd00INSm6KKaBxlHmTgT/cMC4zs0JW5dL8SMoz
 pe9ytJiQ+5kmRablU3axhnSSjBmPwLu9q3KZDpns=
Received: from DFLE103.ent.ti.com (dfle103.ent.ti.com [10.64.6.24])
 by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 12JCfYmQ090700
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Fri, 19 Mar 2021 07:41:34 -0500
Received: from DFLE104.ent.ti.com (10.64.6.25) by DFLE103.ent.ti.com
 (10.64.6.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2176.2; Fri, 19
 Mar 2021 07:41:33 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DFLE104.ent.ti.com
 (10.64.6.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2176.2 via
 Frontend Transport; Fri, 19 Mar 2021 07:41:33 -0500
Received: from a0393678-ssd.dhcp.ti.com (ileax41-snat.itg.ti.com
 [10.172.224.153])
 by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id 12JCfTf1011913;
 Fri, 19 Mar 2021 07:41:30 -0500
From: Kishon Vijay Abraham I <kishon@ti.com>
To: Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>, Rob
 Herring <robh+dt@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>,
 Swapnil Jakhade <sjakhade@cadence.com>
CC: <linux-kernel@vger.kernel.org>, <devicetree@vger.kernel.org>,
 <linux-phy@lists.infradead.org>, Lokesh Vutla <lokeshvutla@ti.com>
Subject: [PATCH v7 00/13] PHY: Add support in Sierra to use external clock
Date: Fri, 19 Mar 2021 18:11:15 +0530
Message-ID: <20210319124128.13308-1-kishon@ti.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210319_124338_956883_AACA514C 
X-CRM114-Status: GOOD (  14.19  )
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

Patch series adds support in Sierra driver to use external clock.

v1 of the patch series can be found @ [1]
v2 of the patch series can be found @ [2]
v3 of the patch series can be found @ [3]
v4 of the patch series can be found @ [5]
v5 of the patch series can be found @ [6]
v6 of the patch series can be found @ [7]

Changes from v6:
1) Fixed $subject of patches to just have Sierra
2) Added Reviewed-by Tags
3) Fixed dt-binding example which included phy-cadence-torrent.h

Changes from v5:
1) Added Rob's Reviewed-by for the DT binding
2) Fixed another error handling case pointed out by Swapnil
3) Fixed few checkpatch errors.

Changes from v4:
1) Fixed couple of error handling cases
2) Added reviewed by from Philipp Zabel
3) Fixed couple of patch commit subjects to be uniform with other
patches.

Changes from v3:
1) Instead of adding separate subnodes for each clock, just add
   #clock-cells in Sierra SERDES nodes and model the clocks. This is
in alignment with Rob's comment for a different series [4]
2) Removed device tree changes from the series.

Changes from v2:
1) Add depends on COMMON_CLK in Sierra
2) Add modelling PLL_CMNLC and PLL_CMNLC1 as clocks into a separate
patch
3) Disable clocks in Sierra driver remove

Changes from v1:
1) Remove the part that prevents configuration if the SERDES is already
   configured and focus only on using external clock and the associated
   cleanups
2) Change patch ordering
3) Use exclusive reset control APIs
4) Fix error handling code
5) Include DT patches in this series (I can send this separately to DT
MAINTAINER once the driver patches are merged)

[1] -> http://lore.kernel.org/r/20201103035556.21260-1-kishon@ti.com
[2] -> http://lore.kernel.org/r/20201222070520.28132-1-kishon@ti.com
[3] -> http://lore.kernel.org/r/20201224111627.32590-1-kishon@ti.com
[4] -> http://lore.kernel.org/r/20210108025943.GA1790601@robh.at.kernel.org
[5] -> https://lore.kernel.org/r/20210304044122.15166-1-kishon@ti.com
[6] -> https://lore.kernel.org/r/20210308050732.7140-1-kishon@ti.com
[7] -> http://lore.kernel.org/r/20210310154558.32078-1-kishon@ti.com

Kishon Vijay Abraham I (13):
  phy: cadence: Sierra: Fix PHY power_on sequence
  phy: ti: j721e-wiz: Invoke wiz_init() before
    of_platform_device_create()
  phy: cadence: Sierra: Create PHY only for "phy" or "link" sub-nodes
  phy: ti: j721e-wiz: Get PHY properties only for "phy" or "link"
    subnode
  phy: cadence: Sierra: Move all clk_get_*() to a separate function
  phy: cadence: Sierra: Move all reset_control_get*() to a separate
    function
  phy: cadence: Sierra: Explicitly request exclusive reset control
  phy: cadence-torrent: Use a common header file for Cadence SERDES
  phy: cadence: Sierra: Add array of input clocks in "struct
    cdns_sierra_phy"
  phy: cadence: Sierra: Add missing clk_disable_unprepare() in .remove
    callback
  dt-bindings: phy: phy-cadence-sierra: Add binding to model Sierra as
    clock provider
  phy: cadence: Sierra: Model PLL_CMNLC and PLL_CMNLC1 as clocks (mux
    clocks)
  phy: cadence: Sierra: Enable pll_cmnlc and pll_cmnlc1 clocks

 .../bindings/phy/phy-cadence-sierra.yaml      |  17 +-
 .../bindings/phy/phy-cadence-torrent.yaml     |   2 +-
 drivers/phy/cadence/Kconfig                   |   1 +
 drivers/phy/cadence/phy-cadence-sierra.c      | 419 ++++++++++++++++--
 drivers/phy/cadence/phy-cadence-torrent.c     |   2 +-
 drivers/phy/ti/phy-j721e-wiz.c                |  21 +-
 include/dt-bindings/phy/phy-cadence-torrent.h |  15 -
 include/dt-bindings/phy/phy-cadence.h         |  20 +
 8 files changed, 429 insertions(+), 68 deletions(-)
 delete mode 100644 include/dt-bindings/phy/phy-cadence-torrent.h
 create mode 100644 include/dt-bindings/phy/phy-cadence.h

-- 
2.17.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
