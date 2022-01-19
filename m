Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C55F4C433FE
	for <linux-phy@archiver.kernel.org>; Wed, 19 Jan 2022 23:26:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:Cc:To:Subject:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Hxn63k6RlygTtyYXArr0TcWh++/tleRdlKOIEGX5vBQ=; b=PdFq7Qvoi+RDwpTrisSjn688QA
	kSk9rYtYrh2vPQcQKQNQ3D4XuqC0y4lzKWRwUxgrGu/g51JDXvDtDaq+TXIMy1ke9I5iGgd9m6WCh
	cZFtUqEWnk/lH743nA6eGls4NODBTQXcQFRGcNEXg+NEqWFOe48/pAZFLQgXjeWKuMgxQC6Wg51Iv
	hqbZzkAscCjdSWFeY4PLT8uaxztpcehSm7QuIAA34k6IDRLqcbXqdBVUJ5toGsmiwVB4BFpuoH3MC
	Gx5e1DaumtDdRDt4b8Azpfj8nHxFnkxgUcYaJu6ncndQ/EyoGSv33WrBh7Ftl6/sheU36ly9qF7sz
	9KGET4KQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nAKLK-007pCg-9D; Wed, 19 Jan 2022 23:26:18 +0000
Received: from mail-pg1-x534.google.com ([2607:f8b0:4864:20::534])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nAKLH-007pBq-Fj
 for linux-phy@lists.infradead.org; Wed, 19 Jan 2022 23:26:16 +0000
Received: by mail-pg1-x534.google.com with SMTP id q75so4042279pgq.5
 for <linux-phy@lists.infradead.org>; Wed, 19 Jan 2022 15:26:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=r1BrZMEuUDk+2sfXVctDN6hyPwNL/9n18gjgSpq5RYs=;
 b=QEfgfBiw9LyCRGvxE4oDjyAUOMjhA6PfbklcFCfNhp20IFa06NoxVVCzCx7QSp/tg7
 vPxqDAj3m8ct3vewn/VMcwziq1+ELXR3dVLqGKtHiK3wTU36w5rSlBQzZc0raRj0q+sr
 2cTGIEBsgfo2j8ngtuvCOAs3XmnVTRDdVqxlNBnohoofKjqXIQz6bs+mB+NWNoDIKZqB
 LHldT6k4UX0/cfXvE/zsjbIwomUbUqeU+s/iENxLkkpSM0as7nXvDBg6sh30/cpiNvyV
 2YSmHTQXgOyQBn6O1DhaLIbIQLw9sVJP7EFsCRpnUsOrPko55RmQKtems8enux2LVJq5
 BMSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=r1BrZMEuUDk+2sfXVctDN6hyPwNL/9n18gjgSpq5RYs=;
 b=1W+O4rkIAoC03JI3H34gpwWlIXCbZXkXCHZbDUNOrPNFYBq8BUcTc/Zpnb1Eb98wUs
 s03LDr6cETXzWchnckvm6Fmc7+CNdzpYZlLQYuBiXNoI4mQyOoTOukqeDeynFcrsTGwo
 fK+ruH98HvOveVKfcg0Y8yjv824cjPM4G47uQWfbifdOjPZEKQWaTOqrqA3iKlbqosVV
 78SevqHwOvGU1PMzVTc/87bvBpxip77D1VlO5Siobl5wcRXw0TY4z+Kqsc7TaqhlBsEZ
 alnZaqN72hrhUnC4RsJB6JJuj+CVyQ6qvceBTT/Aj06dlLsKPMraqonP5SNKrFe7fgOP
 jQnw==
X-Gm-Message-State: AOAM532ZGrtVsrEAmaj53v7Pw9PaLqBEzsdl2WLBNMLUyZux+dZR3xxG
 JnvP4fJAUOGX6Ncj6Jjg9QzSshUqh3o=
X-Google-Smtp-Source: ABdhPJzM9YC3NsLH8dRSatWaoVSYt3jJno/5D1/wga980c+lxNS6gIW/n2C6/rt0o79E47c7tp2CkA==
X-Received: by 2002:a63:b341:: with SMTP id x1mr29912496pgt.185.1642634773940; 
 Wed, 19 Jan 2022 15:26:13 -0800 (PST)
Received: from [10.67.48.245] ([192.19.223.252])
 by smtp.googlemail.com with ESMTPSA id c70sm646991pfc.139.2022.01.19.15.26.10
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 19 Jan 2022 15:26:13 -0800 (PST)
Subject: Re: [PATCH 0/3] phy: phy-brcm-usb: Fixes for phy-brcm-usb driver
To: Al Cooper <alcooperx@gmail.com>, linux-kernel@vger.kernel.org,
 Vinod Koul <vkoul@kernel.org>
Cc: bcm-kernel-feedback-list@broadcom.com,
 Florian Fainelli <f.fainelli@gmail.com>,
 Kishon Vijay Abraham I <kishon@ti.com>, linux-phy@lists.infradead.org,
 =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>
References: <20211201180653.35097-1-alcooperx@gmail.com>
From: Florian Fainelli <f.fainelli@gmail.com>
Message-ID: <7cbb745e-8b95-1eed-0903-44070a112ec0@gmail.com>
Date: Wed, 19 Jan 2022 15:26:09 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <20211201180653.35097-1-alcooperx@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220119_152615_566277_E4818A3B 
X-CRM114-Status: GOOD (  11.41  )
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

Hi Vinod,

On 12/1/21 10:06 AM, Al Cooper wrote:
> A few fixes for the phy-brcm-usb driver.
> 
> Al Cooper (3):
>   phy: usb: Leave some clocks running during suspend
>   usb: Add "wake on" functionality for newer Synopsis XHCI controllers
>   phy: broadcom: Kconfig: Fix PHY_BRCM_USB config option

Are you able to pick up those patches? Thank you

> 
>  drivers/phy/broadcom/Kconfig                  |  3 +-
>  .../phy/broadcom/phy-brcm-usb-init-synopsys.c | 46 +++++++++++++++----
>  drivers/phy/broadcom/phy-brcm-usb.c           | 38 +++++++++++++++
>  3 files changed, 77 insertions(+), 10 deletions(-)
> 
> 
> base-commit: f080815fdb3e3cff5a004ca83b3815ac17ef71b1
> 


-- 
Florian

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
