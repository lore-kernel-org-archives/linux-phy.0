Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 081D1D59D90
	for <linux-phy@archiver.kernel.org>; Tue, 26 Nov 2024 09:21:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9H697P9X3PoZ5Yz/rZNOCfwJlikK9wJNj+yDlw4cf1Q=; b=GOaw74BxzCzluU
	W+2LKxlJducS7ZsuNbWP/+I8Q7Xs/0kDFutb6SH6+88xLhhaN0gAQBPxKURT/J/19X3f4cLeAkc4b
	HIpLLzVuJkhett/qxGgp7OfaSiLJaNyMzMdULQavYTR5Uil1+vENlgp7fwRLg87E20YRaNx9p0//N
	Btio9KzUXiBSA0vP4WvBiaTluEiEXftd2q4R/HPTKvCPE69Z2plfmNXwhdAE8M5JPoJeFGJgwevp2
	Upediudj/ZPV55Xyp3DK58F0mVmvkdYDoiPwyh7o+f7Up0Y5qKw2p3PnWxj7rnqiJ/7Gdq1QjQTAG
	dFuX8GkQPPJUF25F5sdA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tFrlF-0000000A7Kt-3028;
	Tue, 26 Nov 2024 09:21:33 +0000
Received: from mail-wr1-x42c.google.com ([2a00:1450:4864:20::42c])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tFrl0-0000000A77l-1r9q
	for linux-phy@lists.infradead.org;
	Tue, 26 Nov 2024 09:21:19 +0000
Received: by mail-wr1-x42c.google.com with SMTP id ffacd0b85a97d-3824a8a5c56so3632216f8f.3
        for <linux-phy@lists.infradead.org>; Tue, 26 Nov 2024 01:21:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1732612877; x=1733217677; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=DWc+F6Re5lYpUThTPl2Jyvuy/tQl0uxdBQ2YGVSL9kM=;
        b=WqlgxbYxUlUPLbmhAFMdQQ7W8bSpfCoQi/KdRFg5JSZ9roHcwW9mv1HrysS9mAHa5s
         DtDjqatPc3b/r1Lox0H7Wf11xWPJ0Yf7GBki5z3WrI6t2wguC4Z8eknCvV2AYeUk2Yj0
         zSAFB8Vfiv91NNykMhDKprAxz5FE8Xqzte07Tr1BVHSaIpVEdGbHcnaodF6kcD5ArCh1
         DKkebTRRITVCtiizXbpxG2F+t72kHXcL6dOsPX9MntEfvdnuHA64ZCECvrfNT6vz8qbs
         raDWv6646jbROKK5ya+bZGP70jxJOZr7R0iIUGP4Im1xKzcJKSDCvus5oQ6iAHYy43iO
         eKJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732612877; x=1733217677;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=DWc+F6Re5lYpUThTPl2Jyvuy/tQl0uxdBQ2YGVSL9kM=;
        b=LwjuqF/YsGwuJkWTONb4rRIRR7v7mHYkWsHnHk9lPRF9HaKPlm95SrwYqjulCYCcrK
         HlzS2vwZiFMxCKarcSOeuafwayRpBv8TeZFH5u/v5LgIw5wrXnsMrHuyrFkaPScldclE
         /R2oA3IGEZV89B2H9qm9HnoTW/dDsyQ0tSxa9e2GB/8YGB9oRfbw6F4NULDHcvvhBI6v
         E32KV2miPO1vU5+RUCJLxUu5DjdUCdsQ1Z8TyiJp9rjhRMJMIXGqYA1SQrd8lcVIwgc6
         rw5hPC5WLWPrPjvV9SomUcomo6rY0za3vv6ZU2Ata3QW1OLING9lAJn7prz6WiBwNIvh
         Vl9g==
X-Gm-Message-State: AOJu0YxvMP71yK5c5pTP75rG2JRAu2BWyPnKHEfHKPWxHNdlJWMACM/s
	iEwMLgXAczFmAkPRaZ9rjRDz+FUd71zFB5BusOo9+YfnNYsVcLPb96M/O2C1I+0=
X-Gm-Gg: ASbGncsaYDKQxa4VS3MbcPAO5ThXeV12PPz9eYdKOVZ9IegTurDoeh//Uj5w23ordQN
	CIYmcK61A7ADFrcW1PCOiKjYeoDA2ZcFRByUnBF8jm6kgvGw/PvB9PBkhqRMHuBVH3ODyki9t0M
	+j/GHTrW8WxEju3ckYsR9kLEwv5sxca9EtZk6QsPXHfXdFvjWzgJYet0OshDv9iRDsgA7xv4Bv3
	EIY7e+vpRm4lJpPvRhVHh8XVb2cOlfaAUdLop6GWNfPDXx/jtM1v8izIfg/8yxcornCG8KF804R
	Mls=
X-Google-Smtp-Source: AGHT+IG3dGq/ZJlhJq/NurIWM/G3VWbjsNdFTR8iP7hMyFJIs0S9/bgfBkT4zkY71Su/dQBJNJTAFQ==
X-Received: by 2002:a5d:6da4:0:b0:382:4115:1ccb with SMTP id ffacd0b85a97d-38260b45f98mr11753556f8f.7.1732612877138;
        Tue, 26 Nov 2024 01:21:17 -0800 (PST)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.28])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3825fbc3a47sm13027694f8f.73.2024.11.26.01.21.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 26 Nov 2024 01:21:16 -0800 (PST)
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
Subject: [PATCH v2 07/15] dt-bindings: phy: renesas,usb2-phy: Mark resets as required for RZ/G3S
Date: Tue, 26 Nov 2024 11:20:42 +0200
Message-Id: <20241126092050.1825607-8-claudiu.beznea.uj@bp.renesas.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20241126092050.1825607-1-claudiu.beznea.uj@bp.renesas.com>
References: <20241126092050.1825607-1-claudiu.beznea.uj@bp.renesas.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241126_012118_502933_FFB91C61 
X-CRM114-Status: UNSURE (   9.35  )
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

The reset lines are mandatory for the Renesas RZ/G3S platform and must be
explicitly defined in device tree.

Fixes: f3c849855114 ("dt-bindings: phy: renesas,usb2-phy: Document RZ/G3S phy bindings")
Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
---

Changes in v2:
- none; this patch is new


 Documentation/devicetree/bindings/phy/renesas,usb2-phy.yaml | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/phy/renesas,usb2-phy.yaml b/Documentation/devicetree/bindings/phy/renesas,usb2-phy.yaml
index af275cea3456..2babd200bd98 100644
--- a/Documentation/devicetree/bindings/phy/renesas,usb2-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/renesas,usb2-phy.yaml
@@ -105,7 +105,9 @@ allOf:
       properties:
         compatible:
           contains:
-            const: renesas,rzg2l-usb2-phy
+            enum:
+              - renesas,rzg2l-usb2-phy
+              - renesas,usb2-phy-r9a08g045
     then:
       required:
         - resets
-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
