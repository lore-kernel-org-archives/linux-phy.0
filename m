Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 68E08C433F5
	for <linux-phy@archiver.kernel.org>; Mon, 28 Mar 2022 02:06:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=efGjS1BNjVo+XmHckpIHj58lVELoDiCr00oH9b2lh4g=; b=1lbaao8Un2q2c1
	PgU/KNYAV3wMUkJgJiI8OxmqmokcesUM8j9tIbtC0CQ/gPX/wG3m9ZX5Lb6b1xU/c2+ngOLRK9Gin
	UX1pk267MO64eJSzZ+tJjH/4+xxqP16LvOF6Fzfc2LjqsgYs2WeTDHVuKXVo8QibqvdqPDR7vth/l
	464aTUrsCUGuJrP7FOIGk0yiHOpAfndQTFYqt8PloE0nCrB79OYeMz+qDnTNgsR/wiU2OB1kxMXrW
	qKLVd2SNnsMfCeDSDIQtQn7z9rGjg+tZdzot/QwExyUQYcc7LFGr28FKuMpusQtzMHgEJbHGUNm9I
	cV7C+x84JSWfeZLFR3Ag==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nYell-0073vh-Na; Mon, 28 Mar 2022 02:06:09 +0000
Received: from mx.socionext.com ([202.248.49.38])
 by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nYela-0073qF-1z; Mon, 28 Mar 2022 02:05:59 +0000
Received: from unknown (HELO iyokan2-ex.css.socionext.com) ([172.31.9.54])
 by mx.socionext.com with ESMTP; 28 Mar 2022 11:05:56 +0900
Received: from mail.mfilter.local (m-filter-2 [10.213.24.62])
 by iyokan2-ex.css.socionext.com (Postfix) with ESMTP id 2AE5C2058B50;
 Mon, 28 Mar 2022 11:05:56 +0900 (JST)
Received: from 172.31.9.51 (172.31.9.51) by m-FILTER with ESMTP;
 Mon, 28 Mar 2022 11:05:56 +0900
Received: from plum.e01.socionext.com (unknown [10.212.243.119])
 by kinkan2.css.socionext.com (Postfix) with ESMTP id D3828B62B7;
 Mon, 28 Mar 2022 11:05:55 +0900 (JST)
From: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@ti.com>,
 Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc: Masami Hiramatsu <mhiramat@kernel.org>, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org,
 Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
Subject: [PATCH 0/3] dt-bindings: phy: Fix uniphier descriptions
Date: Mon, 28 Mar 2022 11:05:49 +0900
Message-Id: <1648433152-23126-1-git-send-email-hayashi.kunihiko@socionext.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220327_190558_226111_382A1CE4 
X-CRM114-Status: GOOD (  10.33  )
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

This series fixes dt-schema descriptions for USB2, USB3, and AHCI PHYs
implemented in UniPhier SoCs.

Kunihiko Hayashi (3):
  dt-bindings: phy: uniphier-usb2: Add vbus-supply
  dt-bindings: phy: uniphier-usb3ss: Treat vbus-supply as optional
  dt-bindings: phy: uniphier-ahci: Fix missing reset-names

 .../devicetree/bindings/phy/socionext,uniphier-ahci-phy.yaml   | 3 ++-
 .../devicetree/bindings/phy/socionext,uniphier-usb2-phy.yaml   | 3 +++
 .../devicetree/bindings/phy/socionext,uniphier-usb3ss-phy.yaml | 3 +--
 3 files changed, 6 insertions(+), 3 deletions(-)

-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
