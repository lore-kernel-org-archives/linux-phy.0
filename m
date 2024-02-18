Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B8D70C4829E
	for <linux-phy@archiver.kernel.org>; Sun, 18 Feb 2024 04:17:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ceLfHkfm+A8zMAz8K/Zl8vQ9z0oXJZmoZ/5OO1MzeFk=; b=aAXaSRK/OORes/
	zjTYKoGWulGnLzYzLqRVVh24X8AkJMjkXizVvKhI0raMMwQSTPNJxyY+DwrNX4BleeqWcKCOtujc0
	Biw0DHMcZmPHXaADSoK0ycBnJ78soHsoe2oTIm4yJ/1fKBF5nVMhA0Ogg4Dbu4WEIlHeOUV0H7t5d
	toWN2tBQ9T520uYClTGdM2iXHZVvAD4Bh8ZVz9CFOJZTBQ2UhPgOnJ6hmySGf/mRQycU2fwFfAps+
	YtIzZNFgSyFepSWJciLgR88QzSx/NNmW7yM7QF4H8k8crr1BZCEy4khhzUNiaOVqCx5noaBNsOqcH
	9Jc42mDavnMqXuFL9Www==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rbYcX-00000006xXB-10ds;
	Sun, 18 Feb 2024 04:17:41 +0000
Received: from mail-qv1-xf36.google.com ([2607:f8b0:4864:20::f36])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rbYc7-00000006xHj-2bni;
	Sun, 18 Feb 2024 04:17:16 +0000
Received: by mail-qv1-xf36.google.com with SMTP id 6a1803df08f44-68ca1db07ceso21046886d6.2;
        Sat, 17 Feb 2024 20:17:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1708229834; x=1708834634; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/4DhMuxys/34mkhk6GaLGZiP3UVmIiKa+UwrnIlKa10=;
        b=I+8TTQoUc23/26fSfuQ8Zp+Hxy3OfSrdCZV7Xg1aEWwizRAlpdXeYxQKzHVp1AOw4w
         en5o4SoLTXOSUbsoxMIGHDBGOBTovV9aWhZiUZOBB64VFNbZoy5WFv3q9S/uDJ9QbzUA
         ojeN5KBuwtiv6B5PzQMzYq7r6SzXbPRGxw+GdgAavCnvGebNpuueEiDiy3idoK8HyeId
         baS9TVD5bwPGTirEzSmnL/LMm6y0ge8ou6apWDSGBNzjaOguW1OM4gOqVtxzVSVvbOin
         AwEJIYb0Xw25YlpPz/7eMQ2IuNrYJnKAM2WBCgvJvlyrHV1ys35FWrhE7lDD166NvIWR
         0dvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708229834; x=1708834634;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/4DhMuxys/34mkhk6GaLGZiP3UVmIiKa+UwrnIlKa10=;
        b=gGsz6YfmdGPnj7GDE+psBw3K2ve+puvbtkKMiOgcrSbmBf9+JZ5ujrgIBSL0PKSznk
         P1Z/0Ozb8GqaVZkS5BYA0CyDIaThDg2uwVAQ1e9priQRhyMAjM0MsSbNAIHxxOOMPTd8
         S5fWlZIYlRyuZL4M9uFCYwMW42qwhO/gLvtPjhYs1gagUqXESOyS2zXuH8Re6KAEuNaY
         xOLwdjcQbdqPg9y9bMK9/eEXfw10G3O2PNZOUwQVZo3/qdWWkYbUb4RGEKz/+Z3eQaTT
         WcST4cnnFp6lOCB84QnBSTVQ/3RPSMWwNELuJF3313hNTx16yYFQlI29TI7vL2Jw4ZCX
         UEQA==
X-Forwarded-Encrypted: i=1; AJvYcCVCghBZRFEQIDT+dBs7IrqKC2ZHVxDsFXz+KkWQvaF0TLFuh2eaytrJqws7q/UK7nmY0XUVSNLzjpn8YqoHFlfufvzoeaym4+UoBpHnKw==
X-Gm-Message-State: AOJu0Ywu1hRcBLjWRerz+TnRRcP+9LEtRWFnig/vL911RJ9T6gCrbH4w
	sWxwAeD0caqb0lXjnarQLKbi+dh2HoUMKDA1pHqMrtb28xfYxera3CBnv2ZIRqrplw==
X-Google-Smtp-Source: AGHT+IFMXYUm3DAGvhHMCJf8i+alS/1f7k2sbGdjsuXsPkCamXEfPAlsCaqOCoDWJRS6fbld8/LKrw==
X-Received: by 2002:a0c:df0d:0:b0:68d:124:4354 with SMTP id g13-20020a0cdf0d000000b0068d01244354mr11175451qvl.49.1708229834543;
        Sat, 17 Feb 2024 20:17:14 -0800 (PST)
Received: from aford-System-Version.lan ([2601:447:d002:5be:dde9:2f2d:61e4:7364])
        by smtp.gmail.com with ESMTPSA id or31-20020a056214469f00b0068eeebc4656sm1713621qvb.139.2024.02.17.20.17.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 17 Feb 2024 20:17:14 -0800 (PST)
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
	NXP Linux Team <linux-imx@nxp.com>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>,
	Lucas Stach <l.stach@pengutronix.de>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH V5 6/6] arm64: defconfig: Enable DRM_IMX8MP_DW_HDMI_BRIDGE as module
Date: Sat, 17 Feb 2024 22:16:44 -0600
Message-ID: <20240218041649.1209173-7-aford173@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240218041649.1209173-1-aford173@gmail.com>
References: <20240218041649.1209173-1-aford173@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240217_201715_694301_43718AFD 
X-CRM114-Status: UNSURE (   7.79  )
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
V5:  Added Review and tested-by from Luca
     No functional change since V1
---
 arch/arm64/configs/defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index b8adb28185ad..ccfd5e6f20eb 100644
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
