Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 99C0EC83F2A
	for <linux-phy@archiver.kernel.org>; Mon, 14 Jul 2025 15:08:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=k50Ub3Zow88T6i8C9fNRKTMgw/cbrCAhfVaZUmsg+Uk=; b=j1c2dYZhvoYN6y
	0JOh2ATLq1WyTElrT4CLvlIWvsWyGwalUA0oIsoOx9k6ftMI90j1wqCJYQ6UfSTLx/7AvhRP4AhEf
	XgzTdPMAOmsqOcPbv2TyLoPATTS6dlFeqeUB6Qo5NFgnsvQaNsQPT6/lN36qWi9/U0pUjiWqTRqJr
	dowxGOKb7ZDlhjpOAo6/XmH1LDJwgryu8iV6pX8Bih0QjPtwcmtPZOwmroyNG/7KLcZ9Lgl/I1Phc
	+efu0oVeT20K2xu32TJWfxVIIF1lhFqFi4joWl3JtIIYQdELPvswy6xplEgi+YySnVDfeNvnz70c2
	mJDXfe0RTD7OBKHkbHUQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ubKnC-00000002ZTC-1LOW;
	Mon, 14 Jul 2025 15:08:34 +0000
Received: from mail-lf1-x129.google.com ([2a00:1450:4864:20::129])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ubJz8-00000002RQI-2S15
	for linux-phy@lists.infradead.org;
	Mon, 14 Jul 2025 14:16:51 +0000
Received: by mail-lf1-x129.google.com with SMTP id 2adb3069b0e04-553b7a3af9aso273248e87.2
        for <linux-phy@lists.infradead.org>; Mon, 14 Jul 2025 07:16:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1752502609; x=1753107409; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=cI2qt4NB/mo+O9FErgJgDmsE0AmvcZBo4EL9xQ0SmF0=;
        b=Dihdy3TzOfN9FsaFHXGJ8amcwKrlfoYQpcIwvNgtl2Br3XtYwmivtAQPX8N73AbWxa
         LEEkC4AThOjOGVmHGqlO3jIhqPd2zqW5E/k78TO0q7p4l+JLwJ6si5AFezEAoUCAkEXd
         3czGaAYcnilkZ/WwLkEg6cXdgSh5kGkKf46baMmdcNrmnz9IUyDtWgf1vqTErBU+WYAL
         H2HvTmUK2Zu27P+AcsK7vjePV/oVLPVIbvUUDYGqVJaNOosTWu+wXv4ie5WZ+NowftVo
         E+oroXtz9KNi6zIvuR8M/+8JFIfdrGdqfcexCXIv40aQgNGOzN/rra0lcy7uDhk294PO
         yD/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752502609; x=1753107409;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=cI2qt4NB/mo+O9FErgJgDmsE0AmvcZBo4EL9xQ0SmF0=;
        b=c1ud2R1kXq06G9Fu9ursw6u//iC4c5b+66JsLAWlxgyHhm+rTtSDrFUZVmBGLgO5il
         7+CjmSRGk41vcWVtv21A4S2k3pRjdDzkhQN7Si5t8cDTNZRSV18olg1rv20qM65gfmgQ
         xdkZZ4zAERy3OtkH7mamOw53THe5F5kOQl0NqataKBDpP0IJ2jYXC9DK0DbVKaJ9Tv8V
         8E49/Csj5nJtWs7AxREaKRn0A7Ytsf8XMi74lJeVyrK6gtWL0sg80ae1u5OHLg0HE/nq
         kW9sGLRUGKtZig41tVSkVSDU2uu9xBW4DDqdrORI6BEHKgqxvLGdgctArd59G4c2lpZ/
         mmag==
X-Forwarded-Encrypted: i=1; AJvYcCUj2Fvx8uYEMj73WzznLgfEV9iSxo8qpeiAZzDsq+FYarHgHV4kMHuG5yWN7ldg2v6BEWC8VayLmLM=@lists.infradead.org
X-Gm-Message-State: AOJu0Yx7Oknk6dmqyzT9uzihY7ZYbo9zNvh6HbhkYxRTGPLji9z5gZKL
	+XoAaUnzztUOWeXXDouSCX9WOhH/xNB0oTZL8h8y6SxoV8O7F6KL3vIlgtjvkF1FseU=
X-Gm-Gg: ASbGncs6tLRo/wFNWEDVoBf0dg4NY6nciiHEnY6wyBgbi8doU00S5QBtXM53xgNH6mt
	32WnAErpDEHl18bHpZRL4KDCbFkAft/x2nrFkbg+EeMBGz+oEm33vrGzvtS56XNvE9NrqnVN/xK
	GzuB0Ac8xv13m3mIYUMDmth9GF4GcHrZw3ux9HTpD77QyYjHmyC1f2Qabyhv2MZ82LW3LhddHnV
	KGdNof9+ebWL5qnWnjQeGn/o5kf9Wrql0erWp9yo+pm96Sd3yK4uIbDwiEtYZqPLyRxQXtwh4SC
	wG2Cwh9FHfPM523mNxU/us3w1lYz6JFIJ5qbu3sCsZVwvOF+gKwGXzmxeXVdvofuttnyjoj5d+w
	8NmBGdeVe1JW5I/gqPA1tkBDU0v8LoWU8haUGFJrHqDBAAeh0+md/8eNHuGO3te/ylAKC0M+E9k
	L7
X-Google-Smtp-Source: AGHT+IGTRrIlX7t9ZryRjbDW/jQgLD10lUwwmpwKvz9xBujx9a/Ky++DAJpYUrrJvDtsrPqoHdxBsQ==
X-Received: by 2002:a05:6512:1293:b0:558:f60d:d4a1 with SMTP id 2adb3069b0e04-55a048faf48mr1262310e87.5.1752502608759;
        Mon, 14 Jul 2025 07:16:48 -0700 (PDT)
Received: from [192.168.1.100] (88-112-128-43.elisa-laajakaista.fi. [88.112.128.43])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-55943b60737sm1957066e87.156.2025.07.14.07.16.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 14 Jul 2025 07:16:48 -0700 (PDT)
Message-ID: <11b573d5-ce4d-476c-b94c-216d427cd838@linaro.org>
Date: Mon, 14 Jul 2025 17:16:46 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] phy: qcom-mipi-csi2: Add a CSI2 MIPI D-PHY driver
Content-Language: ru-RU
To: Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: Bryan O'Donoghue <bod@kernel.org>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-media@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250710-x1e-csi2-phy-v1-0-74acbb5b162b@linaro.org>
 <20250710-x1e-csi2-phy-v1-2-74acbb5b162b@linaro.org>
From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
In-Reply-To: <20250710-x1e-csi2-phy-v1-2-74acbb5b162b@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250714_071650_632782_5ED85E72 
X-CRM114-Status: GOOD (  28.18  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On 7/10/25 19:16, Bryan O'Donoghue wrote:
> Add a new MIPI CSI2 driver in D-PHY mode initially. The entire set of
> existing CAMSS CSI PHY init sequences are imported in order to save time
> and effort in later patches.
> 
> In-line with other PHY drivers the process node name is omitted from the
> compat string while the soc name is included.
> 
> At the moment we follow the assignment of lane positions - the bitmap of
> physical input lanes to logical lane numbers as a linear list per the
> existing DPHY @lanes data-member.
> 
> This is fine for us in upstream since we also map the lanes contiguously
> but, our hardware can support different lane mappings so we should in the
> future extend out the DPHY structure to capture the mapping.
> 
> The Qualcomm 3PH class of PHYs can do both D-PHY and C-PHY mode. For now only
> D-PHY is supported.
> 
> In porting some of the logic over from camss-csiphy*.c to here its also
> possible to rationalise some of the code.
> 
> In particular use of regulator_bulk and clk_bulk as well as dropping the
> seemingly useless and unused interrupt handler.
> 
> The PHY sequences and a lot of the logic that goes with them are well proven
> in CAMSS and mature so the main thing to watch out for here is how to get
> the right sequencing of regulators, clocks and register-writes.
> 
> Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
> ---
>   MAINTAINERS                                        |  11 +
>   drivers/phy/qualcomm/Kconfig                       |  11 +
>   drivers/phy/qualcomm/Makefile                      |   6 +
>   drivers/phy/qualcomm/phy-qcom-mipi-csi2-3ph-dphy.c | 491 +++++++++++++++++++++
>   drivers/phy/qualcomm/phy-qcom-mipi-csi2-core.c     | 281 ++++++++++++
>   drivers/phy/qualcomm/phy-qcom-mipi-csi2.h          | 101 +++++
>   6 files changed, 901 insertions(+)
> 
> diff --git a/MAINTAINERS b/MAINTAINERS
> index 1ef99240a57ed1ad0d4501998970c7c3b85d3b81..69519e2d6dfb65771a3245735283645bb50a249a 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -20536,6 +20536,17 @@ S:	Maintained
>   F:	Documentation/devicetree/bindings/media/qcom,*-iris.yaml
>   F:	drivers/media/platform/qcom/iris/
>   
> +QUALCOMM MIPI CSI2 PHY DRIVER
> +M:	Bryan O'Donoghue <bod@kernel.org>
> +L:	linux-phy@lists.infradead.org
> +L:	linux-media@vger.kernel.org
> +L:	linux-arm-msm@vger.kernel.org
> +S:	Supported
> +F:	Documentation/devicetree/bindings/phy/qcom,x1e80100-mipi-csi2-combo-phy.yaml
> +F:	drivers/phy/qualcomm/phy-qcom-mipi-csi2*.c
> +F:	drivers/phy/qualcomm/phy-qcom-mipi-csi2*.h
> +F:	include/dt-bindings/phy/phy-qcom-mipi-csi2*
> +
>   QUALCOMM NAND CONTROLLER DRIVER
>   M:	Manivannan Sadhasivam <mani@kernel.org>
>   L:	linux-mtd@lists.infradead.org
> diff --git a/drivers/phy/qualcomm/Kconfig b/drivers/phy/qualcomm/Kconfig
> index ef14f4e33973cff4103d8ea3b07cfd62d344e450..d0ab70827519c2b046d0fb03c14bb4d8ae2ec9a1 100644
> --- a/drivers/phy/qualcomm/Kconfig
> +++ b/drivers/phy/qualcomm/Kconfig
> @@ -28,6 +28,17 @@ config PHY_QCOM_EDP
>   	  Enable this driver to support the Qualcomm eDP PHY found in various
>   	  Qualcomm chipsets.
>   
> +config PHY_QCOM_MIPI_CSI2
> +	tristate "Qualcomm MIPI CSI2 PHY driver"
> +	depends on ARCH_QCOM || COMPILE_TEST
> +	depends on OF
> +	depends on COMMON_CLK
> +	select GENERIC_PHY
> +	select GENERIC_PHY_MIPI_DPHY
> +	help
> +	  Enable this to support the MIPI CSI2 PHY driver found in various
> +	  Qualcomm chipsets.
> +
>   config PHY_QCOM_IPQ4019_USB
>   	tristate "Qualcomm IPQ4019 USB PHY driver"
>   	depends on OF && (ARCH_QCOM || COMPILE_TEST)
> diff --git a/drivers/phy/qualcomm/Makefile b/drivers/phy/qualcomm/Makefile
> index 3851e28a212d4a677a5b41805868f38b9ab49841..67013d27cb0387b9d65dcbe030ea6e5eaaabbe91 100644
> --- a/drivers/phy/qualcomm/Makefile
> +++ b/drivers/phy/qualcomm/Makefile
> @@ -5,6 +5,12 @@ obj-$(CONFIG_PHY_QCOM_EDP)		+= phy-qcom-edp.o
>   obj-$(CONFIG_PHY_QCOM_IPQ4019_USB)	+= phy-qcom-ipq4019-usb.o
>   obj-$(CONFIG_PHY_QCOM_IPQ806X_SATA)	+= phy-qcom-ipq806x-sata.o
>   obj-$(CONFIG_PHY_QCOM_M31_USB)		+= phy-qcom-m31.o
> +
> +phy-qcom-mipi-csi2-objs			+= phy-qcom-mipi-csi2-core.o \
> +					   phy-qcom-mipi-csi2-3ph-dphy.o
> +
> +obj-$(CONFIG_PHY_QCOM_MIPI_CSI2)	+= phy-qcom-mipi-csi2.o
> +
>   obj-$(CONFIG_PHY_QCOM_PCIE2)		+= phy-qcom-pcie2.o
>   
>   obj-$(CONFIG_PHY_QCOM_QMP_COMBO)	+= phy-qcom-qmp-combo.o phy-qcom-qmp-usbc.o
> diff --git a/drivers/phy/qualcomm/phy-qcom-mipi-csi2-3ph-dphy.c b/drivers/phy/qualcomm/phy-qcom-mipi-csi2-3ph-dphy.c
> new file mode 100644
> index 0000000000000000000000000000000000000000..1a99efee88cc94ec0d29a335cd29f88af8a00c02
> --- /dev/null
> +++ b/drivers/phy/qualcomm/phy-qcom-mipi-csi2-3ph-dphy.c
> @@ -0,0 +1,491 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * camss-phy_qcom_mipi_csi2-3ph-1-0.c
> + *
> + * Qualcomm MSM Camera Subsystem - CSIPHY Module 3phase v1.0
> + *
> + * Copyright (c) 2011-2015, The Linux Foundation. All rights reserved.
> + * Copyright (C) 2016-2025 Linaro Ltd.
> + */
> +#define DEBUG

Still under debugging?..

Well, the phy should be a multimedia device, and this driver is not
the one, thus you can not use it to connect sensors and put the IP
into a media pipeline.

-- 
Best wishes,
Vladimir

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
