Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D620FC87FD3
	for <linux-phy@archiver.kernel.org>; Fri,  8 Aug 2025 06:18:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CGlu9t6FB8Fecq6OO6SdVOH2Uz0KBdhlq8hCsToyuJ4=; b=01TVwEqhQ1jsa0
	as4mxHOm5jPYsUdvI0J+su9qtPfpOobLevKYoJA1M0jL9y7W2RGBsdvwWArA57BiZqsK1jr761alR
	pAQ++Ru75XvhNbAVnqgxrkgm68ln9A3o1kEoSwJmZXfQL0Ko3aPSOxNeBrdQvrWlCalUuDWsdKfZ7
	nvedrH+LHWi9YtcBloVpNW+hVTmfMip7yhHWJfGGSuMXSOP1lAyK0jskdvLNTImUOkt2ZVtcbtx1H
	E3OnSkqtF+busNWfc5AXSFgLRYhvsneyi/z3aBCkevJhiiJQVHnrb5s5VRnf6/dnikFnCrq5vBiyV
	rG9MKwrtNZdFlg2kt2vQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ukGR3-000000025bw-2eNx;
	Fri, 08 Aug 2025 06:18:37 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ukGR2-000000025b1-1eoZ
	for linux-phy@bombadil.infradead.org;
	Fri, 08 Aug 2025 06:18:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=QgaBZoG1YrnEA6bfqCkXkFoVQXkJH/A3swaWngLeOHQ=; b=KXlV0nn4dFvuKdJvBohrq4nlLm
	uw3xBxMWo/Jeg4MBfW1UjCqTPs/fKCz3bDICCHJSbXfQfw8rUL91V2sKIDijrzHeP2PCgM4Mfk6To
	E3xa1Y99A5SYbY0rCExjd9UEYfv6+bcg54iS2iQM/g5wVa01brXtM4ORwf4MPVyil/G0psplmZYLF
	xXNIIsIHImK45J/qEB+vZXsxjNSVezOOmkVtGZq0xYJyms3LOjxR3ltwg1dWnbt7VD9ktWEiMzhL6
	v84ORj8Lh7H1C2ZVdKGblO1hf9vpgklr492Lg1jGlHm8ikj3DPAHvDXaqiZBV7k7T2rRLY1xGZPWT
	MOIr32Vw==;
Received: from mail-ej1-x62a.google.com ([2a00:1450:4864:20::62a])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ukGQz-0000000EmD4-27jy
	for linux-phy@lists.infradead.org;
	Fri, 08 Aug 2025 06:18:35 +0000
Received: by mail-ej1-x62a.google.com with SMTP id a640c23a62f3a-af9618282a5so348518666b.2
        for <linux-phy@lists.infradead.org>; Thu, 07 Aug 2025 23:18:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1754633912; x=1755238712; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=QgaBZoG1YrnEA6bfqCkXkFoVQXkJH/A3swaWngLeOHQ=;
        b=nBIXdBaviiiZyY5f+FNsyvcoCzd852174QyQrHcM+SjRvt9g8n41UZqZLyuyoAcmlN
         3+quKDCG2ATXSN0vlBPinMIorP/nt47GhRPEWuHw3aGV8HKxtIny62uNjdDccMWyeLDz
         QbSkS+ausTVkOmd6g75emgJanaezjcCqWFliiGGvd3Z42aJNiwpAcfv5ILDEBIjZ9508
         zRL8U5Eyotj0CnJVzZxUUyPdZAqKf9v8uKv/JAFhLpQmH/Bx8d6hGEBSv5DuDubGKpyb
         m86NXnubyxsEh4xTD0RZO4bypqW2+256HN+KOPaTqONnrvjRhTiys4XBHnGvRxiYaAd9
         lt7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754633912; x=1755238712;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=QgaBZoG1YrnEA6bfqCkXkFoVQXkJH/A3swaWngLeOHQ=;
        b=mnv3FDEpD+t7Pk37koK+O7EVL8pq4n269nz92Lm3zvGVl0D472bEz3g04NkaiM1D7p
         c7O8jkXlVUtgwp1ItiOl0Dvk6AIsPbMB1a2a15Lx7fTME53j9EIk05ltNsm56QR6NCJA
         BiW+glp1IuPoA4m5VIlVkoFbWEvr7dvZIZviKQURBRmlJc7DP5vl8wtgbbmccI6UAbew
         IfDMvCZ1IX5/BZw/0vG4SJdqs4BfRaVmiecK92Gsb3YAg1lgPKk6epKJuSztfHKq628c
         5GNzgkl/Y/MVc5xQikGpuDwp+dsuU8f4lBJdSnhOkuiYv3bdzTd2H6V54vamSBL1zwas
         K9lg==
X-Forwarded-Encrypted: i=1; AJvYcCWx/aOCsafW+sjSxUfkAcICe1c1gYBx4uXzDFN2fs02ZoGAY6KHxik7jEuAVgQZWi2TMydeXAqlhsU=@lists.infradead.org
X-Gm-Message-State: AOJu0YzHLU6ryG8UMNnNyrvK21YRvUdVK/9lS1wY8NUpaujHyphCkerB
	+5P/my7PTbA9TcvpleYYmRF0I7njkJ+bV3qElY2eg97q66L64+ZD7r2WHLB78Uh4jHA=
X-Gm-Gg: ASbGncvoKQ5pOQb1cpMhfrbQzDew+gkH19oTIfyAdD+dGzoO0Ek/sHUVxeHy4BgCDpI
	FV02ODt7tpDHuLtJvP6XseGCkhrrvpnC26KZNfYWMSCMUvn13M1m6rS2H+SHDVjnc1scL0LhxZt
	Zwr9edbAz2MDfZsi4RgUpkjwNz/UbTENpJLIC4VBQPsi9HW2CoULz+GFT6yC3QdwHNX0ZBPlzur
	TcrIQ9B15BXqKvNXbF91Xeo32TmU77UcrdSXGcc5oVmsZDqzU7T1LcL3VXs8EpY2KwMx266VC5K
	/ezyNMmM8bi5SAsSjD7FOTGaJ/sTXZhMwRHyRTmR6GBfKVC0ZfhjUQfs0NyhmjP2Rwhts/2VmbC
	bnWS0BzKtS4DZsxYX1B8NGXIrWhtpwtGC2D5mBW2N64x86nREakAXD6+nUlDXOXc=
X-Google-Smtp-Source: AGHT+IHttm5+ImjErw0mMRHoLiZ9CbwBXmRFtvaluIHBtf8iEFaAC3msQWdYIGs1nItjsBv9XcEAOQ==
X-Received: by 2002:a17:907:72c9:b0:ae0:d08b:e85 with SMTP id a640c23a62f3a-af9c6613dd3mr145882366b.61.1754633911879;
        Thu, 07 Aug 2025 23:18:31 -0700 (PDT)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.188])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-af91a218ab4sm1440488566b.92.2025.08.07.23.18.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 07 Aug 2025 23:18:31 -0700 (PDT)
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
	yoshihiro.shimoda.uh@renesas.com,
	biju.das.jz@bp.renesas.com
Cc: claudiu.beznea@tuxon.dev,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
Subject: [PATCH v4 6/8] reset: rzg2l-usbphy-ctrl: Add support for RZ/G3S SoC
Date: Fri,  8 Aug 2025 09:18:04 +0300
Message-ID: <20250808061806.2729274-7-claudiu.beznea.uj@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250808061806.2729274-1-claudiu.beznea.uj@bp.renesas.com>
References: <20250808061806.2729274-1-claudiu.beznea.uj@bp.renesas.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250808_071833_785064_EDA31A94 
X-CRM114-Status: GOOD (  11.10  )
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

The Renesas RZ/G3S SoC USB PHY HW block receives as input the USB PWRRDY
signal from the system controller. Add support for the Renesas RZ/G3S SoC.

Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
---

Changes in v4:
- none

Changes in v3:
- none; this patch is new

 drivers/reset/reset-rzg2l-usbphy-ctrl.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/reset/reset-rzg2l-usbphy-ctrl.c b/drivers/reset/reset-rzg2l-usbphy-ctrl.c
index fc14c41f5572..8aa2a5833c2e 100644
--- a/drivers/reset/reset-rzg2l-usbphy-ctrl.c
+++ b/drivers/reset/reset-rzg2l-usbphy-ctrl.c
@@ -108,6 +108,10 @@ static int rzg2l_usbphy_ctrl_status(struct reset_controller_dev *rcdev,
 
 static const struct of_device_id rzg2l_usbphy_ctrl_match_table[] = {
 	{ .compatible = "renesas,rzg2l-usbphy-ctrl" },
+	{
+		.compatible = "renesas,r9a08g045-usbphy-ctrl",
+		.data = (void *)RZG2L_USBPHY_CTRL_PWRRDY
+	},
 	{ /* Sentinel */ }
 };
 MODULE_DEVICE_TABLE(of, rzg2l_usbphy_ctrl_match_table);
-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
