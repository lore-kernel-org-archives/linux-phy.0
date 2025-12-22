Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 82C14E6ADE7
	for <linux-phy@archiver.kernel.org>; Mon, 22 Dec 2025 20:37:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lwarOGFWtgrClpK/fCm0/DzxmSGJPlXYvXx5UbNtzm4=; b=RA882Bn7TNUQSs
	etqbeF9LmfO1lElDwB2dTJ53CQGDEa8LjalnOIIZzK4pyjlBsE/tYQpF72JJHxy8h6EjfdkGrxPOg
	UAQQyW99cyhrZfmtDGEs5svV9pMRPKQJqoHs/0yNyY0t54eMzY9Mp836ZKQkaqXhyApnGLYDxEj8z
	3/P0F3rpSe628Slo5Xp1iOh1bE5FP7fGmTDrT93/RblYNH41vjLodoJ2NbtNDebP4GSn1L4LwelGc
	LfNUXY2cYc36nSPmKF5BA1vlZ5vBNy64LPvhid7wm401reCChbOOivGMnN0h7dwhLziyTo1bvtBSx
	+kzgH/nMqu/mpzpAdqoA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vXmex-0000000E94r-17Yk;
	Mon, 22 Dec 2025 20:37:39 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vXmev-0000000E944-17TT
	for linux-phy@lists.infradead.org;
	Mon, 22 Dec 2025 20:37:37 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 3EEC760166;
	Mon, 22 Dec 2025 20:37:36 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 18E86C16AAE;
	Mon, 22 Dec 2025 20:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766435856;
	bh=s8U1CydswO0VHrV1/b5U9Cm0WygeIhxn3DiIa3asjrQ=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=cA1aT98UnLvjBoGeGqk0TzwvOfi2R8HiihJ9HLXfNvoU3NZ56e0+Tac+UBvIs21dN
	 4u6aoHzoucUh4wGOL3whtSqlAfzHmtxQ+BBgAYPihc6T3uC5Fs7yi9MlsObeu473GK
	 ZwHspH1/yDRJMxxK2tMDhGeu+ZJPg+ZggG+IHoHPfLpMx3s4D2jnJpxNsoFYaOO/41
	 AeujObkfnk1+qYBYjGBRAzODpUru8YM43Mh5vvKF9fSNWVUfxCsZZniOSMirLI/VTQ
	 NBIU6pHjbRa+4mvDRhWQfIwhFKqczcod+5Fab59nG5pjzilzS/7UW5X283uz05acZP
	 jxtgmAKKFF6dQ==
From: "Rafael J. Wysocki" <rafael@kernel.org>
To: Linux PM <linux-pm@vger.kernel.org>
Cc: LKML <linux-kernel@vger.kernel.org>, Ulf Hansson <ulf.hansson@linaro.org>,
 Brian Norris <briannorris@chromium.org>, Vinod Koul <vkoul@kernel.org>,
 Neil Armstrong <neil.armstrong@linaro.org>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>, Fabio Estevam <festevam@gmail.com>,
 linux-phy@lists.infradead.org, imx@lists.linux.dev
Subject: [PATCH v1 13/23] phy: freescale: Discard pm_runtime_put() return value
Date: Mon, 22 Dec 2025 21:18:46 +0100
Message-ID: <2012926.taCxCBeP46@rafael.j.wysocki>
Organization: Linux Kernel Development
In-Reply-To: <6245770.lOV4Wx5bFT@rafael.j.wysocki>
References: <6245770.lOV4Wx5bFT@rafael.j.wysocki>
MIME-Version: 1.0
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

From: Rafael J. Wysocki <rafael.j.wysocki@intel.com>

Printing error messages on pm_runtime_put() returning negative values
is not particularly useful.
 
Returning an error code from pm_runtime_put() merely means that it has
not queued up a work item to check whether or not the device can be
suspended and there are many perfectly valid situations in which that
can happen, like after writing "on" to the devices' runtime PM "control"
attribute in sysfs for one example.

Accordingly, update mixel_lvds_phy_reset() to simply discard the return
value of pm_runtime_put().

This will facilitate a planned change of the pm_runtime_put() return
type to void in the future.

Signed-off-by: Rafael J. Wysocki <rafael.j.wysocki@intel.com>
---

This patch is part of a series, but it doesn't depend on anything else
in that series.  The last patch in the series depends on it.

It can be applied by itself and if you decide to do so, please let me
know.

Otherwise, an ACK or equivalent will be appreciated, but also the lack
of specific criticism will be eventually regarded as consent.

---
 drivers/phy/freescale/phy-fsl-imx8qm-lvds-phy.c |    6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

--- a/drivers/phy/freescale/phy-fsl-imx8qm-lvds-phy.c
+++ b/drivers/phy/freescale/phy-fsl-imx8qm-lvds-phy.c
@@ -286,11 +286,9 @@ static int mixel_lvds_phy_reset(struct d
 
 	regmap_write(priv->regmap, PHY_CTRL, CTRL_RESET_VAL);
 
-	ret = pm_runtime_put(dev);
-	if (ret < 0)
-		dev_err(dev, "failed to put PM runtime: %d\n", ret);
+	pm_runtime_put(dev);
 
-	return ret;
+	return 0;
 }
 
 static struct phy *mixel_lvds_phy_xlate(struct device *dev,




-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
