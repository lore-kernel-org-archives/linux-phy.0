Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E2EDDC6FA83
	for <linux-phy@archiver.kernel.org>; Mon, 12 Sep 2022 00:02:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FSIMWCfglp5tj+fvUXSOUkgF979VOlCm9UJZK77v3Uk=; b=c488VY+yoi7dgg
	hk6H4chbDCDv99oftVLANWpzfUv1YTjcE/i3tuECzoZnVgvRoT4UwSYjA9a0LWqO845lz5stUX+nz
	kj3C73klusD6Ex2Dn7GsNJS6AfW1NRxSmT7VtGgA+ALxFgCZPH/EXTddnkOB8xAJgDzWnE3zmCNCK
	YuQtxHeXOYoB5xox8JWtx+IAjOo3agQ3E4Dm+TbWOTvnkl8sABlIg8y8fmIIeC1a2N6LJVfNpMOA3
	PyTpYkH4+wioyApTbO9xQ3hbDeXVv6aBpH7wj33Kfuq8deng4Ra4uL5SKIkKEYDTbzQYck/6g2stM
	i5gtNputBRkFfWVlJslA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oXWu1-005PQq-1c; Mon, 12 Sep 2022 00:02:17 +0000
Received: from foss.arm.com ([217.140.110.172])
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oXWtg-005PGZ-FX; Mon, 12 Sep 2022 00:01:57 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id AD2D516A3;
	Sun, 11 Sep 2022 17:01:52 -0700 (PDT)
Received: from slackpad.fritz.box (unknown [172.31.20.19])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id A5D7E3F73B;
	Sun, 11 Sep 2022 17:01:43 -0700 (PDT)
From: Andre Przywara <andre.przywara@arm.com>
To: Jernej Skrabec <jernej.skrabec@gmail.com>,
	Samuel Holland <samuel@sholland.org>,
	Chen-Yu Tsai <wens@csie.org>,
	Kishon Vijay Abraham I <kishon@ti.com>,
	Vinod Koul <vkoul@kernel.org>
Cc: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	linux-phy@lists.infradead.org,
	linux-usb@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-sunxi@lists.linux.dev,
	Karl Kurbjun <karl.os@veroson.com>,
	Icenowy Zheng <icenowy@aosc.io>
Subject: [PATCH 1/7] dt-bindings: usb: Add H616 compatible string
Date: Mon, 12 Sep 2022 00:59:39 +0100
Message-Id: <20220911235945.6635-2-andre.przywara@arm.com>
X-Mailer: git-send-email 2.35.3
In-Reply-To: <20220911235945.6635-1-andre.przywara@arm.com>
References: <20220911235945.6635-1-andre.przywara@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220911_170156_656754_B1AD44B7 
X-CRM114-Status: UNSURE (   8.53  )
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

The Allwinner H616 contains four fully OHCI/EHCI compatible USB host
controllers, so just add their compatible strings to the list of
generic OHCI/EHCI controllers.

Signed-off-by: Andre Przywara <andre.przywara@arm.com>
---
 Documentation/devicetree/bindings/usb/generic-ehci.yaml | 1 +
 Documentation/devicetree/bindings/usb/generic-ohci.yaml | 1 +
 2 files changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/usb/generic-ehci.yaml b/Documentation/devicetree/bindings/usb/generic-ehci.yaml
index 079f7cff0c24..2e8beab7a9d1 100644
--- a/Documentation/devicetree/bindings/usb/generic-ehci.yaml
+++ b/Documentation/devicetree/bindings/usb/generic-ehci.yaml
@@ -30,6 +30,7 @@ properties:
               - allwinner,sun4i-a10-ehci
               - allwinner,sun50i-a64-ehci
               - allwinner,sun50i-h6-ehci
+              - allwinner,sun50i-h616-ehci
               - allwinner,sun5i-a13-ehci
               - allwinner,sun6i-a31-ehci
               - allwinner,sun7i-a20-ehci
diff --git a/Documentation/devicetree/bindings/usb/generic-ohci.yaml b/Documentation/devicetree/bindings/usb/generic-ohci.yaml
index 180361b79f52..1acf36b24d1f 100644
--- a/Documentation/devicetree/bindings/usb/generic-ohci.yaml
+++ b/Documentation/devicetree/bindings/usb/generic-ohci.yaml
@@ -20,6 +20,7 @@ properties:
               - allwinner,sun4i-a10-ohci
               - allwinner,sun50i-a64-ohci
               - allwinner,sun50i-h6-ohci
+              - allwinner,sun50i-h616-ohci
               - allwinner,sun5i-a13-ohci
               - allwinner,sun6i-a31-ohci
               - allwinner,sun7i-a20-ohci
-- 
2.35.3


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
