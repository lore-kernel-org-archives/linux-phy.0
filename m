Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 083C9FD9E1E
	for <linux-phy@archiver.kernel.org>; Thu, 26 Feb 2026 23:07:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:Cc:To:
	From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=yRYRM20S40GZxCUwvP6K3RPuMGBr+DROCTZ+S0APm80=; b=raKOp7iw/O4JW1
	qKWGagp3tOnlX4U9g/k5878UnHZmx+SklNjHnYD14U/xsVH2MJ/zRTwnYE7FICpikpkr6PDIRbxvX
	dmXrvOWd7QqGo9gpcdW4cnWSQrNNpJarBPjOHpTZjFUUuHYXb6R4Q1ZoXxt51n/xy4aMrXTrKnDPK
	qd6vT5S4T++3J5rKhxD/2iFbXL+9ib8Bl6+/AeMeSMaFZCNBwZxm69Nty1m1ZeTH0d+t0I4SxCrd4
	2gTnupyY9TwIzZwkvS8Cj0hHCl063FxvKLGxzaCbID/GHGOYbhYmFGHDdGG++0Mb5ahJxfXNyBBYj
	Ym6OmQn6cabsEjceFPUQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vvkSC-00000007LD0-3QAU;
	Thu, 26 Feb 2026 23:07:32 +0000
Received: from pandora.armlinux.org.uk ([2001:4d48:ad52:32c8:5054:ff:fe00:142])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vvkS8-00000007LCV-3wkr;
	Thu, 26 Feb 2026 23:07:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=armlinux.org.uk; s=pandora-2019; h=Sender:Content-Type:MIME-Version:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-Transfer-Encoding:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
	List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=D0UK8pO0Y/9nQsoDE0tyGVTLdOq02b88CjLRoni4BOQ=; b=MNboOHREJJVAwQGuNTlghY1201
	FHF0dvFD7a4Al7EYtSTPQiyxAl2nLEaRy3S81mT/Nu6eai2n/B86Jl+r6zvHVefKm29AtOcJrOv8o
	I7GjG6YvM5G9h+LyfdYN7UzpO9iVGhpMsN5sgpbCcoZIS3kuSPKgocR0gZCDor/wpZequcky0E2Fm
	IDP2phoCoVFvz5g+jvFV/euVHrIPiP2KF4X2NERWsyReTHvIUB7ipZaGBAZQ5ebZ29IjrgugjCfC8
	PgaIAkbSB/emei8UyqGsH3ja/fIEPniU9n+5PFZGgLxR5+KitxEwavrZTe6Izz1ugwb+4BhINXhli
	tvECZaOA==;
Received: from shell.armlinux.org.uk ([fd8f:7570:feb6:1:5054:ff:fe00:4ec]:38136)
	by pandora.armlinux.org.uk with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.98.2)
	(envelope-from <linux@armlinux.org.uk>)
	id 1vvkS1-000000008Uq-0gwu;
	Thu, 26 Feb 2026 23:07:21 +0000
Received: from linux by shell.armlinux.org.uk with local (Exim 4.98.2)
	(envelope-from <linux@shell.armlinux.org.uk>)
	id 1vvkRx-000000002RJ-0MlJ;
	Thu, 26 Feb 2026 23:07:17 +0000
Date: Thu, 26 Feb 2026 23:07:16 +0000
From: "Russell King (Oracle)" <linux@armlinux.org.uk>
To: Andrew Lunn <andrew@lunn.ch>
Cc: Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Andrew Lunn <andrew+netdev@lunn.ch>,
	"David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>,
	linux-arm-kernel@lists.infradead.org, linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-stm32@st-md-mailman.stormreply.com,
	Mohd Ayaan Anwar <mohd.anwar@oss.qualcomm.com>,
	Neil Armstrong <neil.armstrong@linaro.org>, netdev@vger.kernel.org,
	Paolo Abeni <pabeni@redhat.com>, Vinod Koul <vkoul@kernel.org>
Subject: [PATCH RESEND2 net-next 0/8] net: stmmac: qcom-ethqos: further
 serdes reorganisation
Message-ID: <aaDSJAc-x2-klvHJ@shell.armlinux.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260226_150728_996159_63BAB55F 
X-CRM114-Status: GOOD (  10.66  )
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

This is part 2 of the qcom-ethqos series, part 1 has now been merged.

This part of the series focuses on the generic PHY driver, but these
changes have dependencies on the ethernet driver, hence why
it will need to go via net-next. Furthermore, subsequent changes
depend on these patches.

The underlying ideas here are:

- get rid of the driver using phy_set_speed() with SPEED_1000 and
  SPEED_2500 which makes no sense for an ethernet SerDes due to the
  PCS 8B10B data encoding, which inflates the data rate at the SerDes
  compared to the MAC. This is replaced with phy_set_mode_ext().
- allow phy_power_on() / phy_set_mode*() to be called in any order.

Mohd has tested this series, but it would be great to get acks/reviews
from the generic PHY maintainers.

 .../ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c    | 31 +++--------
 drivers/phy/qualcomm/phy-qcom-sgmii-eth.c          | 62 +++++++++++++++++-----
 2 files changed, 57 insertions(+), 36 deletions(-)

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTP is here! 80Mbps down 10Mbps up. Decent connectivity at last!

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
