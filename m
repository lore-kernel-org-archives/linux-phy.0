Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EAD8CEB64DD
	for <linux-phy@archiver.kernel.org>; Mon, 14 Aug 2023 09:39:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=9AhaVIytBgVRZOZ5oQfYRwvPDAW6lJ4XpKd0sj1L1a0=; b=s5EIyg4aRkGbIP
	RzqtStYh4yvShv1wRMsNwW3bF9PI5n291/0+konKf47U6MfAq6Xcrb7Pww4L3wWmSjRbtiV5ud60N
	RiirivCkKDHAJtwCV1tLKz/vlB2yXbfb0EHNnMOPxsII2KM5CsuZsQqtzN3GSVh5HVhqBMoavJZAm
	4Tw4U/rUcL3vLrCbhW4f+RN/0pN6s/C6v+eOkZLAwhtdWgAw0I3c055A/j6jdTYgvdrQ7QG6GyPkN
	72uDOVgtV4zFvPjFoR+jNIQ2SrvlJ2ghesiNn5PV8MlNSiChapPT3n0AmmWl/nnJcs7XmwRlUrSDs
	1e/GzWHAcKkWKyFV7rxw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qVU36-00GdWL-28;
	Mon, 14 Aug 2023 09:39:44 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qVU33-00GdUd-1v;
	Mon, 14 Aug 2023 09:39:42 +0000
Received: from eugen-station.. (unknown [86.127.70.132])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: ehristev)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 0C34966071A3;
	Mon, 14 Aug 2023 10:39:37 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1692005979;
	bh=ReQu8PlNQ3B+RBTqaF0mmwCVGrAXcC7wZ1rVXE/sQWg=;
	h=From:To:Cc:Subject:Date:From;
	b=M8Ca4aLb3WE+Q4DJJJQ067zA0ycljgRWSx763eFg5TmROuoK9lASVtpzn5vnV1MJ6
	 rJurNQBtBBAz+RnSBs9tVLUNP15VWi5RoR4++7wTkZ+L9rdgNmjmBG8yo1lhGsAZV5
	 iWPU1pRwpvnBPFpNTEV+UQY1BNxGjC/6DarevfEqEXuBboIg4Z8syGF9jMb/VMkigj
	 FAfBuV1Iq63HpHktATW1U0t2KT7GkNdnia9/8uHgHw8PI4VEvbQu/pZVzAqATpfsrR
	 yx7UQ5F9u9pZe3egS2YZEylFdiOd+t+fDCe/k+qazHnNPRCq4Vin1X1oNWkFz19lkU
	 dVHxDJCX3vvlQ==
From: Eugen Hristev <eugen.hristev@collabora.com>
To: linux-mediatek@lists.infradead.org
Cc: chunfeng.yun@mediatek.com,
	vkoul@kernel.org,
	kishon@kernel.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	matthias.bgg@gmail.com,
	angelogioacchino.delregno@collabora.com,
	sam.shih@mediatek.com,
	jieyy.yang@mediatek.com,
	frank-w@public-files.de,
	linux-arm-kernel@lists.infradead.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	chris.obbard@collabora.com,
	kernel@collabora.com,
	Eugen Hristev <eugen.hristev@collabora.com>
Subject: [PATCH v2 1/2] dt-bindings: phy: mediatek,tphy: allow simple nodename pattern
Date: Mon, 14 Aug 2023 12:39:30 +0300
Message-Id: <20230814093931.9298-1-eugen.hristev@collabora.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230814_023941_788634_BBC48C2D 
X-CRM114-Status: GOOD (  11.60  )
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

The pattern for the nodename only allows t-phy@... , however, for the case
when the t-phy has no `reg` and only `ranges` (basically when the t-phy
is just a parent node), dtc will throw this warning:

Warning (unit_address_vs_reg): /t-phy@1a243000: node has a unit name, but no reg or ranges property

For a node like this:

	sata_phy: t-phy@1a243000 {
		ranges;

		sata_port: sata-phy@1a243000 {
			reg = <0 0x1a243000 0 0x0100>;
		};
	};

it is normal that the parent node 't-phy' would be without any address, as in:

	sata_phy: t-phy {
		ranges;

		sata_port: sata-phy@1a243000 {
			reg = <0 0x1a243000 0 0x0100>;
		};
	};

because being just a holder it does not have its own reg.

However the binding does not allow such a name for the t-phy, so with this
patch, making the `@[0-9a-f]+` part optional, such node is possible.

Signed-off-by: Eugen Hristev <eugen.hristev@collabora.com>
---
Changes in v2:
- none
 Documentation/devicetree/bindings/phy/mediatek,tphy.yaml | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/phy/mediatek,tphy.yaml b/Documentation/devicetree/bindings/phy/mediatek,tphy.yaml
index 230a17f24966..2bb91542e984 100644
--- a/Documentation/devicetree/bindings/phy/mediatek,tphy.yaml
+++ b/Documentation/devicetree/bindings/phy/mediatek,tphy.yaml
@@ -64,7 +64,7 @@ description: |
 
 properties:
   $nodename:
-    pattern: "^t-phy@[0-9a-f]+$"
+    pattern: "^t-phy(@[0-9a-f]+)?$"
 
   compatible:
     oneOf:
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
