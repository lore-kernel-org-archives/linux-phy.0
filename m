Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9EC33C88E53
	for <linux-phy@archiver.kernel.org>; Sun, 13 Sep 2026 01:30:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=eR4fQdwJe6puplyb9xQAHOdns2uE/9mo57HTcMDauew=; b=Di0jraz7CC3DHB
	lqPTI2isL5ssIChpcoBz8Hq3Kjtjnx7hUfpxNHVR4IIqJLn6VgqzRx1cbZEDqNSOE3M3lfkZFeD0r
	4ZyjzSPTWQwRKUwq4vO2V6hEeQRN6SkmMDfTMcB8ecK/aQLUdCwiJVeLdJSQNRE57rxIRndASK9ZY
	+Xhcb0o/oVSMS3HKlMNGXGMV+g64RuPiVuYGsKNbAbeLkwqS6UadkrJSQqTDWcqn952UE9xAQKxlR
	tOcDeaHwN9vGYA4yGHLFZB1fErrWiVrorUZwLloM8XnyR49NpGCS3A5ryjdW5wE4QP9FkmYk3S8Z4
	EHEfF7cNX2s28x+8fJRQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x5Z2p-00000001Ixu-1ng9;
	Sun, 13 Sep 2026 01:30:11 +0000
Received: from mail-qv1-xf29.google.com ([2607:f8b0:4864:20::f29])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x5Z2n-00000001IxM-0orV
	for linux-phy@lists.infradead.org;
	Sun, 13 Sep 2026 01:30:10 +0000
Received: by mail-qv1-xf29.google.com with SMTP id 6a1803df08f44-91053c27a91so22209626d6.2
        for <linux-phy@lists.infradead.org>; Sat, 12 Sep 2026 18:30:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1789263008; x=1789867808; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=ZIz8W3XWQuQCmfLKcI01vhlNgiPsUi971VDJOXuNLRo=;
        b=Ut9gPF/hMo5HQ06YeYuosYoVsJW3Qnj0r9fEqsdV1KrpV1f3BokucUX03gHy4Yqyfc
         JQORWjZmj5ij/lKnoRgcBe3mQVtaTCE+kdDJHn5OWZ+yv3sa4QMH8YgFlzEmzwxGe/eD
         0NwbnZd6TLBtXB8xwrtWP4QOOLoZacreOqrn6OIQ4Y/tXYwZrXgqALOB1Ufcspo99dMJ
         Q7tCtELyaHG2dTEc06X845FspJZX+lJoRIq0uM3cBeClogoPbNYZBmG7dYXk4tgov7F7
         YQ8OrRJfWYnpLrl5D5+7LlKm/bJtzabiuOLgy+EkkGOJmSzzZY9tqhlzIi5iu0jebDFy
         Ljhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1789263008; x=1789867808;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=ZIz8W3XWQuQCmfLKcI01vhlNgiPsUi971VDJOXuNLRo=;
        b=c9P5gZc/i9lmNKT/XApiCqikkoIZzwjYMTUpxEUEKI4hbTXOU/lzypldBCmW8+wEB7
         Odipr58/tzMhbVbHug8NYhrBZE1tm0u70olC1mywP8XTwH6Rmq4Do5g0NHe7UCLGs1ny
         Qu2krgKb8+znvwa66/V6ZH85nlZnFZ5IuDgcf/mJ91+gXOkjTs7+eNLikYMxD0g3Txb3
         GmTij/GWF8RHi4HS4oVp/PZYthGmiMuU3vj/rMd+hvJyLOm7EWhlV5YIVK/q7VMLgavi
         UTzUGZFFdo6TeouxPPkdiBdBRP5+npm2a6HjNiQ1LZ7ZjCC07fjYH+V2QC/rP1L3qrpW
         08lQ==
X-Forwarded-Encrypted: i=1; AKwUvBz9yRs4TWHQQjvl2u8gA/Y/hLMaK7m6bFIqhk39i51dvRfwbYyshFxp/PD2tTPCG/8+OPBX+NP/1Tk=@lists.infradead.org
X-Gm-Message-State: AFuF++lYVh4vR6+c6/BWL+Fdyb1ebq3oWFrFIPEcijyOPv8LAIEZ8gZE
	/dnBeCPyTuP/IRUQouvyAjlZtzDNMrs3xUpOhOXi/XhZOCopCAhze+A=
X-Gm-Gg: AYBFou0U+Q1H5+XVb152jPCv0FfvpIk3VNVvdQB+S2jSFRUxp0eZiuOhVUGFRV7Y+SE
	3KyySKb2YfvkuVFvEUo6uOLHnUamf+RPii7oIphsts6n9kJGB0E7b7pwWEjut5D+2e76WBG6IO+
	B9a0FCPVhg2bMBRWbbveFJqlv8fGnzS0K5oiUV/ucdgMzWTQWu3NzQmUyfLqzirH38TwHnukXB5
	/dtbU5O01oX9XtwvC2v7GMrqNnuArgBvDwRADIZt0p1NcsPMWxz6FJ8IXB89wMhcmO0t4FSaxxm
	tEkIQ/sY9q1S9g2EMZ41jFxTFzQRTotjOK9CnH/+oWQrnspishUzs2uN5e7AP1zDqL439HC06Uf
	HsaaKbWAZpDOCXSXwyi6f1HItUEukSOQ2Se4UOYmCsl8T9dPo+PGddBxpKU16HggerodnJ6BjF7
	9gFAi6MevyyopCUJKdlhy3rZlaACrtOaxz28n5zTGAJ1ZQKDHV6Kj7XhbnmocG52kU7OHR6Grgh
	wdqOepHshIkWFLcUbMxRXqyLtigotuV2AAtkoYT2CnTbnAKjygth8MiTb3uXcYWuQRn6tRMhWmi
	HVgdfVYK4+qFcN2dr3nDZ3kc+VBVZFsvwA==
X-Received: by 2002:a05:6214:5d8d:b0:910:345c:b7e5 with SMTP id 6a1803df08f44-91212116f7fmr164517656d6.36.1789263007716;
        Sat, 12 Sep 2026 18:30:07 -0700 (PDT)
Received: from localhost.localdomain ([104.39.73.78])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-9120f49444bsm58549556d6.29.2026.09.12.18.30.06
        (version=TLS1_3 cipher=TLS_CHACHA20_POLY1305_SHA256 bits=256/256);
        Sat, 12 Sep 2026 18:30:06 -0700 (PDT)
From: Myeonghun Pak <mhun512@gmail.com>
To: Justin Chen <justin.chen@broadcom.com>,
	Al Cooper <alcooperx@gmail.com>,
	Vinod Koul <vkoul@kernel.org>
Cc: Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Myeonghun Pak <mhun512@gmail.com>,
	Ijae Kim <ae878000@gmail.com>
Subject: [PATCH] phy: broadcom: brcm-usb: unwind clocks on probe failure
Date: Sat, 12 Sep 2026 21:29:56 -0400
Message-ID: <20260913012956.16443-1-mhun512@gmail.com>
X-Mailer: git-send-email 2.47.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260912_183009_253276_399AAD17 
X-CRM114-Status: GOOD (  15.47  )
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

brcm_usb_phy_dvr_init() enables the optional USB2 and USB3 clocks before
creating all PHYs and acquiring the remaining probe resources.  Several
later failures return without disabling clocks that were already enabled,
and deferred probe retries can keep increasing their enable counts.

Track each successful clock enable and unwind only those clocks, in reverse
order, when initialization fails.  Keep the existing successful probe path
unchanged.  This is limited to the BCM4908 and Broadcom STB USB PHY driver.

This issue was identified during our ongoing static-analysis research while
reviewing kernel code.

Fixes: 49859e55e364 ("phy: usb: phy-brcm-usb: Add Broadcom STB USB phy driver")
Assisted-by: OpenAI:GPT-5.6
Co-developed-by: Ijae Kim <ae878000@gmail.com>
Signed-off-by: Ijae Kim <ae878000@gmail.com>
Signed-off-by: Myeonghun Pak <mhun512@gmail.com>
---
 drivers/phy/broadcom/phy-brcm-usb.c | 48 +++++++++++++++++++++--------
 1 file changed, 35 insertions(+), 13 deletions(-)

diff --git a/drivers/phy/broadcom/phy-brcm-usb.c b/drivers/phy/broadcom/phy-brcm-usb.c
index 59d756a10..273f7b586 100644
--- a/drivers/phy/broadcom/phy-brcm-usb.c
+++ b/drivers/phy/broadcom/phy-brcm-usb.c
@@ -404,6 +404,8 @@ static int brcm_usb_phy_dvr_init(struct platform_device *pdev,
 {
 	struct device *dev = &pdev->dev;
 	struct phy *gphy = NULL;
+	bool usb_20_clk_enabled = false;
+	bool usb_30_clk_enabled = false;
 	int err;
 
 	priv->usb_20_clk = of_clk_get_by_name(dn, "sw_usb");
@@ -413,15 +415,19 @@ static int brcm_usb_phy_dvr_init(struct platform_device *pdev,
 		dev_info(dev, "Clock not found in Device Tree\n");
 		priv->usb_20_clk = NULL;
 	}
-	err = clk_prepare_enable(priv->usb_20_clk);
-	if (err)
-		return err;
+	if (priv->usb_20_clk) {
+		err = clk_prepare_enable(priv->usb_20_clk);
+		if (err)
+			return err;
+		usb_20_clk_enabled = true;
+	}
 
 	if (priv->has_eohci) {
 		gphy = devm_phy_create(dev, NULL, &brcm_usb_phy_ops);
 		if (IS_ERR(gphy)) {
 			dev_err(dev, "failed to create EHCI/OHCI PHY\n");
-			return PTR_ERR(gphy);
+			err = PTR_ERR(gphy);
+			goto err_disable_clks;
 		}
 		priv->phys[BRCM_USB_PHY_2_0].phy = gphy;
 		priv->phys[BRCM_USB_PHY_2_0].id = BRCM_USB_PHY_2_0;
@@ -432,7 +438,8 @@ static int brcm_usb_phy_dvr_init(struct platform_device *pdev,
 		gphy = devm_phy_create(dev, NULL, &brcm_usb_phy_ops);
 		if (IS_ERR(gphy)) {
 			dev_err(dev, "failed to create XHCI PHY\n");
-			return PTR_ERR(gphy);
+			err = PTR_ERR(gphy);
+			goto err_disable_clks;
 		}
 		priv->phys[BRCM_USB_PHY_3_0].phy = gphy;
 		priv->phys[BRCM_USB_PHY_3_0].id = BRCM_USB_PHY_3_0;
@@ -440,21 +447,28 @@ static int brcm_usb_phy_dvr_init(struct platform_device *pdev,
 
 		priv->usb_30_clk = of_clk_get_by_name(dn, "sw_usb3");
 		if (IS_ERR(priv->usb_30_clk)) {
-			if (PTR_ERR(priv->usb_30_clk) == -EPROBE_DEFER)
-				return -EPROBE_DEFER;
+			if (PTR_ERR(priv->usb_30_clk) == -EPROBE_DEFER) {
+				err = -EPROBE_DEFER;
+				goto err_disable_clks;
+			}
 			dev_info(dev,
 				 "USB3.0 clock not found in Device Tree\n");
 			priv->usb_30_clk = NULL;
 		}
-		err = clk_prepare_enable(priv->usb_30_clk);
-		if (err)
-			return err;
+		if (priv->usb_30_clk) {
+			err = clk_prepare_enable(priv->usb_30_clk);
+			if (err)
+				goto err_disable_clks;
+			usb_30_clk_enabled = true;
+		}
 	}
 
 	priv->suspend_clk = clk_get(dev, "usb0_freerun");
 	if (IS_ERR(priv->suspend_clk)) {
-		if (PTR_ERR(priv->suspend_clk) == -EPROBE_DEFER)
-			return -EPROBE_DEFER;
+		if (PTR_ERR(priv->suspend_clk) == -EPROBE_DEFER) {
+			err = -EPROBE_DEFER;
+			goto err_disable_clks;
+		}
 		dev_err(dev, "Suspend Clock not found in Device Tree\n");
 		priv->suspend_clk = NULL;
 	}
@@ -467,7 +481,7 @@ static int brcm_usb_phy_dvr_init(struct platform_device *pdev,
 				       brcm_usb_phy_wake_isr, 0,
 				       dev_name(dev), dev);
 		if (err < 0)
-			return err;
+			goto err_disable_clks;
 		device_set_wakeup_capable(dev, 1);
 	} else {
 		dev_info(dev,
@@ -475,6 +489,14 @@ static int brcm_usb_phy_dvr_init(struct platform_device *pdev,
 	}
 
 	return 0;
+
+err_disable_clks:
+	if (usb_30_clk_enabled)
+		clk_disable_unprepare(priv->usb_30_clk);
+	if (usb_20_clk_enabled)
+		clk_disable_unprepare(priv->usb_20_clk);
+
+	return err;
 }
 
 static int brcm_usb_phy_probe(struct platform_device *pdev)
-- 
2.47.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
