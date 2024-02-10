Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7344EC4829A
	for <linux-phy@archiver.kernel.org>; Sat, 10 Feb 2024 20:46:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=CkjHIQ8tWONW8TEFcx6S5RPfbNKbZNCIg/oVgIIriI8=; b=Vn7aqEkkkCpOiT
	/pi/VGRQ0JAtT2Z4if65bsLVSccc1sTvm9wC/KmxKpyG+E+8NECoeWPYPNhg/71nSJqr347mqEv7m
	GdPY1l+1KnD7I23bYWNxxJOVn5NEJEwy2HDKGwARc5QQfYd7zXu3nrL08ntxXx5UJN17wgIDYBw+A
	53x1zprE9tOSYMlRD7jC+ruoYVkXZylkwkbNyi7sXAlxM42wbRxgBpve9NtooMGl+Xhjin1BV0JHM
	DntK/lbtgRHYXgTqa6MzPYaWR2t8u31xWo+whPrgwnquPBKCCam7txVE8XBsm2M+s9MD+LHDsVSVU
	I3/koDXCOY8rXrXO30/g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rYuEu-0000000201v-3wK8;
	Sat, 10 Feb 2024 20:46:20 +0000
Received: from mail-qk1-x72c.google.com ([2607:f8b0:4864:20::72c])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rYuEr-00000002018-2Y3r;
	Sat, 10 Feb 2024 20:46:18 +0000
Received: by mail-qk1-x72c.google.com with SMTP id af79cd13be357-783d4b3ad96so135014885a.3;
        Sat, 10 Feb 2024 12:46:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1707597976; x=1708202776; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=9dpTBORzvcr6rF6XXf+SosfV3PtzsuSPAw4k+uR/IS4=;
        b=ID2Nmu6URT7etfj5X6d+Loz2ZgoL6O6llOk05jJNB1HGoAXN6SrUCQIKvmpH33xYop
         I9ErXWXDfGVR6f5tASR7DvmQOzNx4L0gPNReljP+f+nEygUY3ZrmqaArdF6EqX8c/A6N
         6LkyYpeh3ZCqsxppPbLmu0ZVoan8a7UIEN0DEgeTK4RMY8XR3kYjL99HgUyXheN3aEQO
         h0JPJbh/9dBGV3KIieB+OXAEFDih/5aMcUfmYjTNcfitKf4fFXo54PbiGMHwklGB6fFw
         JvXBZIWifA0jUXniNNfiq9Ado0eUkjt989HSYcwmux+rfrlYXrkvo7wjqZHzqDqL/oj6
         Z27w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707597976; x=1708202776;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=9dpTBORzvcr6rF6XXf+SosfV3PtzsuSPAw4k+uR/IS4=;
        b=BBPmmr7PmmM5ugGzfY11S1Z+iD+6qwXHJwdVgPXqogT7DrSwv3TfPfSeOiUJzktlKk
         tpfE0+m8HG+GZYd1TCjPBwW3+a8C/ggVlhplhRCA2QrvhnxSSBr/0eDaw2IXJx96QXE4
         pbSbwBoZNkJni0rhtswYW1DCu9dFKQca+TZpGDhVqsZKrPp0WIukNjlAcp+yOIKRnyoQ
         zk31rNdvjSbCyV7bGyzFe7r7lgFEDzs1NucCBT6TGWPhSrpsFG6uPvVVVSp7vsFf9TGW
         +Q8ofthWjwqC58UUjV3j5ctfyBRbSZJ6mkz1qHJON62XqNjuDhK2PMEHA7RIBr/HagDe
         a2tA==
X-Gm-Message-State: AOJu0Yy3qHuahaPj+WKLqwL6avQN9i5y4u/5hs1ebGZgVpEuG7Rz+jnP
	b6+0XXO2XBBq3uRu0o+JCqH9CPz9MlgNjeKlNmqee3vOqi/vprzeAi+ITOyo
X-Google-Smtp-Source: AGHT+IFcn8J0TevF9WZ6w5Db5BRLWD3hiNNHAAcu1bnhmw5dWyBjVgAFHcF70cj/6k2D46yZO4ZoZg==
X-Received: by 2002:a0c:e2ca:0:b0:68c:bda7:3dc7 with SMTP id t10-20020a0ce2ca000000b0068cbda73dc7mr2745130qvl.20.1707597975693;
        Sat, 10 Feb 2024 12:46:15 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCVtj022cdUZKFt2ePjfGc4JKbsKkFj6bg3zIoePxxP1sTazxeh8eFGAfhvuIOn7ORN2GsRVQ3vc3NxGOvSALHJZO2uvK82axmWazGDk0DzCJqNK19aYH69czBhQEtdAfiEaouvJvm3XtgD0XKlQtF/yc0HO+OASYiawWCzlv5Ac/8FQ7Ns+DQWEVrk7HEe6QL3Judr68ASTXniexW411g8OuPul8u8p49TF6cvyv9tgkOcEmlpJsxbjV3zO4og49z5EptcKrLdT+KzLMeAHuskQZHESfyTYarv08caQ4gXL0PXjoiv5l20AdGaI5F1VAbHXFiRQyPR4JxiYDAFasnhRSAVGoIR2GGOnwxE5yw68VoHGY3yMgLN8Quj0TDye8s+Vxn1QBwJ8Haij2ubzvW01t9YjBtNlHrJBn4TI3s3BCbL3F9S1wGkQRrTec3bNBC31Le8VnILwHzPjuwWygrEU6aywkGafjBhcaPDr9bolqob8hxTx3/c85g6TU/KV42H4jYoKI85HWNphpKVMP66M4MRO+u9hB6ect+KHP5r6NQD3t/IfXJX2BwWaT6k40n6qb93M/s5YO619NY5odfPB/RZnK5ILdxPm/W8irVKibQ==
Received: from aford-System-Version.lan ([2601:447:d002:5be:27d7:3989:2897:88a7])
        by smtp.gmail.com with ESMTPSA id m20-20020a0cdb94000000b0068c9db26ae1sm2079526qvk.41.2024.02.10.12.46.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 10 Feb 2024 12:46:14 -0800 (PST)
From: Adam Ford <aford173@gmail.com>
To: linux-arm-kernel@lists.infradead.org
Cc: marex@denx.de,
	aford@beaconembedded.com,
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
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH V4 0/6] soc: imx8mp: Finish support for HDMI
Date: Sat, 10 Feb 2024 14:45:56 -0600
Message-ID: <20240210204606.11944-1-aford173@gmail.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240210_124617_690982_CE089B16 
X-CRM114-Status: GOOD (  15.00  )
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
 drivers/phy/freescale/phy-fsl-samsung-hdmi.c  | 721 ++++++++++++++++++
 6 files changed, 936 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/phy/fsl,imx8mp-hdmi-phy.yaml
 create mode 100644 drivers/phy/freescale/phy-fsl-samsung-hdmi.c

-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
