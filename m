Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3B733C76196
	for <linux-phy@archiver.kernel.org>; Fri, 31 Mar 2023 06:25:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:CC
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=gj6nQAnrNxCvbMVnrcUpdfBb8hAZDaFqfjz+ErmC+5o=; b=NPNLA4uQP6YIum
	7pHq/gojJ1+JbhecsXMbv3nRUSL8JgKMJEeEdLSGT6a8tMXSkkSKJDCSkJUwbYIIjzswL3a8TXF9o
	FtSNRTktbTXo8jSatq3D6sadwW1RMvMylnl+JABDBd8hIdxycib94VKOBGcCslcagMl4/j+OzVmk2
	cTHjlg9cA8ymeOCeGhaoDpNeZPoVh7d6QYXrkV7ppiIDkB4c264Zyax1XN0Hg7evUcGXSphDaVwR7
	jAS6RhkbpXDqj61+Jb//323rnxcu8lqSe1y+cUjZ1p4X/VCJUUvuRTD/GnlbvUfs9MzSRcHKBS/re
	RH7VjK6WifKethqgGZqg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pi8Cn-00608s-2Q;
	Fri, 31 Mar 2023 06:25:45 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pi8Ce-00606A-2h;
	Fri, 31 Mar 2023 06:25:38 +0000
Received: from fllv0034.itg.ti.com ([10.64.40.246])
	by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 32V6POpY019731;
	Fri, 31 Mar 2023 01:25:24 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1680243924;
	bh=Ih2APHCMmMtKMPtRxTR0bLiEUuVP6ePuzNO3rxO44Qo=;
	h=From:To:CC:Subject:Date;
	b=JSokDDWSezQ5sfuB1bRK/3JxvrXfxZeqCt1XCmIAWkziy4n1tyV87cruHg9lQN1H6
	 HgmkaK0WBR6X5MAk4D8+eAFWl1keyn+ILU6Y36s20BYlnoEnPZ2nCaqB/bvbOOqsPa
	 o31Bd1PoW0jIwxKgR522vRYJUATFMVvXJb6HFkJw=
Received: from DLEE102.ent.ti.com (dlee102.ent.ti.com [157.170.170.32])
	by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 32V6POW7074156
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Fri, 31 Mar 2023 01:25:24 -0500
Received: from DLEE103.ent.ti.com (157.170.170.33) by DLEE102.ent.ti.com
 (157.170.170.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.16; Fri, 31
 Mar 2023 01:25:24 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DLEE103.ent.ti.com
 (157.170.170.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.16 via
 Frontend Transport; Fri, 31 Mar 2023 01:25:24 -0500
Received: from uda0492258.dhcp.ti.com (ileaxei01-snat2.itg.ti.com [10.180.69.6])
	by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 32V6PLv9027504;
	Fri, 31 Mar 2023 01:25:22 -0500
From: Siddharth Vadapalli <s-vadapalli@ti.com>
To: <vkoul@kernel.org>, <kishon@kernel.org>, <rogerq@kernel.org>
CC: <linux-phy@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
        <linux-arm-kernel@lists.infradead.org>, <srk@ti.com>,
        <s-vadapalli@ti.com>
Subject: [PATCH 0/2] PHY-GMII-SEL: Add support for J784S4 SoC
Date: Fri, 31 Mar 2023 11:55:19 +0530
Message-ID: <20230331062521.529005-1-s-vadapalli@ti.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230330_232536_994247_1D5A572E 
X-CRM114-Status: UNSURE (   9.86  )
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

Hello,

This series TI's J784S4 SoC. A new compatible is added for the J784S4 SoC,
with QSGMII mode enabled. Also, the CPSW9G instance of J784S4 SoC supports
USXGMII mode. Thus, add support to configure USXGMII mode.

Note:
This series is based on top of the following series:
https://lore.kernel.org/r/20230309063514.398705-1-s-vadapalli@ti.com/

The patch corresponding to the device-tree bindings for the compatible
"ti,j784s4-cpsw9g-phy-gmii-sel" is posted at:
https://lore.kernel.org/r/20230315092408.1722114-1-s-vadapalli@ti.com
Since the above patch has received an Acked-by from Krzysztof Kozlowski,
I am posting this series using the compatible.

Regards,
Siddharth.

Siddharth Vadapalli (2):
  phy: ti: gmii-sel: Add support for CPSW9G GMII SEL in J784S4
  phy: ti: gmii-sel: Enable USXGMII mode for J784S4

 drivers/phy/ti/phy-gmii-sel.c | 22 ++++++++++++++++++++++
 1 file changed, 22 insertions(+)

-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
