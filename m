Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5ACACC3ABCC
	for <linux-phy@archiver.kernel.org>; Wed,  7 May 2025 12:52:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ad4PtZ8XRAOFYsn3lTdVWSiv4h9UWNreB1yCNJXL5iA=; b=4BkHaAcfffweD8
	dfJV4Ny1LrKzIoW5CecOVA22Wq703XFfBhZLBLd1q2lPjCbprJwRgOCX2lsBjBAyssIKnHjOfxsZw
	tWnF/KnO2tnnyAiqF/l5U7UBHBfNQJ2Ibn3Br2+7Fs2HQCKAhFURgpvV4Ei/XujQnz+cAq9rrq6JP
	r/ZshpjQSXHOt1vrccB+niSlD9XNeNP2PQs1yNmdXuQZ1ABkMkd7CxWsuyUJa10dPamI8tBtOd5LG
	7mJOZzyAKtzoIbWTa5Xm/80MuqlQnKxc21KM8u6SwWYxUS+b+sw5FtecqS9m9B4KGSoCiI34jFbjE
	WcowKwGRuuz9BRQ3BLLA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uCeFr-0000000FTeX-0SFo;
	Wed, 07 May 2025 12:52:07 +0000
Received: from mail-ej1-x62b.google.com ([2a00:1450:4864:20::62b])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uCeEX-0000000FTME-2DEZ
	for linux-phy@lists.infradead.org;
	Wed, 07 May 2025 12:50:46 +0000
Received: by mail-ej1-x62b.google.com with SMTP id a640c23a62f3a-acb615228a4so185648866b.0
        for <linux-phy@lists.infradead.org>; Wed, 07 May 2025 05:50:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1746622243; x=1747227043; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=TPcRXEDFKMfOBueOV1ZZggEMaCzz9uMyyXHjT+cR4Zg=;
        b=IlUBQkK7r3OkeilmR6Kn7vYz4M1paQepa9Q2EMhgo5QZwVJPisuACHhaTeYi0/Ehea
         R1qlYH6rc6bpO1Fd4rZs+dL+tdZHVh2B7Jz3055gDAB+UTZf3qYkl3qtmZJURjwVRxgJ
         7gr180szCOrYUJ/z08LIqO5RvJuAidVsk2msira+JqQ1cAYJ3u1aQdgrJZJnWiE09She
         7S+FJ/H4qk4xc+bIs12QShopm3VmgAbj9QPrC0kzr2b3lcuif6YtG2HWUlykpvUAgWhN
         44YCukYKo+BDO/n0nghi+eeKrFvIF00EdbChoBZQFHu/l5wR/aN4VAqYRO+4Yu+pyEj8
         74Mg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746622243; x=1747227043;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=TPcRXEDFKMfOBueOV1ZZggEMaCzz9uMyyXHjT+cR4Zg=;
        b=j5B5nTfOAbg7YK/Yl/tJp97uVdXbEL0VlD2qddXf4aip+yGFNAJvgWwaQmynDpMXWt
         jBsDjhP1k80m9dOin5/pxmoOt3SiWwXWktf1sAlUaWBSnrW9JINjIunT5KfRmd1qh4As
         boBTNt/2q21wG/bDizDSCZzSNrrwB8BGDdzrW6JKcFlwRE2G9PUVL8p0cFn2XaM6kmtQ
         kRzCUs+qEcPtqtTLEPU1esNr115mF3IPl0Sluo17GT3ccpbd/LK0UZAx1PhWGc/1iNsy
         Gme39Okdhsfuqvs4J1V1ZsoZID+GiWL7fbrW0HLelKOox8ySYCYH9xOZOl+8nrypBa3H
         yA6A==
X-Forwarded-Encrypted: i=1; AJvYcCV9cuZwS8tMRdE4NAPUa44al++qns4ikgqDHWzUk6PO6mT+pM4Fb5ZwPfJko+VcrJefCVlzDM0b0+M=@lists.infradead.org
X-Gm-Message-State: AOJu0YwFSTDeuZgIosvFSU8K4ujwSedq5RuFtNo1I2AvcppWGNnqIyo8
	i0A/CowAiMRjVTnkhbkBV1/mlI4/RMHAlgS38u4S44NZCnwavU3EXGBgNKqizbI=
X-Gm-Gg: ASbGncse1oeRu+uN/QpEFEnnbjVEHPPj/CCkptAC5iHtyuv/DAsG74CkrjBXq8Lc2R3
	paTf+tltP/vOZTFRl1alnpudsR2sYylX2Z0hFrFrOTgBuiHYQrCFCNBEX0rKWLtLdLkTjn00HKE
	JN8/bpt+nVBp6rvW3KmDcbfnIksyrDfNLLZXUE8ifqdPDnfbBBknlm61e9Egc7dZdQgLx9PHmi7
	2iZFSo5NOgjbqiMHvWvfx+b3peAbYrY7SDSK2nBspRWB+vikCRai2KZARsDsRZF6OTJHvkuJiF2
	xjdxp6HyoAzSlthg4osBUXT/Bvf+3lx2RLx/7t+9uE+m0onz1ClADXsT15IRjlbdCRndaXU=
X-Google-Smtp-Source: AGHT+IFgr60R6EGG/hfv1qbucadH38+M65/DG+xuJSaXMntsG1skx5u3NWADh8GI7FcyDwNsoxp1ZQ==
X-Received: by 2002:a17:907:1c9c:b0:acf:877c:ccc7 with SMTP id a640c23a62f3a-ad1eafbe4f6mr342734766b.13.1746622242991;
        Wed, 07 May 2025 05:50:42 -0700 (PDT)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.147])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ad189146fb4sm913182766b.10.2025.05.07.05.50.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 07 May 2025 05:50:42 -0700 (PDT)
From: Claudiu <claudiu.beznea@tuxon.dev>
X-Google-Original-From: Claudiu <claudiu.beznea.uj@bp.renesas.com>
To: yoshihiro.shimoda.uh@renesas.com,
	vkoul@kernel.org,
	kishon@kernel.org,
	geert+renesas@glider.be,
	magnus.damm@gmail.com,
	horms+renesas@verge.net.au,
	fabrizio.castro@bp.renesas.com
Cc: claudiu.beznea@tuxon.dev,
	linux-renesas-soc@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>,
	stable@vger.kernel.org,
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Subject: [PATCH RESEND v3 5/5] phy: renesas: rcar-gen3-usb2: Set timing registers only once
Date: Wed,  7 May 2025 15:50:32 +0300
Message-ID: <20250507125032.565017-6-claudiu.beznea.uj@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250507125032.565017-1-claudiu.beznea.uj@bp.renesas.com>
References: <20250507125032.565017-1-claudiu.beznea.uj@bp.renesas.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250507_055045_564621_E9079490 
X-CRM114-Status: GOOD (  10.26  )
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
index 118899efda70..9fdf17e0848a 100644
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
