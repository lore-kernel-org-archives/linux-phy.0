Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AEA29C433EF
	for <linux-phy@archiver.kernel.org>; Mon, 22 Nov 2021 12:59:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:CC
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=4PZtJbV6trJQVR6KCdj0haYS9sRsHN4e/ebKkAm3Uuc=; b=zU7hilemk8G3BP
	vOtnthZzNB6YbiMdx5WgBXMffpd+akTD8G1rZzQ+y8HJIH8WfUD2jMeUVXIWpfhAMAru2YWLoZZ8f
	8jzHy4D4EM/nHtsl49iVn4wzqsi0q68mlmB0iUDk1Z0LdZynHis87vLJd8l7HYD7bnGHmRpuXMEOm
	s8xn4rxXYOVBGR96ylc9kWavH7+5YZJaeH2fd1Y3Ql0BbefXmNohZdenG61oaID/bu+JmHs5AJ72g
	LhU7UJpbOAetCI9BbaCvDj611crHRaXAsY7uF83RPAZxNmWcKk7Qhz74aoAewQFQO+ZvInF4N7ska
	+MvHcHFzBVj45R7e1Sjw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mp8uk-00GXUK-SC; Mon, 22 Nov 2021 12:59:18 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mp8sD-00GWKO-7R
 for linux-phy@lists.infradead.org; Mon, 22 Nov 2021 12:56:42 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 1AMCuVHm107907;
 Mon, 22 Nov 2021 06:56:31 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1637585791;
 bh=86PCuAHCF1E3Rn+MR0ZWMSwqRPl+D80wX/tnx0rh1cA=;
 h=From:To:CC:Subject:Date;
 b=h+12N1QM0Mdro5c0JGHp4oJ7YDV+664DkeHgePiv9nwVY+ntALl4gQW2v3+7foanZ
 JNCM3Sw+zJqB5zBMWxDKWasT/kFnaISIKGLOtB/DZeOjty4BgXCwgH+PxUHY2aQwqP
 /ONeYWJydnMg6y5/KRJAxbsLrVmFq7J5DWVy0/k0=
Received: from DFLE113.ent.ti.com (dfle113.ent.ti.com [10.64.6.34])
 by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 1AMCuV5w019714
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Mon, 22 Nov 2021 06:56:31 -0600
Received: from DFLE106.ent.ti.com (10.64.6.27) by DFLE113.ent.ti.com
 (10.64.6.34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2308.14; Mon, 22
 Nov 2021 06:56:30 -0600
Received: from fllv0039.itg.ti.com (10.64.41.19) by DFLE106.ent.ti.com
 (10.64.6.27) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2308.14 via
 Frontend Transport; Mon, 22 Nov 2021 06:56:30 -0600
Received: from gsaswath-HP-ProBook-640-G5.dal.design.ti.com
 (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 1AMCuQhx109786;
 Mon, 22 Nov 2021 06:56:27 -0600
From: Aswath Govindraju <a-govindraju@ti.com>
To: 
CC: Nishanth Menon <nm@ti.com>, Vignesh Raghavendra <vigneshr@ti.com>, Aswath
 Govindraju <a-govindraju@ti.com>,
 Peter Rosin <peda@axentia.se>, Rob Herring <robh+dt@kernel.org>,
 Wolfgang Grandegger <wg@grandegger.com>, Marc
 Kleine-Budde <mkl@pengutronix.de>,
 Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
 <linux-can@vger.kernel.org>, <linux-phy@lists.infradead.org>
Subject: [PATCH RFC v2 0/4] MUX: Add support for reading enable state from DT
Date: Mon, 22 Nov 2021 18:26:20 +0530
Message-ID: <20211122125624.6431-1-a-govindraju@ti.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211122_045641_399692_5660E172 
X-CRM114-Status: GOOD (  11.04  )
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

- The following series of patches add support for reading the state of the
  mux to be set for enabling given device.
- As these are RFC patches I have combined them into a single series for
  better understanding of the reason behind making this change.

Changes since v1:
- Added support for reading the enable state from DT instead of hardcoding
  the state to be set to 1.
- Made relavent changes in the bindings

Link to v1,
- https://patchwork.kernel.org/project/linux-phy/list/?series=578863&state=*

Aswath Govindraju (4):
  dt-bindings: mux: Increase the number of arguments in mux-controls
  dt-bindings: phy: ti,tcan104x-can: Document mux-controls property
  mux: Add support for reading mux enable state from DT
  phy: phy-can-transceiver: Add support for setting mux

 .../devicetree/bindings/mux/gpio-mux.yaml     |  2 +-
 .../bindings/mux/mux-controller.yaml          |  2 +-
 .../bindings/phy/ti,tcan104x-can.yaml         |  8 ++++++
 drivers/mux/core.c                            | 20 ++++++++++++--
 drivers/phy/phy-can-transceiver.c             | 26 +++++++++++++++++++
 include/linux/mux/consumer.h                  |  1 +
 include/linux/mux/driver.h                    |  1 +
 7 files changed, 56 insertions(+), 4 deletions(-)

-- 
2.17.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
