Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EA28CC433F5
	for <linux-phy@archiver.kernel.org>; Wed, 30 Mar 2022 05:21:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=u/0olbcA1BUSKWjifgqPgF13v12rjVuyuOMlJBgq25s=; b=KeR6FSdiTzjLtB
	HFhiO7HfcUT3Wl6sLabUR38Pa2RD8r0ZEhQeQLSXMb7eP6HkiJupEsfVpV0j7XDrPR/Bngl0n0CE8
	yEGMi3JL/cX6FsgZ9G/ZmkgcQvS5YdTjVghPg1qAZ9aHpF1PO410ACE/3fY2y8K+Ir4MuLz/o4Y2y
	dmDljFCd6bbs7paxweptuufCBnTL8rBmuxnKavqErOM27AryrHFUYHchJ9fnsENZAPttlTHEp6uGK
	1lwxYonqbf56ckszmaKHXRWdYiS/kQ2QNlFKqJXItXkge61ziQlcUbR+HN2XiUHugFxWKkNb6SN+s
	EmPFO44EvyZTAs8AhLlQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nZQlb-00EHXx-9O; Wed, 30 Mar 2022 05:21:11 +0000
Received: from mx.socionext.com ([202.248.49.38])
 by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nZQlL-00EHPb-9I; Wed, 30 Mar 2022 05:20:56 +0000
Received: from unknown (HELO kinkan2-ex.css.socionext.com) ([172.31.9.52])
 by mx.socionext.com with ESMTP; 30 Mar 2022 14:20:54 +0900
Received: from mail.mfilter.local (m-filter-2 [10.213.24.62])
 by kinkan2-ex.css.socionext.com (Postfix) with ESMTP id 65AE42058443;
 Wed, 30 Mar 2022 14:20:54 +0900 (JST)
Received: from 172.31.9.51 (172.31.9.51) by m-FILTER with ESMTP;
 Wed, 30 Mar 2022 14:20:54 +0900
Received: from plum.e01.socionext.com (unknown [10.212.243.119])
 by kinkan2.css.socionext.com (Postfix) with ESMTP id ACB3EB62B7;
 Wed, 30 Mar 2022 14:20:53 +0900 (JST)
From: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@ti.com>,
 Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc: Masami Hiramatsu <mhiramat@kernel.org>, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org,
 Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
Subject: [PATCH v2 0/5] dt-bindings: phy: Fix uniphier descriptions
Date: Wed, 30 Mar 2022 14:20:46 +0900
Message-Id: <1648617651-9004-1-git-send-email-hayashi.kunihiko@socionext.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220329_222055_461149_D655D446 
X-CRM114-Status: GOOD (  11.76  )
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
  dt-bindings: phy: uniphier: Clean up clock-names and reset-names using
    compatible string

 .../phy/socionext,uniphier-ahci-phy.yaml      | 74 ++++++++++++-----
 .../phy/socionext,uniphier-pcie-phy.yaml      | 37 ++++++---
 .../phy/socionext,uniphier-usb2-phy.yaml      |  3 +
 .../phy/socionext,uniphier-usb3hs-phy.yaml    | 71 ++++++++++++----
 .../phy/socionext,uniphier-usb3ss-phy.yaml    | 80 ++++++++++++++-----
 5 files changed, 194 insertions(+), 71 deletions(-)

-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
