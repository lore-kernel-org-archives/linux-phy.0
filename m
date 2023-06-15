Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 749B2EB64DC
	for <linux-phy@archiver.kernel.org>; Thu, 15 Jun 2023 20:06:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	MIME-Version:List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe
	:List-Id:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Ri1KGlIMVKsSZOe/yMw0OQdJorMD4NEDUg6GcOebUiw=; b=JXGWNhUZUT1KyZJZTflk8Qra/x
	ONyJLz2KRZClytR6AgC+Cmd/y32iymxrZMdvHvTZfU8KJUrce8EPNTgImqPZZU3/JUXbCdi0BRTpe
	57BRwF8ApjLrpQ2fetiUb75BJNSn/WPbuijv2ti8evGXaHocNzlvmG4ZC75vwJ0GbPRdG/9sPZDoy
	fVhMQkowAUEKBfGBOZPEikgJBf7+Yk6RNy4/yGM6GiI0AEhNW6fruefPwnlzvNWHa13b6iC1DKsGb
	93oOddKsX7ZBs0YR/knltMEjZ+FXQ/qsZkYVV+aUbMw5SK0mQjP6j6lDAIboVI5Nwn9e46LPRpPM5
	cZiMiXsg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q9tEl-00Fz0U-35;
	Thu, 15 Jun 2023 20:06:31 +0000
Received: from mail-qk1-x72a.google.com ([2607:f8b0:4864:20::72a])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q9tEi-00Fyyg-0v
	for linux-phy@lists.infradead.org;
	Thu, 15 Jun 2023 20:06:30 +0000
Received: by mail-qk1-x72a.google.com with SMTP id af79cd13be357-75d4a4cf24aso356354385a.1
        for <linux-phy@lists.infradead.org>; Thu, 15 Jun 2023 13:06:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google; t=1686859587; x=1689451587;
        h=references:in-reply-to:message-id:date:subject:cc:to:from:from:to
         :cc:subject:date:message-id:reply-to;
        bh=YCQenxYFeyaV5eKPdOLFCCjg1GdqRS0vyPwDfYFS6uw=;
        b=fSursZHJepI9EFuUfWxGEb5IM+jBGOgXQ/CRPG7h1t7snG6YcEMvpElsSRouWUev3b
         xKzPeC4KLPiS1Bnqi445Kk8bSf7FO4OumbJNrjF/8LA9fMoGLXySmnSPAy6eccAPMyaC
         V6611mLVniw3872L1hiudCqmP1dCNa06kKX1I=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686859587; x=1689451587;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=YCQenxYFeyaV5eKPdOLFCCjg1GdqRS0vyPwDfYFS6uw=;
        b=H2aHJyDqJqwaVXEqpUMytROwWGNLKvWa81er4Pc5OywHATll5L2VD9EbUvhjKp31+K
         mwPt868Q2KmVdsXso6Qb/IAF5YJ22bilmIYpW2kjVoGcZd4erioV41i8AgjOLMQ2lRK1
         q9HULBYUEumCHVvMjK7d7Nf1i1AolN02r6LuM9Id1q2TiijH/z0fsZMQGsYkxbBWpXdu
         Lbx635yXKgMWcYxi3SmJ+7XSNCHSBW7eeQ2sgj+k37apn35W7iSTR7rD+e3k0XB6utbN
         R1FChm6cb7jA7ik0CsS/u9R/HSdoBbaQ553E7HbulEf/v4TH9qNpejhU81hfzoQJDZo+
         aHPg==
X-Gm-Message-State: AC+VfDx1qgHB2xz6xkeZfXXc42udnj5P8WyV/ycm9Ujavo23UogjjMkL
	sk43xOpqAz/nG/LqYx7aZXf7zjAnhh4HEGQTNTRNx/s2Vd8ULqJlCLUhbiDTGkGLtcL66GvMYwn
	+6kL18N5odUXpWYtXZSRM54gCYSxegeM161aZJn4KBa+v1ftcvkfG2x1fkzZ3Bf5RDnQ50Ze+3P
	ibrwuQp4/3A773uLo=
X-Google-Smtp-Source: ACHHUZ4nbdc+NMWLTaoFQA+gFzuMVyutwZpNyFoF6NOU3BIz13ty/29ts1p06jRmNXaSpaVrqI4aRQ==
X-Received: by 2002:a05:620a:298e:b0:75b:23a0:d9c3 with SMTP id r14-20020a05620a298e00b0075b23a0d9c3mr25997037qkp.25.1686859586650;
        Thu, 15 Jun 2023 13:06:26 -0700 (PDT)
Received: from stbirv-lnx-2.igp.broadcom.net ([192.19.223.252])
        by smtp.gmail.com with ESMTPSA id k4-20020a05620a142400b0075ceca53e84sm5721407qkj.15.2023.06.15.13.06.25
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Jun 2023 13:06:26 -0700 (PDT)
From: Justin Chen <justin.chen@broadcom.com>
To: linux-phy@lists.infradead.org
Cc: bcm-kernel-feedback-list@broadcom.com,
	florian.fainelli@broadcom.com,
	Justin Chen <justin.chen@broadcom.com>,
	Justin Chen <justinpopo6@gmail.com>,
	Al Cooper <alcooperx@gmail.com>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	linux-kernel@vger.kernel.org (open list:BROADCOM BRCMSTB USB2 and USB3 PHY DRIVER)
Subject: [PATCH 2/2] phy: usb: suppress OC condition for 7439b2
Date: Thu, 15 Jun 2023 13:06:17 -0700
Message-Id: <1686859578-45242-3-git-send-email-justin.chen@broadcom.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1686859578-45242-1-git-send-email-justin.chen@broadcom.com>
References: <1686859578-45242-1-git-send-email-justin.chen@broadcom.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230615_130628_329625_8945FE86 
X-CRM114-Status: GOOD (  14.02  )
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
Content-Type: multipart/mixed; boundary="===============5349264186786371065=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

--===============5349264186786371065==
Content-Type: multipart/signed; protocol="application/pkcs7-signature"; micalg=sha-256;
	boundary="00000000000078eabd05fe309a83"

--00000000000078eabd05fe309a83

We hit a false positive OC for 7439b2 in DRD/device mode for the
second port. So disable the OC check for this use case. Add capability
to suppress OC condition for specific ports.

Signed-off-by: Justin Chen <justin.chen@broadcom.com>
---
 drivers/phy/broadcom/phy-brcm-usb-init.c | 34 ++++++++++++++++++++++++++++++++
 1 file changed, 34 insertions(+)

diff --git a/drivers/phy/broadcom/phy-brcm-usb-init.c b/drivers/phy/broadcom/phy-brcm-usb-init.c
index a1ca83308f98..39536b6d96a9 100644
--- a/drivers/phy/broadcom/phy-brcm-usb-init.c
+++ b/drivers/phy/broadcom/phy-brcm-usb-init.c
@@ -35,6 +35,11 @@
 #define   USB_CTRL_SETUP_STRAP_IPP_SEL_MASK		BIT(25) /* option */
 #define   USB_CTRL_SETUP_CC_DRD_MODE_ENABLE_MASK	BIT(26) /* option */
 #define   USB_CTRL_SETUP_STRAP_CC_DRD_MODE_ENABLE_SEL_MASK BIT(27) /* opt */
+#define   USB_CTRL_SETUP_OC_DISABLE_PORT0_MASK		BIT(28)
+#define   USB_CTRL_SETUP_OC_DISABLE_PORT1_MASK		BIT(29)
+#define   USB_CTRL_SETUP_OC_DISABLE_MASK		GENMASK(29, 28) /* option */
+#define   USB_CTRL_SETUP_OC3_DISABLE_PORT0_MASK		BIT(30)
+#define   USB_CTRL_SETUP_OC3_DISABLE_PORT1_MASK		BIT(31)
 #define   USB_CTRL_SETUP_OC3_DISABLE_MASK		GENMASK(31, 30) /* option */
 #define USB_CTRL_PLL_CTL		0x04
 #define   USB_CTRL_PLL_CTL_PLL_SUSPEND_EN_MASK		BIT(27)
@@ -114,6 +119,8 @@ enum {
 	USB_CTRL_SETUP_SCB2_EN_SELECTOR,
 	USB_CTRL_SETUP_SS_EHCI64BIT_EN_SELECTOR,
 	USB_CTRL_SETUP_STRAP_IPP_SEL_SELECTOR,
+	USB_CTRL_SETUP_OC3_DISABLE_PORT0_SELECTOR,
+	USB_CTRL_SETUP_OC3_DISABLE_PORT1_SELECTOR,
 	USB_CTRL_SETUP_OC3_DISABLE_SELECTOR,
 	USB_CTRL_PLL_CTL_PLL_IDDQ_PWRDN_SELECTOR,
 	USB_CTRL_USB_PM_BDC_SOFT_RESETB_SELECTOR,
@@ -190,6 +197,8 @@ usb_reg_bits_map_table[BRCM_FAMILY_COUNT][USB_CTRL_SELECTOR_COUNT] = {
 		USB_CTRL_SETUP_SCB2_EN_MASK,
 		USB_CTRL_SETUP_SS_EHCI64BIT_EN_MASK,
 		USB_CTRL_SETUP_STRAP_IPP_SEL_MASK,
+		USB_CTRL_SETUP_OC3_DISABLE_PORT0_MASK,
+		USB_CTRL_SETUP_OC3_DISABLE_PORT1_MASK,
 		USB_CTRL_SETUP_OC3_DISABLE_MASK,
 		0, /* USB_CTRL_PLL_CTL_PLL_IDDQ_PWRDN_MASK */
 		0, /* USB_CTRL_USB_PM_BDC_SOFT_RESETB_MASK */
@@ -232,6 +241,8 @@ usb_reg_bits_map_table[BRCM_FAMILY_COUNT][USB_CTRL_SELECTOR_COUNT] = {
 		USB_CTRL_SETUP_SCB2_EN_MASK,
 		USB_CTRL_SETUP_SS_EHCI64BIT_EN_MASK,
 		0, /* USB_CTRL_SETUP_STRAP_IPP_SEL_MASK */
+		USB_CTRL_SETUP_OC3_DISABLE_PORT0_MASK,
+		USB_CTRL_SETUP_OC3_DISABLE_PORT1_MASK,
 		USB_CTRL_SETUP_OC3_DISABLE_MASK,
 		USB_CTRL_PLL_CTL_PLL_IDDQ_PWRDN_MASK,
 		0, /* USB_CTRL_USB_PM_BDC_SOFT_RESETB_MASK */
@@ -253,6 +264,8 @@ usb_reg_bits_map_table[BRCM_FAMILY_COUNT][USB_CTRL_SELECTOR_COUNT] = {
 		0, /* USB_CTRL_SETUP_SCB2_EN_MASK */
 		USB_CTRL_SETUP_SS_EHCI64BIT_EN_MASK,
 		USB_CTRL_SETUP_STRAP_IPP_SEL_MASK,
+		USB_CTRL_SETUP_OC3_DISABLE_PORT0_MASK,
+		USB_CTRL_SETUP_OC3_DISABLE_PORT1_MASK,
 		USB_CTRL_SETUP_OC3_DISABLE_MASK,
 		0, /* USB_CTRL_PLL_CTL_PLL_IDDQ_PWRDN_MASK */
 		USB_CTRL_USB_PM_BDC_SOFT_RESETB_MASK,
@@ -274,6 +287,8 @@ usb_reg_bits_map_table[BRCM_FAMILY_COUNT][USB_CTRL_SELECTOR_COUNT] = {
 		USB_CTRL_SETUP_SCB2_EN_MASK,
 		USB_CTRL_SETUP_SS_EHCI64BIT_EN_MASK,
 		0, /* USB_CTRL_SETUP_STRAP_IPP_SEL_MASK */
+		USB_CTRL_SETUP_OC3_DISABLE_PORT0_MASK,
+		USB_CTRL_SETUP_OC3_DISABLE_PORT1_MASK,
 		USB_CTRL_SETUP_OC3_DISABLE_MASK,
 		USB_CTRL_PLL_CTL_PLL_IDDQ_PWRDN_MASK,
 		0, /* USB_CTRL_USB_PM_BDC_SOFT_RESETB_MASK */
@@ -295,6 +310,8 @@ usb_reg_bits_map_table[BRCM_FAMILY_COUNT][USB_CTRL_SELECTOR_COUNT] = {
 		USB_CTRL_SETUP_SCB2_EN_MASK,
 		USB_CTRL_SETUP_SS_EHCI64BIT_EN_MASK,
 		0, /* USB_CTRL_SETUP_STRAP_IPP_SEL_MASK */
+		USB_CTRL_SETUP_OC3_DISABLE_PORT0_MASK,
+		USB_CTRL_SETUP_OC3_DISABLE_PORT1_MASK,
 		USB_CTRL_SETUP_OC3_DISABLE_MASK,
 		0, /* USB_CTRL_PLL_CTL_PLL_IDDQ_PWRDN_MASK */
 		0, /* USB_CTRL_USB_PM_BDC_SOFT_RESETB_MASK */
@@ -316,6 +333,8 @@ usb_reg_bits_map_table[BRCM_FAMILY_COUNT][USB_CTRL_SELECTOR_COUNT] = {
 		USB_CTRL_SETUP_SCB2_EN_MASK,
 		USB_CTRL_SETUP_SS_EHCI64BIT_EN_VAR_MASK,
 		0, /* USB_CTRL_SETUP_STRAP_IPP_SEL_MASK */
+		0, /* USB_CTRL_SETUP_OC3_DISABLE_PORT0_MASK */
+		0, /* USB_CTRL_SETUP_OC3_DISABLE_PORT1_MASK */
 		0, /* USB_CTRL_SETUP_OC3_DISABLE_MASK */
 		USB_CTRL_PLL_CTL_PLL_IDDQ_PWRDN_MASK,
 		0, /* USB_CTRL_USB_PM_BDC_SOFT_RESETB_MASK */
@@ -337,6 +356,8 @@ usb_reg_bits_map_table[BRCM_FAMILY_COUNT][USB_CTRL_SELECTOR_COUNT] = {
 		USB_CTRL_SETUP_SCB2_EN_MASK,
 		USB_CTRL_SETUP_SS_EHCI64BIT_EN_MASK,
 		USB_CTRL_SETUP_STRAP_IPP_SEL_MASK,
+		USB_CTRL_SETUP_OC3_DISABLE_PORT0_MASK,
+		USB_CTRL_SETUP_OC3_DISABLE_PORT1_MASK,
 		USB_CTRL_SETUP_OC3_DISABLE_MASK,
 		0, /* USB_CTRL_PLL_CTL_PLL_IDDQ_PWRDN_MASK */
 		USB_CTRL_USB_PM_BDC_SOFT_RESETB_MASK,
@@ -358,6 +379,8 @@ usb_reg_bits_map_table[BRCM_FAMILY_COUNT][USB_CTRL_SELECTOR_COUNT] = {
 		USB_CTRL_SETUP_SCB2_EN_MASK,
 		USB_CTRL_SETUP_SS_EHCI64BIT_EN_VAR_MASK,
 		0, /* USB_CTRL_SETUP_STRAP_IPP_SEL_MASK */
+		USB_CTRL_SETUP_OC3_DISABLE_PORT0_MASK,
+		USB_CTRL_SETUP_OC3_DISABLE_PORT1_MASK,
 		USB_CTRL_SETUP_OC3_DISABLE_MASK,
 		USB_CTRL_PLL_CTL_PLL_IDDQ_PWRDN_MASK,
 		0, /* USB_CTRL_USB_PM_BDC_SOFT_RESETB_MASK */
@@ -379,6 +402,8 @@ usb_reg_bits_map_table[BRCM_FAMILY_COUNT][USB_CTRL_SELECTOR_COUNT] = {
 		0, /* USB_CTRL_SETUP_SCB2_EN_MASK */
 		USB_CTRL_SETUP_SS_EHCI64BIT_EN_MASK,
 		USB_CTRL_SETUP_STRAP_IPP_SEL_MASK,
+		USB_CTRL_SETUP_OC3_DISABLE_PORT0_MASK,
+		USB_CTRL_SETUP_OC3_DISABLE_PORT1_MASK,
 		USB_CTRL_SETUP_OC3_DISABLE_MASK,
 		0, /* USB_CTRL_PLL_CTL_PLL_IDDQ_PWRDN_MASK */
 		USB_CTRL_USB_PM_BDC_SOFT_RESETB_MASK,
@@ -400,6 +425,8 @@ usb_reg_bits_map_table[BRCM_FAMILY_COUNT][USB_CTRL_SELECTOR_COUNT] = {
 		0, /* USB_CTRL_SETUP_SCB2_EN_MASK */
 		0, /*USB_CTRL_SETUP_SS_EHCI64BIT_EN_MASK */
 		USB_CTRL_SETUP_STRAP_IPP_SEL_MASK,
+		USB_CTRL_SETUP_OC3_DISABLE_PORT0_MASK,
+		USB_CTRL_SETUP_OC3_DISABLE_PORT1_MASK,
 		USB_CTRL_SETUP_OC3_DISABLE_MASK,
 		0, /* USB_CTRL_PLL_CTL_PLL_IDDQ_PWRDN_MASK */
 		USB_CTRL_USB_PM_BDC_SOFT_RESETB_MASK,
@@ -872,6 +899,13 @@ static void usb_init_common(struct brcm_usb_init_params *params)
 
 	brcmusb_memc_fix(params);
 
+	/* Workaround for false positive OC for 7439b2 in DRD/Device mode */
+	if ((params->family_id == 0x74390012) &&
+	    (params->supported_port_modes != USB_CTLR_MODE_HOST)) {
+		USB_CTRL_SET(ctrl, SETUP, OC_DISABLE_PORT1);
+		USB_CTRL_SET_FAMILY(params, SETUP, OC3_DISABLE_PORT1);
+	}
+
 	if (USB_CTRL_MASK_FAMILY(params, USB_DEVICE_CTL1, PORT_MODE)) {
 		reg = brcm_usb_readl(USB_CTRL_REG(ctrl, USB_DEVICE_CTL1));
 		reg &= ~USB_CTRL_MASK_FAMILY(params, USB_DEVICE_CTL1,
-- 
2.7.4


--00000000000078eabd05fe309a83
Content-Type: application/pkcs7-signature; name="smime.p7s"
Content-Transfer-Encoding: base64
Content-Disposition: attachment; filename="smime.p7s"
Content-Description: S/MIME Cryptographic Signature

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
NhTY3E+cXCB11wty89QStajwXdhGJTYEvUgvsq1h8CwJj9w/38ldAQf5WjhPmApYeJR2ewFrBMCM
4lHkdRJ6TDc9nXoEkypUfjJkJHe7Eal06tosh6JpAgMBAAGjggHZMIIB1TAOBgNVHQ8BAf8EBAMC
BaAwgaMGCCsGAQUFBwEBBIGWMIGTME4GCCsGAQUFBzAChkJodHRwOi8vc2VjdXJlLmdsb2JhbHNp
Z24uY29tL2NhY2VydC9nc2djY3IzcGVyc29uYWxzaWduMmNhMjAyMC5jcnQwQQYIKwYBBQUHMAGG
NWh0dHA6Ly9vY3NwLmdsb2JhbHNpZ24uY29tL2dzZ2NjcjNwZXJzb25hbHNpZ24yY2EyMDIwME0G
A1UdIARGMEQwQgYKKwYBBAGgMgEoCjA0MDIGCCsGAQUFBwIBFiZodHRwczovL3d3dy5nbG9iYWxz
aWduLmNvbS9yZXBvc2l0b3J5LzAJBgNVHRMEAjAAMEkGA1UdHwRCMEAwPqA8oDqGOGh0dHA6Ly9j
cmwuZ2xvYmFsc2lnbi5jb20vZ3NnY2NyM3BlcnNvbmFsc2lnbjJjYTIwMjAuY3JsMCMGA1UdEQQc
MBqBGGp1c3Rpbi5jaGVuQGJyb2FkY29tLmNvbTATBgNVHSUEDDAKBggrBgEFBQcDBDAfBgNVHSME
GDAWgBSWM9HmWBdbNHWKgVZk1b5I3qGPzzAdBgNVHQ4EFgQUIWGeYuaTsnIada5Xx8TR3cheUbgw
DQYJKoZIhvcNAQELBQADggEBAHNQlMqQOFYPYFO71A+8t+qWMmtOdd2iGswSOvpSZ/pmGlfw8ZvY
dRTkl27m37la84AxRkiVMes14JyOZJoMh/g7fbgPlU14eBc6WQWkIA6AmNkduFWTr1pRezkjpeo6
xVmdBLM4VY1TFDYj7S8H2adPuypd62uHMY/MZi+BIUys4uAFA+N3NuUBNjcVZXYPplYxxKEuIFq6
sDL+OV16G+F9CkNMN3txsym8Nnx5WAYZb6+rBUIhMGz70V05xsHQfzvo2s7f0J1tJ5BoRlPPhL0h
VOnWA3h71u9TfSsv+PXVm3P21TfOS2uc1hbzEqyENCP4i5XQ0rv0TmPW42GZ0o4xggJtMIICaQIB
ATBrMFsxCzAJBgNVBAYTAkJFMRkwFwYDVQQKExBHbG9iYWxTaWduIG52LXNhMTEwLwYDVQQDEyhH
bG9iYWxTaWduIEdDQyBSMyBQZXJzb25hbFNpZ24gMiBDQSAyMDIwAgwj8BKLXNpALfemdRAwDQYJ
YIZIAWUDBAIBBQCggdQwLwYJKoZIhvcNAQkEMSIEIJpM3SEFZBv2dV4s/fUhjsDLFwYDAz26eG66
Xr1G38KJMBgGCSqGSIb3DQEJAzELBgkqhkiG9w0BBwEwHAYJKoZIhvcNAQkFMQ8XDTIzMDYxNTIw
MDYyN1owaQYJKoZIhvcNAQkPMVwwWjALBglghkgBZQMEASowCwYJYIZIAWUDBAEWMAsGCWCGSAFl
AwQBAjAKBggqhkiG9w0DBzALBgkqhkiG9w0BAQowCwYJKoZIhvcNAQEHMAsGCWCGSAFlAwQCATAN
BgkqhkiG9w0BAQEFAASCAQApTmeSPG1D+df2O60s4M5vMubUUcmQD9DidS+Bu7O5jkM78J1KfLpC
XC9F9B+bC/k2ap1H3UwpvcmuhDfO3Tr/5SNL0UGPWrvct67Qal5YBWWIx5DctDX3/c5ThfvRPC2w
v+z4kvo0cdB0RFAwAcvLAEhHGrDt0B6S++pKvlGz2x80ZTBnVaF9/rqzpc0+vuzio7q4zLDdMtUU
XTXjHD6x2zQlAB3qBbsE5Gen2czMLeie0F87ehfohivqZfZ04g0/Sbo8S6q0b6XalwvLuk9x5rou
n97xlxCCRJ+0X2VZPkg9BB9bu1x48pASE5suV9lqxZnCfe9OzOp3iXX06BHP
--00000000000078eabd05fe309a83--


--===============5349264186786371065==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============5349264186786371065==--

