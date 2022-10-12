Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A2036C43219
	for <linux-phy@archiver.kernel.org>; Wed, 12 Oct 2022 05:57:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=h1vNiP80Z3ZwVQHMWvxL0z0FWO+bYpzFvQ8gHP54x+U=; b=TY3QJei4YQDIIe
	pQsH35zPU38NxzgOxtNVgXZa/NqvC/LtE7XLzIZSiIyUiqJLzzb8HTV8nluNaf837KXqNgQoPHD/o
	hhdVgmUEQisDAVa1I7Fd6eIZ5SgKuOOEpzOGCWs7cXwKuGHKEdxa0F9ojbGxc0Rqf17dFY88FFvwg
	0qZElrfx2vYQ95AYNrb4vg/5XoQesF5ZwrHMLb3HA6J5MnaSHuaJMPYnDegGrLySj1iOBGK/26Poo
	grF6UAKe3tEemfwYI7vT1Is/TuMuDjwVSwaju5QpkHjafe1+17fwR3uuwSFbvFilwrHLGsPrGvYkH
	8t2EAKBcCMP6J7IcaHcA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oiUk6-006uvz-3L; Wed, 12 Oct 2022 05:57:22 +0000
Received: from sender4-op-o18.zoho.com ([136.143.188.18])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oiUjh-006ukp-Rm; Wed, 12 Oct 2022 05:57:01 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1665554212; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=bGr+KPscsRAzIXQ1nTBT9pWxnIPPZWPDnNMt3ryxBXhfVAbq8XoSvhaGX/dkQHWK7g/m7bzitQPk5+dwpzWUwh5/t4P3Sjv76XGvXXTrdRV+xwR9NAHi9DvIyJ20SCvukyjl2AA1G3Fwuwj8foL1jDP//SQMDqV3rGiL90EptuE=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1665554212; h=Content-Transfer-Encoding:Cc:Date:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:To; 
	bh=BLIMUTj+mMReZpkBK2+4owJIZrq7A2Y+0iF7wCkupeg=; 
	b=Y+Jfc2y0OZmubMM/enfLWFaRkqwL2+btl31J4bT5WkqPnYGECWshm8drSMp1XmIfUJr6aWrNnSBVbTsKPvi+olsXvLYmgGhgqMhW7CJssph3PbT+e8VVOJcZNn0yGnV2p3PrTjBdshX/wYX9aKgYq3Ix1Pvv8toccZfoqvKDwn4=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=icenowy.me;
	spf=pass  smtp.mailfrom=uwu@icenowy.me;
	dmarc=pass header.from=<uwu@icenowy.me>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1665554212;
	s=zmail; d=icenowy.me; i=uwu@icenowy.me;
	h=From:From:To:To:Cc:Cc:Subject:Subject:Date:Date:Message-Id:Message-Id:In-Reply-To:References:MIME-Version:Content-Transfer-Encoding:Reply-To;
	bh=BLIMUTj+mMReZpkBK2+4owJIZrq7A2Y+0iF7wCkupeg=;
	b=NKCMpmnYtG9OA2as2d9S3Col20Zzon76Sao3P/424D9sILGyF2zYnDqaTwAoZrK4
	AJw/orDF2BzjWWMGuBM/uz7p9DDNbww8tiRkJVKh7r62jeoLiiGGoAdz+z/+ZOEPIFF
	wCS3dNMaLTG+nUX/nzwEsPI7Iw3bLsxQMRy5IuWM=
Received: from edelgard.fodlan.icenowy.me (112.94.102.144 [112.94.102.144]) by mx.zohomail.com
	with SMTPS id 1665554211125647.5240842007678; Tue, 11 Oct 2022 22:56:51 -0700 (PDT)
From: Icenowy Zheng <uwu@icenowy.me>
To: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Chen-Yu Tsai <wens@csie.org>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Samuel Holland <samuel@sholland.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Andre Przywara <andre.przywara@arm.com>
Cc: soc@kernel.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-sunxi@lists.linux.dev,
	linux-phy@lists.infradead.org,
	linux-usb@vger.kernel.org,
	Icenowy Zheng <uwu@icenowy.me>
Subject: [PATCH v2 03/10] dt-bindings: usb: sunxi-musb: add F1C100s MUSB compatible string
Date: Wed, 12 Oct 2022 13:55:55 +0800
Message-Id: <20221012055602.1544944-4-uwu@icenowy.me>
X-Mailer: git-send-email 2.37.1
In-Reply-To: <20221012055602.1544944-1-uwu@icenowy.me>
References: <20221012055602.1544944-1-uwu@icenowy.me>
MIME-Version: 1.0
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221011_225700_190474_90F2A943 
X-CRM114-Status: UNSURE (   8.06  )
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

Allwinner F1C100s has a hybrid MUSB controller between the A10 one and
the A33 one.

Add a compatible string for it.

Signed-off-by: Icenowy Zheng <uwu@icenowy.me>
---
No changes since v1.

 .../devicetree/bindings/usb/allwinner,sun4i-a10-musb.yaml        | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/usb/allwinner,sun4i-a10-musb.yaml b/Documentation/devicetree/bindings/usb/allwinner,sun4i-a10-musb.yaml
index 8992eff6ce38..9ae634280bf4 100644
--- a/Documentation/devicetree/bindings/usb/allwinner,sun4i-a10-musb.yaml
+++ b/Documentation/devicetree/bindings/usb/allwinner,sun4i-a10-musb.yaml
@@ -17,6 +17,7 @@ properties:
       - const: allwinner,sun6i-a31-musb
       - const: allwinner,sun8i-a33-musb
       - const: allwinner,sun8i-h3-musb
+      - const: allwinner,suniv-f1c100s-musb
       - items:
           - enum:
               - allwinner,sun8i-a83t-musb
-- 
2.37.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
