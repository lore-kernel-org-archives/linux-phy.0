Return-Path: <SRS0=czee=OZ=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D9D46C433F5
	for <linux-phy@archiver.kernel.org>; Tue,  5 Oct 2021 15:25:07 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 8E2ED611AE
	for <linux-phy@archiver.kernel.org>; Tue,  5 Oct 2021 15:25:07 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 8E2ED611AE
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=foss.st.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:CC
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=XiWP0BMP4cYC4kkoqo6sxs/ktqv3I/M5o2dyxHc05ww=; b=CVW/evhYMe6gZI
	PmENk9f2WD2ppiB/YpPL8Lb97nhuCWmKHdkX6hAvmHFpb328h6zlxatIxiIv1BuryMW5dLZuLOZJc
	nUsSsyMkwDfNpxhK8dBNw45waNPnkFSpQrjEpvYRB+IsMcHjRLWHnQhoa0kO5kNXTlFgKRBNF/lV4
	hOvfgoAmHyp+h1KUjCSHc3QBaJw0FWi9XmO4Qq1y94etUcMMLjdOl+xLW7hPuZmaeFHami3sLvax2
	k7scFsp8gmL/Us8fJ/+W8xQywQyW8cUhkpmUACCD+k9yDCiBUj+tObeDHlr5iNJFo+adYCi7y+7Go
	/g3AH1NOLIVyq+BJw9Gg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mXmJX-00B3fW-4K; Tue, 05 Oct 2021 15:25:07 +0000
Received: from mx07-00178001.pphosted.com ([185.132.182.106])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mXmJU-00B3cq-B0; Tue, 05 Oct 2021 15:25:05 +0000
Received: from pps.filterd (m0046668.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.1.2/8.16.1.2) with SMTP id 195DGbq1021117; 
 Tue, 5 Oct 2021 17:24:57 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=foss.st.com;
 h=from : to : cc :
 subject : date : message-id : mime-version : content-transfer-encoding :
 content-type; s=selector1;
 bh=77QYGY7BiuwUpHd7MHzy7GqNWdzhJ3VP18VxSYvCOIs=;
 b=cEimbhrxrCF+RDJicHYS7Sc9QWp9vIouda4DYGTpP9hOr3m/yD/xjd7dXXJsJMWuPkxu
 hBbIdmP+RHuXWqM+2Z7hAq7iUpmGsIovu4/I/+XYXP/n5A38ZxbrNmVFk4GZrqOU/ogt
 Ft1sZfIBRrzuCOKGR7+ZucT683OW3REDcyj/O3wzTQHUhqm8CLYFQXmY/jjWDp2s8uUS
 a+5JIKdnxQwfZ8w9gT6+GRFssgNzN+RyB2dogZ6iS9P5MOgDxJmUOpKHwe6UyZxc7OU/
 5Yw/9uKn7aZb0bXbUSw3jQK/YJTzdyuaHNS5nr6KboHbmhzviZTIUtdsfrDlIDexjYxU MQ== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 3bgjt8th0f-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 05 Oct 2021 17:24:57 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 87B8410002A;
 Tue,  5 Oct 2021 17:24:56 +0200 (CEST)
Received: from Webmail-eu.st.com (sfhdag2node2.st.com [10.75.127.5])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 7FAD6229A8E;
 Tue,  5 Oct 2021 17:24:56 +0200 (CEST)
Received: from localhost (10.75.127.46) by SFHDAG2NODE2.st.com (10.75.127.5)
 with Microsoft SMTP Server (TLS) id 15.0.1497.18; Tue, 5 Oct 2021 17:24:55
 +0200
From: Amelie Delaunay <amelie.delaunay@foss.st.com>
To: Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>, Rob
 Herring <robh+dt@kernel.org>, Alexandre Torgue
 <alexandre.torgue@foss.st.com>, Maxime Coquelin <mcoquelin.stm32@gmail.com>
CC: <linux-phy@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
 <devicetree@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
 <linux-stm32@st-md-mailman.stormreply.com>, Amelie Delaunay
 <amelie.delaunay@foss.st.com>
Subject: [PATCH v2 0/3] phy: stm32: add phy tuning support
Date: Tue, 5 Oct 2021 17:24:50 +0200
Message-ID: <20211005152453.89330-1-amelie.delaunay@foss.st.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Originating-IP: [10.75.127.46]
X-ClientProxiedBy: SFHDAG1NODE3.st.com (10.75.127.3) To SFHDAG2NODE2.st.com
 (10.75.127.5)
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.182.1,Aquarius:18.0.790,Hydra:6.0.391,FMLib:17.0.607.475
 definitions=2021-10-05_02,2021-10-04_01,2020-04-07_01
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211005_082504_718954_27183747 
X-CRM114-Status: GOOD (  11.35  )
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
Changes in v2:
- st,phy-tuning + usb_phy_tuning node removed
- properties are now in phy child nodes

 .../bindings/phy/phy-stm32-usbphyc.yaml       | 126 +++++++++++
 drivers/phy/st/phy-stm32-usbphyc.c            | 204 ++++++++++++++++++
 2 files changed, 330 insertions(+)

-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
