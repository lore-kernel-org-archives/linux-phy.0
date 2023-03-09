Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 53EA0C6FD1F
	for <linux-phy@archiver.kernel.org>; Thu,  9 Mar 2023 06:23:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:CC
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=J4w2875t+BgfzyMYhncDXnasdx4Z2jgkMrI8dpJL3cU=; b=EgtjpIsUSvpsDA
	PJQo9NdbvtelQC2HwwHtQ4i6qaLFGh6gqC14XhvtThBHGHiDqNVWuOWEMS+IjdzYiZMzcghnM81sh
	9K8OVsTrGT66KDtLW8cG5tIYLCnsw0fyadGv0Iru0N9it2+Rf4K0umbubuyd+xzw3HR7qZJ+TH/J2
	j7JTkz6E0SI1G+Yv0Mow4Ux6a+OCyTIaP8gYUiVXPPl0zjlJj4l3IkSubb20CpcVS70BmJiuU1oSs
	CYm7VpG8ajGgXiSSoZDtoQdfo9NlAHF67gu+vgBKw+eksc2OKbf7P+wGbRiHD14UcEWPlVYkPS6Ga
	ozsfNp4M9PFu9kSPhrew==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pa9g6-0083zD-PK; Thu, 09 Mar 2023 06:23:02 +0000
Received: from lelv0143.ext.ti.com ([198.47.23.248])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pa9ft-0083uC-95; Thu, 09 Mar 2023 06:22:53 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
	by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id 3296MfrU086170;
	Thu, 9 Mar 2023 00:22:41 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1678342961;
	bh=KNT+wy4RDHbbcn7KtlaJoGk0uuKRypZmes/R0EO1Tig=;
	h=From:To:CC:Subject:Date;
	b=lH43B+H8U9CmZO7o4t1rR2bcptNaQK09e44ygjm7JDTYtIfeTadCCG5spOvvuwxkO
	 /IGzEDioqwjdBBNso6O3fm1oOS74GOXstXfgs507vNumZAYomzMPh1pDBnh6J/1y/2
	 uXtSzT9Bi/AKA3ZXz4gDjP8LkfGzb+obLugXr8DY=
Received: from DLEE106.ent.ti.com (dlee106.ent.ti.com [157.170.170.36])
	by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 3296MfOV004272
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Thu, 9 Mar 2023 00:22:41 -0600
Received: from DLEE100.ent.ti.com (157.170.170.30) by DLEE106.ent.ti.com
 (157.170.170.36) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.16; Thu, 9
 Mar 2023 00:22:41 -0600
Received: from fllv0039.itg.ti.com (10.64.41.19) by DLEE100.ent.ti.com
 (157.170.170.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.16 via
 Frontend Transport; Thu, 9 Mar 2023 00:22:41 -0600
Received: from uda0492258.dhcp.ti.com (ileaxei01-snat2.itg.ti.com [10.180.69.6])
	by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 3296Mca1088683;
	Thu, 9 Mar 2023 00:22:38 -0600
From: Siddharth Vadapalli <s-vadapalli@ti.com>
To: <vkoul@kernel.org>, <kishon@kernel.org>, <rogerq@kernel.org>
CC: <linux-phy@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
        <linux-arm-kernel@lists.infradead.org>, <srk@ti.com>,
        <s-vadapalli@ti.com>
Subject: [PATCH 0/3] PHY-GMII-SEL: Add support for SGMII mode
Date: Thu, 9 Mar 2023 11:52:34 +0530
Message-ID: <20230309062237.389444-1-s-vadapalli@ti.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230308_222249_447111_244EA5A8 
X-CRM114-Status: UNSURE (   7.69  )
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

Siddharth Vadapalli (3):
  phy: ti: phy-gmii-sel: Add support for SGMII mode
  phy: ti: gmii-sel: Enable SGMII mode for J7200
  phy: ti: gmii-sel: Enable SGMII mode for J721E

 drivers/phy/ti/phy-gmii-sel.c | 10 ++++++++--
 1 file changed, 8 insertions(+), 2 deletions(-)

-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
