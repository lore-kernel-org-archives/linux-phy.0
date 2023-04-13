Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2645BC77B73
	for <linux-phy@archiver.kernel.org>; Thu, 13 Apr 2023 18:24:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KDmRk6WwUD4sjIxtbwZhwiOye9iDiRbBWpVpXPNLP8o=; b=GnkOffRHQqNoGT
	AlkJ6RLrCkqxnP5RLNpfxQbuvlMWIjf7iwQSKB59RKjGc3NYtEiwE8IqbAdBaDsjfXvRLb7UzQwak
	2K7wq3joQt4IlLCWC7YC3qoXh+vNEGVy4E328OUrdURQf/AVqpC34NtF9GKXMFjX86yCTDa/mU8RL
	m0kOTLGLOvkXUTlFOaYbsnGYgdA3mBQy6JsdlSYccjalbZAbdLFjEpMprZYkKBpBqAQsVwFHlSbRY
	CyhTaKMdu6KoOLPk8r80IJ0J4qDBT/zlyfdLYbkbXga1AiqKZf5FoB+LG4+14PASfIJ5fIFeP2r/j
	pnLclFksv5gsicHnvTrA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pn1c3-006tuZ-2K;
	Thu, 13 Apr 2023 18:24:03 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pn1bz-006toT-1O;
	Thu, 13 Apr 2023 18:24:02 +0000
Received: from jupiter.universe (dyndsl-091-248-212-251.ewe-ip-backbone.de [91.248.212.251])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: sre)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 6A0516603220;
	Thu, 13 Apr 2023 19:23:51 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1681410231;
	bh=zAjmL1BsGoOklDz1it3NJmReakUPeGQCam58Z7IsTXQ=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=G7ZQvrSFBMb0jXOSMCMBBP5lIgdeFmRUiJLqNmPe16V5VkkuL/e94NdSeKrbtxBhr
	 C/dOfzTpPbuMCGuXA3YzTV1A5fKgFfqR0vAK48ytk1H1//LWADehUjHfuLfoqCyGK4
	 O5oaxj1juSox7QkYE7D1B4nPtfXLqNWBIys6qws3JUG6VDrvaLP2LBq/cM6j0A84Tu
	 FOkYRDpK3BbxCmfxxeyycBgduMYc2/bf+kfNavs9KmiJruMxrlyn33L6pP0VuaaS3o
	 BvCz1iiDZRYUrUl3nB7TAem6bKgrn3PNyRXkSViM30XrbaxvJZasGY/iIZb/6tDXVC
	 sniDnVZACTxiw==
Received: by jupiter.universe (Postfix, from userid 1000)
	id 8ED504807F0; Thu, 13 Apr 2023 20:23:48 +0200 (CEST)
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
	kernel@collabora.com
Subject: [PATCHv1 3/5] dt-bindings: phy: rockchip: rk3588 has two reset lines
Date: Thu, 13 Apr 2023 20:23:43 +0200
Message-Id: <20230413182345.92557-4-sebastian.reichel@collabora.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230413182345.92557-1-sebastian.reichel@collabora.com>
References: <20230413182345.92557-1-sebastian.reichel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230413_112359_620052_547CE89E 
X-CRM114-Status: UNSURE (   9.24  )
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

The RK3588 has two reset lines for the combphy. One for the
APB interface and one for the actual PHY.

Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
 .../bindings/phy/phy-rockchip-naneng-combphy.yaml          | 7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/phy/phy-rockchip-naneng-combphy.yaml b/Documentation/devicetree/bindings/phy/phy-rockchip-naneng-combphy.yaml
index 9ae514fa7533..bac1aae07555 100644
--- a/Documentation/devicetree/bindings/phy/phy-rockchip-naneng-combphy.yaml
+++ b/Documentation/devicetree/bindings/phy/phy-rockchip-naneng-combphy.yaml
@@ -31,8 +31,13 @@ properties:
       - const: pipe
 
   resets:
+    minItems: 1
+    maxItems: 2
+
+  reset-names:
     items:
-      - description: exclusive PHY reset line
+      - const: phy
+      - const: apb
 
   rockchip,enable-ssc:
     type: boolean
-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
