Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 29607C433EF
	for <linux-phy@archiver.kernel.org>; Tue, 14 Dec 2021 14:29:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:CC
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=QjCbBfuBjoSgC8y4O4JpnIDYVYom9gl40g/y94Usp48=; b=BsiRHqstvxinM/
	J3pAzQw5dLsF5ikxnxpxu8qb3c0Lm3/dT1oUzqYR1vqfjmN/hHcOPY+dAvXNrwoy8UQJwALKtDFik
	+3lx5083piYeYYb7V4NSiJm+xGP4jR4j1sFxOhid67ZQUjniVFptseKadobBfOUR+iArQeOEAahV1
	SoXuvOTeXQVOYzTNhHfyxS7oDljB1YUisI0vU2WI2zBhY65OxUEpMlmUt4WMIZRRLh/egr90du/eu
	fA/gBvmvtI/WxA488gQc6FLbqHuqGHlBvbeNTJWwfVkrGMzCEYco9pukQPYnhXjkusxBIBaToRz9Q
	KdWqIfGvzZZHIal/HhJA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mx8oM-00EPJq-LY; Tue, 14 Dec 2021 14:29:46 +0000
Received: from lelv0142.ext.ti.com ([198.47.23.249])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mx8oJ-00EPIX-4j
 for linux-phy@lists.infradead.org; Tue, 14 Dec 2021 14:29:45 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id 1BEETZh6116420;
 Tue, 14 Dec 2021 08:29:35 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1639492175;
 bh=pkfW5fFxKZWfnkpyQc7roh64li4gkF8aBNTVNrZ5tOI=;
 h=From:To:CC:Subject:Date;
 b=Hln6uVax/PCoEL/CqvEzOY+V/ZRjxI2nlTqsm1QQe8YdPdkMp3084sO5Jhwp+qSL7
 bG4l0VKUoHdHuYlUwT1Frcb+px940E9lzKEOVPsw8GsViPJBz89NQpJMbS03XYr2tT
 7MRwvLbGxtIzqTXdtIeTf7vjt6iz4Rpn4cea+M8A=
Received: from DLEE100.ent.ti.com (dlee100.ent.ti.com [157.170.170.30])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 1BEETZIe024914
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Tue, 14 Dec 2021 08:29:35 -0600
Received: from DLEE106.ent.ti.com (157.170.170.36) by DLEE100.ent.ti.com
 (157.170.170.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2308.14; Tue, 14
 Dec 2021 08:29:35 -0600
Received: from lelv0327.itg.ti.com (10.180.67.183) by DLEE106.ent.ti.com
 (157.170.170.36) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2308.14 via
 Frontend Transport; Tue, 14 Dec 2021 08:29:35 -0600
Received: from gsaswath-HP-ProBook-640-G5.dal.design.ti.com
 (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id 1BEETVkN038465;
 Tue, 14 Dec 2021 08:29:32 -0600
From: Aswath Govindraju <a-govindraju@ti.com>
To: 
CC: Aswath Govindraju <a-govindraju@ti.com>, Wolfgang Grandegger
 <wg@grandegger.com>, Marc Kleine-Budde <mkl@pengutronix.de>, Kishon Vijay
 Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>, Rob Herring
 <robh+dt@kernel.org>, <linux-can@vger.kernel.org>,
 <linux-phy@lists.infradead.org>, <devicetree@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>
Subject: [PATCH v2 0/2] CAN: Add support for setting mux
Date: Tue, 14 Dec 2021 19:59:06 +0530
Message-ID: <20211214142908.27940-1-a-govindraju@ti.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211214_062944_066390_815B2704 
X-CRM114-Status: UNSURE (   9.62  )
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

Changes since v1:
- Fixed the description for mux-states property in bindings
  file
- appended declaration of variable ret in the end

Aswath Govindraju (2):
  dt-bindings: phy: ti,tcan104x-can: Document mux-states property
  phy: phy-can-transceiver: Add support for setting mux

 .../bindings/phy/ti,tcan104x-can.yaml         | 10 ++++++++
 drivers/phy/Kconfig                           |  1 +
 drivers/phy/phy-can-transceiver.c             | 24 ++++++++++++++++++-
 3 files changed, 34 insertions(+), 1 deletion(-)

-- 
2.17.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
