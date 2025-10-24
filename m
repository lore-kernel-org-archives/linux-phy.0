Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BE4CACCD1A5
	for <linux-phy@archiver.kernel.org>; Fri, 24 Oct 2025 10:04:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VMbU9ZYRMffpYItrGdFUYiC4faU9436osFSfA185i9Y=; b=h+XjPnjH6lTbdP
	2wKByqKkY+4S/8eo88MJlw7x213Ec0ghPZIvMpoo5RgrW2M+1ZfgB62GZWm4GqPVpWydhW2Y5qF8z
	vqcZXBaEBzbWpTpOfnPWAW11bCOhZuthUqDtFrMzfG1o9lYEZJYMimPYx0LJbWLRZWkFA/V2tfMN3
	XYJMaWID/VQsDEDSYqkiTwa4D5fuAdiADKCUYF0U6LfssoAbjl9OQnl6JhhE65uNeOnoYgP43j5K7
	MsIgOJxb9d9JIM3tuMp1FdBoKLKQhdrPQib0W7XUulwBpBpiziWVFbhO7dIY0tmsFu/b40LVbPVo3
	Yh6Ny2qr08mYctjGR0qA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vCEfA-00000008xkz-0blV;
	Fri, 24 Oct 2025 10:04:48 +0000
Received: from mail-wr1-x42f.google.com ([2a00:1450:4864:20::42f])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vCEf6-00000008xi3-3Ysb
	for linux-phy@lists.infradead.org;
	Fri, 24 Oct 2025 10:04:46 +0000
Received: by mail-wr1-x42f.google.com with SMTP id ffacd0b85a97d-4270a0127e1so1320663f8f.3
        for <linux-phy@lists.infradead.org>; Fri, 24 Oct 2025 03:04:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1761300283; x=1761905083; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=zWbJl2ZfP1e0T4fLhRHbzMHg9996oUPVq+nVGOMakuY=;
        b=ScvNrolT8S9z3SglwsFHRzhj6LjHFIyTFhp25XyGT3PHd1iJkB5DmQWxQLTmdWqWAV
         oq3qDTnfR9S8Ub4S1ivXRt75v8wIg5lMrU5gK3ilsiJQ7gVi5HwtwV62pqf3dtcj5G2f
         4uR3KkVMbvnZzB4knQoRTrrWcHeJCKkfeQvUUdRhE7SOUPo07Z7TtFY2D/aA8PBOutaL
         OiOmrIj9qC/JUHRS+PgrNfRVEpFtVkfxsH7+yfaJAyZNSPA8ASPyd475kN6gJNyLwRpF
         +qwUz0a5srCo9foAHfOUzpTqBV66SZIkH417KSJUjbpI5jTR8QKd5UBTaekyLMjf1K/H
         6njA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761300283; x=1761905083;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=zWbJl2ZfP1e0T4fLhRHbzMHg9996oUPVq+nVGOMakuY=;
        b=hvBD5RbG39eGWxqDsj/xUG3Iuvvl6OP2rXiVY3RbY6CLTJpMIC/ajrKjmmcMDQKzqC
         bsZ9XdcCCuMZMjuq7rY60vZy6EisUIWVqhI8fgedPCVBiuHY7Qa6YPIenpwOHHn5c7l8
         qzCRxKJWUiCzLmf1Gy4zkwo3ALl61S5rWvBWF/5d8Zs1rWj/88lKhKw3P6P8pSt5p+2y
         xAT6xz7QUGP2bg+yO376pfdZW7Oj5TEhrVeM/8q3twc7wMXU/oFXh/ckzINsujWJH9ge
         KOFHWhoKp5zRgeEqE0aqust/T3JcJlth7LjBS0NB1kw9RzKDxxVRdzmZ5dRnlQU0nUR3
         Wkag==
X-Forwarded-Encrypted: i=1; AJvYcCWRWPd7nT0MqeLwgvlHA7Ls8GLh0XHtxG+q8/leE/wKPLBpI9P48jsUTlG1gxTzCHEgiBaSX11oYWc=@lists.infradead.org
X-Gm-Message-State: AOJu0Yy9bXKwUL1el/SxxQBotnOQ5G21/37bF86WZ1ELT4HZpB6tb+nW
	Vh+mXS6Ywfgvbe32JVl37YSr/uulJffGn7wm3vPHD6G9IfWMGXlzdw3NKdqPzZ4cVyg=
X-Gm-Gg: ASbGncuuod2yQdbv+RrTKYYRQaXkO4ULOKu4HK4D2zvR7kKVy+LeBO5/obEbFD8S5tj
	k3dYyJi1kMuNc3pmcyOjuZCOyThUSWbA2XAtxP/AwFQZ+Atz2GQfpom3nRL4RDS4mHerHLqIX53
	K7kMyLQtZdkfMY4ronJGhOS3dI/IjJ/PrN3y5T3N+EUd/PEANyrnWwb/O039W++ftYyaWwt/qnv
	6/ecjJyd2BhfuFaWkBAmDa8pJTKwS+NqrxQm6dMnAuS/oE2pPfYEsYdn8/Kof6CzQ+Q8CYPr2/V
	YNjqSkkZs63lhaGFkmxswr+04OlUNxHGBTicSgmMceYqwXkP82lfEmJoled3CaP1rSbGr7abB4y
	ncp8fRWsy9Brmq9Rwhf2kh28p+7HNI4avS/72rWgzfBjdzLU1xCdnOa2k4OaG9N7IGqfl3waQ
X-Google-Smtp-Source: AGHT+IF6VTaVr9HVL8Awi/bueaN0T/qnC3Sz1N+B3cViCb7Dj9HwQB33ju5SKTW2SyXrW4/F7vp/AQ==
X-Received: by 2002:a05:6000:2303:b0:427:6cb:74a4 with SMTP id ffacd0b85a97d-42706cb74a9mr19917135f8f.39.1761300282850;
        Fri, 24 Oct 2025 03:04:42 -0700 (PDT)
Received: from linaro.org ([86.121.7.169])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-429898ccc60sm8596305f8f.34.2025.10.24.03.04.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 24 Oct 2025 03:04:39 -0700 (PDT)
Date: Fri, 24 Oct 2025 13:04:37 +0300
From: Abel Vesa <abel.vesa@linaro.org>
To: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
Cc: krzk+dt@kernel.org, conor+dt@kernel.org, 
	konrad.dybcio@oss.qualcomm.com, dmitry.baryshkov@oss.qualcomm.com, kishon@kernel.org, 
	vkoul@kernel.org, gregkh@linuxfoundation.org, robh@kernel.org, 
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, linux-usb@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v5 07/10] phy: qualcomm: qmp-combo: Update QMP PHY with
 Glymur settings
Message-ID: <zaotrz6upmpwv2w65633rlflubmykzn5dqiydl66y7rdalld4l@bo4oto5iynor>
References: <20251006222002.2182777-1-wesley.cheng@oss.qualcomm.com>
 <20251006222002.2182777-8-wesley.cheng@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20251006222002.2182777-8-wesley.cheng@oss.qualcomm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251024_030444_931226_A5D74214 
X-CRM114-Status: GOOD (  19.58  )
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

On 25-10-06 15:19:59, Wesley Cheng wrote:
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
> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> Signed-off-by: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-combo.c     | 314 ++++++++-
>  .../phy/qualcomm/phy-qcom-qmp-pcs-aon-v8.h    |  17 +
>  .../phy/qualcomm/phy-qcom-qmp-pcs-misc-v8.h   |  12 +
>  .../qualcomm/phy-qcom-qmp-qserdes-lalb-v8.h   | 639 ++++++++++++++++++
>  .../phy/qualcomm/phy-qcom-qmp-usb43-pcs-v8.h  |  33 +
>  .../phy-qcom-qmp-usb43-qserdes-com-v8.h       | 224 ++++++
>  drivers/phy/qualcomm/phy-qcom-qmp.h           |   2 +
>  7 files changed, 1240 insertions(+), 1 deletion(-)
>  create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-pcs-aon-v8.h
>  create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-pcs-misc-v8.h
>  create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-qserdes-lalb-v8.h
>  create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-usb43-pcs-v8.h
>  create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-usb43-qserdes-com-v8.h
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
> index 1caa1fb6a8c7..8216820e388f 100644
> --- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c

[...]

> +static const struct qmp_phy_cfg glymur_usb3dpphy_cfg = {
> +	.offsets		= &qmp_combo_usb43dp_offsets_v8,
> +
> +	.serdes_tbl		= glymur_usb43dp_serdes_tbl,
> +	.serdes_tbl_num		= ARRAY_SIZE(glymur_usb43dp_serdes_tbl),
> +	.tx_tbl			= glymur_usb43dp_lalb_tbl,
> +	.tx_tbl_num		= ARRAY_SIZE(glymur_usb43dp_lalb_tbl),
> +	.pcs_tbl		= glymur_usb43dp_pcs_tbl,
> +	.pcs_tbl_num		= ARRAY_SIZE(glymur_usb43dp_pcs_tbl),
> +	.pcs_usb_tbl		= glymur_usb43dp_pcs_usb_tbl,
> +	.pcs_usb_tbl_num	= ARRAY_SIZE(glymur_usb43dp_pcs_usb_tbl),
> +	.pcs_misc_tbl		= glymur_usb43dp_pcs_misc_tbl,
> +	.pcs_misc_tbl_num	= ARRAY_SIZE(glymur_usb43dp_pcs_misc_tbl),
> +
> +	.dp_serdes_tbl		= qmp_v6_n4_dp_serdes_tbl,
> +	.dp_serdes_tbl_num	= ARRAY_SIZE(qmp_v6_n4_dp_serdes_tbl),
> +	.dp_tx_tbl		= qmp_v6_n4_dp_tx_tbl,
> +	.dp_tx_tbl_num		= ARRAY_SIZE(qmp_v6_n4_dp_tx_tbl),
> +
> +	.serdes_tbl_rbr		= qmp_v6_n4_dp_serdes_tbl_rbr,
> +	.serdes_tbl_rbr_num	= ARRAY_SIZE(qmp_v6_n4_dp_serdes_tbl_rbr),
> +	.serdes_tbl_hbr		= qmp_v6_n4_dp_serdes_tbl_hbr,
> +	.serdes_tbl_hbr_num	= ARRAY_SIZE(qmp_v6_n4_dp_serdes_tbl_hbr),
> +	.serdes_tbl_hbr2	= qmp_v6_n4_dp_serdes_tbl_hbr2,
> +	.serdes_tbl_hbr2_num	= ARRAY_SIZE(qmp_v6_n4_dp_serdes_tbl_hbr2),
> +	.serdes_tbl_hbr3	= qmp_v6_n4_dp_serdes_tbl_hbr3,
> +	.serdes_tbl_hbr3_num	= ARRAY_SIZE(qmp_v6_n4_dp_serdes_tbl_hbr3),
> +
> +	.swing_hbr_rbr		= &qmp_dp_v6_voltage_swing_hbr_rbr,
> +	.pre_emphasis_hbr_rbr	= &qmp_dp_v6_pre_emphasis_hbr_rbr,
> +	.swing_hbr3_hbr2	= &qmp_dp_v5_voltage_swing_hbr3_hbr2,
> +	.pre_emphasis_hbr3_hbr2	= &qmp_dp_v5_pre_emphasis_hbr3_hbr2,
> +
> +	.dp_aux_init		= qmp_v4_dp_aux_init,
> +	.configure_dp_tx	= qmp_v4_configure_dp_tx,
> +	.configure_dp_phy	= qmp_v4_configure_dp_phy,
> +	.calibrate_dp_phy	= qmp_v4_calibrate_dp_phy,

So I see you are adding the DP related config here as well, but it is
definitely not compatible with v6 N4. I'm assyuming you picked v6 N4 as a default
just to allow the USB part work for now, right ?

I don't suppose we can drop the DP related config from this patch and
still have the USB part working, right?

Otherwise, we need to mention the fact that even though the DP part
is also being added, it is broken.

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
