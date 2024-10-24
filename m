Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 37501CE8E96
	for <linux-phy@archiver.kernel.org>; Thu, 24 Oct 2024 17:11:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pJZw5ZqTaUp3nxHXupsqiGMabafz6QYPc1KvMmi6/GA=; b=sDp3xVeSKIcfD5
	A/ZsFDTMROhV/az8sONMSH+jkhcli8oKSNKvldD0CMs+UyYa1qZunk3RjmfQvqjy3frpxfqM4J3FY
	Tg5qrJk2Y+12EUlWjhdmTxjOi3jEQ7JLzKIwL+iY64zfucgD9clbBviKCXPkFTlvIe9KbuOO61Q9M
	5EjXacy5XzOvvusuouvoM6yaBd3HvLEtFmkq/NEjNtLuTvpi2dbvF5y07fM9nfcX93AGlFj5as9z8
	eeQQdX+nNQTfTiBhhijZhX1Iz2bJq7O+XwQkzyHdnnNKiXoTHXe8zoOeHQX3gokok4JvYG2ITtQhn
	Rn0JY7gp8eZ+e5GIXDlQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t41N1-00000001EGi-3lE6;
	Thu, 24 Oct 2024 17:11:35 +0000
Received: from thales.epochal.quest ([2607:5300:205:200::3a30])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t41LF-00000001Dlp-123P;
	Thu, 24 Oct 2024 17:09:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=epochal.quest;
	s=default; t=1729789781;
	bh=c6mAFMfMnzUCM/bRTvKysE72zxNJKIHReq/xcIwXjco=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=hcApd2xlBpYyS0cXu9eSE1lhCyAo9OS/FOBF5M4uqtwdGFPa5eYsTWwyGOxjEap4O
	 BKUlObhTk7+teSIm2Kjim68paDZKTyAywxNx7ZQcm4ClXFhrarEhaKyS22WRtAoO3n
	 U2pxyPNIJsSuhVNjeG5w0wkPXiK9G3nli1J2mDCQxNG91GA6fllxHOWcijXo2wzDxG
	 Yv38dsP6WsEkhFHu+jRs+4PdeadGAHntpUbLN09gvyYrdlKNMlhJd78HVwVog1cAWM
	 s1otUpErvBIyK83IaZykiIHKkIKQra0NQo6IgaOOvsTW+rp2BGuYrg+Yz5s7rAgtEF
	 Gmpu/d9ayT9LQ==
X-Virus-Scanned: by epochal.quest
From: Cody Eksal <masterr3c0rd@epochal.quest>
To: linux-pm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-sunxi@lists.linux.dev,
	linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-usb@vger.kernel.org,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Chen-Yu Tsai <wens@csie.org>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Samuel Holland <samuel@sholland.org>
Cc: Cody Eksal <masterr3c0rd@epochal.quest>,
	Andre Przywara <andre.przywara@arm.com>,
	Parthiban <parthiban@linumiz.com>,
	Yangtao Li <frank@allwinnertech.com>,
	Florian Fainelli <florian.fainelli@broadcom.com>,
	Vinod Koul <vkoul@kernel.org>,
	Linus Walleij <linus.walleij@linaro.org>,
	Thierry Reding <treding@nvidia.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Maxime Ripard <mripard@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Yangtao Li <tiny.windzz@gmail.com>,
	Viresh Kumar <vireshk@kernel.org>,
	Nishanth Menon <nm@ti.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	"Rafael J. Wysocki" <rafael@kernel.org>
Subject: [PATCH 02/13] arm64: dts: allwinner: a100: add watchdog node
Date: Thu, 24 Oct 2024 14:05:20 -0300
Message-ID: <20241024170540.2721307-3-masterr3c0rd@epochal.quest>
X-Mailer: git-send-email 2.47.0
In-Reply-To: <20241024170540.2721307-1-masterr3c0rd@epochal.quest>
References: <20241024170540.2721307-1-masterr3c0rd@epochal.quest>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241024_100945_388829_2A5C6410 
X-CRM114-Status: UNSURE (   8.23  )
X-CRM114-Notice: Please train this message.
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

From: Yangtao Li <frank@allwinnertech.com>

Declare A100's watchdog in the device-tree.

Signed-off-by: Yangtao Li <frank@allwinnertech.com>
Reviewed-by: Andre Przywara <andre.przywara@arm.com>
Signed-off-by: Cody Eksal <masterr3c0rd@epochal.quest>
---
 arch/arm64/boot/dts/allwinner/sun50i-a100.dtsi | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm64/boot/dts/allwinner/sun50i-a100.dtsi b/arch/arm64/boot/dts/allwinner/sun50i-a100.dtsi
index 1eca7c220ede..adb11b26045f 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-a100.dtsi
+++ b/arch/arm64/boot/dts/allwinner/sun50i-a100.dtsi
@@ -144,6 +144,14 @@ ths_calibration: calib@14 {
 			};
 		};
 
+		watchdog@30090a0 {
+			compatible = "allwinner,sun50i-a100-wdt",
+				     "allwinner,sun6i-a31-wdt";
+			reg = <0x030090a0 0x20>;
+			interrupts = <GIC_SPI 53 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&dcxo24M>;
+		};
+
 		pio: pinctrl@300b000 {
 			compatible = "allwinner,sun50i-a100-pinctrl";
 			reg = <0x0300b000 0x400>;
-- 
2.47.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
