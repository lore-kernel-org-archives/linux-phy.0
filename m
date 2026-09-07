Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 57832C79FA3
	for <linux-phy@archiver.kernel.org>; Mon,  7 Sep 2026 15:39:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EkGhOCFzvgzXqCWrbjYquoub1cfKneInWxWRysEiDys=; b=RR4VenSuYMMs4Y
	WxVahq+B3EZtadZTG38GtJ6RE9ruryFG2WMYvAmnvSZig+UHiC0iYaxDEBTZOWk10305KDskqtVNy
	kx/Mq9SOCFPOyTexkeT3Mn4PMbhsMcQY2aH1Zfsj05EYBBDrh/C4mGw1dMvyZ7CVwPnY336go78C6
	3vIRjLr0R6m8AIcjU1qYgUsLRWOGtddpVSOVH+6hoeBSBwFKbBctV7XAsnZ7iB6Q8LveV9l7XonB2
	LbTI19nY2KyWFxRmAT9xZdis/9B/3ESNXzG5Wemm7S1Eu30YZ/P35+Oa96dwmHiPJMzPXc2sqZyT7
	W+gIMUf8cJM5apJZPqHw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3bRP-00000007CVW-0BRb;
	Mon, 07 Sep 2026 15:39:27 +0000
Received: from mail-pj2-x07.google.com ([2607:f8b0:4864:39::7])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3bRL-00000007CRq-2RIx
	for linux-phy@lists.infradead.org;
	Mon, 07 Sep 2026 15:39:25 +0000
Received: by mail-pj2-x07.google.com with SMTP id 98e67ed59e1d1-398e03cc38aso1351270a91.0
        for <linux-phy@lists.infradead.org>; Mon, 07 Sep 2026 08:39:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1788795563; x=1789400363; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=7inwahIcNU1aV9djAHi258zSUQz0eW0dslHEgzobBAI=;
        b=DdlvZrb/FtFx9oUG/Ujjay9rsDS8dnf4Ev7rwG5hvSB0IZU1wMKhvGuDlywHrADiUm
         G6Rrc8jCVFQharIPEtvsNKPnRatotOqhdFDWTyK3ZNMJyoGYUNAWFS3QFm4FWdvLCe8i
         Dt5z4+Z+bdd/7x+7NHY8Cw0kyx1ZSiQNE9mlRsUfz1AxtFcNdSOd5HcvRixjwOlOtpJk
         j3aoeZHlp53zI/VFO8W6l1rnuM1k88fjfXTQ5e7Pc/sCEzF4mzOM3UD1CICjgsqJNDAn
         xQz8NAfp9WPgZctGIVsI8yxsWjAjG3wmtqpYVhXWGfi5XBWlNIrCAnhZihQJPiESUAND
         vmYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788795563; x=1789400363;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=7inwahIcNU1aV9djAHi258zSUQz0eW0dslHEgzobBAI=;
        b=YBJS0eD1HglcNGF2cEN851nsxTY3JpTAZcP6W4/xLaxPlRyXUYLB9YFgVpRkkiw01N
         mqayqEyA+YyBpimPfNTZaEIHVTh+BW3Lw++kUXHgsdQLwyjxKJlp2fHzrx2/of5bIU+k
         vkiBIqeWykM4uhXYhNRy9eKxpGWKlyYnxjm+iZF++vG386j9IeJZlRImhbYhXrOATJvr
         Y/xwtP8XTVOnkPpxT4UQGaNctW81Y3yw4fWFta3JmL92qWy1aqDn8ecPsfR62ZuMk7m1
         wyWSNDW6sV6FF8Pf8HBNm/8FphVpZKvqjgYVirb3f2QQ8xgU5UviAp9Gc6dnEOfci1qr
         qMVQ==
X-Forwarded-Encrypted: i=1; AKwUvBwrPN8bXy2eF9Sm2duvl/zRF+zNkMRhjGeOvb5PVO6MThPsnCVJStokhA1riNZtJVzJ2Nzqx1tmk+A=@lists.infradead.org
X-Gm-Message-State: AFuF++lzW8tiddHQJHQteNgIwCSiPNoNWABnF7lKVK1g564C38NoR1iv
	gjpqx0Ijmuj4Qxcxyyf4ZoTlJ2FGcK7LwEJxLGgpuHN5fI/rhQ7FE58N
X-Gm-Gg: AYBFou2VsnHHcOT5j5U4rzgbtE3QuivxDWJmrVlrcnl5qltZ/YZinlIajM4mgJh//jy
	3gYGxzG8lPreH8DmL1zeF6aAbMHqTLKJsP6hNvWld5gfc+r5s/PjsDObV9kVaRxXOoyaiZ5/UWO
	ynqIyZrMy20vbRvTJVTT69HpEmN06/AFpW6yNDFBxEnfiSp6xgOsqRN4gBbfq/5NCcec05qJTGV
	YxuSuZfOuB2yU/ENEKBsbVQsxn5zFJkrPeDcr3YQssZMhRUt5MjjgSO8E7UMjKk4r6qyTlY4wAG
	+u5xJdd0BCX25qebGGBBjOj5DuC2saOHEhVi7/PKjn2A5dxnwpfHW0HnkraLGuXUJEheI5pZMR2
	RaGo1XWF7K0NIayh2uAL3642OpjzWQzWEii+SPfQnEzJRzqCA0hs1DMclaExbiqLGBMY4nKIO3+
	i7jp8m2rgXZFwBSEL2V9hSDbHgNZtGLAW3n1azep00TPB9R2XugtyieUU/NM8=
X-Received: by 2002:a17:90b:384b:b0:38e:524:8797 with SMTP id 98e67ed59e1d1-39b261e79f1mr34240199a91.13.1788795562857;
        Mon, 07 Sep 2026 08:39:22 -0700 (PDT)
Received: from server.lan ([150.230.217.250])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-39b260fdf9asm21690121a91.9.2026.09.07.08.39.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 07 Sep 2026 08:39:22 -0700 (PDT)
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
Subject: [PATCH net-next v4 06/10] net: pcs: xpcs: add ANRESTART support for SGMII link recovery
Date: Mon,  7 Sep 2026 23:37:09 +0800
Message-ID: <20260907153713.2572547-8-coiaprant@gmail.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260907153713.2572547-2-coiaprant@gmail.com>
References: <20260907153713.2572547-2-coiaprant@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260907_083923_623002_93EDD70D 
X-CRM114-Status: GOOD (  15.46  )
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

Tested-by: Jiawen Wu <jiawenwu@trustnetic.com>
Tested-by: Maxime Chevallier <maxime.chevallier@bootlin.com>
Signed-off-by: Coia Prant <coiaprant@gmail.com>
---
 drivers/net/pcs/pcs-xpcs.c | 16 +++++++++++++---
 1 file changed, 13 insertions(+), 3 deletions(-)

diff --git a/drivers/net/pcs/pcs-xpcs.c b/drivers/net/pcs/pcs-xpcs.c
index 0337e2bcc0125..50b9cdf94fdaa 100644
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
@@ -1093,10 +1098,15 @@ static int xpcs_get_state_c37_sgmii(struct dw_xpcs *xpcs,
 		return 0;
 	}
 
-	/* Clear AN complete status or interrupt */
-	if (state->an_complete)
+	if (state->an_complete) {
+		/* Clear AN complete status or interrupt */
 		xpcs_write(xpcs, MDIO_MMD_VEND2, DW_VR_MII_AN_INTR_STS, 0);
 
+		/* Initiate the next round of AN */
+		xpcs_modify(xpcs, MDIO_MMD_VEND2, MII_BMCR, BMCR_ANRESTART,
+			    BMCR_ANRESTART);
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
