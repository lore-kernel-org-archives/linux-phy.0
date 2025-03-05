Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7212AC282D0
	for <linux-phy@archiver.kernel.org>; Wed,  5 Mar 2025 02:45:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/f4VZTG85wV+wZ4WPuV5U2H1ZSsgl60SUBglDSw0PfI=; b=peB/vL3LCmcTtF
	eJGFVcesM5HmNO+W+r241piVpb/tu1TpK9VYYEpaGHtVkvTClKvsZE2Xp65WyjuHDjwcOT6LP/y2a
	B3SK3qfD8/sJ22cfTof+au60GtldB5UsGcAOsJqyp6dFBMXpVtajGKWUzRLAtXEEU2Y9rEzaE21KO
	mSHpf/2FtOzA1z4YDHcwE0ANDZn1ofUcEnB1sd2vhtWZ/ylX024yd69gG8ylyyRydS3FRZy8C4nkd
	W/LQGMkTTFrmMdwQcf6aJjXNopTN2Ksiwn1GCfvK6tf+cw3SXu4WTmVEbGqKTjtmUoN06fUZGgVzD
	rXnMNgRHrhlW/5wyARxQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tpela-00000006pOL-0vtp;
	Wed, 05 Mar 2025 02:45:50 +0000
Received: from mail-lf1-x130.google.com ([2a00:1450:4864:20::130])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tpelX-00000006pNR-3AbW
	for linux-phy@lists.infradead.org;
	Wed, 05 Mar 2025 02:45:48 +0000
Received: by mail-lf1-x130.google.com with SMTP id 2adb3069b0e04-5496bc2e261so2786442e87.3
        for <linux-phy@lists.infradead.org>; Tue, 04 Mar 2025 18:45:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1741142746; x=1741747546; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=rnCIdQjyvJoIw+09MQfZJbNjZFzCmtvJnm0G8vRNJh0=;
        b=HG2APG+BMUKPxZ8hrpHLejUMJPHF+YKXUsIChB8/4LXeQg5kJLYLN5RKTGJW9lSrch
         fe1OoYKvXz7cqW/A+V9KkpYwwyPmjhV9AZSkXzklJhRio4ASlPYMWgKpSBp2+hTaQA0c
         p1M/KynC4dMHLLp6KD8cNr50K0LPZVRqI11gkSe1zSjMgbmorzI1z7A7rIO5lw7G5Dmo
         OOD4kVJtD5uSIfUUwdY/0SrSFEOIVu4I/4aEUzXTw/y704QNd7paQ+fqoLNncWjU7Aot
         JEuY2P/XeDHC3AZrxJRoyuO82Ib1rUKreox+4IjP+4JjKuRvIXnZzt+NX5pM6cRAeNgo
         Qupw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741142746; x=1741747546;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=rnCIdQjyvJoIw+09MQfZJbNjZFzCmtvJnm0G8vRNJh0=;
        b=JRns/b4SZX2DO7jhS5UhZp+PeUvPs/4VWVkE8iESTB9MHNBbZeUtRiRiPJtht7QU76
         1JR/W/NJbT1segD2UO2JnfOGiYWk7O1QG0CJLARApepeiK/2aM+T75gaZfjYKrnZxnHj
         eqHOLpEliG2uzK8aNWcBh88Q7Gm2cczmSJ36wh/Im6j//OCQijDyAAzfqQYXAYP8pbYG
         /T8JusL/qKRCL94cBV2e2xehfxohaMtORObMCXGA/p4ALyP8YdtK2zFdAF5ApFahBQbg
         zp9wtYxrmDBSQwA1eAp+GS6NtqnlsKxaDGmRg/dQ6IUNM+wqWlofpxB7v5aG23Teod5l
         QqLA==
X-Forwarded-Encrypted: i=1; AJvYcCU5XQEL+AaA6+L5ZfKSHC0wXPDjGb7ouIBjKofe9kep5NZ6T2DRMzx5QmohI5WZhu2maAA9NGDe6t0=@lists.infradead.org
X-Gm-Message-State: AOJu0Yyx2MxQdS2sbKdHiww81zdhNGoGDmbHM0CIjJv1JQvUgYrHJeka
	uQoHpgVrfQqUkgWV8cgADCGabkAaqclB3Ht/o8gxfG/SEzWRlHv+L1iphpSQ0yY=
X-Gm-Gg: ASbGncuvu100/CP7fgWNtYCfoMNHAt6FXqPD+7IjrCUGuR7WqnhuTd5PsQ8ZtSmSx5H
	mEityvlZSt0L6uH+A0GJErNRkx3q7WtuvKq2Fju6ucPGgeLyG+n7547E+jSjFQfLmxlyswV9O+v
	04wVo8r4OcmKTxREGJXkqy1qLJDPFhQ/jlPeS3MNEwXVwT3CcG5F1gtI7UCekR8N+mM+Rx72cxa
	FUHvQahHYgwTF2KdtRD7IVpPI6BPpSmZidMJbamLShGoaoH6EwStnA0sitDnaPq9BR1COPH8l5X
	HHlhE3EcXvV+BfUAHYx7MEytWhzWSFZ7dicap+R9L3X+QLVuoO4hDjHFaXkc4w7xZhm7UQO6NHq
	7e1CzTSyUYsx3oO4NrccYgCjf
X-Google-Smtp-Source: AGHT+IENQirHPPtkH1C08buo5FlxHD+bBXarik3t8IBthupg5sNtQI8Z2GSZNo/BlNfNZfWRiNGXiA==
X-Received: by 2002:a19:5e5e:0:b0:549:735f:f0f6 with SMTP id 2adb3069b0e04-5497d38ecfcmr346846e87.50.1741142746049;
        Tue, 04 Mar 2025 18:45:46 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54959d33af7sm1173076e87.215.2025.03.04.18.45.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 04 Mar 2025 18:45:44 -0800 (PST)
Date: Wed, 5 Mar 2025 04:45:42 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Melody Olvera <quic_molvera@quicinc.com>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Wesley Cheng <quic_wcheng@quicinc.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	Philipp Zabel <p.zabel@pengutronix.de>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
	Will Deacon <will@kernel.org>, linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v2 6/9] phy: qcom: Add M31 based eUSB2 PHY driver
Message-ID: <dfpqg6u7kdvurgajufaldvpdxhe2pawmgum6ngtbbstdxrngwx@i2masto6nnwk>
References: <20250304-sm8750_usb_master-v2-0-a698a2e68e06@quicinc.com>
 <20250304-sm8750_usb_master-v2-6-a698a2e68e06@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250304-sm8750_usb_master-v2-6-a698a2e68e06@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250304_184547_801116_FFA9287A 
X-CRM114-Status: GOOD (  17.86  )
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

On Tue, Mar 04, 2025 at 01:56:39PM -0800, Melody Olvera wrote:
> From: Wesley Cheng <quic_wcheng@quicinc.com>
> 
> SM8750 utilizes an eUSB2 PHY from M31.  Add the initialization
> sequences to bring it out of reset and into an operational state.  This
> differs to the M31 USB driver, in that the M31 eUSB2 driver will
> require a connection to an eUSB2 repeater.  This PHY driver will handle
> the initialization of the associated eUSB2 repeater when required.
> 
> Signed-off-by: Wesley Cheng <quic_wcheng@quicinc.com>
> Signed-off-by: Melody Olvera <quic_molvera@quicinc.com>
> ---
>  drivers/phy/qualcomm/Kconfig              |  10 +
>  drivers/phy/qualcomm/Makefile             |   1 +
>  drivers/phy/qualcomm/phy-qcom-m31-eusb2.c | 296 ++++++++++++++++++++++++++++++
>  3 files changed, 307 insertions(+)
> 

[...]

> +
> +static int msm_m31_eusb2_write_readback(void __iomem *base, u32 offset,

m31eusb2_phy_write_readback()

> +					const u32 mask, u32 val)
> +{
> +	u32 write_val;
> +	u32 tmp;
> +

[..]

> +
> +static const struct phy_ops m31eusb2_phy_gen_ops = {
> +	.init	= m31eusb2_phy_init,
> +	.exit	= m31eusb2_phy_exit,
> +	.owner		= THIS_MODULE,

Strange alignment

> +};
> +

[...]

> +
> +	phy->phy = devm_phy_create(dev, NULL, &m31eusb2_phy_gen_ops);
> +	if (IS_ERR(phy->phy))
> +		return dev_err_probe(dev, PTR_ERR(phy->phy),
> +				     "failed to create phy\n");
> +
> +	for (i = 0; i < M31_EUSB_NUM_VREGS; i++)
> +		phy->vregs[i].supply = m31_eusb_phy_vreg_names[i];
> +
> +	ret = devm_regulator_bulk_get(dev, M31_EUSB_NUM_VREGS, phy->vregs);

devm_regulator_bulk_get_const()

> +	if (ret)
> +		return dev_err_probe(dev, ret,
> +				"failed to get regulator supplies\n");
> +
> +

[..]

> +MODULE_DESCRIPTION("eUSB2 Qualcomm M31 HSPHY driver");
> +MODULE_LICENSE("GPL");

MODULE_AUTHOR()?

> 
> -- 
> 2.46.1
> 

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
