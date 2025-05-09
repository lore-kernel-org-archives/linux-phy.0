Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5F1E8C3ABC5
	for <linux-phy@archiver.kernel.org>; Fri,  9 May 2025 00:46:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bFzh6GxZ4ubJrdD5FkVqvLFkYAf1xVOcf067MYcgf8g=; b=TDQribPO4nz3qc
	Q9E0uAK+fDxWbu0Zw+EhLlE/odvyFU40/gBZlIci6C/gm8TV7NcDC6o6Yg39CFnkOeCHbD44Yzsjt
	sY3FrMjDyaTJABIJxuvpD4pJUTLJ5Dq18+SFWnNx9i+PffIXxmDg+gxCpxHCP2lCf835co68rqR4X
	RpimQ4WQ8zULYC/d4FMtNZcDCdItq2vZ40+HlsXsLfyVmAS+QYhqpp07BMabqngUpOmcf7pixepFT
	+kxz7vmA/WNc7IbDWGiNd/1TVcO0fMM4sN7AppOVYD5jDM621hcGe+Hy5j1fVw6mir6mJUyiuiZSz
	O4bRd0KMzcCRFi6nzIpA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uDBsl-000000027nt-0aes;
	Fri, 09 May 2025 00:46:31 +0000
Received: from layka.disroot.org ([178.21.23.139])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uDBov-000000026kX-1NcI;
	Fri, 09 May 2025 00:42:34 +0000
Received: from mail01.disroot.lan (localhost [127.0.0.1])
	by disroot.org (Postfix) with ESMTP id 6FA0A234ED;
	Fri,  9 May 2025 02:42:30 +0200 (CEST)
X-Virus-Scanned: SPAM Filter at disroot.org
Received: from layka.disroot.org ([127.0.0.1])
 by localhost (disroot.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id GK8D_ypDRo6u; Fri,  9 May 2025 02:42:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=disroot.org; s=mail;
	t=1746751349; bh=R+IC1SCvxx356jqj5bqy53vEVEdZC6a8kUA28zCXPGQ=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References;
	b=HFn+2qo+yH+H+mZfogdOhoocRulrzyRxQw0Ut55j9oNYtGxtT5NpHjSGPwkqUytlB
	 /fCh3x8M/nEoyxxVp5P16mSEF6fmvoEmJ/RPk5UMmWP9oLqWbQByiw8WRdseRIe8lQ
	 mkkLZz+Gd4u+tgT/o2xuHGtVLOvv32V46JgdlkhPxUfvknEEAiMQTerZ58xqjjjG3n
	 GvnEuiQEq05j0Vk2IhxrV7GCV1fYkKgSEbAhJVeCmHMDkcYDQ1gWTBInUl3zQTyumF
	 PbIoMvmCPdchByM07wpl+uUq9S3LUaHVZbFPYCQJKYB0uPr+VwPE/zKVnfbBNJjc4k
	 SNf04Oz/rcnLA==
From: Yao Zi <ziyao@disroot.org>
To: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Yao Zi <ziyao@disroot.org>,
	Frank Wang <frank.wang@rock-chips.com>,
	Andy Yan <andy.yan@rock-chips.com>,
	Cristian Ciocaltea <cristian.ciocaltea@collabora.com>,
	Detlev Casanova <detlev.casanova@collabora.com>,
	Shresth Prasad <shresthprasad7@gmail.com>,
	Chukun Pan <amadeus@jmu.edu.cn>,
	Jonas Karlman <jonas@kwiboo.se>
Cc: linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Conor Dooley <conor.dooley@microchip.com>
Subject: [PATCH v2 1/5] dt-bindings: soc: rockchip: Add RK3528 pipe-phy GRF syscon
Date: Fri,  9 May 2025 00:41:18 +0000
Message-ID: <20250509004121.36058-3-ziyao@disroot.org>
In-Reply-To: <20250509004121.36058-2-ziyao@disroot.org>
References: <20250509004121.36058-2-ziyao@disroot.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250508_174233_500019_BED12529 
X-CRM114-Status: UNSURE (   6.83  )
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

Add compatible string for pipe-phy GRF found on RK3528 SoC, which
controls misc settings for the integrated naneng-combphy.

Signed-off-by: Yao Zi <ziyao@disroot.org>
Acked-by: Conor Dooley <conor.dooley@microchip.com>
---
 Documentation/devicetree/bindings/soc/rockchip/grf.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/soc/rockchip/grf.yaml b/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
index 2f61c1b95fea..7e9321999435 100644
--- a/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
+++ b/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
@@ -16,6 +16,7 @@ properties:
           - enum:
               - rockchip,rk3288-sgrf
               - rockchip,rk3528-ioc-grf
+              - rockchip,rk3528-pipe-phy-grf
               - rockchip,rk3528-vo-grf
               - rockchip,rk3528-vpu-grf
               - rockchip,rk3566-pipe-grf
-- 
2.49.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
