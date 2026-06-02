Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C293FCD6E60
	for <linux-phy@archiver.kernel.org>; Tue,  2 Jun 2026 13:14:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Message-Id:MIME-Version:Subject:
	Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=J2VYjIVXmuuDeHCUj3XcOEORhhWV4cC2qoKNqg1Z8C0=; b=2KyVXwuju8T4FP
	ZIjO2UjzPdcSbxVhF0pJd5ZVZr+wBSHChHcba/ulAoAb/iuiI4QF4F4L0ADfBEKd2uR9T6wYdyWXG
	ArAC/TDdvu7TS8y7pQ8hJZlxf9p1DD6PUWoeaMAQQPqJXqoMC6OCQoaD+Ikk/Tdj6hIgTLmXJnOvh
	T1YRs7fczk9GVd2N6atxiK7hJ1n412ETGYregTxy77xfhZuGCH6PiehMrZYWEhG69uiqpHznOeJhV
	iFQt3rb/cvxolK/jsHE5nNVhcaT2Z3RsosqgIXeKKNYqNtW0d/QLO9Vxfh3kTiRc085vyiS9vFmkb
	D7vaVg32to7JJkh73sBg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wUOx8-0000000D3eT-1eEn;
	Tue, 02 Jun 2026 13:14:42 +0000
Received: from mail-pl1-x62d.google.com ([2607:f8b0:4864:20::62d])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wUOx5-0000000D3dd-2x7l
	for linux-phy@lists.infradead.org;
	Tue, 02 Jun 2026 13:14:40 +0000
Received: by mail-pl1-x62d.google.com with SMTP id d9443c01a7336-2bf30d530bdso39591695ad.3
        for <linux-phy@lists.infradead.org>; Tue, 02 Jun 2026 06:14:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1780406078; x=1781010878; darn=lists.infradead.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=m1KVnd1R5IOEaVntsRV6w5ohh6MM9xtfcSuVzw7+bPI=;
        b=i+bH7W72Qu/oL2WKpdXmUzZ/odKkfLe/LJLllA9CP+1rBqCo5IpD3CzrCArFEfDavU
         XtAutiX9maO1HlqaNFs9JtxrG6vrpSybfS8UrJtARGvE2MoLyj6+epH3w+vCUqpfS6u5
         yacvSoL2zYbKItohe2Yq2OeihEz555fH5W5aSOrwdiGPH02Fbz1lX2ldIoOvqZuZFCI6
         7a8jt5L05MDd/6qnWiLsY/6H1QJBQA9++2SBi4FmCTjIz5QjMhncClP5PC2ZwcKddUc+
         OeXqXUJG4/qWTiZ1fvgFjPTRaF63CcqSeirpSKBFB0k314QUnBtaKaY+TpPORqskzpKa
         ozCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780406078; x=1781010878;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=m1KVnd1R5IOEaVntsRV6w5ohh6MM9xtfcSuVzw7+bPI=;
        b=QRKm9wKTtzgcjKNrZXhJQkgIjKjvzn5hJENBpGy4wE4GWTwfXNY7gbX7Yi+nR8aoz8
         HTE798rAwulIGWEedb15G8JvxUvJ9oxRhgVECS5kqFnMqNeMmFGgG+OeUEUXL3kBAXzq
         O6Bv29jYz355p2+3/anXFkG1c0hf2fmBz8lqVTITN1u1ztnIJezhWgk5ojWkRRuO0+er
         zp8ol/CcxiLUKZ6zgJ5EMGRKlUYh55dHeRQFfAXae9nGsL3oo5ozmNQy7C6jb4kklSLy
         5xOhBgT/q8fORtj0zog3zbShuYGhQOJw6iYoyLzrNBcUSrOhwzTb4Vlnysj11lHi0EKj
         ix2A==
X-Gm-Message-State: AOJu0YwbbQO6r6gqKFgyJ7zGLe97NB7o5VgsBZIGArERe+FNpLPVhmqz
	1zkcQTowBwJMrwt5rCRfRaAYC48VVnK7OtMP9OaOs9IMUNb6p7E1t1gAMI4oQ+rl
X-Gm-Gg: Acq92OEjXSSpZfG7bRZR3TCpWvK9vpj1vjurBCIU7ljAR1CyuHWs6GzjKS0uQoQkzDG
	ixfFIwpBP50Ymez8dAUDH5czTTmxUBlE080k7HXPV4rSbIfVD+/lvS2MAHUIqptAgWVWwjrqsdw
	w/iahh8NQpG87EzmkPI4O+mU7xk+TP+rl82apBHTXpUG5GW8A7KyJoqNne2CtWTqt4XAOuHFE+S
	CY9RYhp3kSFCBTAq8zwQ/EfFCmLZIwoFzLqp6Z96n0vH9crUFG5rJjOPO+2qt57gTNX9PRlsT+h
	dB9d7xQ3hNBqPF8dB2AD/isRvGyJmY9n8PZ/k/TwRGrmjxjoU7A6hMcLmq3hveLWARrYaqOQLlu
	F/AUwtngKdwKwpEbp9tXlKpCku5pWeHwpKW4F8PMIsuymwwMYUBv5jWRI/YxeZMxHuK1PZO27Fo
	W6TFMleUr79aDqaQ92LCEDAbYbl5hsuEGitcH2v4s7ka3d2bMDjt5KzwiKzMRhNUf7BsB+A0T73
	82YUJN3J7Q8KZJh4sOs1VzEv8HDwKu2yE3isLg=
X-Received: by 2002:a17:903:1a0c:b0:2c0:f807:56b6 with SMTP id d9443c01a7336-2c0f80758b4mr76638985ad.4.1780406078215;
        Tue, 02 Jun 2026 06:14:38 -0700 (PDT)
Received: from junjungu-PC.localdomain ([223.166.246.30])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2bf239e7024sm136568705ad.6.2026.06.02.06.14.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 02 Jun 2026 06:14:37 -0700 (PDT)
From: Felix Gu <ustc.gu@gmail.com>
Date: Tue, 02 Jun 2026 21:14:33 +0800
Subject: [PATCH] phy: fsl-imx8mq-usb: fix vbus regulator leak on error
 paths
MIME-Version: 1.0
Message-Id: <20260602-imx9mq-v1-1-e58b912923d2@gmail.com>
X-B4-Tracking: v=1; b=H4sIADjXHmoC/yXM0QpAMBTG8VfRubY6m6zmVeSCOTjKsCEl7264/
 NX/+y4I5JkCFMkFng4OPLsImSZgh9r1JLiNBoVKo0YleDrNtIoMpTYqM01uEGK8eOr4/I7K6nf
 Ym5Hs9q7hvh+Sh+HCagAAAA==
X-Change-ID: 20260602-imx9mq-30169239b590
To: Vinod Koul <vkoul@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, Frank Li <Frank.Li@nxp.com>, 
 Sascha Hauer <s.hauer@pengutronix.de>, 
 Pengutronix Kernel Team <kernel@pengutronix.de>, 
 Fabio Estevam <festevam@gmail.com>, Xu Yang <xu.yang_2@nxp.com>
Cc: linux-phy@lists.infradead.org, imx@lists.linux.dev, 
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Felix Gu <ustc.gu@gmail.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1780406073; l=1702;
 i=ustc.gu@gmail.com; h=from:subject:message-id;
 bh=2P56B+ZQr3CMN8Q55LeqttmN2FV6MnYrkE4+rKOUiPI=;
 b=g2pyz/lE7GuPW7EbYIxceMDMUv9+CWTXEQIMXX8ydyaRLCAB+gzEIohDQmvjmmkIS1HKFwuY2
 a5WVBm2mQgXA0UAuruhmAeMLBxclchAkYoPqxRyWet4Ts00kbW5mkVa
X-Developer-Key: i=ustc.gu@gmail.com; a=ed25519;
 pk=fjUXwmjchVN7Ja6KGP55IXOzFeCl9edaHoQIEUA+/hw=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260602_061439_749746_E22B3E4F 
X-CRM114-Status: GOOD (  11.18  )
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

In imx8mq_phy_power_on(), if clk_prepare_enable() fails after
regulator_enable() has succeeded, the vbus regulator is left
enabled. The same issue exists for the alt_clk error path.

Fix both by converting to the standard goto-based cleanup
pattern, ensuring the regulator is disabled when any
subsequent step fails.

Fixes: 3b64ea4768e7 ("phy: fsl-imx8mq-usb: support alternate reference clock")
Signed-off-by: Felix Gu <ustc.gu@gmail.com>
---
 drivers/phy/freescale/phy-fsl-imx8mq-usb.c | 15 ++++++++++-----
 1 file changed, 10 insertions(+), 5 deletions(-)

diff --git a/drivers/phy/freescale/phy-fsl-imx8mq-usb.c b/drivers/phy/freescale/phy-fsl-imx8mq-usb.c
index b05d80e849a1..e45e4f16057e 100644
--- a/drivers/phy/freescale/phy-fsl-imx8mq-usb.c
+++ b/drivers/phy/freescale/phy-fsl-imx8mq-usb.c
@@ -627,13 +627,11 @@ static int imx8mq_phy_power_on(struct phy *phy)
 
 	ret = clk_prepare_enable(imx_phy->clk);
 	if (ret)
-		return ret;
+		goto disable_vbus;
 
 	ret = clk_prepare_enable(imx_phy->alt_clk);
-	if (ret) {
-		clk_disable_unprepare(imx_phy->clk);
-		return ret;
-	}
+	if (ret)
+		goto disable_clk;
 
 	/* Disable rx term override */
 	value = readl(imx_phy->base + PHY_CTRL6);
@@ -641,6 +639,13 @@ static int imx8mq_phy_power_on(struct phy *phy)
 	writel(value, imx_phy->base + PHY_CTRL6);
 
 	return 0;
+
+disable_clk:
+	clk_disable_unprepare(imx_phy->clk);
+disable_vbus:
+	regulator_disable(imx_phy->vbus);
+
+	return ret;
 }
 
 static int imx8mq_phy_power_off(struct phy *phy)

---
base-commit: 08484c504b55a98bd100527fbe10a3caf55ff3ff
change-id: 20260602-imx9mq-30169239b590

Best regards,
--  
Felix Gu <ustc.gu@gmail.com>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
