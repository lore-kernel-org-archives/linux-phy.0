Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D87EAC43334
	for <linux-phy@archiver.kernel.org>; Thu, 21 Jul 2022 03:32:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kvk3sG69u/nFTqGz6QJF0+IHUrDqd6oajeeLzgJFYro=; b=r6cAj+lt+j4vw1
	dBC6FY00vm72SxoNrgGlimok8i7QpOchCtetkGdGeV7YwtMBpQ8y4s4iE/pAxbqq/eh9tM0aot86n
	uxA35RpeLEPAnFbMgu6Sb3wSLzzfaNNOuZTrHtg2zBpb7FIaWEu+sipjDsCOpwDnt0v73sX84upgx
	iWCiM/SpTqs5NRg3bYSN8y0hZzeiD/42H1GUdGvITjppGYFhQw0uWNQcn9LMcZfrAlK31anAieHbR
	Hhk++ak7EYXDOKNTjxGn3BIWpQRBtpUrEi0vlaVnjQNnqD15hfHSSoPFWpCDEVQOUwVuksqj9qBhw
	8w+0GYcIiI9x9zu27/NA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oEMvZ-00FhfB-8h; Thu, 21 Jul 2022 03:32:41 +0000
Received: from mail-pg1-x535.google.com ([2607:f8b0:4864:20::535])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oEMvL-00FhUX-Cp; Thu, 21 Jul 2022 03:32:28 +0000
Received: by mail-pg1-x535.google.com with SMTP id 72so514757pge.0;
        Wed, 20 Jul 2022 20:32:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=A8HrmDvRv1JakyZpN804KG9pBcPVPRqNbucKySDvZx8=;
        b=DeydGXUokqbTAfkMTdhkxGIMSYPy7nK8D5QqnmYkaXYJEW7hS/wMNKa3uAVcH7gM7V
         gnKP1RGFKgrePwa5YfAxymhfcVJn/vYjWx/KUv6kJNYgDdO2Q9NG9LfxtliBJjwfGm9l
         6mgBhFQeTUCC7xn9/vAVWB9dJTh9vjZ/k2t2fdRsRMeMHtS9V+YkL+HwmtVka7H8CL6U
         LUDHQjIcR3tjXSnubP9KZNCODXRr8aLKLOMG1SzYOG2i0yJMTkVy0CkVE90TIdTg7RSG
         Z4O4MrUdDJvbrIARuuuH1hD42TxMMgltX5uUBZzwF8BpY7H93D8ItgsQFe83b7w4/9H4
         qo3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=A8HrmDvRv1JakyZpN804KG9pBcPVPRqNbucKySDvZx8=;
        b=duDDKLGh/YcJUUnraxRXofkg1DLI1hfVf3c+3cVxPgtGI2qYae6c0Q5ZB9dmREjQrv
         OjsytVpdwwAU6MMDpkyAb+4JSEg5w/b3jetBZqATxEgcQ1HfPmpIvge0j6jU1DXUV99M
         zZh4V/BjQwEUbqI4UTKZ5CNjxcxjFznCe4zHXbcCvZoLewSr1UjhuLcbOdqzJLPo2TVk
         31LAWYiYrs4UIlAW9ceHChvUPagnCtBEF75e87fDRjTnkZUu7kEBMK5/UcvYepFpxh2J
         b0DVITXNrekYVbJhQ8rVF9reppofeZqQJwTriFcsa6S2bMqYpTF1CM+PLoSrdgQXPpX3
         A4mg==
X-Gm-Message-State: AJIora9FueRTB+V/Ib7XSVcTFxThvilmW4EItE3xPWvD/IBtoRPYgLv5
	9WNPjIZn7C5mqvp366J8Abs=
X-Google-Smtp-Source: AGRyM1s2c7kx2CPskFMkXV18L/Cpvzm04GClJp5KDYPz6G2bzxDd1OK62cNrHq1IAkl8WxsajAq4EA==
X-Received: by 2002:a05:6a00:1386:b0:52a:d5f9:2837 with SMTP id t6-20020a056a00138600b0052ad5f92837mr42945885pfg.5.1658374345861;
        Wed, 20 Jul 2022 20:32:25 -0700 (PDT)
Received: from [192.168.1.3] (ip72-194-116-95.oc.oc.cox.net. [72.194.116.95])
        by smtp.gmail.com with ESMTPSA id gm17-20020a17090b101100b001f200eabc65sm246533pjb.41.2022.07.20.20.32.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 20 Jul 2022 20:32:25 -0700 (PDT)
Message-ID: <40cec207-9463-d999-5fc9-8a7514e24b91@gmail.com>
Date: Wed, 20 Jul 2022 20:32:23 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.0.3
Subject: Re: [RESEND PATCH 0/9] arm64: bcmbca: Move BCM4908 SoC support under
 ARCH_BCMBCA
Content-Language: en-US
To: William Zhang <william.zhang@broadcom.com>,
 Linux ARM List <linux-arm-kernel@lists.infradead.org>
Cc: joel.peshkin@broadcom.com, dan.beygelman@broadcom.com,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>,
 Broadcom internal kernel review list
 <bcm-kernel-feedback-list@broadcom.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, open list <linux-kernel@vger.kernel.org>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 "open list:I2C SUBSYSTEM HOST DRIVERS" <linux-i2c@vger.kernel.org>,
 "open list:MEMORY TECHNOLOGY DEVICES (MTD)" <linux-mtd@lists.infradead.org>,
 "open list:NETWORKING DRIVERS" <netdev@vger.kernel.org>,
 "open list:PCI NATIVE HOST BRIDGE AND ENDPOINT DRIVERS"
 <linux-pci@vger.kernel.org>,
 "open list:GENERIC PHY FRAMEWORK" <linux-phy@lists.infradead.org>,
 "open list:PIN CONTROL SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 "open list:BROADCOM BMIPS MIPS ARCHITECTURE" <linux-mips@vger.kernel.org>,
 "open list:SERIAL DRIVERS" <linux-serial@vger.kernel.org>,
 "open list:WATCHDOG DEVICE DRIVERS" <linux-watchdog@vger.kernel.org>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
References: <20220721000626.29497-1-william.zhang@broadcom.com>
From: Florian Fainelli <f.fainelli@gmail.com>
In-Reply-To: <20220721000626.29497-1-william.zhang@broadcom.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220720_203227_490128_110B94BB 
X-CRM114-Status: UNSURE (   9.42  )
X-CRM114-Notice: Please train this message.
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



On 7/20/2022 5:06 PM, William Zhang wrote:
> RESEND to include linux arm kernel mailing list.
> 
> Now that Broadcom Broadband arch ARCH_BCMBCA is in the kernel, this change
> set migrates the existing broadband chip BCM4908 support to ARCH_BCMBCA.

Looks like only 1, 2 4 and 5 made it to bcm-kernel-feedback-list meaning 
that our patchwork instance did not pick them all up.

Did you use patman to send these patches? If so, you might still need to 
make sure that the final CC list includes the now (ex) BCM4908 
maintainer and the ARM SoC maintainer for Broadcom changes.
-- 
Florian

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
