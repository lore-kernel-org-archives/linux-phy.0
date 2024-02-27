Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7B980C54798
	for <linux-phy@archiver.kernel.org>; Tue, 27 Feb 2024 22:05:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=T8Uw7uCPJNfU9Hf05/VfHe4CCuqA8LAv+Nwnr91xFpM=; b=QqQWKko/0NlQah
	T+CS8l45lIGx1EBLqys6qNO+1xIRzTRBLSgcj03xk5CEqWsnMSEaS4LiaDRvNuOg9gCf51WfXVjWo
	9/hxx7ihBjTHruovWEc0ccaVlPCesCjwvtrEJ44yBfpW2qM7AwSZiOVtp7/dfB6UzH/cwM12HF2np
	RH7NrrMV2hrUDYdrCbPJJxKl5jgepClKbwUvAo47QbdC7maGb/7PQrSmlQchCTqAs8TtWGtdSb0ce
	AlHjdc+2ewLspFyeMwZzcb4Uh7r8ZHphNScY/Ajz5SPjQ7XXhKnsb3Y8ZDhbZ+hYQkuNvH2s3CXCg
	/XjKZmM2CTwRzSyKHnCQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rf5a0-000000070lw-3HTV;
	Tue, 27 Feb 2024 22:05:40 +0000
Received: from mail-oi1-x233.google.com ([2607:f8b0:4864:20::233])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rf5Za-000000070Uq-0xpT;
	Tue, 27 Feb 2024 22:05:17 +0000
Received: by mail-oi1-x233.google.com with SMTP id 5614622812f47-3c17ac08a38so2223441b6e.1;
        Tue, 27 Feb 2024 14:05:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1709071512; x=1709676312; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Pg+umx5FUIJdMs3diOaBF+zl4OepmD7HnZ+prHeGKsA=;
        b=mDeaWdHAqzfNt5Wy8kA0iCYq7dpBIGGWc55k3aZdpceBmBKViHlAezgCOAqqxRnid/
         E2FtCl/PuDGeyVnlFfgVrOZZB2NRmTUrPmqTZ7U6oK7lsqH8fZiTHzQa/HIS6X1dJ+/x
         IzUheVfmFd1n6sSlvrjHo5k82lnMmKS3/RVRpvgFxj8IOdZLJDXNG4r2key52DUhuElI
         rv9r93vCoq711Xm1m/BXAVVjZ00QVbvmimMuJewvYFoZxJ9nskyEXeJRGue+tp/jlKGC
         nvgXU2pYq+D00KabVpVyowDIYsmFzf0g9ByZ7+U+hJ1ktog8oBCjvtQy570Dm1vvnGay
         Z8bw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709071512; x=1709676312;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Pg+umx5FUIJdMs3diOaBF+zl4OepmD7HnZ+prHeGKsA=;
        b=CcACEfzEv5sXWTBf3V/G/S4Z5hDRt8jlQpPUXSdmv0/5lUAeQhz+4pyW6w5Idy9GlN
         8FK8z2gL+eeZX8AIl/qhdxkQTNTZXFJxDZ5SQ3H1ZwO42TTvjMDQm45AKrcICUQSDu2N
         JFcepxcVzB/Qh011hHeEWgRFf2sQmqCkhWWYWnwZpSyBnTRoQF1iKvlvbn9JFVrtroJc
         W0ueKKu9CZpyypocNFS00w0dKwS1MNa1TxnuGaNV8mLOFiTqz86DB333MU6RsTTwnAWB
         vy2nN8mF3AKN+hiw7kzacZ8sa3aTAkgJMOGQhCCOqB5YSuXobaxJBlOer8Tssfs25hkb
         myow==
X-Forwarded-Encrypted: i=1; AJvYcCWX8E354YjKFngVDfwn2rO+61DDV5YNGix0OIB3eYjhhtjFEbkd+DpvdVWZqVwDtSL+hHOv1uU31bOYKNn1s5mFoJOZf8ZxT/Tkq5s1CA==
X-Gm-Message-State: AOJu0YzAIPvNHCx481auHDaPXGuyJ/1QJIzRq5yep2/BOr1dqz4Zk1OP
	5K+8x1EMbdvGKJoodOnqJTFNOEUIVenO2V6lgRJuJkMZe7hE1XZb0Fk98OJCVXmj+Njo
X-Google-Smtp-Source: AGHT+IEmWreknrcyf09k6m1PvVcfqFMnpM75hkf6hTSSVFVvDaq/6FD0SFqz9UMfV4yL5nvUNAshIA==
X-Received: by 2002:a05:6358:9496:b0:17b:57c9:dddc with SMTP id i22-20020a056358949600b0017b57c9dddcmr8981848rwb.5.1709071512522;
        Tue, 27 Feb 2024 14:05:12 -0800 (PST)
Received: from aford-System-Version.lan ([2601:447:d002:5be:9ee3:b2ab:6ca:180d])
        by smtp.gmail.com with ESMTPSA id c12-20020a0ce14c000000b0068fc55bcf6asm4569556qvl.119.2024.02.27.14.05.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Feb 2024 14:05:12 -0800 (PST)
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
Subject: [PATCH V7 6/6] arm64: defconfig: Enable DRM_IMX8MP_DW_HDMI_BRIDGE as module
Date: Tue, 27 Feb 2024 16:04:40 -0600
Message-ID: <20240227220444.77566-7-aford173@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240227220444.77566-1-aford173@gmail.com>
References: <20240227220444.77566-1-aford173@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240227_140514_423963_90A348D6 
X-CRM114-Status: UNSURE (   8.29  )
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
V7:  No Change

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
