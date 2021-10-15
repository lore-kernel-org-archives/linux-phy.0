Return-Path: <SRS0=Q62d=PD=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2B787C433FE
	for <linux-phy@archiver.kernel.org>; Fri, 15 Oct 2021 16:15:04 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id EB77261090
	for <linux-phy@archiver.kernel.org>; Fri, 15 Oct 2021 16:15:03 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org EB77261090
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=foss.st.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:CC
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=EUseB2DlZJXH/zbWHjykS8Iezc9eGfw6FQaHVMjz6Vs=; b=PBvCCiMzKNj15h
	b+v8lFYjUmjpIY5L5fbOdNtvSOapxmRW6FaWsyt49QKbax3Wm/ZSUxEOSRZCyNnZfH2/+4ryHNEnp
	tEVvdq5WjpAQqsM95JD/Lrm/xhe7VxQPrAJoOrt1t9OQeRmZbVoecqn2krth3l8BUbYIls5xjZ5GJ
	hihcHnJ9RaRSakll2QoYxiY2EMvOiUgJMj0Sjeb5qgsnwiQjxVPAkRVBSOrrHXrXLxgfNW5hYsOWs
	GQBbzf1oqsnui/bGTNiVgWuWgnsKHDoDYiexfoaxGnLA8Nb9VsfXoRdpEGxE3H8Vmwcr/d7lIN93P
	rPI4dAgjdgPoEdgvFrrQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mbPrL-0081fJ-EK; Fri, 15 Oct 2021 16:15:03 +0000
Received: from mx07-00178001.pphosted.com ([185.132.182.106])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mbPr2-0081Yi-CX; Fri, 15 Oct 2021 16:14:45 +0000
Received: from pps.filterd (m0241204.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.1.2/8.16.1.2) with SMTP id 19FCxdoX023022; 
 Fri, 15 Oct 2021 18:14:38 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=foss.st.com;
 h=from : to : cc :
 subject : date : message-id : mime-version : content-transfer-encoding :
 content-type; s=selector1;
 bh=A4tqsFWtDMZnl64khjFES9apGihKCVelBIildCe0RfQ=;
 b=GIbJF+8oxrYj/kHYTpZH2zyhaZmGkR0WIgj+IIzYgKHavgDtND9OldHkkXW8dXjPoANl
 DdfT/EXBSojxc+HxkDwpLHzvlP27LcEMqAbX8v49BHJiq5A02kRUwFluiBWbZKAd+bJH
 w4LoauIHbub8tp75iA1HmFFw1vwg6cspp+dboPguAXJpFZbm98C/Xeffrfg7VkWbsuVS
 g6PzspigNDh9Sgz1/BKjp6God2KVm3iN0d+WEZ87UCyap7qWwFqmtGnnQAXoicPyl6TX
 7YCqa3feu6t/SyNhUtGYvWe4TA2On8EZ5URqusJhfweJ/n5sksz42ac9VRaW7mvjhT1Q QA== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 3bq5apk4b4-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Fri, 15 Oct 2021 18:14:38 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 0CA3E10002A;
 Fri, 15 Oct 2021 18:14:37 +0200 (CEST)
Received: from Webmail-eu.st.com (sfhdag2node2.st.com [10.75.127.5])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 00A0B231513;
 Fri, 15 Oct 2021 18:14:37 +0200 (CEST)
Received: from localhost (10.75.127.51) by SFHDAG2NODE2.st.com (10.75.127.5)
 with Microsoft SMTP Server (TLS) id 15.0.1497.18; Fri, 15 Oct 2021 18:14:36
 +0200
From: Amelie Delaunay <amelie.delaunay@foss.st.com>
To: Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>, Rob
 Herring <robh+dt@kernel.org>, Alexandre Torgue
 <alexandre.torgue@foss.st.com>, Maxime Coquelin <mcoquelin.stm32@gmail.com>
CC: <linux-phy@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
 <devicetree@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
 <linux-stm32@st-md-mailman.stormreply.com>, Amelie Delaunay
 <amelie.delaunay@foss.st.com>
Subject: [PATCH v3 0/3] phy: stm32: add phy tuning support
Date: Fri, 15 Oct 2021 18:14:24 +0200
Message-ID: <20211015161427.220784-1-amelie.delaunay@foss.st.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Originating-IP: [10.75.127.51]
X-ClientProxiedBy: SFHDAG1NODE2.st.com (10.75.127.2) To SFHDAG2NODE2.st.com
 (10.75.127.5)
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.182.1,Aquarius:18.0.790,Hydra:6.0.425,FMLib:17.0.607.475
 definitions=2021-10-15_05,2021-10-14_02,2020-04-07_01
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211015_091444_778409_D737F9E3 
X-CRM114-Status: GOOD (  11.37  )
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

This series brings phy tuning to stm32-usbphyc with new optional
device tree properties.
A prior patch add resume routine, which is used to restore UTMI
switch and phy tuning configuration, as they can be reset if
deep low power state is achieved.

Amelie Delaunay (3):
  phy: stm32: restore utmi switch on resume
  dt-bindings: phy: phy-stm32-usbphyc: add optional phy tuning
    properties
  phy: stm32: add phy tuning support

---
Changes in v3:
- Use -microamp for current boost
- '|' added after 'description:' on each properties needing this
Changes in v2:
- st,phy-tuning + usb_phy_tuning node removed
- properties are now in phy child nodes

 .../bindings/phy/phy-stm32-usbphyc.yaml       | 129 +++++++++++
 drivers/phy/st/phy-stm32-usbphyc.c            | 203 ++++++++++++++++++
 2 files changed, 332 insertions(+)

-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
