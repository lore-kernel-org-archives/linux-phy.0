Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B60E2D2594D
	for <linux-phy@archiver.kernel.org>; Tue, 27 Jan 2026 15:12:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7N2rY5eph/ecI7rxZztNniMCYtMFXIxdgQZhdeU+TaM=; b=TgVPBD0L41i58N
	q8c6oiuVbeiPc641W0FpUP+svLYy/3YFs39TMl7nO0lRWjLHbz3ywl2r1dXW8TNIxvClqFuK3uf/+
	ePJX5CY/zFqcCpSzqSwZpMwI3W74tOTFptyFUrd+yvrpRcVqQMhmBbfS2gdqPFZv+X9pywVSXpTyC
	k33KBhIWpsAfvcqS5jg8iGLorGah4pBdnu413urmgR6+peG1ZGM+JzE+XCGhtuHKVxEQ0kUJmhiqp
	ECFjqjpKmJ4Cf6qJLLw5nvvmyvt0oGECCIJ8UbdR8rXHKcMW4JwpbJRu5EBdelVdeJzgi59dX0bD0
	SkdQuVvntsFHQUX+dTQQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vkkkJ-0000000EVpl-1uGF;
	Tue, 27 Jan 2026 15:12:47 +0000
Received: from smtp1.tecnico.ulisboa.pt ([193.136.128.21])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vkkk7-0000000EVlX-2g2L
	for linux-phy@lists.infradead.org;
	Tue, 27 Jan 2026 15:12:37 +0000
Received: from localhost (localhost.localdomain [127.0.0.1])
	by smtp1.tecnico.ulisboa.pt (Postfix) with ESMTP id E152F6002307;
	Tue, 27 Jan 2026 15:12:12 +0000 (WET)
X-Virus-Scanned: by amavis-2.13.0 (20230106) (Debian) at tecnico.ulisboa.pt
Received: from smtp1.tecnico.ulisboa.pt ([127.0.0.1])
 by localhost (smtp1.tecnico.ulisboa.pt [127.0.0.1]) (amavis, port 10025)
 with LMTP id bTCuZ5QEIXsH; Tue, 27 Jan 2026 15:12:10 +0000 (WET)
Received: from mail1.tecnico.ulisboa.pt (mail1.ist.utl.pt [IPv6:2001:690:2100:1::b3dd:b9ac])
	by smtp1.tecnico.ulisboa.pt (Postfix) with ESMTPS id D6DFE6000257;
	Tue, 27 Jan 2026 15:12:09 +0000 (WET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=tecnico.ulisboa.pt;
	s=mail2; t=1769526729;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=bZcC7nVQPcaOVfYrZtm+vknrQUeM733TEL9ACJo10WQ=;
	b=i3t8NFHOtmH/eAyaSjIfAFwqblPVHBbcBsCy7WEwCTlp9jNJ6X/IQuMKuiZ+S7KjI5zfYS
	GNFV/MnGGz39XEwTZggQy1rN8DhRc1ttTIyQcJ3Iut3WnNhrREOn4ZWVF81EFfhIGr/Ewq
	B+FFDTYC9W445sZkkcQ4SCo0OwV38BSF6pfCEroVOiHhFKwWJCJA2x7PB+YYsRa4mEVTrJ
	XAGVTFWfedWHq8GC3MY/O61+Mlzt7JqW24dzUI9XEZnGJGtCrumjfE8qdDbpAyVnFrT1LG
	RbNc1gFBQNE9XGBqoWEA+RHA2pyGH2XOzS3nwvYZn4w5EeHqMiY/N14Xmj8lxA==
Received: from [192.168.2.110] (unknown [148.63.39.39])
	(Authenticated sender: ist187313)
	by mail1.tecnico.ulisboa.pt (Postfix) with ESMTPSA id 8711E3600A6;
	Tue, 27 Jan 2026 15:12:09 +0000 (WET)
From: Diogo Ivo <diogo.ivo@tecnico.ulisboa.pt>
Date: Tue, 27 Jan 2026 15:11:52 +0000
Subject: [PATCH v2 6/6] phy: tegra: xusb: Move T186 .set_mode() to common
 implementation
MIME-Version: 1.0
Message-Id: <20260127-diogo-tegra_phy-v2-6-787b9eed3ed5@tecnico.ulisboa.pt>
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
 devicetree@vger.kernel.org, Diogo Ivo <diogo.ivo@tecnico.ulisboa.pt>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1769526726; l=4050;
 i=diogo.ivo@tecnico.ulisboa.pt; s=20240529; h=from:subject:message-id;
 bh=xJHxYT+TadYewpoKOTjiaran92WN2DeuJBljdTuOCy4=;
 b=gaXGWJCSZfLtbD9smDMa7VQ2DugogGFT2gb4MjcM5WKZvEh96PE0vSbkt8/rnsGicaYnaDmwo
 i+3AaC7EUlrCCSYfmE13tj6KQbGjysGrDqpcx4hAp/S8sTOHnXmZi0F
X-Developer-Key: i=diogo.ivo@tecnico.ulisboa.pt; a=ed25519;
 pk=BRGXhMh1q5KDlZ9y2B8SodFFY8FGupal+NMtJPwRpUQ=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260127_071235_993876_09C7F295 
X-CRM114-Status: GOOD (  13.16  )
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

Move the Tegra186 PHY .set_mode() callback to a common implementation.
In order to do this first revert cefc1caee9dd.

Signed-off-by: Diogo Ivo <diogo.ivo@tecnico.ulisboa.pt>
---
v1->v2:
- New patch
---
 drivers/phy/tegra/xusb-tegra186.c | 73 ++++++---------------------------------
 1 file changed, 10 insertions(+), 63 deletions(-)

diff --git a/drivers/phy/tegra/xusb-tegra186.c b/drivers/phy/tegra/xusb-tegra186.c
index bec9616c4a2e..bf678829245d 100644
--- a/drivers/phy/tegra/xusb-tegra186.c
+++ b/drivers/phy/tegra/xusb-tegra186.c
@@ -786,15 +786,13 @@ static int tegra186_xusb_padctl_vbus_override(struct tegra_xusb_padctl *padctl,
 }
 
 static int tegra186_xusb_padctl_id_override(struct tegra_xusb_padctl *padctl,
-					    struct tegra_xusb_usb2_port *port, bool status)
+					    bool status)
 {
-	u32 value, id_override;
-	int err = 0;
+	u32 value;
 
 	dev_dbg(padctl->dev, "%s id override\n", status ? "set" : "clear");
 
 	value = padctl_readl(padctl, USB2_VBUS_ID);
-	id_override = value & ID_OVERRIDE(~0);
 
 	if (status) {
 		if (value & VBUS_OVERRIDE) {
@@ -805,68 +803,16 @@ static int tegra186_xusb_padctl_id_override(struct tegra_xusb_padctl *padctl,
 			value = padctl_readl(padctl, USB2_VBUS_ID);
 		}
 
-		if (id_override != ID_OVERRIDE_GROUNDED) {
-			value &= ~ID_OVERRIDE(~0);
-			value |= ID_OVERRIDE_GROUNDED;
-			padctl_writel(padctl, value, USB2_VBUS_ID);
-
-			err = regulator_enable(port->supply);
-			if (err) {
-				dev_err(padctl->dev, "Failed to enable regulator: %d\n", err);
-				return err;
-			}
-		}
+		value &= ~ID_OVERRIDE(~0);
+		value |= ID_OVERRIDE_GROUNDED;
 	} else {
-		if (id_override == ID_OVERRIDE_GROUNDED) {
-			/*
-			 * The regulator is disabled only when the role transitions
-			 * from USB_ROLE_HOST to USB_ROLE_NONE.
-			 */
-			err = regulator_disable(port->supply);
-			if (err) {
-				dev_err(padctl->dev, "Failed to disable regulator: %d\n", err);
-				return err;
-			}
-
-			value &= ~ID_OVERRIDE(~0);
-			value |= ID_OVERRIDE_FLOATING;
-			padctl_writel(padctl, value, USB2_VBUS_ID);
-		}
+		value &= ~ID_OVERRIDE(~0);
+		value |= ID_OVERRIDE_FLOATING;
 	}
 
-	return 0;
-}
-
-static int tegra186_utmi_phy_set_mode(struct phy *phy, enum phy_mode mode,
-				      int submode)
-{
-	struct tegra_xusb_lane *lane = phy_get_drvdata(phy);
-	struct tegra_xusb_padctl *padctl = lane->pad->padctl;
-	struct tegra_xusb_usb2_port *port = tegra_xusb_find_usb2_port(padctl,
-								lane->index);
-	int err = 0;
-
-	mutex_lock(&padctl->lock);
+	padctl_writel(padctl, value, USB2_VBUS_ID);
 
-	dev_dbg(&port->base.dev, "%s: mode %d", __func__, mode);
-
-	if (mode == PHY_MODE_USB_OTG) {
-		if (submode == USB_ROLE_HOST) {
-			err = tegra186_xusb_padctl_id_override(padctl, port, true);
-			if (err)
-				goto out;
-		} else if (submode == USB_ROLE_DEVICE) {
-			tegra186_xusb_padctl_vbus_override(padctl, true);
-		} else if (submode == USB_ROLE_NONE) {
-			err = tegra186_xusb_padctl_id_override(padctl, port, false);
-			if (err)
-				goto out;
-			tegra186_xusb_padctl_vbus_override(padctl, false);
-		}
-	}
-out:
-	mutex_unlock(&padctl->lock);
-	return err;
+	return 0;
 }
 
 static int tegra186_utmi_phy_power_on(struct phy *phy)
@@ -1017,7 +963,7 @@ static const struct phy_ops utmi_phy_ops = {
 	.exit = tegra186_utmi_phy_exit,
 	.power_on = tegra186_utmi_phy_power_on,
 	.power_off = tegra186_utmi_phy_power_off,
-	.set_mode = tegra186_utmi_phy_set_mode,
+	.set_mode = tegra_xusb_usb2_phy_set_mode,
 	.owner = THIS_MODULE,
 };
 
@@ -1578,6 +1524,7 @@ static const struct tegra_xusb_padctl_ops tegra186_xusb_padctl_ops = {
 	.suspend_noirq = tegra186_xusb_padctl_suspend_noirq,
 	.resume_noirq = tegra186_xusb_padctl_resume_noirq,
 	.vbus_override = tegra186_xusb_padctl_vbus_override,
+	.id_override = tegra186_xusb_padctl_id_override,
 	.utmi_pad_power_on = tegra186_utmi_pad_power_on,
 	.utmi_pad_power_down = tegra186_utmi_pad_power_down,
 };

-- 
2.52.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
