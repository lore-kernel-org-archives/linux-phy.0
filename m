Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 30898CCF9EA
	for <linux-phy@archiver.kernel.org>; Mon, 27 Oct 2025 09:14:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nVmLeQVm8IYuUBc2dYOp7UQYteyX+LPr/uMxKusCeM8=; b=WTjMhd/lbu86d8
	PsLKik9mJG2iggJCX05D+T6VH1Zb5KSqOTrUzGBoviJYp56ThoCG9K7wMzYdJKLJncz6gXc3ZYzFA
	MMhCIp8VAAGhgxXC3S/O2Y4z4YD0EmWfAdQRzdYw2LGo7M0kG+zh6Hk9iFL4lBMqIOrl0zZluYHdg
	HE/hZqh5HQiNxWjq+5mBwCAFlZl2qBdY8eYVagn08OmhTiAIOJylzVHvKRTHYqKDvSzaGz0RbCEDP
	CeipWpjep5+69ww9aZWheSXGBQqNNYhXHm4xyURvureWpVZIFBvPiNv6YD7FUvCiqDQJ1qfApiZKu
	7di5AXGAitXCZiWc7+qw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDJIy-0000000DVDX-2LCt;
	Mon, 27 Oct 2025 09:14:20 +0000
Received: from mail-wm1-x333.google.com ([2a00:1450:4864:20::333])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDJIw-0000000DVD6-1Mml
	for linux-phy@lists.infradead.org;
	Mon, 27 Oct 2025 09:14:19 +0000
Received: by mail-wm1-x333.google.com with SMTP id 5b1f17b1804b1-46fcf9f63b6so26148235e9.2
        for <linux-phy@lists.infradead.org>; Mon, 27 Oct 2025 02:14:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1761556456; x=1762161256; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=zMfASScf5ZTOmAyQbAWxr3O4HT4xPAALH5kjKVs+B5Y=;
        b=CEs9K7YaPvaHQEA/oSDta2Gjm/GhQ0V4RARSA6m/6qvc1FUjpTKeeZRjqZwiHdaLi8
         //LDAbxSyHWIRiT2zlLFP99hLbk6upLAc0tuT+tN+guATBBpZzay3JBT+3Dh67bNyX/z
         DcyuGtpP1GKxizb4Nm+t0ZfTgY9EGOIaFz0xsM4NYhPRl7OuQqvIUGgQOeReP84llb4f
         OA5XCRli7IuixZlTXbQ6vQwaqhlv6cJQ31jq/Hji4cYhNZ8kFO5TnQM8Ti5rR+OrphJm
         IdCdUOsh0r685Mpej7fRSKGw2O9gfWqXimB5GUjZws9dE/q3Ah1fujlHyU7ZD4dRgGfZ
         1S1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761556456; x=1762161256;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=zMfASScf5ZTOmAyQbAWxr3O4HT4xPAALH5kjKVs+B5Y=;
        b=WgLQdkH1LkPumnOA6rSSqrbuZYvbCj4BzonxxunZhkNDYNlSVr/0DUIlHCGklq7qtW
         d4eFrOn8KxQYpaDRVnQ9DkzQbqY2Cud1MdDX8x4E2TLjf65j5qMxpZEsed1JPhaOAunV
         b55p+rnhc5fxadKNQnkA7+g9+qLyV2Dl9gRE256gmhfE0A8+DGlcjwxrHRZGdVnspqsC
         THvpdqKqxcwsMj3TGS4P8WlJF7ulIeyhRmVTMeb0d768tnmTzbr62+/uiVX1Vvf11o5C
         0mxT3Gnp/5IFR/AMgh97h7I3JGYvg0lvEXgYoFgw7/TspN1+TfRGmb0kAaSD/LZPhIKK
         OjBA==
X-Forwarded-Encrypted: i=1; AJvYcCUKrK0Sx+k9c4w/POuzg1wz0WkRHQj3rqkBVm6rEhC8t7HJ6GQtOy+4+n6kdvRW05ZwIHd1RUJsnUQ=@lists.infradead.org
X-Gm-Message-State: AOJu0YyswWngtfPfbL0ZUzdar3P+NphRUPPDGJoy7eWbZtLP0olEhaX7
	NYuxyKTNSyjaL0Nn6E2SUYn4tRZX+wUCspOD9+pPQ1zR1ORDZ0jfnliRLG4+zff7dzo=
X-Gm-Gg: ASbGnct9I+3WPWZwComxnvUgkGVfOqDrSDO6Md/HEmMemH1SdWLl2lx5xfoAnGG38t0
	VX9Q+HDIJ78oRkAGZoLHAlfg9M0IEr2ExBtHHaIUrUl2OUCAYReM4KydtoCUO9GF6c+mrQIbw9f
	dCb6Ahk0ivogfmOyKhrvj1Os+2aQB7fTT627Wq2fF49r/qRXn+b8XzmBIWYA8VYOpovjLiqdY8g
	gG2LK1B5gf40xcZYdv0fxzXoDvSpNzNc+J4EFZk5yT2IZJT+n9X5FTkD4UojhpcI13jbG5zDNAT
	yQtbyV2OZbA3unC/WIXp8gFwsVQqnK/ec6tqnCmilbutrhc/0Nad9gJGBiKQwKuZ6IaKcBqhpgG
	jgNWaynb74QMPaO5EZApya5lNiCq7RW0qldrF9N9gf597v/u4iWcXONcXu8oxzlvz/vddRxXlvw
	NpyfKMEHY=
X-Google-Smtp-Source: AGHT+IF01498un0tSWAnn1Di9SQ50IOxjN2AyB2jrpc+3JXFxPl0fMSWvNz6Z5oCVFiz8j55+fzQuw==
X-Received: by 2002:a05:600d:438f:b0:476:84e9:b55d with SMTP id 5b1f17b1804b1-47684e9bedbmr28893255e9.3.1761556456359;
        Mon, 27 Oct 2025 02:14:16 -0700 (PDT)
Received: from linaro.org ([86.121.7.169])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-475ddae2309sm60319575e9.12.2025.10.27.02.14.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Oct 2025 02:14:15 -0700 (PDT)
Date: Mon, 27 Oct 2025 11:14:14 +0200
From: Abel Vesa <abel.vesa@linaro.org>
To: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Wesley Cheng <quic_wcheng@quicinc.com>, linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v6 6/8] phy: qualcomm: qmp-combo: Update QMP PHY with
 Glymur settings
Message-ID: <j4it7mdacjnx3gocmak5nxx7bqmtxmikum7kn7qr5dh7jac7ok@oiqkbnil6lfd>
References: <20251024-glymur_usb-v6-0-471fa39ff857@oss.qualcomm.com>
 <20251024-glymur_usb-v6-6-471fa39ff857@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20251024-glymur_usb-v6-6-471fa39ff857@oss.qualcomm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251027_021418_403011_05B99F92 
X-CRM114-Status: GOOD (  21.43  )
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

On 25-10-24 17:47:44, Wesley Cheng wrote:
> For SuperSpeed USB to work properly, there is a set of HW settings that
> need to be programmed into the USB blocks within the QMP PHY.  Ensure that
> these settings follow the latest settings mentioned in the HW programming
> guide.  The QMP USB PHY on Glymur is a USB43 based PHY that will have some
> new ways to define certain registers, such as the replacement of TXA/RXA
> and TXB/RXB register sets.  This was replaced with the LALB register set.
> 
> There are also some PHY init updates to modify the PCS MISC register space.
> Without these, the QMP PHY PLL locking fails.
> 
> Signed-off-by: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-combo.c          | 288 ++++++++++
>  drivers/phy/qualcomm/phy-qcom-qmp-pcs-aon-v8.h     |  17 +
>  drivers/phy/qualcomm/phy-qcom-qmp-pcs-misc-v8.h    |  12 +
>  .../phy/qualcomm/phy-qcom-qmp-qserdes-lalb-v8.h    | 639 +++++++++++++++++++++
>  drivers/phy/qualcomm/phy-qcom-qmp-usb43-pcs-v8.h   |  33 ++
>  .../qualcomm/phy-qcom-qmp-usb43-qserdes-com-v8.h   | 224 ++++++++
>  drivers/phy/qualcomm/phy-qcom-qmp.h                |   2 +
>  7 files changed, 1215 insertions(+)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
> index 1caa1fb6a8c7..d1534ed7200b 100644
> --- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c

[...]

>  
> +static const unsigned int qmp_v8_n3_usb43dpphy_regs_layout[QPHY_LAYOUT_SIZE] = {
> +	[QPHY_SW_RESET]			= QPHY_V6_N4_PCS_SW_RESET,
> +	[QPHY_START_CTRL]			= QPHY_V6_N4_PCS_START_CONTROL,
> +	[QPHY_PCS_STATUS]			= QPHY_V6_N4_PCS_PCS_STATUS1,
> +	[QPHY_PCS_POWER_DOWN_CONTROL]	= QPHY_V6_N4_PCS_POWER_DOWN_CONTROL,

The patches I have for DP fixes these by adding the V8_N3E and using those instead.

The reason this hasn't created any issues is because, at least for these 4, the offsets
are the same.

You can use my patch so you don't have to add those reg offsets yourself, if you want.

> +
> +	/* In PCS_USB */
> +	[QPHY_PCS_AUTONOMOUS_MODE_CTRL]	= QPHY_V6_PCS_USB3_AUTONOMOUS_MODE_CTRL,
> +	[QPHY_PCS_LFPS_RXTERM_IRQ_CLEAR]	= QPHY_V6_PCS_USB3_LFPS_RXTERM_IRQ_CLEAR,
> +
> +	[QPHY_AON_TOGGLE_ENABLE]		= QPHY_V8_PCS_AON_USB3_AON_TOGGLE_ENABLE,
> +
> +	[QPHY_COM_RESETSM_CNTRL]		= QSERDES_V6_COM_RESETSM_CNTRL,
> +	[QPHY_COM_C_READY_STATUS]		= QSERDES_V6_COM_C_READY_STATUS,
> +	[QPHY_COM_CMN_STATUS]		= QSERDES_V6_COM_CMN_STATUS,
> +	[QPHY_COM_BIAS_EN_CLKBUFLR_EN]	= QSERDES_V6_COM_PLL_BIAS_EN_CLK_BUFLR_EN,
> +
> +	[QPHY_DP_PHY_STATUS]		= QSERDES_V6_DP_PHY_STATUS,
> +	[QPHY_DP_PHY_VCO_DIV]		= QSERDES_V6_DP_PHY_VCO_DIV,
> +
> +	[QPHY_TX_TX_POL_INV]		= QSERDES_V6_N4_TX_TX_POL_INV,
> +	[QPHY_TX_TX_DRV_LVL]		= QSERDES_V6_N4_TX_TX_DRV_LVL,
> +	[QPHY_TX_TX_EMP_POST1_LVL]		= QSERDES_V6_N4_TX_TX_EMP_POST1_LVL,
> +	[QPHY_TX_HIGHZ_DRVR_EN]		= QSERDES_V6_N4_TX_HIGHZ_DRVR_EN,
> +	[QPHY_TX_TRANSCEIVER_BIAS_EN]	= QSERDES_V6_N4_TX_TRANSCEIVER_BIAS_EN,
> +};

I'm pretty sure this is wrong. You are using the V8_LALB offsets below, which
is correct, but here you are using V6_N4. At first glance, these are quite
different.

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
