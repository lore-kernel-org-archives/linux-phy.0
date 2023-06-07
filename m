Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 43983C7EE29
	for <linux-phy@archiver.kernel.org>; Wed,  7 Jun 2023 11:20:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:MIME-Version:
	Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=umaz33fPi3R6wyu/5vexWUhtvi6wpPyD/fA/05NWYw0=; b=zcu9FmhxyLlnvWNdFK5evaBH+m
	/1GFMiOZdk+L6HqRmr31iAh1OGyn5I0GNb0lRvi73CVkTh3UmABx+unpf5ggcl4FNeuw7hdKny4lZ
	jowyJjRCO6tER1LvNVkxFYKYSXv//YBnGAYkxRNuKFawOi0ot2hJTJqKTbctFTSsOYuVE5v55cNBh
	/LxYuEzblaEs3wEiiJ/hWaQpVhFU+6OH+wsRkixz7vJ1ACK0NKzPUMIM7Psh2NZwdQgc/Fq6MBixr
	eceOoXUrJ0o6ahPmuUf53xlaOkcO0iVtJYhjf2SEbXFJJE7ugqGiCdS1crT/S5oq5LT0ATgpe7B15
	v5h0PF4Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q6rD1-005d13-2y;
	Wed, 07 Jun 2023 11:20:11 +0000
Received: from mail-lf1-x132.google.com ([2a00:1450:4864:20::132])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q6rCz-005czD-16
	for linux-phy@lists.infradead.org;
	Wed, 07 Jun 2023 11:20:10 +0000
Received: by mail-lf1-x132.google.com with SMTP id 2adb3069b0e04-4f619c2ba18so5444949e87.1
        for <linux-phy@lists.infradead.org>; Wed, 07 Jun 2023 04:20:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1686136806; x=1688728806;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=BTBg9MyG6jhsl+u10WSeM0LsmdB54Dp+FeeVDwf+P1E=;
        b=GqGvhfCD5CfG/i9PdEtiYtDORlS2hSYj/XdMUA6gwOK8QYt2DOpbQVjlH403owaCe1
         lt2U1vB/X6Q7w6wsrTq+cvIdnX26i/HZvKpE5YJoX+GTLQcdhI8JXBPwryb7qPQMyEMU
         XipEAQqFjEkejFo7Nr4oTddfOWdKj0frkMfRavbwap9iA+85xQEXxQjlNigBkP5nr/dP
         0ywDsqvbzc0MGbhC37pE6yc3JUO0S6eAkpMYkhavE0Vbsz54D8dNOaWTbMlKHV2dLEv/
         CrZNM3bNoMVLKZSfpx85+uyuxt4osLX51Td9LTfFkLvgjisW/b36SNH7JkiB89JbhNDM
         IdZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686136806; x=1688728806;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=BTBg9MyG6jhsl+u10WSeM0LsmdB54Dp+FeeVDwf+P1E=;
        b=c+Jh1FABXfSa6e41TZHp0WDmOMToqXR/Qq0h+SKsK9SIgw/ZAO0zwIMMPULOVgmFSo
         +AYB77DV/6d7afWx7IMNL/EurG5V1+/tqBalG+7k3I8gfBAo5ihZMN1ffd1YeyPyDfJ4
         l0lDcXGcIEUPR6KaUDSeBpDjjhHShdWz7PrIZoI0tXnhrdRN5pQC8iQkeVXpbQoGIJNT
         ty14EESNj6qdmLJuaYkpAmg0aLtX+HaXDq5dA1c+rsj8MY3xFcP+xjdAX4yG6G6JjWMZ
         S3fUIwHQKN1hUiODXYqrM87oiihjvjfYlWxvXGMScXCmlGFJ2d/FTiPh15n/DsA468Z3
         47+A==
X-Gm-Message-State: AC+VfDyKw5o/0BugHXNWYKWkiJrbSJpiCHQORtU1SFfnbhoYpyBkNw4h
	EqW08u3BjdjHh0b8MPV+nf9bOg==
X-Google-Smtp-Source: ACHHUZ4dGJnb/Q4jQtanIF6np0lUFYJ9Kec/sjx85wUK5bWSOr8484OmnpVW6Ub4tegvaeUknGYZyQ==
X-Received: by 2002:a2e:320c:0:b0:2b1:e966:b349 with SMTP id y12-20020a2e320c000000b002b1e966b349mr1944701ljy.31.1686136806130;
        Wed, 07 Jun 2023 04:20:06 -0700 (PDT)
Received: from ?IPV6:2001:14ba:a0db:1f00::8a5? (dzdqv0yyyyyyyyyyybcwt-3.rev.dnainternet.fi. [2001:14ba:a0db:1f00::8a5])
        by smtp.gmail.com with ESMTPSA id y19-20020a2e3213000000b002b1e6a78d3esm1096403ljy.82.2023.06.07.04.20.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 07 Jun 2023 04:20:05 -0700 (PDT)
Message-ID: <f007fbf0-b1a7-cb44-d662-c30bf114365e@linaro.org>
Date: Wed, 7 Jun 2023 14:20:04 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH 5/9] phy: qcom-m31: Introduce qcom,m31 USB phy
Content-Language: en-GB
To: Varadarajan Narayanan <quic_varada@quicinc.com>, agross@kernel.org,
 andersson@kernel.org, konrad.dybcio@linaro.org, vkoul@kernel.org,
 kishon@kernel.org, robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 conor+dt@kernel.org, gregkh@linuxfoundation.org, catalin.marinas@arm.com,
 will@kernel.org, mturquette@baylibre.com, sboyd@kernel.org,
 p.zabel@pengutronix.de, arnd@arndb.de, geert+renesas@glider.be,
 neil.armstrong@linaro.org, nfraprado@collabora.com, broonie@kernel.org,
 rafal@milecki.pl, quic_srichara@quicinc.com, quic_varada@quicinc.org,
 quic_wcheng@quicinc.com, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-clk@vger.kernel.org
References: <cover.1686126439.git.quic_varada@quicinc.com>
 <636308462efb579734de829fb6e9cbda81b982f7.1686126439.git.quic_varada@quicinc.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <636308462efb579734de829fb6e9cbda81b982f7.1686126439.git.quic_varada@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230607_042009_380977_8D372E30 
X-CRM114-Status: GOOD (  16.30  )
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

On 07/06/2023 13:56, Varadarajan Narayanan wrote:
> Introduce CONFIG_PHY_QCOM_M31_USB for including the M31 phy driver
> 
> Signed-off-by: Varadarajan Narayanan <quic_varada@quicinc.com>

Is there any reason to keep Kconfig, Makefile and driver in different 
commits?

> ---
>   drivers/phy/qualcomm/Kconfig | 11 +++++++++++
>   1 file changed, 11 insertions(+)
> 
> diff --git a/drivers/phy/qualcomm/Kconfig b/drivers/phy/qualcomm/Kconfig
> index 67a45d9..8a363dd 100644
> --- a/drivers/phy/qualcomm/Kconfig
> +++ b/drivers/phy/qualcomm/Kconfig
> @@ -188,3 +188,14 @@ config PHY_QCOM_IPQ806X_USB
>   	  This option enables support for the Synopsis PHYs present inside the
>   	  Qualcomm USB3.0 DWC3 controller on ipq806x SoC. This driver supports
>   	  both HS and SS PHY controllers.
> +
> +config PHY_QCOM_M31_USB
> +	tristate "Qualcomm M31 HS PHY driver support"
> +	depends on (USB || USB_GADGET) && ARCH_QCOM
> +	select USB_PHY
> +	help
> +	  Enable this to support M31 HS PHY transceivers on Qualcomm chips
> +	  with DWC3 USB core. It handles PHY initialization, clock
> +	  management required after resetting the hardware and power
> +	  management. This driver is required even for peripheral only or
> +	  host only mode configurations.

-- 
With best wishes
Dmitry


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
