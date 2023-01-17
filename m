Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 383FCC3DA78
	for <linux-phy@archiver.kernel.org>; Tue, 17 Jan 2023 14:42:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QfbWJriQYDiyqOFLUN+Fu+/mLXblxPTlx5HkNude/rU=; b=Ks9NIsIbYCdpn8
	585TVvv7TIpzR0vwdFpa+V8aViYJi2tI5SNeloR7rJXlWQ+Mk78cEhm12jTsnmN7gRdPdK+5bFbj7
	XNJrlq9EtbxuzH3IbtI18I0MmQNIsFyOGQFjXipklcvS/VG6+QPjgmZcLlouq2tBNGvmkqdjlVrco
	AyzP9bMrmaCeUP3/F/7Hs3W/8KTfjhn7TopoVmfa0r1g6fcKEC+PVnzhXYz6WlJ9WvrL4+95uK69+
	cwbCjyIX/RuVK2nLkvo2zpVkxlb2p9uRqyxZau/GMLg+wYZAbR+7kf6IeDLYRiilZf116/7xNTNTg
	1CVjxiVZN1DP7JTWZuKA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pHnAF-00Ef2k-MM; Tue, 17 Jan 2023 14:42:15 +0000
Received: from mail-ed1-x52f.google.com ([2a00:1450:4864:20::52f])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pHnAD-00Ef1y-2J
	for linux-phy@lists.infradead.org; Tue, 17 Jan 2023 14:42:14 +0000
Received: by mail-ed1-x52f.google.com with SMTP id s3so7196728edd.4
        for <linux-phy@lists.infradead.org>; Tue, 17 Jan 2023 06:42:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Hc75TyffO25aVJYo/DlU/tvU9zvgJb8khhzScIUOhmU=;
        b=sdCkItfiGOKGlz4qq5AkoHv3WRIzQLHfvVV3TZJf+ek+OQtXNYCbzA1FgwjlpA0GNS
         5sC0DyfMJ7iB1Jph0oWojgsoaSULER/wDj0F0DuNNDKZOzrPI+8ZKEbxiADF/xdDXZIz
         ONCnd9N7/zb9dN7lYy+KukSz/SGBCqMpgIGlFPecV48O2q8aNjXC6fvov6z9c/JYOA1S
         bKWoPuekTbSTjrWLqO88N3GtiDgz+5O4LlcotXmFginUw9BVzdWHQ+4FSz+Za+KDVk7W
         kuv5KHAZyaJ+xnuiimq9NU9w2p940PM4TE/zn1C2t0t8SXWhFs6vC+Zypfo/YBPScOfa
         xNFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Hc75TyffO25aVJYo/DlU/tvU9zvgJb8khhzScIUOhmU=;
        b=Ot27F95m2IjkN/Y7kwgURhtrD6j2FGYFCFvdIee6EQ5zDslPEdyisE6FdrItuMKB1c
         voTTre+AzbRCbLuBB2Q5MUohsLC/n0TKzgpwqqEbYs3uk0cP95DzhP8Db+gDkau1DL1O
         +GC+9IwIK7eoACaE3llif2Or0tPrf9XoU3qVcvzj09y6GrCeArJU7L2JeRh1KefucbrV
         lrlGSlWCqsO/4njLHVtQ2scpSATooWSAwftcC/yEaQRbNdLtLeMM0MCJPQ2T/0swCT52
         G3yHZXuYGArGv2UFV/834IqfDr1wj2ayQfEkcIlp9zHqxamUtvdvKT5iP2N1nXeAzyRT
         OBbA==
X-Gm-Message-State: AFqh2krgOB+Bdk2th59bLnWDe560FpTTaLYaQWdApBszZ+mNsMM3+iNj
	LEiYcn3yY+ycm0WVqWoL1wWoOA==
X-Google-Smtp-Source: AMrXdXswfLZjseblqDDfG3SABRK5o4w3rIGxnxPRJ/o9FT4Mp4F/UAxJuJ2olnpJUzBUKNUP4UFvkw==
X-Received: by 2002:aa7:c052:0:b0:475:dddc:374a with SMTP id k18-20020aa7c052000000b00475dddc374amr3407422edo.18.1673966529432;
        Tue, 17 Jan 2023 06:42:09 -0800 (PST)
Received: from ?IPV6:2001:14ba:a085:4d00::8a5? (dzccz6yyyyyyyyyyybcwt-3.rev.dnainternet.fi. [2001:14ba:a085:4d00::8a5])
        by smtp.gmail.com with ESMTPSA id a8-20020aa7d908000000b0049dfd6bdc25sm3805154edr.84.2023.01.17.06.42.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Jan 2023 06:42:09 -0800 (PST)
Message-ID: <61be8f36-7171-dbc1-94ec-7e77438b37f5@linaro.org>
Date: Tue, 17 Jan 2023 16:42:07 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: [PATCH v4 4/6] phy: qcom-qmp: qserdes-txrx-ufs: Add v6 register
 offsets
Content-Language: en-GB
To: Abel Vesa <abel.vesa@linaro.org>, Andy Gross <agross@kernel.org>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>, "vkoul@kernel.org"
 <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Johan Hovold <johan@kernel.org>
References: <20230117142015.509675-1-abel.vesa@linaro.org>
 <20230117142015.509675-5-abel.vesa@linaro.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <20230117142015.509675-5-abel.vesa@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230117_064213_158206_86E1150E 
X-CRM114-Status: GOOD (  17.33  )
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

On 17/01/2023 16:20, Abel Vesa wrote:
> The new SM8550 SoC bumps up the HW version of QMP phy to v6 for USB,
> UFS and PCIE g3x2. Add the new qserdes TX RX but UFS specific offsets
> in a dedicated header file.
> 
> Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> ---
>   .../phy-qcom-qmp-qserdes-txrx-ufs-v6.h        | 30 +++++++++++++++++++
>   drivers/phy/qualcomm/phy-qcom-qmp-ufs.c       |  2 ++
>   2 files changed, 32 insertions(+)
>   create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-qserdes-txrx-ufs-v6.h
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-txrx-ufs-v6.h b/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-txrx-ufs-v6.h
> new file mode 100644
> index 000000000000..6238dd2b8421
> --- /dev/null
> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-txrx-ufs-v6.h
> @@ -0,0 +1,30 @@
> +/* SPDX-License-Identifier: GPL-2.0 */
> +/*
> + * Copyright (c) 2023, Linaro Limited
> + */
> +
> +#ifndef QCOM_PHY_QMP_QSERDES_TXRX_UFS_V6_H_
> +#define QCOM_PHY_QMP_QSERDES_TXRX_UFS_V6_H_
> +
> +#define QSERDES_UFS_V6_TX_RES_CODE_LANE_TX			0x28
> +#define QSERDES_UFS_V6_TX_RES_CODE_LANE_RX			0x2c
> +#define QSERDES_UFS_V6_TX_RES_CODE_LANE_OFFSET_TX		0x30
> +#define QSERDES_UFS_V6_TX_RES_CODE_LANE_OFFSET_RX		0x34

Emty line please

> +#define QSERDES_UFS_V6_RX_UCDR_FO_GAIN_RATE2			0x08
> +#define QSERDES_UFS_V6_RX_UCDR_FO_GAIN_RATE4			0x10

Any chance to doublecheck these two values? I think that 
UCDR_FO_GAIN_RATE2 is 0xd4 (according to phy-qcom-ufs-qmp-v4-cape.h from 
msm-5.10)

> +
> +#define QSERDES_UFS_V6_RX_VGA_CAL_MAN_VAL			0x178
> +#define QSERDES_UFS_V6_RX_MODE_RATE_0_1_B0			0x208
> +#define QSERDES_UFS_V6_RX_MODE_RATE_0_1_B1			0x20c
> +#define QSERDES_UFS_V6_RX_MODE_RATE_0_1_B3			0x214
> +#define QSERDES_UFS_V6_RX_MODE_RATE_0_1_B6			0x220
> +#define QSERDES_UFS_V6_RX_MODE_RATE2_B3				0x238
> +#define QSERDES_UFS_V6_RX_MODE_RATE2_B6				0x244
> +#define QSERDES_UFS_V6_RX_MODE_RATE3_B3				0x25c
> +#define QSERDES_UFS_V6_RX_MODE_RATE3_B4				0x260
> +#define QSERDES_UFS_V6_RX_MODE_RATE3_B5				0x264
> +#define QSERDES_UFS_V6_RX_MODE_RATE3_B8				0x270
> +#define QSERDES_UFS_V6_RX_MODE_RATE4_B3				0x280
> +#define QSERDES_UFS_V6_RX_MODE_RATE4_B6				0x28c
> +
> +#endif
> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
> index 110d8fb9309f..a5cdd58c5b4d 100644
> --- a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
> @@ -27,6 +27,8 @@
>   #include "phy-qcom-qmp-pcs-ufs-v4.h"
>   #include "phy-qcom-qmp-pcs-ufs-v5.h"
>   
> +#include "phy-qcom-qmp-qserdes-txrx-ufs-v6.h"
> +
>   /* QPHY_SW_RESET bit */
>   #define SW_RESET				BIT(0)
>   /* QPHY_POWER_DOWN_CONTROL */

-- 
With best wishes
Dmitry


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
