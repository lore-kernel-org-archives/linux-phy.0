Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 65D77CF9C6C
	for <linux-phy@archiver.kernel.org>; Mon, 23 Sep 2024 02:45:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=MG1sITnQSe+x+3RQCGJexlVCYuF5i44S0i8icCxUrbI=; b=vyU/MVCqaPFpXL
	nl/51ILiwAm42/5IAY944zEgG1qXpZphz1X8/oI/mJ9gyBbnZbwKvYcdLug8vZ7yAm4C5fVE+ESWU
	3ZPdr/19owg3BxiqaPoc7xCTkCuzmaPah7tGnMEr+f3YuDBkpP1v1qQ0Mk6z9kjuQAI2hbLtLCGRl
	32J/NHKBz5Ed0qGCXma2SRaL4F6zlZVW8ycyF1fjXGiV8Xcd19MvizsJq/VWqsBzUKxLsti45JYoE
	h8J+tiiWdxjGR5qCLkE7AhUKyIjKFMcIatqC47Jd/Lym4ZSFPq7Iny6Ah4j7AluTi/Jjyq+hkBYwC
	ywiKUtGfk6tvdF21lTQg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1ssZ4P-0000000GAIY-0Dx9;
	Mon, 23 Sep 2024 02:45:01 +0000
Received: from mail-m12797.qiye.163.com ([115.236.127.97])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1ssZ4L-0000000GAHS-2vzw;
	Mon, 23 Sep 2024 02:44:59 +0000
DKIM-Signature: a=rsa-sha256;
	b=bS7Mygtz5svgIVIblaHXh1teibJXC8mcekWdFgDmGRA00DzjoCr0TFbEULFWUwH3cwd4sjNoNsqHAS2Ue41bM6hdmzakv4eQZe457H+xjYJB7+Kyf5CVqiNco5RdTuZYj0Hvjb5JZ5e5964+sBVLCXoGZmyWayE6LROd4tzaemo=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=VQsv3eGnFGYPAhujVLnl+ytcYvxGVNFdwZjVZ/xbx0c=;
	h=date:mime-version:subject:message-id:from;
Received: from localhost.localdomain (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTPA id 475EF9004AC;
	Mon, 23 Sep 2024 10:44:29 +0800 (CST)
From: Frank Wang <frank.wang@rock-chips.com>
To: vkoul@kernel.org,
	kishon@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	heiko@sntech.de
Cc: linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	william.wu@rock-chips.com,
	tim.chen@rock-chips.com,
	wmc@rock-chips.com,
	Frank Wang <frank.wang@rock-chips.com>
Subject: [PATCH 1/2] dt-bindings: phy: rockchip,inno-usb2phy: add rk3576
Date: Mon, 23 Sep 2024 10:44:25 +0800
Message-ID: <20240923024426.10330-1-frank.wang@rock-chips.com>
X-Mailer: git-send-email 2.45.2
MIME-Version: 1.0
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGk9NHVZLSR5MHhoYS0IfHk5WFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSUhCSE
	NVSktLVUpCS0tZBg++
X-HM-Tid: 0a921cc426e603a3kunm475ef9004ac
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6Kz46Dyo4CjI8AU8ROkw2DRk4
	TU4wCTJVSlVKTElMS05CT0xLTU5NVTMWGhIXVR0JGhUQVQwaFRw7CRQYEFYYExILCFUYFBZFWVdZ
	EgtZQVlOQ1VJSVVMVUpKT1lXWQgBWUFJQ0tCNwY+
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240922_194458_064617_53BBB2F1 
X-CRM114-Status: UNSURE (   8.11  )
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

Add compatible for the USB2 phy in the Rockchip RK3576 SoC.

Change-Id: Ia976f68069ae96a01e30db7183a7b51f78a92951
Signed-off-by: Frank Wang <frank.wang@rock-chips.com>
---
 .../devicetree/bindings/phy/rockchip,inno-usb2phy.yaml | 10 +++++++++-
 1 file changed, 9 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/phy/rockchip,inno-usb2phy.yaml b/Documentation/devicetree/bindings/phy/rockchip,inno-usb2phy.yaml
index 5254413137c64..214917e55c0b6 100644
--- a/Documentation/devicetree/bindings/phy/rockchip,inno-usb2phy.yaml
+++ b/Documentation/devicetree/bindings/phy/rockchip,inno-usb2phy.yaml
@@ -20,6 +20,7 @@ properties:
       - rockchip,rk3366-usb2phy
       - rockchip,rk3399-usb2phy
       - rockchip,rk3568-usb2phy
+      - rockchip,rk3576-usb2phy
       - rockchip,rk3588-usb2phy
       - rockchip,rv1108-usb2phy
 
@@ -34,10 +35,16 @@ properties:
     const: 0
 
   clocks:
-    maxItems: 1
+    minItems: 1
+    items:
+      - description: phyclk - PHY input reference clocks.
+      - description: aclk and aclk_slv are optional and used for USB MMU.
 
   clock-names:
+    minItems: 1
     const: phyclk
+    const: aclk
+    const: aclk_slv
 
   assigned-clocks:
     description:
@@ -144,6 +151,7 @@ allOf:
             enum:
               - rockchip,rk3568-usb2phy
               - rockchip,rk3588-usb2phy
+              - rockchip,rk3576-usb2phy
 
     then:
       properties:
-- 
2.45.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
