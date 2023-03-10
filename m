Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CEEDBC6FA99
	for <linux-phy@archiver.kernel.org>; Fri, 10 Mar 2023 08:06:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6bsdi0Ol7LjBy+7xFeKdTBhQZwZsPQl1uNsNAkIhXiI=; b=lP4H0a7HZ1UsXx
	1ShjwCAdXv8FoCEZKHBuqtTVFEo9ODJc5NKeU4PJdh5Qeomx4jrEKDTjS8aiu9OF9J/85kFWfdjvk
	2L4kAkiQ9k8c5T5jv5JxL5uMNUk9OUnXfL9RWbq2G8SdXwtUXcHzOeeL+JPpEk4i8/0je+wlSdXSH
	zx+w+Yasfu4EnXVXBv+wN0IHlfNMlRQcrgEJwCZJqHCzw7B7DWzUmlTO/3HN247XhVpvVh3PidHrS
	Xz+LgIb1xt0kA02XZj9mYUoEANxOggZKP+9D2pldDk8HxzV6VNLGnwwt0hLJuEfvG8XkLu7vBjOr+
	QHxape4aUplhuFkb7oaw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1paXld-00DWJc-57
	for linux-phy@archiver.kernel.org; Fri, 10 Mar 2023 08:06:21 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1paXl2-00DW2M-VE; Fri, 10 Mar 2023 08:05:47 +0000
Received: from cryzen.lan (cpc87451-finc19-2-0-cust61.4-2.cable.virginm.net [82.11.51.62])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: tanureal)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 65BC46603083;
	Fri, 10 Mar 2023 08:05:43 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1678435543;
	bh=+ZX7vYLxaBazI08zF5lNguc40/rFNVo9sCm+2OiHagA=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=Q6hA6R1SqYQZ8YdpMwHANgLV+I9hzt66+OemjAwE845VtxO74K9Po0yR/hVpmVMyu
	 f6TgbY9c6KP0RDpUg410/rYRZ+GOdjEpA2EQqx3gefaidQAsb1eD3Q8hE7Fq/+GFHm
	 OeTDg5c54bmdFCsPx3xsrqHpDCFrSkfOr5OWemVy2McvZwdhtmPWBQ8piV02l/QsAC
	 iFNLsZIStXoDWuJURmmWRetliS5IV2EvNx3bjf3rDAl2/nJQmI25U7/JeQXiifJAl6
	 LwysFb/wruv0JXp1RVe8oFJ8Mf/cLKf0XGbWgdgxdl55E79Vf6mV/vyR97+SmkeQKN
	 uG839CYQzQbTA==
From: Lucas Tanure <lucas.tanure@collabora.com>
To: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Thomas Gleixner <tglx@linutronix.de>,
	Marc Zyngier <maz@kernel.org>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof Wilczynski <kw@linux.com>,
	Bjorn Helgaas <bhelgaas@google.com>
Cc: Qu Wenruo <wqu@suse.com>,
	Piotr Oniszczuk <piotr.oniszczuk@gmail.com>,
	Peter Geis <pgwipeout@gmail.com>,
	Kever Yang <kever.yang@rock-chips.com>,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-pci@vger.kernel.org,
	Lucas Tanure <lucas.tanure@collabora.com>,
	kernel@collabora.com
Subject: [PATCH 3/7] dt-bindings: phy: rockchip: Add rk3588 compatible line
Date: Fri, 10 Mar 2023 08:05:14 +0000
Message-Id: <20230310080518.78054-4-lucas.tanure@collabora.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230310080518.78054-1-lucas.tanure@collabora.com>
References: <20230310080518.78054-1-lucas.tanure@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230310_000545_151694_CB70AEAD 
X-CRM114-Status: UNSURE (   7.68  )
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

RK3568 Naneng Combo Phy driver can support RK3588 with the additional
clocks and initial configuration, so add the compatible line.

Signed-off-by: Lucas Tanure <lucas.tanure@collabora.com>
---
 .../devicetree/bindings/phy/phy-rockchip-naneng-combphy.yaml     | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/phy/phy-rockchip-naneng-combphy.yaml b/Documentation/devicetree/bindings/phy/phy-rockchip-naneng-combphy.yaml
index 8d8698412de0..9ae514fa7533 100644
--- a/Documentation/devicetree/bindings/phy/phy-rockchip-naneng-combphy.yaml
+++ b/Documentation/devicetree/bindings/phy/phy-rockchip-naneng-combphy.yaml
@@ -13,6 +13,7 @@ properties:
   compatible:
     enum:
       - rockchip,rk3568-naneng-combphy
+      - rockchip,rk3588-naneng-combphy
 
   reg:
     maxItems: 1
-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
