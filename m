Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7EE39606A326
	for <linux-phy@archiver.kernel.org>; Mon,  9 Nov 2026 04:05:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=As5TfxQe;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=SyKEcnPk
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=Wii/anshncfPu2fJsAtWqkcNBk9r4yUoqZkqDib8xLQ=; b=As5TfxQeLJqvLMAOdk908tv6dx
	G037DOqpADLOsMYWI5ofJh+k1b0GHXEYKMx9F2BJvya5Z9xzSlEGT2rjGi4M8wuDsXbgrfPfzs9c7
	fRB16nxoutIOdfhhRANJF/hxGJvYrYl2EOfKE+IggsUvjpWxphZWND3OFBH+GO+hZKAQi3OJP4Axb
	NfxuM9Ti/QDph1+hTn4GL5UEMMwhrbGnjAiTHLRlSUD1LQN/Vv+6euTQvE/rKCfnSXaPM+Zn2ok/y
	8C2dr3xZ3zXtn64Uf5Z275mOn+AeCqKpj4XzE0p3e8yXzfZUtbc6AekqYRJv8OfrxtuxFTEuvwQwi
	yLZntQ3g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQGdD-0000000HHpc-12xF;
	Mon, 09 Nov 2026 04:05:19 +0000
Received: from mail-pj1-x1033.google.com ([2607:f8b0:4864:20::1033])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQGdB-0000000HHoe-2bWY
	for linux-phy@lists.infradead.org;
	Mon, 09 Nov 2026 04:05:18 +0000
Received: by mail-pj1-x1033.google.com with SMTP id 98e67ed59e1d1-3b0b3438540so241858a91.0
        for <linux-phy@lists.infradead.org>; Sun, 08 Nov 2026 20:05:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1794197117; x=1794801917; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=n++rx2vPRlANelrrltmpXRwH4hFgG58r1hhbvby3m58=;
        b=SyKEcnPkSKD8/z62GY2ys7Koo08MOWnRNktOkLeETrlzGAvKlL6CK1zkKhBoyowPMX
         MJ0Jqy5NKX07ejnPWWYYtUbw/wYK/St67ZFemN57edmpFCcuScsaSicXGP6OfouJtNMj
         vwE5JDR9vlUfsJ3a5n36T/Hj+yHSZal/av2YTE/lgWE3LphW5FsZUXhxfCdLo+pekWaS
         1AzflyFLkDLRyYXD1gSibHJNE8npwdtxSMZoXPNLmniEY2rdx6w22zRasv0/pJ7eP6EL
         4si1DsSbQVNZYxHobLkwmLCSa+8CqTlwvRawg7SE+LGODE10dl/TzonI3jsd1UqyG8DI
         YYAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794197117; x=1794801917;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=n++rx2vPRlANelrrltmpXRwH4hFgG58r1hhbvby3m58=;
        b=zR6N6canyPFBQthURCrs2pOxRm03sLxFv3IhkDNSQomZNpG3QYZEQqLSO+c+phQx9o
         qTU7C08ov+S4ryOgFXuKRxPZc4qXqI9pzIpC3GwrgOkHhN0g7JKb3F9DutiVaKQoZdwv
         ETdhi2tDZkGq/DxNqm+Q46uD01tzEm3pnSzMN5h7b4VF9NXe3CIi3RsyGWhJjuHVo+Mq
         QU+Hdt8ukGTvglzI8qZ8Bn8uL8zc4cLvGKFXDgbG1POBiAGgJbhCFLmo/CgJE+X32Cz3
         24Wkheb2OH1fKH9etFjNh7+h3Xk9Y9hWOWFtouTMK2Gk4vRv42ZrfvYsOSE2sOHkLVdu
         034w==
X-Forwarded-Encrypted: i=1; AL+hErExtH6rP2nF7pRPL/ftcmy8VvSPF+VU5A9pNFnK32AdKk2lFt8/+eWErBYPt2p62/8fh8j9boDe2eM=@lists.infradead.org
X-Gm-Message-State: APuU4Z9yEhST3VEUkl/3iM2t0eiJaikah1nSxJCgrsybHA2nbkvq64BR
	Vtud27VXseZOvDv9L7BghIlkb2/1SNuqK4+kbazzb8B3IKJBEcmGWmrChmo2yA==
X-Gm-Gg: AYBFou0jRz1XWbwTIETc4odg098R3JI8lUoYInVmDAZVuWBuK5gIIw0SKiMZxR29Y8M
	SoRdbXdpiz8iGk56FcN+wGbXYKoL03WXPhn3e49LNZw5FAo5UCAeJ/1xk0/kg1L/4Y3zz/8Jh5a
	+hNO6Rqtki1nCnb/592jH8aYkkxA+x7JQHLu7ylbKZHL+d8Vq0KgZuvxaBhekRHGxcnjZkIwZ4W
	onlV1ukeSKwvanGoNknGIRb3t9IpNAMhIhj+c/OORFa4CKXNkgVXxM9YByr/hbg2L9xT447nIPy
	du8OFF8Gjk4yccz1O+M8vb2RQ1strc1cjnMyJ5vFFDELj/LgadW83YlSVh62llVd7enUjXIqoQC
	od/T08VulV5SK7dLpG4Z0ygirmwT8i86w6bEqzO6DuK7gff1Lu1JQepvCbm8ycX+o34i4j/B5ZP
	a7apU+uO+ZziX48Djb9+/9cYNjn/SRckvOx7YIYjmOL9JuI7tCK5cxltkDxnNDJacZWGyNhBtPA
	ERK+R3MJIHkz1WbOHODXghnElW4fyeAVrG2h4zEfV+8CLMz3BHkiKkKMydA1Gw8wG3kBR+fOrJ3
	KhcaA7pirQ/7+LuGZoNQjdrvAgYq9GDpTO88DP5+wfsZ3rmAeXyBAvmgv+/hPqzZYUayGnMudTR
	RLTuP/MdzNmPfupSc5USR2jILmKF0UV5923JqpxrJrPw0/NtCteo0rxUSGISxJX0GikJEnjLOnL
	+WdmIv1n1MlhhXjJh6DcNUz/M=
X-Received: by 2002:a17:90a:fc4d:b0:3ad:25f6:1dd0 with SMTP id 98e67ed59e1d1-3b12d444739mr2752350a91.11.1794197116640;
        Sun, 08 Nov 2026 20:05:16 -0800 (PST)
Received: from ryzen.lan ([2601:644:8000:37f::e34])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3b127891fa4sm5116170a91.4.2026.11.08.20.05.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 08 Nov 2026 20:05:15 -0800 (PST)
From: Rosen Penev <rosenp@gmail.com>
To: Alban Bedel <albeu@free.fr>,
	Vinod Koul <vkoul@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Philipp Zabel <p.zabel@pengutronix.de>
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-msm@vger.kernel.org
Subject: [PATCH v2 2/2] phy: ath79-usb: support the analog reset
Date: Sun,  8 Nov 2026 20:04:51 -0800
Message-ID: <20261109040451.114135-3-rosenp@gmail.com>
X-Mailer: git-send-email 2.56.0
In-Reply-To: <20261109040451.114135-1-rosenp@gmail.com>
References: <20261109040451.114135-1-rosenp@gmail.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261108_200517_663788_4D282F63 
X-CRM114-Status: GOOD (  17.00  )
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

From AR934x on, the analog part of the USB PHY has its own reset. The
old platform code released it after the PHY reset on AR934x, and left
it to the bootloader on QCA955x.

Take it as an optional "phy-analog" reset, release it after the PHY one
when powering on, and assert it first when powering off. This is the
reset handling OpenWrt has used on its AR934x, QCA955x and QCA956x
boards.

Signed-off-by: Rosen Penev <rosenp@gmail.com>
---
 drivers/phy/qualcomm/phy-ath79-usb.c | 33 +++++++++++++++++++++++++---
 1 file changed, 30 insertions(+), 3 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-ath79-usb.c b/drivers/phy/qualcomm/phy-ath79-usb.c
index 8e9565846b2f..1e7868fc0b5f 100644
--- a/drivers/phy/qualcomm/phy-ath79-usb.c
+++ b/drivers/phy/qualcomm/phy-ath79-usb.c
@@ -12,6 +12,7 @@
 
 struct ath79_usb_phy {
 	struct reset_control *reset;
+	struct reset_control *analog_reset;
 	/* The suspend override logic is inverted, hence the no prefix
 	 * to make the code a bit easier to understand.
 	 */
@@ -30,7 +31,19 @@ static int ath79_usb_phy_power_on(struct phy *phy)
 	}
 
 	err = reset_control_deassert(priv->reset);
-	if (err && priv->no_suspend_override)
+	if (err)
+		goto err_suspend_override;
+
+	err = reset_control_deassert(priv->analog_reset);
+	if (err) {
+		reset_control_assert(priv->reset);
+		goto err_suspend_override;
+	}
+
+	return 0;
+
+err_suspend_override:
+	if (priv->no_suspend_override)
 		reset_control_deassert(priv->no_suspend_override);
 
 	return err;
@@ -41,14 +54,22 @@ static int ath79_usb_phy_power_off(struct phy *phy)
 	struct ath79_usb_phy *priv = phy_get_drvdata(phy);
 	int err = 0;
 
-	err = reset_control_assert(priv->reset);
+	err = reset_control_assert(priv->analog_reset);
 	if (err)
 		return err;
 
+	err = reset_control_assert(priv->reset);
+	if (err) {
+		reset_control_deassert(priv->analog_reset);
+		return err;
+	}
+
 	if (priv->no_suspend_override) {
 		err = reset_control_deassert(priv->no_suspend_override);
-		if (err)
+		if (err) {
 			reset_control_deassert(priv->reset);
+			reset_control_deassert(priv->analog_reset);
+		}
 	}
 
 	return err;
@@ -78,6 +99,12 @@ static int ath79_usb_phy_probe(struct platform_device *pdev)
 	if (IS_ERR(priv->no_suspend_override))
 		return PTR_ERR(priv->no_suspend_override);
 
+	/* AR934x and later also hold the analog part in reset */
+	priv->analog_reset = devm_reset_control_get_optional(&pdev->dev,
+							     "phy-analog");
+	if (IS_ERR(priv->analog_reset))
+		return PTR_ERR(priv->analog_reset);
+
 	phy = devm_phy_create(&pdev->dev, NULL, &ath79_usb_phy_ops);
 	if (IS_ERR(phy))
 		return PTR_ERR(phy);
-- 
2.56.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
