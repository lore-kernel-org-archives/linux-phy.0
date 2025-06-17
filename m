Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7D92AC71157
	for <linux-phy@archiver.kernel.org>; Tue, 17 Jun 2025 09:09:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id
	:Date:Subject:From:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=eFzNKuJvbmqk3RPuSX6TkqL/BPqOzFBxfs6M3Ax5uxE=; b=HPQe43MgyZygdT
	ZDCCv6Up7KoW7+VU/c9URDZizwCi9I19EGcx5I8TISt9I0+aeChJSAdH4fMvEsbb675j++LaZLDLW
	//i52IcaWLwKTnDgjtIsbCfBmTPpOxI9JIw69/ryRBHIhgcc+FZ9y6stgIp3q2PE98cXUc5I1s4T9
	KfGXqEsuvbciwZQhNMFTilppYerP6N4Zw5EXcie4LNmTdqdmlB34DShBXD1UDFoxsPCiiWNUINiDm
	06Ebia5pUEYNMxtZL9w01cDRKHA9422c+CwhjbJoSHab3KTG6jcoL+oYnQiIliVLh2GMf5v0NOoOE
	NazaFEkmeNk+KGsEuEiw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uRSKI-00000006hLC-0byL;
	Tue, 17 Jun 2025 09:09:54 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uRSHw-00000006gvt-2660;
	Tue, 17 Jun 2025 09:07:28 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id A2A0E629F2;
	Tue, 17 Jun 2025 09:07:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 4B1D5C4CEED;
	Tue, 17 Jun 2025 09:07:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750151247;
	bh=Si2W4F7cUbz3L54al/Qkxuum2j7kVFvTLzKFSkA8wyQ=;
	h=From:Subject:Date:To:Cc:Reply-To:From;
	b=c2APkMi3x0QA2ljjvUff2h++NBZ80rMXaSxc++gORSMjyM2ccuN/T//dorduTr7fi
	 Hlqh3xi4b9AL+bs67OYkm50qdy8Nx423bRnu35y+ZuMbm6TS7DyJUAAlqXHHwa54+g
	 LXavtweI7+g2gqKnnAhyHa628oz3NpUYuWQfm1w6H4W9V0AThUkDLNag3KlOtgVRbR
	 Ugozn+q/OlyaOIQOQqnLwvT+hwCvNVXvr4L/qx8mcyWNe2ou93/vaDOZ07h5XQHEU5
	 B9XOd5umXc+kAp5BnHbtNEDwAbweHqHWys7w1pIzXhNzg78oBOVuSpKxN+7Wcj4HBr
	 XXn4rHQqEdINQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 33632C71157;
	Tue, 17 Jun 2025 09:07:27 +0000 (UTC)
From: Michael Riesch via B4 Relay <devnull+michael.riesch.collabora.com@kernel.org>
Subject: [PATCH 0/5] phy: rockchip: phy-rockchip-inno-csidphy: add support
 for rk3588 variant
Date: Tue, 17 Jun 2025 10:54:41 +0200
Message-Id: <20250616-rk3588-csi-dphy-v1-0-84eb3b2a736c@collabora.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAFEtUWgC/x3MQQqAIBBA0avErBswS7GuEi3CmXIILBSiiO6et
 HyL/x/InIQzDNUDiU/JsseCpq7AhzmujELFoJU2yjYW09Ya59BnQTrCjb5n0jN1nvoFSnUkXuT
 6j+P0vh9u/TV2YQAAAA==
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, 
 Philipp Zabel <p.zabel@pengutronix.de>, 
 Jagan Teki <jagan@amarulasolutions.com>, 
 Sebastian Reichel <sebastian.reichel@collabora.com>, 
 Collabora Kernel Team <kernel@collabora.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 linux-phy@lists.infradead.org, 
 Michael Riesch <michael.riesch@collabora.com>
X-Mailer: b4 0.12.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1750150493; l=1495;
 i=michael.riesch@collabora.com; s=20250410; h=from:subject:message-id;
 bh=Si2W4F7cUbz3L54al/Qkxuum2j7kVFvTLzKFSkA8wyQ=;
 b=+p79y9jGgbIVFS386LZQ8TkpJw4rRZgJWWo3ICGeMWt4e0bJeMPjAC6VRl6QTmGaCgn2g/1VP
 cV9D94y/SBoCd72D6wrP7Yf32Xp2wJV04pR88bAa2zcbbYTaNO7Iofm
X-Developer-Key: i=michael.riesch@collabora.com; a=ed25519;
 pk=+MWX1fffLFZtTPG/I6XdYm/+OSvpRE8D9evQaWbiN04=
X-Endpoint-Received: by B4 Relay for michael.riesch@collabora.com/20250410
 with auth_id=371
X-Original-From: Michael Riesch <michael.riesch@collabora.com>
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
Reply-To: michael.riesch@collabora.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

Habidere,

The Rockchip RK3588 features two MIPI CSI-2 DPHYs (not to be confused with
the two combo MIPI DSI/CSI CPHY/DPHY blocks). The CSI-2 DPHYs can be
supported using the existing phy-rockchip-inno-csidphy driver, the notable
differences being
 - the control bits in the GRF
 - the additional reset line
This patch series adds support for this variant.

As you may have guessed, this is part of the efforts to bring the support
for the RK3588 Video Capture (VICAP) unit mainline.

Looking forward to your comments!

Signed-off-by: Michael Riesch <michael.riesch@collabora.com>
---
Michael Riesch (5):
      dt-bindings: soc: rockchip: add rk3588 csidphy grf syscon
      dt-bindings: phy: rockchip-inno-csi-dphy: add rk3588 variant
      phy: rockchip: phy-rockchip-inno-csidphy: allow writes to grf register 0
      phy: rockchip: phy-rockchip-inno-csidphy: add support for rk3588 variant
      arm64: dts: rockchip: add mipi csi-2 dphy nodes to rk3588

 .../bindings/phy/rockchip-inno-csi-dphy.yaml       | 60 ++++++++++++++++++++--
 .../devicetree/bindings/soc/rockchip/grf.yaml      |  1 +
 arch/arm64/boot/dts/rockchip/rk3588-base.dtsi      | 31 +++++++++++
 drivers/phy/rockchip/phy-rockchip-inno-csidphy.c   | 28 ++++++++--
 4 files changed, 112 insertions(+), 8 deletions(-)
---
base-commit: 19272b37aa4f83ca52bdf9c16d5d81bdd1354494
change-id: 20250616-rk3588-csi-dphy-c9ed2ad4cd9f

Best regards,
-- 
Michael Riesch <michael.riesch@collabora.com>



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
