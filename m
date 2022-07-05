Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ED021CCA47B
	for <linux-phy@archiver.kernel.org>; Tue,  5 Jul 2022 17:27:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=AAp+BZ05BVm/QDNpX0Y8d0iFAKiE5hIQOE0WfaGgJHw=; b=vCa
	eTSUd9B52cPDMVy/0csQzdFdPv6XelYYhnYB0SjuvwLxZlw0CoMbasKvhfOKlNCLjx9XoqHzNPwv6
	ilp5+EDvH08XnzUcYuWEjmBcGo20w6oNkJNcPpt59sNT7xrnGfh3m4z4bnyqb8n/KDpIS8+2tKNvm
	wXnHX67QJ5OkGmyfxB5Nb+iPGhPDpU47xp6LkPahZ4O0w0iRQQT4hl6ggpvCNDpFzOikCgujYCgfY
	pWsGalZoyu3ElTgYOXiSNQSfOgubF1ANlH4fVNwD4UXk6FgfGyv2CGftTl0yDzBpc0bV2Cq234Ew/
	EnlaaTGqLjSDJqT9uzndzI1R6j+5wPA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8mKU-001rb4-B0; Tue, 05 Jul 2022 17:27:18 +0000
Received: from mail-qt1-x82b.google.com ([2607:f8b0:4864:20::82b])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8mKP-001rZe-P3
	for linux-phy@lists.infradead.org; Tue, 05 Jul 2022 17:27:17 +0000
Received: by mail-qt1-x82b.google.com with SMTP id g14so14694615qto.9
        for <linux-phy@lists.infradead.org>; Tue, 05 Jul 2022 10:27:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google;
        h=from:to:cc:subject:date:message-id:mime-version;
        bh=n/sPG6C1XFzRZTNv1zEFeaBdo0WDbMM1yrRVx+B/Fwo=;
        b=ZZe9d9mU9xZ268PnJnSx7CnkGpkp+FGbUdaSNrZtezglAVTazTOhKA0AWgy1FcDg1V
         Kuu6vGEWYGZ6YiMOnn8WaDw0G11tpMrP7mKuryXUiqV1eQIt4Ul1QtkyRNdkiDZ8YFtP
         eqBGj3uFFqEvVR7uD7q7fcQIsyhjU5HNB08rw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version;
        bh=n/sPG6C1XFzRZTNv1zEFeaBdo0WDbMM1yrRVx+B/Fwo=;
        b=fpklC3d0GAXYwiFlkod+tFcgvSbTRG7vlssOJh1dWyS65NHHo1n3Cy1w0KthxP0pmI
         H1JAU5CrjHow4glIlcpnmWly+ONn3F6hsyG07oxV2KN82EvM0RJvHZM+MIbUUilOLBLF
         MsAb/+5sAZn2PaVhxvYPAD8lPeMACmfEF8dRHR/cYRWu6WOdKR6hSbU/g23MAchNf9y8
         rZY63Ju7t8/DRNG10rL3apU/gsQbiZMuohSLG/cCAIOsm9JfRG9yGmj+WOAR9uZpNXSR
         liS4i80IiL+h9CF+f3ksx3Di7M7+Hz6zXOhVXHTHcpAnJlDls180dfAaY0vlenaIHtn3
         rNwA==
X-Gm-Message-State: AJIora8RF943KfuS4sLJfzNHvA8cohfIsQNR6606nTSirRM1AB9X91Y9
	HkBbjtdDHfc/xrwj8lj0IS2hYw==
X-Google-Smtp-Source: AGRyM1vOVkXysb0YxR84eHakGgsbHGQgGl1iVwbyjJOjUVtejkZXor5EdPQQsA1F1Wx/mschZEKEQA==
X-Received: by 2002:a05:6214:250c:b0:472:6e5e:e2f3 with SMTP id gf12-20020a056214250c00b004726e5ee2f3mr32999791qvb.45.1657042031661;
        Tue, 05 Jul 2022 10:27:11 -0700 (PDT)
Received: from ubuntu-22.localdomain ([192.19.222.250])
        by smtp.gmail.com with ESMTPSA id d8-20020ac85ac8000000b00304e70585f9sm24439851qtd.72.2022.07.05.10.27.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 05 Jul 2022 10:27:10 -0700 (PDT)
From: William Zhang <william.zhang@broadcom.com>
To: Linux ARM List <linux-arm-kernel@lists.infradead.org>
Cc: joel.peshkin@broadcom.com,
	kursad.oney@broadcom.com,
	f.fainelli@gmail.com,
	anand.gore@broadcom.com,
	Broadcom Kernel List <bcm-kernel-feedback-list@broadcom.com>,
	philippe.reynes@softathome.com,
	dan.beygelman@broadcom.com,
	William Zhang <william.zhang@broadcom.com>,
	Al Cooper <alcooperx@gmail.com>,
	Andre Przywara <andre.przywara@arm.com>,
	Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
	Ard Biesheuvel <ardb@kernel.org>,
	Arnd Bergmann <arnd@arndb.de>,
	Cai Huoqing <cai.huoqing@linux.dev>,
	Conor Dooley <conor.dooley@microchip.com>,
	Damien Le Moal <damien.lemoal@opensource.wdc.com>,
	Dmitry Osipenko <digetx@gmail.com>,
	Eugen Hristev <eugen.hristev@microchip.com>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Herbert Xu <herbert@gondor.apana.org.au>,
	Jan Dabros <jsd@semihalf.com>,
	Jarkko Nikula <jarkko.nikula@linux.intel.com>,
	Jie Deng <jie.deng@intel.com>,
	Jiri Slaby <jirislaby@kernel.org>,
	Joel Stanley <joel@jms.id.au>,
	Kavyasree Kotagiri <kavyasree.kotagiri@microchip.com>,
	Kishon Vijay Abraham I <kishon@ti.com>,
	Krzysztof Kozlowski <krzk@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Lukas Bulwahn <lukas.bulwahn@gmail.com>,
	Mark Brown <broonie@kernel.org>,
	Matt Mackall <mpm@selenic.com>,
	Michael Turquette <mturquette@baylibre.com>,
	Michael Walle <michael@walle.cc>,
	Nathan Chancellor <nathan@kernel.org>,
	Nicolas Ferre <nicolas.ferre@microchip.com>,
	Olof Johansson <olof@lixom.net>,
	=?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>,
	Ray Jui <rjui@broadcom.com>,
	Rob Herring <robh+dt@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Russell King <linux@armlinux.org.uk>,
	Sam Protsenko <semen.protsenko@linaro.org>,
	Scott Branden <sbranden@broadcom.com>,
	Stephan Gerhold <stephan@gerhold.net>,
	Stephen Boyd <sboyd@kernel.org>,
	Sunil Goutham <sgoutham@marvell.com>,
	Sven Peter <sven@svenpeter.dev>,
	Thierry Reding <treding@nvidia.com>,
	Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
	Tyrone Ting <kfting@nuvoton.com>,
	Vinod Koul <vkoul@kernel.org>,
	Wolfram Sang <wsa@kernel.org>,
	devicetree@vger.kernel.org,
	linux-clk@vger.kernel.org,
	linux-crypto@vger.kernel.org,
	linux-i2c@vger.kernel.org,
	linux-ide@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-serial@vger.kernel.org,
	linux-spi@vger.kernel.org,
	soc@kernel.org
Subject: [PATCH 0/9] arm: bcmbca: Move BCM63138 SoC support under ARCH_BCMBCA
Date: Tue,  5 Jul 2022 10:26:04 -0700
Message-Id: <20220705172613.21152-1-william.zhang@broadcom.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220705_102713_935979_E2E799A3 
X-CRM114-Status: GOOD (  15.93  )
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
Content-Type: multipart/mixed; boundary="===============5255828684788921402=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

--===============5255828684788921402==
Content-Type: multipart/signed; protocol="application/pkcs7-signature"; micalg=sha-256;
	boundary="000000000000b1f2b705e3122910"

--000000000000b1f2b705e3122910
Content-Transfer-Encoding: 8bit

Now that Broadcom Broadband arch ARCH_BCMBCA is in the kernel, this change
migrates the existing broadband chip BCM63138 support to ARCH_BCMBCA. It also
delete the old ARCH_BCM_63XX config as no other chip uses it.

Verified on BCM963138REF board with ramdisk boot.


William Zhang (9):
  dt-bindings: arm: add BCM63138 SoC
  ARM: dts: Move BCM963138DVT board dts to ARCH_BCMBCA
  ARM: dts: update dts files for bcmbca SoC BCM63138
  ARM: dts: Add BCM63138 generic board dts
  arm: bcmbca: Replace ARCH_BCM_63XX with ARCH_BCMBCA
  arm: bcmbca: Move BCM63138 ARCH_BCM_63XX config to ARCH_BCMBCA
  arm: bcmbca: Add BCMBCA sub platforms
  MAINTAINERS: Move BCM63138 to bcmbca arch entry
  ARM: multi_v7_defconfig: Update configs for BCM63138

 .../bindings/arm/bcm/brcm,bcmbca.yaml         |  8 +++
 MAINTAINERS                                   | 10 +--
 arch/arm/Kconfig.debug                        |  2 +-
 arch/arm/boot/dts/Makefile                    |  4 +-
 arch/arm/boot/dts/bcm63138.dtsi               | 18 +++---
 arch/arm/boot/dts/bcm963138.dts               | 26 ++++++++
 arch/arm/boot/dts/bcm963138dvt.dts            |  8 +--
 arch/arm/configs/multi_v7_defconfig           |  4 +-
 arch/arm/mach-bcm/Kconfig                     | 61 +++++++++++++------
 arch/arm/mach-bcm/Makefile                    |  7 +--
 arch/arm/mach-bcm/bcm63xx.c                   | 17 ------
 drivers/ata/Kconfig                           |  2 +-
 drivers/char/hw_random/Kconfig                |  2 +-
 drivers/clk/bcm/Kconfig                       |  4 +-
 drivers/i2c/busses/Kconfig                    |  2 +-
 drivers/phy/broadcom/Kconfig                  |  2 +-
 drivers/spi/Kconfig                           |  2 +-
 drivers/tty/serial/Kconfig                    |  4 +-
 18 files changed, 108 insertions(+), 75 deletions(-)
 create mode 100644 arch/arm/boot/dts/bcm963138.dts
 delete mode 100644 arch/arm/mach-bcm/bcm63xx.c

-- 
2.34.1


--000000000000b1f2b705e3122910
Content-Type: application/pkcs7-signature; name="smime.p7s"
Content-Transfer-Encoding: base64
Content-Disposition: attachment; filename="smime.p7s"
Content-Description: S/MIME Cryptographic Signature

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
TltlrAeBKRJ1M9O/DY5v7L1Yrs//7XIRg/d2ZPAOSGBQzFYjYTFWwNBiR1s1zP0m2y56DPbS5gwj
fqAN/I4PJHIvTh3zUgHXNKadYoYRiPHXfaTWO9UhzysOpQIDAQABo4IB2zCCAdcwDgYDVR0PAQH/
BAQDAgWgMIGjBggrBgEFBQcBAQSBljCBkzBOBggrBgEFBQcwAoZCaHR0cDovL3NlY3VyZS5nbG9i
YWxzaWduLmNvbS9jYWNlcnQvZ3NnY2NyM3BlcnNvbmFsc2lnbjJjYTIwMjAuY3J0MEEGCCsGAQUF
BzABhjVodHRwOi8vb2NzcC5nbG9iYWxzaWduLmNvbS9nc2djY3IzcGVyc29uYWxzaWduMmNhMjAy
MDBNBgNVHSAERjBEMEIGCisGAQQBoDIBKAowNDAyBggrBgEFBQcCARYmaHR0cHM6Ly93d3cuZ2xv
YmFsc2lnbi5jb20vcmVwb3NpdG9yeS8wCQYDVR0TBAIwADBJBgNVHR8EQjBAMD6gPKA6hjhodHRw
Oi8vY3JsLmdsb2JhbHNpZ24uY29tL2dzZ2NjcjNwZXJzb25hbHNpZ24yY2EyMDIwLmNybDAlBgNV
HREEHjAcgRp3aWxsaWFtLnpoYW5nQGJyb2FkY29tLmNvbTATBgNVHSUEDDAKBggrBgEFBQcDBDAf
BgNVHSMEGDAWgBSWM9HmWBdbNHWKgVZk1b5I3qGPzzAdBgNVHQ4EFgQUohM5GmNlGWe5wpzDxzIy
+EgzbRswDQYJKoZIhvcNAQELBQADggEBACKu9JSQAYTlmC+JTniO/C/UcXGonATI/muBjWTxtkHc
abZtz0uwzzrRrpV+mbHLGVFFeRbXSLvcEzqHp8VomXifEZlfsE9LajSehzaqhd+np+tmUPz1RlI/
ibZ7vW+1VF18lfoL+wHs2H0fsG6JfoqZldEWYXASXnUrs0iTLgXxvwaQj69cSMuzfFm1X5kWqWCP
W0KkR8025J0L5L4yXfkSO6psD/k4VcTsMJHLN4RfMuaXIT6EM0cNO6h3GypyTuPf1N1X+F6WQPKb
1u+rvdML63P9fX7e7mwwGt5klRnf8aK2VU7mIdYCcrFHaKDTW3fkG6kIgrE1wWSgiZYL400xggJt
MIICaQIBATBrMFsxCzAJBgNVBAYTAkJFMRkwFwYDVQQKExBHbG9iYWxTaWduIG52LXNhMTEwLwYD
VQQDEyhHbG9iYWxTaWduIEdDQyBSMyBQZXJzb25hbFNpZ24gMiBDQSAyMDIwAgw28eX6TfvsbNfu
SIMwDQYJYIZIAWUDBAIBBQCggdQwLwYJKoZIhvcNAQkEMSIEIJzZcMrLCPErIibvl0hXUANg4zg4
ed6ZN3tb0yJx/4VmMBgGCSqGSIb3DQEJAzELBgkqhkiG9w0BBwEwHAYJKoZIhvcNAQkFMQ8XDTIy
MDcwNTE3MjcxMlowaQYJKoZIhvcNAQkPMVwwWjALBglghkgBZQMEASowCwYJYIZIAWUDBAEWMAsG
CWCGSAFlAwQBAjAKBggqhkiG9w0DBzALBgkqhkiG9w0BAQowCwYJKoZIhvcNAQEHMAsGCWCGSAFl
AwQCATANBgkqhkiG9w0BAQEFAASCAQDPYP0sJ5RAbvzNwmxKl8TGITAELC7t1EGKP4PsS/8TDFYx
hM59y1oFRsk7qUSxg0SrfBoZ57bwGwIl8orZRhNAgcZn11Vnxf2R6kORMjXIC0NKe71aYQREY2wj
WmJz0dea3cGwKbsNIFXlCq4YXjp3oPu2dmv9VDW/N7vlhOcbfCSPP+EeoPAVQrmJ3Fn+MJLOCGOW
7I5hwg0faEcbj32AEOJPha681Gg/vWlsGuc2itYJkoRbHtdZPpvTOIlQ6WO2O1xwqr60tQi3w8uo
K/P0yViS5O3/zrmMxnbgxDYy04KdGP/D3Gi4Nx2btrbS+wQ6H0huen6PqIELW6E3sKvZ
--000000000000b1f2b705e3122910--


--===============5255828684788921402==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============5255828684788921402==--

