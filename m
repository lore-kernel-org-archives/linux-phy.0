Return-Path: <SRS0=B2Kc=I4=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-11.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 34846C433DB
	for <linux-phy@archiver.kernel.org>; Tue, 30 Mar 2021 17:34:13 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id B98DF61964
	for <linux-phy@archiver.kernel.org>; Tue, 30 Mar 2021 17:34:12 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org B98DF61964
Authentication-Results: mail.kernel.org; dmarc=fail (p=quarantine dis=none) header.from=ti.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:CC:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=AprRzbqNej0Pa9vUP8D2QxOjFC3RiuJuLQlcTRzJ5d8=; b=R1Na+myfGOI3Fa4U0iMsX2UEuF
	RT6oS9Ma6LpCosMFcuAKVYRQ0EH3Zsyhi74USmifrE5IafG33k2xLC5v27iNem8ai21HY8ljFgyEM
	gtL8UBXNtlckNd5hJT+ZvFhrJUemxR1V5Ji3o140NjkW7/1og21A8IHdqZFmfTzyrelAv70Z4CZz0
	4k19cAZMP//4SAZDJdirJoM7X2XFSgySvCGqy5yg9zHHjzavjblP+dpoheOE+ByNMBYNMpElKln/M
	B5B2gqCCdepNvX/T0sQqI/TX75j7ltCq2RrKzzdit8pC1I+W8VSGMC6LpypUZELteZA0O7sumwFDR
	uJzgtMiA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lRIFn-004Sbf-05; Tue, 30 Mar 2021 17:34:11 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lRIFh-004Sax-LK
 for linux-phy@lists.infradead.org; Tue, 30 Mar 2021 17:34:08 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 12UHXtnt056809;
 Tue, 30 Mar 2021 12:33:55 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1617125635;
 bh=klDN3SRCgEm92mzhH+b10dVnhg4f/bIDdg6mQxTtm4o=;
 h=From:To:CC:Subject:Date;
 b=DHU9Kl08+poeyMRGZ5LTonGYtO7avzKKZPcvTTCoiUpl9Ktnuu2CYUcLN67MxO0QL
 c+PXjfelxxXwJx/WMkyYUeY9TaFO46ja46uDOiAAch4VTI8+pakFrtBXwEZcgahdv7
 1n+BOxAQcroO2uGMB0Xv+sHyr8gCxw9jq+Jx1qRI=
Received: from DFLE113.ent.ti.com (dfle113.ent.ti.com [10.64.6.34])
 by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 12UHXtdE031312
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Tue, 30 Mar 2021 12:33:55 -0500
Received: from DFLE112.ent.ti.com (10.64.6.33) by DFLE113.ent.ti.com
 (10.64.6.34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2176.2; Tue, 30
 Mar 2021 12:33:55 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DFLE112.ent.ti.com
 (10.64.6.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2176.2 via
 Frontend Transport; Tue, 30 Mar 2021 12:33:55 -0500
Received: from pratyush-OptiPlex-790.dhcp.ti.com (ileax41-snat.itg.ti.com
 [10.172.224.153])
 by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 12UHXmgh125244;
 Tue, 30 Mar 2021 12:33:49 -0500
From: Pratyush Yadav <p.yadav@ti.com>
To: Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring
 <robh+dt@kernel.org>, Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul
 <vkoul@kernel.org>, Peter Ujfalusi <peter.ujfalusi@gmail.com>,
 Maxime Ripard <mripard@kernel.org>, Benoit Parrot <bparrot@ti.com>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>,
 Alexandre Courbot <acourbot@chromium.org>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>, Stanimir Varbanov
 <stanimir.varbanov@linaro.org>, Helen Koike <helen.koike@collabora.com>,
 Michael Tretter <m.tretter@pengutronix.de>,
 Peter Chen <peter.chen@nxp.com>, Chunfeng Yun <chunfeng.yun@mediatek.com>,
 <linux-media@vger.kernel.org>, <devicetree@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, <linux-phy@lists.infradead.org>,
 <dmaengine@vger.kernel.org>
CC: Pratyush Yadav <p.yadav@ti.com>, Vignesh Raghavendra <vigneshr@ti.com>,
 Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>
Subject: [PATCH 00/16] CSI2RX support on J721E
Date: Tue, 30 Mar 2021 23:03:32 +0530
Message-ID: <20210330173348.30135-1-p.yadav@ti.com>
X-Mailer: git-send-email 2.30.0
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210330_183406_138673_B66133CB 
X-CRM114-Status: GOOD (  12.24  )
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

This series adds support for CSI2 capture on J721E. It includes some
fixes to the Cadence CSI2RX driver, adds Rx support to Cadence DPHY
driver, and finally adds the TI CSI2RX wrapper driver.

Tested on TI's J721E with OV5640 sensor.

Paul Kocialkowski (1):
  phy: Distinguish between Rx and Tx for MIPI D-PHY with submodes

Pratyush Yadav (15):
  phy: cdns-dphy: Prepare for Rx support
  phy: cdns-dphy: Allow setting mode
  phy: cdns-dphy: Add Rx support
  media: cadence: csi2rx: Add external DPHY support
  media: cadence: csi2rx: Soft reset the streams before starting capture
  media: cadence: csi2rx: Set the STOP bit when stopping a stream
  media: cadence: csi2rx: Fix stream data configuration
  media: cadence: csi2rx: Turn subdev power on before starting stream
  media: cadence: csi2rx: Add wrappers for subdev calls
  dmaengine: ti: k3-psil-j721e: Add entry for CSI2RX
  dt-bindings: media: Add DT bindings for TI CSI2RX driver
  media: ti-vpe: csi2rx: Add CSI2RX support
  dt-bindings: phy: Convert Cadence DPHY binding to YAML
  dt-bindings: phy: cdns,dphy: make clocks optional
  dt-bindings: phy: cdns,dphy: add power-domains property

 .../devicetree/bindings/media/ti,csi2rx.yaml  |  70 ++
 .../devicetree/bindings/phy/cdns,dphy.txt     |  20 -
 .../devicetree/bindings/phy/cdns,dphy.yaml    |  52 +
 MAINTAINERS                                   |   7 +
 drivers/dma/ti/k3-psil-j721e.c                |  10 +
 drivers/media/platform/Kconfig                |  11 +
 drivers/media/platform/cadence/cdns-csi2rx.c  | 269 ++++-
 drivers/media/platform/ti-vpe/Makefile        |   1 +
 drivers/media/platform/ti-vpe/ti-csi2rx.c     | 964 ++++++++++++++++++
 drivers/phy/cadence/cdns-dphy.c               | 407 +++++++-
 include/linux/phy/phy-mipi-dphy.h             |  13 +
 11 files changed, 1754 insertions(+), 70 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/media/ti,csi2rx.yaml
 delete mode 100644 Documentation/devicetree/bindings/phy/cdns,dphy.txt
 create mode 100644 Documentation/devicetree/bindings/phy/cdns,dphy.yaml
 create mode 100644 drivers/media/platform/ti-vpe/ti-csi2rx.c

--
2.30.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
