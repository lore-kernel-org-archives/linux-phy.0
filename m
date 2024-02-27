Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7977EC54798
	for <linux-phy@archiver.kernel.org>; Tue, 27 Feb 2024 22:05:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=uV5/KS6sVGYi3BzU61vO9olpw9EMBvrzT/QPHinVaXg=; b=QLCgNe7FmSeH6f
	JsgcZEax4s47AdqpJ62/3KFABMh0KTIWXu7ZrzQtXMYTSj/jTRi3Ul5bC+YzhGzPxkWS3qcizH/Bs
	7n79EV73UwkRnhlkxzXJKPM08STQv0+P4sRxf6ajectlRIDsxGHv+KFQtASD5jA/kXTTU2MxEsaVo
	3JlCEf/b9lIwTdjYWpcrRoLmPYUswa+j3wPPnPY0nOA9XSnztz+PnfSJSy5vWw0adC6r39qeUyaOC
	gxUR5BEsJ3gkVQTYuwl1TUEZc5iXvMOj/4u8oAeFHvwMXZnfaP9fOljHOO/TM8uuSQ1/usS2N1JwK
	r96f+/VcoWIBuFUat+vA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rf5ZP-000000070Qq-0GlE;
	Tue, 27 Feb 2024 22:05:03 +0000
Received: from mail-qv1-xf2f.google.com ([2607:f8b0:4864:20::f2f])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rf5ZL-000000070PT-3G6Y;
	Tue, 27 Feb 2024 22:05:01 +0000
Received: by mail-qv1-xf2f.google.com with SMTP id 6a1803df08f44-68f51c5f9baso27366066d6.3;
        Tue, 27 Feb 2024 14:04:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1709071498; x=1709676298; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=esEHp5IAk1LAFDu21p5+aFW04wAykxOmP5opQf8qNeE=;
        b=RLwPO7n7M045ThrNM6fYegd29l1warwdSonUx8OyQk7CqRCUxcV02enqMQMkLc84jq
         FehSVuQUGoBls3J4XPVp+Cl0aEVY9TxqMdPwkNuVqhts3jakiPbbsBa63NuDPQJEk9Qw
         /rVimpQOlIXjiTw8avrtVMqgm1cyOXtJ0S8RBvZwOWo7v3rgzH/+CfORIoSfk2yjaD6k
         GMK59k9o7utDt00AG3dJriMq4j+JE2/HDav5ZDVpK40tWGCU973V65bDAnju8on8ps+j
         MQWL4HkIyrye0sW/PC56tqi353KV33bk+lk4TU7F/7DGwCwug1XoaTo1qiKw7rFCQETt
         V4MQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709071498; x=1709676298;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=esEHp5IAk1LAFDu21p5+aFW04wAykxOmP5opQf8qNeE=;
        b=QeqK8Ro5j9gsIrRh0kgmX6vDwjsgVx+NlfrX4S6FWcPg2vA2orbEe/fNihTNDQovLz
         GDZSEOlk8u6JvWygMgZBbTu242XkZ3h8ftY1Y5YXkn4O/oaFwMq4vz8ttFgsltCZpSGw
         yCANWo2yo03gFjIgpqYWkCCNYTwur+Dw4qM+Zz/h8UY1GP7lXoDZcnATb2J2FJxlGd/B
         bCOBASGGyb9yrsKb3IIwADMgbEzKtbiUOyLdC5gPno7ckA+mo/vlFibJdCqXiqrLKqrP
         +oR++V3YRhkvQ8cVGLM8W0PKBKjbs8cugq+IduRrjZjzB3jttX2tnv60pio9IHZ6GXEc
         /N5A==
X-Forwarded-Encrypted: i=1; AJvYcCV2j8ymPnlTXyq+77Np8P+P4ijeHXEF77U8A18E7DikNK9Bjn3TV2yqYwY2LpaQDLVYxrzMWiQiJ9GNTmCDVAgE5LTH+L1f4ni+yJG2nQ==
X-Gm-Message-State: AOJu0YxFeiu13es3ulIs/iy9xrstlgU6kfJV+9Op6ky/ecMWHAT7+gIE
	vT+i6wc/BjXV/RNgBUIfOOmJ5mgcmSeO8ngzq4EHqlv+0ibI1Uh1gH8a825J/CKk9hwM
X-Google-Smtp-Source: AGHT+IGn5PgBGXXbtL2C99AFGADyDEM2sFQipHcdN8gdgBqVvbj3IceMPZ+eiCvp0jaeqsS+XJ6VjQ==
X-Received: by 2002:ad4:5ceb:0:b0:68e:e9d2:3e3 with SMTP id iv11-20020ad45ceb000000b0068ee9d203e3mr4169150qvb.46.1709071497829;
        Tue, 27 Feb 2024 14:04:57 -0800 (PST)
Received: from aford-System-Version.lan ([2601:447:d002:5be:9ee3:b2ab:6ca:180d])
        by smtp.gmail.com with ESMTPSA id c12-20020a0ce14c000000b0068fc55bcf6asm4569556qvl.119.2024.02.27.14.04.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Feb 2024 14:04:57 -0800 (PST)
From: Adam Ford <aford173@gmail.com>
To: linux-arm-kernel@lists.infradead.org,
	linux-phy@lists.infradead.org
Cc: aford@beaconembedded.com,
	Adam Ford <aford173@gmail.com>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>,
	Lucas Stach <l.stach@pengutronix.de>,
	devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-kernel@vger.kernel.org
Subject: [PATCH V7 0/6] soc: imx8mp: Finish support for HDMI
Date: Tue, 27 Feb 2024 16:04:34 -0600
Message-ID: <20240227220444.77566-1-aford173@gmail.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240227_140459_843149_F31AEDB1 
X-CRM114-Status: GOOD (  17.69  )
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

The i.MX8M Plus has an HDMI controller, which depends on several
other systems.  The Parallel Video Interface (PVI) and the
HDMI-TX are already in the Linux-Next staging area 20240209, but
the HDMI PHY driver and several device trees updates are still needed.

This series is adapted from multiple series from Lucas Stach with
edits and suggestions from feedback from various attempts, but it
since it's difficult to use and test them independently,
I merged them into on unified series.  The version history is a
bit ambiguous since different components were submitted at different
times and had different amount of attempts.

The previous attempt I did used the wrong starting point for the PHY,
so this update includes a newer starting point with tags from that version
and fixes from various people's feedback.  I hope I caught them all, but
I apologize if I missed something. Any tags from the previous attempt I
made were intentionally dropped, because of the significant change,
but I kept tags from the newer version I grabbed from patchwork.

Because several items from the last attempt were merged, this
series is only focussed on adding the HDMI PHY driver, and enabling
the power domain, irqsteer interrupt controller, and HDMI pipeline
in the device tree. The version numbers are a bit strange since
these all got pulled from various attempts with different versions,
but I wanted to push them together as a series to complete the pending
work.

This series restarted at V4 based on the version of the PHY driver and
the other drivers and power-domain changes have been applied already.

V7:  Patch 5/7 marks the PVI driver disabled by default to prevent
     EPROBE_DEFER errors.

     No other changes to other patches in the series

V6:  Make the PHY driver depend on COMMON_CLK to fix build errors
     Make LCDIF3 disabled by default since it depends on hardware.

V5 primarily updates feedback from the PHY driver itself, but a small
   adjustment was made to the register size in the device tree.
Adam Ford (1):
  arm64: defconfig: Enable DRM_IMX8MP_DW_HDMI_BRIDGE as module


Adam Ford (1):
  arm64: defconfig: Enable DRM_IMX8MP_DW_HDMI_BRIDGE as module

Lucas Stach (5):
  dt-bindings: phy: add binding for the i.MX8MP HDMI PHY
  phy: freescale: add Samsung HDMI PHY
  arm64: dts: imx8mp: add HDMI power-domains
  arm64: dts: imx8mp: add HDMI irqsteer
  arm64: dts: imx8mp: add HDMI display pipeline

 .../bindings/phy/fsl,imx8mp-hdmi-phy.yaml     |  62 ++
 arch/arm64/boot/dts/freescale/imx8mp.dtsi     | 147 ++++
 arch/arm64/configs/defconfig                  |   1 +
 drivers/phy/freescale/Kconfig                 |   6 +
 drivers/phy/freescale/Makefile                |   1 +
 drivers/phy/freescale/phy-fsl-samsung-hdmi.c  | 720 ++++++++++++++++++
 6 files changed, 937 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/phy/fsl,imx8mp-hdmi-phy.yaml
 create mode 100644 drivers/phy/freescale/phy-fsl-samsung-hdmi.c

-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
