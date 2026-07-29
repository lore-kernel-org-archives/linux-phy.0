Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8A7E8C54FCD
	for <linux-phy@archiver.kernel.org>; Wed, 29 Jul 2026 11:50:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KbYJgvR+OKTS1dxtooLhoBUgaZJgjEbjZnyjUKIZxF4=; b=qsaOXSzO0PIE/h
	WVFmMif25e1o6ZOs0JxP7YCiXkAiFp/UVTDN8cgtzCpc5pcH/WkCx6vZn2Cjtb/LEqDQfRIjLcqDa
	lO0K6j2nuhWYzpwHzTeJLlC9l4QmdLjaHxgwg2P1c3zEccIyNMdChkAZ14PULRFmBh4B5vMuVhDGo
	onZ5RXy11svt+5lBU7tIrnsqTPPPnDAp0+rRtqMYwzY6zrfIGFeFkZCyE3sfik5Vbi1/Vc9DMvWMV
	DGqCKPMttV5MawXNVvFFhOQKijm5O24dHUB89Jx9eYiNuBk3j7ey+nrHbWCQzOdwReM+ms8tMtR0U
	qDnczITSVGYeGBfuRZbQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wp2ny-00000007n5r-0zgY;
	Wed, 29 Jul 2026 11:50:34 +0000
Received: from mail-wr1-x435.google.com ([2a00:1450:4864:20::435])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wp2nw-00000007n4C-1Z3L
	for linux-phy@lists.infradead.org;
	Wed, 29 Jul 2026 11:50:33 +0000
Received: by mail-wr1-x435.google.com with SMTP id ffacd0b85a97d-47db714766aso1190896f8f.0
        for <linux-phy@lists.infradead.org>; Wed, 29 Jul 2026 04:50:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1785325830; x=1785930630; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=WfEHlBrWeUh7mZraN40bmgV0Ndqv0u6Nx2aVfHZ7JaE=;
        b=C6BPa83WabvBsIzGqCvLFjIBYYXYGNCrCkAi7au8bp7BxHwzXhdkbG/7km9GFvw7P+
         VCKkfNWAMbJ6nseLGCAyE7UqnikO2yv1W6TIszuQN3+KSd7BTAvc2zKbkwI/GMnJYqsY
         PYwXpxSepM3qlBVWHnSu0dPzQRZVb3uEGNUux3d4My66qgGhc9l7VxSvNemOUa08WL6A
         IGipEaMc+D3Cv+obi99+nlZoeS/tDoRCvcJMtfOxe4ErsITVeUeKLDuYFfgC+fvLDzE7
         ZDozJUEbXT1xBN97TBaj1vASRhsiJxDzRuv2sLbDjQ2rkd2ZBJq+O4Osgcp+s76DZsET
         bXvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1785325830; x=1785930630;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=WfEHlBrWeUh7mZraN40bmgV0Ndqv0u6Nx2aVfHZ7JaE=;
        b=hH7Ayzn+vdpFq5eZr91k5uzA1/ZGe0mt77CtjsIRkwVqxlgc/SyCXJ/u9smVR+o6pc
         Ir9/iOKg60My7t6tRrcyGqTxSRl2Ffzme4EW1UoE+yhEMuJqvqsd9fpKowm52lOUT/Fy
         ODKtXIJejaOa+KlK2wdURVdfPomsqAdqUvA/tYVYO6r/Y3wyY7R1GxuExY1SJuyGXbZx
         x4oV/InXRwAhZOxnPCDmEX5AdXOAgGqPT0Bcl4I7uEWMJCcwMaq7vJuMptTB4ASiqQ68
         sBEW1ZmO+8U64f4nKwz6AyERNZZfPgyfibfDxhvQyz2SPkM2zBPQaq7h+nUO1QyTU+5y
         We+A==
X-Forwarded-Encrypted: i=1; AHgh+RqWbjQaxHMqXDu7bDSdvd/0Abmsfn3juw1gaFiX58omaHNFal5oE/mQulTWXe9jFXz+IvzMArYrNkc=@lists.infradead.org
X-Gm-Message-State: AOJu0YxbybiJ63BGD58ndPDOO5fYQreu9uKjiXJtlwYUdBjTPp2SZafR
	7JK24JcjPnSOm17sds3L3c5E+r9j7cyChemJN9AiuXdLNKAEZd6+j3Me
X-Gm-Gg: AR+sD12NuK5YO8IH4R4vw/aP5vxARhCE2IYry3nha4zG/2lM3oxpw9Oab/2RJlyzX0s
	KeGPL/V7rStpqGx+CSKvelHV9r5PHCiHDL/SxP297tGPOUpSqzj2Fplbb5DxZTvBPYV/7TIaVDT
	FOq4LkLufRRWE1j6bpZDFAxXY2Y9pRt3MsPkcyhx6pbeP02xw/EnBfepqPc+qA1ma2NI1YdZ2sQ
	MeY5NTz+1n6jK5Nw8LXW8kMdVaEoeRvrAwykOe6KPoJn+98PA8OclcUsGHmFSUj388uR0Hbnsb+
	ktm5z8X1HT1pSee9IXc+43pcH76Vq4mjBSFkSVo873+fNpWlGRk9vIMLTacslVWDH4oD+EkkDn0
	epR1VIWjPxCEdisQQFbBsQXrEUBgWlh9hNaWVen7uotmWLAbBy5UQdg/4GeyNykgLGjgHxBzbSE
	RZde8wvGIcdZsiBSzmPMeweD+4E3g091IqPX/Oy9gIJQlLJOtQQ3JSZkYVwslzVZ/Kwo/fu9X6o
	SKwfS/qSwi/WA==
X-Received: by 2002:a05:600c:3105:b0:495:6934:4146 with SMTP id 5b1f17b1804b1-497fd307c6fmr22481205e9.11.1785325830358;
        Wed, 29 Jul 2026 04:50:30 -0700 (PDT)
Received: from localhost.localdomain ([2a00:23c4:a702:d301:10b8:4461:ee04:15e2])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4957bfc2ff2sm326144165e9.4.2026.07.29.04.50.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 29 Jul 2026 04:50:30 -0700 (PDT)
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
Subject: [PATCH v5 6/9] phy: renesas: phy-rcar-gen3-usb2: Add RZ/G3L support
Date: Wed, 29 Jul 2026 12:50:14 +0100
Message-ID: <20260729115022.222340-7-biju.das.jz@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260729115022.222340-1-biju.das.jz@bp.renesas.com>
References: <20260729115022.222340-1-biju.das.jz@bp.renesas.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260729_045032_430887_7A976E6F 
X-CRM114-Status: GOOD (  11.73  )
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
rz_g3s_phy_usb2_data as the PHY configuration is shared with RZ/G3S.

While the PHY data is shared, RZ/G3L differs from RZ/G3S in that it has
two OTG controllers, OTG interrupts on port 2, and a controllable
OTG_PERI bit in COMMCTRL for host/device switching on the port 2 USB
controller, which is fixed to host-only on RZ/G3S.

Signed-off-by: Biju Das <biju.das.jz@bp.renesas.com>
---
v4->v5:
 * No change.
v3->v4:
 * No change.
v2->v3:
 * No change.
v1->v2:
 * Updated commit description.
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
