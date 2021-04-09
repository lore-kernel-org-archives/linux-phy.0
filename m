Return-Path: <SRS0=s7Ie=JG=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-11.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B237FC43460
	for <linux-phy@archiver.kernel.org>; Fri,  9 Apr 2021 13:41:25 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 6032B610E5
	for <linux-phy@archiver.kernel.org>; Fri,  9 Apr 2021 13:41:23 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 6032B610E5
Authentication-Results: mail.kernel.org; dmarc=fail (p=quarantine dis=none) header.from=ti.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:CC:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=dxgW3ZLQX0RDd9D4pye3KiIHV9fSIuMWSEXfmnv3g5I=; b=UANxzUVst2VFi9Qohl6J8yqxgk
	ZE4Ih9QvsZWR4I7z1C2r/D7kQhUrGUmsnS9SCYd9pvvy90e8s3k0AMVJ8KjGgx7oLmtKR1Ql0vdrl
	mFpcRzMig21q/tdi9fR5Le2YurCfStE8p6gqbqZYrMwry1SujH2BPRu43kzMlS2EKA7WZqO3tNAx0
	V7yK7ivff2FuC1RsJ+IEsFvGwvvn0SEgcn15Af7X93poQ2lQyJQnHJNt7ECUwp3SF/7Bb6WYcso5X
	ThoqM3oPuLPNc2vUhdDJCTChXYEdsQt79T7BAEXcLYekVW/c75qnZVScetwnfQdYBh4wTGKzcqFug
	1DPH0jJg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lUrNx-000qiL-FF; Fri, 09 Apr 2021 13:41:21 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lUrNs-000qgx-S8
 for linux-phy@lists.infradead.org; Fri, 09 Apr 2021 13:41:19 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 139Df4ZH113099;
 Fri, 9 Apr 2021 08:41:04 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1617975664;
 bh=+hrfoKJ5dxbZo5OQLdyaXN4aZTv5QQgu1FvsD/VAlxs=;
 h=From:To:CC:Subject:Date;
 b=XU0/teXZMOTlXq58jED0E/yqtBw6uSrLZCuHTs85bfy2EmkecWtlzjziD4ScbPgx6
 RedcJSsXSH+LzdGuXfxDoHcfEg8+wnZ1SxoD7qm0Dch13kmRCyI+9bWVG/WYI8exK5
 LEFynr5PFjBoFcG5dhfxxrY9fEuzemgKrEt3862E=
Received: from DFLE109.ent.ti.com (dfle109.ent.ti.com [10.64.6.30])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 139Df4Qw074014
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Fri, 9 Apr 2021 08:41:04 -0500
Received: from DFLE107.ent.ti.com (10.64.6.28) by DFLE109.ent.ti.com
 (10.64.6.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2176.2; Fri, 9 Apr
 2021 08:41:04 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DFLE107.ent.ti.com
 (10.64.6.28) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2176.2 via
 Frontend Transport; Fri, 9 Apr 2021 08:41:04 -0500
Received: from gsaswath-HP-ProBook-640-G5.dal.design.ti.com
 (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 139DewmZ029277;
 Fri, 9 Apr 2021 08:40:59 -0500
From: Aswath Govindraju <a-govindraju@ti.com>
To: 
CC: Vignesh Raghavendra <vigneshr@ti.com>, Kishon Vijay Abraham I
 <kishon@ti.com>, Lokesh Vutla <lokeshvutla@ti.com>, Grygorii Strashko
 <grygorii.strashko@ti.com>, Aswath Govindraju <a-govindraju@ti.com>,
 Chandrasekar Ramakrishnan <rcsekar@samsung.com>, Wolfgang Grandegger
 <wg@grandegger.com>, Marc Kleine-Budde <mkl@pengutronix.de>, "David S.
 Miller" <davem@davemloft.net>,
 Jakub Kicinski <kuba@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Vinod Koul <vkoul@kernel.org>, Sriram Dash <sriram.dash@samsung.com>,
 <linux-can@vger.kernel.org>, <netdev@vger.kernel.org>,
 <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
 <linux-phy@lists.infradead.org>
Subject: [PATCH 0/4] CAN TRANSCEIVER: Add support for CAN transceivers
Date: Fri, 9 Apr 2021 19:10:50 +0530
Message-ID: <20210409134056.18740-1-a-govindraju@ti.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210409_144117_203579_4C9E0B11 
X-CRM114-Status: GOOD (  11.98  )
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

The following series of patches add support for CAN transceivers.

TCAN1042 has a standby signal that needs to be pulled high for
sending/receiving messages[1]. TCAN1043 has a enable signal along with
standby signal that needs to be pulled up for sending/receiving
messages[2], and other combinations of the two lines can be used to put the
transceiver in different states to reduce power consumption. On boards
like the AM654-idk and J721e-evm these signals are controlled using gpios.

Patch 1 models the transceiver as a phy device tree node with properties
for max bit rate supported, gpio properties for indicating gpio pin numbers
to which standby and enable signals are connected.

Patch 2 adds a generic driver to support CAN transceivers.

Patches 3 & 4 add support for implementing the transceiver as a phy of
m_can_platform driver.

Aswath Govindraju (2):
  dt-bindings: phy: Add binding for TI TCAN104x CAN transceivers
  phy: phy-can-transceiver: Add support for generic CAN transceiver
    driver

Faiz Abbas (2):
  dt-bindings: net: can: Document transceiver implementation as phy
  can: m_can_platform: Add support for transceiver as phy

 .../bindings/net/can/bosch,m_can.yaml         |   6 +
 .../bindings/phy/ti,tcan104x-can.yaml         |  56 +++++++
 drivers/net/can/m_can/m_can_platform.c        |  25 ++++
 drivers/phy/Kconfig                           |   9 ++
 drivers/phy/Makefile                          |   1 +
 drivers/phy/phy-can-transceiver.c             | 140 ++++++++++++++++++
 6 files changed, 237 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/phy/ti,tcan104x-can.yaml
 create mode 100644 drivers/phy/phy-can-transceiver.c

-- 
2.17.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
