Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2422AD2A551
	for <linux-phy@archiver.kernel.org>; Thu,  4 Dec 2025 21:37:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=a8xzu0rX+aU5+aBNd0969+/4wapjMzyr0JabHJ17TPM=; b=l07GDF80cyfg75
	vVRf0EMaomnM5jZO2R0GFB43TK9vvz5jVy0np1PjAHmhnRnhjgS2Wsz8lNZuNkgKC3NBUeDmS4GUJ
	7wU137/vfcMlfSzPtnm8HF06LzL4ohu9b++rnit4RaY1fIG4VFCfJoGdV/YEuV8amP9TRAy/Tvv5N
	6pn4d5P/lEfXI3BYnjPynSi489rvSmX50r4LhQDqfXauTVHjgKcGiFbcbny5KNYymKKzAkc4LaW4l
	umPoWVbbjMAiUAhiXGVUWr3F9ZLL2wOhystgh1T+QCbPXon20Z5paSkw9MXT+PSVXK+CuYW/vIoMa
	31phoY36MiKvpvYqVsIw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vRH0r-00000008gbO-3bXn;
	Thu, 04 Dec 2025 21:37:21 +0000
Received: from smtp2.tecnico.ulisboa.pt ([2001:690:2100:1::16])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vRH0o-00000008gaA-0IYw
	for linux-phy@lists.infradead.org;
	Thu, 04 Dec 2025 21:37:20 +0000
Received: from localhost (localhost.localdomain [127.0.0.1])
	by smtp2.tecnico.ulisboa.pt (Postfix) with ESMTP id 2B75D245442;
	Thu,  4 Dec 2025 21:27:30 +0000 (WET)
X-Virus-Scanned: by amavis-2.13.0 (20230106) (Debian) at tecnico.ulisboa.pt
Received: from smtp2.tecnico.ulisboa.pt ([127.0.0.1])
 by localhost (smtp2.tecnico.ulisboa.pt [127.0.0.1]) (amavis, port 10025)
 with LMTP id 6OYoCyNrcuP8; Thu,  4 Dec 2025 21:27:28 +0000 (WET)
Received: from mail1.tecnico.ulisboa.pt (mail1.ist.utl.pt [IPv6:2001:690:2100:1::b3dd:b9ac])
	by smtp2.tecnico.ulisboa.pt (Postfix) with ESMTPS id 0C2732453F1;
	Thu,  4 Dec 2025 21:27:26 +0000 (WET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=tecnico.ulisboa.pt;
	s=mail2; t=1764883646;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=IYNRE9yHL8E4dpaM7LuZEB4UxBbEOcv5tHwJnXhtPMM=;
	b=ij9SJ9fB6tXPhCXQLw8bBGmTjBEKIQiIWzMhKVp5l4lR50m0xY67LpsrrYTY2uDw2lIBbM
	kEuyCt5X4u+xYNUYol89sNXqSrJL3FKHqjp2JpoVzARS+MN21LLrAZRhn+zgn2Hnvu++XW
	+SYnzdeSNdsfHUumh+xJRQZqlYnd4rybPBnPLRPLMDXhP9kNcanoNYRUR+IWY03xYgqWgC
	pkfpz3fWMO3UncGXLDTkzI4J3TFtHeOGlJsIy97LYcXB7xwYU90+oGWCraYv6wU26urbvF
	7ev66hfUtENn3Ad+pkyXDLw20rEcoNk86jiA7IRrJgj9qkZdKVUbi8A6jd6uVw==
Received: from [192.168.1.151] (unknown [IPv6:2001:8a0:57db:f00:3ee2:38aa:e2c9:7dde])
	(Authenticated sender: ist187313)
	by mail1.tecnico.ulisboa.pt (Postfix) with ESMTPSA id D5B7A36013B;
	Thu,  4 Dec 2025 21:27:25 +0000 (WET)
From: Diogo Ivo <diogo.ivo@tecnico.ulisboa.pt>
Date: Thu, 04 Dec 2025 21:27:18 +0000
Subject: [PATCH 2/5] phy: tegra: xusb: Fix USB2 port regulator disable
 logic
MIME-Version: 1.0
Message-Id: <20251204-diogo-tegra_phy-v1-2-51a2016d0be8@tecnico.ulisboa.pt>
References: <20251204-diogo-tegra_phy-v1-0-51a2016d0be8@tecnico.ulisboa.pt>
In-Reply-To: <20251204-diogo-tegra_phy-v1-0-51a2016d0be8@tecnico.ulisboa.pt>
To: Mathias Nyman <mathias.nyman@intel.com>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Thierry Reding <thierry.reding@gmail.com>, 
 Jonathan Hunter <jonathanh@nvidia.com>, JC Kuo <jckuo@nvidia.com>, 
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-usb@vger.kernel.org, linux-tegra@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, Diogo Ivo <diogo.ivo@tecnico.ulisboa.pt>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1764883644; l=2313;
 i=diogo.ivo@tecnico.ulisboa.pt; s=20240529; h=from:subject:message-id;
 bh=w6fVfOXdVz6LTWwtRSJOAjJ+BIeklHmzE7MoA8q2mpM=;
 b=xRg0NMEvSnEuvWGJPw3JTgMP9jYi7exp/trncl53q53RM2rVrIznZUm7UPC1b3LqoqYoftvIh
 OiY87L+0dVSA29+4EHlRBBVYE9OAUut41cHcc7CpmyKFQCTGVkFqyWw
X-Developer-Key: i=diogo.ivo@tecnico.ulisboa.pt; a=ed25519;
 pk=BRGXhMh1q5KDlZ9y2B8SodFFY8FGupal+NMtJPwRpUQ=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251204_133718_922399_D64B7313 
X-CRM114-Status: GOOD (  16.62  )
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

While at it fix a small typo in a comment.

Signed-off-by: Diogo Ivo <diogo.ivo@tecnico.ulisboa.pt>
---
 drivers/phy/tegra/xusb-tegra210.c | 5 +++--
 drivers/phy/tegra/xusb.h          | 1 +
 2 files changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/phy/tegra/xusb-tegra210.c b/drivers/phy/tegra/xusb-tegra210.c
index 3409924498e9..63ad57d95514 100644
--- a/drivers/phy/tegra/xusb-tegra210.c
+++ b/drivers/phy/tegra/xusb-tegra210.c
@@ -1934,9 +1934,9 @@ static int tegra210_usb2_phy_set_mode(struct phy *phy, enum phy_mode mode,
 			/*
 			 * When port is peripheral only or role transitions to
 			 * USB_ROLE_NONE from USB_ROLE_DEVICE, regulator is not
-			 * be enabled.
+			 * enabled.
 			 */
-			if (regulator_is_enabled(port->supply))
+			if (port->role == USB_ROLE_HOST)
 				regulator_disable(port->supply);
 
 			tegra210_xusb_padctl_id_override(padctl, false);
@@ -1944,6 +1944,7 @@ static int tegra210_usb2_phy_set_mode(struct phy *phy, enum phy_mode mode,
 		}
 	}
 
+	port->role = submode;
 	mutex_unlock(&padctl->lock);
 
 	return err;
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
