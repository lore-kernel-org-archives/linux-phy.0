Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8238CC433FE
	for <linux-phy@archiver.kernel.org>; Wed, 30 Mar 2022 10:55:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=qpGA42cxT2iWXzc0kIUrpfbV/BPgSrWyJVlZjtL9j9g=; b=UkO7pd0pcC/eem
	DGSUb0qrtrmYLT+1bhpuwu1LPeA6AxOCh9TCKy9RXnIqN4S1V61pHMRPlQY9VlaWkJBCp8x6M6tw/
	Bq2TzB7YGUstpNQOILjfgiHlYyH4uJp+LYx8DPnVwgD4EpiQMNx//2cx9gHNC/v/SV+bq+IR7gL/v
	bzR/UQMt88ydCaWT1b/QehgMHO+BLFThON+x1vc2ivW616q0l8RKYvElRtC9yJypsgghatRsRARcM
	+V2v5QQjLnX/37edE/5kMwsXCYcJo31lTb2L5Vg05MP92y/i3FCXVj2GPgI+WeTE75x+VMZXwWyxQ
	8Gb22oCex9p1J1IpODdA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nZVzN-00FGqm-VO; Wed, 30 Mar 2022 10:55:45 +0000
Received: from mx.socionext.com ([202.248.49.38])
 by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nZVz1-00FGgM-17; Wed, 30 Mar 2022 10:55:24 +0000
Received: from unknown (HELO iyokan2-ex.css.socionext.com) ([172.31.9.54])
 by mx.socionext.com with ESMTP; 30 Mar 2022 19:55:20 +0900
Received: from mail.mfilter.local (m-filter-2 [10.213.24.62])
 by iyokan2-ex.css.socionext.com (Postfix) with ESMTP id 05D462058B50;
 Wed, 30 Mar 2022 19:55:20 +0900 (JST)
Received: from 172.31.9.51 (172.31.9.51) by m-FILTER with ESMTP;
 Wed, 30 Mar 2022 19:55:19 +0900
Received: from plum.e01.socionext.com (unknown [10.212.243.119])
 by kinkan2.css.socionext.com (Postfix) with ESMTP id 7C28AB62B7;
 Wed, 30 Mar 2022 19:55:19 +0900 (JST)
From: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@ti.com>,
 Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc: Masami Hiramatsu <mhiramat@kernel.org>, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org,
 Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
Subject: [PATCH v3 0/5] dt-bindings: phy: Fix uniphier descriptions
Date: Wed, 30 Mar 2022 19:55:10 +0900
Message-Id: <1648637715-19262-1-git-send-email-hayashi.kunihiko@socionext.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220330_035523_206206_FC1B1E06 
X-CRM114-Status: GOOD (  11.25  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

This series fixes dt-schema descriptions for all PHYs implemented in
UniPhier SoCs.

Changes since v2:
- Add "Reviewed-by:" line to patch 3 and 4
- Add constraints of clocks and resets for compatible cases

Changes since v1:
- Add "Reviewed-by:" line to patch 1 and 2
- Remove result messages about unpublished nodes in patch 3
- Add patch 4 for fixing incorrect properties in ahci-phy
- Add patch 5 to rewrite properties using allOf-if-then in all phys

Kunihiko Hayashi (5):
  dt-bindings: phy: uniphier-usb2: Add vbus-supply
  dt-bindings: phy: uniphier-usb3ss: Treat vbus-supply as optional
  dt-bindings: phy: uniphier-ahci: Fix missing reset-names
  dt-bindings: phy: uniphier-usb3hs: Fix incorrect clock-names and
    reset-names
  dt-bindings: phy: uniphier: Clean up clocks, resets, and their names
    using compatible string

 .../phy/socionext,uniphier-ahci-phy.yaml      | 91 ++++++++++++-----
 .../phy/socionext,uniphier-pcie-phy.yaml      | 47 ++++++---
 .../phy/socionext,uniphier-usb2-phy.yaml      |  3 +
 .../phy/socionext,uniphier-usb3hs-phy.yaml    | 89 ++++++++++++++---
 .../phy/socionext,uniphier-usb3ss-phy.yaml    | 98 ++++++++++++++-----
 5 files changed, 257 insertions(+), 71 deletions(-)

-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
