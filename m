Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0C65CC83F14
	for <linux-phy@archiver.kernel.org>; Wed, 30 Aug 2023 20:09:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4/4IV7AuWHo9Ne8/Ylunuqj2iM0jMnfndFb6JiD9MC0=; b=1jpaJefCxqt9HT
	oXA3ZsElrLXXSFJ/h80zcRYlNclVcIK/sgmjRY2FAv+UaVTGkqrW9pFYfEukrAscoqSpuX6Afa0jQ
	M3+UDXXKRY2qRp1vy/VHC87nZHx/4Q8bappaSopIK+HmxmfTw9LQxUqu89VRYoL64xfkol22QBXKX
	NwDZEAl3WuFqPYgZkDx3gpdEpfHFgyw0czY5S4LqCIeOKUMLeUa+j9xu4YetbinSydKVsowbPZ3OL
	H4dexESUobHgpxZJJvsG6uGoskRI1dSExsmcsBfwBiQsH6nury9UH8D5GVsj3HGVB9vGJjhFGUWBU
	H2YR3WNKs0RQGU4+JlkA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qbRVa-00E73b-1t;
	Wed, 30 Aug 2023 20:09:46 +0000
Received: from mail-yb1-xb35.google.com ([2607:f8b0:4864:20::b35])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qbRVY-00E72n-0K
	for linux-phy@lists.infradead.org;
	Wed, 30 Aug 2023 20:09:45 +0000
Received: by mail-yb1-xb35.google.com with SMTP id 3f1490d57ef6-d7485d37283so5792865276.1
        for <linux-phy@lists.infradead.org>; Wed, 30 Aug 2023 13:09:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1693426180; x=1694030980; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=aJIb62bEI+abOZ0+u4aCxcyg1D1ywbkZPjZNGK2GZY0=;
        b=Hx4drhxkGdznyk5ZM1wHoCR4GL8ONnkV4+fwO/6iXjIfehqyB4IYUGX46HKjF4gaAY
         3AlPgLeWcrM5iOw6UuXv4eZgdboKIbNmRgGG+ekRxPWcs0L8wYRxPnVBt6oBnj1J3Xa/
         hBkpww+9mPYzKEWISIWjfpEaLLQ+PRGF9vGhApZIVCgwjWkbuQ50y4/WlTuP4BA4LUYZ
         YgHmUTkqYxOXY1R3adZZuYAJPokGqxtkMj6TyIkhlCXTScM8HrxZYVZlL0VWjE8umRx8
         AUFpkV/ZCTyBWwdEyWS11mivKmO3UqEQKEPuZa//MWQwjNj/cwe4RQDPgxcIgqAEOugA
         k8Sg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1693426180; x=1694030980;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=aJIb62bEI+abOZ0+u4aCxcyg1D1ywbkZPjZNGK2GZY0=;
        b=U8dcmp1yfL3p5R23WAMMRftbNyNTTAp0fa396Oao9nDaAFB+Ws4SVrFSGQgS2n4WUR
         twMZmZc+bd0ZeKZPi19Fb7an6w3YWlj8fnEzcr5I+4tNMIdMYZcYJY40UDkYD8JkLVvI
         UgdtyB4NRST2KAmtU5n89Vba2cwXj9xKDC5op57b2OacJW9hPDnCzA25iCtPiFfutFGJ
         9Qsa1k6vQ7+yeM0GzaJmnzfcv9w5Jz9HU0PbN9D1IQ7J8gi9e087MDvyAwP9Pcusnq0B
         FbzRbcci+rVDliFGcyN0vEZV69uqZ86Y95wanr0snPqhWKqk+HJwRMm7YudSffAB780e
         dPZg==
X-Gm-Message-State: AOJu0YxIKuq1TpFMQqBLw8NgqcafZYR/lKCb2Hdc2BuIvmdjojZ7BUA/
	h1qjgYYssk+xEEw96zyE6zBPO2C5O5l93fGbDkb2Lg==
X-Google-Smtp-Source: AGHT+IGZVwnuEqzyqkBgaq+ePEab/gUlpPuMtKnej5Gso+diHBC4efLmP1AVk+hUUq9mcyqV6DF3d9cFfKSKASs5OEo=
X-Received: by 2002:a25:b06:0:b0:d78:26a0:ab8b with SMTP id
 6-20020a250b06000000b00d7826a0ab8bmr3151567ybl.55.1693426180516; Wed, 30 Aug
 2023 13:09:40 -0700 (PDT)
MIME-Version: 1.0
References: <20230830111722.19380-1-quic_nsekar@quicinc.com> <20230830111722.19380-3-quic_nsekar@quicinc.com>
In-Reply-To: <20230830111722.19380-3-quic_nsekar@quicinc.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Wed, 30 Aug 2023 23:09:29 +0300
Message-ID: <CAA8EJpohi35ic7Lwb29cz17n2gLqxWQ2WUAQfkBSvX3wkOHaEA@mail.gmail.com>
Subject: Re: [PATCH V2 2/4] phy: qcom-m31: Add compatible, phy init sequence
 for IPQ5018
To: Nitheesh Sekar <quic_nsekar@quicinc.com>
Cc: agross@kernel.org, andersson@kernel.org, konrad.dybcio@linaro.org, 
	vkoul@kernel.org, kishon@kernel.org, robh+dt@kernel.org, 
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, 
	gregkh@linuxfoundation.org, quic_srichara@quicinc.com, 
	quic_varada@quicinc.com, quic_wcheng@quicinc.com, 
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-usb@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230830_130944_145251_6AB6D0AF 
X-CRM114-Status: GOOD (  19.51  )
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

On Wed, 30 Aug 2023 at 21:32, Nitheesh Sekar <quic_nsekar@quicinc.com> wrote:
>
> Add phy init sequence and compatible string for IPQ5018
> chipset.
>
> Signed-off-by: Nitheesh Sekar <quic_nsekar@quicinc.com>
> ---
> V2:
>         Updated the commit message.
> ---
>  drivers/phy/qualcomm/phy-qcom-m31.c | 60 +++++++++++++++++++++++++++++
>  1 file changed, 60 insertions(+)
>
> diff --git a/drivers/phy/qualcomm/phy-qcom-m31.c b/drivers/phy/qualcomm/phy-qcom-m31.c
> index ed08072ca032..81b72ebde305 100644
> --- a/drivers/phy/qualcomm/phy-qcom-m31.c
> +++ b/drivers/phy/qualcomm/phy-qcom-m31.c
> @@ -82,6 +82,59 @@ struct m31_priv_data {
>         unsigned int                    nregs;
>  };
>
> +struct m31_phy_regs m31_ipq5018_regs[] = {
> +       {
> +               USB_PHY_CFG0,
> +               UTMI_PHY_OVERRIDE_EN,
> +               0
> +       },

c99 initialisers? And maybe drop the 0 delay inits.

> +       {
> +               USB_PHY_UTMI_CTRL5,
> +               POR_EN,
> +               15
> +       },
> +       {
> +               USB_PHY_FSEL_SEL,
> +               FREQ_SEL,
> +               0
> +       },
> +       {
> +               USB_PHY_HS_PHY_CTRL_COMMON0,
> +               COMMONONN | FSEL | RETENABLEN,
> +               0
> +       },
> +       {
> +               USB_PHY_REFCLK_CTRL,
> +               CLKCORE,
> +               0
> +       },
> +       {
> +               USB_PHY_UTMI_CTRL5,
> +               POR_EN,
> +               0
> +       },
> +       {
> +               USB_PHY_HS_PHY_CTRL2,
> +               USB2_SUSPEND_N_SEL | USB2_SUSPEND_N | USB2_UTMI_CLK_EN,
> +               0
> +       },
> +       {
> +               USB_PHY_UTMI_CTRL5,
> +               0x0,
> +               0
> +       },
> +       {
> +               USB_PHY_HS_PHY_CTRL2,
> +               USB2_SUSPEND_N | USB2_UTMI_CLK_EN,
> +               0
> +       },
> +       {
> +               USB_PHY_CFG0,
> +               0x0,
> +               0
> +       },
> +};
> +
>  struct m31_phy_regs m31_ipq5332_regs[] = {
>         {
>                 USB_PHY_CFG0,
> @@ -268,6 +321,12 @@ static int m31usb_phy_probe(struct platform_device *pdev)
>         return PTR_ERR_OR_ZERO(phy_provider);
>  }
>
> +static const struct m31_priv_data m31_ipq5018_data = {
> +       .ulpi_mode = false,
> +       .regs = m31_ipq5018_regs,
> +       .nregs = ARRAY_SIZE(m31_ipq5018_regs),
> +};
> +
>  static const struct m31_priv_data m31_ipq5332_data = {
>         .ulpi_mode = false,
>         .regs = m31_ipq5332_regs,
> @@ -275,6 +334,7 @@ static const struct m31_priv_data m31_ipq5332_data = {
>  };
>
>  static const struct of_device_id m31usb_phy_id_table[] = {
> +       { .compatible = "qcom,ipq5018-usb-hsphy", .data = &m31_ipq5018_data },
>         { .compatible = "qcom,ipq5332-usb-hsphy", .data = &m31_ipq5332_data },
>         { },
>  };
> --
> The Qualcomm Innovation Center, Inc. is a member of the Code Aurora Forum,
> a Linux Foundation Collaborative Project
>


-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
