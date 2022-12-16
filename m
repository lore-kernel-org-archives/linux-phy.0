Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7EC7DC4332F
	for <linux-phy@archiver.kernel.org>; Fri, 16 Dec 2022 14:37:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:CC
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=5oCC8NfJSu90siudZpDpWltw0uh92ysFxts+PoF8+3Y=; b=Eomo40tgDS8ygE
	9CEGaEsbCacFEleThHEijGHGGLnwTmrEVcU/ZtFgedZMHE0eKl8O3xgdyxxMg+91xACPhlsNJUmmf
	8T6OKwe4Q1l9VwcspyLAAIWMnF9VI86QO3AXaPISKt8JOaqLlKQaqDMnV4GWZPUtyJ8fLPmzauCSf
	QP1Gpy4bUPnflLawj3bgkC2hN/gZNnC0ZRlk/XxV+3QGFk/rqt2XYy94fGBBWhQZa9+uCRGrPr9/0
	6sV/oEFFY7TJLRAJbkHVYvwYGcQcboyDByc5Vkxys7KCP5APnygarRHUS2r4HdMt7QTBeatmcAMTW
	6EjTM6IMJX4CiwMbN52w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p6BqL-00FikT-6M; Fri, 16 Dec 2022 14:37:45 +0000
Received: from esa.microchip.iphmx.com ([68.232.154.123])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p6BqC-00FiYo-6q
	for linux-phy@lists.infradead.org; Fri, 16 Dec 2022 14:37:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
  t=1671201456; x=1702737456;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=wMHFw5uiriRq1CxOroTGwEkfbMo+ViwT/l1yTeHdqjE=;
  b=YTROziW0JSBl42Ssrm0sFt3RJ7MYdVVIxyxVf9K1neHK782kuVI51yzz
   rso+DUSfDmcU1OvfdknKjRD+z5si5dbXa2lCMWpq/YBdleaAC/BFiMwsR
   a4qrVxtcEBt+PG5MFl4kh91tQdec1ziPMWQNbFpZhxTcYBt/a4BxsdMWS
   J4bfpY/hKeyEMK6esMPupS5GCyRTaphP2mIY3idT8bUgJmHC83LURo46a
   o9YAtKOVRnaGoW866T+XcVKIYFvAkWKSIHFEAgCMWRApJrD2yYYBK8TCB
   j0na2uxH1njZcoWl29JMKLfzUtkr6ty7rooP6MITUDN+aJVbdHf/pVb2e
   A==;
X-IronPort-AV: E=Sophos;i="5.96,249,1665471600"; 
   d="scan'208";a="128506510"
Received: from unknown (HELO email.microchip.com) ([170.129.1.10])
  by esa6.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256; 16 Dec 2022 07:37:27 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Fri, 16 Dec 2022 07:37:24 -0700
Received: from ROB-ULT-M18282.microchip.com (10.10.115.15) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server id
 15.1.2507.16 via Frontend Transport; Fri, 16 Dec 2022 07:37:22 -0700
From: Eugen Hristev <eugen.hristev@microchip.com>
To: <linux-media@vger.kernel.org>
CC: <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
	<linux-phy@lists.infradead.org>, <luis.oliveira@synopsys.com>, Eugen Hristev
	<eugen.hristev@microchip.com>
Subject: [PATCH v5 0/4] media: dwc: add csi2host driver
Date: Fri, 16 Dec 2022 16:37:13 +0200
Message-ID: <20221216143717.1002015-1-eugen.hristev@microchip.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221216_063736_463516_E68FBC64 
X-CRM114-Status: GOOD (  13.40  )
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

This is a respin of this abandoned series of patches here:
https://lore.kernel.org/lkml/1560280855-18085-1-git-send-email-luis.oliveira@synopsys.com/

I have been using this driver for the past few years, and I have reworked
much of it to cope with latest kernel changes.
The series is surely not perfect, and there is still plenty of room for
improvement.
I did not implement all the required changes from v4.
I fixed several bugs in the driver, and implemented few things that were
needed to run in our system (required clocks, etc.)
The CSI2HOST block is present in at91 product named sama7g5 , and we have been
testing it with the sama7g5 Evaluation Kit board.

I do not think I will have the time to implement further changes to this driver.
I am sharing this with the community to try to help others, and maybe
someone will pick up this work and continue the upstreaming process.

One of the big reworks is the binding document which I converted to yaml
and added the properties that were needed in our product.
The PHY binding is still in txt format as originally sent by Luis.
Since I reworked most of the binding, I added myself as author to it.
The rest of the driver keeps Luis as author and I added myself as
Co-developer on the driver which I mostly improved. The commit log
will contain information about everything that I have added to it.

P.S. I have not kept the history change log. Sorry

Eugen


Eugen Hristev (1):
  dt-bindings: media: Document bindings for DW MIPI CSI-2 Host

Luis Oliveira (3):
  dt-bindings: phy: Document the Synopsys MIPI DPHY Rx bindings
  media: platform: dwc: Add MIPI CSI-2 controller driver
  media: platform: dwc: Add DW MIPI DPHY Rx driver

 .../bindings/media/snps,dw-csi.yaml           | 149 ++++
 .../bindings/phy/snps,dw-dphy-rx.txt          |  29 +
 MAINTAINERS                                   |  11 +
 drivers/media/platform/Kconfig                |   1 +
 drivers/media/platform/Makefile               |   1 +
 drivers/media/platform/dwc/Kconfig            |  41 ++
 drivers/media/platform/dwc/Makefile           |  15 +
 drivers/media/platform/dwc/dw-csi-plat.c      | 667 ++++++++++++++++++
 drivers/media/platform/dwc/dw-csi-plat.h      | 102 +++
 drivers/media/platform/dwc/dw-csi-sysfs.c     | 623 ++++++++++++++++
 drivers/media/platform/dwc/dw-dphy-plat.c     | 224 ++++++
 drivers/media/platform/dwc/dw-dphy-rx.c       | 625 ++++++++++++++++
 drivers/media/platform/dwc/dw-dphy-rx.h       | 212 ++++++
 drivers/media/platform/dwc/dw-dphy-sysfs.c    | 232 ++++++
 drivers/media/platform/dwc/dw-mipi-csi.c      | 570 +++++++++++++++
 drivers/media/platform/dwc/dw-mipi-csi.h      | 294 ++++++++
 include/media/dwc/dw-csi-data.h               |  26 +
 include/media/dwc/dw-dphy-data.h              |  32 +
 include/media/dwc/dw-mipi-csi-pltfrm.h        | 104 +++
 19 files changed, 3958 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/media/snps,dw-csi.yaml
 create mode 100644 Documentation/devicetree/bindings/phy/snps,dw-dphy-rx.txt
 create mode 100644 drivers/media/platform/dwc/Kconfig
 create mode 100644 drivers/media/platform/dwc/Makefile
 create mode 100644 drivers/media/platform/dwc/dw-csi-plat.c
 create mode 100644 drivers/media/platform/dwc/dw-csi-plat.h
 create mode 100644 drivers/media/platform/dwc/dw-csi-sysfs.c
 create mode 100644 drivers/media/platform/dwc/dw-dphy-plat.c
 create mode 100644 drivers/media/platform/dwc/dw-dphy-rx.c
 create mode 100644 drivers/media/platform/dwc/dw-dphy-rx.h
 create mode 100644 drivers/media/platform/dwc/dw-dphy-sysfs.c
 create mode 100644 drivers/media/platform/dwc/dw-mipi-csi.c
 create mode 100644 drivers/media/platform/dwc/dw-mipi-csi.h
 create mode 100644 include/media/dwc/dw-csi-data.h
 create mode 100644 include/media/dwc/dw-dphy-data.h
 create mode 100644 include/media/dwc/dw-mipi-csi-pltfrm.h

-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
