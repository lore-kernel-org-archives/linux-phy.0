Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 42236C433FE
	for <linux-phy@archiver.kernel.org>; Tue, 23 Nov 2021 08:20:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:CC
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=oku6jI/X2yT0dWxeEVibpgQGyJiHDY9MO/WDPKWyXbs=; b=0dQy4RKGTbrn3u
	7SOirjDgtuWcm7v3A/lSfPc9dIxZT0PFdwe0/3nAe7RdwrMFsdFnPVPK396SS/1z/psISGBpJT9al
	p3ofGYD/Rn57//UdQp0StoSXh/ilJsAFIG8Omuw7f7dN4IKcMTfNGNJlwJQH5lSMq6fghPMN0ScdS
	10wgX3ZWDyPi73HJkNkgJt9nNwQdI8ZKuccabYWUsYDmMehO8MpsdWaHvsH58SyjO/R2MZtGg4saR
	gggn9t80zoDAyKJ2toENOJgRXdu2L5yWuoC9bwBrkwZsjryEAf90SfF5mOZdlIdVRdlcCV8IHPDy6
	QNRURHnprkBYDWUFdLcg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mpR2L-001Fep-DR; Tue, 23 Nov 2021 08:20:21 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mpQvB-001D32-Me
 for linux-phy@lists.infradead.org; Tue, 23 Nov 2021 08:12:59 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 1AN8CofF036460;
 Tue, 23 Nov 2021 02:12:50 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1637655170;
 bh=PhU8+RbRCaEcbY4Y/99QKnNNouSYkie7CFmexJUpGSI=;
 h=From:To:CC:Subject:Date;
 b=ME3pO5yhlh10eYrARjfuVH+AHuSTNWWfkkU1Xo0aixzkNIfFbQ4hFrpx6HUyF3O5p
 eKb3nkoy8Es49Wy7eNVchCZOywXqsWxebM/cBd0DyXKpj4Is5SDvbOMKm4A7UqtdUD
 SoDF04/1u5y1QGZAGWLJS1hDxWmqnlTKF8BZonJQ=
Received: from DFLE105.ent.ti.com (dfle105.ent.ti.com [10.64.6.26])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 1AN8CopR010617
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Tue, 23 Nov 2021 02:12:50 -0600
Received: from DFLE105.ent.ti.com (10.64.6.26) by DFLE105.ent.ti.com
 (10.64.6.26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2308.14; Tue, 23
 Nov 2021 02:12:28 -0600
Received: from lelv0326.itg.ti.com (10.180.67.84) by DFLE105.ent.ti.com
 (10.64.6.26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2308.14 via
 Frontend Transport; Tue, 23 Nov 2021 02:12:28 -0600
Received: from gsaswath-HP-ProBook-640-G5.dal.design.ti.com
 (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 1AN8CNdw101399;
 Tue, 23 Nov 2021 02:12:24 -0600
From: Aswath Govindraju <a-govindraju@ti.com>
To: 
CC: Vignesh Raghavendra <vigneshr@ti.com>, Nishanth Menon <nm@ti.com>, Aswath
 Govindraju <a-govindraju@ti.com>,
 Peter Rosin <peda@axentia.se>, Rob Herring <robh+dt@kernel.org>,
 Wolfgang Grandegger <wg@grandegger.com>, Marc
 Kleine-Budde <mkl@pengutronix.de>,
 Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
 <linux-can@vger.kernel.org>, <linux-phy@lists.infradead.org>
Subject: [PATCH RFC v3 0/4] MUX: Add support for reading enable state from DT
Date: Tue, 23 Nov 2021 13:42:17 +0530
Message-ID: <20211123081222.27979-1-a-govindraju@ti.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211123_001257_877923_F5DC0E2B 
X-CRM114-Status: GOOD (  11.95  )
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

- The following series of patches add support for reading the state of the
  mux to be set for enabling given device.
- As these are RFC patches I have combined them into a single series for
  better understanding of the reason behind making this change.

Changes since v2:
- Fixed changes in phy-can-transceiver based on comments
- added select MULTIPLEXER in drivers/phy/Kconfig
- Changed the implemetation of getting state by adding new apis

Changes since v1:
- Added support for reading the enable state from DT instead of hardcoding
  the state to be set to 1.
- Made relavent changes in the bindings

Link to v2:
- https://patchwork.kernel.org/project/linux-phy/list/?series=583917

Link to v1,
- https://patchwork.kernel.org/project/linux-phy/list/?series=578863&state=*

Aswath Govindraju (4):
  dt-bindings: mux: Increase the number of arguments in mux-controls
  dt-bindings: phy: ti,tcan104x-can: Document mux-controls property
  mux: Add support for reading mux enable state from DT
  phy: phy-can-transceiver: Add support for setting mux

 .../devicetree/bindings/mux/gpio-mux.yaml     |   2 +-
 .../bindings/mux/mux-controller.yaml          |   2 +-
 .../bindings/phy/ti,tcan104x-can.yaml         |   8 +
 drivers/mux/core.c                            | 146 +++++++++++++++++-
 drivers/phy/Kconfig                           |   1 +
 drivers/phy/phy-can-transceiver.c             |  22 +++
 include/linux/mux/consumer.h                  |  19 ++-
 include/linux/mux/driver.h                    |  13 ++
 8 files changed, 206 insertions(+), 7 deletions(-)

-- 
2.17.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
