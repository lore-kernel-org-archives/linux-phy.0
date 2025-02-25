Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5BED1C19777
	for <linux-phy@archiver.kernel.org>; Tue, 25 Feb 2025 12:05:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fhts68k0Mpki+80EBm0h+zBZ5Nkvl0YG9/69g+B++Pc=; b=Di351SiO/PnQHx
	gh4B+PXl2CWjZi01zp4nodoy77TUDlyysWz93kVSZxvjHSZoE+NCrhN+LWUGedJ1HLJ/3Uqgx2kRt
	Epj5569cSMF+f9D6o4Rg2yG3fFuCdphdzknwZtjrU13jevcuqbdUROUUq5avXUuVeWj5qn7xvSBOR
	g4PUVjILXUgBVDqDFVpr1i9vmLiMzpBs3WiCNhpKJTvSyDoU8fC+MKDcGOWAd9PIkM/OfuqEnDMMq
	wkmppwdN7Y6IAdYLlolADaq17YeFQs5v2N1RnLBcmRDVCK/odN4PXFjn5V7zU87I7qvOApw413NWy
	LNPj6q65URW0K3WepwVQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tmtgz-0000000H9AV-0CDw;
	Tue, 25 Feb 2025 12:05:41 +0000
Received: from mail-wm1-x32e.google.com ([2a00:1450:4864:20::32e])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tmsep-0000000GvpI-1BbV
	for linux-phy@lists.infradead.org;
	Tue, 25 Feb 2025 10:59:24 +0000
Received: by mail-wm1-x32e.google.com with SMTP id 5b1f17b1804b1-4394a823036so51710555e9.0
        for <linux-phy@lists.infradead.org>; Tue, 25 Feb 2025 02:59:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1740481162; x=1741085962; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=SvjAeJYy02UXwEIBH2Mapc2zFP4oPiRLlb+kj3I0bAc=;
        b=eiPQaqun7J38YppGRnULO//1XGW1vIByPXnei5tNbhbbDLIVMcDrlWda0DwSHcWqB2
         CBQkB/V6lk1YiZAZIPxrLAjO/AnXojTW4SPu3Ogss3I3P6q9m/mX+8k1mayHy+Jv5tUY
         hg9HgSwplZN9DUVNeafPeF7TXjHR0Vii7xwIcS+/u2PS2/mS1FBMG52ZNB637Qdl3Mt6
         K8DF9eUGRc5/yAElJIactJhGUJikomJCxCgPVPu6O6pfhnD62QtWSbWULGOa3CQtwVDz
         JyIDnAeNci0U+Hh5ApbrqZWoRNLtIS6O5zAun+698UFkxI3Z3BcIgZI940y5efXkkc9u
         evVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740481162; x=1741085962;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=SvjAeJYy02UXwEIBH2Mapc2zFP4oPiRLlb+kj3I0bAc=;
        b=lXVvvD9X4pHc2VkPLkE41qpfcqcGMAkYA9yU/B40A/cszyLJOQP91hK4nV5jDmNfio
         MK6M+eVcbijpb/TnuCCIZBtdBLVUVmEnMSVbtWXAaSKhGrJRaejvTYI0+CjXRE/LeT7R
         v6wEW4grKbC5dBLNA33d5H93Wu8g5PtrCHbgehVgB9UR6thUZljXz0yvvxZP9vd/OMQE
         Za0vn2nxn9daXVoOWvX2wAue1pJXPOqprYqBmVReII9Lf2o7y1n994UAuwpwFbV+kRDv
         ZafgTC4ozlXfYkouy0Onw+Fb8Dvmnv+HXURRKWx7KhD1l8pju9wEi7FgIJkIZe+zuSj0
         DAoQ==
X-Forwarded-Encrypted: i=1; AJvYcCU3Q81lYyD2e+ioq55uy6wMW6CqD5hfbwZv6f+9akNFd2CQCibAbKy50Aw28Xxxo+TqkdNipvYOycU=@lists.infradead.org
X-Gm-Message-State: AOJu0Yz98l3UVf7RmdDnVL6h/cdMFaGo5HSpObwI0T4qr67jA1yCK13l
	/lizR1y9xm8FJlEinHXLUwhU4IcugGSqVV8FxUggwxmGyTNUUF6h5pqUSXRKPrI=
X-Gm-Gg: ASbGnct0mZpFCmCWP3j5gubNcBWxGSC4BTXPVrtMddJ7ncjMC0/1jlbYdUESzdL8RbQ
	dEyyow9Buh85gVgZ53Yf085dzy0ChXymv47Fp7Xrv5gGcfI1BaFjJq5I9aw9S1mkepu76dXlh6g
	+bCDX+cTAeS3i9OR5trdrll/DLM8UXGk2ZCil4F0v1LniSz4B5EkvrsJcTOJSCTKYlQ+nY/tHPP
	UupZtfeCrsv05uRInG3/jEG2gLU5KA+JyhIr+H/JyNfC3dO8LcUDnmo4Xecde0XY82MT/jtTms0
	mlKMlnZtBw5PwmeermwFiW1MPnczZCB2qjH4Iex2a6Sjg1Y0I2vZ1BU=
X-Google-Smtp-Source: AGHT+IHJusFfOvPLQ/wSNXmqs3trKdVlwIwzvO0DcaifSitYECfthSTp3FPUoDPwRVwIMqUgzX4gfA==
X-Received: by 2002:a05:600c:4592:b0:439:94ef:3780 with SMTP id 5b1f17b1804b1-439aebe4a26mr165557195e9.30.1740481161783;
        Tue, 25 Feb 2025 02:59:21 -0800 (PST)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.25])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-43ab2c50dcfsm12588815e9.0.2025.02.25.02.59.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 25 Feb 2025 02:59:21 -0800 (PST)
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
Subject: [PATCH v2 5/5] phy: renesas: rcar-gen3-usb2: Set timing registers only once
Date: Tue, 25 Feb 2025 12:59:07 +0200
Message-ID: <20250225105907.845347-6-claudiu.beznea.uj@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250225105907.845347-1-claudiu.beznea.uj@bp.renesas.com>
References: <20250225105907.845347-1-claudiu.beznea.uj@bp.renesas.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250225_025923_372450_3A66195E 
X-CRM114-Status: GOOD (  10.54  )
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
Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
---

Changes in v2:
- collected tags

 drivers/phy/renesas/phy-rcar-gen3-usb2.c | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/drivers/phy/renesas/phy-rcar-gen3-usb2.c b/drivers/phy/renesas/phy-rcar-gen3-usb2.c
index 21cf14ea3437..a89621d3f94b 100644
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
