Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CF4D4E9A778
	for <linux-phy@archiver.kernel.org>; Tue, 24 Mar 2026 12:16:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=myvbzexV9P84jpi5jk/M4hF5VO2FZW/kwV4fYlboGRQ=; b=vNcLjFekEqrCm6
	pnbZnZtNB3RcA6pqJdpR70yReq8ImLEA6ljcooJ+jN/vk/13azSV5UkQh45sVf9PrbZTFS8J86Ieu
	xgFemQLGOkBbyqlibzcLZ8ikXESTy4pITQ2i7rMaAeGcvl6ha3iULQlVsV1sk8qtBGu+iKx/LB94e
	eSUhpTxtCbK7FKYwDJZBOH4ikqdEByH4E3AZHsdYaLSvR/KgvEGdxO4Rprx/PSKwcHghl8wuxmmFa
	uhAlWZkhY/kaflc8kyIz0jKYaju63zlTVNrhW9F8jfBjfrRM7hHX7gT6sO5xD7sF4t4+25C4yAPXj
	Mn5rMvDsq1INLsI5GKVw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w50gF-00000001MBJ-1pHt;
	Tue, 24 Mar 2026 12:16:19 +0000
Received: from mail-wm1-x32e.google.com ([2a00:1450:4864:20::32e])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w50gC-00000001M9J-3KvZ
	for linux-phy@lists.infradead.org;
	Tue, 24 Mar 2026 12:16:18 +0000
Received: by mail-wm1-x32e.google.com with SMTP id 5b1f17b1804b1-48557c8ad47so8446045e9.0
        for <linux-phy@lists.infradead.org>; Tue, 24 Mar 2026 05:16:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1774354574; x=1774959374; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=4cOxEkIZIj6Xg1xsxLA1DjkGW5e6LCK9Hqybd5NbOHw=;
        b=GYv8p5T/bsr5ev7AIuapaiXVGQ4V8tSEXjRsQmWkEhihB008n07hqcjfh20q75Dr54
         KZyaw61KFUlr0fLlwkATpKmt7bCETH5W7j7kHpr/r4kbo8L84XsswWwx9sQFh9f//Jkw
         sVCKkl75gBwrAYiUATugPgWt8Ydfba3Kmb8XesbVpF6Aadw/0iTcYy5R43AzKxQkgjEC
         X2CSAP3sfPvrp1EDajckCf2DCg9g/ioZaANOBcAVdQY6tFlv3mmeHZzW5SkxPDmE6mvh
         WyrDVDxf9FcERszUM7Q/MAB62Ks5sDMCKK3+QJHptxgwEBYukJ040drU4Otnkvec2XxF
         My8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1774354574; x=1774959374;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4cOxEkIZIj6Xg1xsxLA1DjkGW5e6LCK9Hqybd5NbOHw=;
        b=DHx12Lrhn//KpMkHd+rRQEXa/lKfYArLIpb/Nc3jT1n3HcZQ8JSPdkf0xuJb/UuCMH
         OT2PjbcikLLe+8f4JRzC4eSDnuFMs3g2p/IBuUzAJfvFz29SCRHWV3Ob5HuxeCjGWIRS
         K+EpcPpl74wdWds0MJACIzyr07Popgyx03oqp2z4SzorscMhnMvvCQMGi8gx0QR85vS/
         XzHTY5t+5yClhu0L91PtlUljsSO7od/F8k3qpAqUa5XiNH5wkGEJ3cyi7dfOzvsxSzv8
         guXyzV8bkeQcgdm99JiKsQ6DhmkOzQ1+3H4Ds7YsOpe0SlkGmXDOcKB6yNqg6LdV6h1W
         d5mQ==
X-Forwarded-Encrypted: i=1; AJvYcCWnJUb18WQfpqvO1FeECsb4uHtBIQhf+V2dUPS4o1c7Z83e3zAdNjBbwaV/ioP4CguDba0iYn7MhGY=@lists.infradead.org
X-Gm-Message-State: AOJu0YzjoyEVW16LmZnxJhC98yfw1c2P5Pp1cvG5FLDDleQZ8I11t2mX
	DfBkSyL7Q1FRtMQEmu2GivoPcInf9LKvG+d8MBetzBJn9A+bn9xWM94v
X-Gm-Gg: ATEYQzwsjgFeddRUIU03FLzQe1FeZrCkq6KsVkQR1XfEdQm1mCCCS5CYjFMsEX8ZxOm
	h9MPvasjFa1OmS6it7atH2ORUAva659js0xJSWbR6aZNzgG3Q+/f3XJg74m6Nf3mowPnv12gEXW
	wK9m/DjlK2oOiVJKbFO7G3Nek7Xx0oHbC7xeuy/8+s4/usnIPW5wbsRr/Q5AFSz+JIOMlT9QyNX
	lFXMTlxqbRzd4LdzEV8K4Ldv5hGgKtw/6MYVucUppEcaFMFgG85czUdWy9DQ3urCAmYyVXmC5dY
	YkPpk6yzF2FbqXJ3e8EqP8r6F4l7aOhsEKwnyepbL+uE6t3jUKQz0533Qyyr497bjEaA7h6DyY9
	KmJneoiyg+LPzl5arYlmeSQyHF7Yin42a+WJPohEXuLoM8li43ZNQnxjdmhXSkSCaHLcAJulold
	AkL8DmEWeuhtXG0raUWfkA/ajOmVtDg5Qs/yKm2PpfMODUpNv1BeBhYQga2/JxXsRGahPaaCbmm
	fOpQI4ZMrMKNzkszdosSARWKW1ZIYbkxaQOLA==
X-Received: by 2002:a05:600c:608c:b0:487:1114:d42f with SMTP id 5b1f17b1804b1-4871114d526mr30660865e9.1.1774354574154;
        Tue, 24 Mar 2026 05:16:14 -0700 (PDT)
Received: from iku.Home ([2a06:5906:61b:2d00:439a:df4c:8bc2:631b])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-487110b5589sm17744405e9.26.2026.03.24.05.16.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Mar 2026 05:16:13 -0700 (PDT)
From: Prabhakar <prabhakar.csengg@gmail.com>
X-Google-Original-From: Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
To: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
	Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>,
	Pavel Machek <pavel@nabladev.com>
Cc: linux-renesas-soc@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Prabhakar <prabhakar.csengg@gmail.com>,
	Biju Das <biju.das.jz@bp.renesas.com>,
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>,
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Subject: [PATCH] phy: renesas: rcar-gen3-usb2: Simplify ID/VBUS detection logic
Date: Tue, 24 Mar 2026 12:16:08 +0000
Message-ID: <20260324121608.3444943-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
X-Mailer: git-send-email 2.53.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260324_051616_854777_819A3822 
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

From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>

Read the USB2_ADPCTRL register once in rcar_gen3_check_id() and reuse
the value instead of performing multiple MMIO reads.

Simplify the return logic by comparing the IDDIG and VBUSVALID bits
directly. This preserves the existing behaviour while improving code
clarity and avoiding redundant register accesses.

Reported-by: Pavel Machek <pavel@nabladev.com>
Closes: https://lore.kernel.org/all/acJV-Xq-2uq_JFMn@duo.ucw.cz/
Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
---
Note, patch applies on top of next-20260323.
---
 drivers/phy/renesas/phy-rcar-gen3-usb2.c | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/drivers/phy/renesas/phy-rcar-gen3-usb2.c b/drivers/phy/renesas/phy-rcar-gen3-usb2.c
index 79e820e2fe55..74d7561dbf79 100644
--- a/drivers/phy/renesas/phy-rcar-gen3-usb2.c
+++ b/drivers/phy/renesas/phy-rcar-gen3-usb2.c
@@ -314,13 +314,14 @@ static void rcar_gen3_init_from_a_peri_to_a_host(struct rcar_gen3_chan *ch)
 static bool rcar_gen3_check_id(struct rcar_gen3_chan *ch)
 {
 	if (ch->phy_data->vblvl_ctrl) {
+		u32 val = readl(ch->base + USB2_ADPCTRL);
 		bool vbus_valid;
 		bool device;
 
-		device = !!(readl(ch->base + USB2_ADPCTRL) & USB2_ADPCTRL_IDDIG);
-		vbus_valid = !!(readl(ch->base + USB2_ADPCTRL) & USB2_ADPCTRL_VBUSVALID);
+		device = !!(val & USB2_ADPCTRL_IDDIG);
+		vbus_valid = !!(val & USB2_ADPCTRL_VBUSVALID);
 
-		return vbus_valid ? device : !device;
+		return device == vbus_valid;
 	}
 
 	if (!ch->uses_otg_pins)
-- 
2.53.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
