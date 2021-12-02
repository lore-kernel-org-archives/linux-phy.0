Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D5285C433FE
	for <linux-phy@archiver.kernel.org>; Thu,  2 Dec 2021 13:10:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:CC
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ZnmS8SYy21ap8tuNXMwbUcjOtcLTUHH4vnniBn8RVfY=; b=HUlg5AwBIq7MHS
	FEY+DTuAy6lDyseM8EEdE2R9/ehMP5tGiXfqw5KfXC+xPOY5L45BLrqT1JrrjztpStPIHYY2SQ5LD
	/s49SYpo04dbepHJPcDKn1aw6iBrhbsKbtQUhBhcIl62/4wa9nPXp+eNe5CX7AaKS6wWYLxs7JNas
	ZXfguD3a5R8+YFKz6w9EtWRb6rXfKRPi5XwQ2FdLbqdD7DsRQgOFNjYoKYJJKlkLro18gCIh+7Dox
	Uht+rYyi2tSNAc0hkOZJXxo2IiGiHSaC0zwgv8OJv0AYlcACTDlvfmF4lSe4Hubm2kwZqF4VaNvJD
	IDjeWcsTmdBrvnUmmSfQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mslqy-00CQKS-AL; Thu, 02 Dec 2021 13:10:24 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mslqu-00CQHq-TI
 for linux-phy@lists.infradead.org; Thu, 02 Dec 2021 13:10:22 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 1B2DA8Vk024561;
 Thu, 2 Dec 2021 07:10:08 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1638450608;
 bh=f6sAaoaJOz1208IHW4aLleeoCN8L+qtJVwhz1Pk2fiI=;
 h=From:To:CC:Subject:Date;
 b=dPTEQfPSVyldlt8CiVQrKdzQhIUT5oy9IzFVh3eZR7WPVGxk7AtxLib4/+cL+Z+cO
 wWnYvbzm+X9cJPv31TpyB6Mr2KsFJeJf1mptiZHjogSvwwh27nm+OflxOPg+GjQ7he
 SEgzAMnxipzqGcGM0wrTMc97IZgfW1VqD8KrQ6Tw=
Received: from DFLE103.ent.ti.com (dfle103.ent.ti.com [10.64.6.24])
 by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 1B2DA8gt110535
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Thu, 2 Dec 2021 07:10:08 -0600
Received: from DFLE100.ent.ti.com (10.64.6.21) by DFLE103.ent.ti.com
 (10.64.6.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2308.14; Thu, 2
 Dec 2021 07:10:08 -0600
Received: from lelv0327.itg.ti.com (10.180.67.183) by DFLE100.ent.ti.com
 (10.64.6.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2308.14 via
 Frontend Transport; Thu, 2 Dec 2021 07:10:08 -0600
Received: from gsaswath-HP-ProBook-640-G5.dal.design.ti.com
 (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id 1B2DA4Ki031324;
 Thu, 2 Dec 2021 07:10:05 -0600
From: Aswath Govindraju <a-govindraju@ti.com>
To: 
CC: Aswath Govindraju <a-govindraju@ti.com>, Wolfgang Grandegger
 <wg@grandegger.com>, Marc Kleine-Budde <mkl@pengutronix.de>, Kishon Vijay
 Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>, Rob Herring
 <robh+dt@kernel.org>, <linux-can@vger.kernel.org>,
 <linux-phy@lists.infradead.org>, <devicetree@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>
Subject: [PATCH 0/2] CAN: Add support for setting mux
Date: Thu, 2 Dec 2021 18:40:00 +0530
Message-ID: <20211202131002.12217-1-a-govindraju@ti.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211202_051021_014991_61A01E2A 
X-CRM114-Status: UNSURE (   8.46  )
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

The following series of patches add support for setting
muxes to route signals from CAN controller to transceiver
by reading the property mux-states from the device tree
node

The following series of patches are dependent on,
- https://lkml.org/lkml/2021/12/2/423

Aswath Govindraju (2):
  dt-bindings: phy: ti,tcan104x-can: Document mux-states property
  phy: phy-can-transceiver: Add support for setting mux

 .../bindings/phy/ti,tcan104x-can.yaml         | 13 +++++++++++
 drivers/phy/Kconfig                           |  1 +
 drivers/phy/phy-can-transceiver.c             | 22 +++++++++++++++++++
 3 files changed, 36 insertions(+)

-- 
2.17.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
