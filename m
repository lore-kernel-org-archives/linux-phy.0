Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1DCACCD37AC
	for <linux-phy@archiver.kernel.org>; Mon, 11 May 2026 13:57:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+vuSxIBu717atpdRO256z70W0nUysffGXVKJUQII/8Y=; b=4VIu0f6Gq672CO
	kwaSSP8jkwd7zeFbSQ+tQdIFk6G402Q/GGi0M6sLywjEZWn+iq4b7wYFKyh5fC47A6o/NEZX5BqSC
	MYY6z4Z1F5UpIEyb32TG9A7T09+3vgHajjDrnJZOh0vGqlltPqKQUqSfGOB30fcAh2av5aWBLR0hk
	AZFqs49W5GpNPJnxGv5WO6vIM1rvl3E+dDqblJH2R+d/VHsvupVxFUSs61780ePkoPIXD4AUf+ZaS
	nO9Z5h74G9DjYlByyghC7EwQDakRGozYUhfHSnzhFPNeKlYzKz29o8DjG21n7WqkAAC0PRtu9n8vN
	8qiOemlwNq0g6lGHYSZg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wMR8U-0000000DptC-3L4f;
	Mon, 11 May 2026 13:57:30 +0000
Received: from mail-ej1-x633.google.com ([2a00:1450:4864:20::633])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wMR8S-0000000DpsA-2c5j
	for linux-phy@lists.infradead.org;
	Mon, 11 May 2026 13:57:29 +0000
Received: by mail-ej1-x633.google.com with SMTP id a640c23a62f3a-bb91b426e40so723860366b.0
        for <linux-phy@lists.infradead.org>; Mon, 11 May 2026 06:57:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1778507847; x=1779112647; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=BY8lqIlaX558zAJe1pNahwarYdn7KKAgYehteYdm61E=;
        b=hpNsB6Aho8EhiaimAk647LVEgAGNw1r97dXvB8hW2V0VR/COrFPN20BX7xGGZ5csb+
         hd9fnaaegZAJjVNsFajJPQsZv9g/GqYPP94Hg+Ot505dw/jecmUQT0UbTRBfVX+/E2Wd
         HUkPalOxXwQ+foEpsaEJjceJww5rzIU7qKlbHEVtpEkgRGZUe1aUW4L7YC7FG0EApUEE
         Ke+qT7au3Co4lxryHjbFeNnr2BVhN6BYfn1jTz6vDYHGaWyUjo22dD7HG9FNXmSn64GR
         /U081cCO88S49mEuwqlC7ho5IRvJgalqMMkmHRyEjeM6uzPFGZct7udpAMH9MLxMNqXb
         81Uw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1778507847; x=1779112647;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=BY8lqIlaX558zAJe1pNahwarYdn7KKAgYehteYdm61E=;
        b=jRsu2o07xCKw35NYnNLziY6NSGrlWvXCAAECbyj6sT7HRkj9Ikqlps8OMKjDWcx7BC
         W1JWf0TI6prfnUDpxQOHMaegYCBQOVXRa0Nb5b3KXfiI42o7nSTCzC8K5cnRUnhXaI2H
         0SPG8r/fnlsCnjAfsp5uMyUYPvUfgaQE9XC9yHMxVw6XSu2yYO+vLRznnq5pELlXpksm
         I6FxndX6NcYZR9HiNQkKmbgdORSJy50txovw1yJw11WxNWnhDhCcmnIfL1kH/zXp1q7w
         qGgewZkxfEUEhJaoceQwlCpWjpq2jojVEp++4mPidgP3T2aQ9zGU/ClzhqAcwqCVtUnC
         8D+A==
X-Forwarded-Encrypted: i=1; AFNElJ/1ERvLKKajtEv9tWIgYSX2/WzZUfOhYrtY2aD67pblvHcZvlasojd+zbmAHtZ9SgirWQdscLAqTsI=@lists.infradead.org
X-Gm-Message-State: AOJu0YxzD1HYJBPuk1OEH+0fXL21oOcOVZcVZJWjoPBvLBFZpyOlmZ6i
	VOaaUJO6PVTZYclqIpUA4D8O7J80hcCdKi5wiSQToabk4rQkuSC44jDa
X-Gm-Gg: Acq92OHyEpe02GN2IguMbrKsW8wnXLt2/xrCJu0rEB09RplmdExfmHJ8lTzAPGfmy1E
	U1magPRwmicy2P+p/C+6KKB6hWMj+/4CSjVqy93loDhZvL9xY5JVPcKkPx/VtLeZwuL+7JFme6l
	uK7UyfxIl/GO3ftXHtrQAnrI+EaY0gCdHn2x7ffoolsS7zMdRJPw2L+n3WifCuFlb10jB4m8E+A
	IYyjOOnaon911eAZ56Zp2UBkk9T9kzE4fPAABSZlHYcIpmr0tYsq0Wk6l9zwUTRIKXGz/wrA0Wl
	kgOy/Ckq4tSIajJT4FaWOxFOwl3TdF39cjIZSxWz3gGRFiA4EwEy1vk4gqJg3PBuE+l1zu+Grj2
	PZWLt341bfawRfkRjA9iCA+h8Wr/mj0qp8SlDXWbe1fqsWp617hGguBgkBcybwZoOIQZW8lxLzt
	onlGtZBegNZxI5
X-Received: by 2002:a17:907:fdcb:b0:b9d:3e5e:fd32 with SMTP id a640c23a62f3a-bc56a6498c3mr1324021866b.8.1778507846254;
        Mon, 11 May 2026 06:57:26 -0700 (PDT)
Received: from xeon ([188.163.112.56])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-67ef0b3b904sm3685357a12.1.2026.05.11.06.57.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 11 May 2026 06:57:25 -0700 (PDT)
From: Svyatoslav Ryhel <clamor95@gmail.com>
To: Andrew Lunn <andrew+netdev@lunn.ch>,
	"David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>,
	Paolo Abeni <pabeni@redhat.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Thierry Reding <thierry.reding@kernel.org>,
	Jonathan Hunter <jonathanh@nvidia.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Peter Chen <peter.chen@kernel.org>,
	Svyatoslav Ryhel <clamor95@gmail.com>
Cc: netdev@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-tegra@vger.kernel.org,
	linux-usb@vger.kernel.org
Subject: [PATCH v1 2/6] usb: chipidea: tegra: Avoid controller/PHY init if bus is externally controlled
Date: Mon, 11 May 2026 16:56:57 +0300
Message-ID: <20260511135703.62470-3-clamor95@gmail.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20260511135703.62470-1-clamor95@gmail.com>
References: <20260511135703.62470-1-clamor95@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260511_065728_676915_729CF165 
X-CRM114-Status: GOOD (  15.71  )
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

If the USB controller and PHY are externally controlled, then the
registration of the controller and the PHY initialization should be
skipped, since these configurations must be done by the device that
controls the bus to work correctly.

Signed-off-by: Svyatoslav Ryhel <clamor95@gmail.com>
---
 drivers/usb/chipidea/ci_hdrc_tegra.c | 36 +++++++++++++++++-----------
 1 file changed, 22 insertions(+), 14 deletions(-)

diff --git a/drivers/usb/chipidea/ci_hdrc_tegra.c b/drivers/usb/chipidea/ci_hdrc_tegra.c
index 372788f0f970..593390a818d1 100644
--- a/drivers/usb/chipidea/ci_hdrc_tegra.c
+++ b/drivers/usb/chipidea/ci_hdrc_tegra.c
@@ -32,6 +32,7 @@ struct tegra_usb {
 	struct clk *clk;
 
 	bool needs_double_reset;
+	bool externally_controlled;
 };
 
 struct tegra_usb_soc_info {
@@ -312,20 +313,25 @@ static int tegra_usb_probe(struct platform_device *pdev)
 	if (device_property_present(&pdev->dev, "nvidia,needs-double-reset"))
 		usb->needs_double_reset = true;
 
+	if (device_property_present(&pdev->dev, "nvidia,external-control"))
+		usb->externally_controlled = true;
+
 	err = tegra_usb_reset_controller(&pdev->dev);
 	if (err) {
 		dev_err_probe(&pdev->dev, err, "failed to reset controller");
 		goto fail_power_off;
 	}
 
-	/*
-	 * USB controller registers shouldn't be touched before PHY is
-	 * initialized, otherwise CPU will hang because clocks are gated.
-	 * PHY driver controls gating of internal USB clocks on Tegra.
-	 */
-	err = usb_phy_init(usb->phy);
-	if (err)
-		goto fail_power_off;
+	if (!usb->externally_controlled) {
+		/*
+		 * USB controller registers shouldn't be touched before PHY is
+		 * initialized, otherwise CPU will hang because clocks are gated.
+		 * PHY driver controls gating of internal USB clocks on Tegra.
+		 */
+		err = usb_phy_init(usb->phy);
+		if (err)
+			goto fail_power_off;
+	}
 
 	/* setup and register ChipIdea HDRC device */
 	usb->soc = soc;
@@ -342,12 +348,14 @@ static int tegra_usb_probe(struct platform_device *pdev)
 	if (of_usb_get_phy_mode(pdev->dev.of_node) == USBPHY_INTERFACE_MODE_ULPI)
 		usb->data.flags &= ~CI_HDRC_SUPPORTS_RUNTIME_PM;
 
-	usb->dev = ci_hdrc_add_device(&pdev->dev, pdev->resource,
-				      pdev->num_resources, &usb->data);
-	if (IS_ERR(usb->dev)) {
-		err = dev_err_probe(&pdev->dev, PTR_ERR(usb->dev),
-				    "failed to add HDRC device");
-		goto phy_shutdown;
+	if (!usb->externally_controlled) {
+		usb->dev = ci_hdrc_add_device(&pdev->dev, pdev->resource,
+					      pdev->num_resources, &usb->data);
+		if (IS_ERR(usb->dev)) {
+			err = dev_err_probe(&pdev->dev, PTR_ERR(usb->dev),
+					    "failed to add HDRC device");
+			goto phy_shutdown;
+		}
 	}
 
 	return 0;
-- 
2.51.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
