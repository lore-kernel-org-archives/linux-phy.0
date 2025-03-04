Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AE4D1C282D0
	for <linux-phy@archiver.kernel.org>; Tue,  4 Mar 2025 12:08:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YSpfU7lQRWyy1ubQ5dzOykpma7jsCbZumIpNRRmNbFs=; b=osf+5Hmfx41kFo
	Qz87CVrgup4H5viND313qSGr88rGxzDHRyNTEquiLbfNcbuXQmhMrcEoWuo+v0JiQyMkUcbgLUtSp
	HzvyvriUwSSMV/2YWTa9dkp+1qsZRx/GQIrGLrGo0zEec5uMlNW7qnP0g8hchy4a6AHzLRe1GYsPV
	kLIhRnVaIgI7lciLPExgsCoLaAOvf2zgbkGMspJJHdAOBvvKvnbmN+jnbGdQl5ZeeTPi8IlhyqmB4
	SQd49qBpbCkdUbjULaBTTTkEcmYPgdCzf1ct0ZbJIRVm7EE/s9wVPlXeTADncXPZcWM+T8kDwDsi+
	Z5+gyoySN4W8XMAMXM9w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tpR4p-00000004WeP-1gQ6;
	Tue, 04 Mar 2025 12:08:47 +0000
Received: from mail-wr1-x431.google.com ([2a00:1450:4864:20::431])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tpPpH-00000004GOV-23FV
	for linux-phy@lists.infradead.org;
	Tue, 04 Mar 2025 10:48:40 +0000
Received: by mail-wr1-x431.google.com with SMTP id ffacd0b85a97d-390fb1b987fso3371189f8f.1
        for <linux-phy@lists.infradead.org>; Tue, 04 Mar 2025 02:48:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1741085318; x=1741690118; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=tRJcEJEBuJZ+hz1ZoBW1GVvB+QH/3DoA+Rqlp4VSk8w=;
        b=Dml0hoAD40h8+omUHL3keFx/32aMTf/6Mtd3+svLS34uMmtt7g4BAk5dteqnxQ1i2H
         gmIG80XzAXcRhgnPGpQhEGgjIirvLgS9UTSTQxzH2EodcTaSGCfH1MdSi7HOlJsW567g
         RprumqQcQiP2N/o2kdernTCyhqoRaNR664h6zgGpGg5+F58vrT3VktoMA/WSiG3LvXPS
         BJmbQvVbn79H2TH9h2jq3HqTMouPdCs2FTE+b1NvbQv7BzEUy0HbCxGhddmVTWCeEU2W
         9ngc8LAxZ962OVIgeK4gIP72LEegb4clAjkFWgc37wcIXY7OatC0uxKzpkhGHiobEP1y
         qZew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741085318; x=1741690118;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=tRJcEJEBuJZ+hz1ZoBW1GVvB+QH/3DoA+Rqlp4VSk8w=;
        b=C2vksDKYkp0xErqmrPr609mS57PKJCY/JyRRyqbTqO/DMwpU5WSAqGO/H/HpcNfDgC
         hZzpaZp8nV62TS74jwvBJren/2vZngDC/L1v8r//4BgsZF9GV8mRVNujN5FCg4985dzY
         xZCD45HnkYTVFwzJJIyPVCvBQWvORB+6lhL1CMqhVbzaCENtxkYUDPu6StzoUK2XwVZW
         IODOAbroOXMpQgtEdmTV5OefwmnB3clhtmlTkwquyLDckqeySvuCUzEPkrX5UBsxS2wq
         I6Mnu5WTzcOqod96HLcbPe9ZnCa8JQXVg2bWsEH6x9COeybQcl9NsJxSz+MAM05A43gM
         IthA==
X-Forwarded-Encrypted: i=1; AJvYcCX8x42hx15doBGirbzCfsiu1ym0sO/F1+HJNzbYh8Go6nM+yIJUooVCOaCLnn3e7pn+3h3P1BRemwk=@lists.infradead.org
X-Gm-Message-State: AOJu0YzcH5/Hye6orzmiEPvTf/nPxRo/t3KR+zA6zMx4HjiaIWNpGImE
	dFW/6gOC+pBPQexXM8VPSWBC7xakJVlpWHscJD2S7BvkmxlZkRTAX3m/QUeT0a8=
X-Gm-Gg: ASbGncskXqPwk2FZ+tDg3JrIxRM8tu24Wf7VXwSEUniV2Z4lWLy0xwvEH6cascBPM6t
	qTCFPYgrha/g2ftWTArPHKUdppdj+XSyCXG4bah69nQMGYMwYOhuo0HxerfYbLQ1ro1py4fLj4b
	AOuxz5YfKqY9g3Bllom44ZiiofkPxqlinpmNsPzOmJ6HPGWVdpRRtyWT+Ij6G8d+PEhSnZ8JkFJ
	uvl6ksHA1ZLl3VKX3JDwEYO+ZUQTndX7GchxgDooQZ6di+SBs6UedMkfSGssxALiskhVkT0fe9n
	VnQGKJY3uW2jcrfZzOp4BSVnJPAlQ4HNSTA7gKrj5xVeVYxSt+KSofPsr4H4GO8CpBeFAS2SIuo
	=
X-Google-Smtp-Source: AGHT+IEzaPdRtNq5d8BIcB9aEy7PlrR49uga/gnA14JhmXxnbu44C93t/ZWbPsbG+sIUeIrfE2/bgQ==
X-Received: by 2002:a05:6000:4404:b0:390:eb46:1894 with SMTP id ffacd0b85a97d-390ec9bb93emr10799958f8f.21.1741085317876;
        Tue, 04 Mar 2025 02:48:37 -0800 (PST)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.138])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-390e4844a38sm17445161f8f.75.2025.03.04.02.48.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 04 Mar 2025 02:48:37 -0800 (PST)
From: Claudiu <claudiu.beznea@tuxon.dev>
X-Google-Original-From: Claudiu <claudiu.beznea.uj@bp.renesas.com>
To: yoshihiro.shimoda.uh@renesas.com,
	vkoul@kernel.org,
	kishon@kernel.org,
	horms+renesas@verge.net.au,
	fabrizio.castro.jz@renesas.com
Cc: claudiu.beznea@tuxon.dev,
	linux-renesas-soc@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>,
	stable@vger.kernel.org,
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Subject: [PATCH v3 5/5] phy: renesas: rcar-gen3-usb2: Set timing registers only once
Date: Tue,  4 Mar 2025 12:48:26 +0200
Message-ID: <20250304104826.4173394-6-claudiu.beznea.uj@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250304104826.4173394-1-claudiu.beznea.uj@bp.renesas.com>
References: <20250304104826.4173394-1-claudiu.beznea.uj@bp.renesas.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250304_024839_530892_848AC582 
X-CRM114-Status: GOOD (  10.43  )
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

phy-rcar-gen3-usb2 driver exports 4 PHYs. The timing registers are common
to all PHYs. There is no need to set them every time a PHY is initialized.
Set timing register only when the 1st PHY is initialized.

Fixes: f3b5a8d9b50d ("phy: rcar-gen3-usb2: Add R-Car Gen3 USB2 PHY driver")
Cc: stable@vger.kernel.org
Reviewed-by: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>
Tested-by: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>
Reviewed-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
---

Changes in v3:
- collected tags

Changes in v2:
- collected tags

 drivers/phy/renesas/phy-rcar-gen3-usb2.c | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/drivers/phy/renesas/phy-rcar-gen3-usb2.c b/drivers/phy/renesas/phy-rcar-gen3-usb2.c
index c663910d6163..617962a51e81 100644
--- a/drivers/phy/renesas/phy-rcar-gen3-usb2.c
+++ b/drivers/phy/renesas/phy-rcar-gen3-usb2.c
@@ -467,8 +467,11 @@ static int rcar_gen3_phy_usb2_init(struct phy *p)
 	val = readl(usb2_base + USB2_INT_ENABLE);
 	val |= USB2_INT_ENABLE_UCOM_INTEN | rphy->int_enable_bits;
 	writel(val, usb2_base + USB2_INT_ENABLE);
-	writel(USB2_SPD_RSM_TIMSET_INIT, usb2_base + USB2_SPD_RSM_TIMSET);
-	writel(USB2_OC_TIMSET_INIT, usb2_base + USB2_OC_TIMSET);
+
+	if (!rcar_gen3_is_any_rphy_initialized(channel)) {
+		writel(USB2_SPD_RSM_TIMSET_INIT, usb2_base + USB2_SPD_RSM_TIMSET);
+		writel(USB2_OC_TIMSET_INIT, usb2_base + USB2_OC_TIMSET);
+	}
 
 	/* Initialize otg part (only if we initialize a PHY with IRQs). */
 	if (rphy->int_enable_bits)
-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
