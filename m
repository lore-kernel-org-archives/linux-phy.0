Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BECB3C48BC4
	for <linux-phy@archiver.kernel.org>; Sun, 18 Feb 2024 04:17:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=UPkJ+6cjUqy98K8+q2lUEYa527c5DpSrnvfujp35hck=; b=Prb5/nsGZEipsC
	3D4Ka3Jt8JMSjoQ/gqh7W/wlxNog2MKJYUyOlclR8ks/ej6tqp5Zw7e9eA8v7sdBdGVmjn4XvH30A
	J2MdR3s1FqBgdkYT+X/Kfss0/CVhjv+0qqkSm227k8GiJPx3Q2v0xI193vyJMgewtvnJsr8FI0XPx
	KlUVQPPS26BheHlfF+uaOL1syspBMHmuFtTufJKx7OG+tStJvegdcp4ezazwl3k8y0ye1tqbFN2/L
	1H/L+CxD6GPLTQL2f2MYmPCYtU9pfGcbhQIDqvuo4EmsCf9GSvWpNob05q6C6bWLSM0BLiyzdQDSS
	OjUw97ochb6o5TX7MeJw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rbYbx-00000006xDU-11jJ;
	Sun, 18 Feb 2024 04:17:05 +0000
Received: from mail-qv1-xf32.google.com ([2607:f8b0:4864:20::f32])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rbYbt-00000006xC0-0pen;
	Sun, 18 Feb 2024 04:17:02 +0000
Received: by mail-qv1-xf32.google.com with SMTP id 6a1803df08f44-68f41af71ebso15436776d6.1;
        Sat, 17 Feb 2024 20:17:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1708229819; x=1708834619; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=PunEQITxN6EegaLM3f1D8lckcVz+K5TsGj0+zF389Go=;
        b=BjGPNSc5Le68H5hrna8ZlqNparsNftjXjHXx5wEVMIkiuC9vlLj1c5/om+EJfqqwve
         9ibyBZotwoXRNhmAN4ubUt2fXwHz9HeG7iT9aa808r8KZP61kvhvA4vdrbSLFHe7O7hx
         XrOi16ZwWjNR+eMskC+q7MMjDpzOneIuDScCB8Vdaimes951f4GlR7aXgSvQAwb2sRoJ
         SDQcioff4rWvvL/+6voaW0GOgKzLWoBTkAZOrwQHsd335MIIbbU+c+wHQzeRkcduWsYM
         acFn8erWlAHXzjEHGCbjpO2siiWBNw3x/gsLZZF8C1IGMq0f2DsgGA11L7kS3HZqcYFq
         cpxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708229819; x=1708834619;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=PunEQITxN6EegaLM3f1D8lckcVz+K5TsGj0+zF389Go=;
        b=Py+uFTzvyFBbz2gz4LBZSleX09xnkFzA3hV0NvlWce02xsSGLWvsWkL2YRH2GA9p7E
         UX0xTB3pSJPpDw/0Bc0gP4dlx51WovfCrXzw4VKN7fD26NbvbiA6fN4cKw736nEeyek8
         vJ8UlArw30Q2awuIQxdrEBGqmtySZGlMlK8ypw4Z5LXBCtDcuBG6kZBFly96/24eEQni
         3PaJtvNdFotBgOtv7kGyCeutJeSqUm+bfg6VQ/fRK5A5WtdzgRPy4HcM/qovVN/R3St4
         pU7ZhE3GfGdECNvul0vfMw9l22ZCurvN4pzHBNg1c23cql5eRmaBwGC3nVrVIPoS3fHV
         WU6g==
X-Forwarded-Encrypted: i=1; AJvYcCXjchCCV22Iq6JX8iiP2AYXuOfdMlVYyHUOmMP4zzVoQ0qphFiBvQc6XxOz3divWICp+L5oMvyc0zYEZmsuW3sHliZqzoQ6Tf7xPL9Ljw==
X-Gm-Message-State: AOJu0Yy+/mhGXMdtj8Cr2lHIc/13TuNa8WQT3P2wJUu/GDBmM4jgoVAP
	OekKULQ4f+QaVZU/7/PIfjjAsFhGvCctkOosubPmDH/6JdYqtI4Bcd+s2kXxgAZR6A==
X-Google-Smtp-Source: AGHT+IFB4qqdJNluST8zuNqUvuR7+FTW5VakP8ZhltfV1yKAyDfYaAzqM7sUhqCRUrd1xL+ZGJnwZQ==
X-Received: by 2002:a05:6214:d6f:b0:68c:8772:7dee with SMTP id 15-20020a0562140d6f00b0068c87727deemr13105676qvs.43.1708229818983;
        Sat, 17 Feb 2024 20:16:58 -0800 (PST)
Received: from aford-System-Version.lan ([2601:447:d002:5be:dde9:2f2d:61e4:7364])
        by smtp.gmail.com with ESMTPSA id or31-20020a056214469f00b0068eeebc4656sm1713621qvb.139.2024.02.17.20.16.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 17 Feb 2024 20:16:58 -0800 (PST)
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
	NXP Linux Team <linux-imx@nxp.com>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>,
	Lucas Stach <l.stach@pengutronix.de>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH V5 0/6] soc: imx8mp: Finish support for HDMI
Date: Sat, 17 Feb 2024 22:16:38 -0600
Message-ID: <20240218041649.1209173-1-aford173@gmail.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240217_201701_270178_49266BC6 
X-CRM114-Status: GOOD (  15.74  )
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
edits and suggestions from feedback from various attemps, but it
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
 

V5 primarily updates feedback from the PHY driver itself, but a small
   adjustment was made to the register size in the device tree. 
Adam Ford (1):
  arm64: defconfig: Enable DRM_IMX8MP_DW_HDMI_BRIDGE as module

Lucas Stach (5):
  dt-bindings: phy: add binding for the i.MX8MP HDMI PHY
  phy: freescale: add Samsung HDMI PHY
  arm64: dts: imx8mp: add HDMI power-domains
  arm64: dts: imx8mp: add HDMI irqsteer
  arm64: dts: imx8mp: add HDMI display pipeline

 .../bindings/phy/fsl,imx8mp-hdmi-phy.yaml     |  62 ++
 arch/arm64/boot/dts/freescale/imx8mp.dtsi     | 145 ++++
 arch/arm64/configs/defconfig                  |   1 +
 drivers/phy/freescale/Kconfig                 |   6 +
 drivers/phy/freescale/Makefile                |   1 +
 drivers/phy/freescale/phy-fsl-samsung-hdmi.c  | 720 ++++++++++++++++++
 6 files changed, 935 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/phy/fsl,imx8mp-hdmi-phy.yaml
 create mode 100644 drivers/phy/freescale/phy-fsl-samsung-hdmi.c

-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
