Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 881A3CD98CF
	for <linux-phy@archiver.kernel.org>; Tue, 16 Jun 2026 10:45:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ydf38en8T+grAYMCfif2dMp297y/YZbR/cosIdyDy6c=; b=lJ3pKYo2PldanT
	YgOiqGvcz2Z5lu7ToxYjcBhdSq1dK98oAatREkspVs88EuiukFNbW36lAzeH4Ly92+nvpw/M9WNFw
	zxkOHlnN/rT4A9HvJ5HW0JXi2oqgdLbNiKasiDkPKEI+MKgKkfoUywPKztAEhcryA4Wl3/pR58WLT
	D8WWQ+/s8yUvGJ4tSn5+ZmJD4wQHHraHLrKasSsCOCeGWHG7XNYcOuaiLxL4Tjw2US1VU+WwyKgZ7
	tKyWJADNzQnTEpIQMDSVinqcIKjhyVI9NZsIrefI5aX9Dyy9suRNgXdOJypeB7cQwgfDapGXp3Km2
	c9GeLfoCGCkukVTNBgcA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wZRIB-0000000FcbI-1KwP;
	Tue, 16 Jun 2026 10:45:15 +0000
Received: from mail-wr1-x432.google.com ([2a00:1450:4864:20::432])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wZRI8-0000000FcZr-3BEq
	for linux-phy@lists.infradead.org;
	Tue, 16 Jun 2026 10:45:13 +0000
Received: by mail-wr1-x432.google.com with SMTP id ffacd0b85a97d-45ef616daf6so5000904f8f.3
        for <linux-phy@lists.infradead.org>; Tue, 16 Jun 2026 03:45:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1781606711; x=1782211511; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5YF/Sp3s2vZvjqvWbtmfXpsR2PoIW2DUzGMC5qIcCdA=;
        b=DmKiwPmQkAe4s+0fDInCcnQtVH9SzSj2UF4xgcUzVHYrh7fbf6Y9FXdXJEVsRkfTg7
         BAhw9MSVrLiHp+mrPT4ypKx3tSCpe+vweRRYUXekLgevajq/l6UHgCndOspmw7v4ezJ+
         Rch+hDw4o5QA0lq4b/iosaB9hjJhLsWMr3YE0ViCD0CYpt7Lz3EQJurwuQTAsphpousM
         /JqhbUW3tRvmDKp5x9o/VrayDzseiqeTI5l5KDTZDo13WaVJ1/XI60yg+IqFVBcLFMHV
         2smgnLFUOyCqcjfUrtra/QNlpzQv1mlNEUuhaMR5En0dduptnsyaDZdLHpVhyy2rWT1x
         yDMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781606711; x=1782211511;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=5YF/Sp3s2vZvjqvWbtmfXpsR2PoIW2DUzGMC5qIcCdA=;
        b=dlAdNM2LTzoDX6X4SmzGziyFeN+3ae2rT9dvbHDW0EJEDahAC22o40fj74vQx/ylGP
         pqVU2kdTb/+rwOMX48nUK7yV5RTYYb+P+o2NmXtG/jgWuQITXQnaL9qcpjwMxaRWLzSl
         kigrZ/nbd1L9D/gzj4rv0b9tXHDUDTLCGyzDH7P7h35FDe8thD06XoygK8J3LC/ZChjo
         5P3A0ViXSfCcsCvbH+6NeTpz5JHrd/hPJEhHAEM+O/s+eeWxDRSTxTI/0Cd5NbHRP7t2
         He2kC1B7FerGF28Jpu98hWHi4QBGSiDJjo0HQ9yg5ktZ9lakFt9qjb4DF4RgI+TZ5VXq
         I7aA==
X-Forwarded-Encrypted: i=1; AFNElJ95FAtkj4UJOtTNBk3BcGAMNYnuDo1S/gWs9VKmvQ4Tryjle6Ef/CDJe2XG+SGTMJka+c03GIsy4Zo=@lists.infradead.org
X-Gm-Message-State: AOJu0YzhxJC01rHVJmP9kBiC1++KBlLd/DsjoL3kr2W5FDI3URAWWxq8
	+k1j7Yxq63HUvqYnQNO2lfKfqlkTpiSZvOa9v75nPCV1v5XbRoHwFpId
X-Gm-Gg: Acq92OGCL2/lFgTDSEcmXBmbGchjN62Eh1s4d5ov7ZgTz4BPvDaA5HquANZkvPWUfW/
	OwccQUlwc9LjtjV1wrGSsPodzfjzCRJUUewBfobH8KjmvIWdH59Q/q8tP6/InxXXKWZGEXP/VQZ
	NdsHA9furcn5V73QFjLpJtPWM6wf5SVp/76VFgdTPAXzM37y7k3zPfX8pz3TkzOvyaKFt9jtO37
	eJYZji4b2ps0+Vc5zH/EBlnmYyTy6vtZjDb1tGy3fTcXPMRIHL8oW+Lnl1HX1KBxq491uRRm5fP
	XguCLIXRNuKBHYKgGASS++SHpcz0NZgaGa5C/S6z5GavCkQ9BUVKfVTbvOKdZDr3WHsSvYu8Avx
	iXvJSGcg2OuIG+Z4+g3KJfuCyu+f8wrxHFMEcxOq8qlv6mWv09Kci0NuZNh+wf9T2PCOi9Pms5Y
	b51c00lnpwdpdnaiQ1p3tvRbD67l+FlqeH37aZ5LRv9tu8ESoV
X-Received: by 2002:a05:600c:3490:b0:492:324b:dc66 with SMTP id 5b1f17b1804b1-492324bdc83mr9063035e9.5.1781606710315;
        Tue, 16 Jun 2026 03:45:10 -0700 (PDT)
Received: from localhost.localdomain ([2a00:23c4:a700:7301:7499:34c3:598b:e20c])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4922fa47da9sm82458485e9.5.2026.06.16.03.45.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 16 Jun 2026 03:45:10 -0700 (PDT)
From: Biju <biju.das.au@gmail.com>
X-Google-Original-From: Biju <biju.das.jz@bp.renesas.com>
To: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
	Vinod Koul <vkoul@kernel.org>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>
Cc: Biju Das <biju.das.jz@bp.renesas.com>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	linux-renesas-soc@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Prabhakar Mahadev Lad <prabhakar.mahadev-lad.rj@bp.renesas.com>,
	Biju Das <biju.das.au@gmail.com>
Subject: [PATCH v2 08/10] phy: renesas: phy-rcar-gen3-usb2: Fix devm action registration for disabled VBUS regulator
Date: Tue, 16 Jun 2026 11:44:50 +0100
Message-ID: <20260616104459.410743-9-biju.das.jz@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260616104459.410743-1-biju.das.jz@bp.renesas.com>
References: <20260616104459.410743-1-biju.das.jz@bp.renesas.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260616_034512_835998_B0B4422A 
X-CRM114-Status: GOOD (  11.14  )
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

devm_regulator_get_exclusive() initialises the regulator with
enable_count = 1, requiring the consumer to disable it before release.

The devm disable action was previously only registered when the caller
explicitly requested enable, so when the regulator was left in its initial
enabled state without an explicit enable call, the cleanup path skipped
decrementing enable_count, triggering a WARN_ON during regulator
release on device removal.

Fix this by always registering the devm disable action based on the actual
enabled state via regulator_is_enabled(), regardless of whether the
caller requested an explicit enable. This covers both the explicitly-enabled
case and the initial state set by devm_regulator_get_exclusive().

Fixes: 24843404efe4 ("phy: renesas: phy-rcar-gen3-usb2: Control VBUS for RZ/G2L SoCs")
Signed-off-by: Biju Das <biju.das.jz@bp.renesas.com>
---
v1->v2:
 * Updated commit description.
---
 drivers/phy/renesas/phy-rcar-gen3-usb2.c | 16 +++++++++-------
 1 file changed, 9 insertions(+), 7 deletions(-)

diff --git a/drivers/phy/renesas/phy-rcar-gen3-usb2.c b/drivers/phy/renesas/phy-rcar-gen3-usb2.c
index d06fb52ed5f1..ef38c3b365d4 100644
--- a/drivers/phy/renesas/phy-rcar-gen3-usb2.c
+++ b/drivers/phy/renesas/phy-rcar-gen3-usb2.c
@@ -905,15 +905,17 @@ static int rcar_gen3_phy_usb2_vbus_regulator_get_exclusive_enable(struct rcar_ge
 	if (IS_ERR(channel->vbus))
 		return PTR_ERR(channel->vbus);
 
-	if (!enable)
-		return 0;
+	if (enable) {
+		ret = regulator_enable(channel->vbus);
+		if (ret)
+			return ret;
+	}
 
-	ret = regulator_enable(channel->vbus);
-	if (ret)
-		return ret;
+	if (regulator_is_enabled(channel->vbus))
+		return devm_add_action_or_reset(dev, rcar_gen3_phy_usb2_vbus_disable_action,
+						channel->vbus);
 
-	return devm_add_action_or_reset(dev, rcar_gen3_phy_usb2_vbus_disable_action,
-					channel->vbus);
+	return 0;
 }
 
 static int rcar_gen3_phy_usb2_vbus_regulator_register(struct rcar_gen3_chan *channel)
-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
