Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 93087C5478C
	for <linux-phy@archiver.kernel.org>; Mon, 26 Feb 2024 23:46:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2SnwVrCKN9n005P6RrjA4ghDMTxlWtjGFQNfNGmHKyI=; b=eZKf/ZYd3rddt7
	XHYxy3heOVnfFOrf0VQH5IxRafKeY6BWA2WjuDgkiBEkApA23IzjkIbJkgH1KbrCA6Oj2TuKXqJ65
	EC58hwtYqTO7CTFEYq4YZvYIe87sulUXW0Et9e2T+iUDiYzOMjKbpp84/4pJIrv67g39wLRpMG41e
	1VrOepC61gOw9CfNykMtG8EZdzhtE0XPcGcDcOPfNzzFq0y/PvXtEtq7NWMLFsoVGrRG+xPNi9BTq
	chVfHg8UB3M9j1mjNJcHS6Z3MyWh9LyKFUlFqRnYb912r7qu9P4a5cZrQiso/CU+jkRcHCwLSYM/N
	Z1D1TUOEHla4mJsyyURA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rekfx-000000030Tw-14Iz;
	Mon, 26 Feb 2024 23:46:25 +0000
Received: from mail-io1-xd2f.google.com ([2607:f8b0:4864:20::d2f])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rekfP-000000030CR-0K5N;
	Mon, 26 Feb 2024 23:45:52 +0000
Received: by mail-io1-xd2f.google.com with SMTP id ca18e2360f4ac-7beda6a274bso169971039f.2;
        Mon, 26 Feb 2024 15:45:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1708991149; x=1709595949; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=knPaTIoFneZG5hrVEsT/YmqDcycwgQYY5PSRLonRAH0=;
        b=O3KQmT2N46qFu7Jr2tJhRzB0ZQ4pbK7uLQCa8fx3DXfvgExaTcq1+BWejeQIyDGlIr
         2HuT3nsU9JvDXnuj0oRsZjAZr43GXjkz/9mFEmAzb5XNS8bgtkYSh7h/PTDTVsPjI2nS
         eX1YL0Zvfm4OiC2xCgXjdvq+58JocwJ2ixYRmUD0FCLr1c5YF6AhoR/lQLAkAvr23TPI
         1bk3DAScfzdQ1+4vVWOcO6D3FDqg3RRQgFLTphoe6y5j5orsxxX2/lFpFpLPHSp6j9rg
         ssnh9Kiw5zOzAlatBFQV75pYYHQcGmsy4brlZbc2MO1Em7tTmsMkNNf+EgLgMAoy3E2c
         c2bQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708991149; x=1709595949;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=knPaTIoFneZG5hrVEsT/YmqDcycwgQYY5PSRLonRAH0=;
        b=Whe5zYUVbT99RkSjgcLJRZOLWXaJI8pU+GPmxzSFlbqKSvfkjLN1vGDyXLG8TI1LyP
         N13CsxDTk5uowB9Frsw3Fy6lIIOGnIuzyqqwE5qEqRoU0uRMQ+A321jBXDVvR3Q2pYHv
         P+svWcyeNcPP/3xHA4MfMEN7BTFcFycbc/dcN3Y4QJoHZBPVgoJdDc2RXUBMgMVL1ONB
         C6vn6KiDjew++AcGWG0MDHMJU+Ghcc+FSxppptwdMmPlZxKCFtejwQI8YxGC/3INf2wO
         7iqKhbGFFLBksC/7bCOta94O4dxK4QKDg+fLu62tffpz6l77V7iZt7cKyAH3tptIn5Dw
         vfRA==
X-Forwarded-Encrypted: i=1; AJvYcCVBk+vV8WaMV6EtWSpirRsYaU1v2HgFI752cGZ2qFDel1pFs85brOIIkUgEagUan0zq1nV18z0ja7urqOFFZETw/nDZN8hnWaC8BI8A0Q==
X-Gm-Message-State: AOJu0Yye8t8p8h2EeFMDxIC2FdFuWqU2kf95zRnDloQXQi0jla0yHDkY
	5wksn25HNHGjBY9yrGEfhfWgPqsRpuQCRZNy178UFYE5ipw1LvBFAMmYvGFYObhpBQ==
X-Google-Smtp-Source: AGHT+IHGXdeE0h7LKc2vsghd3XmTbOAHJo4wOu7BDYc0A1aaAW0t4XuHxS/AkRYcn3LhNnYqHf+PQQ==
X-Received: by 2002:a5d:91cd:0:b0:7c7:97c2:f04f with SMTP id k13-20020a5d91cd000000b007c797c2f04fmr10088960ior.8.1708991149640;
        Mon, 26 Feb 2024 15:45:49 -0800 (PST)
Received: from aford-System-Version.lan ([2601:447:d002:5be:9c95:d061:819a:2ab2])
        by smtp.gmail.com with ESMTPSA id c25-20020a023319000000b004741cf1e95esm1545317jae.11.2024.02.26.15.45.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 26 Feb 2024 15:45:49 -0800 (PST)
From: Adam Ford <aford173@gmail.com>
To: linux-arm-kernel@lists.infradead.org,
	linux-phy@lists.infradead.org
Cc: aford@beaconembedded.com,
	Adam Ford <aford173@gmail.com>,
	Luca Ceresoli <luca.ceresoli@bootlin.com>,
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
Subject: [PATCH V6 6/6] arm64: defconfig: Enable DRM_IMX8MP_DW_HDMI_BRIDGE as module
Date: Mon, 26 Feb 2024 17:45:17 -0600
Message-ID: <20240226234532.80114-7-aford173@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240226234532.80114-1-aford173@gmail.com>
References: <20240226234532.80114-1-aford173@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240226_154551_139894_B5A07C97 
X-CRM114-Status: UNSURE (   8.09  )
X-CRM114-Notice: Please train this message.
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

The i.MX8M Plus has support for an HDMI transmitter.  The
video is genereated by lcdif3, routed to the hdmi parallel
video interface, then fed to a DW HDMI bridge to support
up to 4K video output.

Signed-off-by: Adam Ford <aford173@gmail.com>
Reviewed-by: Luca Ceresoli <luca.ceresoli@bootlin.com>
Tested-by: Luca Ceresoli <luca.ceresoli@bootlin.com>
---
V6:  No Change

V5:  Added Review and tested-by from Luca
     No functional change since V1
---
 arch/arm64/configs/defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index 34681284043f..ee644d27652b 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -887,6 +887,7 @@ CONFIG_DRM_ANALOGIX_ANX7625=m
 CONFIG_DRM_I2C_ADV7511=m
 CONFIG_DRM_I2C_ADV7511_AUDIO=y
 CONFIG_DRM_CDNS_MHDP8546=m
+CONFIG_DRM_IMX8MP_DW_HDMI_BRIDGE=m
 CONFIG_DRM_DW_HDMI_AHB_AUDIO=m
 CONFIG_DRM_DW_HDMI_CEC=m
 CONFIG_DRM_IMX_DCSS=m
-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
