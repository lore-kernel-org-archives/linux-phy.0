Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BB2B710F284C
	for <linux-phy@archiver.kernel.org>; Fri, 27 Mar 2026 16:07:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=D0X7p9n8Qr3Vz5PnA7oArIsGOgKjnP54BcYdhSQHr2E=; b=x9Fk5BvJ1lCXs2
	9xURQsfbJZpR7Rrk3XEzmGjLUzsPKyazXdkc10c7WTVeS8WvjsevA5Ccw2ihGui4Ui0Y10Wh+Vn2J
	Y7WNx6TV7hI0MWp5KpCJ92Ia0cYpSHKctum5+HX8kPEpij/u3DF6t5Xt21c0mqyMBdtuoiew9SIZR
	oA19My7vCMB92nNkddPEqmqzHYIFh4ulfW4iuLTAa10SuUS0g5XW/zO6m+fM6GtZD5jl8sUODlWkU
	3g9+jf8DQ/vzR1NFo8PsdY0SSdMwr/sZfLBEorNMEk3yRyIsHT6sSVLCSlTbhckZeBYtO7JWUx3tD
	SpOILDo4TAVRzfavrAOQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w69iq-00000007k2o-26j0;
	Fri, 27 Mar 2026 16:07:44 +0000
Received: from layka.disroot.org ([178.21.23.139])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w69in-00000007k1E-2DWb
	for linux-phy@lists.infradead.org;
	Fri, 27 Mar 2026 16:07:43 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
	by disroot.org (Postfix) with ESMTP id 9B99927063;
	Fri, 27 Mar 2026 17:07:39 +0100 (CET)
X-Virus-Scanned: SPAM Filter at disroot.org
Received: from layka.disroot.org ([127.0.0.1])
 by localhost (disroot.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 9ZJsU4vKfg6x; Fri, 27 Mar 2026 17:07:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=disroot.org; s=mail;
	t=1774627653; bh=6B7686z3QUopU/zWMAAwBVlHDWV9IFVlgjbzHESJ76k=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References;
	b=g+u0211IO9SL1On/JwORnsWBqRH3+PSiBCa+uWsCj1ljxfsSDqiwPcUM4uBEhW89I
	 3iMSV2uwMpbnioDJge7o4Se/Ral7+Yv/iL+jpFQPFZBLxhWdAw/CQbSYApXVgElkHj
	 O1Bo94OAAm0nSnJlW7dlLbUQQNsCdfXtvafZRBgEBpE/EwS2YyWS66yG2yZqPD/9fI
	 344G7stwPuu1dsz8ZLFoEQS2izrSknLud5E4RRpJEyinECUlGWxBtuKVbNJtCdVO8n
	 CFU5doIBAv5g6DyDu8fACOAxZI+1ZWBBmpdZQCmiAUrT0JrGOtqQP0tGtnaxZa4O/C
	 i5pk5cpiaGgyQ==
From: Rustam Adilov <adilov@disroot.org>
To: Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Stanley Chang <stanley_chang@realtek.com>,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Rustam Adilov <adilov@disroot.org>
Subject: [PATCH v2 6/6] phy: realtek: usb2: Make configs available for MACH_REALTEK_RTL
Date: Fri, 27 Mar 2026 21:06:38 +0500
Message-ID: <20260327160638.15134-7-adilov@disroot.org>
In-Reply-To: <20260327160638.15134-1-adilov@disroot.org>
References: <20260327160638.15134-1-adilov@disroot.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260327_090741_715286_5C3374DA 
X-CRM114-Status: UNSURE (   9.75  )
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

Add the MACH_REALTEK_RTL to the if statement to make the config
options available for Realtek RTL SoCs as well.

Signed-off-by: Rustam Adilov <adilov@disroot.org>
---
 drivers/phy/realtek/Kconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/phy/realtek/Kconfig b/drivers/phy/realtek/Kconfig
index 75ac7e7c31ae..f9eadffacd18 100644
--- a/drivers/phy/realtek/Kconfig
+++ b/drivers/phy/realtek/Kconfig
@@ -3,7 +3,7 @@
 # Phy drivers for Realtek platforms
 #
 
-if ARCH_REALTEK || COMPILE_TEST
+if ARCH_REALTEK || MACH_REALTEK_RTL || COMPILE_TEST
 
 config PHY_RTK_RTD_USB2PHY
 	tristate "Realtek RTD USB2 PHY Transceiver Driver"
-- 
2.53.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
