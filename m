Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 07BDAC4332F
	for <linux-phy@archiver.kernel.org>; Sun,  2 Oct 2022 06:46:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=M4tmpBQYaoe+DV9JpCDeGXFQP9IpzCLXLU8coe4jT1s=; b=ea8v2Novvh94ik
	NJkSxAEyAFB8ciSCz67vybj/jWeRs0iO+JGep8H5Y8LWkR3l609xAIWKC9EKpmp0hRaci1W1EcnEU
	clwAwJSqj5NFO0mTt6ngyNOxkRlfoD8+f3jOFsEJ6cRkU3X/s+JU1wUDBBJBXBaLY9FUmg96rBBd2
	1Uj1mqom5niWUjATMAS1GDpF77PmyOuX8Q0Vwbgj9bqbhkcQaT9dzKn80nEbXxWLYCiAa73+OYQHO
	AymUUwaphvjCpOVYq08Adl5I45i5Gtk242KqmjhqPbSJOqCYMm8cNTfFtttwO3GtAbZBrLZenrAc3
	kmeK9g6YHIBAxu1EcrSQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oesjo-00040U-73; Sun, 02 Oct 2022 06:46:08 +0000
Received: from mail-ej1-x62f.google.com ([2a00:1450:4864:20::62f])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oesjU-0003qJ-UG
	for linux-phy@lists.infradead.org; Sun, 02 Oct 2022 06:45:51 +0000
Received: by mail-ej1-x62f.google.com with SMTP id nb11so16550599ejc.5
        for <linux-phy@lists.infradead.org>; Sat, 01 Oct 2022 23:45:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
        bh=I6XMIDzmAb5OEYRQrNrBJ64J1RkMPb1xdg1o6LLrqS4=;
        b=kdPlUwALYdNbkW9cx2XLVNwgOxrzhu3xLLiNM5FmcdjmtgSxDjZiXivE9cURSlKI9G
         THB25Gxkx5t8suAAn8LL2pI7YADY+GVOgVmXbiI2zDF9bH2yHej+i0+hvqZxj0Akp/p5
         uh/tBzNaQX2p0eFbQeZw5FnMylVKKnY0W1Xc4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=I6XMIDzmAb5OEYRQrNrBJ64J1RkMPb1xdg1o6LLrqS4=;
        b=QltmC4TPNt9kas9paYY7rhk0B8kr6DlMxcVh0VpiciVXgIWv03WxqB5lUTdnk1QFUO
         GpqHiYCObTzKkyNH4/uWzRorXrwxDtuJl8unYBttjVoMwhQcGSxMeT5uSSgKEoju2UqE
         nIiJYJ8pqt+EynFymWb0ykygpD6eMfRH4EwysLQ0jeukvNC6EXp48b/Ei4sCnlrRhS6N
         kr5mXRrmeT5BsdIsGYcXyk9jQX1mnig+BAoSFUdn8M8VyMxkwFr1bWCDeBZirJ98BBIo
         Xb2ehv34T1k7R+pUfZn3ZM7tpsrpy6CLwImfP0WFKIDX1wVZK9BCd/7Ui5fGq6T9W+ul
         LxbQ==
X-Gm-Message-State: ACrzQf3iOVBk+t1Iv1ElpPtSJ7Q3xXjQOECUsbcq6IlBDUkuQBQQhUYK
	yv9W68OBY2DNJTxgOnUYlLvHGw==
X-Google-Smtp-Source: AMsMyM42Y13+9SuPHtB+8bbihrWVsma1thKzuBn20iHav0eL1jLmBw0Y9w2/3o+fg6AJtnqVC042IA==
X-Received: by 2002:a17:907:2c67:b0:77d:740a:e9b1 with SMTP id ib7-20020a1709072c6700b0077d740ae9b1mr11198850ejc.614.1664693146999;
        Sat, 01 Oct 2022 23:45:46 -0700 (PDT)
Received: from panicking.. ([109.52.206.103])
        by smtp.gmail.com with ESMTPSA id 26-20020a170906329a00b0077f5e96129fsm3569894ejw.158.2022.10.01.23.45.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 01 Oct 2022 23:45:46 -0700 (PDT)
From: Michael Trimarchi <michael@amarulasolutions.com>
To: Sandy Huang <hjc@rock-chips.com>,
	=?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
	David Airlie <airlied@gmail.com>,
	Daniel Vetter <daniel@ffwll.ch>
Cc: Kishon Vijay Abraham I <kishon@ti.com>,
	Vinod Koul <vkoul@kernel.org>,
	dri-devel@lists.freedesktop.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-amarula@amarulasolutions.com
Subject: [RFC PATCH 2/4] phy: rockchip: Add inno_is_valid_phy_mode
Date: Sun,  2 Oct 2022 08:45:38 +0200
Message-Id: <20221002064540.2500257-3-michael@amarulasolutions.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20221002064540.2500257-1-michael@amarulasolutions.com>
References: <20221002064540.2500257-1-michael@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221001_234548_990347_9DD2BBA6 
X-CRM114-Status: GOOD (  11.15  )
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

The function is used to avoid to enable clock on the hardware
if the mode requested is invalid

Signed-off-by: Michael Trimarchi <michael@amarulasolutions.com>
---
 .../phy/rockchip/phy-rockchip-inno-dsidphy.c  | 19 +++++++++++++++++++
 1 file changed, 19 insertions(+)

diff --git a/drivers/phy/rockchip/phy-rockchip-inno-dsidphy.c b/drivers/phy/rockchip/phy-rockchip-inno-dsidphy.c
index 630e01b5c19b..644cf73cfd53 100644
--- a/drivers/phy/rockchip/phy-rockchip-inno-dsidphy.c
+++ b/drivers/phy/rockchip/phy-rockchip-inno-dsidphy.c
@@ -217,6 +217,20 @@ static void phy_update_bits(struct inno_dsidphy *inno,
 	writel(tmp, inno->phy_base + reg);
 }
 
+static int inno_is_valid_phy_mode(struct inno_dsidphy *inno)
+{
+	switch (inno->mode) {
+	case PHY_MODE_MIPI_DPHY:
+		break;
+	case PHY_MODE_LVDS:
+		break;
+	default:
+		return -EINVAL;
+	}
+
+	return 0;
+};
+
 static unsigned long inno_dsidphy_pll_calc_rate(struct inno_dsidphy *inno,
 						unsigned long rate)
 {
@@ -495,6 +509,11 @@ static void inno_dsidphy_lvds_mode_enable(struct inno_dsidphy *inno)
 static int inno_dsidphy_power_on(struct phy *phy)
 {
 	struct inno_dsidphy *inno = phy_get_drvdata(phy);
+	int ret = 0;
+
+	ret = inno_is_valid_phy_mode(inno);
+	if (ret)
+		return ret;
 
 	clk_prepare_enable(inno->pclk_phy);
 	clk_prepare_enable(inno->ref_clk);
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
