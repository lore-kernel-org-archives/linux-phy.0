Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4DD15C433F5
	for <linux-phy@archiver.kernel.org>; Mon, 31 Jan 2022 17:44:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:CC
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=IJGpsnkCKk6Iayo2FSN+yD2qBBeX9eOdcdndiKvejDk=; b=Ok2dqpRxSsoNW3
	AVRMENDpwXzC3tk8Iq8TF7K1OLiZmwVXoJxmxkohZJB7+F5W48H7AX05nKQEJznr0H035H1iFNkRw
	0htpsyiA2M5JVqiaylj6u16xDDaWOEYY199BXWObBCv8sV2LVwZUzKlJ2Z5mRKxMsLTBoMq0F9HhG
	TE7CBdqMnGsAv3az8bSlMlJ3BVOJaK3ChY1MqCX9s9Hs5TvIdhlxpMCWtU/22N9SKwZYfYLCvKas+
	flQXsQnPfIw/2fdw9nOXSqgYrzS9/BEC25iEnXGPJ2urqBjpxAmVd6Oa4uVP8fRP+e3CMKg2FSE+U
	Jkq78km7RKRQ6W6x1jVA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nEajP-00ACrW-GG; Mon, 31 Jan 2022 17:44:47 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nEaYU-00A98n-Q7
 for linux-phy@lists.infradead.org; Mon, 31 Jan 2022 17:33:32 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 20VHXJ9g127080;
 Mon, 31 Jan 2022 11:33:19 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1643650399;
 bh=VLMIB5di9I0VDIL5H5UUP/jwNEAc7V0txtDjq9XRoXQ=;
 h=From:To:CC:Subject:Date;
 b=GjeAI5ODYE0dAOmKoWI3kMmg/MEhdoZqFXTiEYXfdJU3kN2G+h7ArAWG1rJL7N8Eb
 WJB+5RlkeLqD8n36WrKAfX4MUIUdPg+DNKkJyyBCwgKv0fsSmvhnr5OLVc4XiUqeIB
 kUK+u+tTGSbhplp/HKJChtl2TmueH9MkWO0jCOiM=
Received: from DFLE109.ent.ti.com (dfle109.ent.ti.com [10.64.6.30])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 20VHXJeZ069338
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Mon, 31 Jan 2022 11:33:19 -0600
Received: from DFLE105.ent.ti.com (10.64.6.26) by DFLE109.ent.ti.com
 (10.64.6.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2308.14; Mon, 31
 Jan 2022 11:33:19 -0600
Received: from fllv0040.itg.ti.com (10.64.41.20) by DFLE105.ent.ti.com
 (10.64.6.26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2308.14 via
 Frontend Transport; Mon, 31 Jan 2022 11:33:19 -0600
Received: from pratyush-4F-325.dhcp.ti.com (ileax41-snat.itg.ti.com
 [10.172.224.153])
 by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id 20VHXFpd034468;
 Mon, 31 Jan 2022 11:33:16 -0600
From: Pratyush Yadav <p.yadav@ti.com>
To: Vinod Koul <vkoul@kernel.org>
CC: Pratyush Yadav <p.yadav@ti.com>, Laurent Pinchart
 <laurent.pinchart@ideasonboard.com>, Paul Kocialkowski
 <paul.kocialkowski@bootlin.com>, Tomi Valkeinen
 <tomi.valkeinen@ideasonboard.com>, Vignesh Raghavendra <vigneshr@ti.com>,
 Kishon Vijay Abraham I <kishon@ti.com>, Rob Herring <robh+dt@kernel.org>,
 Swapnil Jakhade <sjakhade@cadence.com>, <devicetree@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, <linux-phy@lists.infradead.org>
Subject: [PATCH v9 0/4] Rx mode support for Cadence DPHY
Date: Mon, 31 Jan 2022 23:03:10 +0530
Message-ID: <20220131173314.2073641-1-p.yadav@ti.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220131_093330_982354_D56AA92E 
X-CRM114-Status: GOOD (  18.21  )
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

Changes in v9:
- Use %ld instead of %d for printing PTR_ERR().

Changes in v8:
- Move lanes check to start of configure sequence.
- Change MODULE_LICENSE() to "GPL".

Changes in v7:
- Add spaces after { and before } in the bands table.
- Drop the wrapping around the for loop on cdns_dphy_rx_get_band_ctrl().
- Make cdns_dphy_rx_wait_for_bit() inline.
- Print an error message if registering PHY provider fails.

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
 drivers/phy/cadence/cdns-dphy-rx.c            | 255 ++++++++++++++++++
 6 files changed, 362 insertions(+), 20 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/phy/cdns,dphy-rx.yaml
 delete mode 100644 Documentation/devicetree/bindings/phy/cdns,dphy.txt
 create mode 100644 Documentation/devicetree/bindings/phy/cdns,dphy.yaml
 create mode 100644 drivers/phy/cadence/cdns-dphy-rx.c

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
