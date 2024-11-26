Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E5B52D59D94
	for <linux-phy@archiver.kernel.org>; Tue, 26 Nov 2024 09:21:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=W4cUbfiQENYZm7samjT0c2VrN3xhuIR54diaMmq1rlw=; b=dezbo2kOxcH9sV
	pfkxoN8AWVJqYzBEpRVcGJM1b9/8Gr2e/RLggs8BuYjeRh4Pxtn5Ye/bTDOCIx6njl6K/R7UfPjva
	oXMNX9Lw9VJn9zCrSzwV/BdC1+M25d+xedfvlSkIsrH3X4tFg2jU/1zymUkjpTs49je7hCnSkOo/7
	WowygtjkK/68/fSvfYkZLJCGDJ6R+GQOPa0gZYCZa4fsELyCcWdELEnClObSU28WhrOsazyslBOqH
	VSTOGVLYYi5FFWdI0vklvCyZF/QU4XvfO+jg0pg3GXglYSCfy8MGpwkS1Wb73jlJejk+epFFyVA4N
	M0wbkwbvsRk29kqhC3Yg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tFrlH-0000000A7N9-1wQJ;
	Tue, 26 Nov 2024 09:21:35 +0000
Received: from mail-wr1-x431.google.com ([2a00:1450:4864:20::431])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tFrl8-0000000A7CC-0Pm5
	for linux-phy@lists.infradead.org;
	Tue, 26 Nov 2024 09:21:28 +0000
Received: by mail-wr1-x431.google.com with SMTP id ffacd0b85a97d-382433611d0so4489058f8f.3
        for <linux-phy@lists.infradead.org>; Tue, 26 Nov 2024 01:21:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1732612884; x=1733217684; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Z4yY5kKHWBOgnydB5P9+GaDat1sMgmo5I0rPUXNWFHQ=;
        b=flMob4dSFKMj3d/PLCNybAZj2ovez6JQzetl/1u8SOcdsagLu3MKTpzP8S/hVhwPSx
         oCvDTf2mr+U4e/UURP1Rykhh4Z3ICyqOh2KPRXmw6b00K46f6E2ZoflyBSiKpUeVUG+h
         j1tM8UMgxf4WDn1/XPjp2sp+eQijWB+/85JwISsZaXxd6uUUWK0+jxtQnwqeZb2rdPdZ
         17gq7csXBybPF2tynxYnRE55zGhEjHorA6nVG8IO8JdTusYefDaIFy4IJ81biVudNOst
         1ScBQmFCR9AaJfcG2fS2JGC2kAJmPNFD8Dzpam9NCwRuEHUJGt1Wpzsw9JwkT5iyh6Nn
         BFog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732612884; x=1733217684;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Z4yY5kKHWBOgnydB5P9+GaDat1sMgmo5I0rPUXNWFHQ=;
        b=q7r0lhkFxjudqypmhzdE7rLdskDWeI3s/PcA33U96l2jF91Pd522fEc6TTuaEOcqK3
         tSbOj6QjVvB3RayGxPM/mNh37TL1ZjYuaEKi+7umokZ68Ni8MZvVj2XNNt2zwF69bjx7
         KsVeMtXaLbGYsqMqMmUYKGH3iTABh6z8ddF4Rr1rTcQlLsCtbGqwXvUorrtRCVzwoLa3
         x0PTXxMcuv5R8rqN5tYN+67r2FbJ1SqttsznrM5qRVLnLtSWJPTkzTcUwmweAovLBhSY
         oqgVi1EmgrvoXLkEhWFGDVZwYl165hK8DuEpcOnRtqB134GmQ2xGj7q/NTpfIgeF90sx
         DFBQ==
X-Gm-Message-State: AOJu0YwClV4XsQnccXub+HREn7qf6SXRL6owTayODzijfIU0E3+GR+r4
	VuRU1UXSYGma/J5L6aWnJ4q8dFK2YL4LKDWsGdY4q2/EzKP47+zUS0Vqpb8/xwg=
X-Gm-Gg: ASbGncta5TffwVAAtISlNczkKx3vEA707DSrgjwg1XUdzClSKajppXPzocIThBSXcms
	KOy0pepxb1wpeEWIFlZOS/tQGPMS4DYVv+/JKhr4AkuVtuZ2+NLXpBLwQxxJgpwWaTzaXbCrqv7
	q4PAst3wwqD3mL7oj+A5rLdQV0WTk2Oo2ZMiJPxMBCcGSNvnMKtNTnMbXg6oxybx3woK32IGisr
	TerQ7dDqjHVG52PappIfFEXsvqpaG4hSdt/M9opXplkgR1VQGVBq4h7uvraiSei5qCrmIpPrGZG
	2GM=
X-Google-Smtp-Source: AGHT+IECNxqnMdsMr8sIEyPl41XrbsF2Eglii8m3iIb2siIoiQVCnnx0E2A0rJ4JNGhhSHg/JoNpCw==
X-Received: by 2002:a5d:59ab:0:b0:382:450c:25e9 with SMTP id ffacd0b85a97d-38260b8ce0bmr16781285f8f.35.1732612884408;
        Tue, 26 Nov 2024 01:21:24 -0800 (PST)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.28])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3825fbc3a47sm13027694f8f.73.2024.11.26.01.21.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 26 Nov 2024 01:21:24 -0800 (PST)
From: Claudiu <claudiu.beznea@tuxon.dev>
X-Google-Original-From: Claudiu <claudiu.beznea.uj@bp.renesas.com>
To: vkoul@kernel.org,
	kishon@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	p.zabel@pengutronix.de,
	geert+renesas@glider.be,
	magnus.damm@gmail.com,
	gregkh@linuxfoundation.org,
	yoshihiro.shimoda.uh@renesas.com,
	christophe.jaillet@wanadoo.fr
Cc: linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	linux-usb@vger.kernel.org,
	claudiu.beznea@tuxon.dev,
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
Subject: [PATCH v2 11/15] dt-bindings: reset: renesas,rzg2l-usbphy-ctrl: Document RZ/G3S support
Date: Tue, 26 Nov 2024 11:20:46 +0200
Message-Id: <20241126092050.1825607-12-claudiu.beznea.uj@bp.renesas.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20241126092050.1825607-1-claudiu.beznea.uj@bp.renesas.com>
References: <20241126092050.1825607-1-claudiu.beznea.uj@bp.renesas.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241126_012126_846456_1E6D1A06 
X-CRM114-Status: UNSURE (   9.68  )
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

From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>

The Renesas RZ/G3S USB PHY control block is similar with the one found on
the Renesas RZ/G2L. Add documentation for it.

Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
---

Changes in v2:
- none; this patch is new

 .../devicetree/bindings/reset/renesas,rzg2l-usbphy-ctrl.yaml     | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/reset/renesas,rzg2l-usbphy-ctrl.yaml b/Documentation/devicetree/bindings/reset/renesas,rzg2l-usbphy-ctrl.yaml
index b0b20af15313..ae59c2dcadbf 100644
--- a/Documentation/devicetree/bindings/reset/renesas,rzg2l-usbphy-ctrl.yaml
+++ b/Documentation/devicetree/bindings/reset/renesas,rzg2l-usbphy-ctrl.yaml
@@ -20,6 +20,7 @@ properties:
           - renesas,r9a07g043-usbphy-ctrl # RZ/G2UL and RZ/Five
           - renesas,r9a07g044-usbphy-ctrl # RZ/G2{L,LC}
           - renesas,r9a07g054-usbphy-ctrl # RZ/V2L
+          - renesas,r9a08g045-usbphy-ctrl # RZ/G3S
       - const: renesas,rzg2l-usbphy-ctrl
 
   reg:
-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
