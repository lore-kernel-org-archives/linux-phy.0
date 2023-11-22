Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 66EEBC61D9B
	for <linux-phy@archiver.kernel.org>; Wed, 22 Nov 2023 10:12:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4PFergaHTj26scWxoLXtErVo2N44eXRPGT6zw/Qpbyg=; b=aGfiU5DbAuuScc
	wGuWr8wnneocXKOA0cF0MWPUb7OTT/A3QcjjKjNMvMDpewoJWhe0iHO5fcllSOKVdFlJpHLK7MeW1
	P/t9yiJf18R6ktQ6EMgGEuVkvvKGAXevNkZ/G8bfHaVJZITKIJzW/mBU0Eqgm3+oOPz5ViD3ZlNwX
	L7/3Hs4VD3KJUYOogVN0zNShEYTpqTecE9W0B0kYE1zeqVuZHjfSNg7yLG5xqm6HGE92lQLUgPGDe
	OUflVxprRzZ4DZ/2BGUJD7kjRU4LV+9AZ2FsA86c17tAKGf46D9Ag6MmlRySvWRGLutzsGQAivYdu
	51aT545IWjcahmH9PQXQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r5kDR-001OqJ-2i;
	Wed, 22 Nov 2023 10:12:18 +0000
Received: from mail-yb1-xb34.google.com ([2607:f8b0:4864:20::b34])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r5kDP-001OoB-2X
	for linux-phy@lists.infradead.org;
	Wed, 22 Nov 2023 10:12:17 +0000
Received: by mail-yb1-xb34.google.com with SMTP id 3f1490d57ef6-daf7ed42ea6so6462200276.0
        for <linux-phy@lists.infradead.org>; Wed, 22 Nov 2023 02:12:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1700647932; x=1701252732; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=VSREVsoB+CesK7N1lJ9hwky3qVq4cMcaEkJfYCXHc2o=;
        b=X8DeepltJf4/QeaPHTUT9CA8le9tV9LLHlTBQx2VeaA9qEX46flGJk6TWeauCk4CJz
         nA/Ds8nn2pXw5ZNJ9n+3zSrg5Q+TEIGsTCM9CwdEzRM0bMQdSAjbjBIc6s8SppnmoZ3m
         ygpNP7/ePNW9Us4ex7gZXr3frSNlJqlT8q71geJZs1V1Dvz/mQ+FJcSIEBRLEvgfb7JR
         Hvd47ksUEcpwNMT89eIPdD8TAQJOd27e/VKGiI42m91WK3MFmigHtixeQoFYF82ClQoC
         r8hcrUMp7BVer+wQS+fkN3+QgUWLBhz1KA7mAfkQWbI9rdSGa9XnI4M3TLchqD0zL9fV
         Ksvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700647932; x=1701252732;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=VSREVsoB+CesK7N1lJ9hwky3qVq4cMcaEkJfYCXHc2o=;
        b=qzoKvCj1n1Glp9awC/5d29G/3yZuQtqc0ZpJRQPofLs2OSHU7lnj9uhw3TcBQqMB95
         Iv0axPp4EO9qeIpYvERM9GdR5eT5kC+fsyyozvfqu+gWkxf797UCixvSxMJW/z55FzWu
         lOeL4cYywOgSBWF0HGx15vIzXLKq/0jYYUQd/5CRE0X7IMR2AqrsJlk8hxpvrcGvRN4j
         rQZj0Afr1oWtwXK/b+F9528RAWvP/4A0YyTtSjlZlmppjAuDiQSlqp81gMXU2fjZPzGy
         xse2grOtW5vFfxvehTFLfamuctpoIQKpmZbufnM02gL6eq6UuH1YKRGyARERfoacEOZ8
         4BAA==
X-Gm-Message-State: AOJu0YzVtalp9gX1cWbFJiBuZRsilMgSVW5fIIrCqDikryRji/SCPwET
	YKxfiHFPXHhrllpQbnBVlEN3Og00NyPrJSPJOdEn+A==
X-Google-Smtp-Source: AGHT+IFoK6s2cp0X+5kb85bnx93gSvCPfnd5ajslb+t2IOP8hiHp9ntEKCFuwd1BgpAjTsed4Xf9HwYDAoGgI2aS+Os=
X-Received: by 2002:a0d:d6cb:0:b0:5c6:4de5:168f with SMTP id
 y194-20020a0dd6cb000000b005c64de5168fmr1594152ywd.10.1700647931878; Wed, 22
 Nov 2023 02:12:11 -0800 (PST)
MIME-Version: 1.0
References: <20231122-phy-qualcomm-v6-v6-20-v7-new-offsets-v1-0-d9340d362664@linaro.org>
 <20231122-phy-qualcomm-v6-v6-20-v7-new-offsets-v1-2-d9340d362664@linaro.org>
In-Reply-To: <20231122-phy-qualcomm-v6-v6-20-v7-new-offsets-v1-2-d9340d362664@linaro.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Wed, 22 Nov 2023 12:12:00 +0200
Message-ID: <CAA8EJpr2HhiXEbp0QsN-qB+L4WQWiV3o2yCc-f5oqdhdKZGL9A@mail.gmail.com>
Subject: Re: [PATCH 2/7] phy: qcom-qmp: qserdes-txrx: Add some more v6.20
 register offsets
To: Abel Vesa <abel.vesa@linaro.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, linux-arm-msm@vger.kernel.org, 
	linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231122_021215_828225_211EC61F 
X-CRM114-Status: GOOD (  13.15  )
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

On Wed, 22 Nov 2023 at 12:04, Abel Vesa <abel.vesa@linaro.org> wrote:
>
> Add some missing v6.20 registers offsets that are needed by the new
> Snapdragon X Elite (X1E80100) platform.
>
> Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-qserdes-txrx-v6_20.h | 4 ++++
>  1 file changed, 4 insertions(+)
>
> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-txrx-v6_20.h b/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-txrx-v6_20.h
> index 5385a8b60970..7402a94d1be8 100644
> --- a/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-txrx-v6_20.h
> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-txrx-v6_20.h
> @@ -14,11 +14,14 @@
>  #define QSERDES_V6_20_TX_LANE_MODE_3                           0x80
>
>  #define QSERDES_V6_20_RX_UCDR_FO_GAIN_RATE_2                   0x08
> +#define QSERDES_V6_20_RX_UCDR_SO_GAIN_RATE_2                   0x18
>  #define QSERDES_V6_20_RX_UCDR_FO_GAIN_RATE_3                   0x0c

As a side note, this should be probably 0x1c. Could you please verify
it and send a fix?

>  #define QSERDES_V6_20_RX_UCDR_PI_CONTROLS                      0x20
>  #define QSERDES_V6_20_RX_UCDR_SO_ACC_DEFAULT_VAL_RATE3         0x34
>  #define QSERDES_V6_20_RX_IVCM_CAL_CTRL2                                0x9c
>  #define QSERDES_V6_20_RX_IVCM_POSTCAL_OFFSET                   0xa0
> +#define QSERDES_V6_20_RX_DFE_1                                 0xac
> +#define QSERDES_V6_20_RX_DFE_2                                 0xb0
>  #define QSERDES_V6_20_RX_DFE_3                                 0xb4
>  #define QSERDES_V6_20_RX_VGA_CAL_MAN_VAL                       0xe8
>  #define QSERDES_V6_20_RX_GM_CAL                                        0x10c
> @@ -41,5 +44,6 @@
>  #define QSERDES_V6_20_RX_MODE_RATE3_B4                         0x220
>  #define QSERDES_V6_20_RX_MODE_RATE3_B5                         0x224
>  #define QSERDES_V6_20_RX_MODE_RATE3_B6                         0x228
> +#define QSERDES_V6_20_RX_BKUP_CTRL1                            0x22c
>
>  #endif
>
> --
> 2.34.1
>
>


-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
