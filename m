Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CFE39CD343F
	for <linux-phy@archiver.kernel.org>; Fri, 15 May 2026 19:55:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=NB3kK+gaFllMxcqqTSe/je1F2IyRv/9TtigXI7kDUeQ=; b=gJ0Atglgb2fd6L
	hF0VfxVwsCkwWCEKTs6rytP4HZMQeztHKHjs88kCuCx3/d50/XiWL87HKnQVuegY675xOaL6RsuBc
	ptlk+Anu9fjCqqoHMZIKvL2hyda7qwQg+gHO2T4MR1Oy2Mg9+kiSAwRmgJ84CxNIPCp2j7ag25yPx
	5jzaOzUrCQCkorxPXVMpd7xhvOsces7wtFwKEx9GVIf3qYniySfJNmUxUQHdk+Sttqii2Z+0dVUUj
	sV5gZrGma0jt7KxnKGyN1rQZMB81XqNpfUjMVWulTlsX4QXAylqqxRX6n6iEtaMEfDPWd0Gt08JPC
	ZdZrN0VY4vz9CudzrcqQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wNydD-00000009GUS-1wXm;
	Fri, 15 May 2026 19:55:35 +0000
Received: from smtp.forwardemail.net ([149.28.215.223])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wNyd8-00000009GRk-3U3T
	for linux-phy@lists.infradead.org;
	Fri, 15 May 2026 19:55:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: MIME-Version: Message-ID: Date: Subject: Cc:
 To: From; q=dns/txt; s=fe-e1b5cab7be; t=1778874925;
 bh=bgXVtKq/ijQaurjlwStMuZUnlY7VktYBvewGw94cJtQ=;
 b=hdTN5zbvaAdwyZY2M6c31BYEkWbZul0m3GJwUec7ZAwStV5DYJea0bUuXz8cDnY6UriD/mtjM
 ZOK3izG3nLwyXjrQQSuApYHh7k3+S2xVrDDizeYNF8qCYWYYKaLqu+PiCdhnXBJAEcSymmAQ4KG
 copkRJiWOb9tnKSNK/yB+3ZmvL9eNCTkTtZ3cIjgOFMNLFZdZdQrUdmX0RSjAqyxcVoZt/H2rdP
 6P9/h5//pP2mtY3wraSslZx9qtr8UWi07R0r8wb0ER6zYT5SD+uPjlA2ixQIOsCj3EmuLMbWo9W
 s7gBenfTuimNbSZMk9ZDkzE/wUPums7PgmA8jv6mYnTw==
X-Forward-Email-ID: 6a077a24ad7e292af75a1078
X-Forward-Email-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 149.28.215.223
X-Forward-Email-Version: 2.8.12
X-Forward-Email-Website: https://forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Report-Abuse-To: abuse@forwardemail.net
From: Jonas Karlman <jonas@kwiboo.se>
To: Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: linux-phy@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Jonas Karlman <jonas@kwiboo.se>
Subject: [PATCH v2 0/2] phy: rockchip: inno-hdmi: Change TMDS rate handling to configure() ops
Date: Fri, 15 May 2026 19:55:09 +0000
Message-ID: <20260515195512.1757363-1-jonas@kwiboo.se>
X-Mailer: git-send-email 2.54.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260515_125531_357123_84D3B07D 
X-CRM114-Status: UNSURE (   8.07  )
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

This series adds support for using phy_validate() and phy_configure()
with this HDMI PHY as an alternative to current in-tree unused way of
using PHY bus width to configure the TMDS character rate.

The only known users that calls phy_set_bus_width() on this PHY are my
out-of-tree HDMI 2.0 patches for Rockchip RK3228/RK3328, i.e. those
originating from LibreELEC (also carried by other distros), the
downstream vendor kernel uses a different implementation that also calls
phy_set_bus_width() on this PHY.

Patch "drm/rockchip: dw_hdmi: Configure HDMI PHY in atomic_mode_set()"
that calls phy_validate() and phy_configure() on this PHY can be found
at [1].

[1] https://lore.kernel.org/dri-devel/20260510183114.1248840-10-jonas@kwiboo.se/

This series is part of a larger multi series effort to:
- phy: rockchip: inno-hdmi: Change TMDS rate handling to configure() ops [v3]
- drm/rockchip: dw_hdmi: Misc cleanup and propagate bus format [v1]
- drm: bridge: dw_hdmi: Misc enable/disable, CEC and EDID cleanup [v5]
- drm/bridge: dw-hdmi: Improve input/output bus format handling
- drm/bridge: dw-hdmi: Convert to a HDMI bridge and use of bridge connector
- drm/bridge: dw-hdmi: Add and use tmds_char_rate_valid() plat data ops
- drm/meson: hdmi: Misc cleanup and use CEC notifier helpers
- drm/rockchip: dw_hdmi: Enable YCbCr and Deep Color modes
Link to snapshot: https://github.com/Kwiboo/linux-rockchip/commits/next-20260508-rk-hdmi-v4/

Changes in v3:
- Change validate() ops to only validate tmdsclock
- Add comments about expected consumer usage
- Update commit message with a typical call chain
Link to v2: https://lore.kernel.org/linux-phy/20260510095731.1222705-1-jonas@kwiboo.se/

Changes in v2:
- Split into two patches, one that adds new ops and a second that remove
  the old and unused workaround
- Add validate() ops to validate that the TMDS rate is supported
Link to v1: https://lore.kernel.org/linux-phy/20260503172936.194003-1-jonas@kwiboo.se/

Jonas Karlman (2):
  phy: rockchip: inno-hdmi: Add configure() and validate() ops
  phy: rockchip: inno-hdmi: Remove deprecated way to configure TMDS rate

 drivers/phy/rockchip/phy-rockchip-inno-hdmi.c | 71 +++++++++++++++----
 1 file changed, 57 insertions(+), 14 deletions(-)

-- 
2.54.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
