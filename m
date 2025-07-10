Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B7505C83F19
	for <linux-phy@archiver.kernel.org>; Thu, 10 Jul 2025 02:42:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:CC
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=vOTba3SRe4YhRoXPV2SYoZ2X7847byRGL+v9hTH5i7Y=; b=PsxazGxkFVlEp0
	+v4v6s7cuGGvVOVAqcla24iy7KFrBHtGAzr+CurE3mwaMuYSU4o9BJwqcJ52tdzxSU1VvLMv2DhYy
	vO0hQ/bOAAizhBUyOJyxtPrnj4qTAAoYwDrFXB6nrNoQASuBuYsR2RsQms4Jgk24wSEvOd/PcnkyZ
	P9DydGAIc+/LslHsQUwOxe5uQZdbOw9V/+a7WPUlEWZZr58GbtibZKSOImawZ9LrSOdImvF8CWY80
	f80O/uD86RMcdcocp98cvdn3Fa87QP169ih+0xDva+myYsNUxsnfDKbMslo6iWuV3BSaSUqpdIeS7
	mO6V0LL7l+d4fFKJEJAQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uZhFC-0000000AVlt-100d;
	Thu, 10 Jul 2025 02:42:42 +0000
Received: from smtp-fw-80009.amazon.com ([99.78.197.220])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uZhFA-0000000AVkt-29q8
	for linux-phy@lists.infradead.org;
	Thu, 10 Jul 2025 02:42:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=lab126.com; i=@lab126.com; q=dns/txt; s=amazoncorp2;
  t=1752115360; x=1783651360;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=k/JkFDUEEvCJB0Q7R+nhA1YH1qvEqWEUh6x5/D78kGM=;
  b=LsvMl2OR/6S1AmrR8JCbRkECs3DiqMuZW1g8Tlu3perhk7d56y84U3UQ
   FKLvDDxNZgPZRk3byVH10o7Z5ECLTwtz/1JR3vlI3moCuat29I1cGYzTx
   GWqOG2vna5iTqh9dB1paeRTalJhu069seZjQiEGrKl+L0Uf0LYoHq/TL2
   51LO2s68IqqNwpqW1NMak/xL7Oo8oTQ7dLJAJ/8X8MJTt+R6KMBd+cMmH
   /cECmCcRpF98WWFRjbjYLTAl8Q2xunvBCu04QEBqtmgqK0sPzG9Ca1pJg
   kJ4NpSIVzyaDHZu0JiewGtj+ywpHomW4OXEWNj4blp8UdDa9EpFZZoMnl
   Q==;
X-IronPort-AV: E=Sophos;i="6.16,299,1744070400"; 
   d="scan'208";a="217757191"
Received: from pdx4-co-svc-p1-lb2-vlan2.amazon.com (HELO smtpout.prod.us-west-2.prod.farcaster.email.amazon.dev) ([10.25.36.210])
  by smtp-border-fw-80009.pdx80.corp.amazon.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 10 Jul 2025 02:42:38 +0000
Received: from EX19MTAUWA002.ant.amazon.com [10.0.38.20:2059]
 by smtpin.naws.us-west-2.prod.farcaster.email.amazon.dev [10.0.26.102:2525] with esmtp (Farcaster)
 id 0ba25972-6b97-43c7-be3f-b83544113701; Thu, 10 Jul 2025 02:42:37 +0000 (UTC)
X-Farcaster-Flow-ID: 0ba25972-6b97-43c7-be3f-b83544113701
Received: from EX19D007UWB001.ant.amazon.com (10.13.138.75) by
 EX19MTAUWA002.ant.amazon.com (10.250.64.202) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA) id 15.2.1544.14;
 Thu, 10 Jul 2025 02:42:37 +0000
Received: from u1cb251c9c70150.ant.amazon.com (10.68.99.17) by
 EX19D007UWB001.ant.amazon.com (10.13.138.75) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA) id 15.2.1544.14;
 Thu, 10 Jul 2025 02:42:37 +0000
From: Karthik Poduval <kpoduval@lab126.com>
To: <jyxiong@amazon.com>, <miguel.lopes@synopsys.com>, <anishkmr@amazon.com>,
	<vkoul@kernel.org>, <kishon@kernel.org>, <linux-kernel@vger.kernel.org>,
	<linux-phy@lists.infradead.org>, <robh@kernel.org>, <krzk+dt@kernel.org>,
	<conor+dt@kernel.org>, <devicetree@vger.kernel.org>
CC: Karthik Poduval <kpoduval@lab126.com>
Subject: [PATCH v2 0/2] Synopsys DW DPHY Driver
Date: Wed, 9 Jul 2025 19:42:19 -0700
Message-ID: <cover.1752106239.git.kpoduval@lab126.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-Originating-IP: [10.68.99.17]
X-ClientProxiedBy: EX19D042UWA003.ant.amazon.com (10.13.139.44) To
 EX19D007UWB001.ant.amazon.com (10.13.138.75)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250709_194240_605884_254AA635 
X-CRM114-Status: UNSURE (   6.41  )
X-CRM114-Notice: Please train this message.
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

v2: fix dt_binding_check errors

Karthik Poduval (2):
  phy: dw-dphy-rx: Add Synopsys DesignWare D-PHY RX
  phy: dw-dphy-rx: Add dt bindings for Synopsys MIPI D-PHY RX

 .../bindings/phy/snps,dw-dphy-rx.yaml         |  44 ++
 MAINTAINERS                                   |   7 +
 drivers/phy/Kconfig                           |  11 +
 drivers/phy/Makefile                          |   1 +
 drivers/phy/phy-dw-dphy.c                     | 575 ++++++++++++++++++
 5 files changed, 638 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/phy/snps,dw-dphy-rx.yaml
 create mode 100644 drivers/phy/phy-dw-dphy.c

-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
