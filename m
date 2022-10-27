Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 96CA4C67871
	for <linux-phy@archiver.kernel.org>; Thu, 27 Oct 2022 04:50:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=LBtm4e1enrVX6G+22vsMFSt/+3KBM+QSX2n5VMGAMCI=; b=VSRYJjcUYsdAQR
	MExjBftOA5rbRJlr9EMPQzTIDi+aIgPioZglZm/rmH8p8Rd3mMs3AhaTdtRFheEegfDk4BW43iFU8
	cDlMLB6nmFQkzqOJuzUUA8hljBY63Q2xsdaZxvxQ0uWY8ZnO9RoIpzucy9MgH0chsGVg7zzPAPrZx
	wp8QYr28HiG51BJJfZpx5k8bSqNmvY1dQacLrVISFt3Z7JzkMd4LQu2v+78a3IkW27WS3G4Ll5/KW
	9OMfNyAIhh982vAYDJqZkpcpUNal/Mt8SjKtCuDYlp91Q/EtO8eQJsawvnTjdOTlUMHYYuAOZCFr8
	ubcvEsXfLfv74GEgimuA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1onuqJ-00Box2-QX; Thu, 27 Oct 2022 04:50:11 +0000
Received: from mx.socionext.com ([202.248.49.38])
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1onupn-00BoqW-6C; Thu, 27 Oct 2022 04:49:42 +0000
Received: from unknown (HELO iyokan2-ex.css.socionext.com) ([172.31.9.54])
  by mx.socionext.com with ESMTP; 27 Oct 2022 13:49:27 +0900
Received: from mail.mfilter.local (m-filter-2 [10.213.24.62])
	by iyokan2-ex.css.socionext.com (Postfix) with ESMTP id 85FBE20584CE;
	Thu, 27 Oct 2022 13:49:27 +0900 (JST)
Received: from 172.31.9.51 (172.31.9.51) by m-FILTER with ESMTP; Thu, 27 Oct 2022 13:49:27 +0900
Received: from plum.e01.socionext.com (unknown [10.212.243.119])
	by kinkan2.css.socionext.com (Postfix) with ESMTP id DFDA8B62A4;
	Thu, 27 Oct 2022 13:49:26 +0900 (JST)
From: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
To: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Masami Hiramatsu <mhiramat@kernel.org>
Cc: devicetree@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
Subject: [PATCH 0/2] dt-bindings: phy: Fix UniPhier controller node names
Date: Thu, 27 Oct 2022 13:49:18 +0900
Message-Id: <20221027044920.23194-1-hayashi.kunihiko@socionext.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221026_214941_332942_99B3694D 
X-CRM114-Status: GOOD (  10.06  )
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

This series fixes examples with ambiguous words for the node names.
Currently these doesn't affect the result of dt-schema check.

Kunihiko Hayashi (2):
  dt-bindings: phy: Fix UniPhier USB3 controller node names in example
  dt-bindings: phy: Fix UniPhier SATA controller node names in example

 .../devicetree/bindings/phy/socionext,uniphier-ahci-phy.yaml  | 4 ++--
 .../bindings/phy/socionext,uniphier-usb3hs-phy.yaml           | 2 +-
 .../bindings/phy/socionext,uniphier-usb3ss-phy.yaml           | 2 +-
 3 files changed, 4 insertions(+), 4 deletions(-)

-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
