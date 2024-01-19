Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 90A06C47DD9
	for <linux-phy@archiver.kernel.org>; Fri, 19 Jan 2024 19:38:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5XwbNyquFw0FrNQ1SoUt82Iv4HqvBbO8irQmxQocHfE=; b=eO50wO1xrlboCx
	VS0COAQZzlBgD0w0unWRetV5vlS62QHuY7zBf/9CdytcBMd6k80DZK0LIsLbrQf13dgdvoDWg+Hzr
	GAfDLHz2VTYmmhKiHPKDBLwzRwbxjqWhYfTjssq8lCYIKabTdN6O5aU23ri3ElP/8MWeuNg2llbwM
	0ZQnEf0hF72Zq3Ctb9Ujyc16fq0s2sv9xpsVJDHodW+Fi100joLE+M8JB8n0FH44NtGLzMIBA+9tg
	mAGJXCnQPrCW1n4j8RLpjVp244DOxLumEqfoQU39Ng05KY3jLeByQmyhzbRompXg39aamd9SNUQNd
	ihcVUowVxRO1di6M+xyg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rQuh2-006UL8-0J;
	Fri, 19 Jan 2024 19:38:20 +0000
Received: from madrid.collaboradmins.com ([2a00:1098:ed:100::25])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rQugx-006UJF-1q;
	Fri, 19 Jan 2024 19:38:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1705693090;
	bh=sj/aqzYfZIDTUDNdCb7eHJppTugbxRlSalOblYODELs=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=TgnQeH2jS6UZs8ulzz0LUiqetDM2CLH2UuSiA+Jb/Yd1LRFJ9aHWhWlTVHENwKZmH
	 T+1V4R/WDxV9tAbBliZsZ4SGcMbftX1DO8YkPgGAiJLCNFe2LUhIcEzklERHyyZFM1
	 TyFiaAVLfMTVvauvreTo6XGs8Mnn14BTonm7eN6pSHVY2/eK5LDmsbiKHqnuh6p2HH
	 kB3VgwccHAjkvuE3BjV701twB7HnZXB2W4gq4Tv7V18UZ38Lx51NHlfs9RPH5BqTSf
	 GT5cBZOLRJP3M5PPwp+Ylnu2aF2vmtQvRP5+pZ9pRkTzX2Dpe5Wts5gbkZQ1MaUHKP
	 VYK55PyWrASCQ==
Received: from localhost (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (prime256v1) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id 053373782087;
	Fri, 19 Jan 2024 19:38:09 +0000 (UTC)
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
To: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Johan Jonker <jbx6244@gmail.com>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Andy Yan <andy.yan@rock-chips.com>,
	Algea Cao <algea.cao@rock-chips.com>
Cc: linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	kernel@collabora.com
Subject: [PATCH 1/3] dt-bindings: soc: rockchip: Add rk3588 hdptxphy syscon
Date: Fri, 19 Jan 2024 21:38:01 +0200
Message-ID: <20240119193806.1030214-2-cristian.ciocaltea@collabora.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240119193806.1030214-1-cristian.ciocaltea@collabora.com>
References: <20240119193806.1030214-1-cristian.ciocaltea@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240119_113815_778156_1C236B58 
X-CRM114-Status: UNSURE (   8.84  )
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

Add compatible for the hdptxphy GRF used by rk3588-hdptx-phy.

Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
---
 Documentation/devicetree/bindings/soc/rockchip/grf.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/soc/rockchip/grf.yaml b/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
index 9793ea6f0fe6..61bfe678dc7f 100644
--- a/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
+++ b/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
@@ -22,6 +22,7 @@ properties:
               - rockchip,rk3568-usb2phy-grf
               - rockchip,rk3588-bigcore0-grf
               - rockchip,rk3588-bigcore1-grf
+              - rockchip,rk3588-hdptxphy-grf
               - rockchip,rk3588-ioc
               - rockchip,rk3588-php-grf
               - rockchip,rk3588-pipe-phy-grf
-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
