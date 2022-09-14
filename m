Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 30276ECAAD3
	for <linux-phy@archiver.kernel.org>; Wed, 14 Sep 2022 09:44:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:CC
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=rQuwNfstJdM/xvd6CmIsCU/2DkxGdaOAk7y7/NGS2kc=; b=Ijmpy9T63Yz1vy
	nKc0VhZnIhCbcyRv/Kwr/sB3G/VVn1lRJM+shQpwgiF791nmoMmiLdNyOvDgRCBl6clh7W+r/RCZS
	QXhpAd9gy+Baf9MTlYO01TsPj1aqEOMcGPhhCaxSZNsitvIO6kdKOEdAWU4EddJnTGGSQgJy8N5oq
	EcMzN4Rkz0RTja3AMUCxWSpfsTylIQim+Beark7R8RWUmRUPPi6ttjhVHv+mrNasUGjdJ5+Cpq9yr
	EJbn9NoyyFK1beUlTW3epkyyvOa6yzJFHt1pP8N20PG+2XSKLGPb9xi8wuTykwM2v2ZQHElcYw/jE
	tC+pZOtiT9l7jziFYjpw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oYOw9-00EQHz-5J; Wed, 14 Sep 2022 09:44:05 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oYOre-00EMhE-QA; Wed, 14 Sep 2022 09:39:28 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
	by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 28E9dHpr113504;
	Wed, 14 Sep 2022 04:39:17 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1663148357;
	bh=tz0esUiBw+fs/fGqdL2ageAlRbnOyx30aKyyFKerigw=;
	h=From:To:CC:Subject:Date;
	b=xifIzj383SPv5SEpIQjUCw2N57wL2PO3BGe20ygtDWWG84GNUNeU05TdKGHkYOs4m
	 V41PjNlJxbuP0h5QA4Gowr3t4QjQJYD2u5U2e0i7r9ggSLakRCr2pZjSQun7wkwcXo
	 4fMsrLC+c6OSJNZ6NeArkub1i9QowlExZu++qY9g=
Received: from DFLE114.ent.ti.com (dfle114.ent.ti.com [10.64.6.35])
	by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 28E9dGVV119160
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Wed, 14 Sep 2022 04:39:16 -0500
Received: from DFLE109.ent.ti.com (10.64.6.30) by DFLE114.ent.ti.com
 (10.64.6.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.6; Wed, 14
 Sep 2022 04:39:16 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DFLE109.ent.ti.com
 (10.64.6.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.6 via
 Frontend Transport; Wed, 14 Sep 2022 04:39:16 -0500
Received: from uda0492258.dhcp.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
	by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 28E9dBHD111966;
	Wed, 14 Sep 2022 04:39:12 -0500
From: Siddharth Vadapalli <s-vadapalli@ti.com>
To: <robh+dt@kernel.org>, <lee.jones@linaro.org>,
        <krzysztof.kozlowski@linaro.org>, <krzysztof.kozlowski+dt@linaro.org>,
        <kishon@ti.com>, <vkoul@kernel.org>, <dan.carpenter@oracle.com>,
        <grygorii.strashko@ti.com>, <rogerq@kernel.org>
CC: <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        <linux-phy@lists.infradead.org>,
        <linux-arm-kernel@lists.infradead.org>, <sjakhade@cadence.com>,
        <s-vadapalli@ti.com>
Subject: [PATCH 0/6] Add support for J721e CPSW9G and SGMII mode
Date: Wed, 14 Sep 2022 15:09:05 +0530
Message-ID: <20220914093911.187764-1-s-vadapalli@ti.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220914_023927_040160_98035286 
X-CRM114-Status: UNSURE (   8.05  )
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

Add compatible for J721e CPSW9G.

Add support for SGMII mode in phy-gmii-sel driver for CPSW5G of J7200 and
CPSW9G of J721e.

Add SGMII support in phy-j721e-wiz driver for J721E_WIZ_16G.

Add support for PCIe + SGMII multilink configuration in phy-cadence-sierra
driver.

Siddharth Vadapalli (5):
  dt-bindings: phy: ti: phy-gmii-sel: Add bindings for J721e
  phy: ti: gmii-sel: Add support for configuring CPSW5G ports in SGMII
    mode
  phy: ti: gmii-sel: Add support for CPSW9G GMII SEL in J721e
  phy: ti: gmii-sel: Enable SGMII mode configuration for J721E
  phy: ti: phy-j721e-wiz: Add SGMII support in wiz driver for J721E

Swapnil Jakhade (1):
  phy: cadence: Sierra: Add PCIe + SGMII PHY multilink configuration

 .../bindings/phy/ti,phy-gmii-sel.yaml         |  52 ++++++-
 drivers/phy/cadence/phy-cadence-sierra.c      | 141 +++++++++++++++++-
 drivers/phy/ti/phy-gmii-sel.c                 |  57 +++++--
 drivers/phy/ti/phy-j721e-wiz.c                |   1 +
 4 files changed, 232 insertions(+), 19 deletions(-)

-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
