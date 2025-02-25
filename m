Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 24F19C18E7C
	for <linux-phy@archiver.kernel.org>; Tue, 25 Feb 2025 12:05:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xKsjFB+1nSJI6pOueFAY23kfPslsIWIhwV7+9PyDJhM=; b=hNFH2J3pE2seTW
	vAwqXLFzmOcyITdKGxYT1wJmbLA3J9QGAbaTlv+k0u3Q12JhRrnfB5yCa824WDK12SnzXsLmGhDOI
	ZXwU9h17xX9N/l2sMF85O9KtibIdwHQPJxwFVO/kfEuVnC9rfBFlpog1QGTl4zSXMdM36HAfVachX
	CoUy8sBEk2/SS4oVZFXO74lKvkdCg8/7yRwqz65wRNPfupZleRiiVIBrqDIpFdI04dScuFzqEDIqP
	Mpqdq7ow+AhqSuAZ1TfuHT02DlvDkNJ6MMnrn97GaWVZ/dFztZL2z2bn2TWylGD5MR0eh4WFbBvNm
	yhKyC1HjMP9uv3URPT6A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tmtgy-0000000H99n-3BgO;
	Tue, 25 Feb 2025 12:05:40 +0000
Received: from mail-wm1-x331.google.com ([2a00:1450:4864:20::331])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tmseo-0000000Gvoa-0J3J
	for linux-phy@lists.infradead.org;
	Tue, 25 Feb 2025 10:59:23 +0000
Received: by mail-wm1-x331.google.com with SMTP id 5b1f17b1804b1-4397e5d5d99so33646285e9.1
        for <linux-phy@lists.infradead.org>; Tue, 25 Feb 2025 02:59:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1740481160; x=1741085960; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=gvELEwWWQBEiORRake36OoQXvOrT2uHpRxrgYMRnO6c=;
        b=IFmcmeZqKReUwu8rzytmI/v51shhnI5Q6lxlYyKYMu30BHEj7cLmY4cZAfzRW0pRzS
         VeD+qWsa8p3vvH5vScqBTsKOIkPEp0boA9+AK2wAWCyDhJiilBdobY6IPCrUcYovDZVm
         +WyXquDAcUgSvXog1eNR3rLgUZc7mFhwOuW9c2sEMYXtLgGnHGw9jTT/5KfOibuJtDCS
         YjWtXUUJD/u62waDXUrPsy92Fx8Wtu/hQA/Za/woME5pTVQn8fmo/hmCL8pYvnW+z7yW
         O43YjwFhiZFqZGpPV9nqYbW/CjdBV8B6uMRTny2+965IXO5n/piEoyIWz4U/S0VDRNmN
         ycUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740481160; x=1741085960;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=gvELEwWWQBEiORRake36OoQXvOrT2uHpRxrgYMRnO6c=;
        b=YOP7pt3WfvrpNGuY7Pvclcg4Pvnd1l66OaUiMFxnbewie2jrJP6vgt8U7FPxHX/tVd
         XB0knUHyOKcJhMDyM9X8WuGOvNTPY+ETihurEs+ZpRF5AzyHi6EI1rC+9ggYl+V3OnK/
         4+pxysdMD46Up4MWjO9SOjqun8vkC4X4bIpa5P70E8R+EbEjSLtqBUrOMUEVQgavK3ci
         bU0bEC3X0tdY7sOWGkpbnFKqfUz9Z5tvNfIsoB8hj5/urbE9WhN/K9uhk764awSd6Q2B
         EDkX51iiR+aqvEeahQF/OiBZWy6wuKPHKX9IOkC/uJpUJ3nvvsiHIoRPzgFeaugamS2m
         nKWA==
X-Forwarded-Encrypted: i=1; AJvYcCV1b7hKB+8R8zOxZNgu/DNj1UaAubRELU/NqID0MYqw8JwBG9xyPUzPIA9rXNjzMdXk3r9M4lNtR6Q=@lists.infradead.org
X-Gm-Message-State: AOJu0YwtMw+v4W87nXPQ21QAtVc9sK7KKiUzpkTVJJmMx1ddMrIZeAYS
	47zopqOaqPlBtwKwa5VpFJzXoXulPLHrcGLC4N0Dd1kofFYyOhqtM82hMUraxi0=
X-Gm-Gg: ASbGnctLyN2L3usmMCKkFi50F26h0o5KMnb9XIRwp40NdxvlHngQKd9XkQ6RPeiNP/3
	/SnQh3hyfWtA0g72+hRraFUkYkzoni3DVdVmW7oSCSCIEzIWSiGj8dIf+Kf0HxP7pgQq6/dgmCv
	69JuV+q9zKJ52epu7VE8rAGT85baS8iFDBDhrTQy/14kvWqmoNfdFRPN50a5MIdbRhXXkwyzeh6
	ys8T9baQYCNawni3Dp2PAyYoKch3YdmTnY62kCzaZBM/+msYsPBukL1b0TYuZbC9zStIp1P5ft8
	bjeSMYfr6mkZLI/h2klHsBEZLVtfK7JmR81DruyZqGdwJIedAcJxI+g=
X-Google-Smtp-Source: AGHT+IHtRIhZcnRthP8uOU/cg1Oi5cOCbCc+gYuPmxUUUX5BgUtaRXrGdvBE+71WlZEL5TaXm3qZ/w==
X-Received: by 2002:a05:600c:3111:b0:439:9f42:c137 with SMTP id 5b1f17b1804b1-43ab0f31010mr26280405e9.11.1740481160397;
        Tue, 25 Feb 2025 02:59:20 -0800 (PST)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.25])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-43ab2c50dcfsm12588815e9.0.2025.02.25.02.59.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 25 Feb 2025 02:59:19 -0800 (PST)
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
	stable@vger.kernel.org
Subject: [PATCH v2 4/5] phy: renesas: rcar-gen3-usb2: Assert PLL reset on PHY power off
Date: Tue, 25 Feb 2025 12:59:06 +0200
Message-ID: <20250225105907.845347-5-claudiu.beznea.uj@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250225105907.845347-1-claudiu.beznea.uj@bp.renesas.com>
References: <20250225105907.845347-1-claudiu.beznea.uj@bp.renesas.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250225_025922_110818_15CE4729 
X-CRM114-Status: GOOD (  10.91  )
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

Assert PLL reset on PHY power off. This saves power.

Fixes: f3b5a8d9b50d ("phy: rcar-gen3-usb2: Add R-Car Gen3 USB2 PHY driver")
Cc: stable@vger.kernel.org
Reviewed-by: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>
Tested-by: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>
Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
---

Changes in v2:
- collected tags
- add an empty line after definition of val to get rid of
  the checkpatch.pl warning

 drivers/phy/renesas/phy-rcar-gen3-usb2.c | 10 +++++++++-
 1 file changed, 9 insertions(+), 1 deletion(-)

diff --git a/drivers/phy/renesas/phy-rcar-gen3-usb2.c b/drivers/phy/renesas/phy-rcar-gen3-usb2.c
index 5c0ceba09b67..21cf14ea3437 100644
--- a/drivers/phy/renesas/phy-rcar-gen3-usb2.c
+++ b/drivers/phy/renesas/phy-rcar-gen3-usb2.c
@@ -537,9 +537,17 @@ static int rcar_gen3_phy_usb2_power_off(struct phy *p)
 	struct rcar_gen3_chan *channel = rphy->ch;
 	int ret = 0;
 
-	scoped_guard(spinlock_irqsave, &channel->lock)
+	scoped_guard(spinlock_irqsave, &channel->lock) {
 		rphy->powered = false;
 
+		if (rcar_gen3_are_all_rphys_power_off(channel)) {
+			u32 val = readl(channel->base + USB2_USBCTR);
+
+			val |= USB2_USBCTR_PLL_RST;
+			writel(val, channel->base + USB2_USBCTR);
+		}
+	}
+
 	if (channel->vbus)
 		ret = regulator_disable(channel->vbus);
 
-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
