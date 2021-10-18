Return-Path: <SRS0=B4Pq=PG=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCA18C433EF
	for <linux-phy@archiver.kernel.org>; Mon, 18 Oct 2021 01:42:01 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 82D5361250
	for <linux-phy@archiver.kernel.org>; Mon, 18 Oct 2021 01:42:01 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 82D5361250
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=socionext.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Peb399zranXdJ4hOFnYS82ASkQFKTHY3b1sxT2wiqZ0=; b=mt8lrYRd6LtUk5
	4nLL7cC/MnPCPlUztKIgW/Z4xPRd6B8+ZUnOnx4SS4Jqa31Tn1cUxMUZMaLBWi0eWMKRP1F2wY4s8
	5ffWB3tyhk3pWKdUq9FCahUaY0wSGcVLvBfF0i4WpDimu+cGes1AUyRs3pV/DvTpaJ0a91vgtVoR3
	kSGJiQ4m1++RtQxlVea9WNp/P0wwW8d/s1bKCK5xiwAEoV+RTzOcXt7NNyBo0ilnMaURI7lUdZTW9
	PU/uqqgAqTkkNpN44MPKv5Kz6s0r0GNYazLlvmRS7k+bkLY0T8qdZkR8jJgfP8vqKzvTRmFBaEuJZ
	0gI6aco0AXFxwAt10z5w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mcHf6-00Dj8C-OF; Mon, 18 Oct 2021 01:42:00 +0000
Received: from mx.socionext.com ([202.248.49.38])
 by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mcHam-00Dh5M-8c; Mon, 18 Oct 2021 01:37:33 +0000
Received: from unknown (HELO kinkan2-ex.css.socionext.com) ([172.31.9.52])
 by mx.socionext.com with ESMTP; 18 Oct 2021 10:37:30 +0900
Received: from mail.mfilter.local (m-filter-1 [10.213.24.61])
 by kinkan2-ex.css.socionext.com (Postfix) with ESMTP id 45FCF2059034;
 Mon, 18 Oct 2021 10:37:30 +0900 (JST)
Received: from 172.31.9.51 (172.31.9.51) by m-FILTER with ESMTP;
 Mon, 18 Oct 2021 10:37:30 +0900
Received: from plum.e01.socionext.com (unknown [10.212.243.119])
 by kinkan2.css.socionext.com (Postfix) with ESMTP id A6C9AAB192;
 Mon, 18 Oct 2021 10:37:29 +0900 (JST)
From: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@ti.com>,
 Rob Herring <robh+dt@kernel.org>, Masami Hiramatsu <mhiramat@kernel.org>
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
Subject: [PATCH 3/8] dt-bindings: phy: uniphier-pcie: Add bindings for NX1 SoC
Date: Mon, 18 Oct 2021 10:37:08 +0900
Message-Id: <1634521033-17003-4-git-send-email-hayashi.kunihiko@socionext.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1634521033-17003-1-git-send-email-hayashi.kunihiko@socionext.com>
References: <1634521033-17003-1-git-send-email-hayashi.kunihiko@socionext.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211017_183732_463992_AE8381BB 
X-CRM114-Status: GOOD (  10.39  )
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

Update PCIe-PHY binding document for UniPhier NX1 SoC.

Signed-off-by: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
---
 Documentation/devicetree/bindings/phy/socionext,uniphier-pcie-phy.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/phy/socionext,uniphier-pcie-phy.yaml b/Documentation/devicetree/bindings/phy/socionext,uniphier-pcie-phy.yaml
index 3e0566899041..fbb71d6dd531 100644
--- a/Documentation/devicetree/bindings/phy/socionext,uniphier-pcie-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/socionext,uniphier-pcie-phy.yaml
@@ -19,6 +19,7 @@ properties:
       - socionext,uniphier-pro5-pcie-phy
       - socionext,uniphier-ld20-pcie-phy
       - socionext,uniphier-pxs3-pcie-phy
+      - socionext,uniphier-nx1-pcie-phy
 
   reg:
     maxItems: 1
-- 
2.7.4


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
