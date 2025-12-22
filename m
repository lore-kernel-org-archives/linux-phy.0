Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1B2BAE6ADE7
	for <linux-phy@archiver.kernel.org>; Mon, 22 Dec 2025 20:37:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JXJQmADt5uTfp7oS+XZB10tlRDzdXll+DfPxRlt5+jM=; b=qSDMr1GuiU09dP
	kAPIoaf8oGkI5DFxmxcxZ0VyK+FOysmm4K7/kbx5gvHOa62KMaT+6sIiR2+XWQvFu5cctInr2SCvD
	hqnUnR4u0J7N7Q0IdsgltUhrkDGNyHzaeTSMvslxUPcHzSJGL1o5hrZrKUJVpRnEC5kT/YoogktSs
	ZIhajjFuiHpznzFQTgL3abjqZlCUFH2P37ikjrCYNj8mmvh2ZN7U7pX6chnIOZxAugj2EIuE3J/uH
	fJ6LReK39lA6M1QRGBxYYWU7+hzgS3buJ/SuPp8jE85esv1RgEduN3YICEHW4yFUkV3073FEzm9i1
	iyo8hLQGsYrkofX0StZg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vXmes-0000000E931-3BAm;
	Mon, 22 Dec 2025 20:37:34 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vXmer-0000000E92P-1O0B;
	Mon, 22 Dec 2025 20:37:33 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 6295660165;
	Mon, 22 Dec 2025 20:37:32 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8990FC4CEF1;
	Mon, 22 Dec 2025 20:37:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766435852;
	bh=XKskJ1WTC783Bb/i1qvF+S49G7qTzXEfIkrjc3VCGY8=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=BDNjrtjSl5HwmzTYqtefnbMM1MLC65/aOjPLzkJN1b7Foaa2a+vsEIVLAYUxyXMEZ
	 24f6LtwDPTbox3Elz+TA5HuetZY2Zbe2fiDwaVs4PnmHJ/VOaeng+BS+evRCvHEdiq
	 phi2uMM3MByq3MZGootCC5i/z96V5u9OhM8gxuApXU7ilmY5OfHPrAolPLMdkwbOZl
	 MHEbP5mwtWfK2f90NYd2+QNJR8YysQ64+IDCBD+ZqT1Ete6noeZgLbK14uH7Qjc1AZ
	 ZRUdwdATHvB19tni+3bi2gF7O4/4c2iyiNA1mgL2TJ3wfSfZGHAdkPx1eRc/jK1BTw
	 AZZj55ht/L+4Q==
From: "Rafael J. Wysocki" <rafael@kernel.org>
To: Linux PM <linux-pm@vger.kernel.org>
Cc: LKML <linux-kernel@vger.kernel.org>, Ulf Hansson <ulf.hansson@linaro.org>,
 Brian Norris <briannorris@chromium.org>, Vinod Koul <vkoul@kernel.org>,
 Neil Armstrong <neil.armstrong@linaro.org>, Heiko Stuebner <heiko@sntech.de>,
 linux-phy@lists.infradead.org, linux-rockchip@lists.infradead.org
Subject: [PATCH v1 14/23] phy: rockchip-samsung-dcphy: Discard pm_runtime_put() return
 value
Date: Mon, 22 Dec 2025 21:21:30 +0100
Message-ID: <2281919.Icojqenx9y@rafael.j.wysocki>
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

Passing pm_runtime_put() return value to the callers is not particularly
useful.

Returning an error code from pm_runtime_put() merely means that it has
not queued up a work item to check whether or not the device can be
suspended and there are many perfectly valid situations in which that
can happen, like after writing "on" to the devices' runtime PM "control"
attribute in sysfs for one example.  It also happens when the kernel is
configured with CONFIG_PM unset.

Accordingly, update samsung_mipi_dcphy_exit() to simply discard the
return value of pm_runtime_put() and always return success to the
caller.

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
 drivers/phy/rockchip/phy-rockchip-samsung-dcphy.c |    4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

--- a/drivers/phy/rockchip/phy-rockchip-samsung-dcphy.c
+++ b/drivers/phy/rockchip/phy-rockchip-samsung-dcphy.c
@@ -1508,7 +1508,9 @@ static int samsung_mipi_dcphy_exit(struc
 {
 	struct samsung_mipi_dcphy *samsung = phy_get_drvdata(phy);
 
-	return pm_runtime_put(samsung->dev);
+	pm_runtime_put(samsung->dev);
+
+	return 0;
 }
 
 static const struct phy_ops samsung_mipi_dcphy_ops = {




-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
