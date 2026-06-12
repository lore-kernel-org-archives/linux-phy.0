Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4DEB3CD98CE
	for <linux-phy@archiver.kernel.org>; Fri, 12 Jun 2026 14:31:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pBCqlZcwu2eBf8HW/GHkObAmbSm3j8Uann7IO0qWzks=; b=BLwvKqAmWOckl0
	xIi2KsIRtuO2GOgfm9izjySyULYLDKSb9lVKSoFf64yWEI8qRqva3pvd/OjsCiSNEDNAbHkABwU9L
	b9zZsBudRXvk6LuBqrDMXFycTBPCEYUj0SMXnP4khHVZRICk+FQxZqChZW71YGlhgNU92kAnVU/Xp
	kGjQwhuZtDaaF8/j3Q1bwnXm9SVuNmGITPVV0/BWzQ0EoyGRaRgVuYftqbFTtRzUZeGaEIRHjalqq
	R6Rg32PIdNfPCfoaBL54lfaNWz8fiLwc7LWijFEWH6ZlV6TDqANj1kVpC2p8dF0wE4zF+3cvcV2yY
	lVjFNnOWg4Zkr9jjTzGQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wY2uW-0000000B4im-0FHI;
	Fri, 12 Jun 2026 14:31:04 +0000
Received: from mail-ed1-x52c.google.com ([2a00:1450:4864:20::52c])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wY2uT-0000000B4hJ-0WTJ
	for linux-phy@lists.infradead.org;
	Fri, 12 Jun 2026 14:31:02 +0000
Received: by mail-ed1-x52c.google.com with SMTP id 4fb4d7f45d1cf-68e5f7c1131so1782455a12.2
        for <linux-phy@lists.infradead.org>; Fri, 12 Jun 2026 07:31:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1781274659; x=1781879459; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=dlNfWCkBlvoF7s7VT/UN315rRjUSgiiIqxtqEozxAsM=;
        b=ZEDPv5lSYHN0Rnet95ieEI26ctroKsXVNuYdudUZVK0TuyVpR5SSh2fPt3wRw5c39H
         VsW6nLkf3wE/2+anz2ifovg1ysDXQE58CcG4LYZ8B6bk56BTThZ85iLf6+nNQ5OShIPe
         wQkvmq3tLMuUTEr2u+5DGfXcdr2vAN1s7gamJOSdo11HaYtALn5i1tgeH9WTcirRMuOB
         ZJxkcVtRTuwPYnypSN0KzgfbL7faUaUEtqrb2O0Kfd5qMGBGwpWf4Ca4K9CdYlBVK9mN
         1W/3ooIOVHj+Y7GiqUWrgbZ/k28UpJaZrszix/+n6+811aFQidWYnUTVc/OSV+lVWPhF
         FtQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781274659; x=1781879459;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=dlNfWCkBlvoF7s7VT/UN315rRjUSgiiIqxtqEozxAsM=;
        b=qPVwIq2HhlBwOmpMWh1sAP2V6qu6P+c38h895zy3d2hXP/YU7MZDg2XG8JG/5h+Wmp
         LPjNJ02ywE6EbwMOFRsl1mGxHmDK04mXMtKhcSAvbSXPs9EK5viAOrD3ndFSLZjAsury
         Jtra7NSVfDT/PhfrcEYN4vIOlgYyPO9n3Hl00bV66WasTXdWPIoJ3kmAWVLXMnNny9bq
         v5cEWkmBS2dGrw8jLIEqjWf6icVAQS0Jpny6Am1ba14GnOQ2a3uvCafjWognamcBNDmd
         Q/sS7+nlgo/MTA5nQzSsm3gwxaSeQGdp5gI2I0GrN8+B4IMYJmYYh9Ps8IVLcINQwkHc
         o2dg==
X-Forwarded-Encrypted: i=1; AFNElJ+mp4z9p8UbQvdvFKJYEQ9c+sEJ7C4plZXQdgUoy7Oem7oYfyEbQeOJBuN+tNtxzg9MaR3PrrxOsoY=@lists.infradead.org
X-Gm-Message-State: AOJu0YwxjhMmYG4jmzLZgEZvYE5NwpOVlD6G2DUG7YJfQ7+9HNQ2IbHb
	o3idSFK1ZED2jR62/nOt8lMH6hw7nnJPRhLv/tOALTagtltNIN9R5eD+
X-Gm-Gg: Acq92OHTHZQpfmD2oS3K0kmfRYMIHS+Tr+8FtvovVWmdihsDlJV1NeVJCsxaQia8xlv
	p0HHFOaDpsamKlVsv3Yk3O65UEUhpe5IMePFUQLQoCtiG+hcOwBrieven9U3N2Svb78TOn4wX38
	lVDjM7PC6nyd7g4gBsLU54eCXGDs7ZqsFROV8cs69DDUWDqoqUR5rCfjnWLHiasg+V+GVAdM8QX
	/ZqhuiiU/OgdHGxR2WyIQFzfSMKgwLGbdmjwH7mvR0zqySwbc9ESD58Se+Ql0BwdhHKmtuDt9AH
	isaKSRFHzlrdaR61f2MLHDqGjBz3fJzwGC7XyAErLPcveJ843Yk5aDsicTKI8FuQmyVepztoMAd
	ii0rWDZMABtQNWbpcuS+iPEhKp6iiERCQMvUagkFy3+owvNUuOfWYerxzxIcFiXvwCltTc4S+Ll
	fggFKm+MgPg4XfjICV5Q9uJ/Zs+W27fAdZWlpC3cgynnG17zGeB0jJbjoIrNg=
X-Received: by 2002:a17:907:75e6:b0:bee:4562:3308 with SMTP id a640c23a62f3a-bfe2a1149d8mr95992766b.26.1781274658810;
        Fri, 12 Jun 2026 07:30:58 -0700 (PDT)
Received: from localhost.localdomain ([2a00:23c4:a700:7301:c72c:50c4:8b28:9a3a])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4606f2c3782sm5850016f8f.25.2026.06.12.07.30.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 12 Jun 2026 07:30:58 -0700 (PDT)
From: Biju <biju.das.au@gmail.com>
X-Google-Original-From: Biju <biju.das.jz@bp.renesas.com>
To: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
	Vinod Koul <vkoul@kernel.org>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>
Cc: Biju Das <biju.das.jz@bp.renesas.com>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	linux-renesas-soc@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Prabhakar Mahadev Lad <prabhakar.mahadev-lad.rj@bp.renesas.com>,
	Biju Das <biju.das.au@gmail.com>
Subject: [PATCH 08/11] phy: renesas: phy-rcar-gen3-usb2: Add RZ/G3L support
Date: Fri, 12 Jun 2026 15:30:36 +0100
Message-ID: <20260612143048.317907-9-biju.das.jz@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260612143048.317907-1-biju.das.jz@bp.renesas.com>
References: <20260612143048.317907-1-biju.das.jz@bp.renesas.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260612_073101_184998_476ECE42 
X-CRM114-Status: GOOD (  10.30  )
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

From: Biju Das <biju.das.jz@bp.renesas.com>

Add renesas,usb2-phy-r9a08g046 to the OF match table, reusing
rz_g3s_phy_usb2_data since the PHY configuration is shared with RZ/G3S.

Unlike RZ/G3S, RZ/G3L has two OTG controllers, OTG interrupts on port 2,
and a controllable OTG_PERI bit in COMMCTRL for host/device switching on
the port 2 USB controller (fixed to host-only on RZ/G3S).

Signed-off-by: Biju Das <biju.das.jz@bp.renesas.com>
---
 drivers/phy/renesas/phy-rcar-gen3-usb2.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/phy/renesas/phy-rcar-gen3-usb2.c b/drivers/phy/renesas/phy-rcar-gen3-usb2.c
index 9a45d840efeb..d06fb52ed5f1 100644
--- a/drivers/phy/renesas/phy-rcar-gen3-usb2.c
+++ b/drivers/phy/renesas/phy-rcar-gen3-usb2.c
@@ -721,6 +721,10 @@ static const struct of_device_id rcar_gen3_phy_usb2_match_table[] = {
 		.compatible = "renesas,usb2-phy-r9a08g045",
 		.data = &rz_g3s_phy_usb2_data,
 	},
+	{
+		.compatible = "renesas,usb2-phy-r9a08g046",
+		.data = &rz_g3s_phy_usb2_data,
+	},
 	{
 		.compatible = "renesas,usb2-phy-r9a09g057",
 		.data = &rz_v2h_phy_usb2_data,
-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
