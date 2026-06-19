Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2FADBCD98F2
	for <linux-phy@archiver.kernel.org>; Fri, 19 Jun 2026 15:29:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=puDzQVyI+CkAhwyfgw6XwT+FszuJqe1JQPnqcGRqgx0=; b=Q8GEX9yk27A7Bw
	z3xnEzIjeeVxGZtaifroz9gw5LXP5+VuKY/32dca1Oemi/BX8y6eANnS3kPsJQhfA6tZwVNZoObDA
	horU2zBd/rt0nuZ1T9TJ04tx4eLkWRN35oPDvrTnnituxMwUuyRdQXwGSx/nMcuIjLIEdqRv59jVm
	BgQIn7G4DFSWOVN8HxS/SoWGzRh/T+oWVNdX32YWkXFonfPWZBadmqOUlBKtfPpQyrxD5ibrfmEDf
	EyAcHEbkAapdc4axyEs1jL1ycsRd2M9WM0GaohXP3F0n1quDa/SaxkhQWLeL3rQUbnz224iF2ExJY
	s0JTdRu/IrS8Vw780XJw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wabAD-00000002eWc-3WfW;
	Fri, 19 Jun 2026 15:29:49 +0000
Received: from bali.collaboradmins.com ([2a01:4f8:201:9162::2])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wab9W-00000002dXE-0Owp;
	Fri, 19 Jun 2026 15:29:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1781882938;
	bh=f7KPjiSOnjCxa9RoMx7kPG+FkV/tgCDYiLWluj8oSYg=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=ome+HcxhFaoTtPDT1PQk3AVR+RV2tLf9dnPu6iyI5lpnQQB2JitGmiGIte58TD3Zk
	 gzjyUDNhuRlQ/RurMa4OWYw4hu9griwb0EhG6tefdt7hnsBbJRtt+Ui606SvGt4tT6
	 P/h2P+6SQ9dWRph32L8mlc/9JyhGH0z8EjwzxckFmoYcoMW607Q+aH04J5iSEfWo35
	 XmPoH9+ZScQI4p6QqWf1gJaREsBtk/ebwWPBNzCBOwGmu9voSZ3pst6RK89SO0zsuW
	 5gVpUdR6d7tAGLihdzf5QNEJBYcIInIiiWQsZ6eS9CPNeNPFUr3H/GU7HrCRzsDe4z
	 wj1Ck/Idbgbkw==
Received: from jupiter.universe (unknown [100.64.1.62])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: sre)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 36EAD17E120F;
	Fri, 19 Jun 2026 17:28:58 +0200 (CEST)
Received: by jupiter.universe (Postfix, from userid 1000)
	id 9164F480035; Fri, 19 Jun 2026 17:28:57 +0200 (CEST)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
Date: Fri, 19 Jun 2026 17:28:58 +0200
Subject: [PATCH v6 07/23] phy: rockchip: usbdp: Keep clocks running on PHY
 re-init
MIME-Version: 1.0
Message-Id: <20260619-rockchip-usbdp-cleanup-v6-7-3bb1f54b3f35@collabora.com>
References: <20260619-rockchip-usbdp-cleanup-v6-0-3bb1f54b3f35@collabora.com>
In-Reply-To: <20260619-rockchip-usbdp-cleanup-v6-0-3bb1f54b3f35@collabora.com>
To: Vinod Koul <vkoul@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Heiko Stuebner <heiko@sntech.de>, Frank Wang <frank.wang@rock-chips.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: Andy Yan <andy.yan@rock-chips.com>, Dmitry Baryshkov <lumag@kernel.org>, 
 Yubing Zhang <yubing.zhang@rock-chips.com>, 
 Alexey Charkov <alchark@gmail.com>, linux-phy@lists.infradead.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 linux-kernel@vger.kernel.org, kernel@collabora.com, 
 devicetree@vger.kernel.org, 
 Sebastian Reichel <sebastian.reichel@collabora.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=1163;
 i=sebastian.reichel@collabora.com; h=from:subject:message-id;
 bh=f7KPjiSOnjCxa9RoMx7kPG+FkV/tgCDYiLWluj8oSYg=;
 b=owJ4nAFtApL9kA0DAAoB2O7X88g7+poByyZiAGo1YDj4vFWawwKth1Jmo6InIOSwilacNlLO7
 KZrp4dQCdNc/4kCMwQAAQoAHRYhBO9mDQdGP4tyanlUE9ju1/PIO/qaBQJqNWA4AAoJENju1/PI
 O/qay3cQAI76iMJRvIjFIBwjVoEOnisEDXuEjFJpO95CwrcbJ1HFwdgAE5p1DiYT+0een3uCXKm
 Evkl2CuBYL4FQc9a5mOmZR3on+sDZuODl9ybPsu9OPdDWqJWKS0vOLxjNQvxFRYvTxVNzGXCd5M
 wL7l23crLE+kTHnITbNAqNuIQJFqj4dVCz4ukKmRRTiMrQsMOxC7lS8KTU+WAXFnxS76HO0Xhln
 hPaJDWNAAzz9ZY034bRp5rhPnMzyDul48+mZiq1A1hBd7exy73OH9tvFQAK6F6Hqrpzhsc0/CWt
 T13ejOZ+KWVn073fS+rxUNWv1EXnmTCwaHG1sTpMsK0+ySYm6gIiZIUd9iqA7jIE/QW1+WzbA0J
 nzjIVO66gtYPihkWf74lUj3brVsrYMMso1JK2oStxDuy2j4+1fWiduGAb+6gZa6hDwMDIY3lz1d
 cEZSl/5gCtynDK7BehufqdT1+xUnffnCmDa/pAreMw65U8DqtliIYa4xYGZsFJ0r5tHaipuKCop
 A3SuRbpr3m8gY412mYzUyi/TSwgSaRSYZJfQA7xPfZ/Daz+vilAV9YqDNwZGJP6OoZLnOszYZfz
 VsGpSjCxoa+fF4sD8T3JtrEWtzGF5uQWTmkxu7i7gtrWzeuedAzrpIejA2+nTdq19yygexIZh1J
 LAqoynJkTdexkR6q0L4A1LQ==
X-Developer-Key: i=sebastian.reichel@collabora.com; a=openpgp;
 fpr=EF660D07463F8B726A795413D8EED7F3C83BFA9A
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260619_082906_340289_343AB45E 
X-CRM114-Status: GOOD (  10.63  )
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

When a mode change is required rk_udphy_power_on() disables
the clocks and then calls rk_udphy_setup(), which then enables
all the clocks again before continuing with rk_udphy_init().

Considering that rk_udphy_init() does assert the reset lines,
re-enabling the clocks is just delaying things. Avoid it by
directly calling rk_udphy_init().

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>
Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
 drivers/phy/rockchip/phy-rockchip-usbdp.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/phy/rockchip/phy-rockchip-usbdp.c b/drivers/phy/rockchip/phy-rockchip-usbdp.c
index 6dff4dfc9363..c05ee65a9f73 100644
--- a/drivers/phy/rockchip/phy-rockchip-usbdp.c
+++ b/drivers/phy/rockchip/phy-rockchip-usbdp.c
@@ -1011,8 +1011,7 @@ static int rk_udphy_power_on(struct rk_udphy *udphy, u8 mode)
 		if (udphy->mode == UDPHY_MODE_DP)
 			rk_udphy_u3_port_disable(udphy, true);
 
-		rk_udphy_disable(udphy);
-		ret = rk_udphy_setup(udphy);
+		ret = rk_udphy_init(udphy);
 		if (ret)
 			return ret;
 		udphy->mode_change = false;

-- 
2.53.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
