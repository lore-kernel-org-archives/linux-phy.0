Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 64946CA0EE6
	for <linux-phy@archiver.kernel.org>; Tue, 19 Aug 2025 05:42:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8czud2jOLNNkHtFw6nO12xsYylFPer1491NcrtnT/9M=; b=aFqrS7jxag3aIR
	qpxhgJ5nfJ/xkBPFnPrgRuXmiOq+9pTPxp91ZdsNKYNQtNB2x2iPrTi/Wlz247XpgCJ9CXEHzL1to
	TprCCwtigH6q6Ngr7f9sOMp9gOzxcOfbWnww9LW649rHOcbXk/xyqGMQ4HZM06rcLPLVtj0la5wER
	dRYT40ckMAuPr6ZC+osqeYltMtoB72FQ0lBersDMB+N6XX6Yxi8a8QWJvN3oLGqJ1Ooa7A5Zs/tPK
	4oLi0O93lg5rnnxHQiOMpQ8WLh7hmFGyWmrrphZbHy2tR9VacvB5BkEP5kYKbr58av3HZ73L2DeT6
	cfiMZyyHvSclCu2EeI9A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uoF79-00000009SCC-0ifP;
	Tue, 19 Aug 2025 05:42:31 +0000
Received: from mail-wm1-x329.google.com ([2a00:1450:4864:20::329])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uoF76-00000009SAy-47eF
	for linux-phy@lists.infradead.org;
	Tue, 19 Aug 2025 05:42:30 +0000
Received: by mail-wm1-x329.google.com with SMTP id 5b1f17b1804b1-45a1ac7c066so27581925e9.1
        for <linux-phy@lists.infradead.org>; Mon, 18 Aug 2025 22:42:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1755582147; x=1756186947; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=dRX0/ILbGcYC/ZOQ37kJqtpxqFwl5Y5CWHl3KvwJH70=;
        b=cq2xjJkZwfJzRpi5T0SXMH3WCwPobXXQzuPNQrocNjcxHzTZGcqhEOP5EKseTsOIw7
         KPJfmKYYCAkiu4r5+HRatXo/5h9oFWKTsjZKpZKYC7B8g/oMgbzViYN2A8zkkKEB56GB
         p9cPutDuKgH9ffkcyXrdYp/F16UOGekmHTKHvRQxRamNXfDbxn7BJ/0w3pAb1kxz/uy4
         hA0Bzr5Rv0ANlyTDtsB+EclH7EwWcsbJ9GMnUzH33B4nOEyciHbfH/TGJaAh0pQWstXp
         e7gf6UhhKq+SZDAUNchLV3GFrh61ABHkbRJKw9jzglXe1ZFu2bC0RjyV1ZLDcWGw7xA5
         CpgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755582147; x=1756186947;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=dRX0/ILbGcYC/ZOQ37kJqtpxqFwl5Y5CWHl3KvwJH70=;
        b=fT7THEkTi5Ykn710al9c5gE9VYw7qwu0Iqa24z/KJApm152fTYdWtIY/lOYd0h76gR
         AknaKjXN7i6MYrWMYk/dfSvlQUP4hKpkDcXcnqUvau73xn6mpTCL05+3z9jmz18du1Of
         zBTuW5wUO+jk4aCMJbg6C9HmpxjPx90hUx4zysmFl84W3MvzZ1O8TwwWWrXOYWoAfxfD
         ZtIiVL42LZk/cl62w8FxPqPVj5l/6PkpWPBn7IaCZHSG+jDIZ07DqAjBlvGTO6MIWGV9
         wd1ILRDLCmgluFnbpwkBKNt864JT+mzHCMw8iOOKr2mSiJzNhPtAfBXZXqoBv1zYsITb
         fLMg==
X-Gm-Message-State: AOJu0Yyuew+fHugYFBp9xRXwnn6FxZVKVdW11vyfwm8Y1xGk2Zl3ke5e
	w/XSMc/oSs2/PSBK9owbIbE/GXfRbLLW1hZZGfh3X6t0QeUBOFgvHjJRHjjtXpAeMzU=
X-Gm-Gg: ASbGnctNwh4hr6b4qwCJN0+aTSlmUJ7ebd+Eg7S2zq02hVrqf/U5oDDfKHjb3Z/PrSJ
	TbqUvleKZNycpFoOdl/y4o/C2GByKlWILie47TuI3rZ84yMvKsrUEvocNrKgd+JQMogaEwyeD+7
	mSs9Ed/E5tv7axphiqJpjLfSOvqsnoV/HGeUpIYcRrov3eqGr1EnOPOOUum5d2Ac2dToP+cIA17
	05WfAQSz756SSuF/UAB4dO1Tznwwmj8N9CIxQsg/LWEtr3j4Pt/J2/X+kduzFqOby7dyjS3ebl2
	whnEWMUFJnImnRV7SAWxLOts7Mb7j6xVkd4xpszcsq41h1uQhEVEcuxZdm8iLLcofKOJy8rYsWb
	rNf25bAYGU8kwsYd2SCeO5ztxxcLr2W2AS4ZrTiUI1NzCiQYIrDpl9lVThkmy+WiYtCgC6ZSgjd
	c4txqMwRcFCn2TWJHECg==
X-Google-Smtp-Source: AGHT+IE82eFUk/hVv5JzkA8bqsXhoqq+l404vddic1GqJDoG4Xu5ff4Uf0NgyqJJ6Jq6LFzRsve22Q==
X-Received: by 2002:a05:600c:3f16:b0:456:1146:5c01 with SMTP id 5b1f17b1804b1-45b43e972abmr8107215e9.12.1755582147370;
        Mon, 18 Aug 2025 22:42:27 -0700 (PDT)
Received: from claudiu-TUXEDO-InfinityBook-Pro-AMD-Gen9.. ([2a02:2f04:620a:8b00:4343:2ee6:dba1:7917])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-45b42a9847fsm25097345e9.26.2025.08.18.22.42.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 18 Aug 2025 22:42:26 -0700 (PDT)
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
Cc: linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org
Subject: [PATCH v5 5/7] reset: rzg2l-usbphy-ctrl: Add support for RZ/G3S SoC
Date: Tue, 19 Aug 2025 08:42:10 +0300
Message-ID: <20250819054212.486426-6-claudiu.beznea.uj@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250819054212.486426-1-claudiu.beznea.uj@bp.renesas.com>
References: <20250819054212.486426-1-claudiu.beznea.uj@bp.renesas.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250818_224229_022294_5184A18C 
X-CRM114-Status: GOOD (  11.54  )
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

Changes in v5:
- none

Changes in v4:
- none

Changes in v3:
- none; this patch is new

 drivers/reset/reset-rzg2l-usbphy-ctrl.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/reset/reset-rzg2l-usbphy-ctrl.c b/drivers/reset/reset-rzg2l-usbphy-ctrl.c
index 3856072b23a3..924c614f84cd 100644
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
