Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 155A0606A336
	for <linux-phy@archiver.kernel.org>; Mon,  2 Nov 2026 10:49:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=IQztuQJQ;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=f+0ouoeh
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Unsubscribe-Post:List-Owner;
	bh=MG26rOwLQeNCeWAP/KZe/sOXBGPqV2sJLInzydHemUg=; b=IQztuQJQ2wf9Krs8ZjBYVeokW7
	Dxx7zS5TFoUQGVFgL3KWoMbEg2uEEohIIXl1S7aBRLLUcdldQxPmBBDxbr56Odslp5+l/sGdsgsOF
	nbp8LA6tuYCW+Wn+U76jEr4Q285ZlNEnizV8fmtBwnQ1s4Wm6LvA7hwcUGh7jErrZmkeBlzZPybsO
	ieL5Yuxk2bizA1q2NunmWru81TqZsbLCulTHMmDViDCcA4/t0p38OCDJLLLL/XRa63hBnIl29nKnn
	ZH2ow4bEh/7atY1M4xAbOVk5b38odyZSqT1T7HlwHUVwrxOBDkq0t4Hq1dwNh8ndWNFv2MSxQhVJ8
	fAhgfrGw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xNpbL-0000000GDLc-3Mvc;
	Mon, 02 Nov 2026 10:49:19 +0000
Received: from mail-wr1-x434.google.com ([2a00:1450:4864:20::434])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xNpbJ-0000000GDK1-1ChM
	for linux-phy@lists.infradead.org;
	Mon, 02 Nov 2026 10:49:18 +0000
Received: by mail-wr1-x434.google.com with SMTP id ffacd0b85a97d-48e0d885929so2321007f8f.3
        for <linux-phy@lists.infradead.org>; Mon, 02 Nov 2026 02:49:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1793616555; x=1794221355; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=0clmgW6W8K3zvBAdCoPv8qr9pD2NFE9Kzq9ZUKQvStg=;
        b=f+0ouoehOwa+ZeYOGkLG8Pk9GDsiT/vdVbAuAlxl4kcC6XHDhVeMyPjk40IEnzDwL7
         wrNR/+5e7fTc9U/TRDisKl7bxSll+6g9AnLucsxm2Aw5miX0ncKU23DeHiGZMSoypawh
         bopbsBHsqeXmE6cNhoK97RCf4ytRJ80f6EW6C0fNVBHso2MipYUWGfurEx/ol0mx30bL
         md7m6NXl2C4Q/Fcmd/ci8kzgcsQC+Ture2gNPWqE6fLK8jD06EvpWJdzTr3mSFKlOcks
         IYamABaLEXYXt/T1azOIEL65Zoiwtb1cCWtHVGrvOTLref9rvnq70OC3uOEa7PsBc4lj
         0Q7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793616555; x=1794221355;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=0clmgW6W8K3zvBAdCoPv8qr9pD2NFE9Kzq9ZUKQvStg=;
        b=hf9UTTmKRGzUEdWSdG9OPjrEOaPTOAbZ33/emjpk56l0SH3ukx280c/tIJVybMfBCD
         seOBj3dul1mcRjtu3HUk3ScXMXxqeXHgPgF0qbXhgyr6MUGlkKRiXB16kueJIF2vwjCi
         NY+jegeY8Al94BLucMN0m/WkDyVBTk4X0Zky77BFeFPEqp+KUEz2o4cBwylwHVsWGGdi
         qMeAfEcXOcD3Eg5kr389TouzEtaP2Ro36VOurWegaHNNNbSPTUlebi9aP59ku1olat1m
         sPBoSnl3MIk/D0hzKbsmR4VqibnaZCGDz72P9xJZKeiY730qtlss7HmUf/90dW4TCxab
         Fo7g==
X-Forwarded-Encrypted: i=1; AKwUvBw/ZhGy3vMawZSOgRweCEv9ZioT2p7iFhnwDwy3cPjN4q3clRYu4fQmIqqTFySHwt+/K72pSyP5BGE=@lists.infradead.org
X-Gm-Message-State: AFq9FYIll2DvYgrUPMsAE6e5ervbjjOjABtMgFYs5iFGMsbFNSbSZj2y
	mAiqwvKV/PCaiVqQRS8Q2GpuGt2+ZkfctdV9eHG62LqOz9sJWskwTJ2d
X-Gm-Gg: AYBFou3rD8rBDO5vWXuM+fT5+mXbZsvLHmFiy/Mcmp81j86t4WpR9o6GdLSPvJl0P9p
	sGzEmpSgXD/hAU8WCtSmbTRqQ2WVb4J55NvxbfuVAD8TbKX7tSHe+CmhH9hBV5zMBMqcCZlk6Gk
	oaGfqszGXu8DgOEn0uK+HkB20jHLLzeCJ0X/N8BZDTxgWWg9ZLQh/f4BGzwUT2WiHYUdcIjqE4a
	kOdIDNueD5Lw8Ep2bRErftH7tU42N1HKjzCmKX0mO5sCWdsBIeG6lZLdkphBBDCvLXA3LMCVOxF
	Sw1tivXyLCsOj5yQdDAHaCs8bsmIMlWk5eG+jxfHFDorcytTjb6Ry7msMN1Eb5/TzW8oXpJUDu+
	7XJfxHKo8wUDmKW3HDQJQv8xh2G2krZhd84bEzAlMNXWzh7BrH7JzmeWxsyiIuTXbR50h4GCyTR
	/SC/6fwKDkjJg33BJXaauSI3sxfejc6shVlvhU1AdI1vyK+aU/4uKPmjdFibKi4nVBBiMhWoDh4
	/3edBYYk5cLOxZsajAGvnV9GCRiGkCyo+MhbvPIdjlWlPZSlONaB0qUvjF27gqmT1/g2pP6AIh5
	fAP5SOciwYcUbNMyb8BPz1+FuGYzpCIdFHTnil5z5AubEjILnqi1NxkFsPfXYlLVCv7XGtYkGhb
	ZDB9/rh3V/BJpFONHcOicdmQ3N8BC+qkpu5H19A==
X-Received: by 2002:a05:600c:8183:b0:49f:fdca:c361 with SMTP id 5b1f17b1804b1-4ac180f2ba7mr209406045e9.12.1793616554603;
        Mon, 02 Nov 2026 02:49:14 -0800 (PST)
Received: from iku.lan ([2a00:23c8:254f:fd01:2980:4c44:a4da:31ff])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4abe7706516sm180553815e9.0.2026.11.02.02.49.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Nov 2026 02:49:14 -0800 (PST)
From: Prabhakar <prabhakar.csengg@gmail.com>
X-Google-Original-From: Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
To: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
	Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>
Cc: linux-renesas-soc@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Prabhakar <prabhakar.csengg+renesas@gmail.com>,
	Biju Das <biju.das.jz@bp.renesas.com>,
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>,
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>,
	Tommaso Merciai <tommaso.merciai.xr@bp.renesas.com>,
	Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>
Subject: [PATCH v3] phy: renesas: rcar-gen3-usb2: Keep OTG VBUS disabled until role is known
Date: Mon,  2 Nov 2026 10:49:07 +0000
Message-ID: <20261102104907.16007-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
X-Mailer: git-send-email 2.56.0
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261102_024917_360899_BFD3AF85 
X-CRM114-Status: GOOD (  22.55  )
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
X-Spam-Status: No, score=-13.8 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,
	FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>

On OTG channels of SoCs without ADP control, the VBUS regulator is
acquired with devm_regulator_get_exclusive() and its output is switched
by rcar_gen3_enable_vbus_ctrl() using regulator_hardware_enable() once
the port role is known.

The helper acquiring the regulator has the following problems:

- The internal regulator is unconditionally enabled at probe, so VBUS
  is driven before the port role is known. If the port is connected to
  an external host this can back-power it.

- regulator_get_exclusive() hands the consumer an enable reference if
  the regulator is already enabled, for example by the bootloader. The
  unconditional regulator_enable() then takes a second reference while
  only one is released on unbind, leaving the regulator enabled and
  triggering the WARN_ON() in _regulator_put().

Fix this by making sure the driver always holds exactly one reference
to the regulator: reuse the reference handed over by the exclusive get
if the regulator is already enabled, and call regulator_enable()
otherwise. Register the disable action in both cases, then turn off the
physical VBUS output with regulator_hardware_enable() until the port
role is established. Enabling a disabled regulator to take the
reference may briefly drive VBUS during probe; this cannot be avoided
with the regulator API.

Rename the regulator helper to reflect that it acquires the regulator
without directly enabling its physical VBUS output.

Fixes: b6d7dd157763 ("phy: renesas: rcar-gen3-usb2: Add regulator for OTG VBUS control")
Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Tested-by: Tommaso Merciai <tommaso.merciai.xr@bp.renesas.com>
Reviewed-by: Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>
---
v2->v3:
- Added Fixes tag
- Added Reviewed-by and Tested-by tags

v1->v2:
- regulator_enable() is only called if the regulator is not already enabled,
  ensuring exactly one reference is held.
- Dropped enable parameter from the function
- Renamed function rcar_gen3_phy_usb2_vbus_regulator_get_exclusive_enable()
  to rcar_gen3_phy_usb2_vbus_regulator_get_exclusive()
- Updated commit message
---
 drivers/phy/renesas/phy-rcar-gen3-usb2.c | 35 +++++++++++++++++-------
 1 file changed, 25 insertions(+), 10 deletions(-)

diff --git a/drivers/phy/renesas/phy-rcar-gen3-usb2.c b/drivers/phy/renesas/phy-rcar-gen3-usb2.c
index b5ba751805aa..3481505dea2e 100644
--- a/drivers/phy/renesas/phy-rcar-gen3-usb2.c
+++ b/drivers/phy/renesas/phy-rcar-gen3-usb2.c
@@ -1114,8 +1114,7 @@ static void rcar_gen3_phy_usb2_vbus_disable_action(void *data)
 	regulator_disable(vbus);
 }
 
-static int rcar_gen3_phy_usb2_vbus_regulator_get_exclusive_enable(struct rcar_gen3_chan *channel,
-								  bool enable)
+static int rcar_gen3_phy_usb2_vbus_regulator_get_exclusive(struct rcar_gen3_chan *channel)
 {
 	struct device *dev = channel->dev;
 	int ret;
@@ -1133,17 +1132,35 @@ static int rcar_gen3_phy_usb2_vbus_regulator_get_exclusive_enable(struct rcar_ge
 		return 0;
 	}
 
-	if (enable) {
+	ret = regulator_is_enabled(channel->vbus);
+	if (ret < 0)
+		return ret;
+
+	if (!ret) {
 		ret = regulator_enable(channel->vbus);
 		if (ret)
 			return ret;
 	}
 
-	if (regulator_is_enabled(channel->vbus))
-		return devm_add_action_or_reset(dev, rcar_gen3_phy_usb2_vbus_disable_action,
-						channel->vbus);
+	/*
+	 * An exclusive get of an enabled regulator already holds a reference, so
+	 * add a cleanup action to disable it when the device is released.
+	 */
+	ret = devm_add_action_or_reset(dev, rcar_gen3_phy_usb2_vbus_disable_action,
+				       channel->vbus);
+	if (ret)
+		return ret;
 
-	return 0;
+	/*
+	 * The regulator is enabled only so that the regulator core holds a
+	 * reference to it. Do not drive VBUS until the port's role is known;
+	 * rcar_gen3_enable_vbus_ctrl() switches it from then on.
+	 *
+	 * The VBUS regulator used on these SoCs implement the .enable/.disable
+	 * ops, so regulator_hardware_enable() cannot fail with -EOPNOTSUPP here
+	 * and no special handling for it is needed.
+	 */
+	return regulator_hardware_enable(channel->vbus, false);
 }
 
 static int rcar_gen3_phy_usb2_vbus_regulator_register(struct rcar_gen3_chan *channel)
@@ -1151,7 +1168,6 @@ static int rcar_gen3_phy_usb2_vbus_regulator_register(struct rcar_gen3_chan *cha
 	struct device *dev = channel->dev;
 	struct regulator_config rcfg = { .dev = dev, };
 	struct regulator_dev *rdev;
-	bool enable = false;
 
 	rcfg.of_node = of_get_available_child_by_name(dev->of_node,
 						      "vbus-regulator");
@@ -1165,10 +1181,9 @@ static int rcar_gen3_phy_usb2_vbus_regulator_register(struct rcar_gen3_chan *cha
 					     "Failed to create vbus-regulator\n");
 
 		channel->otg_internal_reg = true;
-		enable = true;
 	}
 
-	return rcar_gen3_phy_usb2_vbus_regulator_get_exclusive_enable(channel, enable);
+	return rcar_gen3_phy_usb2_vbus_regulator_get_exclusive(channel);
 }
 
 static int rcar_gen3_phy_usb2_probe(struct platform_device *pdev)
-- 
2.56.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
