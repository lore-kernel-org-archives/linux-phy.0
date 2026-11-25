Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9E16D606A31E
	for <linux-phy@archiver.kernel.org>; Wed, 25 Nov 2026 04:37:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=dNOPsJCG;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=infradead.org header.i=@infradead.org header.a=rsa-sha256 header.s=desiato.20200630 header.b=L+o6GEvQ;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=XWVTBULq
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=Aj7yE8JgqenNwzeRyqmp5s0AX0W+Llbcx5DkdGYuI7s=; b=dNOPsJCGJzSpKFexqTeknpvSMJ
	+uql77mmK2MUWMPoK/Z0u7kLfvSfnkjwIrdyHzJO+nNXRPWx/rSvLgdLEmEqOJdGXGBz5OWreOEmK
	VGIAi9nJyLgksv5niz1oa9f/+SSizmMHPbKyCR6xd0QIima+TQTAyeGpXk6IK9msIxnrJkUfnFgzQ
	u/FbQwU+wVNgQmxMy7zHQxHVQvT77XYR/3AcIU7w83Kbx5gFoMqks1+vQrToeX0HKk5BGtO+HK1Oy
	ZGgDeXOlYcdjFYPaNpgvCjKTjym1Pu8s4SLROfrEVSKCSKQm3ThIIVmmHLCLcWG4fCfYKzGgOdO3x
	+Jk/B3bA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xW4lX-00000008P2x-1DFY;
	Wed, 25 Nov 2026 04:37:55 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xW4lO-00000008OuR-3NvC
	for linux-phy@bombadil.infradead.org;
	Wed, 25 Nov 2026 04:37:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=Th0U5TzJmX7EaDDFA+PHgDoYo8RCe0k6TY8cW8gRTLA=; b=L+o6GEvQNDvHEkXxgiVDEEt9rV
	OQnNklJuBpBM4MsFDtsMWU27oDeEWc+Ma+h99fln0hQSlbDI2G1BKYsntl/Eg+ofAw18zr07WRJOY
	TbiBokuHPf3eQEus4ASoeNMjYGnsCdeiBZGSVkPelrC6AmT8b+Zgl27hHAzsK38xa335aUiDJW4Z8
	QrBXd0DUh2pfyeMNnQ8q16Ia3LuT0D7vcsHrDKnTmP939pBKBt4FWC/woqjCjjb+YKurRHs0oH05D
	6ArmoHLLnC4xqmKfx6AeMOZJcTL0gcsNmBQcceKjJx8pD/sw2a7KGz5OknzQTzudSeWXxffCXYK2O
	HBZbgSIw==;
Received: from mail-pl1-x634.google.com ([2607:f8b0:4864:20::634])
	by desiato.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xW4lM-00000004pyi-06JV
	for linux-phy@lists.infradead.org;
	Wed, 25 Nov 2026 04:37:45 +0000
Received: by mail-pl1-x634.google.com with SMTP id d9443c01a7336-2f06ff94acfso21006235ad.0
        for <linux-phy@lists.infradead.org>; Tue, 24 Nov 2026 20:37:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1795581462; x=1796186262; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=Th0U5TzJmX7EaDDFA+PHgDoYo8RCe0k6TY8cW8gRTLA=;
        b=XWVTBULqM4AF6R0ogVwI13OmNSkUT4LCG6RH8coXAk6sPEjvG/G/atI/laKZ+xs5iq
         TrONBStbKJ6Pd0zq0yVNM81RUwcTSqg5Tn10jNt8523WnUxxsEkRhcq+k2GdNUR1v9vC
         BTf1qCjqIt1RprNSzDoMiwQQ2m/WJd9X3crXDwDpzU7Mki/n6+5MI/8RnHZY9aK6jrlZ
         YFtctV62ahEvziQ8ugKp2lh59J24TVAgc9pjyLtV0QWZv3zmOYfw784shsw9fZJqB9dF
         CgP6h0+1SqHZeDVgUatKtlgz/gaHCYJ4Y34qIhvkRzhW++9adePlmuTBmledV9uxttkF
         IjEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1795581462; x=1796186262;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=Th0U5TzJmX7EaDDFA+PHgDoYo8RCe0k6TY8cW8gRTLA=;
        b=kICs6kaV1wNy3nDDZnrEy9GhQTQ0gSNgAV/z7meJEr9JILmxmMjuiVo3N8jED2S8JW
         9g40rjNKT8Xhf0frCuV/Z/NzUvdAz0kLDyFrG9N+DXOdtYJm0J3ttCvoGNnG54PPjj3l
         ZUahy/ycVc/taTc9vI5FYqjxjY5VFObWk0GtD0zFAJYz7uB+YcFmpVYNkNDV2aNi6ovP
         ax9YgZ5WilTzxuW+4OmFQkgpGE5q2z1V+WeaeS3UPu+NnGQwg6EeMlil8i0OeP+YW+Me
         PnTobaOJwTnliejKSXtu3y7tr561tJt793b0MporRdVq8n0RRqvkb2bUssKqVMtMZ0Bd
         Trgw==
X-Forwarded-Encrypted: i=1; AL+hErH166PgDrhyNBP7/w7XNBFBGplI+tO/6VIAad5dS6itmykpm8SMLypieIi3sSUbdKnbbvrJPfU1L4A=@lists.infradead.org
X-Gm-Message-State: APuU4Z/yRhNA/ZzaWyUca4bCJFHD8drSHdp4+XpvtdFC8ApcoUIn6Gtm
	kmfctNg7eRzUiu/S+F1Ht7wLwWJZzGBAo5YIMuO4zLuiwE7hYYIMd7yb
X-Gm-Gg: AZFdTZeAVlDXjafqNIcstw3L+2U3sX+ijfC3h/lbcDLUWLxcoq2/NepZTIjHW8S+jkX
	2C0DSs+4xTcJ6R74TgjM9emcxdjjwgN20R+C7Rs6Dn8Dc4Dd4IKcXxbE49n7OdeqwvlbAukLACj
	56VNrpTUuPXiS22yCDnuE5CY/4kDeN9JthMGD2Q6WYPCY6bpGHQT3gE7+Pbpoqj7ytGfib4b3Dc
	xxl3zaNR+JSetIj1rmiKX/VQI51OL15lhHV4Ss0GP/xT9PZAKvprFZ9zbmuAmRU8LeA4PG8f/TI
	MT2a82piuVu9BGJ4lZF7VMG4GTwtO9AnmMkxQ8QNullYzGfpCxJFbmhuemF1JAyUfEhRIh68av9
	NRp+bl4sOG1bx6yAWaKZ92Hyk+aUGcicXRCJGn8cJIVhjnWD4N0XkSVIPVbB5AxGDhaeUF7blUG
	ClsLGorqD/D45PcgOZDVa5o5K/irkvMc3E3M6Q8ANp0zLP+J9jKHN0pT6KcFkbZJk2iJSbspcoI
	+PgAxIEtCU6EXyuM72MZvI3R3Dd658/nYtPdSN2AjwKTMA7p/6nW59XaECCEzNVselj7k94+KaN
	uRF4h8iOn2KbP+6VtU57FBcfxmRD2DezuaL6wOwfuJHvkHnp
X-Received: by 2002:a17:903:294f:b0:2ed:630:40ad with SMTP id d9443c01a7336-2f03f11826cmr93907705ad.19.1795581461579;
        Tue, 24 Nov 2026 20:37:41 -0800 (PST)
Received: from localhost ([2001:19f0:8000:4ce8:5400:7ff:fe0e:e6b2])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2f03f0c2ad2sm78350235ad.16.2026.11.24.20.37.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Nov 2026 20:37:41 -0800 (PST)
From: Inochi Amaoto <inochiama@gmail.com>
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
	Jonathan Corbet <corbet@lwn.net>,
	Shuah Khan <skhan@linuxfoundation.org>,
	Randy Dunlap <rdunlap@infradead.org>,
	Damien Le Moal <dlemoal@kernel.org>,
	Niklas Cassel <cassel@kernel.org>,
	Frank Li <Frank.Li@nxp.com>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	Aksh Garg <a-garg7@ti.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	=?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Inochi Amaoto <inochiama@gmail.com>,
	Rhys Tumelty <rhys@tumelty.co.uk>,
	Manikandan K Pillai <mpillai@cadence.com>,
	"vladimir.oltean@nxp.com" <vladimir.oltean@nxp.com>,
	Qiang Yu <qiang.yu@oss.qualcomm.com>,
	Hans Zhang <18255117159@163.com>,
	Yao Zi <me@ziyao.cc>
Cc: linux-doc@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-ide@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	linux-pci@vger.kernel.org,
	linux-phy@lists.infradead.org,
	Yixun Lan <dlan@gentoo.org>,
	Longbin Li <looong.bin@gmail.com>
Subject: [PATCH v5 8/8] ata: ahci_imx: Use bulk PHY APIs for calibration PHYs
Date: Wed, 25 Nov 2026 12:36:39 +0800
Message-ID: <20261125043639.249525-9-inochiama@gmail.com>
X-Mailer: git-send-email 2.56.1
In-Reply-To: <20261125043639.249525-1-inochiama@gmail.com>
References: <20261125043639.249525-1-inochiama@gmail.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261125_043744_067232_E1E36F9F 
X-CRM114-Status: GOOD (  16.44  )
X-Spam-Score: -0.2 (/)
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
X-Spam-Status: No, score=-13.8 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,
	FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

The i.MX8QM SATA PHY relies on the first two HSIO lanes for shared
impedance calibration. Store these calibration PHYs in a bulk array
and acquire them by name with devm_phy_bulk_get().

Initialize both calibration PHYs before powering them on in lane order,
then keep the SATA PHY initialization, mode selection and power-on
separate. Use the bulk helpers to release the calibration PHYs after
SATA startup and to unwind failures without repeating power-off after
a failed bulk power-on.

Signed-off-by: Inochi Amaoto <inochiama@gmail.com>
---
 drivers/ata/ahci_imx.c | 57 ++++++++++++++++--------------------------
 1 file changed, 21 insertions(+), 36 deletions(-)

diff --git a/drivers/ata/ahci_imx.c b/drivers/ata/ahci_imx.c
index 6aaa18e29abc..18faa033e44f 100644
--- a/drivers/ata/ahci_imx.c
+++ b/drivers/ata/ahci_imx.c
@@ -25,6 +25,8 @@
 
 #define DRV_NAME "ahci-imx"
 
+#define NUM_CALIPHY		2
+
 enum {
 	/* Timer 1-ms Register */
 	IMX_TIMER1MS				= 0x00e0,
@@ -66,8 +68,7 @@ struct imx_ahci_priv {
 	struct clk *ahb_clk;
 	struct regmap *gpr;
 	struct phy *sata_phy;
-	struct phy *cali_phy0;
-	struct phy *cali_phy1;
+	struct phy_bulk_data cali_phys[NUM_CALIPHY];
 	bool no_device;
 	bool first_time;
 	u32 phy_params;
@@ -428,30 +429,20 @@ static int imx8_sata_enable(struct ahci_host_priv *hpriv)
 	 * Initialize the first two lane PHYs here, although only the
 	 * third lane PHY is used by SATA.
 	 */
-	ret = phy_init(imxpriv->cali_phy0);
+	ret = phy_bulk_init(NUM_CALIPHY, imxpriv->cali_phys);
 	if (ret) {
 		dev_err(dev, "cali PHY init failed\n");
 		return ret;
 	}
-	ret = phy_power_on(imxpriv->cali_phy0);
+	ret = phy_bulk_power_on(NUM_CALIPHY, imxpriv->cali_phys);
 	if (ret) {
 		dev_err(dev, "cali PHY power on failed\n");
-		goto err_cali_phy0_exit;
-	}
-	ret = phy_init(imxpriv->cali_phy1);
-	if (ret) {
-		dev_err(dev, "cali PHY1 init failed\n");
-		goto err_cali_phy0_off;
-	}
-	ret = phy_power_on(imxpriv->cali_phy1);
-	if (ret) {
-		dev_err(dev, "cali PHY1 power on failed\n");
-		goto err_cali_phy1_exit;
+		goto err_cali_phy_exit;
 	}
 	ret = phy_init(imxpriv->sata_phy);
 	if (ret) {
 		dev_err(dev, "sata PHY init failed\n");
-		goto err_cali_phy1_off;
+		goto err_cali_phy_off;
 	}
 	ret = phy_set_mode(imxpriv->sata_phy, PHY_MODE_SATA);
 	if (ret) {
@@ -465,10 +456,8 @@ static int imx8_sata_enable(struct ahci_host_priv *hpriv)
 	}
 
 	/* The cali_phy# can be turned off after SATA PHY is initialized. */
-	phy_power_off(imxpriv->cali_phy1);
-	phy_exit(imxpriv->cali_phy1);
-	phy_power_off(imxpriv->cali_phy0);
-	phy_exit(imxpriv->cali_phy0);
+	phy_bulk_power_off(NUM_CALIPHY, imxpriv->cali_phys);
+	phy_bulk_exit(NUM_CALIPHY, imxpriv->cali_phys);
 
 	/* RxWaterMark setting */
 	val = readl(hpriv->mmio + IMX8QM_SATA_AHCI_PTC);
@@ -480,14 +469,10 @@ static int imx8_sata_enable(struct ahci_host_priv *hpriv)
 
 err_sata_phy_exit:
 	phy_exit(imxpriv->sata_phy);
-err_cali_phy1_off:
-	phy_power_off(imxpriv->cali_phy1);
-err_cali_phy1_exit:
-	phy_exit(imxpriv->cali_phy1);
-err_cali_phy0_off:
-	phy_power_off(imxpriv->cali_phy0);
-err_cali_phy0_exit:
-	phy_exit(imxpriv->cali_phy0);
+err_cali_phy_off:
+	phy_bulk_power_off(NUM_CALIPHY, imxpriv->cali_phys);
+err_cali_phy_exit:
+	phy_bulk_exit(NUM_CALIPHY, imxpriv->cali_phys);
 
 	return ret;
 }
@@ -839,19 +824,19 @@ static const struct scsi_host_template ahci_platform_sht = {
 
 static int imx8_sata_probe(struct device *dev, struct imx_ahci_priv *imxpriv)
 {
+	int ret;
+
 	imxpriv->sata_phy = devm_phy_get(dev, "sata-phy");
 	if (IS_ERR(imxpriv->sata_phy))
 		return dev_err_probe(dev, PTR_ERR(imxpriv->sata_phy),
 				     "Failed to get sata_phy\n");
 
-	imxpriv->cali_phy0 = devm_phy_get(dev, "cali-phy0");
-	if (IS_ERR(imxpriv->cali_phy0))
-		return dev_err_probe(dev, PTR_ERR(imxpriv->cali_phy0),
-				     "Failed to get cali_phy0\n");
-	imxpriv->cali_phy1 = devm_phy_get(dev, "cali-phy1");
-	if (IS_ERR(imxpriv->cali_phy1))
-		return dev_err_probe(dev, PTR_ERR(imxpriv->cali_phy1),
-				     "Failed to get cali_phy1\n");
+	imxpriv->cali_phys[0].id = "cali-phy0";
+	imxpriv->cali_phys[1].id = "cali-phy1";
+
+	ret = devm_phy_bulk_get(dev, NUM_CALIPHY, imxpriv->cali_phys);
+	if (ret)
+		return dev_err_probe(dev, ret, "Failed to get cali_phy\n");
 	return 0;
 }
 
-- 
2.56.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
