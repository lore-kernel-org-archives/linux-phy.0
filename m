Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6C365C7EE37
	for <linux-phy@archiver.kernel.org>; Mon, 22 May 2023 17:34:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7DFIV/fOmNevjJjFfkdjfpJb/prHQ+z4+jFz5b5s3DU=; b=Tt9ZYJ8/31S6U8
	39BBHJZbLs7vhyLRFqPZPZqdCL6sz5wwH5GembzqFmyN3Y3wQHGBIlJT76sJxmA/YVwe4xbvU8dyg
	Cg1IcJeglTPq3JoY+HqS+lXUHnKcyRa7oU08J3qFUVmhlr/GbkAOjMUhHTOT34j0nGWgFbM3C/IVK
	c2mDOkJrE9KaGvcymli6M5U1u09gYfnGC9OBwNuFNt9GYEwyPe3Q4JwxUqS7JzYD8lDaHsBFWi2JX
	rQflJfGEDa0H2le9WT0AwaolV+IhVES8AuoXaysD/aHFgvJhriPez9UWplSOjNxY4mFtqd0fBHOC/
	aiIGwvAUaubB++Xc7DSg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q19Qd-007Nri-0D;
	Mon, 22 May 2023 17:34:39 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q19QY-007Nn8-2G;
	Mon, 22 May 2023 17:34:36 +0000
Received: from jupiter.universe (dyndsl-091-248-208-162.ewe-ip-backbone.de [91.248.208.162])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sre)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 16D88660574E;
	Mon, 22 May 2023 18:34:31 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1684776871;
	bh=ignbWH6aQx1pvgMX43Tpx1diOatQw8XwwcyX2Il9Ydc=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=A3jpiRAHSaNIY6yvHMJYYdl7NqKevlGxcqeKQjOENHhi2amuTXzmQoc5Oh2J5iCID
	 iSlHSwEIa1h5VJUiJyrUCMyvFKA4zeMEZ6df5Hus/TXzK9AJR3bUqqi5K68pimmNCD
	 gAzws2AkJ9GSy8muYrqLq0nsFr8vkShKD1srG1giodQxH13tj86SnTCtARUDr6WZEc
	 rijRvYxTJWq0VA/p0Tz0CeTf0InH1xNXea9g/WBQP4BPzsIiEsoJw3aHN/uNE0rcix
	 SEfFcIZAiKoYmim09KV53B6mWFD7XAJ6iD6DULzCNPABanqPl8G+N60EVXtVIzCQJN
	 e0e3EWQ1tFljQ==
Received: by jupiter.universe (Postfix, from userid 1000)
	id 8B0E64807E0; Mon, 22 May 2023 19:34:29 +0200 (CEST)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Heiko Stuebner <heiko@sntech.de>
Cc: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Damien Le Moal <damien.lemoal@opensource.wdc.com>,
	Serge Semin <fancer.lancer@gmail.com>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	linux-ide@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	kernel@collabora.com,
	Rob Herring <robh@kernel.org>
Subject: [PATCH v2 1/6] dt-bindings: soc: rockchip: add rk3588 pipe-phy syscon
Date: Mon, 22 May 2023 19:34:18 +0200
Message-Id: <20230522173423.64691-2-sebastian.reichel@collabora.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230522173423.64691-1-sebastian.reichel@collabora.com>
References: <20230522173423.64691-1-sebastian.reichel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230522_103434_868867_A4C293E7 
X-CRM114-Status: UNSURE (   8.80  )
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

The pipe-phy syscon is used by rockchip,rk3588-naneng-combphy,
which in turn is the PHY for USB3, PCIe and SATA.

Acked-by: Rob Herring <robh@kernel.org>
Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
 Documentation/devicetree/bindings/soc/rockchip/grf.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/soc/rockchip/grf.yaml b/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
index e8fca419cc8e..bf2370c66ed9 100644
--- a/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
+++ b/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
@@ -24,6 +24,7 @@ properties:
               - rockchip,rk3588-bigcore1-grf
               - rockchip,rk3588-ioc
               - rockchip,rk3588-php-grf
+              - rockchip,rk3588-pipe-phy-grf
               - rockchip,rk3588-sys-grf
               - rockchip,rk3588-pcie3-phy-grf
               - rockchip,rk3588-pcie3-pipe-grf
-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
