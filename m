Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 72B89C55173
	for <linux-phy@archiver.kernel.org>; Sat,  1 Aug 2026 14:23:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uwe5/nSheRS7bQphKIbtss5kpWnW4T9DFGY6Rpd7WHU=; b=bIPyLf+83zo4B6
	sYxyWwvBEhhRltUEvlzejWNXuMg/KZmKzsYEr3X+hgYMDdvvyygbYt+q17X+PDW3iEHWipVQV9D6P
	RJZkAaBruAzjEtdb1cJrPpFUiOorrJG2HynI1XKj1VosLG+PeykYkNM15ybTtHsElmDD05HMNpkkm
	0/c+SgFIw4FJdPh0jIRtD8METdqsesoz1A3xX8jxJd4Pzq/GqDXHBiCZB1+M6IJ/9RPfk95eZ5PNg
	KlfSOtq/kFRz6uuZNe2d7Nm6wc5u1zqEi/IhXCQjulLaWn0hJ70LKPohDwbanOwO0aGkjuEN6uXAd
	MuZy7uiqdZFTkzJgFV1A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wqAd3-0000000EirM-3POE;
	Sat, 01 Aug 2026 14:23:58 +0000
Received: from mail-pj2-x0a.google.com ([2607:f8b0:4864:39::a])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wqAd0-0000000EimK-1SQA
	for linux-phy@lists.infradead.org;
	Sat, 01 Aug 2026 14:23:56 +0000
Received: by mail-pj2-x0a.google.com with SMTP id d9443c01a7336-2cf41b07aceso8571215ad.0
        for <linux-phy@lists.infradead.org>; Sat, 01 Aug 2026 07:23:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1785594234; x=1786199034; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=LX6e13BQ6UJAH9yya+bOU5LhJJwhDdd8JlyZZCveOd8=;
        b=pV0crPLoNgcJtO+RBIFYYodCpPMjTuDMnvAUSYsvEV5QMN8bkdNNamn1U2enrj+06w
         qbX8aXZHoq/PxwunHIjk0BYwHO1meQxT4loTHOJ754Wwv4WcstdcwdBfBfyGAH9S6sQU
         6YHFn0jed18751thGmLXArgoZgGzWbCeS4esGsCGHvTpKWN8VyJ40rDB1LjDLEIa+S2C
         ibJMOQ6/wBkxPDtxb9KgCKlYc+QI32oX2PfGR+5Q5h2wjgt0Pwa4M0SClQ9ykF8r+uun
         MwF/rRL2ho+yiLEeQILAYArycUyqImpv3Y5BNxiPwpiRYSY56nap0fDTKqJNV9G8VXMB
         RNqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1785594234; x=1786199034;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=LX6e13BQ6UJAH9yya+bOU5LhJJwhDdd8JlyZZCveOd8=;
        b=OQSBuS7sbsIQZbzsko6X7lbwM2Ut2QjKCROjmtU3I9WQfC4QIDG2x9/KZ66gf/HlV0
         AHvr2vSm3RQhMdRiQuoyGH/c+DS0lm6IEEaRjI1ZQXwlR79L0EuLLt+M6WbK8V4YO+6H
         I6OSPC7PTlTE5je7e5lYr3Ip51MgDM8qyLXe4GfiUMds+yLuV32hMTMQzMFD5PTwk7R0
         +L/awlKeYdvqf+etwoGF+7ecUBvarbrXSSGXIpt4o2jEiSepfg154cubS54u7JbUry9C
         T+H2sxH4eHP+BWjOhV8xIm6tBixTQp+60hkS7tUhcCpvZXpl3TaKXLS+kMHlcK8tQu/4
         LuNQ==
X-Forwarded-Encrypted: i=1; AHgh+Rp3Qk2Ti7UJBXvmpiySAjjldcsK5omqcRWKwjDAZfONY6Y8vBdfMm61Sm/hts2ifOkbkG6MG78l7EY=@lists.infradead.org
X-Gm-Message-State: AOJu0YwEH0Oev51PzDwx9rH9eFLnG8oDUtOA7jODlDWMuQPts6/z9+Wy
	2P+majFDQmtQYWqS15gVjJUFJuDEsd7VFKE1BqwOzwpxTeYS8jW6UJBX
X-Gm-Gg: AR+sD12m2fVQ5fgfI6ELQbPNxo4RTUO3QDk9Rs80ZpUgHPG37PjlP6EIfklY/uINEuv
	/4N/oulLeL5TfVv2mLdBNqEl1pZJzNVCzF3m9FswMcX8RMQo4fsoPshCdxZgJ+wfd9125SilYNK
	Oi2VFWdc1esihCMXztDhQOPoFtOnJfUXO8N+7aRELPPsKOSXbvWH2/LfCtRg1YDGfmKnpXdXktg
	ST8BMLTomeHcK2VNBCcGW33uHkyjklMwt6wU7tZXaB7eiwjCL4kalrU4c/QPEGyOpbGwHK5clmI
	sOVdecp+lhHV/OhsuVpgM16isuXZiublWA1WrN+Okuw/zabkTMSSnADxsAE3ZEnKSOYQwhkDwBH
	mBzFVgtRpibtrRzlW4gRzneKKIyQ4j38GvwAW3xvnD3qXjoEJ9cli7F0GEiahsZaBpNNw345oVU
	XFCKU5xIrmyyIYB6IzS08sgNA35RTh0qqr+6dGEEeqmEyL2kwvfgMwZ6M=
X-Received: by 2002:a17:903:2f4d:b0:2c9:97a8:8c19 with SMTP id d9443c01a7336-2d052474babmr36307755ad.44.1785594233641;
        Sat, 01 Aug 2026 07:23:53 -0700 (PDT)
Received: from server.lan ([103.213.4.16])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2d04ae5ac3dsm18043845ad.23.2026.08.01.07.23.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 01 Aug 2026 07:23:53 -0700 (PDT)
From: Coia Prant <coiaprant@gmail.com>
To: Andrew Lunn <andrew+netdev@lunn.ch>,
	"David S . Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>,
	Paolo Abeni <pabeni@redhat.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Vinod Koul <vkoul@kernel.org>,
	Maxime Chevallier <maxime.chevallier@bootlin.com>,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>,
	Romain Gantois <romain.gantois@bootlin.com>,
	Heiner Kallweit <hkallweit1@gmail.com>,
	Coia Prant <coiaprant@gmail.com>
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
	Russell King <linux@armlinux.org.uk>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	David Heidelberg <david@ixit.cz>,
	netdev@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-stm32@st-md-mailman.stormreply.com,
	linux-renesas-soc@vger.kernel.org,
	Jiawen Wu <jiawenwu@trustnetic.com>
Subject: [PATCH v2 06/10] net: pcs: xpcs: add ANRESTART support for SGMII link recovery
Date: Sat,  1 Aug 2026 22:22:30 +0800
Message-ID: <20260801142244.679437-8-coiaprant@gmail.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260801142244.679437-2-coiaprant@gmail.com>
References: <20260801142244.679437-2-coiaprant@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260801_072354_406949_43D511D1 
X-CRM114-Status: GOOD (  16.19  )
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

On some hardware using the DesignWare XPCS IP (e.g., RK3568 MAC side
SGMII), the PCS does not automatically restart auto-negotiation when the
link goes down and comes back up. Without an explicit ANRESTART, the link
stays down forever.

Add BMCR_ANRESTART in two places:
1. In xpcs_config_aneg_c37_sgmii(), when starting AN, set ANRESTART
   alongside ANENABLE to initiate a fresh negotiation.
2. In xpcs_get_state_c37_sgmii(), when link is down and AN completion is
   detected, clear the interrupt and trigger ANRESTART to restart the
   negotiation process.

This change has been verified on:
- RK3568 (Photonicat board)
- Wangxun NICs (no regression)

Tested-by: Jiawen Wu <jiawenwu@trustnetic.com>
Signed-off-by: Coia Prant <coiaprant@gmail.com>
---
 drivers/net/pcs/pcs-xpcs.c | 17 +++++++++++++----
 1 file changed, 13 insertions(+), 4 deletions(-)

diff --git a/drivers/net/pcs/pcs-xpcs.c b/drivers/net/pcs/pcs-xpcs.c
index 0337e2bcc0125..28e98449e8ac2 100644
--- a/drivers/net/pcs/pcs-xpcs.c
+++ b/drivers/net/pcs/pcs-xpcs.c
@@ -816,9 +816,14 @@ static int xpcs_config_aneg_c37_sgmii(struct dw_xpcs *xpcs,
 	if (ret < 0)
 		return ret;
 
+	/* Clear CL37 AN complete status */
+	ret = xpcs_write(xpcs, MDIO_MMD_VEND2, DW_VR_MII_AN_INTR_STS, 0);
+	if (ret < 0)
+		return ret;
+
 	if (neg_mode == PHYLINK_PCS_NEG_INBAND_ENABLED)
 		ret = xpcs_write(xpcs, MDIO_MMD_VEND2, MII_BMCR,
-				 mdio_ctrl | BMCR_ANENABLE);
+				 mdio_ctrl | BMCR_ANENABLE | BMCR_ANRESTART);
 
 	return ret;
 }
@@ -1089,14 +1094,18 @@ static int xpcs_get_state_c37_sgmii(struct dw_xpcs *xpcs,
 			state->duplex = DUPLEX_FULL;
 		else
 			state->duplex = DUPLEX_HALF;
-
 		return 0;
 	}
 
-	/* Clear AN complete status or interrupt */
-	if (state->an_complete)
+	if (state->an_complete) {
+		/* Clear AN complete status or interrupt */
 		xpcs_write(xpcs, MDIO_MMD_VEND2, DW_VR_MII_AN_INTR_STS, 0);
 
+		/* Initiate the next round of AN */
+		xpcs_modify(xpcs, MDIO_MMD_VEND2, MII_BMCR, BMCR_ANRESTART,
+				    BMCR_ANRESTART);
+	}
+
 	return 0;
 }
 
-- 
2.47.3


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
