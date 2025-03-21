Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BF2C3C36000
	for <linux-phy@archiver.kernel.org>; Fri, 21 Mar 2025 14:04:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YWX2J1QeX442lrFakINUFVf3P+zt0z7+3Ngv04Zzv6w=; b=e6m8NlYbFdp16I
	Tj8e2XQ7W4+AaFCJ+nqUjxfDbg2WDV8gBzi5zshyy/xshiH/hD/mM4JOOho1RobwPKmmcrs/6DLKm
	eQ/Bm8xb9jfqPBkG8p1Yf6crcWwhE5fZu/JJzg8hN0afknRtWP1lHUW6S/1jhyblQHink4hJXRsac
	UuerhfFjKku0y3Kcn7E8mDOWEMHx3ZuHRAwHpfThPjJT89bjkOBEwApMLb5zbtGkHgFGb1d7/bIOC
	IGDK27yINDS9UGcNUmR1Wd4c0btkiES/IifLDQ3e/ydWedQpgYAVe7Zk6yhl0lK11Ka9T5dY2c0Z/
	BwBlYDXLtWxOUnVcVYmw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tvcyp-0000000F1lb-1aB9;
	Fri, 21 Mar 2025 14:04:11 +0000
Received: from mail-wr1-x42e.google.com ([2a00:1450:4864:20::42e])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tvcts-0000000F0Vc-03mf;
	Fri, 21 Mar 2025 13:59:05 +0000
Received: by mail-wr1-x42e.google.com with SMTP id ffacd0b85a97d-3965c995151so1057403f8f.1;
        Fri, 21 Mar 2025 06:59:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1742565542; x=1743170342; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=w5bLkk6uqPyWirFskOF6TYLbFYm64XVe1/MBmiWZndA=;
        b=NC5M5YR6OVJJ10T3VbCtx0ZCSCg5Gv5ow4rZL3NE/TPgpa/HXgYlJJTqgv9h63k+6S
         Sg2iSdmXbDpV66gKF5ysSJYE5RZv7HTwmlXqfx+dYtwLUzN01+4WSUY5SMWxvTf1QEOi
         3MuasQWYAdVSv/QVKr8dVmod4abBeB9HBBPnGfVQ+/EiO0Z7vwTScTbSmUoAk5mRfaBw
         vJ2ouFzdmBwOsUmVTOKoIvm9Pwo98pcbcOMjhvmMDkYRrvvyQM+STDf3tcd4xWNJS3cA
         yVGKViUmGusU8oPFSz6+TK3YGsA5tBEgBVENBsdf+1+U6S55C4ilkd/enZ9mmdMF2ITJ
         sOyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742565542; x=1743170342;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=w5bLkk6uqPyWirFskOF6TYLbFYm64XVe1/MBmiWZndA=;
        b=L/4QIexRgdYTUGyO1bOS1LDBHFPXJvFT8gBMKdNZOQ1yeZL+jpuqN+U1vJL1Z9Kl3G
         SUvsnxagPw8FE8PK4T7shoccte4CRWplXlV+JRAu6a7eojfcXAzFEiKYC7EfJD+CNqXP
         YK3XId4MmI4lNHTXES103EPLzTWF5B1CX5QTLtm4iiqdT65LdSiOU2BhT0TYCZbdhjBi
         uPCsn4oy3Ml3bSBQvH51nbWMRrCRUYhQDS3+EGNKxoUeZ5+VnSwlqCZ3op0Wvhvs2fze
         Wzz47WSGP/reR9XXaesv2bHoUOGU+iQT8tuHEoTsVnXmfkbmLHYr8wjzAe7tKjo1gPBW
         srLg==
X-Forwarded-Encrypted: i=1; AJvYcCWF379LcQSZt8ANkxWrCuYdtoAL/7cIyOosnPeEzAcbdPpjm/c8tI7m62LfDWKkn6WleXVZVx3iAeIr@lists.infradead.org, AJvYcCWk0J4jBW8rCAQsO7RacvyBnqjAxojXJrbjsIfhIJypNyeCDgcO3raX+e/LjhoET9kJsFxMN8GPUh8y9t+ODgxn@lists.infradead.org
X-Gm-Message-State: AOJu0Yy0uw3t0wW0UP7/yk3EQTUs3+MVWSbvr9jdxQSya1ElwYxGqbue
	/0uYOEd4Jijgz9Bgy6P6kFPueTE26PmfIYEIH+e/bisweVFv0h9D
X-Gm-Gg: ASbGnctemfeih1AjpX02ItOUUovAlH9VfFWxI/gSnz6JOpLy7KVtZsb2Dwse5uaf5U8
	/aqEAxoFYPRziD+pko6KMZajv2lEHgwBlXayW4xTI+6EJWxemedniCGrjwZGSRYwzmmZP1kzhap
	GtWIudEmfl0OHc56KYICciHuf8swUjAtjmxlwqyDatwcqNqCXMB53/JCv0MKI2e2w4tGR2URusY
	zASJjRvB6/aBKbGxFfIcPBD0m2faBpbhVjveCc9z2g6Lp1+kDfzt0J4+SuAr7EELfCrnrcT8rMF
	oRB3lAqIpa/QPaivF6lgsQiQGUeaGck0GlExKmJZ9BQb9XmpdUkS3OB0dc4X1B8ghzb4oXdeqEo
	nnL95oryvlSgO7CVk9cPw
X-Google-Smtp-Source: AGHT+IHNOmMa9KW3MUdMo1gO9oj/91uP7LkUin/DdC6+LBE4xrKRJwfNY8vmAFeiFQoQQMTRjkFDAQ==
X-Received: by 2002:a5d:584b:0:b0:390:f9a5:bd79 with SMTP id ffacd0b85a97d-3997f90ab9emr3286675f8f.26.1742565542199;
        Fri, 21 Mar 2025 06:59:02 -0700 (PDT)
Received: from ivaylo-T580.. (91-139-201-119.stz.ddns.bulsat.com. [91.139.201.119])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3997f9e6651sm2437162f8f.75.2025.03.21.06.59.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 21 Mar 2025 06:59:01 -0700 (PDT)
From: Ivaylo Ivanov <ivo.ivanov.ivanov1@gmail.com>
To: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Marek Szyprowski <m.szyprowski@samsung.com>,
	Sylwester Nawrocki <s.nawrocki@samsung.com>,
	Abel Vesa <abel.vesa@linaro.org>
Cc: linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org
Subject: [PATCH v3 03/10] phy: move phy-qcom-snps-eusb2 out of its vendor sub-directory
Date: Fri, 21 Mar 2025 15:58:47 +0200
Message-ID: <20250321135854.1431375-4-ivo.ivanov.ivanov1@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250321135854.1431375-1-ivo.ivanov.ivanov1@gmail.com>
References: <20250321135854.1431375-1-ivo.ivanov.ivanov1@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250321_065904_051057_3EB0215E 
X-CRM114-Status: GOOD (  12.53  )
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

As not only Qualcomm, but also Samsung is using the Synopsys eUSB2 IP
(albeit with a different register layout) in their newer SoCs, move the
driver out of its vendor sub-directory and rename it to phy-snps-eusb2.

Signed-off-by: Ivaylo Ivanov <ivo.ivanov.ivanov1@gmail.com>
Suggested-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 drivers/phy/Kconfig                                      | 8 ++++++++
 drivers/phy/Makefile                                     | 1 +
 .../{qualcomm/phy-qcom-snps-eusb2.c => phy-snps-eusb2.c} | 0
 drivers/phy/qualcomm/Kconfig                             | 9 ---------
 drivers/phy/qualcomm/Makefile                            | 1 -
 5 files changed, 9 insertions(+), 10 deletions(-)
 rename drivers/phy/{qualcomm/phy-qcom-snps-eusb2.c => phy-snps-eusb2.c} (100%)

diff --git a/drivers/phy/Kconfig b/drivers/phy/Kconfig
index 8d58efe99..11c166204 100644
--- a/drivers/phy/Kconfig
+++ b/drivers/phy/Kconfig
@@ -43,6 +43,14 @@ config PHY_PISTACHIO_USB
 	help
 	  Enable this to support the USB2.0 PHY on the IMG Pistachio SoC.
 
+config PHY_SNPS_EUSB2
+	tristate "SNPS eUSB2 PHY Driver"
+	depends on OF && (ARCH_QCOM || COMPILE_TEST)
+	select GENERIC_PHY
+	help
+	  Enable support for the USB high-speed SNPS eUSB2 phy on select
+	  SoCs. The PHY is usually paired with a Synopsys DWC3 USB controller.
+
 config PHY_XGENE
 	tristate "APM X-Gene 15Gbps PHY support"
 	depends on HAS_IOMEM && OF && (ARCH_XGENE || COMPILE_TEST)
diff --git a/drivers/phy/Makefile b/drivers/phy/Makefile
index e281442ac..c670a8dac 100644
--- a/drivers/phy/Makefile
+++ b/drivers/phy/Makefile
@@ -9,6 +9,7 @@ obj-$(CONFIG_PHY_CAN_TRANSCEIVER)	+= phy-can-transceiver.o
 obj-$(CONFIG_PHY_LPC18XX_USB_OTG)	+= phy-lpc18xx-usb-otg.o
 obj-$(CONFIG_PHY_XGENE)			+= phy-xgene.o
 obj-$(CONFIG_PHY_PISTACHIO_USB)		+= phy-pistachio-usb.o
+obj-$(CONFIG_PHY_SNPS_EUSB2)		+= phy-snps-eusb2.o
 obj-$(CONFIG_USB_LGM_PHY)		+= phy-lgm-usb.o
 obj-$(CONFIG_PHY_AIROHA_PCIE)		+= phy-airoha-pcie.o
 obj-$(CONFIG_PHY_NXP_PTN3222)		+= phy-nxp-ptn3222.o
diff --git a/drivers/phy/qualcomm/phy-qcom-snps-eusb2.c b/drivers/phy/phy-snps-eusb2.c
similarity index 100%
rename from drivers/phy/qualcomm/phy-qcom-snps-eusb2.c
rename to drivers/phy/phy-snps-eusb2.c
diff --git a/drivers/phy/qualcomm/Kconfig b/drivers/phy/qualcomm/Kconfig
index 846f8c995..914547068 100644
--- a/drivers/phy/qualcomm/Kconfig
+++ b/drivers/phy/qualcomm/Kconfig
@@ -125,15 +125,6 @@ config PHY_QCOM_QUSB2
 	  PHY which is usually paired with either the ChipIdea or Synopsys DWC3
 	  USB IPs on MSM SOCs.
 
-config PHY_QCOM_SNPS_EUSB2
-	tristate "Qualcomm SNPS eUSB2 PHY Driver"
-	depends on OF && (ARCH_QCOM || COMPILE_TEST)
-	select GENERIC_PHY
-	help
-	  Enable support for the USB high-speed SNPS eUSB2 phy on Qualcomm
-	  chipsets. The PHY is paired with a Synopsys DWC3 USB controller
-	  on Qualcomm SOCs.
-
 config PHY_QCOM_EUSB2_REPEATER
 	tristate "Qualcomm SNPS eUSB2 Repeater Driver"
 	depends on OF && (ARCH_QCOM || COMPILE_TEST)
diff --git a/drivers/phy/qualcomm/Makefile b/drivers/phy/qualcomm/Makefile
index eb60e950a..2121e92df 100644
--- a/drivers/phy/qualcomm/Makefile
+++ b/drivers/phy/qualcomm/Makefile
@@ -15,7 +15,6 @@ obj-$(CONFIG_PHY_QCOM_QMP_USB)		+= phy-qcom-qmp-usb.o
 obj-$(CONFIG_PHY_QCOM_QMP_USB_LEGACY)	+= phy-qcom-qmp-usb-legacy.o
 
 obj-$(CONFIG_PHY_QCOM_QUSB2)		+= phy-qcom-qusb2.o
-obj-$(CONFIG_PHY_QCOM_SNPS_EUSB2)	+= phy-qcom-snps-eusb2.o
 obj-$(CONFIG_PHY_QCOM_EUSB2_REPEATER)	+= phy-qcom-eusb2-repeater.o
 obj-$(CONFIG_PHY_QCOM_USB_HS) 		+= phy-qcom-usb-hs.o
 obj-$(CONFIG_PHY_QCOM_USB_HSIC) 	+= phy-qcom-usb-hsic.o
-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
