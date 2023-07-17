Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 216A9C001B0
	for <linux-phy@archiver.kernel.org>; Mon, 17 Jul 2023 17:35:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=FmfXCg203ZAYRun/ybyrbFULM2iQiR/SLbipUTEy5/k=; b=2kZhnSO8ovPR2a
	obeh6jrIAlNdntU+98e3GunRecDgWNxTq92iXqrD76ePnpju+wUt1NCaz/qOI1a36JUYvvR4qxQoM
	VeE8pv5nbbh4f7EdtrdkCWu3GkeJEohFKiFbEuBgKQI2PRVVC+vvzls1guwjGRQAslH8Zf2B5CeyI
	IyU2MHZ3WWVZnsC8lovqu2kaB39tPUjwUvx2Qdck61/n7zbVGJJ+wJbxYRIeW9DL2lCsTg54ijyy0
	wBHNAFtJk7AEPnC3LnSJ7JEIbndQDFbpq57U+BWM1fLoLoLTZ9XSLlbCvWgLr3uwnGl3aqmubTLKv
	pPyWUPHi6UnFzBM5fMOg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qLS82-004hKH-1X;
	Mon, 17 Jul 2023 17:35:22 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qLS7x-004hHp-1C;
	Mon, 17 Jul 2023 17:35:19 +0000
Received: from jupiter.universe (dyndsl-091-248-189-171.ewe-ip-backbone.de [91.248.189.171])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: sre)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id C8B636602329;
	Mon, 17 Jul 2023 18:35:15 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1689615315;
	bh=UU4KGgu8RlPQoKudc9GjsMWwW3SITngefu1mV+NgQcg=;
	h=From:To:Cc:Subject:Date:From;
	b=F6/uz/GiaXgc9Ic/keIGvkOBL24+/kpGMZuaaIy4CtWXCXPFjURzQbp2hv/eivLO6
	 nbTFikqKdLkCu2icFLkARl4ge5pX2870nMmA1sE7L19p2rXgER+7+mXYBJm4wi7ZXA
	 i7H3AtPl5ZNG8Q2DE8RTyfw67ZycQvYyLoktX253Y0+ElDwIzM/IUR2kTC1BauV9qi
	 zAtCQ9Wol7suTuT9Vem0SgylvJWSMuhdTnzg/z+6okJSIt0F/GYD1KswIpYLWmAjo/
	 lRfm/ErsEfbZKliNc2YY0q3BDlGThCjUtTwBjiW8AmuwyRrpQCi2wpf84EFMbai/dR
	 rQYfC5Bt9RwUA==
Received: by jupiter.universe (Postfix, from userid 1000)
	id D1BD1480C72; Mon, 17 Jul 2023 19:35:12 +0200 (CEST)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: linux-phy@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Cc: Jingoo Han <jingoohan1@gmail.com>,
	Gustavo Pimentel <gustavo.pimentel@synopsys.com>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	=?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>,
	Rob Herring <robh@kernel.org>,
	Serge Semin <fancer.lancer@gmail.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	Simon Xue <xxm@rock-chips.com>,
	John Clark <inindev@gmail.com>,
	Qu Wenruo <wqu@suse.com>,
	devicetree@vger.kernel.org,
	linux-pci@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	kernel@collabora.com
Subject: [PATCH v2 0/2] RK3588 PCIe3 support
Date: Mon, 17 Jul 2023 19:35:10 +0200
Message-Id: <20230717173512.65169-1-sebastian.reichel@collabora.com>
X-Mailer: git-send-email 2.40.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230717_103517_550035_1245BD7A 
X-CRM114-Status: GOOD (  10.49  )
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

Hi,

This adds PCIe v3 support for RK3588. The series depends on the PCIe
v2 series [0], since the the same binding is used. It has been tested
on Rockchip EVB1 and Radxa Rock 5B.

Note, that the PCIe3 PHY driver is currently missing bifurcation
support for RK3588. Thus after this series only PCIe3x4 is usable
(in aggregated x4 mode) without adding support for the PHY's
"rockchip,pcie30-phymode" DT property, which allows configuring
how the lanes are distributed. Aggregated 3x4 mode seems to be the
most common configuration. Both EVB1 and Rock 5B use it, so I
cannot test anything else anyways.

[0] https://lore.kernel.org/all/20230717172651.64324-1-sebastian.reichel@collabora.com/

Changes since v1:
 * https://lore.kernel.org/all/20230714175331.112923-1-sebastian.reichel@collabora.com/
 * Collected Acked-by from Conor Dooley
 * Dropped deprecated and useless num-ib-windows/num-ob-windows/num-viewport
   properties from DT (Serge Semin)

-- Sebastian

Sebastian Reichel (2):
  dt-bindings: phy: rockchip: add RK3588 PCIe v3 phy
  arm64: dts: rockchip: rk3588: add PCIe3 support

 .../bindings/phy/rockchip,pcie3-phy.yaml      |  33 ++++-
 arch/arm64/boot/dts/rockchip/rk3588.dtsi      | 120 ++++++++++++++++++
 2 files changed, 148 insertions(+), 5 deletions(-)

-- 
2.40.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
