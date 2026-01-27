Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 356C8D2F033
	for <linux-phy@archiver.kernel.org>; Tue, 27 Jan 2026 15:12:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iNMgIxP+pnor0H83/QhF9itlA3UmfqbdBztQ9+dOnYQ=; b=FHjy0u7/jnb3bi
	3ajn5ZjuBI+t6919EEs0Yv9QdEXtC7L0bEI/Xej0GkfVuDJzv9AqIAVp6Pdes3/G5DNVUnRm1MuK2
	5NGWIfbXJcsVNcWtILsI82KC5SaeR42C+GuTjZLibnEPTKINjknYiqqWHO/rJ+yrBpLto8aOAHyD/
	YKOARjCkcIWNDVL6F/OFR1Oa8QcLZztI5Gg3tpDJ5Siv30oP9a6DHtM+yf+Tuxy+FzABvU97WqDOW
	0e/YmPzGCBP6qBWoB8rOmo7ZKPicZs7pvemIzr0de6dgI8Qtuz8N42us26Xvl5n3sz9VtyNOwkdWA
	Os0Dx17kXfWssL+8pZhQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vkkkI-0000000EVp9-42CH;
	Tue, 27 Jan 2026 15:12:46 +0000
Received: from smtp1.tecnico.ulisboa.pt ([2001:690:2100:1::15])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vkkk3-0000000EVh0-2VDS
	for linux-phy@lists.infradead.org;
	Tue, 27 Jan 2026 15:12:35 +0000
Received: from localhost (localhost.localdomain [127.0.0.1])
	by smtp1.tecnico.ulisboa.pt (Postfix) with ESMTP id 51F8060020E2;
	Tue, 27 Jan 2026 15:12:11 +0000 (WET)
X-Virus-Scanned: by amavis-2.13.0 (20230106) (Debian) at tecnico.ulisboa.pt
Received: from smtp1.tecnico.ulisboa.pt ([127.0.0.1])
 by localhost (smtp1.tecnico.ulisboa.pt [127.0.0.1]) (amavis, port 10025)
 with LMTP id NtwtBI58voT3; Tue, 27 Jan 2026 15:12:09 +0000 (WET)
Received: from mail1.tecnico.ulisboa.pt (mail1.ist.utl.pt [IPv6:2001:690:2100:1::b3dd:b9ac])
	by smtp1.tecnico.ulisboa.pt (Postfix) with ESMTPS id 5F06A6002306;
	Tue, 27 Jan 2026 15:12:08 +0000 (WET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=tecnico.ulisboa.pt;
	s=mail2; t=1769526728;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=eTz8SZs3WThSgHMDMFip4KxZygxWXRhKo2bE8wjby9M=;
	b=lvOoVZrj0+6FrLhJHDM2DCVQdOUFJecK92LjorU7ifI+C0Mvd0QAe2lSbJamX6DpABkwnB
	gbL6Ntj1u5yS2ARSWGI9BXNh4fqC65hDYBgXozHLf4PQIQKSHee1uyR4HHi0hbncckaMVT
	nQtaa6bpIPi5bnP7MoA2rJw6HlCG3GyyLUrjhnkg6YXlkMgknZZ/i+0d1s6Nk3IbgTgtlu
	GLDmjUYyjNwukfamwS42LYnMdq9XS4DxQzXpEpejaK+JOR/V6/ydWxmhDNYm+VHEj0U9fh
	Ajlt12WJYSEpilTC/z2ptnL1xOraHu1vAx/+imF23NrQH7LJWytE+ovwtpy5JQ==
Received: from [192.168.2.110] (unknown [148.63.39.39])
	(Authenticated sender: ist187313)
	by mail1.tecnico.ulisboa.pt (Postfix) with ESMTPSA id 083073600DD;
	Tue, 27 Jan 2026 15:12:08 +0000 (WET)
From: Diogo Ivo <diogo.ivo@tecnico.ulisboa.pt>
Date: Tue, 27 Jan 2026 15:11:47 +0000
Subject: [PATCH v2 1/6] phy: tegra: xusb: Fix USB2 port regulator disable
 logic
MIME-Version: 1.0
Message-Id: <20260127-diogo-tegra_phy-v2-1-787b9eed3ed5@tecnico.ulisboa.pt>
References: <20260127-diogo-tegra_phy-v2-0-787b9eed3ed5@tecnico.ulisboa.pt>
In-Reply-To: <20260127-diogo-tegra_phy-v2-0-787b9eed3ed5@tecnico.ulisboa.pt>
To: Mathias Nyman <mathias.nyman@intel.com>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Thierry Reding <thierry.reding@gmail.com>, 
 Jonathan Hunter <jonathanh@nvidia.com>, JC Kuo <jckuo@nvidia.com>, 
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>
Cc: linux-usb@vger.kernel.org, linux-tegra@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, Diogo Ivo <diogo.ivo@tecnico.ulisboa.pt>, 
 stable@vger.kernel.org
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1769526725; l=2198;
 i=diogo.ivo@tecnico.ulisboa.pt; s=20240529; h=from:subject:message-id;
 bh=crMkHAz58/P3KOZ7XNFwuRiIVyBlBe6XUwar7XMSc+Y=;
 b=DghMWBQc0iCO8oYZES6tibmHzkTLhvT406Glm+R0oVLioUVqxkG6rBc679D0IDjGc5WrdexYC
 bYwXH4zUn/iAVj84vqWFRScSiXuXt1FSmXjdmkqxLbjI4rw83VqWkXr
X-Developer-Key: i=diogo.ivo@tecnico.ulisboa.pt; a=ed25519;
 pk=BRGXhMh1q5KDlZ9y2B8SodFFY8FGupal+NMtJPwRpUQ=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260127_071232_642411_8B73DDA0 
X-CRM114-Status: GOOD (  16.15  )
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

The USB2 PHY mode handling on Tegra210 incorrectly relied on
regulator_is_enabled() when determining whether the VBUS supply should
be disabled during role changes. This is because regulator_is_enabled()
reports exactly what is states and not if there is an unbalanced number
of calls between regulator_enable() and regulator_disable(). For
example, regulator_is_enabled() always reports true on a fixed-regulator
with no enable gpio, which is the case on the Pixel C.

This then leads to the PHY driver wrongfully calling regulator_disable()
when transitioning from USB_ROLE_DEVICE to USB_ROLE_NONE since the driver
did not previously call the corresponding regulator_enable().

Fix this by keeping track of the current role and updating the logic to
disable the regulator only when the previous role was USB_ROLE_HOST.

Cc: stable@vger.kernel.org
Signed-off-by: Diogo Ivo <diogo.ivo@tecnico.ulisboa.pt>
---
v1->v2:
- Do not fix typo in comment
---
 drivers/phy/tegra/xusb-tegra210.c | 4 +++-
 drivers/phy/tegra/xusb.h          | 1 +
 2 files changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/phy/tegra/xusb-tegra210.c b/drivers/phy/tegra/xusb-tegra210.c
index 3409924498e9..3abdf0182d67 100644
--- a/drivers/phy/tegra/xusb-tegra210.c
+++ b/drivers/phy/tegra/xusb-tegra210.c
@@ -1936,12 +1936,14 @@ static int tegra210_usb2_phy_set_mode(struct phy *phy, enum phy_mode mode,
 			 * USB_ROLE_NONE from USB_ROLE_DEVICE, regulator is not
 			 * be enabled.
 			 */
-			if (regulator_is_enabled(port->supply))
+			if (port->role == USB_ROLE_HOST)
 				regulator_disable(port->supply);
 
 			tegra210_xusb_padctl_id_override(padctl, false);
 			tegra210_xusb_padctl_vbus_override(padctl, false);
 		}
+
+		port->role = submode;
 	}
 
 	mutex_unlock(&padctl->lock);
diff --git a/drivers/phy/tegra/xusb.h b/drivers/phy/tegra/xusb.h
index d2b5f9565132..273af147dfd3 100644
--- a/drivers/phy/tegra/xusb.h
+++ b/drivers/phy/tegra/xusb.h
@@ -317,6 +317,7 @@ struct tegra_xusb_usb2_port {
 	enum usb_dr_mode mode;
 	bool internal;
 	int usb3_port_fake;
+	enum usb_role role;
 };
 
 static inline struct tegra_xusb_usb2_port *

-- 
2.52.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
