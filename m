Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7AFD4D10F56
	for <linux-phy@archiver.kernel.org>; Wed, 26 Nov 2025 14:01:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=mTPm/Iwjzhzs1I2Vz63BOGyDPE0X8xwbHQw7n2MD49w=; b=4ZzRq10om34deP
	2IQGQuC15sH/CxBQz+XRsfUxVetPh8z+6UugyHSUDBY09+QQMDYUJ/8KzCCG2Oxmxd5antEU1VyaT
	oXInVD/NB8+ZiTCw9Te6EvGUIE6dB6YfEbdbUkorHFq1zXnkaezFrmU0fmNInprvj7vfquHF/rFpj
	iLCh/5Q+Z0r8j+u98YKhUrk319jPCUJ1pJyU1vWCvpgWq7f/iN2Cd4vRGU28gS7zdx2H0KgdBW1Ew
	TGzBd7joXu4cA9arSVD8RxfkYXtT3CMcb8w28K1YInqicYyBj0eRchvWDeAXdE3WewX8uY78/LCky
	y2i/lAK9cE62y1w+iIqw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vOG5l-0000000F4Pw-3Sbp;
	Wed, 26 Nov 2025 14:01:59 +0000
Received: from mail-wm1-x332.google.com ([2a00:1450:4864:20::332])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vOG5i-0000000F4Ov-2zY0
	for linux-phy@lists.infradead.org;
	Wed, 26 Nov 2025 14:01:56 +0000
Received: by mail-wm1-x332.google.com with SMTP id 5b1f17b1804b1-47778b23f64so37581635e9.0
        for <linux-phy@lists.infradead.org>; Wed, 26 Nov 2025 06:01:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1764165713; x=1764770513; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=BWI068vPYLSXZ5RCwTG2CH0PZ4pNstxIHxCa8vD/TIk=;
        b=ciuK+u2y0WXtrMByA6jiqP9bg93pkXqyzgieEvEkgLqZgij9T0KX3c8mTU/HhdfqpK
         jAM+/LUV32AqncIXgXMpoLOIbM0W39r8GsrLfi3BFIwbNv6Vh8kvbdxKDyd0IZbrZKgC
         +x09t02MZyUHH5jYzBJ8olBETfZyds7MeN9LoGUNsDGGNq47NKRE4TsS/V+SaEhWa/B7
         27nG2SP8HEpkiA+vVvYXxvTJeVAfdk93xZsaVrA5Wd6H4vQslzi+tgqYz80DuGKD8uqw
         TX4UyJlDFQyliBbN7gdh2QLjSs7DMKt2JTkm694Hw8Rq0fVEMicLL4zue9047M1TIxtc
         17hg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764165713; x=1764770513;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=BWI068vPYLSXZ5RCwTG2CH0PZ4pNstxIHxCa8vD/TIk=;
        b=bfltfdfa2ZA54dXdO3K/zgc396ek5eXRCt8S0rpl/7XqDW3YyYDngyGXEFKQElaYIN
         5sJ0kF79NFrfKmzhD+9jTOGvFgp8t0I6efK3+ux2IMPSk4xNCbxG62zeKf3joizGO62o
         tahcAjnVRfJ0j89H8vlLk7NEuYFU2EQNGZRLnPR8TVG/eyeGzAqZSOPLo2QtvUFqdTss
         QBnfF3TTeYj61QRSTLU8RMQJjAf/bShpbmUp12DXCd1qrie9i8jXRR08sUAOj1UY3DOE
         4Ndh0Wzz3aG03yxZy2YaF36ItPUnIUoxPnAuVUvLVsAe98WaOJe+QypjmoAy11bWokeZ
         DCrw==
X-Forwarded-Encrypted: i=1; AJvYcCWQf8OkyYot5k3vgYKbIKW/OBZRUZWDChikhEIqoH9jLPOHDsbrWOYvnKMoLAt86QE4wzRN9DSZwNw=@lists.infradead.org
X-Gm-Message-State: AOJu0YyEMcpCXIhfasaz9AefhwqNXLtJj/sZai8aTjfkSW3Y8l0e++JV
	aTIxUsa167MnWAyfA1SU2258zyoI/xQ2Un9C9sN5s3NcEQOt8UFoha27
X-Gm-Gg: ASbGncsoN766KeuWV0t4lLuLDIq3NVLEjzrSQrljnxc7L/1CaYsUmVGhCwHq5q8Pfnp
	/Bt7KXOBuJZW39iigb0Y+nqlBbSmCEbwbMITTXbb8RnZXlbv2l95FeqX4dqIZ+nTZ5C86IsTQQq
	VKDNZEjAB2A3kUoJWbNr/BeZFPIwGKcbmZxCHfl724N/w3HoXn7TphwzDW+GHuzGGRN9oinLrfc
	7WDs0QAs6GeRY+6RIR3FI9trH+9j6+1hETalZ4zE5bIQIDCPxB3trAHTVdYeUrRezbya3MSaCKV
	cTdp/shXL/gGy1sQ58B6O8jpmy2tgvdBkTaIKbPe18yfb0KwjkL3o1Ohx8OrldqbZ576KEpQ9Lh
	gRXdQD4cy8kwNBYf0Rc8OUdtUtTNQDFrNMQUaGQnc85uIQOz7wZ+Vg6yVWxi3NH51pNl95z9VYV
	OnXWwNDq7cZ+ZAwOUI1osXhLNGlAUr0mjDqgqgxaRiCCTaDULweslfhM/duro5XbuZvQiVppJAW
	By6WiGZT8tpFWCBHm+1loE=
X-Google-Smtp-Source: AGHT+IFzSn+vJCoVouAYGcpvzgFcmoMn1o28RCuRXQI35098v7LfOQ48EpWiC41admPbMKt9BZI5yQ==
X-Received: by 2002:a05:600c:8b16:b0:475:dd8d:2f52 with SMTP id 5b1f17b1804b1-477c115dc85mr167384395e9.32.1764165712461;
        Wed, 26 Nov 2025 06:01:52 -0800 (PST)
Received: from franzs-nb.corp.toradex.com (248.201.173.83.static.wline.lns.sme.cust.swisscom.ch. [83.173.201.248])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4790add608bsm46720265e9.5.2025.11.26.06.01.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 26 Nov 2025 06:01:51 -0800 (PST)
From: Franz Schnyder <fra.schnyder@gmail.com>
To: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>
Cc: Franz Schnyder <franz.schnyder@toradex.com>,
	linux-phy@lists.infradead.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Francesco Dolcini <francesco.dolcini@toradex.com>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	stable@vger.kernel.org,
	Xu Yang <xu.yang_2@nxp.com>
Subject: [PATCH v2] phy: fsl-imx8mq-usb: fix typec orientation switch when built as module
Date: Wed, 26 Nov 2025 15:01:33 +0100
Message-ID: <20251126140136.1202241-1-fra.schnyder@gmail.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251126_060154_979864_E096368B 
X-CRM114-Status: GOOD (  10.23  )
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

From: Franz Schnyder <franz.schnyder@toradex.com>

Currently, the PHY only registers the typec orientation switch when it
is built in. If the typec driver is built as a module, the switch
registration is skipped due to the preprocessor condition, causing
orientation detection to fail.

With commit
45fe729be9a6 ("usb: typec: Stub out typec_switch APIs when CONFIG_TYPEC=n")
the preprocessor condition is not needed anymore and the orientation
switch is correctly registered for both built-in and module builds.

Fixes: b58f0f86fd61 ("phy: fsl-imx8mq-usb: add tca function driver for imx95")
Cc: stable@vger.kernel.org
Suggested-by: Xu Yang <xu.yang_2@nxp.com>
Signed-off-by: Franz Schnyder <franz.schnyder@toradex.com>
---
v2: Drop the preprocessor condition after a better suggestion.
    Reviewed-by Neil tag not added as patch is different
---
 drivers/phy/freescale/phy-fsl-imx8mq-usb.c | 14 --------------
 1 file changed, 14 deletions(-)

diff --git a/drivers/phy/freescale/phy-fsl-imx8mq-usb.c b/drivers/phy/freescale/phy-fsl-imx8mq-usb.c
index b94f242420fc..72e8aff38b92 100644
--- a/drivers/phy/freescale/phy-fsl-imx8mq-usb.c
+++ b/drivers/phy/freescale/phy-fsl-imx8mq-usb.c
@@ -124,8 +124,6 @@ struct imx8mq_usb_phy {
 static void tca_blk_orientation_set(struct tca_blk *tca,
 				enum typec_orientation orientation);
 
-#ifdef CONFIG_TYPEC
-
 static int tca_blk_typec_switch_set(struct typec_switch_dev *sw,
 				enum typec_orientation orientation)
 {
@@ -173,18 +171,6 @@ static void tca_blk_put_typec_switch(struct typec_switch_dev *sw)
 	typec_switch_unregister(sw);
 }
 
-#else
-
-static struct typec_switch_dev *tca_blk_get_typec_switch(struct platform_device *pdev,
-			struct imx8mq_usb_phy *imx_phy)
-{
-	return NULL;
-}
-
-static void tca_blk_put_typec_switch(struct typec_switch_dev *sw) {}
-
-#endif /* CONFIG_TYPEC */
-
 static void tca_blk_orientation_set(struct tca_blk *tca,
 				enum typec_orientation orientation)
 {
-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
