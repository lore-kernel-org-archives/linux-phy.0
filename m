Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A972760A262D
	for <linux-phy@archiver.kernel.org>; Mon, 26 Oct 2026 18:29:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=y4EquT7F;
	dkim=fail reason="signature verification failed" (1024-bit key, unprotected) header.d=broadcom.com header.i=@broadcom.com header.a=rsa-sha256 header.s=google header.b=T3FmclUL
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=SZ6lZcShzt10cNf5tMnhRj3KNIHmjIjnsZk2eKqg6YY=; b=y4EquT7F/btHwhdzP04ynYMyAz
	l1hw/l4Zl7R1zOucKOIY/PWtYigLrbtk2nmqWJN4UiZ/XjLzO7ggjRIBNMnRHyyqXjIGumoZkYrU6
	4jh5iK9o3812coTlzSTaAHnxFv2eezlapDWm6qS4v6FKyUDqSx3mU2Hfr3lJkEkOSoaKg6BRdsQSA
	rXNHjhjkZ+pbe2kD7ID1hNFfXzZBRo3LenDrxQwnh3zFuflkGb71r1mjdkJWLg4jNYAKYs9V/sPy/
	nFDXEQupaq3T+BiJmf7n3N+hzT/J/Xir6oAUNDsbvTa1HThvylu6fid964Wx2yYX8Rd/8/SB6xUCR
	EK8YqoOQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLPS0-000000034dY-1lCD;
	Mon, 26 Oct 2026 18:29:40 +0000
Received: from mail-dl1-f98.google.com ([74.125.82.98])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLPRt-000000034Vr-1wP3
	for linux-phy@lists.infradead.org;
	Mon, 26 Oct 2026 18:29:35 +0000
Received: by mail-dl1-f98.google.com with SMTP id a92af1059eb24-185fd3a4ca3so2737881c88.0
        for <linux-phy@lists.infradead.org>; Mon, 26 Oct 2026 11:29:33 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793039372; x=1793644172;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=mvtMFeEgqCOciHeQyrJ9AYtTF4EED76l0h+Ctv+GHTw=;
        b=UZZ5UuqsabvQqVO7rBs6Adn7lhaG3w1xxYq205tbhZAJJ8+egp4Y83KEBfxtF0ioHd
         bFV+zDUVyyuDvmUynLPeE4ucXjR177P7gFDzr7jzaxtLGjZnMqIgohMfwtRnmltS3H5J
         O68AZAe1GXBcZoUZJr7yvc1dlCsmmGppn83Zm+8Ovx3njy72th7CDiCv4F3Rpz+yYAX4
         sRr1B96md5OnU9Zr4Ip131XL5igGXoLJ6tUW/wu2TQeeHt96c3WfanGHkuTMtja3C/u5
         WcQM2zF+45l3teOevEogOgRLTm3gT5Cn3TLEi/TnPsqB0zyz0sYTSFttQZXzqDlCI51k
         TtiQ==
X-Forwarded-Encrypted: i=1; AKwUvBxy4ENC3l7cUlfZbFA/KGq55X7KeKRqUx1F9mTVpiut2vp38KyzHOIG6SAJoC5CVP1R6KHWiD8CiEQ=@lists.infradead.org
X-Gm-Message-State: AFq9FYKlnGkSO8cyM8aetq2ldVv17CH1D9RdgaOEoISosJW+4sjRgA+2
	wi1leMHlZ5nm7nILa85uLKMW9fkRXkRedhJWovFiqenN5nT7ja9x6UT0ZE8Th8RWyDJ5PtC8Pzu
	vIHPrJsplL/LrI+AohC5jvVctXy4Osne+jPlYSRidEJaxnkk3/apfi+h1RUH0m7/q19W12o1JjY
	NzMDnncyBHSkd3xjKJq7ST8KDLrjWxruKR7cK7Eim+LC1ZPQnl71+UpdsYBtDynmjCCkF6YGZiz
	2zTWsc7Wusdr+WRxjExPxvPplSL
X-Gm-Gg: AYBFou1sZFOlggv6iAPFCkNid6W1bZPQzUXNI+zWmRqYViKXP0unkukX5O1toyxV5Qu
	whaJ0zLP/B2fgtQ8uVGLarxpE9zokpZ6wRt9vqYYapPwkKBsaxPzfPRaF7H5CrGc9woSpur5EwF
	ZfDUcqXRB1IBTHv6lei89FG4F9HvFVUIxKkzUrxicRD6eoUjcKXdefWD0/lufabyz9zOl5py8P9
	LDX9queLbwdCHUpj5UV0OOv7A58VBrMCsYafh/H7/tNAH2iE0KOIRwjQYwxdlMJfGmutME+YLG5
	yMk4SslC1uOSAmCzp6El7BHY3nI3BtldJ+QbzqhubNIspSsHTfrtn5EPq+Rrip1FLAdvddk/0WX
	GF2tFiOk6OQxxuAjnm06flri+JYRuxoKwBuLa+FAbf2Ddxiwv7QIPBiV1mLkotZufWPYMHNPB8E
	D25hxRTCJJ5KToIB08ElVjyf7v8/ocz7pta/wUhRt8z9s=
X-Received: by 2002:a05:7022:1213:b0:187:c940:21b9 with SMTP id a92af1059eb24-199368745e1mr9229121c88.30.1793039371847;
        Mon, 26 Oct 2026 11:29:31 -0700 (PDT)
Received: from smtp-us-east1-p01-i01-si01.dlp.protect.broadcom.com (address-144-49-247-120.dlp.protect.broadcom.com. [144.49.247.120])
        by smtp-relay.gmail.com with ESMTPS id a92af1059eb24-198a2a59770sm70707c88.17.2026.10.26.11.29.31
        for <linux-phy@lists.infradead.org>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 26 Oct 2026 11:29:31 -0700 (PDT)
X-Relaying-Domain: broadcom.com
X-CFilter-Loop: Reflected
Received: by mail-dy1-f197.google.com with SMTP id 5a478bee46e88-341eff9e381so9496535eec.1
        for <linux-phy@lists.infradead.org>; Mon, 26 Oct 2026 11:29:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google; t=1793039370; x=1793644170; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=mvtMFeEgqCOciHeQyrJ9AYtTF4EED76l0h+Ctv+GHTw=;
        b=T3FmclULnLSKA5LJiplL+VlFP984bObrp256hZQmhsksSKhHNwFu63PJviOS1eO/QJ
         JWim9pN0yjVQvP7KGf4Lo1ZSqy7EybRB6htm2UyTCNTQuvQER6CP/lA2eJEJy3iabT2X
         pTTodo/AEXoXbii30jxTlqPakpw36CgUgBIys=
X-Forwarded-Encrypted: i=1; AKwUvBwLnVCjh2NhN26Dm2JcsSaO/P5TICqxE6uoAWx1bqFXCl2skJ+af3Hc+RQAC41UTbnKy+OoX6mjZiM=@lists.infradead.org
X-Received: by 2002:a05:7301:1525:b0:369:a113:756f with SMTP id 5a478bee46e88-369e850d487mr10690519eec.34.1793039369696;
        Mon, 26 Oct 2026 11:29:29 -0700 (PDT)
X-Received: by 2002:a05:7301:1525:b0:369:a113:756f with SMTP id 5a478bee46e88-369e850d487mr10690462eec.34.1793039368795;
        Mon, 26 Oct 2026 11:29:28 -0700 (PDT)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-36a01fa4c58sm24657259eec.21.2026.10.26.11.29.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 26 Oct 2026 11:29:28 -0700 (PDT)
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
Subject: [PATCH v2 3/6] ata: ahci_brcm: Initialize the NSP interface clock and reset
Date: Mon, 26 Oct 2026 11:28:53 -0700
Message-ID: <20261026182856.3168686-4-florian.fainelli@broadcom.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20261026182856.3168686-1-florian.fainelli@broadcom.com>
References: <20261026182856.3168686-1-florian.fainelli@broadcom.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-DetectorID-Processed: b00c1d49-9d2e-4205-b15f-d015386d3d5e
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261026_112933_530756_B646CADB 
X-CRM114-Status: GOOD (  17.73  )
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
 drivers/ata/ahci_brcm.c | 34 ++++++++++++++++++++++++++++++++++
 1 file changed, 34 insertions(+)

diff --git a/drivers/ata/ahci_brcm.c b/drivers/ata/ahci_brcm.c
index 29be74fedcf0..2ed60806b671 100644
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
+	/* Enable the interface clock before taking the SATA core out of reset. */
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
@@ -369,6 +391,8 @@ static int __maybe_unused brcm_ahci_resume(struct device *dev)
 	struct brcm_ahci_priv *priv = hpriv->plat_data;
 	int ret = 0;
 
+	brcm_sata_init_idm(priv);
+
 	ret = reset_control_deassert(priv->rcdev_ahci);
 	if (ret)
 		return ret;
@@ -453,6 +477,14 @@ static int brcm_ahci_probe(struct platform_device *pdev)
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
@@ -493,6 +525,8 @@ static int brcm_ahci_probe(struct platform_device *pdev)
 	if (ret)
 		return ret;
 
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
