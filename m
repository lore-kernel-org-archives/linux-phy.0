Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 69A12C433F5
	for <linux-phy@archiver.kernel.org>; Sat, 16 Apr 2022 14:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rhL6wk1538F+MpgHQo1NE8bvriUpqToefxaPPcV8sVo=; b=hwqzW6GTiCVdDU
	4TWqE7tA8QX2RowsigmEweuJUVPRynWX1UscMLKPmG4oZkG/yPDAcVniSqcC13ZNCn4Oy8pOq8kld
	JB26/EHkZ1JBgk1FsPudDgdL1+QBWXFHoelMX+SMLr0ea7SiERNbyV2YdR/KuBucbfSnxMUdHA78M
	ugYsmXWy3aPVgmyY9BBB9j43UU872Cr6hWLT5S+hBcQvlbbWoOYxbLBmsqnt/gRGAFSvexrjQp7Fe
	Uu0U0Z1rRL4d0NmN2JJs4OgSJy3eD4f8z3poYKuKIaXRcr0dbiFhtJzrLWJl7dl8h/+BipWZ99hho
	2zR75qVFZQYPNR7rUASA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nfiyq-00D3jV-Rt; Sat, 16 Apr 2022 14:00:52 +0000
Received: from mxout4.routing.net ([134.0.28.9])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nfiyc-00D3ei-0k; Sat, 16 Apr 2022 14:00:41 +0000
Received: from mxbox2.masterlogin.de (unknown [192.168.10.89])
 by mxout4.routing.net (Postfix) with ESMTP id E63D0100782;
 Sat, 16 Apr 2022 13:55:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mailerdienst.de;
 s=20200217; t=1650117334;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=g5ejzk9GpS8VTjnKRCmzXIxZY3vf3lh1U6Ejb6mQVLk=;
 b=QCn/b66E75Ue0HKdYRC1vgALENDeFfz+OYZzJIqvDMAkxJ2y4nCU2olRg6OzCFU1qS3bwE
 nP+8S5/eMO69JmYU6hfUysorIpddlWe/xFHSbnywlTI2FB29jJ9nX6WhLnRMwm41kZHOtv
 T1Lh0fIm836+WO1Z8UYNsABQn5tVwFU=
Received: from localhost.localdomain (fttx-pool-217.61.150.108.bambit.de
 [217.61.150.108])
 by mxbox2.masterlogin.de (Postfix) with ESMTPSA id 929D21005BA;
 Sat, 16 Apr 2022 13:55:32 +0000 (UTC)
From: Frank Wunderlich <linux@fw-web.de>
To: linux-rockchip@lists.infradead.org
Cc: Frank Wunderlich <frank-w@public-files.de>,
 Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Heiko Stuebner <heiko@sntech.de>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 =?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>,
 Bjorn Helgaas <bhelgaas@google.com>,
 Philipp Zabel <p.zabel@pengutronix.de>, Johan Jonker <jbx6244@gmail.com>,
 Peter Geis <pgwipeout@gmail.com>,
 Michael Riesch <michael.riesch@wolfvision.net>,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-pci@vger.kernel.org
Subject: [RFC/RFT 2/6] dt-bindings: soc: grf: add pcie30-{phy,pipe}-grf
Date: Sat, 16 Apr 2022 15:54:54 +0200
Message-Id: <20220416135458.104048-3-linux@fw-web.de>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220416135458.104048-1-linux@fw-web.de>
References: <20220416135458.104048-1-linux@fw-web.de>
MIME-Version: 1.0
X-Mail-ID: e53437fe-b70e-440e-b008-7f2a874ee308
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220416_070038_249027_93C01CBF 
X-CRM114-Status: UNSURE (   7.02  )
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
---
 Documentation/devicetree/bindings/soc/rockchip/grf.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/soc/rockchip/grf.yaml b/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
index 3be3cfd52f7b..ae48b58bd062 100644
--- a/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
+++ b/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
@@ -14,6 +14,8 @@ properties:
     oneOf:
       - items:
           - enum:
+              - rockchip,pcie30-phy-grf
+              - rockchip,pcie30-pipe-grf
               - rockchip,rk3288-sgrf
               - rockchip,rk3566-pipe-grf
               - rockchip,rk3568-usb2phy-grf
-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
