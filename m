Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 39C50CF884F
	for <linux-phy@archiver.kernel.org>; Fri,  4 Oct 2024 23:34:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AJzGTKolgWJKKwV0z791DFUh/pqc4FOJM+vwbU0MKN4=; b=3SDY7Qv0x9PUrZ
	ORicySAEoak0dH+qEQSyRuv12yu/P5I+c//Vfi6FhEuhAUb4GWzAV5SW9YEnAajw5nKlETDZefEZR
	ftPSRIOR7c1uw6gA4lcKHAusntMoPCDueuoi9ZQ81XKqF7ode+LxNnBFzpyXvajsF2OH0t1ljfxpt
	tN2W4f1A8F8YICk+hYLdhcA70l15g+k8eu9IVv1G9MdEYjK7hqoacIuRZ7QmTvTLNWHG7oWG8FaNl
	2VmNGTi1d6voZEmT+UmTf3qYvcmcgskrgsqcMiEZVooNHV7ICfNVNjZUOkNCD5R1pxTRhGzqCHPCJ
	ZA6vNZoWUa6fip2RK/vA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1swroI-0000000ERzz-1ROu;
	Fri, 04 Oct 2024 23:34:10 +0000
Received: from mail-qv1-xf31.google.com ([2607:f8b0:4864:20::f31])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1swroF-0000000ERzJ-27cb
	for linux-phy@lists.infradead.org;
	Fri, 04 Oct 2024 23:34:09 +0000
Received: by mail-qv1-xf31.google.com with SMTP id 6a1803df08f44-6cb3d2ce75eso32978786d6.0
        for <linux-phy@lists.infradead.org>; Fri, 04 Oct 2024 16:34:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google; t=1728084844; x=1728689644; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=aEr1bgGbdIhTRvJq6QQK1LSQE3Bvhn7MMNbTSr1CmZY=;
        b=dXkV0Ha+M0KwLkZx40l2/UFD56TpF1aIMo+2isflfX5zrFayl/C/UiEJcZpHSbHrlI
         uKWbaDA/EE9Ij0eAp8E1t3wQZOqnm2g3739b+xgInvSmRgqEO1t2yXyFgnPdbvL/H+cA
         MjGqffhkCBgPSMhnb0jPOIH8isATF7Wmf4jZI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728084844; x=1728689644;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=aEr1bgGbdIhTRvJq6QQK1LSQE3Bvhn7MMNbTSr1CmZY=;
        b=t0uEbzeMTxDkp+T94AMMjntlpZaB0ApZUbD8LKg7iuEF0MjwqVlQDRHDfxXSqeiiVI
         vJ+1ojh1xQTVf46EbpxKBTh/WezLDu49CuSB2q+LyeKzQb/1gWZdoyDbsZtKdIDpuKsh
         2tOaUDafI/kobiCaNi/8SzLgS0MKHfed/tn609GW2TiBQq/bXlCNfHx85+TUaCTIthNO
         3hvQv6FrmcWvsWq71K+K19LyqMcOFxdBy3LpnbMKp+QmGbkvaTgtPXn3DofajJEVkwo4
         DQ51/8fr9Lt0dE2uX52K2zjz0pPgYnsyinUHHqBoABKOvpVOKfpHe+e28gkEo30ZDS5H
         RLVA==
X-Forwarded-Encrypted: i=1; AJvYcCUizKydJDsbxBXSOm8fwEM3MHQnb9TLbCmYPanR5tPO13/iQz7yHkSbEY4dCzYLBYZsaSWb3OIivZo=@lists.infradead.org
X-Gm-Message-State: AOJu0Yx4ljXcD2lJ4WsPZaU7nxyGSy3goMLOK287/cXoQqoce3WEOFZW
	0TxzGWxAPTUVg0rWvMj2sB8l7RPbiJQIFZdSA5r1rzvMSDiBeKt0dqF/HW5mjL2THzVVV1dWl3B
	2rGy9
X-Google-Smtp-Source: AGHT+IGaquXlqirj+VXnsOr24B/0vE++hyztwT2o9zz/fzDRgzv3htgmjpxsPMvdfi3sF6F9ZqPKVQ==
X-Received: by 2002:a05:6214:226a:b0:6cb:55e4:54d5 with SMTP id 6a1803df08f44-6cb9011ee5dmr153370606d6.10.1728084844502;
        Fri, 04 Oct 2024 16:34:04 -0700 (PDT)
Received: from [10.69.74.64] ([192.19.223.252])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-6cba4751032sm3438976d6.84.2024.10.04.16.34.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 04 Oct 2024 16:34:04 -0700 (PDT)
Message-ID: <539c5456-b807-4bb5-b5cd-28eb1c22132a@broadcom.com>
Date: Fri, 4 Oct 2024 16:34:02 -0700
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/2] phy: usb: Fix missing elements in BCM4908 USB init
 array
To: Sam Edwards <cfsworks@gmail.com>, Al Cooper <alcooperx@gmail.com>
Cc: Broadcom internal kernel review list
 <bcm-kernel-feedback-list@broadcom.com>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>,
 Florian Fainelli <florian.fainelli@broadcom.com>,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org
References: <20241004034131.1363813-1-CFSworks@gmail.com>
 <20241004034131.1363813-2-CFSworks@gmail.com>
Content-Language: en-US
From: Justin Chen <justin.chen@broadcom.com>
In-Reply-To: <20241004034131.1363813-2-CFSworks@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241004_163407_788162_0618A0DC 
X-CRM114-Status: GOOD (  15.89  )
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



On 10/3/24 8:41 PM, Sam Edwards wrote:
> The Broadcom USB PHY driver contains a lookup table
> (`reg_bits_map_tables`) to resolve register bitmaps unique to certain
> versions of the USB PHY as found in various Broadcom chip families. A
> recent commit (see 'fixes' tag) introduced two new elements to each chip
> family in this table -- except for one: BCM4908. This resulted in the
> xHCI controller not being initialized correctly, causing a panic on
> boot.
> 
> The next patch will update this table to use designated initializers in
> order to prevent this from happening again. For now, just add back the
> missing array elements to resolve the regression.
> 
> Fixes: 4536fe9640b6 ("phy: usb: suppress OC condition for 7439b2")
> Signed-off-by: Sam Edwards <CFSworks@gmail.com>

Woops! Sorry I broke it.

Reviewed-by: Justin Chen <justin.chen@broadcom.com>

> ---
>   drivers/phy/broadcom/phy-brcm-usb-init.c | 2 ++
>   1 file changed, 2 insertions(+)
> 
> diff --git a/drivers/phy/broadcom/phy-brcm-usb-init.c b/drivers/phy/broadcom/phy-brcm-usb-init.c
> index 39536b6d96a9..5ebb3a616115 100644
> --- a/drivers/phy/broadcom/phy-brcm-usb-init.c
> +++ b/drivers/phy/broadcom/phy-brcm-usb-init.c
> @@ -220,6 +220,8 @@ usb_reg_bits_map_table[BRCM_FAMILY_COUNT][USB_CTRL_SELECTOR_COUNT] = {
>   		0, /* USB_CTRL_SETUP_SCB2_EN_MASK */
>   		0, /* USB_CTRL_SETUP_SS_EHCI64BIT_EN_MASK */
>   		0, /* USB_CTRL_SETUP_STRAP_IPP_SEL_MASK */
> +		0, /* USB_CTRL_SETUP_OC3_DISABLE_PORT0_MASK */
> +		0, /* USB_CTRL_SETUP_OC3_DISABLE_PORT1_MASK */
>   		0, /* USB_CTRL_SETUP_OC3_DISABLE_MASK */
>   		0, /* USB_CTRL_PLL_CTL_PLL_IDDQ_PWRDN_MASK */
>   		0, /* USB_CTRL_USB_PM_BDC_SOFT_RESETB_MASK */


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
