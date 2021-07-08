Return-Path: <SRS0=EZuF=MA=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT
	autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 30242C07E96
	for <linux-phy@archiver.kernel.org>; Thu,  8 Jul 2021 11:26:10 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id BFC4C61464
	for <linux-phy@archiver.kernel.org>; Thu,  8 Jul 2021 11:26:09 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org BFC4C61464
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=marvell.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:CC
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=+7uH8Rx+hdgBP3Jdg+MV1Bvy+mXov5eHbDwrBegNIC0=; b=e1PshlLyjygtXh
	enTfcF+adIJ069e5DK5d6iZXaZIyo+7Mykp42hc10fC25UBXMz6H3J9Y6CDY7uJjvIq0dOlL9Bl9t
	g+9BVE1M/MhJqoPmeIqUkha0ij8PPopMuvZyrYy3lp5hNpSzks1DOTascwe2CkEm77wsLOhcQoqaB
	jw2XZkkETOJgy/DJkiZ+ZdPNror3xdg1mISXMkls9AWUcl2K3JfFZ9MtKcbPzDnfIGWEOFekzGZZy
	O2r+rwX7buYrwxjKRfJDKeW8SWO8tK4Y3B5CdTa3fFIjCTU4EU48xE5c339juEHbvsm/apV4aUheD
	ZtOAwWtNdJyqMRPRsk8A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m1SAT-00Gh4s-7T; Thu, 08 Jul 2021 11:26:09 +0000
Received: from mx0a-0016f401.pphosted.com ([67.231.148.174]
 helo=mx0b-0016f401.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m1SAF-00Gh1D-T2; Thu, 08 Jul 2021 11:25:57 +0000
Received: from pps.filterd (m0045849.ppops.net [127.0.0.1])
 by mx0a-0016f401.pphosted.com (8.16.0.43/8.16.0.43) with SMTP id
 168BLcBO004916; Thu, 8 Jul 2021 04:25:49 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=marvell.com;
 h=from : to : cc :
 subject : date : message-id : mime-version : content-type :
 content-transfer-encoding; s=pfpt0220;
 bh=GeNAMu0kd78iMzrl8zmafTGHE7bfc5UGTdnB58XifAs=;
 b=Ej1b8LsO452aiVWRDt4epTan4Z4y1wb+ZkeeNwEzbblEHOTomJLGHi8UEUfKAhb2yOHq
 n/BHn09p5zDOZQhVSeaOepQQzOhVrPd9fCQETwnYn31gFMoRLvQSs7hdTzEp1ZgWHcvB
 e4N7SYS4Amyx3xLMfxim1heHhlm8r9P/6Y8EgR2cm1SK9/XBXqL1Qbee/LJrdm1ugvMq
 CU9fGiDjIYf+ecW2Fp1yOnv3EppByoS83hCh402tton9vpPiVDrrsmtKHslVYCicgP1N
 h2VgHTwTY7E3RUl08yePMd4kMHPQKteHkbGvMGH6DWnsh0bNyrInciumGs9U9C/M3TpD 4w== 
Received: from dc5-exch02.marvell.com ([199.233.59.182])
 by mx0a-0016f401.pphosted.com with ESMTP id 39nrnu1pax-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=NOT);
 Thu, 08 Jul 2021 04:25:49 -0700
Received: from DC5-EXCH02.marvell.com (10.69.176.39) by DC5-EXCH02.marvell.com
 (10.69.176.39) with Microsoft SMTP Server (TLS) id 15.0.1497.18;
 Thu, 8 Jul 2021 04:25:47 -0700
Received: from maili.marvell.com (10.69.176.80) by DC5-EXCH02.marvell.com
 (10.69.176.39) with Microsoft SMTP Server id 15.0.1497.18 via Frontend
 Transport; Thu, 8 Jul 2021 04:25:47 -0700
Received: from octopus.marvell.com (octopus.marvell.com [10.5.24.3])
 by maili.marvell.com (Postfix) with ESMTP id 8DE0D3F7064;
 Thu,  8 Jul 2021 04:25:43 -0700 (PDT)
From: <kostap@marvell.com>
To: <miquel.raynal@bootlin.com>, <kishon@ti.com>, <vkoul@kernel.org>,
 <robh+dt@kernel.org>, <andrew@lunn.ch>, <gregory.clement@bootlin.com>,
 <sebastian.hesselbarth@gmail.com>, <vladimir.vid@sartura.hr>,
 <luka.kovacic@sartura.hr>, <linux-phy@lists.infradead.org>,
 <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
 <linux-arm-kernel@lists.infradead.org>
CC: <mw@semihalf.com>, <jaz@semihalf.com>, <nadavh@marvell.com>,
 <stefanc@marvell.com>, <bpeled@marvell.com>, Konstantin Porotchkin
 <kostap@marvell.com>
Subject: [PATCH v6 0/5] DTS updates for Marvell Armada CN913x platforms
Date: Thu, 8 Jul 2021 14:25:23 +0300
Message-ID: <20210708112528.3254-1-kostap@marvell.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-Proofpoint-ORIG-GUID: xOBEOZrK8z6wqLm2RPV_KTJzdRMXEBDq
X-Proofpoint-GUID: xOBEOZrK8z6wqLm2RPV_KTJzdRMXEBDq
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.391, 18.0.790
 definitions=2021-07-08_06:2021-07-08,
 2021-07-08 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210708_042555_989886_399B2D62 
X-CRM114-Status: GOOD (  17.61  )
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

From: Konstantin Porotchkin <kostap@marvell.com>

This patch series contains the following changes/fixes:
1. Add support for Armada CN913x Development Board topology "B"
2. Add support for Armada CN913x Reference Design boards (CRB)
3. Fixes the CP11X references in PHY binding document
4. Fixes the NAND paritioninig scheme in DTS eliminating gap between
consecutive partitions
All above changes are already intergated into Marvell official SDK sources

v2:
- extract common nodes from DB boards to separate DTSI files
- disable eth2 on CRB boards until the required phy mode support is added
- mention the switch part ID in CRB board description

v3:
- do not rename setup A DTS files for DB variants
- fix a couple of wrong include names

v4:
- Rebase on top of Linus master branch (v5.11-rc7)
- Remove HS400 timing from CRB AP SDHCI (not supported by connected eMMC)
- Add cd-gpio entry to CP0 SDHCI for SD card support
- Add a comment to CN9130-CRB patch about the required defconfig
  changes for supporting the onboard i2c expander
- Add Stefan's patch to enable 10G port on CN9130-DB platforms

v5:
- Extend enablement of 10G port to CN9131-DB platform

v6:
- Rebased on top of 5.13-rc, merging UTMI settings
  (requested by Gregory Clement)

Grzegorz Jaszczyk (1):
  Documentation/bindings: phy: update references to cp11x

Konstantin Porotchkin (3):
  arch/arm64/boot/dts/marvell: fix NAND partitioning scheme
  arm64: dts: cn913x: add device trees for topology B boards
  arm64: dts: add support for Marvell cn9130-crb platform

Stefan Chulski (1):
  dts: marvell: Enable 10G interfaces on 9130-DB and 9131-DB boards

 .../bindings/phy/phy-mvebu-comphy.txt         |  12 +-
 arch/arm64/boot/dts/marvell/Makefile          |   5 +
 arch/arm64/boot/dts/marvell/cn9130-crb-A.dts  |  38 ++
 arch/arm64/boot/dts/marvell/cn9130-crb-B.dts  |  46 ++
 arch/arm64/boot/dts/marvell/cn9130-crb.dtsi   | 222 ++++++++++
 arch/arm64/boot/dts/marvell/cn9130-db-B.dts   |  22 +
 arch/arm64/boot/dts/marvell/cn9130-db.dts     | 403 +----------------
 arch/arm64/boot/dts/marvell/cn9130-db.dtsi    | 410 ++++++++++++++++++
 arch/arm64/boot/dts/marvell/cn9131-db-B.dts   |  22 +
 arch/arm64/boot/dts/marvell/cn9131-db.dts     | 197 +--------
 arch/arm64/boot/dts/marvell/cn9131-db.dtsi    | 206 +++++++++
 arch/arm64/boot/dts/marvell/cn9132-db-B.dts   |  22 +
 arch/arm64/boot/dts/marvell/cn9132-db.dts     | 218 +---------
 arch/arm64/boot/dts/marvell/cn9132-db.dtsi    | 227 ++++++++++
 14 files changed, 1244 insertions(+), 806 deletions(-)
 create mode 100644 arch/arm64/boot/dts/marvell/cn9130-crb-A.dts
 create mode 100644 arch/arm64/boot/dts/marvell/cn9130-crb-B.dts
 create mode 100644 arch/arm64/boot/dts/marvell/cn9130-crb.dtsi
 create mode 100644 arch/arm64/boot/dts/marvell/cn9130-db-B.dts
 create mode 100644 arch/arm64/boot/dts/marvell/cn9130-db.dtsi
 create mode 100644 arch/arm64/boot/dts/marvell/cn9131-db-B.dts
 create mode 100644 arch/arm64/boot/dts/marvell/cn9131-db.dtsi
 create mode 100644 arch/arm64/boot/dts/marvell/cn9132-db-B.dts
 create mode 100644 arch/arm64/boot/dts/marvell/cn9132-db.dtsi

-- 
2.17.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
