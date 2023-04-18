Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4B2D1C77B76
	for <linux-phy@archiver.kernel.org>; Tue, 18 Apr 2023 11:16:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iT0dT2UKmvd5HRbK/5Oh/jfkds0bNuRKnk/zAc88GAA=; b=JpnUOQFS1JDYoQ
	3fvrpcNwWmXKElDjLo91F/lIEek5rmqnjnGA+L1fwBbrY4Esqnsre6erKKfbJGK24YM96PwL4rgbC
	bDhon2kwXrNlTuVrZ3tjsWvTpvXtvF1a+/2B0+AX9XFEbB76eYOkifVMDX50u46vhkq2LYTw5wbxM
	qXoyBWwRCE/d556ieF8nEco292X9wmDh+6jd5eAk4AQVIfstlXZXi15IP6hVYND0iw/5USjR89DP6
	3R9E7p7fjZuK2/KNqk41oV+Ldcgz6OImfqowi5quJBpA+WWbn8ylwqhzBL3eDdZjRmQGtBl2OX1hb
	pHSu7hW5OzAJ4br9X3xQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pojKF-001u6p-37;
	Tue, 18 Apr 2023 11:16:43 +0000
Received: from mx.sberdevices.ru ([45.89.227.171])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pojJx-001tvE-0L;
	Tue, 18 Apr 2023 11:16:28 +0000
Received: from s-lin-edge02.sberdevices.ru (localhost [127.0.0.1])
	by mx.sberdevices.ru (Postfix) with ESMTP id F24565FD78;
	Tue, 18 Apr 2023 14:16:20 +0300 (MSK)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sberdevices.ru;
	s=mail; t=1681816581;
	bh=MDzMe5CZfB1jJP7T11BEyo9k6M0Db32prO+SmusTuWw=;
	h=From:To:Subject:Date:Message-ID:MIME-Version:Content-Type;
	b=brqLeNnHFhrcMVFs0R8yx2+7mwYyq+eOWHy5gKsQDSSPFOT7vG87eoE21J0MCPUtj
	 /ZDLMSEpazMaB90uVs0YZdxxHZ7tOmH1cTT114+/ioSqRj/FsNG0Sp6dXxdFAaa1OX
	 rKSIS8T9C8d5kkEeelMcSH88IvZqE4VcFgSF9189TzLEDVJ49KX/mNmRM7CNd7BN4s
	 z/Qv7rzi2lLNjo+HKfZ4RDa7QP25N+bNu+y5IyVdZcn9ztNZXrPxytrGFO3+Vj+p6H
	 G8OSARnLw0zTmHuJdvWWGWSFpibgD/h+oSUZaKgWAADMczYKrHxgbQgkD6xSvatfc7
	 UTNN778qGqelw==
Received: from S-MS-EXCH01.sberdevices.ru (S-MS-EXCH01.sberdevices.ru [172.16.1.4])
	by mx.sberdevices.ru (Postfix) with ESMTP;
	Tue, 18 Apr 2023 14:16:20 +0300 (MSK)
From: Dmitry Rokosov <ddrokosov@sberdevices.ru>
To: <gregkh@linuxfoundation.org>, <robh+dt@kernel.org>,
	<krzysztof.kozlowski+dt@linaro.org>, <neil.armstrong@linaro.org>,
	<khilman@baylibre.com>, <jbrunet@baylibre.com>,
	<martin.blumenstingl@googlemail.com>, <mturquette@baylibre.com>,
	<vkoul@kernel.org>, <kishon@kernel.org>, <hminas@synopsys.com>,
	<Thinh.Nguyen@synopsys.com>
CC: <yue.wang@amlogic.com>, <hanjie.lin@amlogic.com>, <kernel@sberdevices.ru>,
	<rockosov@gmail.com>, <linux-usb@vger.kernel.org>,
	<devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
	<linux-arm-kernel@lists.infradead.org>, <linux-amlogic@lists.infradead.org>,
	<linux-phy@lists.infradead.org>, Dmitry Rokosov <ddrokosov@sberdevices.ru>
Subject: [PATCH v2 1/5] phy: amlogic: enable/disable clkin during Amlogic USB PHY init/exit
Date: Tue, 18 Apr 2023 14:16:08 +0300
Message-ID: <20230418111612.19479-2-ddrokosov@sberdevices.ru>
X-Mailer: git-send-email 2.36.0
In-Reply-To: <20230418111612.19479-1-ddrokosov@sberdevices.ru>
References: <20230418111612.19479-1-ddrokosov@sberdevices.ru>
MIME-Version: 1.0
X-Originating-IP: [172.16.1.6]
X-ClientProxiedBy: S-MS-EXCH01.sberdevices.ru (172.16.1.4) To
 S-MS-EXCH01.sberdevices.ru (172.16.1.4)
X-KSMG-Rule-ID: 4
X-KSMG-Message-Action: clean
X-KSMG-AntiSpam-Status: not scanned, disabled by settings
X-KSMG-AntiSpam-Interceptor-Info: not scanned
X-KSMG-AntiPhishing: not scanned, disabled by settings
X-KSMG-AntiVirus: Kaspersky Secure Mail Gateway, version 1.1.2.30, bases: 2023/04/18 05:44:00 #21123121
X-KSMG-AntiVirus-Status: Clean, skipped
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230418_041625_678651_1C88217E 
X-CRM114-Status: GOOD (  14.31  )
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

Previously, all Amlogic boards used the XTAL clock as the default board
clock for the USB PHY input, so there was no need to enable it.
However, with the introduction of new Amlogic SoCs like the A1 family,
the USB PHY now uses a gated clock. Hence, it is necessary to enable
this gated clock during the PHY initialization sequence, or disable it
during the PHY exit, as appropriate.

Signed-off-by: Dmitry Rokosov <ddrokosov@sberdevices.ru>
---
 drivers/phy/amlogic/phy-meson-g12a-usb2.c | 13 +++++++++++--
 1 file changed, 11 insertions(+), 2 deletions(-)

diff --git a/drivers/phy/amlogic/phy-meson-g12a-usb2.c b/drivers/phy/amlogic/phy-meson-g12a-usb2.c
index 9d1efa0d9394..80938751da4f 100644
--- a/drivers/phy/amlogic/phy-meson-g12a-usb2.c
+++ b/drivers/phy/amlogic/phy-meson-g12a-usb2.c
@@ -172,10 +172,16 @@ static int phy_meson_g12a_usb2_init(struct phy *phy)
 	int ret;
 	unsigned int value;
 
-	ret = reset_control_reset(priv->reset);
+	ret = clk_prepare_enable(priv->clk);
 	if (ret)
 		return ret;
 
+	ret = reset_control_reset(priv->reset);
+	if (ret) {
+		clk_disable_unprepare(priv->clk);
+		return ret;
+	}
+
 	udelay(RESET_COMPLETE_TIME);
 
 	/* usb2_otg_aca_en == 0 */
@@ -277,8 +283,11 @@ static int phy_meson_g12a_usb2_init(struct phy *phy)
 static int phy_meson_g12a_usb2_exit(struct phy *phy)
 {
 	struct phy_meson_g12a_usb2_priv *priv = phy_get_drvdata(phy);
+	int ret = reset_control_reset(priv->reset);
+
+	clk_disable_unprepare(priv->clk);
 
-	return reset_control_reset(priv->reset);
+	return ret;
 }
 
 /* set_mode is not needed, mode setting is handled via the UTMI bus */
-- 
2.36.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
