Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BA63BC433F5
	for <linux-phy@archiver.kernel.org>; Wed,  1 Dec 2021 20:40:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:Cc:To:Subject:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=wYTepz7W+E5M5dZf8MQUKi2bOlDrM2RY5/PMsBbi1IE=; b=lCu5vK4mo4zZcxEUfltkbybmC0
	F8T+dk0tN8TUy9diwoMorcujxA0zRrt0eQV6X3T2TWSrDVO224Y91GxoD9RybNdznZMVAEytS1p5B
	yTRzj+5vd7EwdgCO9dG0Wo0WYn4aoimyqpMIS6GZ0zBLGHiGzcJOUNVeQL9bfRw6AVO0iWNRMIMD/
	jOKSOj2mVERZWFGCWo5EhCZCf9w2qXdGGvXuA61evZe7LKfe8/L9var/7KpyE28Em05rocyg7Rl/0
	Stgjg1FA3vM2dQaWDqcAeCcoVL5wR4+Hzoiqc9JjFVsjNN8wNNYYzegZTqGrY0CM1YoYguewqbAR/
	GXtWms1Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1msWPI-00A4gT-7s; Wed, 01 Dec 2021 20:40:48 +0000
Received: from mail-pf1-x42e.google.com ([2607:f8b0:4864:20::42e])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1msWPF-00A4fy-JE
 for linux-phy@lists.infradead.org; Wed, 01 Dec 2021 20:40:46 +0000
Received: by mail-pf1-x42e.google.com with SMTP id n26so25788961pff.3
 for <linux-phy@lists.infradead.org>; Wed, 01 Dec 2021 12:40:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=B2fG4Fj+Pcq2JOlCeTCx4gjvN3R1W+eefnyaZvsGg5c=;
 b=BCPH3GEF8eWIAWD82BEB2uW7vZ9j/Q5YzJrWJ1y9XKL8y+KlzxmQB+Iw+K5+3XUqqI
 twfIHL+B9kFiQtmHAZpg91Sl0tcc1R/x/uz4R0lKj289UL5ahBGQczFq/xr47rEsfDZJ
 HqM7Di8pgaSvtimbSWNIma6SH+L6hLUWUP4EwDRJVcpouniozMDF1Z3KtKnqh1eNmgQn
 lZ2+yB/gEI5HWoltztHM21VXR5EmIcQtD3rNagTM9QilgbOsL7gv5aMmu0rWR4bh7bEL
 jSwTkaKgmAG+tE1MzZzPb4Ik+VMPgeYpKsxVPvyPp+dgxV68uhaiqDliWF1dMYRR+y5o
 xHQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=B2fG4Fj+Pcq2JOlCeTCx4gjvN3R1W+eefnyaZvsGg5c=;
 b=SnjiRsn6uGXAp12GDQeVlVSPTy5r7/77o65d/0OF3R8yvaSkzGyTHqtd5s1nd3H40N
 LLsdgGRP/pRX0lwW+vnzqkp+QCC9+KRonXISGHij5K1iM2Kjl1bWzPFenEOkd49q92FO
 jJUIl5mABxUKkYN6yi7mAOVOp3Vrs2hV0OvWAwbSNd5LT+28OslUWsGc1M+HSTqvikGt
 tc4133urMjyvks4TEhl/ssvjg4rA1JQvkZenwLnUyoU5EZDmSX82UsOb5WHlwxT26FCp
 g7y9hNNnukmykOp1XF4W5+mrV7mBVG9hze5jqIGJBZF1y+Wj/Wx5KNfXR27lulrWSJX2
 xvxQ==
X-Gm-Message-State: AOAM532J5bFm4RvLtocZN2zERJztHdYu2hzOpirc1O8uaUgG3/XgaGur
 HgJ7v9Svayde8aPb1ByjdNWuWqva1Dw=
X-Google-Smtp-Source: ABdhPJzRao+DF2XDngmzL2fnX6NCq8JUujCpFBXb6TagU2UqXzC8iYCVJJNcqmY1uAfRuJHUZj3x4A==
X-Received: by 2002:a05:6a00:1409:b0:4a7:e94c:9309 with SMTP id
 l9-20020a056a00140900b004a7e94c9309mr8455586pfu.40.1638391244903; 
 Wed, 01 Dec 2021 12:40:44 -0800 (PST)
Received: from [10.67.48.245] ([192.19.223.252])
 by smtp.googlemail.com with ESMTPSA id j127sm715094pfg.14.2021.12.01.12.40.43
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 01 Dec 2021 12:40:44 -0800 (PST)
Subject: Re: [PATCH 3/3] phy: broadcom: Kconfig: Fix PHY_BRCM_USB config option
To: Al Cooper <alcooperx@gmail.com>, linux-kernel@vger.kernel.org
Cc: bcm-kernel-feedback-list@broadcom.com,
 Florian Fainelli <f.fainelli@gmail.com>,
 Kishon Vijay Abraham I <kishon@ti.com>, linux-phy@lists.infradead.org,
 =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>,
 Vinod Koul <vkoul@kernel.org>
References: <20211201180653.35097-1-alcooperx@gmail.com>
 <20211201180653.35097-4-alcooperx@gmail.com>
From: Florian Fainelli <f.fainelli@gmail.com>
Message-ID: <4c9c9d72-7830-1f06-c398-16d7c1e81c94@gmail.com>
Date: Wed, 1 Dec 2021 12:40:42 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <20211201180653.35097-4-alcooperx@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211201_124045_665340_F69137BD 
X-CRM114-Status: GOOD (  11.58  )
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

On 12/1/21 10:06 AM, Al Cooper wrote:
> The previous commit 4b402fa8e0b7 ("phy: phy-brcm-usb: support PHY on
> the BCM4908") added a second "default" line for ARCH_BCM_4908 above
> the original "default" line for ARCH_BRCMSTB. When two "default"
> lines are used, only the first is used and this change stopped
> the PHY_BRCM_USB option for being enabled for ARCH_BRCMSTB.
> The fix is to use one "default line with "||".
> 
> Fixes: 4b402fa8e0b7 ("phy: phy-brcm-usb: support PHY on the BCM4908")
> Signed-off-by: Al Cooper <alcooperx@gmail.com>

Acked-by: Florian Fainelli <f.fainelli@gmail.com>

Thanks Al!
-- 
Florian

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
