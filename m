Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D98E4C021B3
	for <linux-phy@archiver.kernel.org>; Wed, 19 Feb 2025 16:11:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uERPquHINU00KvMuZ4vjNTkMnbZZuBzETOEzY/kP9h0=; b=n4b7l8hX+Ttf2f
	npXbin+p4TiaD9+4YPMvmRzypjcIncUF+CXcPH2CnZvtieIC8Ow6Py/gSkj2m6riyJVeOFiOgsRU0
	ox9a+tntqIckByjWkH+htJNKBKN7SnIGImXdKVHkvesplzh0qqOJb5eVAJ7z8KQQ0yzlG9HaahhUR
	Efc13RCPr1ZSodiJryj8nPG9ClFoZt6cTMaIfGkaeYd7tvqrtq2oH4Xe1VRLRaNGylyaNx4q94HVu
	87cCw7wvmo8MXvnd1nzBNubtpLmif6KDLNL2CjsESRvuQP4cIEbmBNagg6ucl63rfshl8tb+1OdZv
	naN4254hgVIyBmE5qX7A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tkmfL-0000000Djlq-1sYD;
	Wed, 19 Feb 2025 16:11:15 +0000
Received: from mail-ej1-x62b.google.com ([2a00:1450:4864:20::62b])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tkmcI-0000000Dika-26jv
	for linux-phy@lists.infradead.org;
	Wed, 19 Feb 2025 16:08:09 +0000
Received: by mail-ej1-x62b.google.com with SMTP id a640c23a62f3a-abb97e15bcbso607115566b.0
        for <linux-phy@lists.infradead.org>; Wed, 19 Feb 2025 08:08:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1739981285; x=1740586085; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=BtGBoe5coeUnXZJpUlOcRLqzBSKuMVRJ9kwi5GgXX1M=;
        b=E08N2s+2LuzKNjIBiDUyIYsFwoXz8WAv1OEeQ0JodfsWl9DLZOK8SWpQEyJk0QEnVx
         LDDoINtUQ/q65/tlLhWR+zEw8OGBEYZeHKB6WUtAGLCZOm2Hb5dqmkTxbifO+wgDRnpJ
         AUc7D3jnD1XwEeV0j4fa0jCMDHo2qrCREjdqqxFBYiJgc6io9FcTMhLgv1m/xDnl+tZJ
         MBNDTMZDbQUtX4nDnrC6Ku/qHZFwUevXFBKDTBKMDsAzTLDlmfO9xi8UNYpzwP5ycx0y
         vwJtr/0jcxPzEvB5UR1QwlhBo5RNrZuYEozR1yTgKKwkrb+6ztBbxuadO39USY6AU1Ag
         PtmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739981285; x=1740586085;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=BtGBoe5coeUnXZJpUlOcRLqzBSKuMVRJ9kwi5GgXX1M=;
        b=L5zE8kF1Qi735ehc3aF8eIkH36Lg0BOM5h/ZUV+KaNaQG3E25eD9CVecGzyGTogJWf
         kEIC5vM3Hdhd9Mdad3Bmiq8WcR9yiF/9rzE6assZVlXYwP4k/45O7UezfJNJbG4TkXtp
         mQYRAaCLTdOAAGuwXVPWJo9GvdFjgPzQ5ioL6zLJiCfDbvgN8T1JZOyan92byrrO1/OV
         NEnj4NhLWTDgJnGbyojOSBIlGmw1atWyqDmyKkaH1keCygpLn40cfXEzbBda51QPg8iZ
         aTkbBRXrROW7B2wwgmGVRlrOc8mlglCmTrWWqxaqht4Lmv94UIj2ZXXRAvyu95T+XKfY
         aHhg==
X-Forwarded-Encrypted: i=1; AJvYcCU8sYadaIiWe/wk7ByuQHJ/BE8paMD1uEVcrvT4sduNHK98Ti4uXACG8hEM09FkwCIixAEtywMTfaM=@lists.infradead.org
X-Gm-Message-State: AOJu0YxK3t6js8rPEvwHASv68fAb34Q1J8GbojsPW/LIf8T7irHHrdHP
	ALfZ1czYLFwvcKjsidtkR+QWqjwMKlg/5bcl0DyDTtccPRk3Nj0LtT0MZg8Ox2U=
X-Gm-Gg: ASbGncv3gHHrPReKyTyz+pKd7pgOvfE7Yhytygc07EO8V2mtkjsGdgl0TxY856dBq59
	cuwtlTZ297WXp9XJe0k83NrFKU6T0oX8LdFLahqI3Md97dirrz0DoI16ITS9EnCdboS/unNr8vH
	XuOonEglQbU0MwJCYsM3bTtsxC8TX+k710M3fQGuEbq3n244OVxgLh+KISkC/z+t0cikMwAHUtb
	mEqoEduIC8w+18mnA4t70bTCbJ2R/+HifKUhBFz/r9bzxmSbzcpDcOwH3VWQueSp0TKDjl3y6b/
	q8x/LeyekkVASqn9TskeG3oDWvTfk2D21i2JrjB41mlN
X-Google-Smtp-Source: AGHT+IHxe5ZyQ3C/l0BujyjIhZwXC57yvWHfxRUBHLFeh5ZxtlbAM5sS46OrKTP8YZUtyZ2rOwWbYQ==
X-Received: by 2002:a17:906:9b4b:b0:ab7:c3c9:2ab1 with SMTP id a640c23a62f3a-abbcd0d1b4emr437963966b.50.1739981285101;
        Wed, 19 Feb 2025 08:08:05 -0800 (PST)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.25])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-abbc0d0b882sm327791066b.109.2025.02.19.08.08.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 19 Feb 2025 08:08:04 -0800 (PST)
From: Claudiu <claudiu.beznea@tuxon.dev>
X-Google-Original-From: Claudiu <claudiu.beznea.uj@bp.renesas.com>
To: yoshihiro.shimoda.uh@renesas.com,
	vkoul@kernel.org,
	kishon@kernel.org,
	horms+renesas@verge.net.au,
	fabrizio.castro@bp.renesas.com,
	robh@kernel.org
Cc: claudiu.beznea@tuxon.dev,
	linux-renesas-soc@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>,
	stable@vger.kernel.org
Subject: [PATCH RFT 5/5] phy: renesas: rcar-gen3-usb2: Set timing registers only once
Date: Wed, 19 Feb 2025 18:07:48 +0200
Message-ID: <20250219160749.1750797-6-claudiu.beznea.uj@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250219160749.1750797-1-claudiu.beznea.uj@bp.renesas.com>
References: <20250219160749.1750797-1-claudiu.beznea.uj@bp.renesas.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250219_080806_542951_7EE9701A 
X-CRM114-Status: GOOD (  10.19  )
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
Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
---
 drivers/phy/renesas/phy-rcar-gen3-usb2.c | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/drivers/phy/renesas/phy-rcar-gen3-usb2.c b/drivers/phy/renesas/phy-rcar-gen3-usb2.c
index 087937407b0b..8e57fa8c1cff 100644
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
