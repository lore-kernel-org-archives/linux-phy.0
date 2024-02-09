Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6E91FC4829C
	for <linux-phy@archiver.kernel.org>; Fri,  9 Feb 2024 18:18:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=P+Gqq/2bWDdeVMKrrxqz12NMbzVsZXPZ2ZoetXeYssI=; b=AspfvtOTp/zWhe
	JnmPcXePqKE3QxTjv9bRM4OS/wmH+K6W7jWaxh0llv0SWUfOhxuvBRc2kog5cDskvpB5I2gzTNswy
	knyylGm7UazdGp2StgJXTMMNeuphC0WHlu8ElG7ze3UCSoo5ekMPPw3zE1+TcgaKSaVMLreTjh9BB
	/9YeYj5d4/xcSpz1NLASZW1861SvgIkgf9VHe8Ll+D4Sb/zd+hQMLkkU65JtWxt8laElQO5oGVOcl
	MXV5f0oVSMnGhcNv8PqfnAf1iwrX6lT5kk7UD3xIoew4T43YksH4kgMsyuTAmV7N4HsAIc1YyVtFg
	fSCWz9z3sGPHYpuz4V5w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rYVST-00000000Dl5-40Z3;
	Fri, 09 Feb 2024 18:18:41 +0000
Received: from madrid.collaboradmins.com ([2a00:1098:ed:100::25])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rYVSO-00000000Dh5-3mxC;
	Fri, 09 Feb 2024 18:18:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1707502713;
	bh=MpboPBc+N4LaDq5m0T4vAFnpYG6z/CneePQ9zzqz5/o=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=HkFuhZL1qFCQBpdaVTY/tAV4eh9SR49iN/g13SDf6IYoVfwscaqvPphx2VNMv6NTW
	 dOAcaPW3XYnxTFT4fJMiALVv+hQOR+KokkBXI8ApCe/Ap2VCjsohJOMBlhPX1o6Ohf
	 xUGlY+BLutLYQyCnJRr/ZdRPZYdchKn/52ZntDSVY9E5ZdGoiPBnaITi5aIlrRbBKS
	 yV1H9x6oxygrX3H5JTueONSnURVILzxTsHZtYeU8t6YIyIEEwR2PsJPinwybxZfcpF
	 GXlrbH4dByQTlNmJqNa54Qoal8NpuWOQYekry6B7+JJEzaA8yiYazAKKySLxfX9MtA
	 I2ynmsgmBawoQ==
Received: from jupiter.universe (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sre)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id 0545E378208C;
	Fri,  9 Feb 2024 18:18:33 +0000 (UTC)
Received: by jupiter.universe (Postfix, from userid 1000)
	id 8FDF54800D0; Fri,  9 Feb 2024 19:18:32 +0100 (CET)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Heiko Stuebner <heiko@sntech.de>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	linux-rockchip@lists.infradead.org,
	linux-phy@lists.infradead.org
Cc: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Frank Wang <frank.wang@rock-chips.com>,
	Kever Yang <kever.yang@rock-chips.com>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	kernel@collabora.com
Subject: [PATCH v1 02/10] dt-bindings: soc: rockchip: add rk3588 USB3 syscon
Date: Fri,  9 Feb 2024 19:17:18 +0100
Message-ID: <20240209181831.104687-3-sebastian.reichel@collabora.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240209181831.104687-1-sebastian.reichel@collabora.com>
References: <20240209181831.104687-1-sebastian.reichel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240209_101837_309708_F032F5B7 
X-CRM114-Status: UNSURE (   8.81  )
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

RK3588 USB3 support requires the GRF for USB and USBDP PHY.

Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
 Documentation/devicetree/bindings/soc/rockchip/grf.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/soc/rockchip/grf.yaml b/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
index 20bc1f46384c..12e7a78f7f6b 100644
--- a/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
+++ b/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
@@ -28,6 +28,8 @@ properties:
               - rockchip,rk3588-sys-grf
               - rockchip,rk3588-pcie3-phy-grf
               - rockchip,rk3588-pcie3-pipe-grf
+              - rockchip,rk3588-usb-grf
+              - rockchip,rk3588-usbdpphy-grf
               - rockchip,rk3588-vo-grf
               - rockchip,rk3588-vop-grf
               - rockchip,rv1108-usbgrf
-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
