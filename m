Return-Path: <SRS0=RVtz=HZ=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-11.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT
	autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1B42FC433E6
	for <linux-phy@archiver.kernel.org>; Tue, 23 Feb 2021 03:59:52 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 6A03564E61
	for <linux-phy@archiver.kernel.org>; Tue, 23 Feb 2021 03:59:51 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 6A03564E61
Authentication-Results: mail.kernel.org; dmarc=fail (p=quarantine dis=none) header.from=ti.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=Mcahqbr1duReyYr6VWoB9ST7TfitM/FRCYKL+N0DqHg=; b=aNGIOKzcsBTPWnDeZFY/hCIAdZ
	i90N++k0ZG/EsDKbLHIWYb29q/6hddhAoMl70c7h++wyo8GtQ66gv1cpwB+MsBHahSi6n8QUjdkuz
	ajaJiURUw7/xU7Hsegv5E4EYRlcYwji0NzSWraNedYgdCJ35QyJhViia6FvU24FgpMkofVl5SVYv3
	oFFwXLGmQCXPvDloxoLCoxbFFUDVvf4Ojjb4W+D0PEQvfOj5nGGZjZIif/+1kRamOODEvmcT1aVUe
	3PcLxvOYzFG/U+B5rh3ZR2J89A5hysFjI83Di1cJ4zUfG4q3XPjkkTx87T78jz+QzFFPEWj1yYW0t
	v0axEAKg==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1lEOrV-0005CX-VB; Tue, 23 Feb 2021 03:59:50 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1lE9Jj-0004tI-76
 for linux-phy@lists.infradead.org; Mon, 22 Feb 2021 11:23:57 +0000
Received: from fllv0034.itg.ti.com ([10.64.40.246])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 11MBNYSZ035075;
 Mon, 22 Feb 2021 05:23:34 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1613993014;
 bh=eg79OgHeosFuQo7HrdUnztwwOwIbN8h6QbcvgDDBaog=;
 h=From:To:CC:Subject:Date;
 b=TlTrBh27TnlfrSKw1KlO+niUHt+WdvU/HT5UKK86VoD2qqhFarC2uHxuQtRdTu2iw
 MGPMPti7LUYM1HyBmqNNBv31/xzRWKPvgA+Y5/4q/6pMjleaLDFZex84znOlqfjhxC
 Tu2Y1dMvYZn5W9ztl4cCZ2IH6C9zmBbOUrXDgcsE=
Received: from DFLE100.ent.ti.com (dfle100.ent.ti.com [10.64.6.21])
 by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 11MBNYms038366
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Mon, 22 Feb 2021 05:23:34 -0600
Received: from DFLE112.ent.ti.com (10.64.6.33) by DFLE100.ent.ti.com
 (10.64.6.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Mon, 22
 Feb 2021 05:23:33 -0600
Received: from fllv0040.itg.ti.com (10.64.41.20) by DFLE112.ent.ti.com
 (10.64.6.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Mon, 22 Feb 2021 05:23:33 -0600
Received: from a0393678-ssd.dhcp.ti.com (ileax41-snat.itg.ti.com
 [10.172.224.153])
 by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id 11MBNFDZ088010;
 Mon, 22 Feb 2021 05:23:17 -0600
From: Kishon Vijay Abraham I <kishon@ti.com>
To: Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>, Rob
 Herring <robh+dt@kernel.org>, Peter Rosin <peda@axentia.se>,
 Swapnil Jakhade <sjakhade@cadence.com>
Subject: [PATCH v2 0/9] AM64: Add SERDES bindings and driver support
Date: Mon, 22 Feb 2021 16:53:05 +0530
Message-ID: <20210222112314.10772-1-kishon@ti.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210222_062355_560087_E4699163 
X-CRM114-Status: GOOD (  13.75  )
X-Mailman-Approved-At: Mon, 22 Feb 2021 22:59:48 -0500
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Unsubscribe: <https://lists.infradead.org/mailman/options/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
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

Kishon Vijay Abraham I (9):
  dt-bindings: phy: ti,phy-j721e-wiz: Add bindings for AM64 SERDES
    Wrapper
  dt-bindings: phy: cadence-torrent: Add binding for refclk driver
  dt-bindings: ti-serdes-mux: Add defines for AM64 SoC
  phy: ti: j721e-wiz: Remove "regmap_field" from wiz_clk_{mux|div}_sel
  phy: ti: j721e-wiz: Delete "clk_div_sel" clk provider during cleanup
  phy: ti: j721e-wiz: Configure full rate divider for AM64
  phy: ti: j721e-wiz: Model the internal clocks without device tree
    input
  phy: ti: j721e-wiz: Enable reference clock output in cmn_refclk_<p/m>
  phy: cadence-torrent: Add support to drive refclk out

 .../bindings/phy/phy-cadence-torrent.yaml     |  20 +-
 .../bindings/phy/ti,phy-j721e-wiz.yaml        |  10 +-
 drivers/phy/cadence/phy-cadence-torrent.c     | 202 +++++++++-
 drivers/phy/ti/phy-j721e-wiz.c                | 349 +++++++++++++++---
 include/dt-bindings/mux/ti-serdes.h           |   5 +
 include/dt-bindings/phy/phy-cadence-torrent.h |   2 +
 include/dt-bindings/phy/phy-ti.h              |  21 ++
 7 files changed, 553 insertions(+), 56 deletions(-)
 create mode 100644 include/dt-bindings/phy/phy-ti.h

-- 
2.17.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
