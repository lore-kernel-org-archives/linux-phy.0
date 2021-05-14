Return-Path: <SRS0=mSol=KJ=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E22E8C433ED
	for <linux-phy@archiver.kernel.org>; Fri, 14 May 2021 15:00:05 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id A74026145D
	for <linux-phy@archiver.kernel.org>; Fri, 14 May 2021 15:00:05 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org A74026145D
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=manjaro.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=6r4g9ziWVgxDtO30+QbhT3fnqrRYFjZmEJDaYYBJ0+4=; b=J68z72WrwRoWSctYAe8l+Wmgf
	sKLp4erX03rQCNnBOH/Qvg1geHyPh2V+2e0SKkQ07rGRKHajtijS/EXjEgNQuXvrwbD+uPZsvZX1V
	6wM+NDCfBbHLGsbWKZzo3B0K5NOlbjKKPKSEVnKlwQ+r2qs4M6qtGi9x2RlMiFILQyJeiQ26DCvIG
	5C6EsNBQ7fbSZm52j/eYc69jOhQHr2nfdmvE8XcRvv3nujd0dbJE8yfJSodPJDMtPnOLoNNczngch
	gg70SDRpdcz4sMfQbNXzFcnI7eWIXk7se0IbL+l/rn3umHgrpYRt/N2EynUZblzE4bMG74DzlSxtc
	5uuJ/UcEw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lhZIK-008M36-5N; Fri, 14 May 2021 15:00:04 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lhZHv-008Lyx-4x; Fri, 14 May 2021 14:59:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-Type:Content-ID:Content-Description;
 bh=4AIjOIjK8U6rD3QXZW3Vzh+OKNjFkX209TXootJ4H/o=; b=k8wBGb7ivhotEn4qllywVH1NCp
 FHClFF+CFfkUgL8MKa7j0u7uBTnmTaRIn1RbpjsFTpBCZphw2DHuUsIwul1IDyFVvv2ZnQL6rRL1N
 vUMMmTSHyAatNQPL/y9F2SnccrYQtY+12DTkYvyy/U5CjtaDvENvXW4QprgGLb5PpmLe8gWEY6SZw
 LDSQabRQ/qFQby/10mntxNH2K159B35AnY5sSWGUxoWK3qoIvLmb88+pXYWIqggP5EHFtA+5meTKD
 h9lCEPcO0/a6PSmCjnALAa8GnJcQk731m1wExdCMexJ7HAUWIfSCKpfCw1LKoNhQwHjkqK6gdGwIG
 r2TX+U7A==;
Received: from mail.manjaro.org ([2a01:4f8:150:448b::1])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lhZHs-00C43p-II; Fri, 14 May 2021 14:59:37 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.manjaro.org (Postfix) with ESMTP id 6DCE1222575;
 Fri, 14 May 2021 16:59:34 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at manjaro.org
Received: from mail.manjaro.org ([127.0.0.1])
 by localhost (manjaro.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mfS1E6guK9J1; Fri, 14 May 2021 16:59:30 +0200 (CEST)
From: Tobias Schramm <t.schramm@manjaro.org>
To: linux-usb@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org
Cc: Johan Jonker <jbx6244@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 Heiko Stuebner <heiko@sntech.de>, Kishon Vijay Abraham I <kishon@ti.com>,
 Vinod Koul <vkoul@kernel.org>, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, Tobias Schramm <t.schramm@manjaro.org>
Subject: [PATCH v2 1/5] dt-bindings: phy: rockchip-inno-usb2: add compatible
 for rk3308 USB phy
Date: Fri, 14 May 2021 17:00:40 +0200
Message-Id: <20210514150044.2099298-2-t.schramm@manjaro.org>
In-Reply-To: <20210514150044.2099298-1-t.schramm@manjaro.org>
References: <20210514150044.2099298-1-t.schramm@manjaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210514_075936_794764_E926978B 
X-CRM114-Status: UNSURE (   7.83  )
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

The RK3308 features a slightly different USB phy than other Rockchip SoCs.
This patch adds a compatible string for it.

Signed-off-by: Tobias Schramm <t.schramm@manjaro.org>
---
 .../devicetree/bindings/phy/phy-rockchip-inno-usb2.yaml          | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/phy/phy-rockchip-inno-usb2.yaml b/Documentation/devicetree/bindings/phy/phy-rockchip-inno-usb2.yaml
index fb29ad807b68..a5b027a6e70f 100644
--- a/Documentation/devicetree/bindings/phy/phy-rockchip-inno-usb2.yaml
+++ b/Documentation/devicetree/bindings/phy/phy-rockchip-inno-usb2.yaml
@@ -14,6 +14,7 @@ properties:
     enum:
       - rockchip,px30-usb2phy
       - rockchip,rk3228-usb2phy
+      - rockchip,rk3308-usb2phy
       - rockchip,rk3328-usb2phy
       - rockchip,rk3366-usb2phy
       - rockchip,rk3399-usb2phy
-- 
2.31.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
