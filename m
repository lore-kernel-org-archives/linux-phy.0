Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F2F9DC19F2C
	for <linux-phy@archiver.kernel.org>; Tue, 16 Aug 2022 05:59:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:CC
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=+FWEGidQenb9nmmsUD42lT4GcwAo4MCFzu1v7KMahiU=; b=oUHzRSKtd8Kq/l
	ENK4PNkAhpdJIiByv4zspBGyyrqnyg2auJds3TMS32nrKTWa7khh7TethSW9L/cecmlHMoy6ipGCo
	UrF6wLGd6D6/JAK5Qlr3IyipwYeNge+BAqRKj3nEaRvKzm4eGNYAqUxUDp9eJA4FU+ZfYOsbCtUES
	rsmxiGyMVLqbeEytg23B4xqZL5M52WuJ86TfmLbnsfgTwHCfjaxdq8Ui3yy3hQQnvI3oCJkvJYHDI
	bkYrhPudTRI1IjIHmiTkVbuArhA6QGSEl/7Ox3tMiG2wwpIABnyXahxwkzpzvbFZT3MyglAXm+JFa
	tkL+8Z3xSj8Cn+VRI/7A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oNpbV-00CyOo-5d; Tue, 16 Aug 2022 05:59:05 +0000
Received: from lelv0143.ext.ti.com ([198.47.23.248])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oNpbR-00Cy9U-0p
	for linux-phy@lists.infradead.org; Tue, 16 Aug 2022 05:59:02 +0000
Received: from fllv0034.itg.ti.com ([10.64.40.246])
	by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id 27G5wsMh061765;
	Tue, 16 Aug 2022 00:58:54 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1660629534;
	bh=Qshoc3TozitcOBveB/ojj1zsYjU6ve0AOwT34babB/g=;
	h=From:To:CC:Subject:Date;
	b=XlbXD0tuVUoDOsMEGZbcgdl7+50QbsLgG7Bug8eJFP/Dilu/v+94LL4e3hrduYeDY
	 1f1rvuMNhFKarl/LZy9JUEjpiLkLjyIPHmKSgZ7jj0RprqdDnSlXLo/BYpYQGMcrE2
	 vmKEzzL2xOAvIFsNAE6dZig6NSN7osUxogAX6Oy4=
Received: from DLEE103.ent.ti.com (dlee103.ent.ti.com [157.170.170.33])
	by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 27G5wsu3014212
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Tue, 16 Aug 2022 00:58:54 -0500
Received: from DLEE112.ent.ti.com (157.170.170.23) by DLEE103.ent.ti.com
 (157.170.170.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.6; Tue, 16
 Aug 2022 00:58:52 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DLEE112.ent.ti.com
 (157.170.170.23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.6 via
 Frontend Transport; Tue, 16 Aug 2022 00:58:52 -0500
Received: from uda0492258.dhcp.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
	by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 27G5wm3c109354;
	Tue, 16 Aug 2022 00:58:49 -0500
From: Siddharth Vadapalli <s-vadapalli@ti.com>
To: <robh+dt@kernel.org>, <lee.jones@linaro.org>,
        <krzysztof.kozlowski+dt@linaro.org>, <kishon@ti.com>,
        <vkoul@kernel.org>, <dan.carpenter@oracle.com>,
        <grygorii.strashko@ti.com>, <rogerq@kernel.org>
CC: <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        <linux-phy@lists.infradead.org>, <s-vadapalli@ti.com>
Subject: [PATCH v2 0/2] Add support for QSGMII mode
Date: Tue, 16 Aug 2022 11:28:46 +0530
Message-ID: <20220816055848.111482-1-s-vadapalli@ti.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220815_225901_384373_898C2F0E 
X-CRM114-Status: UNSURE (   7.38  )
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

Add compatible for J7200 CPSW5G.

Add support for QSGMII mode in phy-gmii-sel driver for CPSW5G in J7200.

Change log:

v1->v2:
1. Rename ti,enet-ctrl-qsgmii as ti,qsgmii-main-ports.
2. Change ti,qsgmii-main-ports property from bitmask to integer.
3.Update commit message with property name as ti,qsgmii-main-ports.

v1: https://lore.kernel.org/r/20220531111221.22963-1-s-vadapalli@ti.com/

Siddharth Vadapalli (2):
  dt-bindings: phy: ti: phy-gmii-sel: Add bindings for J7200
  phy: ti: gmii-sel: Add support for CPSW5G GMII SEL in J7200

 .../mfd/ti,j721e-system-controller.yaml       |  5 +++
 .../bindings/phy/ti,phy-gmii-sel.yaml         | 27 ++++++++++++-
 drivers/phy/ti/phy-gmii-sel.c                 | 40 +++++++++++++++++--
 3 files changed, 68 insertions(+), 4 deletions(-)

--
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
