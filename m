Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4F986E7718B
	for <linux-phy@archiver.kernel.org>; Thu, 19 Dec 2024 08:17:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OESedSrWiFatOmSgWWpkko3canP7Y8m+mmMOKHZMXGU=; b=PA5NPv4H2kcZHY
	c2Os6SQQuniaYp4xEbvK84Fzj6yomStabDYdzD/p4d5uEc5ljN74cDX6AthQ78eOC6P7MPYa4uk3a
	cgxtcHV7L7lgLaQJzAAIgY6AzFmmgyI5+h01uIdNLTiXdVu8cdr++2dZ3BXItgwxADtvdjNDFI/Vg
	WgNYm6Wk1cGXNvVstqBV8uk+0hSfPsQO3AJOnYTJfG7VBOZMzdHDQvcwLE+STkX2+78yKQzjJ3Y6E
	IL/ikUus2RnlxuaU3MyY5GAMYEMj3pblkM6ClEVFvVb+Zs6p669p2LZMufkG9hGBPiqVeRyAciI1m
	69jb79X33sAS/ifc/FMA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tOBj2-00000001FHh-0Gjl;
	Thu, 19 Dec 2024 08:17:40 +0000
Received: from mail-m1973199.qiye.163.com ([220.197.31.99])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tOBYS-00000001D6P-3bqF;
	Thu, 19 Dec 2024 08:06:46 +0000
Received: from zyb-HP-ProDesk-680-G2-MT.. (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 633dd684;
	Thu, 19 Dec 2024 16:06:39 +0800 (GMT+08:00)
From: Damon Ding <damon.ding@rock-chips.com>
To: heiko@sntech.de
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	rfoss@kernel.org,
	vkoul@kernel.org,
	sebastian.reichel@collabora.com,
	cristian.ciocaltea@collabora.com,
	l.stach@pengutronix.de,
	andy.yan@rock-chips.com,
	hjc@rock-chips.com,
	algea.cao@rock-chips.com,
	kever.yang@rock-chips.com,
	dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org,
	Damon Ding <damon.ding@rock-chips.com>
Subject: [PATCH v3 10/15] dt-bindings: display: rockchip: analogix-dp: Add support to get panel from the DP AUX bus
Date: Thu, 19 Dec 2024 16:05:59 +0800
Message-Id: <20241219080604.1423600-11-damon.ding@rock-chips.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20241219080604.1423600-1-damon.ding@rock-chips.com>
References: <20241219080604.1423600-1-damon.ding@rock-chips.com>
MIME-Version: 1.0
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQk4dQlYdTExJSE9JT0oYS05WFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSUhCSE
	NVSktLVUpCS0tZBg++
X-HM-Tid: 0a93ddf45b8603a3kunm633dd684
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6MRw6PDo5STIWPhU6HzkDDB86
	AxhPCyFVSlVKTEhPTkJOTUtLQkhLVTMWGhIXVR8aFhQVVR8SFRw7CRQYEFYYExILCFUYFBZFWVdZ
	EgtZQVlOQ1VJSVVMVUpKT1lXWQgBWUFDQks3Bg++
DKIM-Signature: a=rsa-sha256;
	b=PbC2+UZ5ue2tIuXkb1z3GNOb7tfnQf9ktP+fPC6SE6KZjNO/Ghxtohp7/N8ugEPwVn2zbJR4TFRSTb0DxAvnbV1hM45nqXJ/a3BUGR5Lzao5onqN8RwgcRw1aCpMFDveunOOfCPHsuPfPnRd011VXamn69fqC5lianD9MC+UIhs=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=jdZLRbj5Qu9T/Yq8V2XQTDpxqJDXZsuKPPN9ZHB0moQ=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241219_000645_054676_CC03AF8A 
X-CRM114-Status: UNSURE (   6.95  )
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

According to Documentation/devicetree/bindings/display/dp-aux-bus.yaml,
it is a good way to get panel through the DP AUX bus.

Signed-off-by: Damon Ding <damon.ding@rock-chips.com>
---
 .../bindings/display/rockchip/rockchip,analogix-dp.yaml        | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/rockchip/rockchip,analogix-dp.yaml b/Documentation/devicetree/bindings/display/rockchip/rockchip,analogix-dp.yaml
index 4f84e8849876..c45d92a2d901 100644
--- a/Documentation/devicetree/bindings/display/rockchip/rockchip,analogix-dp.yaml
+++ b/Documentation/devicetree/bindings/display/rockchip/rockchip,analogix-dp.yaml
@@ -49,6 +49,9 @@ properties:
     description:
       This SoC makes use of GRF regs.
 
+  aux-bus:
+    $ref: /schemas/display/dp-aux-bus.yaml#
+
 required:
   - compatible
   - clocks
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
