Return-Path: <SRS0=Lyxf=P6=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E75C2C433EF
	for <linux-phy@archiver.kernel.org>; Thu, 11 Nov 2021 16:43:30 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id A32C261002
	for <linux-phy@archiver.kernel.org>; Thu, 11 Nov 2021 16:43:30 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org A32C261002
Authentication-Results: mail.kernel.org; dmarc=fail (p=quarantine dis=none) header.from=ti.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:CC
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=dThxU0DQlVQIUDuDdsnFbHRAGbI35HCRSxhq9SawBM0=; b=4nNRu7DU6Th1vY
	uGZXfU/bz9cI3jQVTk9PpwPyV1EGoKhJh2MX6taewxEG/A8MaxSbbMPr49iegJkajUV5R4I45yNH6
	VJoXBnLlGCY/IVz2KWAmEY29nv2gGG37iNPRu8j0WAnBaAAnu/Sza9ZGI00cExO9TvdjqLdgfPm8Q
	V2ZqCCbn2NNLu+caQ1Yh9eDRvCOw9DRvtDUAqUZhbhpTqbMtjn68zs3L7QjtwDP7s44yWU8DUdNH5
	Z+RSpH1RxIurdm2Iv1jOPQhAmVdjjDB4pThlgMTdWuypCinkA/TW1p/JYtbfZUBSdx/P5yMlnm/aw
	ZBmqb/8MXsl6iceT2OaA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mlDAg-008Qgw-3s; Thu, 11 Nov 2021 16:43:30 +0000
Received: from lelv0143.ext.ti.com ([198.47.23.248])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mlDAc-008Qf0-6p
 for linux-phy@lists.infradead.org; Thu, 11 Nov 2021 16:43:28 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id 1ABGhJC3098226;
 Thu, 11 Nov 2021 10:43:19 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1636648999;
 bh=XFjprkplom3curDEOP2tC8estXvrW8fX+kjqvTjHgco=;
 h=From:To:CC:Subject:Date;
 b=REYPZVAQ75yJya9yDSSs92alU3mJNiBJZV0sY3LTn+d//WK2aMfz2FhUrD5gVgE1O
 e1Ej9prGHI+y+ezpDqFGSxORuDCmN3vQBER5c6qXG8KNh2xNB5oZLnugffTeSkZCOe
 a/Sry+akLbHPqtQqQN6EHyywTt8+wVIv+MPoCCLA=
Received: from DFLE100.ent.ti.com (dfle100.ent.ti.com [10.64.6.21])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 1ABGhJva091105
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Thu, 11 Nov 2021 10:43:19 -0600
Received: from DFLE109.ent.ti.com (10.64.6.30) by DFLE100.ent.ti.com
 (10.64.6.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2308.14; Thu, 11
 Nov 2021 10:43:18 -0600
Received: from lelv0327.itg.ti.com (10.180.67.183) by DFLE109.ent.ti.com
 (10.64.6.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2308.14 via
 Frontend Transport; Thu, 11 Nov 2021 10:43:18 -0600
Received: from gsaswath-HP-ProBook-640-G5.dal.design.ti.com
 (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id 1ABGhEg2104171;
 Thu, 11 Nov 2021 10:43:15 -0600
From: Aswath Govindraju <a-govindraju@ti.com>
To: 
CC: Vignesh Raghavendra <vigneshr@ti.com>, Kishon Vijay Abraham I
 <kishon@ti.com>, Nishanth Menon <nm@ti.com>, Aswath Govindraju
 <a-govindraju@ti.com>, Wolfgang Grandegger <wg@grandegger.com>, Marc
 Kleine-Budde <mkl@pengutronix.de>, Vinod Koul <vkoul@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, <linux-can@vger.kernel.org>,
 <linux-phy@lists.infradead.org>, <devicetree@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>
Subject: [PATCH RFC 0/2] CAN TRANSCEIVER: Add support for setting mux
Date: Thu, 11 Nov 2021 22:13:10 +0530
Message-ID: <20211111164313.649-1-a-govindraju@ti.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211111_084326_430227_7FF4DB15 
X-CRM114-Status: UNSURE (   7.58  )
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

On some boards, for routing CAN signals from controller to transceiver,
muxes might need to be set. Therefore, add support for setting the mux by
reading the mux-controls property from the device tree node.

Aswath Govindraju (2):
  dt-bindings: phy: ti,tcan104x-can: Document mux-controls property
  phy: phy-can-transceiver: Add support for setting mux

 .../bindings/phy/ti,tcan104x-can.yaml         |  6 ++++++
 drivers/phy/phy-can-transceiver.c             | 21 +++++++++++++++++++
 2 files changed, 27 insertions(+)

-- 
2.17.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
