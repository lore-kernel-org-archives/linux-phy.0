Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6A1A3C282D9
	for <linux-phy@archiver.kernel.org>; Tue,  4 Mar 2025 12:08:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LhkrAOUhzWEeB92PLyVoGS/fS8oHI6f5m46BrZFGajs=; b=zw59K/0RQtoe6n
	QXXdStYYaddXmyaF+nYP2f7hOPC4+p4fqlFWUbZP6BPwQ/fiS0m7Fffh1EuK1oKqruQApbiYh2XH0
	AeLgpONywcWqjD9wDe1uBy1YUyXBXLzQyNoE5gKEiRmF+ytsPzRF9+tbgjuNrGgD0I/fj1eDSzIpv
	XVlulEKe+m1EdgL5jaN28q59hPnFyFlKLOVpvY179t13mtKqnU84RNdk5tZTv/YQC02ztksYoaW/w
	ghjauaOyI2QNXMk65PpvsNCVYB8f0sqfvF9qZ7H7w8AYzcUll7/6oPv2f9WaMno3QvVl1sF83YglP
	sXkUPYvF9j1v+FAJBoUA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tpR4p-00000004Wdu-0QRv;
	Tue, 04 Mar 2025 12:08:47 +0000
Received: from mail-wr1-x42e.google.com ([2a00:1450:4864:20::42e])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tpPpG-00000004GNk-0ose
	for linux-phy@lists.infradead.org;
	Tue, 04 Mar 2025 10:48:39 +0000
Received: by mail-wr1-x42e.google.com with SMTP id ffacd0b85a97d-390cf7458f5so5074128f8f.2
        for <linux-phy@lists.infradead.org>; Tue, 04 Mar 2025 02:48:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1741085317; x=1741690117; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=x5a4oKKcOuJdLssc/zk2DHBl5Am0SwZ1rfHw8fwtygc=;
        b=Q/Xi9JEXKbhIDdXSDD7NMUn1NMweEVBaHqiJmgxgNDvElwv2EQtmd922IOvkXKmJE1
         5cyNuWFkDb0/JfoWXuJPuJ2S2262OaFjh8EWPJdnluc1l7Pf7NvGklW/DnV9i5t2sLxR
         fYuIslR4BXvTvfwTSyRb7WflVb45HyoToghCVVJEmZAqopE/A0FaJJ6jVxcG0II4uK03
         Cny+MbPgrLuFvg9rJVtyorUvG10xBjJC4wS6S/EeQsWJ6DfJjw0Q+zvUDmr8iHKIYjue
         lEouL+ZNIPOzO/bB5coVOEdrmJ+FbivKh07D7d07F+MZ7VXnZdn4eC1KC623qMMJrXOa
         8GBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741085317; x=1741690117;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=x5a4oKKcOuJdLssc/zk2DHBl5Am0SwZ1rfHw8fwtygc=;
        b=on8C2N4yn1dq4d5ePoDZpc/2gP+/Yd1SBOjxiA07Wwff6Yv41MT60w7mecV9xPp3ke
         hprPqpw5MP+vsIVKCMT+k64bPjuuX/kcA+rULgT3E9JkPMK96KHbekKt+Uw3spruofNL
         lu9ZgNjpSfo4GBh6cqWKn1Ljjob4ofgU7BvG8zCclUUB7X/ys3jJ3J5WLv8FybXjsljo
         J8qJDHNHpC+FSXvJlVoV9l6gNBTJ/doaMXQGNDUrKMHqARCtUuW8WBXw7d6iwu124pOV
         /d0dgn6BNGxxmu/uJd46fWfBVuYqkk7shuwef5gpMlH5v3uYSxnzEJfpMbMpFJ0rwthY
         lWqw==
X-Forwarded-Encrypted: i=1; AJvYcCWaBrQgSW/NuP7x/sdBEjnoAEpr+wauvQwyq/aH7TeiBysHWU4F4WEbt6Z1HyJVWRudDakqkOXvut4=@lists.infradead.org
X-Gm-Message-State: AOJu0YwgsuNK3vCDymmUDMj8pmXRyadiuFKoW8mBx2Pdg6sHWnz0aBP3
	Bj5+HmXQtrfD/6S+1p4alY+ZPnZ60NUStDiBdUvoGDAvC1NCx/tbkeCiyWmMYH4=
X-Gm-Gg: ASbGncv/b8IE0Imz/w6fkhq9lsaJcaVP2AVIM4m4VSh7MTPQzxzBFdICbZrL43NfMDf
	Z+EWuGA/Kzv5cWH5Qz/Fck/1V1uWb9R3oN20pOEwWaZ1S7ti1yOPuy1qejzXb/BqNWaiYGbhjim
	CBkWXklgOGA5DmU2++Wck5H9br204y/2pImtJAVMl8NLsiXxh1H17zmnk1t8/70YOfhqWYUDvKa
	tjAWJczeb2R6cP3ZnIz29lpZ93u/p0Bb9wDQMjsf+iL5HCCgpII7zehBFsiwHGOUadxFH0Kvf8U
	AR4WQZpDbShe4C9fOkdMmjtqW/GoLHXXN8clysv85wsj98k98ED13Mldx72y0xG+Jsrw1QVGXes
	=
X-Google-Smtp-Source: AGHT+IEe/y6XNr+Pufr0eUp0xR/8PGJhWQHFkFpwqwZ0egi8lWAzXxHeV34fKxnQfAGSlETNCc8Irg==
X-Received: by 2002:a05:6000:178a:b0:391:1458:5af7 with SMTP id ffacd0b85a97d-39114585b3dmr3675285f8f.49.1741085316629;
        Tue, 04 Mar 2025 02:48:36 -0800 (PST)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.138])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-390e4844a38sm17445161f8f.75.2025.03.04.02.48.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 04 Mar 2025 02:48:36 -0800 (PST)
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
Subject: [PATCH v3 4/5] phy: renesas: rcar-gen3-usb2: Assert PLL reset on PHY power off
Date: Tue,  4 Mar 2025 12:48:25 +0200
Message-ID: <20250304104826.4173394-5-claudiu.beznea.uj@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250304104826.4173394-1-claudiu.beznea.uj@bp.renesas.com>
References: <20250304104826.4173394-1-claudiu.beznea.uj@bp.renesas.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250304_024838_237078_9EBFBF29 
X-CRM114-Status: GOOD (  11.01  )
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
Reviewed-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
---

Changes in v3:
- collected tags

Changes in v2:
- collected tags
- add an empty line after definition of val to get rid of
  the checkpatch.pl warning

 drivers/phy/renesas/phy-rcar-gen3-usb2.c | 10 +++++++++-
 1 file changed, 9 insertions(+), 1 deletion(-)

diff --git a/drivers/phy/renesas/phy-rcar-gen3-usb2.c b/drivers/phy/renesas/phy-rcar-gen3-usb2.c
index 39c73399b039..c663910d6163 100644
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
