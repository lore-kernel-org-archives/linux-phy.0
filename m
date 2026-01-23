Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6A45CD72367
	for <linux-phy@archiver.kernel.org>; Fri, 23 Jan 2026 09:52:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:Cc:To:
	From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Q2EDcMrKGSCUTF5Ag9KBY7L9kNJeitDnGDYg5vHrLEs=; b=bo6wR5kHRkmKki
	fXDfsC2dRyjh9ANE4h7CQAxXEF6JUqp8c0jzPfN7dqFqOe+jVi2ZjTr2ek+RT9Z6FsST05f6nPMSm
	v4bpQdadz4XpCxZ9GJ9+kVzv/D1r9b6pEReMBIdrNXk+thNW84ctZMHuvzu38IOMxkw9BvprIY/7O
	/yGy452vhLUs85OduEtUbyJ4U1t4jpOjicn3wXO6oXdD8o3p4n1ZVY9CmzZLA/ZSfQMCS5ChBNQL7
	Cr+CPwNZRFkbsd6HbGR7GYpIwmcdHtT8z18UjZaZXyqI/0jIAVOLP/GP69AD4Xu5YrI0SEdaB8LaD
	vNVsoUrgellm/VgWF5VQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vjDpu-00000008cXg-3mkr;
	Fri, 23 Jan 2026 09:52:14 +0000
Received: from pandora.armlinux.org.uk ([2001:4d48:ad52:32c8:5054:ff:fe00:142])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vjDps-00000008cXA-1Qx5;
	Fri, 23 Jan 2026 09:52:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=armlinux.org.uk; s=pandora-2019; h=Sender:Content-Type:MIME-Version:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-Transfer-Encoding:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
	List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=RWuW5JRJkTTAGksSHPsZsAEGeAXBXTdxAdnPu9NDH6Y=; b=F5fu422oxH9eqdpqTAzp2xz3sB
	dQxvfZCb5JRKMh0LUsP/kt9O/CqaTg4LFWyrHy/8pKlKRWoh9gAJ3RF/XnhQ7bDdsqkYIO62HZMFY
	vIF4fvF/YVf5Yfw9glgS6x7wsgTdcB+3Zw2ZU1+Ds2HT8NUNybbqveFrP8pXG2j90xf2C/vQXUQ7k
	4NDY5613OPdjNIS9AlkQAC+6ZzHGI25Gym9loFZWol8dkxCPalr90DhxXSf1cLtbyQ3rRv3Bi7jA3
	OL+WK/T/yzLJl7acR6T10ngb+6mkkk9LWmugFFp6bZxtwzJt2MnxMcEO+Ao4N4CshsvvGxRCFnsEv
	t3/QZSsw==;
Received: from shell.armlinux.org.uk ([fd8f:7570:feb6:1:5054:ff:fe00:4ec]:54434)
	by pandora.armlinux.org.uk with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.98.2)
	(envelope-from <linux@armlinux.org.uk>)
	id 1vjDpk-000000001Zh-2pM7;
	Fri, 23 Jan 2026 09:52:04 +0000
Received: from linux by shell.armlinux.org.uk with local (Exim 4.98.2)
	(envelope-from <linux@shell.armlinux.org.uk>)
	id 1vjDpg-000000001zP-1EcP;
	Fri, 23 Jan 2026 09:52:00 +0000
Date: Fri, 23 Jan 2026 09:52:00 +0000
From: "Russell King (Oracle)" <linux@armlinux.org.uk>
To: Andrew Lunn <andrew@lunn.ch>, Heiner Kallweit <hkallweit1@gmail.com>
Cc: Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Andrew Lunn <andrew+netdev@lunn.ch>,
	"David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>,
	Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
	linux-arm-kernel@lists.infradead.org, linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-stm32@st-md-mailman.stormreply.com,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>,
	Mohd Ayaan Anwar <mohd.anwar@oss.qualcomm.com>,
	Neil Armstrong <neil.armstrong@linaro.org>, netdev@vger.kernel.org,
	Paolo Abeni <pabeni@redhat.com>, Vinod Koul <vkoul@kernel.org>
Subject: [PATCH net-next v2 00/14] net: stmmac: SerDes, PCS, BASE-X, and
 inband goodies
Message-ID: <aXNEwBW3OA1xLEUj@shell.armlinux.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260123_015212_403948_42C89A9C 
X-CRM114-Status: GOOD (  27.76  )
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

This is the v1 submission: if it doesn't get tested but review goes
well, it'll end up in net-next and mainline without testing on the
affected hardware!

Mentioned previously, I've been trying to sort out the PCS support in
stmmac, and this series represents the current state of play.

Previous posted patches centred around merely getting autonegotiation
to be configured correctly, to a point where the manual configuration
can be removed from the qcom-ethqos driver. The qcom-ethqos driver
uses both SGMII and 2500BASE-X, manually configuring the dwmac's
integrated PCS appropriately.

This *untested* series attempts to take this further. The patches:

- clean up qcom-ethqos only-written mac_base member.
- convert qcom-ethqos to use the set_clk_tx_rate() method for setting
  the link clock rate.
- add support for phy_set_mode_ext() to the qcom "SGMII" ethernet
  SerDes driver (which is really only what it needs. Note that
  phy_set_mode_ext() is an expected call to be made, where as
  phy_set_speed() is optional and not. See PHY documentation.)
- add platform-glue independent SerDes support to the stmmac core
  driver. Currently, only qcom-ethqos will make use of this, and
  I suspect as we haven't had this, it's going to be difficult to
  convert other platform glue to use this - but had this existed
  earlier, we could've pushed people to use PHY to abstract some
  of the platform glue differences. Adding it now makes it available
  for future platform glue.
- convert qcom-ethqos to use this core SerDes support.
- arrange for stmmac_pcs.c to supply the phy_intf_sel field value
  if the integrated PCS will be used. (PHY_INTF_SEL_SGMII requires
  the integrated PCS rather than an external PCS.)
- add BASE-X support to the integrated PCS driver, and use it for
  BASE-X modes. This fully supports in-band mode, including reading
  the link partner advertisement.
- add in-band support for SGMII, reading the state from the RGSMII
  status field.

As we leave qcom-ethqos' manual configuration of the PCS in place at
the moment, the last patch adds reporting of any changes in its
configuration that the qcom-ethqos driver does beyond what phylink
requested, thus providing a path to debug and eventually remove
qcom-ethqos' manual configuration.

One patch is not included in this set - which adds a phy_intf_sel
value for external PCS (using PHY_INTF_SEL_GMII_MII). I believe all
external PCS use this mode when connected to a MAC capable of up to
2.5G. However, no platform glue that provides the mac_select_pcs()
method also provide the set_phy_intf_sel() method, so we can safely
ignore this for now.

I would like to get this into net-next before the next merge window,
so testing would be appreciated. If there are issues with these patches
applied, please check whether the issue exists without these patches
and only report regressions caused by this patch set. For example,
I'm aware that qcom-ethqos has issues with 10Mbps mode due to an AQR
PHY being insanely provisioned to use SGMII in 1000M mode but with
rate matching with 10M media. This is not an issue that is relevant
to this patch series, but a problem with the PHY provisioning.

rfc->v1:
 - fix SGMII link status
 - avoid calling phy_get_mode() if PHY is null
v2:
 - fix further AI review bot dribble that could've been raised on
   the rfc version but wasn't.
 
 drivers/net/ethernet/stmicro/stmmac/Makefile       |   2 +-
 drivers/net/ethernet/stmicro/stmmac/common.h       |   1 -
 .../ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c    |  74 ++-----
 drivers/net/ethernet/stmicro/stmmac/dwmac1000.h    |  12 +-
 .../net/ethernet/stmicro/stmmac/dwmac1000_core.c   |  11 +-
 drivers/net/ethernet/stmicro/stmmac/dwmac4.h       |  10 +-
 drivers/net/ethernet/stmicro/stmmac/dwmac4_core.c  |  10 +-
 drivers/net/ethernet/stmicro/stmmac/stmmac_main.c  |  69 +++++--
 drivers/net/ethernet/stmicro/stmmac/stmmac_pcs.c   | 222 +++++++++++++++++++--
 drivers/net/ethernet/stmicro/stmmac/stmmac_pcs.h   |  53 ++---
 .../net/ethernet/stmicro/stmmac/stmmac_serdes.c    | 111 +++++++++++
 .../net/ethernet/stmicro/stmmac/stmmac_serdes.h    |  16 ++
 drivers/phy/qualcomm/phy-qcom-sgmii-eth.c          |  43 ++++
 include/linux/stmmac.h                             |   2 +
 14 files changed, 491 insertions(+), 145 deletions(-)

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTP is here! 80Mbps down 10Mbps up. Decent connectivity at last!

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
