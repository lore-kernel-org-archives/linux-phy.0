Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 16A8EC61DA4
	for <linux-phy@archiver.kernel.org>; Thu,  9 Mar 2023 06:35:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:CC
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=stA+tU2sRT4eX7WjjuGDskDMmFutjhVyaKxY8pU/c+U=; b=bI2yOKQYH1uVyK
	guQIeay/gZwfGZL0zZ6EsWch5fQ4UBWyElbq3FrJoYwUhdziWqmufWrSbZS95J40M61QDoNfo9NG4
	rAqS31B7yPrc0xErYEwG2iLVuFXWjL7ReVETPp6yhzR3MLzlWFPdqsRafuNSlMFUgPzZ+NHsE+9iW
	TmVOBJpxYLVR6HZQWykU1DYcjxgHsW3R05lb0o++oqLSPUwaNi9jeRfHBgw6NJaZpUCC3fEdKs1s5
	1nhf0Fajc+3c5GroNdkB1N9CbbGxci/M0YNdJQTvpB3wZ07/ihgyjLiCANIUO+jjYopT+7XAR8lCc
	roPQiMALfhs5hbPRuVPA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pa9sB-0087Bf-Ck; Thu, 09 Mar 2023 06:35:31 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pa9s1-00878y-HK; Thu, 09 Mar 2023 06:35:23 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
	by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 3296ZIeA062413;
	Thu, 9 Mar 2023 00:35:18 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1678343718;
	bh=pTS0Z0bVGXfBwfRdmj4/b8pbbzCAzCerv52GJM2QR3w=;
	h=From:To:CC:Subject:Date;
	b=RfGmRZLx+5l8TjqiVXEKYM1cO53y7V8+IrahTrNsP0rP3VTHSmULkmx24QdFNdm6u
	 aReePi1NNu8THXaE4b1HPf3Q2xrRPCJ9nzuZ5iYZuyVke9rWCVWteXdi4K4MilXmAn
	 DXtC8srbhsvfvhjdafvW/wHR0hg/JwIYFX9DISuQ=
Received: from DFLE109.ent.ti.com (dfle109.ent.ti.com [10.64.6.30])
	by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 3296ZIgI110758
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Thu, 9 Mar 2023 00:35:18 -0600
Received: from DFLE113.ent.ti.com (10.64.6.34) by DFLE109.ent.ti.com
 (10.64.6.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.16; Thu, 9
 Mar 2023 00:35:17 -0600
Received: from fllv0039.itg.ti.com (10.64.41.19) by DFLE113.ent.ti.com
 (10.64.6.34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.16 via
 Frontend Transport; Thu, 9 Mar 2023 00:35:18 -0600
Received: from uda0492258.dhcp.ti.com (ileaxei01-snat.itg.ti.com [10.180.69.5])
	by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 3296ZEQn099087;
	Thu, 9 Mar 2023 00:35:15 -0600
From: Siddharth Vadapalli <s-vadapalli@ti.com>
To: <vkoul@kernel.org>, <kishon@kernel.org>, <rogerq@kernel.org>
CC: <linux-phy@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
        <linux-arm-kernel@lists.infradead.org>, <srk@ti.com>,
        <s-vadapalli@ti.com>
Subject: [PATCH v2 0/3] PHY-GMII-SEL: Add support for SGMII mode
Date: Thu, 9 Mar 2023 12:05:11 +0530
Message-ID: <20230309063514.398705-1-s-vadapalli@ti.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230308_223521_675872_1B6F84C7 
X-CRM114-Status: UNSURE (   7.82  )
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

This series adds support to configure the CPSW MAC's PHY in SGMII mode.
Also, SGMII mode is enabled for TI's J7200 and J721E SoCs.

Changes from v1:
1. Add "break" statement within "case PHY_INTERFACE_MODE_SGMII".
2. Add newline before "default" case.
3. Update commit message of patch 1/3 to follow the existing convention.

v1:
https://lore.kernel.org/r/20230309062237.389444-1-s-vadapalli@ti.com/

Siddharth Vadapalli (3):
  phy: ti: gmii-sel: Add support for SGMII mode
  phy: ti: gmii-sel: Enable SGMII mode for J7200
  phy: ti: gmii-sel: Enable SGMII mode for J721E

 drivers/phy/ti/phy-gmii-sel.c | 12 ++++++++++--
 1 file changed, 10 insertions(+), 2 deletions(-)

-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
