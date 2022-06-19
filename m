Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A534EC433EF
	for <linux-phy@archiver.kernel.org>; Sun, 19 Jun 2022 08:26:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wyDWDU91P5qrYfqsavC/hF7FswH15O+syjo1D6FgEnw=; b=b2dfGbLqCWGupf
	WHBMoq6MjvWjWtJTWpgPTGLl9X3p7I6cWz0dERA5EvatEHe3iVg+KkEWbrcOwoirbNq8PnJcrPvCw
	gkxTpZfISO+05c/zzl6TygMKpwlGku9Kl2kvhEMHrr29zOyxCNYYpcV5mDh3urWJXrTsNTlHxyYgC
	TJkAY+RposX361jU90Kd2PuAqoxru8VIFiWbkAwvaTkIewGKZcGkwxIQwsEJKarD5zT3BZI+P1QMK
	FP1aqznptF1rqv4hUsN9iuVNDrU6K0L1UisTzmnVpH7fgtFFezL8EuIzm3gcOtQ6VxMJok1Tthag+
	hGi0rWz85Ggxl5sD/7yA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o2qGe-00DaVP-Uu; Sun, 19 Jun 2022 08:26:48 +0000
Received: from mxout4.routing.net ([2a03:2900:1:a::9])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o2qGK-00DaMN-Sc; Sun, 19 Jun 2022 08:26:30 +0000
Received: from mxbox2.masterlogin.de (unknown [192.168.10.89])
	by mxout4.routing.net (Postfix) with ESMTP id 16505101294;
	Sun, 19 Jun 2022 08:26:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mailerdienst.de;
	s=20200217; t=1655627178;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=MgcSu/bZTjky7t6qN/ZaauuAgwOYV51FTF/OPnptHgI=;
	b=V6/kqZMK1osbUAGBkeFFjrg5dRAARQNas58FVCI4qRndkb38a6EHvdAEV/aLOMhouEWz/q
	LejXWwk/2sPy+jDMUP1N+8QGvamW9vYJK+S3X/d82GDMzG5ofe/EUICg9bi2gqBCt03ZNt
	Lu70UDU7W6ytiAZu07Poq4q0kD5SAu4=
Received: from frank-G5.. (fttx-pool-157.180.227.195.bambit.de [157.180.227.195])
	by mxbox2.masterlogin.de (Postfix) with ESMTPSA id 1633710054D;
	Sun, 19 Jun 2022 08:26:17 +0000 (UTC)
From: Frank Wunderlich <linux@fw-web.de>
To: linux-rockchip@lists.infradead.org
Cc: Frank Wunderlich <frank-w@public-files.de>,
	Kishon Vijay Abraham I <kishon@ti.com>,
	Vinod Koul <vkoul@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Johan Jonker <jbx6244@gmail.com>,
	Yifeng Zhao <yifeng.zhao@rock-chips.com>,
	Peter Geis <pgwipeout@gmail.com>,
	Michael Riesch <michael.riesch@wolfvision.net>,
	Liang Chen <cl@rock-chips.com>,
	Simon Xue <xxm@rock-chips.com>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v4 2/5] dt-bindings: soc: grf: add pcie30-{phy,pipe}-grf
Date: Sun, 19 Jun 2022 10:26:02 +0200
Message-Id: <20220619082605.7935-3-linux@fw-web.de>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220619082605.7935-1-linux@fw-web.de>
References: <20220619082605.7935-1-linux@fw-web.de>
MIME-Version: 1.0
X-Mail-ID: 1f4313a6-4642-4c5d-9b5c-1584b150b7b3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220619_012629_116296_9F3DAC19 
X-CRM114-Status: UNSURE (   7.76  )
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

From: Frank Wunderlich <frank-w@public-files.de>

Add compatibles for PCIe v3 General Register Files.

Signed-off-by: Frank Wunderlich <frank-w@public-files.de>
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
v4:
- rebase on 5.19-rc1
- add acked-by

v3:
- fix order of grf-bindings

v2:
- add soc-part to pcie3-phy-grf
---
 Documentation/devicetree/bindings/soc/rockchip/grf.yaml | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/soc/rockchip/grf.yaml b/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
index 75a2b8bb25fb..97301c470173 100644
--- a/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
+++ b/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
@@ -16,9 +16,12 @@ properties:
           - enum:
               - rockchip,rk3288-sgrf
               - rockchip,rk3566-pipe-grf
+              - rockchip,rk3568-pcie3-phy-grf
               - rockchip,rk3568-pipe-grf
               - rockchip,rk3568-pipe-phy-grf
               - rockchip,rk3568-usb2phy-grf
+              - rockchip,rk3588-pcie3-phy-grf
+              - rockchip,rk3588-pcie3-pipe-grf
               - rockchip,rv1108-usbgrf
           - const: syscon
       - items:
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
