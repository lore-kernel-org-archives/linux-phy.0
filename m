Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8680C60A260D
	for <linux-phy@archiver.kernel.org>; Mon, 26 Oct 2026 19:18:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=2LQPEK/W;
	dkim=fail reason="signature verification failed" (1024-bit key, unprotected) header.d=broadcom.com header.i=@broadcom.com header.a=rsa-sha256 header.s=google header.b=M+Doum+J
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=QSJZ11G0ssRKZ+c60cgjP2m8PGqVabp5GNe3Vw5GR24=; b=2LQPEK/W6fulMFZCM67nDrAcBj
	IjKcWnGao4OT+PlW65ySnI/u67j6WXCSWbrI0SgzmvApEfE7AUjp4MOQsRGfhgfD0wNYtcG03PwZz
	FhCL63EpHlatQAYaHy+ZakxslxrFFJbqlaF0HKHhkeY5MYMVVgKHrDUsSpO36FeHNy/kfSINrcLSJ
	8xLpHX1z3zGtdgY8nGy2zuqA6mfsdAG9ZSal5CMwGqlAMeEb+gJvCbBmqAX+iS/yG3kA5D4TvRCCu
	i+RthhnE9jodRBC9nxr6WpTE5JqZHnodRE0acAKbDHxXYZs+Gh2uThqVvUovNJy2PtSFlf/gXG9WK
	pdy/Z9BA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLQDC-000000039a2-10x7;
	Mon, 26 Oct 2026 19:18:26 +0000
Received: from mail-pl1-x664.google.com ([2607:f8b0:4864:20::664])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLQCz-000000039P9-0mo8
	for linux-phy@lists.infradead.org;
	Mon, 26 Oct 2026 19:18:14 +0000
Received: by mail-pl1-x664.google.com with SMTP id d9443c01a7336-2e977109392so19722455ad.0
        for <linux-phy@lists.infradead.org>; Mon, 26 Oct 2026 12:18:12 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793042291; x=1793647091;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=eG9L8JoEnV2/AJh4IZs2XwE9uOcVbAGkOowIPsI/5ZY=;
        b=e621CA8Q+j5KFmJ1a7r+nNQRhZxP2Ei9Tb5geYDfUtQA/5gJnpCZ3cNLWT9PStvYHx
         +qhkUC2wtxQqrhEi18OF2T1kst3yAw7XupTHKxhzfsYt7CZOShLPZke+wSeafkQVDd4y
         9kK9wZiqIcf1d6nBTatJy03g1lbekRL60T9seHq9s9M43wE15wPrFAjjI1VU/F+C49+1
         KJBMLwBb0uTMF4TcLQiHNxUlh6XaAoGVhHuyFtuC1IyPSQzBHvr1g6AIBCE4WHPJDztf
         LHOLwucx7305heHgL3CXFC3bKC//atrp0hbX16sMQt88nnBbZ/der4m2FamJOfvQUv2W
         RBbg==
X-Forwarded-Encrypted: i=1; AKwUvBztC7M6HiUwWxpZ/IOYCV8I9gvZd4mBnly/l7EwrrI1ihgKt3510BCDmOWqO9nZgPzj6xpIfdSMdbA=@lists.infradead.org
X-Gm-Message-State: AFq9FYKBHrV3KeiX3WI9GpC8iWtM8urJDQ9hLjpxDz0eYSMFl6uVFi0x
	OJepHK0MJhBzvt6nM4Ea+AfNBXkDzyRBeL2LNNViUbDAxd9a0KI3kaCXhz2I+wlp0tVhvR2XxJt
	x0rQH8bTu5LpegIYnk4Tflj9iAfBJKjMPGLtu5TT+ns27mjP4H359asRFNIEx7Cev/k0+XnTVsi
	We34ukEmjzqk470fyW70nlJJ5oRwDQlolHNMS1aFFqWbeBXgVT2B7qbCQE8k0d+qr1Ulh8aoxhw
	fTtcMTJRnObLPP+027bXSMVAU3t
X-Gm-Gg: AYBFou3bDZLifm//LRmeLKR8FkjqkiqguFTB2jGDi5WkiM93aAL0am9QKJp3BXTmyTL
	Zn3i2G7D7amuhKKN3laj3Jv7hP+eR5eGhsetUm7rl65lkh2koyJus2sTwyxMpNYhkG1GDk7qLqA
	3P8NuiVEUczGgJnAneNK+9Q0EDX3ImEAR70uCpPkEU0rPY1/hs/G5/LDxzA/9Q/2n44t2QMK8Gj
	pYpyDWXEwiuPiaU4pfG3CTJT3H/32dSNAYoX5z6Q9m/lZe1Bgq7gTJMPF0lyxII5TQXqsr5j75A
	ftp9+FXHqEM2AdlwRvqwfdvywh84nI5B5j7OQ2FQaF7X/MlcOe4wfN2VRrD0mmU67L23FL0QoYD
	h/eITTFPBFs/lS52t+KsWjFy9PjPo7xf0L7UCXltpHJIIPZzQJnCq1Kf4txl9dLfE35IW/RuO6A
	q6dY2u3HKotZxzgcvlJdYwI2nKBc5tQJI8/RfD8dLlCtA=
X-Received: by 2002:a17:90b:2689:b0:396:41d1:cbc7 with SMTP id 98e67ed59e1d1-3ade9b2c597mr6776831a91.3.1793042291222;
        Mon, 26 Oct 2026 12:18:11 -0700 (PDT)
Received: from smtp-us-east1-p01-i01-si01.dlp.protect.broadcom.com (address-144-49-247-120.dlp.protect.broadcom.com. [144.49.247.120])
        by smtp-relay.gmail.com with ESMTPS id 98e67ed59e1d1-3ae405c32d4sm340465a91.0.2026.10.26.12.18.10
        for <linux-phy@lists.infradead.org>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 26 Oct 2026 12:18:11 -0700 (PDT)
X-Relaying-Domain: broadcom.com
X-CFilter-Loop: Reflected
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-91b529a8610so79804926d6.0
        for <linux-phy@lists.infradead.org>; Mon, 26 Oct 2026 12:18:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google; t=1793042290; x=1793647090; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=eG9L8JoEnV2/AJh4IZs2XwE9uOcVbAGkOowIPsI/5ZY=;
        b=M+Doum+J4GbeUFnA26kavk8uiWsFuE7zS/8GZ5I5lO/nOzHCwlwh8Iv+3OpVGpVsbm
         siWAdRWrYYdZQmMlSzNA32Zpnz1w26BNxZG6/BusAA4GntdLV53H7OtUhmGMa7STUGgz
         Qy/4vT+xeJ3xRqd9e1BTj4pa4al8f/xdHjImw=
X-Forwarded-Encrypted: i=1; AKwUvBySSQpIwVD/Ihx5uDlkMUshaM1PzNuy3ZgA/1zEC9jpfpNQ+Onac1GG77MeQhX+xt//7Wp6LPrcdx4=@lists.infradead.org
X-Received: by 2002:ad4:5d42:0:b0:91c:6d30:7c2c with SMTP id 6a1803df08f44-91c6d307d76mr12445166d6.52.1793042289893;
        Mon, 26 Oct 2026 12:18:09 -0700 (PDT)
X-Received: by 2002:ad4:5d42:0:b0:91c:6d30:7c2c with SMTP id 6a1803df08f44-91c6d307d76mr12444746d6.52.1793042289436;
        Mon, 26 Oct 2026 12:18:09 -0700 (PDT)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-91c62063dacsm33430996d6.37.2026.10.26.12.18.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 26 Oct 2026 12:18:08 -0700 (PDT)
From: Florian Fainelli <florian.fainelli@broadcom.com>
To: linux-kernel@vger.kernel.org
Cc: Florian Fainelli <florian.fainelli@broadcom.com>,
	Damien Le Moal <dlemoal@kernel.org>,
	Niklas Cassel <cassel@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Ray Jui <rjui@broadcom.com>,
	Scott Branden <sbranden@broadcom.com>,
	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>,
	Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Tejun Heo <tj@kernel.org>,
	Yendapally Reddy Dhananjaya Reddy <yendapally.reddy@broadcom.com>,
	linux-ide@vger.kernel.org (open list:LIBATA SUBSYSTEM (Serial and Parallel ATA drivers)),
	devicetree@vger.kernel.org (open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS),
	linux-arm-kernel@lists.infradead.org (moderated list:BROADCOM IPROC ARM ARCHITECTURE),
	linux-phy@lists.infradead.org (open list:GENERIC PHY FRAMEWORK)
Subject: [PATCH v3 3/6] ata: ahci_brcm: Initialize the NSP interface clock and reset
Date: Mon, 26 Oct 2026 12:16:15 -0700
Message-ID: <20261026191618.3178830-4-florian.fainelli@broadcom.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20261026191618.3178830-1-florian.fainelli@broadcom.com>
References: <20261026191618.3178830-1-florian.fainelli@broadcom.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-DetectorID-Processed: b00c1d49-9d2e-4205-b15f-d015386d3d5e
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261026_121813_240404_60C4DA72 
X-CRM114-Status: GOOD (  17.35  )
X-Spam-Score: -2.4 (--)
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-17.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

The NSP probe path assumes firmware has enabled the SATA IDM interface
clock and released the core reset. The downstream iProc config_AHCI()
sequence explicitly performs both operations before accessing AHCI.
Without that setup, a cold boot can access an inactive controller.

Map the optional NSP IDM register region and enable the interface clock
before releasing reset, retaining the downstream settling intervals.
Perform the sequence at probe and resume before reconfiguring SATA.

Keep the resource optional so older device trees continue to rely on
firmware initialization.

Fixes: 3ee2e6dcaa35 ("ata: ahci_brcm: Add support for Broadcom NSP SoC")
Signed-off-by: Florian Fainelli <florian.fainelli@broadcom.com>
---
 drivers/ata/ahci_brcm.c | 36 ++++++++++++++++++++++++++++++++++++
 1 file changed, 36 insertions(+)

diff --git a/drivers/ata/ahci_brcm.c b/drivers/ata/ahci_brcm.c
index 29be74fedcf0..3b6ed56f3e95 100644
--- a/drivers/ata/ahci_brcm.c
+++ b/drivers/ata/ahci_brcm.c
@@ -6,7 +6,9 @@
  */
 
 #include <linux/ahci_platform.h>
+#include <linux/bcma/bcma_regs.h>
 #include <linux/compiler.h>
+#include <linux/delay.h>
 #include <linux/device.h>
 #include <linux/init.h>
 #include <linux/interrupt.h>
@@ -83,6 +85,7 @@ enum brcm_ahci_quirks {
 struct brcm_ahci_priv {
 	struct device *dev;
 	void __iomem *top_ctrl;
+	void __iomem *idm;
 	u32 port_mask;
 	u32 quirks;
 	enum brcm_ahci_version version;
@@ -230,6 +233,25 @@ static u32 brcm_ahci_get_portmask(struct ahci_host_priv *hpriv,
 	return impl;
 }
 
+static void brcm_sata_init_idm(struct brcm_ahci_priv *priv)
+{
+	u32 data;
+
+	if (!priv->idm)
+		return;
+
+	/* Enable the interface clock before releasing the SATA core reset. */
+	data = readl(priv->idm + BCMA_IOCTL);
+	writel(data | BCMA_IOCTL_CLK, priv->idm + BCMA_IOCTL);
+	readl(priv->idm + BCMA_IOCTL);
+	usleep_range(1000, 2000);
+
+	data = readl(priv->idm + BCMA_RESET_CTL);
+	writel(data & ~BCMA_RESET_CTL_RESET, priv->idm + BCMA_RESET_CTL);
+	readl(priv->idm + BCMA_RESET_CTL);
+	usleep_range(1000, 2000);
+}
+
 static void brcm_sata_init(struct brcm_ahci_priv *priv)
 {
 	void __iomem *ctrl = priv->top_ctrl + SATA_TOP_CTRL_BUS_CTRL;
@@ -376,6 +398,9 @@ static int __maybe_unused brcm_ahci_resume(struct device *dev)
 	if (ret)
 		return ret;
 
+	/* Initialize the IDM before enabling the controller clocks. */
+	brcm_sata_init_idm(priv);
+
 	/* Make sure clocks are turned on before re-configuration */
 	ret = ahci_platform_enable_clks(hpriv);
 	if (ret)
@@ -453,6 +478,14 @@ static int brcm_ahci_probe(struct platform_device *pdev)
 	priv->version = (unsigned long)of_id->data;
 	priv->dev = dev;
 
+	/* Older NSP device trees rely on firmware to initialize the IDM. */
+	if (priv->version == BRCM_SATA_NSP &&
+	    platform_get_resource_byname(pdev, IORESOURCE_MEM, "idm")) {
+		priv->idm = devm_platform_ioremap_resource_byname(pdev, "idm");
+		if (IS_ERR(priv->idm))
+			return PTR_ERR(priv->idm);
+	}
+
 	priv->top_ctrl = devm_platform_ioremap_resource_byname(pdev, "top-ctrl");
 	if (IS_ERR(priv->top_ctrl))
 		return PTR_ERR(priv->top_ctrl);
@@ -493,6 +526,9 @@ static int brcm_ahci_probe(struct platform_device *pdev)
 	if (ret)
 		return ret;
 
+	/* Initialize the IDM before enabling the controller clocks. */
+	brcm_sata_init_idm(priv);
+
 	ret = ahci_platform_enable_clks(hpriv);
 	if (ret)
 		goto out_reset;
-- 
2.53.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
