Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2D6C9EB64D9
	for <linux-phy@archiver.kernel.org>; Thu, 15 Jun 2023 20:06:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	MIME-Version:List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe
	:List-Id:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=a+8JgyT6PkzpnqKjDgjw7DRwD7bt7X8/DsilnxyACjw=; b=sVXRjvKvU5anb4fTuUGEwBinqB
	3DnkRxTsrpZ7p9n02BSLDErdBtXbkmVAADN7ViPZ+uWAaeEJnPPIitfLjBjRP5azRLGnxoECqSl2c
	1Q8ptB2LnfvrzyQBQvVV/SOVFUMrMBfTEBiR6TA8ZAB/xA8e63OBHX1gfAyhBVXsXddnS45beS4q4
	piECRAf5plyfzUVgJjXM4S4RghyAfHeOFUgltGGzJsqxRfglm//L6kPABfzCOc6q2vq9vyTPoYp8y
	gkd4qtrLdxx1pwYKrnjqbATg4HLbWiUncCAhuUP8pp/KF1XU6X+wTwbKj5LnEAgHm5SZIHJb114Z7
	5c6Q2RnA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q9tEl-00Fz0L-27;
	Thu, 15 Jun 2023 20:06:31 +0000
Received: from mail-qk1-x72f.google.com ([2607:f8b0:4864:20::72f])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q9tEh-00FyyV-22
	for linux-phy@lists.infradead.org;
	Thu, 15 Jun 2023 20:06:29 +0000
Received: by mail-qk1-x72f.google.com with SMTP id af79cd13be357-75d4f12d4a3so1484685a.0
        for <linux-phy@lists.infradead.org>; Thu, 15 Jun 2023 13:06:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google; t=1686859584; x=1689451584;
        h=references:in-reply-to:message-id:date:subject:cc:to:from:from:to
         :cc:subject:date:message-id:reply-to;
        bh=9bWmXJX5XEWUbF60J+VXK2ykeeH1d/FXn2EHqiwots8=;
        b=E3dbS8+31/ZAzxx0HkRY5M9nrzM1/rfGu9wAKQU+FG4oFc3arpmQWik9ZQ//rLvtXB
         4mgtVBPtvrUuhHtA4z4iWAET+SsZd8DNQtnp0mw25uvGxqYGXR3vEwCspV9LpVOJsEqh
         BGX+gTjcKTRqwJb5PHkhB8IgaiRNJ4LWKvny8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686859584; x=1689451584;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=9bWmXJX5XEWUbF60J+VXK2ykeeH1d/FXn2EHqiwots8=;
        b=Dk67XIsbiQr7KivCtVt3DSpQoFI7oeiKwV/uK6+LYt0k3XepPaZ2J85DmaH1ExsRgA
         V1WTl1Td6nwOtsOT8W2Y88zD8UAdsjxp/fofF7DcZQNMOH3ZdtSEYz2stlkT+N4C193y
         FM0FQhRKqSU8s56hEwf1x4HYkT4eldAqfqMtXxboFfejQIOwSAbnRc8cxntrMUQ5PvT/
         OyjOKUpkDWPQwG+4vkQirp39ExCqRgKgF4+NBnjTwbKhv27KOCekMu4HIz2LBUd32wJ8
         F43jGOWVF4dY7ZaOYAr8OXL72tN/9xCw7ChgTvTW0zrXIGnYOcK7hW57ZTS3lyQkb273
         Wlfg==
X-Gm-Message-State: AC+VfDxwHlpHASOGkNWk4uByN6BmAT3R7dJIabNYt3lxeEMX0FfLmDy2
	mWP4tV4EIMNEN5EteR0LQDVat3tCIxlFZKAHTGGOFoaekqz+L/IfDqFVibw95EAlSN/JEA+2Jgh
	4IuyOAV51xC4UiJJOo/CODvzOCqfaz2R8AC7WjjrPlYslp0FlaRJuP752R8xMQgUPJPa914rOjP
	qSVbZrDEFvnIY76Ks=
X-Google-Smtp-Source: ACHHUZ4I8QqRqxVTJ00VzyT9TWYR5uen+/Rc2bZUMBzr1gHqwNZ161+yG9cqJ5FNF2WEFkeOMAPi8Q==
X-Received: by 2002:a37:688f:0:b0:75d:44af:19f2 with SMTP id d137-20020a37688f000000b0075d44af19f2mr19579005qkc.11.1686859584470;
        Thu, 15 Jun 2023 13:06:24 -0700 (PDT)
Received: from stbirv-lnx-2.igp.broadcom.net ([192.19.223.252])
        by smtp.gmail.com with ESMTPSA id k4-20020a05620a142400b0075ceca53e84sm5721407qkj.15.2023.06.15.13.06.23
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Jun 2023 13:06:24 -0700 (PDT)
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
Subject: [PATCH 1/2] phy: usb: Turn off phy when port is in suspend
Date: Thu, 15 Jun 2023 13:06:16 -0700
Message-Id: <1686859578-45242-2-git-send-email-justin.chen@broadcom.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1686859578-45242-1-git-send-email-justin.chen@broadcom.com>
References: <1686859578-45242-1-git-send-email-justin.chen@broadcom.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230615_130627_760271_A8323444 
X-CRM114-Status: GOOD (  18.33  )
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
Content-Type: multipart/mixed; boundary="===============4545129588530576642=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

--===============4545129588530576642==
Content-Type: multipart/signed; protocol="application/pkcs7-signature"; micalg=sha-256;
	boundary="00000000000057212705fe309a2c"

--00000000000057212705fe309a2c

The COMMONONN bit turns off the PHY when the host controller puts it
into suspend state. This can happen during the following...
- Nothing is connected to the port
- The host controller goes into low power mode whatever due to auto
  suspend or system suspend.

With COMMONONN we also must unset U2_FREECLK_EXISTS since the UTMI
clock is fed by the PHY.

With these changes we see a power savings of ~12mW when port is in
suspend.

Reviewed-by: Florian Fainelli <florian.fainelli@broadcom.com>
Signed-off-by: Justin Chen <justin.chen@broadcom.com>
---
 drivers/phy/broadcom/phy-brcm-usb-init-synopsys.c | 15 +++++++++++++--
 drivers/phy/broadcom/phy-brcm-usb-init.h          |  8 ++++++++
 2 files changed, 21 insertions(+), 2 deletions(-)

diff --git a/drivers/phy/broadcom/phy-brcm-usb-init-synopsys.c b/drivers/phy/broadcom/phy-brcm-usb-init-synopsys.c
index 76cf4280d7ed..4c10cafded4e 100644
--- a/drivers/phy/broadcom/phy-brcm-usb-init-synopsys.c
+++ b/drivers/phy/broadcom/phy-brcm-usb-init-synopsys.c
@@ -59,6 +59,8 @@
 #define   USB_CTLR_TP_DIAG1_wake_MASK			BIT(1)
 #define USB_CTRL_CTLR_CSHCR		0x50
 #define   USB_CTRL_CTLR_CSHCR_ctl_pme_en_MASK		BIT(18)
+#define USB_CTRL_P0_U2PHY_CFG1		0x68
+#define   USB_CTRL_P0_U2PHY_CFG1_COMMONONN_MASK		BIT(10)
 
 /* Register definitions for the USB_PHY block in 7211b0 */
 #define USB_PHY_PLL_CTL			0x00
@@ -90,6 +92,8 @@
 #define   BDC_EC_AXIRDA_RTS_MASK			GENMASK(31, 28)
 #define   BDC_EC_AXIRDA_RTS_SHIFT			28
 
+#define USB_XHCI_GBL_GUSB2PHYCFG	0x100
+#define   USB_XHCI_GBL_GUSB2PHYCFG_U2_FREECLK_EXISTS_MASK	BIT(30)
 
 static void usb_mdio_write_7211b0(struct brcm_usb_init_params *params,
 				  uint8_t addr, uint16_t data)
@@ -140,13 +144,17 @@ static void xhci_soft_reset(struct brcm_usb_init_params *params,
 			int on_off)
 {
 	void __iomem *ctrl = params->regs[BRCM_REGS_CTRL];
+	void __iomem *xhci_gbl = params->regs[BRCM_REGS_XHCI_GBL];
 
 	/* Assert reset */
-	if (on_off)
+	if (on_off) {
 		USB_CTRL_UNSET(ctrl, USB_PM, XHC_SOFT_RESETB);
 	/* De-assert reset */
-	else
+	} else {
 		USB_CTRL_SET(ctrl, USB_PM, XHC_SOFT_RESETB);
+		/* Required for COMMONONN to be set */
+		USB_XHCI_GBL_UNSET(xhci_gbl, GUSB2PHYCFG, U2_FREECLK_EXISTS);
+	}
 }
 
 static void usb_init_ipp(struct brcm_usb_init_params *params)
@@ -320,6 +328,9 @@ static void usb_init_common_7216(struct brcm_usb_init_params *params)
 	/* 1 millisecond - for USB clocks to settle down */
 	usleep_range(1000, 2000);
 
+	/* Disable PHY when port is suspended */
+	USB_CTRL_SET(ctrl, P0_U2PHY_CFG1, COMMONONN);
+
 	usb_wake_enable_7216(params, false);
 	usb_init_common(params);
 }
diff --git a/drivers/phy/broadcom/phy-brcm-usb-init.h b/drivers/phy/broadcom/phy-brcm-usb-init.h
index f9fbf8fb80e5..c1a88f5cd4cd 100644
--- a/drivers/phy/broadcom/phy-brcm-usb-init.h
+++ b/drivers/phy/broadcom/phy-brcm-usb-init.h
@@ -34,6 +34,14 @@ enum brcmusb_reg_sel {
 	brcm_usb_ctrl_unset(USB_CTRL_REG(base, reg),		\
 			    USB_CTRL_##reg##_##field##_MASK)
 
+#define USB_XHCI_GBL_REG(base, reg) ((void __iomem *)base + USB_XHCI_GBL_##reg)
+#define USB_XHCI_GBL_SET(base, reg, field) \
+	brcm_usb_ctrl_set(USB_XHCI_GBL_REG(base, reg), \
+			  USB_XHCI_GBL_##reg##_##field##_MASK)
+#define USB_XHCI_GBL_UNSET(base, reg, field) \
+	brcm_usb_ctrl_unset(USB_XHCI_GBL_REG(base, reg), \
+			    USB_XHCI_GBL_##reg##_##field##_MASK)
+
 struct  brcm_usb_init_params;
 
 struct brcm_usb_init_ops {
-- 
2.7.4


--00000000000057212705fe309a2c
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
YIZIAWUDBAIBBQCggdQwLwYJKoZIhvcNAQkEMSIEINtZb5cf9qd15jixqpoWNzibUdqt9XGAeZoV
yIB+dGwQMBgGCSqGSIb3DQEJAzELBgkqhkiG9w0BBwEwHAYJKoZIhvcNAQkFMQ8XDTIzMDYxNTIw
MDYyNFowaQYJKoZIhvcNAQkPMVwwWjALBglghkgBZQMEASowCwYJYIZIAWUDBAEWMAsGCWCGSAFl
AwQBAjAKBggqhkiG9w0DBzALBgkqhkiG9w0BAQowCwYJKoZIhvcNAQEHMAsGCWCGSAFlAwQCATAN
BgkqhkiG9w0BAQEFAASCAQAUGRd6J79XMl1TNQvpI+YVqnKhJc0Iron9sd1BE1l5Kj+8tmTLD940
6IBH6SmD8E1sO55SBgmbexF5vSJnnnT04HcorzAneUj11TZyC9s9OoTT1gf7NIc+/LFDozdFPtUu
yotA+s1v1tTMjEg3Hl9YDpPqVucjjeSc9GN6QeMHRA4+WV6BYyEJzhZtgzHMqSusIfh9jo65paxP
IKTqJLoQ0oH56T3UoJX5C9EdMeAUppuc+hFC4MDuUnP4msQ7yrb3cyiOkLjGgGZKQ9fdIDXoz5Uh
GiaWr2jH7PF3gKx+yLyHfSM0dbftCImKn823a5e4Tdf+FXMbb5WVpqLm3GtK
--00000000000057212705fe309a2c--


--===============4545129588530576642==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============4545129588530576642==--

