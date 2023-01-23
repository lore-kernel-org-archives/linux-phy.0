Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 61825C54EED
	for <linux-phy@archiver.kernel.org>; Mon, 23 Jan 2023 10:56:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7dIksHIaJDHCicTmu42WAkeksf3DILuXnrfGMcAX9do=; b=RWb2mVeYqgCT2k
	h2JJ8lyZXd8q4pw7BCEYn3SLM+YiyCDOEXGKHXCPaGSVT8qaOccQ8oEA2hUvKrORR9omFiY2LerQK
	RPTRLU5Wvq2xCuSa7aQjUPUoMtQKU0J7Kmq1xSgRuwVtPvTjRoCKEWUF6H1oNbVPUM2dzjdZsq5CZ
	UX1rYma5tpBYYBpKKQmKn9oxTbSU0ioz1aQxuzPI7eDFfHST7hBYwp3WXWEURf0f22+IBqEPr1VLg
	34HJC8VkxJG7WvzbSO7zFIpCCpj7Tle0q0qXSA8bmeiQnLpPiSV7tLWm/TSBGvwo9rcnYxbal55mG
	KEq6rPpjTzig8U5Lj5gg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pJuVN-00GuYO-Pg; Mon, 23 Jan 2023 10:56:49 +0000
Received: from mail-wr1-x433.google.com ([2a00:1450:4864:20::433])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pJuVL-00GuXG-5L
	for linux-phy@lists.infradead.org; Mon, 23 Jan 2023 10:56:48 +0000
Received: by mail-wr1-x433.google.com with SMTP id n7so10389247wrx.5
        for <linux-phy@lists.infradead.org>; Mon, 23 Jan 2023 02:56:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=M+6uYP+MbTYF0NBYNdaigx/58WjLEGFdjk2/rVFjcyc=;
        b=Q7XJBZsR/2LjtipimHF2PWIbSJhSPtlaX/WDZ3z6jD3XW8wwtFX7nivgiFl34QGwbq
         BNoPZ9MmzwLIM3jLL+LG7F+1weXOofb5dYp9DxthnNj6UojG+IJ424ScDqmXVN02bU/Q
         lBGWdYyN98tfymSWPVr5QWJPexlQHipp/8J2x7nWl2AH81Ry+cbsyTmrJN0o0XM2p7ui
         vvILB60sabY9N0yJmMZwUleRwhPLlECoLpHW36yMIhkF7AbSbLZiLmbmGfEdwvFVzOks
         lgpOjCFaFCvR58YjB8aXYYwPVIEeeXo1ycQxP1aBZ7tai4J1zJR4KxpIVhobCx6VpQuR
         w9vQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=M+6uYP+MbTYF0NBYNdaigx/58WjLEGFdjk2/rVFjcyc=;
        b=WAj+uZHcQnyF0PETz8i2HJuTNtThLjbVgdm+FelewhK87rtgKN0avJHdcXnu7MnNpx
         1d+lq0ffxs8EanQyTyEiLuf/uB+ZbP83mcfBB4wMG4HQvoGP0zqixc/8UXkU4V7NJa96
         Jby/la4UER1D+AWGqHHKJofIwwaiBtbcOeORqTY5dIg/qk0AOtZ6vIQyAzSjVPHhIL3j
         YlLyypiHOT4IvEEmKqUPeasdGzN1QL6bV6JRMrhwPysc9MVjD5xWxtTy2ab9yueffQTR
         /NDY1WV21rc5QJewcGNspvSjVw0nUPEkQhXXnSyT78pzMwE8jE4Cbyicp5jmCQW54wuV
         jhpg==
X-Gm-Message-State: AFqh2kom/qdnTPr3NGK2HuNQwB526KIwm63R1Jx49GS2tN89kNeS+I/K
	af9uNvUfBLMamVuJRdBCu9BkMA==
X-Google-Smtp-Source: AMrXdXs0x2uUX0FmQbIv3R5wGA6FQnaTyB5mpfT8FEVNcT8YVvcMWJ5NWN/lCK+THPxUopDAMwuW8A==
X-Received: by 2002:a05:6000:1006:b0:24f:5890:616b with SMTP id a6-20020a056000100600b0024f5890616bmr28966879wrx.56.1674471403238;
        Mon, 23 Jan 2023 02:56:43 -0800 (PST)
Received: from linaro.org ([94.52.112.99])
        by smtp.gmail.com with ESMTPSA id c8-20020a5d4cc8000000b002bdeb0cf706sm22803416wrt.65.2023.01.23.02.56.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Jan 2023 02:56:42 -0800 (PST)
Date: Mon, 23 Jan 2023 12:56:41 +0200
From: Abel Vesa <abel.vesa@linaro.org>
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	"vkoul@kernel.org" <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	Johan Hovold <johan@kernel.org>
Subject: Re: [PATCH v4 4/6] phy: qcom-qmp: qserdes-txrx-ufs: Add v6 register
 offsets
Message-ID: <Y85n6Z3lPhj6gAKb@linaro.org>
References: <20230117142015.509675-1-abel.vesa@linaro.org>
 <20230117142015.509675-5-abel.vesa@linaro.org>
 <61be8f36-7171-dbc1-94ec-7e77438b37f5@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <61be8f36-7171-dbc1-94ec-7e77438b37f5@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230123_025647_247260_BDE5786D 
X-CRM114-Status: GOOD (  22.00  )
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

On 23-01-17 16:42:07, Dmitry Baryshkov wrote:
> On 17/01/2023 16:20, Abel Vesa wrote:
> > The new SM8550 SoC bumps up the HW version of QMP phy to v6 for USB,
> > UFS and PCIE g3x2. Add the new qserdes TX RX but UFS specific offsets
> > in a dedicated header file.
> > 
> > Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> > ---
> >   .../phy-qcom-qmp-qserdes-txrx-ufs-v6.h        | 30 +++++++++++++++++++
> >   drivers/phy/qualcomm/phy-qcom-qmp-ufs.c       |  2 ++
> >   2 files changed, 32 insertions(+)
> >   create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-qserdes-txrx-ufs-v6.h
> > 
> > diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-txrx-ufs-v6.h b/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-txrx-ufs-v6.h
> > new file mode 100644
> > index 000000000000..6238dd2b8421
> > --- /dev/null
> > +++ b/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-txrx-ufs-v6.h
> > @@ -0,0 +1,30 @@
> > +/* SPDX-License-Identifier: GPL-2.0 */
> > +/*
> > + * Copyright (c) 2023, Linaro Limited
> > + */
> > +
> > +#ifndef QCOM_PHY_QMP_QSERDES_TXRX_UFS_V6_H_
> > +#define QCOM_PHY_QMP_QSERDES_TXRX_UFS_V6_H_
> > +
> > +#define QSERDES_UFS_V6_TX_RES_CODE_LANE_TX			0x28
> > +#define QSERDES_UFS_V6_TX_RES_CODE_LANE_RX			0x2c
> > +#define QSERDES_UFS_V6_TX_RES_CODE_LANE_OFFSET_TX		0x30
> > +#define QSERDES_UFS_V6_TX_RES_CODE_LANE_OFFSET_RX		0x34
> 
> Emty line please
> 

Sure. Will drop in the next version.

> > +#define QSERDES_UFS_V6_RX_UCDR_FO_GAIN_RATE2			0x08
> > +#define QSERDES_UFS_V6_RX_UCDR_FO_GAIN_RATE4			0x10
> 
> Any chance to doublecheck these two values? I think that UCDR_FO_GAIN_RATE2
> is 0xd4 (according to phy-qcom-ufs-qmp-v4-cape.h from msm-5.10)

Double checked. The values are correct. Please note that your are
looking in a header file for qmp v4. This is v6.

> 
> > +
> > +#define QSERDES_UFS_V6_RX_VGA_CAL_MAN_VAL			0x178
> > +#define QSERDES_UFS_V6_RX_MODE_RATE_0_1_B0			0x208
> > +#define QSERDES_UFS_V6_RX_MODE_RATE_0_1_B1			0x20c
> > +#define QSERDES_UFS_V6_RX_MODE_RATE_0_1_B3			0x214
> > +#define QSERDES_UFS_V6_RX_MODE_RATE_0_1_B6			0x220
> > +#define QSERDES_UFS_V6_RX_MODE_RATE2_B3				0x238
> > +#define QSERDES_UFS_V6_RX_MODE_RATE2_B6				0x244
> > +#define QSERDES_UFS_V6_RX_MODE_RATE3_B3				0x25c
> > +#define QSERDES_UFS_V6_RX_MODE_RATE3_B4				0x260
> > +#define QSERDES_UFS_V6_RX_MODE_RATE3_B5				0x264
> > +#define QSERDES_UFS_V6_RX_MODE_RATE3_B8				0x270
> > +#define QSERDES_UFS_V6_RX_MODE_RATE4_B3				0x280
> > +#define QSERDES_UFS_V6_RX_MODE_RATE4_B6				0x28c
> > +
> > +#endif
> > diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
> > index 110d8fb9309f..a5cdd58c5b4d 100644
> > --- a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
> > +++ b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
> > @@ -27,6 +27,8 @@
> >   #include "phy-qcom-qmp-pcs-ufs-v4.h"
> >   #include "phy-qcom-qmp-pcs-ufs-v5.h"
> > +#include "phy-qcom-qmp-qserdes-txrx-ufs-v6.h"
> > +
> >   /* QPHY_SW_RESET bit */
> >   #define SW_RESET				BIT(0)
> >   /* QPHY_POWER_DOWN_CONTROL */
> 
> -- 
> With best wishes
> Dmitry
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
