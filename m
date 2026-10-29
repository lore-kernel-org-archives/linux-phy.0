Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 491D6606A31E
	for <linux-phy@archiver.kernel.org>; Thu, 29 Oct 2026 21:25:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=2drnPIM+;
	dkim=fail reason="signature verification failed" (1024-bit key, unprotected) header.d=broadcom.com header.i=@broadcom.com header.a=rsa-sha256 header.s=google header.b=ISQntnuV
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=QSJZ11G0ssRKZ+c60cgjP2m8PGqVabp5GNe3Vw5GR24=; b=2drnPIM+W9ej0O98zI6AG5U9o+
	87MfMQw6Pxv+iR2Xxi+7g2H/mu3E5o718cL5j4paTkoYzU3HVAB8/7682CYmKAwCd03TX9UnwvSwD
	mOV4MKOb3Xs1NDfLOIaRylEk3bPKDjsZQNs0t9iv1QdB/YLALIWfzk819p/V1HfpGIFsu+nLQs1Qz
	nym5/6xgOqcJvyL/MeZ6BuvXNJSFetssuE1aON8fCo5ZGZtpyEN3A7mZ0XzwzQPuLdn5W/l7KinSK
	+cCKrJFUkqt67j4av5f+LU2Ww2He3LLJ+C+SUGRihMaVSeZAz9g4LOzQ4e3TLlz88aH00R2L7m1N7
	JnnQmWAw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xMXd4-0000000APc3-4ACk;
	Thu, 29 Oct 2026 21:25:47 +0000
Received: from mail-qk1-x761.google.com ([2607:f8b0:4864:20::761])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xMXct-0000000APVO-0nkR
	for linux-phy@lists.infradead.org;
	Thu, 29 Oct 2026 21:25:36 +0000
Received: by mail-qk1-x761.google.com with SMTP id af79cd13be357-93e63ee7b4cso270810185a.2
        for <linux-phy@lists.infradead.org>; Thu, 29 Oct 2026 14:25:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793309134; x=1793913934;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=eG9L8JoEnV2/AJh4IZs2XwE9uOcVbAGkOowIPsI/5ZY=;
        b=qYCcbC00P3gMFFcOMjyylZVPibkP26MegmmfU12Larjsh1O5RlydiCGvs6jTkuFawb
         bfY1JgI8cdx6TxORcYx2+22tyiaVcSPxkRvENsI3aLfR4WbfFOaY2f17mBUwhcO6j00n
         ipcoAPPzSgkSrFoZ3NYP2TMRGJ7rUd4S32zHb16tire+1AKx/EQ0ZEugVEzJW+qgFRYi
         KHowdQyG0oB4ayrPgZS8WWq1jltGAONoLjISSaKJIgnn3q5WdpjxnA1tdMEvSG4bdkhn
         o1HDOySsTYgXowyZWU0mhrm9jh1NoD11O18XfcgT9gKoZId7QeHDrZSNGLNXPQh6Ad3D
         H4OA==
X-Forwarded-Encrypted: i=1; AKwUvBwDzgqri3D5afTjXJUPdf8tpDSQ8cPri7WOa4txeeGpO3ww+Zu5UC3BR61tjlzfCCo44QzIpzbxj/Y=@lists.infradead.org
X-Gm-Message-State: AFq9FYLQ9D4+E1CbHN8mih4Joknmf11AhY3eCxymlY+kI/I+h7lpRYot
	xtTq8WaXL9hUqLThPtjUvSrN/BkxF5F+IC2Vy2Ias5id5SeqIBsdhpLJIlXQojP5ucWE7kij5m6
	6TZQV9OVphvq7rSO3PRN1S6iPrec+FyaCT2HZq+fLS9ImgYmuK7tDgbjOnuaHwGoSCv6Ie9JmPM
	82tAa9o3oQbzGgYOAYCYSZ+OHSQvuyYgXBFs5/ZRW0X0TWBsw3OF4cXLr95YetBg29dpOw4KWTA
	/cxjDQ4UuB+UTYCS81b/aX1n7sA
X-Gm-Gg: AYBFou2kAi73TF0EyYDvrotJotinBiIy+yrERAzsSaEAQFAYO57phHC3gzS0Z1G+tQW
	DnxIW6bZXi3UOPvs6yKJ8bz03LToTOlAo8Zt/gsltO9oeJsqGd8gdbRKYWP2va9q9huAaVUAnig
	8tPFFzgcZmLrvLcscyyxQ0gcVkkB6Vt6KfGPxF2eO0wxsSJvfRwGDq3PTFqcTw0zYqdl1CAGoj0
	AYYfTr6B1CB3Q6AeVZf8MqfT7mmmCK97GEigFb93/X46WRsRhzb6baJU5ivZw8F+sQ9pvsMwQHd
	pyyUSSnvawifQ1ATXbRo0xz86SODMK5eqDBGJ8JFFSE8//F0MeXRm0kjybPZEJvNGIw5iZ4Yb1y
	/ezAsl6bsLepmm9o7V/7zySSn67h2r0YVg05mpd8SqvNUvxhCLMh1nnZZ+xgBIQW+CtY+tDU1v+
	0cfdjAtxKRy+cF2GIidHPVKKWbPRisQnqJnmZm+Gbw
X-Received: by 2002:a05:620a:270b:b0:93f:565f:e40 with SMTP id af79cd13be357-944217dc91fmr75733785a.65.1793309134051;
        Thu, 29 Oct 2026 14:25:34 -0700 (PDT)
Received: from smtp-us-east1-p01-i01-si01.dlp.protect.broadcom.com (address-144-49-247-28.dlp.protect.broadcom.com. [144.49.247.28])
        by smtp-relay.gmail.com with ESMTPS id af79cd13be357-94421103105sm6571485a.2.2026.10.29.14.25.33
        for <linux-phy@lists.infradead.org>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 29 Oct 2026 14:25:34 -0700 (PDT)
X-Relaying-Domain: broadcom.com
X-CFilter-Loop: Reflected
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-917baea8e5dso1687526d6.3
        for <linux-phy@lists.infradead.org>; Thu, 29 Oct 2026 14:25:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google; t=1793309133; x=1793913933; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=eG9L8JoEnV2/AJh4IZs2XwE9uOcVbAGkOowIPsI/5ZY=;
        b=ISQntnuVtZsvuEPM0f+wNwR9rM8+w4lovGv9e95vyDO3vX/N841PWFeGNOt9+TKZ/n
         ykC0PwCz75FuS29yOcr6aW6LmAy2O4foH0ZlRYKS5myloPoC0T4+g16rK2J9Bv9aJJqH
         VCsXcaMDN7Bbp0mrvDI6jK8jYZjTOqHanTlGU=
X-Forwarded-Encrypted: i=1; AKwUvBw08Mvmme1hD925X8Aai5kHmgTfmEUxzZ7ld/CK7pN2QoeHwhKM6JlZuNoPsXwWBC2pOeEIqcZL3NE=@lists.infradead.org
X-Received: by 2002:a05:6214:45a0:b0:91c:7a0e:3385 with SMTP id 6a1803df08f44-91ca4b7973dmr3564046d6.49.1793309132732;
        Thu, 29 Oct 2026 14:25:32 -0700 (PDT)
X-Received: by 2002:a05:6214:45a0:b0:91c:7a0e:3385 with SMTP id 6a1803df08f44-91ca4b7973dmr3563736d6.49.1793309132301;
        Thu, 29 Oct 2026 14:25:32 -0700 (PDT)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-91ca314fb6csm6384936d6.34.2026.10.29.14.25.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 29 Oct 2026 14:25:31 -0700 (PDT)
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
Subject: [PATCH v4 3/6] ata: ahci_brcm: Initialize the NSP interface clock and reset
Date: Thu, 29 Oct 2026 14:25:10 -0700
Message-ID: <20261029212513.4126083-4-florian.fainelli@broadcom.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20261029212513.4126083-1-florian.fainelli@broadcom.com>
References: <20261029212513.4126083-1-florian.fainelli@broadcom.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-DetectorID-Processed: b00c1d49-9d2e-4205-b15f-d015386d3d5e
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261029_142535_293967_2B0CA286 
X-CRM114-Status: GOOD (  17.16  )
X-Spam-Score: -2.1 (--)
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
X-Spam-Status: No, score=-16.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
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
