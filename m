Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 52612C4828F
	for <linux-phy@archiver.kernel.org>; Sat,  3 Feb 2024 16:53:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=a/gBXtV+q+ZwaBwzY3JL7IBtLeiKASb32/9UTK6eU80=; b=hmVUp1FLmSCpRC
	c+lHB/nyKnJn3XhzrVhhnTODaJ1RePtdgrqpCudPHOTLSyog/L3bpzomjoPamPlCussjz6Ob5guu5
	9mjCig8LtpjXgzg0wicr28HTzjXawMtfcxaYxNGid95u+dJvuUS8Tyu/SZ2BEM6fJVnv9vIC2KZxj
	2gX++2ig16IPwdLBGa+f6LIYW5YfYXNxvquvm7TuBiGvoowgjlxZXXxhglsPS4oh29kH90hpo+UAm
	72msnRgt8szO+vhgHiouU1wGOMSkSLBjDCPcSXrHC11In+0re2wxNMA1zEyO325q+0ycS5cZWzV6x
	zRVLPQXOF/KuNuS7CFMw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rWJGr-0000000Gq5F-3Wlg;
	Sat, 03 Feb 2024 16:53:37 +0000
Received: from mail-il1-x130.google.com ([2607:f8b0:4864:20::130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rWJGo-0000000Gq4I-3C6O;
	Sat, 03 Feb 2024 16:53:36 +0000
Received: by mail-il1-x130.google.com with SMTP id e9e14a558f8ab-363b5bcec8fso5712305ab.2;
        Sat, 03 Feb 2024 08:53:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1706979208; x=1707584008; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=9XUHyzhcEBPgUyedjboVKpnmtxonPsD2U3arujSm0XE=;
        b=XCJJUu+W5HXbTpG+dghRO0udAHEIhPVB1KoiYWDPwHdVIyeD297wfN1NR83me/pgf1
         sdmXOvdCC7ww+Tk2lUSmh5I3KFTtRmnbc3PcZip1iZaMQ8J75Wao9u38/QhimNtmkgRu
         GWx06L4EOrkZVd16iCiNxDNmnLCAITT1WGajTDyEZFq/ycD3EeKwTi4oeq6jS54oSd5v
         clZcKpVGgA+YasxGALIyAiXgxdVKWAdXVbuDRhfty2TxZ6FYA6DBDSOOSRkSWilqu5mN
         uMl+r0MImW5z0g1WUB2Foew2GkLnkRC071NjYHS/BvMF3VreMtZvzyq8Vc7NhjtDbnEc
         ml5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706979208; x=1707584008;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=9XUHyzhcEBPgUyedjboVKpnmtxonPsD2U3arujSm0XE=;
        b=kwfQR+vFUEAE+/a5y794y1d83ADUo1HMTzsV2P2lBHzASJboRI1QcS8/R1Q6sjy0D6
         z4OSuJ3U1GZrHFg2/uGtONQMgpX2VCnfZ2jXs3ZUl1UKebYyzpwRwSUVlEbGYKuUw6EE
         /ccaNVjVzXguKGZqMJ8/BFVCTloB2UvNHjPRPXvM9TnVxIon/VL/NF+eMO6oZrrfQ4PM
         QZnTD2NmlR/tHO/krhJbtfvv+7hy8QBES+zFY4NipEzoptKM88+vhULLFJo7Jo9ezspj
         uoLczlYwtRHoimTlIDXPJ22iRzDUL9AO1rK5fqHD5gk+LWr4XuD9ejsfaRt3E5S37S7b
         oUgQ==
X-Gm-Message-State: AOJu0YxjCegXiLXfuTlj+yQozM/Xy5ihTlnegkL2VJWjlSI5RTHDG4sh
	pp0vjsy/sRq8fSwe3rUfXr+u4d1531wLoPpbZqC6pStVNUrCF16ZA78yjAYtGVI=
X-Google-Smtp-Source: AGHT+IE2O1m7e/uXI5S9VSQpXsL+ogbmDdnqGeGTYadDkakIFJIrovcZVLpYBZWHH6ddMnEbqEyskg==
X-Received: by 2002:a92:ca8b:0:b0:363:b519:bfff with SMTP id t11-20020a92ca8b000000b00363b519bfffmr4848229ilo.20.1706979207672;
        Sat, 03 Feb 2024 08:53:27 -0800 (PST)
X-Forwarded-Encrypted: i=0; AJvYcCWlcAHP1/xgDZnzgAuxHawH0NO6OJv8LhA66jcuqOf8c119mXkLUKYWDtiOCS2AZwWIXGNwJPx2OSyc962OYpHMWB29LqSIPLemncVT+De+t2R5vwLk0Ox1ThXvmlcTrwG5l+yG/3FgqJ6ZR3Nb0/FHtACItUzww3mV48EsnaeFc3b0QtPQfhEbNCs6TikO5IYzhpy0WSSfcMdCHz9fmzOmiL2coidv0mEK1AeSdlUm37QWp0Eikgx3TGavTmp7tfRAmAIN+geK8cjdEgL2O45joCJ88cQ5rXgEVJoQvY4fdiDvWiZpgEcG1LEqHPvGXz9RDyAlk7hiF/f2ZLwfWsaN6ARWS8+P5zErDJdHgFV0BnqjLjwsdS88j2xHF9tMLUa09ejKB7eRXht522VBUjOSqE+SH7A8FPHUk9m7VWWnW8ryXdp8S98lS2AUU5QPwpaLSzQywEnkRU6pJB7l11YiaA/FkMif7aebXQw7uAMl1BtlUnlgRpXhj4XNN6lhHHnNhyeJiL5cri1UEZMSjQJGl/h1FV05EWG1vPd4YqbtYVCgZyoKKDI31DpTeIxJ/vmROP9VRRALy05tS2Rw4KzmkvQEGG1Gciiq9/hYMyPkEvtz2f656fMzRsuy5aotI2tBk+o28PB22og6DVWxIZYgABsFlrldN5YNAg/yUiOKC4wLCiOQXFpKZCr/7bxSjukRSFy1qOKEBq0r3rz49VXX71n0CRCCDw334e9Kyf7BB5Mu736LlNJPYRYf3n05YZwTkge2RWvD2Di8p1nUtWsEX+nJb9RALNdbkIvp74VzECdd8XPkeEI5Rtig0OxGVSc9UKv4uvuYy4uE28iXe9WY4tHR8yIgD0h2LaH7/po/5bMjg1WsOBjuOVqlYY8wJQHQ7rDGOKGQs8+ED0MXhKeM3FYNNIqiHX7gj9D0gN9WJwAlGK5IX3SFMMWrtg5SMEjCUL
 hINOWO+Abubuq8a3n+enTDcH5zkNg6x+SQZaD2l3Wet2UK0QNm1RrPrf9lR7uUE5qUoibecwltghAvu9iRNB+vZ/xRyoLiOv5qsQcGl+cMWz5evixLeXyOY5FoAW8hTkK70zWankAhXpZDKHBf1rXv+4nPhglYSoOmv5iMdJTVo4KYP+orfjsmFSdYCJTskFIVoEyZjyGHY0N6DuLdIE/tuKaVyAiBhw==
Received: from aford-System-Version.lan ([2601:447:d002:5be:d9b2:bb4f:5531:6aa9])
        by smtp.gmail.com with ESMTPSA id t30-20020a05663836de00b00470b29b82b1sm1086256jau.154.2024.02.03.08.53.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 03 Feb 2024 08:53:23 -0800 (PST)
From: Adam Ford <aford173@gmail.com>
To: linux-arm-kernel@lists.infradead.org
Cc: marex@denx.de,
	alexander.stein@ew.tq-group.com,
	frieder.schrempf@kontron.de,
	Adam Ford <aford173@gmail.com>,
	Andrzej Hajda <andrzej.hajda@intel.com>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Robert Foss <rfoss@kernel.org>,
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
	Jonas Karlman <jonas@kwiboo.se>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>,
	Daniel Vetter <daniel@ffwll.ch>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	NXP Linux Team <linux-imx@nxp.com>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>,
	Liu Ying <victor.liu@nxp.com>,
	Ulf Hansson <ulf.hansson@linaro.org>,
	Lucas Stach <l.stach@pengutronix.de>,
	dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-pm@vger.kernel.org
Subject: [PATCH V8 00/12] soc: imx8mp: Add support for HDMI
Date: Sat,  3 Feb 2024 10:52:40 -0600
Message-ID: <20240203165307.7806-1-aford173@gmail.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240203_085334_826211_FA48BA9C 
X-CRM114-Status: GOOD (  15.64  )
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

The i.MX8M Plus has an HDMI controller, but it depends on two
other systems, the Parallel Video Interface (PVI) and the
HDMI PHY from Samsung. The LCDIF controller generates the display
and routes it to the PVI which converts passes the parallel video
to the HDMI bridge.  The HDMI system has a corresponding power
domain controller whose driver was partially written, but the
device tree for it was never applied, so some changes to the
power domain should be harmless because they've not really been
used yet.

This series is adapted from multiple series from Lucas Stach with
edits and suggestions from feedback from various series, but it
since it's difficult to use and test them independently,
I merged them into on unified series.  The version history is a
bit ambiguous since different components were submitted at different
times and had different amount of retries.  In an effort to merge them
I used the highest version attempt.

Adam Ford (3):
  dt-bindings: soc: imx: add missing clock and power-domains to
    imx8mp-hdmi-blk-ctrl
  pmdomain: imx8mp-blk-ctrl: imx8mp_blk: Add fdcc clock to hdmimix
    domain
  arm64: defconfig: Enable DRM_IMX8MP_DW_HDMI_BRIDGE as module

Lucas Stach (9):
  dt-bindings: phy: add binding for the i.MX8MP HDMI PHY
  phy: freescale: add Samsung HDMI PHY
  arm64: dts: imx8mp: add HDMI power-domains
  arm64: dts: imx8mp: add HDMI irqsteer
  dt-bindings: display: imx: add binding for i.MX8MP HDMI PVI
  drm/bridge: imx: add driver for HDMI TX Parallel Video Interface
  dt-bindings: display: imx: add binding for i.MX8MP HDMI TX
  drm/bridge: imx: add bridge wrapper driver for i.MX8MP DWC HDMI
  arm64: dts: imx8mp: add HDMI display pipeline

 .../display/bridge/fsl,imx8mp-hdmi-tx.yaml    |  102 ++
 .../display/imx/fsl,imx8mp-hdmi-pvi.yaml      |   84 ++
 .../bindings/phy/fsl,imx8mp-hdmi-phy.yaml     |   62 +
 .../soc/imx/fsl,imx8mp-hdmi-blk-ctrl.yaml     |   22 +-
 arch/arm64/boot/dts/freescale/imx8mp.dtsi     |  145 +++
 arch/arm64/configs/defconfig                  |    1 +
 drivers/gpu/drm/bridge/imx/Kconfig            |   18 +
 drivers/gpu/drm/bridge/imx/Makefile           |    2 +
 drivers/gpu/drm/bridge/imx/imx8mp-hdmi-pvi.c  |  207 ++++
 drivers/gpu/drm/bridge/imx/imx8mp-hdmi-tx.c   |  154 +++
 drivers/phy/freescale/Kconfig                 |    6 +
 drivers/phy/freescale/Makefile                |    1 +
 drivers/phy/freescale/phy-fsl-samsung-hdmi.c  | 1075 +++++++++++++++++
 drivers/pmdomain/imx/imx8mp-blk-ctrl.c        |   10 +-
 14 files changed, 1876 insertions(+), 13 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/display/bridge/fsl,imx8mp-hdmi-tx.yaml
 create mode 100644 Documentation/devicetree/bindings/display/imx/fsl,imx8mp-hdmi-pvi.yaml
 create mode 100644 Documentation/devicetree/bindings/phy/fsl,imx8mp-hdmi-phy.yaml
 create mode 100644 drivers/gpu/drm/bridge/imx/imx8mp-hdmi-pvi.c
 create mode 100644 drivers/gpu/drm/bridge/imx/imx8mp-hdmi-tx.c
 create mode 100644 drivers/phy/freescale/phy-fsl-samsung-hdmi.c

-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
