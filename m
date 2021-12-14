Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 995CBC433EF
	for <linux-phy@archiver.kernel.org>; Tue, 14 Dec 2021 18:07:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:CC
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=h8kpF8/5ray3eLdqw/TPUpAvcCadnaDlhU+M9OITOTU=; b=3g3BlW/ZP+cudC
	l5LTHJpurL4vJrfbTuMqUPlXpZyi6lWKtzWua7BnCX7sBXFrwoCRuasSJ8sCh2nEMohnmX3OJ0LHN
	PZkh6DkUh6S1Xq8MCCr+DecW9KhExNayKi2hYYesUduOGOCg18CWZwV++v+TGerwtzoPi1SS2mHl3
	UIiDTtGIdfD0CI7/nrGVu17If5efz3117x8vsWW8uWI/eFXCdAUonFiqvV9bweBFoB/YNMm24hHzu
	1pYa7ihbXDlkwZBJ01uh2ElUAmoMmjnDLi8Az9OIn71Oi24z1LEcEbu/9qoJvWoSkllhyZJvnekjH
	ixr0T67ud5ENBWVCmQhw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mxCCy-00FH3Z-VF; Tue, 14 Dec 2021 18:07:24 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mxCCv-00FH25-O3
 for linux-phy@lists.infradead.org; Tue, 14 Dec 2021 18:07:23 +0000
Received: from fllv0034.itg.ti.com ([10.64.40.246])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 1BEI78WQ039417;
 Tue, 14 Dec 2021 12:07:08 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1639505228;
 bh=wTkcoCYiy9zEsF6nQZzQEUxf+luVgqdbNmEsYZS7bGI=;
 h=From:To:CC:Subject:Date;
 b=CmlDI3kAz4o1iOsYdhndjuTQa5KOS12tfVOhrcN8A0BZN5Z4dWNEmrVoKks1fEXMu
 NfJhTILH/b4VRGGh1ZlOEhdr0703DyqgOqJgGBmrvgClm4MRx7FGzk9R6SvSYeSnCH
 50nk6CJ0PW3PzSJQ3jNlck5PtclL4CYCQU20UxaI=
Received: from DFLE106.ent.ti.com (dfle106.ent.ti.com [10.64.6.27])
 by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 1BEI78RN058074
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Tue, 14 Dec 2021 12:07:08 -0600
Received: from DFLE104.ent.ti.com (10.64.6.25) by DFLE106.ent.ti.com
 (10.64.6.27) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2308.14; Tue, 14
 Dec 2021 12:07:08 -0600
Received: from fllv0040.itg.ti.com (10.64.41.20) by DFLE104.ent.ti.com
 (10.64.6.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2308.14 via
 Frontend Transport; Tue, 14 Dec 2021 12:07:08 -0600
Received: from pratyush-OptiPlex-790.dhcp.ti.com (ileax41-snat.itg.ti.com
 [10.172.224.153])
 by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id 1BEI741U043960;
 Tue, 14 Dec 2021 12:07:05 -0600
From: Pratyush Yadav <p.yadav@ti.com>
To: Vinod Koul <vkoul@kernel.org>
CC: Laurent Pinchart <laurent.pinchart@ideasonboard.com>, Paul Kocialkowski
 <paul.kocialkowski@bootlin.com>, Tomi Valkeinen
 <tomi.valkeinen@ideasonboard.com>, Vignesh Raghavendra <vigneshr@ti.com>,
 Kishon Vijay Abraham I <kishon@ti.com>,
 Pratyush Yadav <p.yadav@ti.com>, Rob Herring <robh+dt@kernel.org>,
 Swapnil Jakhade <sjakhade@cadence.com>, <devicetree@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, <linux-phy@lists.infradead.org>
Subject: [PATCH v6 0/4] Rx mode support for Cadence DPHY
Date: Tue, 14 Dec 2021 23:36:59 +0530
Message-ID: <20211214180703.3268-1-p.yadav@ti.com>
X-Mailer: git-send-email 2.33.1.835.ge9e5ba39a7
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211214_100721_936471_9BA0EB0B 
X-CRM114-Status: GOOD (  15.85  )
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

Hi,

This series adds support for Cadence DPHY Rx driver. It has been split
off from [0] to facilitate easier merging. I have still kept the version
number to maintain continuity with the previous patches. The earlier
version used the same binding for Tx and Rx DPHY. With the separate
driver, I have added a separate binding. But I am still keeping the old
conversion patch in this series since I have already done the work in
converting the binding to yaml, might as well get it merged.

Tested on TI's J721E with OV5640 sensor.

[0] https://patchwork.linuxtv.org/project/linux-media/list/?series=5526&state=%2A&archive=both

Changes in v6:
- Add a new binding for DPHY Rx.
- Move the DPHY Rx part to a separate driver.
- Drop Rx specific changes from the cdns,dphy.yaml binding. Keep those
  in cdns,dphy-rx.yaml

Changes in v5:
- Use the new cdns_dphy_info to specify PHY ops.
- Re-order include in alphabetical order.
- Make bands const.
- Drop num_bands.
- Make i, lanes unsigned.
- Drop the maximum check in cdns_dphy_rx_get_band_ctrl(). Let the loop
  complete and return -EOPNOTSUPP when we reach the end.
- Drop the "rate < bands[i].min_rate" check since the bands are in
  ascending order.
- Move data_lane_ctrl to start of function and make it static const.

Changes in v4:
- Drop the submode parts. Use a different compatible for the Rx ops.
- Make bands and num_bands static.
- Drop the submode patches. Use a different compatible for Rx mode DPHY
instead.

Changes in v3:
- Use a table to select the band.
- Use a table to poll the data lane ready bits.
- Multiply the DPHY HS clock rate by 2 to get the bit rate since the
  clock is DDR.
- Add Rob's R-by.

Changes in v2:
- Drop reg description.
- Add a description for each DPHY clock.
- Rename dphy@... to phy@... in example.
- Add Laurent's R-by.
- Re-order subject prefixes.
- Add power-domain to the example.
- Add Laurent's R-by.
- Re-order subject prefixes.

Pratyush Yadav (4):
  phy: cadence: Add Cadence D-PHY Rx driver
  phy: dt-bindings: Convert Cadence DPHY binding to YAML
  phy: dt-bindings: cdns,dphy: add power-domains property
  phy: dt-bindings: Add Cadence D-PHY Rx bindings

 .../devicetree/bindings/phy/cdns,dphy-rx.yaml |  42 +++
 .../devicetree/bindings/phy/cdns,dphy.txt     |  20 --
 .../devicetree/bindings/phy/cdns,dphy.yaml    |  56 ++++
 drivers/phy/cadence/Kconfig                   |   8 +
 drivers/phy/cadence/Makefile                  |   1 +
 drivers/phy/cadence/cdns-dphy-rx.c            | 250 ++++++++++++++++++
 6 files changed, 357 insertions(+), 20 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/phy/cdns,dphy-rx.yaml
 delete mode 100644 Documentation/devicetree/bindings/phy/cdns,dphy.txt
 create mode 100644 Documentation/devicetree/bindings/phy/cdns,dphy.yaml
 create mode 100644 drivers/phy/cadence/cdns-dphy-rx.c

-- 
2.33.1.835.ge9e5ba39a7


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
