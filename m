Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A04F4C433F5
	for <linux-phy@archiver.kernel.org>; Wed,  1 Dec 2021 20:40:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:Cc:To:Subject:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=axHKzN7FypiAij+3eTMt+K/e1ecI0UDJSFUkY7fQHdo=; b=2kMiKHvgV6y6GChM4+XTYo4MgW
	BKedncxBeRppQFjPliBhH9w5I5g5JrBASVzRACjHTH1H10eAkdRfaXsjzCjJhGdGAU3Ffe+CZI0B0
	G2GMLfVc3lWxMOYOovbioEBP8k3MMwsC4AfcUHvl+yx/YpWw4nfWWtudXtXKMnN4VormaJ7xldRRt
	xiXI6ZME6IZpQeQ9o8ZkS1YqvFBkYUj7ZRkOgdP+3poHVIZ/DX9EyKk3unr7kPEEcXRk5DF2dmKXD
	yleup+zREVchFxl89ZEF4uKz5vJl6TVUgzzbdh/hbh7nYA+Wzy4IKSSMVtg/RvTGS5mXRc4Wa5pBX
	gx61Hq4w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1msWOz-00A4f7-2n; Wed, 01 Dec 2021 20:40:29 +0000
Received: from mail-pg1-x533.google.com ([2607:f8b0:4864:20::533])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1msWOw-00A4eQ-VE
 for linux-phy@lists.infradead.org; Wed, 01 Dec 2021 20:40:28 +0000
Received: by mail-pg1-x533.google.com with SMTP id f125so11587257pgc.0
 for <linux-phy@lists.infradead.org>; Wed, 01 Dec 2021 12:40:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=To3FfSqv1AaOm/uB/4nrwNgoQmkVXqiEENRWHfT1TrU=;
 b=fw0slW8dxNEvZ8cQ9TEh/wUcudS59bTNWJwJtht97u6Z2LixWo6/Sod+mXrsV2t4BF
 02xtcyTnpPvKN/qqTF4guGgSrpfTQnn41lD2M6OToIXNkEDVrz+sJXIJ/ImHNs4gkwCh
 +eKONBXGKdy2AYm1GL+5YLm6MX7aP2afjLgRJ9ybphn61TfRczxkCnJm/QY3m6wdXtro
 clZIck2wiRUHc5gS/n2XkLlCELc6X0ObjZ7oTdKBArWWiA/NCkWPOceVg/ItR/aQ4EjN
 cugOL477pJM/d07acVVYhrGjS7hZTbIVJD3xrytprbfDjugOgQN+lv2Cj7cldR0Iak4d
 dCLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=To3FfSqv1AaOm/uB/4nrwNgoQmkVXqiEENRWHfT1TrU=;
 b=mmlK7dTzXoFuTfHHXGnTV2U4albGgG33oANdxgv7/gk7vNI1F3fjm54LFAxUJ3k9+M
 rWc6Jc549ei1rOH14FDPpzT8JXbjJK6MQ2ucvIK+jstRcax1vLg8svRiMBkzW8D/wjoC
 oLpdZwXry4tzM1R8nAOQSwsxt7fBfjkVBtZcUFBaQ5caRcSkKr5jnWOuEDQI49oux/XX
 UtjL8zOcS1OCUAWduApyX4JkkpndFuBdT2ZKBOOdxoaQv/sQtcLVbJ2ghRWaDOsfmMaM
 iIceUGSJKs1M+H9206NRkXcCB/Kup8bterZ3ca5oHjCUr6ZX6X6qZy6QrxDAZnp1NCOn
 2q5w==
X-Gm-Message-State: AOAM531E73LqL8WovLxN+pJ6iLkSWiwE2g+59WBwYKWOFVJu6OqWX/DD
 ioNPWJ5iwOkHx70NBwbV59M=
X-Google-Smtp-Source: ABdhPJxj1CheAHOoobSKBt9vUG3Ms0Dbm85RDDdMI78v9oDK8UzUuRGBTkSM42AxYNpTvAlK6vKYSQ==
X-Received: by 2002:a63:6b49:: with SMTP id g70mr6394210pgc.418.1638391226288; 
 Wed, 01 Dec 2021 12:40:26 -0800 (PST)
Received: from [10.67.48.245] ([192.19.223.252])
 by smtp.googlemail.com with ESMTPSA id r8sm479323pgp.30.2021.12.01.12.40.25
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 01 Dec 2021 12:40:25 -0800 (PST)
Subject: Re: [PATCH 2/3] usb: Add "wake on" functionality for newer Synopsis
 XHCI controllers
To: Al Cooper <alcooperx@gmail.com>, linux-kernel@vger.kernel.org
Cc: bcm-kernel-feedback-list@broadcom.com,
 Florian Fainelli <f.fainelli@gmail.com>,
 Kishon Vijay Abraham I <kishon@ti.com>, linux-phy@lists.infradead.org,
 =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>,
 Vinod Koul <vkoul@kernel.org>
References: <20211201180653.35097-1-alcooperx@gmail.com>
 <20211201180653.35097-3-alcooperx@gmail.com>
From: Florian Fainelli <f.fainelli@gmail.com>
Message-ID: <38275ba2-a750-9d34-1f2a-e9eccbd2145f@gmail.com>
Date: Wed, 1 Dec 2021 12:40:24 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <20211201180653.35097-3-alcooperx@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211201_124027_064970_2DC73E79 
X-CRM114-Status: GOOD (  10.38  )
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
> Add "wake on" support for the newer Synopsis based XHCI only controller.
> This works on the 72165 and 72164 and newer chips and does not work
> on 7216 based systems. Also switch the USB sysclk to a slower clock
> on suspend to save additional power in S2. The clock switch will only
> save power on the 72165b0 and newer chips and is a nop on older chips.
> 
> Signed-off-by: Al Cooper <alcooperx@gmail.com>

Acked-by: Florian Fainelli <f.fainelli@gmail.com>
-- 
Florian

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
