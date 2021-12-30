Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 71FA7C433F5
	for <linux-phy@archiver.kernel.org>; Thu, 30 Dec 2021 08:05:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=BVSdvW/pyHqY3Sf/6qo2K6NTMt/DeLGPJUd+1SJ6BXY=; b=RmXOl69ryExZUP
	hcTn+3Bu21P7l0ZJ7kLFKVgMGqBl+0PTENkTcdXTz6hAAiN7m99O40Vzir8GHvvRm+u3jTF8y/XwF
	bNtc1rwHhz7QXH5TW0LFkkNdmwveqx13ASTM/PCIPMJ3MEKjDQeDrjeWKQKkM91OgfUrE3LHlJqxv
	RiAyO3/CWVIa3Hj8H5bk5jBCOfeKxUA33qv3Sx7G/J5TXvUaakFk17WqlyJ2p7h5W0My4slAKrAxI
	QFud30W5YnimFXapbHuLw+SnSPIid3ePrRnTqhsXfrOXScAeWuyJvM+pcbmvOFaxhPYZQ9lVzTfyG
	ki5kBYf6lQPiqsrNBMYQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n2qQn-003zbm-GU; Thu, 30 Dec 2021 08:05:01 +0000
Received: from mail-pf1-x432.google.com ([2607:f8b0:4864:20::432])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n2qMe-003xf0-2x
 for linux-phy@lists.infradead.org; Thu, 30 Dec 2021 08:00:45 +0000
Received: by mail-pf1-x432.google.com with SMTP id 8so20771022pfo.4
 for <linux-phy@lists.infradead.org>; Thu, 30 Dec 2021 00:00:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id;
 bh=4uA7esXhcDSHJbZ7Mjo7PojXGD+W2Pww5KfPM/kIPPM=;
 b=ahUsvOxb+3Za/20OSG9KaukpQMgGmhNZR8IHwPHqa+ugUa7cUKcyWNLPF/XmVTPv00
 9LOfQcIuBZqOMrG7kLrrFQ86jwh3RoYtpfQsniAZSZ8C/ZWDxho8jl4KhI7vnJih12rE
 U4jYEpWyuSIyCEQrlAON8IhTxF24J6AsW8Y3aX3mI9lFr+f64Dm98jyffPUCkfPIIa7b
 jFe54gltc/jdGoUn8xvjn5vxTbWQItlGJBGOck+rSDvYSm4IE1rd03JSrctKzSgUHsYK
 A5/BN4QXrIkdEq7Vhm8FgvulwwkO//R+zgyVYmHyjrOc+I9Rzhh6+844rnc/ogxVeK67
 0nhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=4uA7esXhcDSHJbZ7Mjo7PojXGD+W2Pww5KfPM/kIPPM=;
 b=bLcX+oQM+vsaIbQyjmZh+8jB6QIvwuq6uRZqjuJ1/r41uIENOAPLPcZAcSX4UwgQvR
 XJ0lvvgLxPWR2jDi1AtsRJ7duIvZjUET4rfq1sA4UbcTcd/juDvcDL6t9wu7nJGj3hc9
 OfUQlicHP/uOpH8atU/99ANVT7FEIijFfcbDVoQN9AYqJxt4+2Z9dHhdMQqeOOKuEKBO
 SEcGGht+1tu4AGHzp3bmc2hIurvUYQ9BXZ1ldZHkM8Wco5BZ7u9WUaF9ZlTTAU4oLQtc
 QNkzM40dFa7kaVDqCazO0p0aZH6mFCIKuatEZT/f9SeY+bsjvI+X9OyrWwaqLaCepJO0
 65uQ==
X-Gm-Message-State: AOAM531K1YLHLU0wYVypZUvGd5nnKIXu8KF/ygofZz7Bn7G5ghAAmhsO
 cGZnD4BhJ2HuQhADXWWUwBk=
X-Google-Smtp-Source: ABdhPJx760XrjH+HZrZC2Z2gnCQ76KWUvwcQX+asvmcEtoedQg1YwqeLV6jhb+13GWRJXgZUZos6vw==
X-Received: by 2002:a63:62c6:: with SMTP id
 w189mr25916919pgb.343.1640851242351; 
 Thu, 30 Dec 2021 00:00:42 -0800 (PST)
Received: from localhost.localdomain ([159.226.95.43])
 by smtp.googlemail.com with ESMTPSA id k23sm4051598pji.3.2021.12.30.00.00.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 30 Dec 2021 00:00:42 -0800 (PST)
From: Miaoqian Lin <linmq006@gmail.com>
To: 
Cc: linmq006@gmail.com, JC Kuo <jckuo@nvidia.com>,
 Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 Thierry Reding <thierry.reding@gmail.com>,
 Jonathan Hunter <jonathanh@nvidia.com>, linux-phy@lists.infradead.org,
 linux-tegra@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH] phy: tegra: xusb: Fix missing put_device() in
 tegra210_xusb_padctl_probe
Date: Thu, 30 Dec 2021 08:00:31 +0000
Message-Id: <20211230080031.26952-1-linmq006@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211230_000044_167537_EA7570A1 
X-CRM114-Status: UNSURE (   9.69  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

If of_find_device_by_node() succeeds, tegra210_xusb_padctl_probe()
doesn't have a corresponding put_device(). Thus add put_device() to
fix the exception handling.

Fixes: 2d10214 ("phy: tegra: xusb: Add wake/sleepwalk for Tegra210")
Signed-off-by: Miaoqian Lin <linmq006@gmail.com>
---
 drivers/phy/tegra/xusb-tegra210.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/phy/tegra/xusb-tegra210.c b/drivers/phy/tegra/xusb-tegra210.c
index eedfc7c2cc05..05a0800af0e8 100644
--- a/drivers/phy/tegra/xusb-tegra210.c
+++ b/drivers/phy/tegra/xusb-tegra210.c
@@ -3170,8 +3170,10 @@ tegra210_xusb_padctl_probe(struct device *dev,
 		goto out;
 	}
 
-	if (!platform_get_drvdata(pdev))
+	if (!platform_get_drvdata(pdev)) {
+		put_device(&pdev->dev);
 		return ERR_PTR(-EPROBE_DEFER);
+	}
 
 	padctl->regmap = dev_get_regmap(&pdev->dev, "usb_sleepwalk");
 	if (!padctl->regmap)
-- 
2.17.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
