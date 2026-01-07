Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D5B22CFD62D
	for <linux-phy@archiver.kernel.org>; Wed,  7 Jan 2026 13:45:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-reply-to:
	Date:Subject:Cc:To:From:References:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JG5pRkCjhHAD+YMAAwKZE5hM+WxW6ajReAeP8YOCL0U=; b=cU3vg0oPck6mss
	RcoUmC1McRc0NYyAatWZzCPW/L0IHpKaEyxWODXx7bIzDKTTYCSgFWqG6Q6WmD/kbwHvc1a4PwEoo
	vubmJTjDEotBGyW8LC5eAnLLsRHpgYmFuWiy4TgEUWqw04RXNIwIGpqFz+KKT/yXHWNbAItjZHPNp
	C+vD0UZ9A9RzBidGa4qhHFiFqK8vX0CEVt9IVavE0Ix+4pHwQdpg0LznW+6KdPhppTgyN/+N3Y3PH
	kAKh22k8zBZ7kgp+fkJ29YA1xIACJ6sQFnA5kY8xVsgJGpwnOI3lWmv9nlzIolj/RD4n+TcKt+rp2
	4BDaa/Vhp8/SQNIZKV8w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vdTrD-0000000F1vH-1thN;
	Wed, 07 Jan 2026 13:45:51 +0000
Received: from mail-lf1-x130.google.com ([2a00:1450:4864:20::130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vdTrA-0000000F1uG-2hfY
	for linux-phy@lists.infradead.org;
	Wed, 07 Jan 2026 13:45:49 +0000
Received: by mail-lf1-x130.google.com with SMTP id 2adb3069b0e04-59b6c89d306so1293997e87.0
        for <linux-phy@lists.infradead.org>; Wed, 07 Jan 2026 05:45:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767793546; x=1768398346; darn=lists.infradead.org;
        h=mime-version:message-id:in-reply-to:date:subject:cc:to:from
         :user-agent:references:from:to:cc:subject:date:message-id:reply-to;
        bh=zbg60yhotFqS4lYQ4SPbRRNfljX1PZuvfnI5dpwkZJ8=;
        b=HHJ50zaXo9K465bL6iEICxP/p4Jq9MtU1zrfSEH/8WpTy99ML1CzCi5dgSYyVoyV/M
         ZZiGcEqJg6lyEXPBM4IBkmXb3XRDEy3LQmAKILF85TKZSv0Bh2peJGsrhs+DkmTy/IRD
         dJP9Khbe8/dnv1zhPpZ2p58C7/bu7Vb2LdvMqCF/TJ2cQ/HiY48Lq8KnafIN4ETUvcBx
         jUWdpFEu5yXPD45x/xVhTjLRXuDS62yr2hMOWVqfVu0U+v3WqymewJacOFkpfkP3Ft7h
         0WHIoqmKp1RNOZ3kJKZRxqXTwK1MBGQyWECwSv7Znc2MhYuz5/WO8CQYgyZE8ZXVriMO
         FCLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767793546; x=1768398346;
        h=mime-version:message-id:in-reply-to:date:subject:cc:to:from
         :user-agent:references:x-gm-gg:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=zbg60yhotFqS4lYQ4SPbRRNfljX1PZuvfnI5dpwkZJ8=;
        b=pcVe63A4MrwP83LdgzPpOW8j3H6/T83w6wiIOdqwr2zs3ScW1cevLa81EEpOPKtD3i
         Q33aTcWh5+BH1zGqvKDayxhx6KjH1uyWbQzdKYwf9itrJ7Xfr7eaWiYe04qooPYoOS/U
         167Klcsp9taBbuyl8yZ3b0ghr5thOuvm8inlqbo5BCykfgWExxgPjOJ70o0V0VRyFK18
         R/deYrdS7a7udZO+L4TncnSZj/0FSnxYeHRc8aWly/2fpYs7Lui3txouUVrG5LZqXfo8
         4B8VjOI/9i3kjveElKS2j0GJ+Ws6WaE3d6uZP92DlBwnwAy7hRrwwJvPa6ip/jvIada+
         RhAw==
X-Forwarded-Encrypted: i=1; AJvYcCXfreWQ3LgTxBSeS3eU/QAuTs8uKt770BjbKHU9EyX01TbhaxOPGV2d1B4JPESIm3YZY7thU+u2gYY=@lists.infradead.org
X-Gm-Message-State: AOJu0YypUOl8jhORZytHq6folnmAHFbZ9UlDXljY3JcSSX25fdFbwZYW
	QAVwX26Q8UVxZybxNzpBR7WyXJdnXot/Tq9r+Ccx/0AMxtvwA157c+rR
X-Gm-Gg: AY/fxX6Hga1NatO9DtX+aPw5K9NZE32A1iVIqijwDFe5DWI930X9g7VUJAe2g1TDprU
	dmNLrZIoUnJf4rdb7IKaHq/sPA7kxsL1KLT1WafJtJAH5eszOJLZlURChRurKnqG0aW7rqIXeJr
	DlXMHDhrNo/h40xZATm9xL5+rciAcwgpMTckPTYM6QeHQBSIr/6DKOyn02a2SIUe176mUQGu79U
	+9vnQxO7Xs7zcVtJENJMUBHh1hRcp9qraChPRK1xwORJYm3+FKJKxp/tIBMGK6PZ29C1Nu0pVn5
	zC/1mNmH5nPPpwlE6LjUsd6B6bf1jii/I7e7fsq9uV3N7xL0AcxsHzQafTiMGX3DlxL4nnr4aXx
	ONJeUY4ZQJNDNxE3gL2K04kETNoT+n4/3aRGjHgWiZYJWcnoFx9hesh6EV8BGErD5WCZnoixw
X-Google-Smtp-Source: AGHT+IFBvFdbxlKvEOgpHQQ8YktwaenfQmmG9RkrtS+47ehkEyiqafqKukfyFwzDbyon83pp4CA81A==
X-Received: by 2002:a05:6512:2399:b0:59b:730d:4a57 with SMTP id 2adb3069b0e04-59b730d4b44mr510415e87.39.1767793545398;
        Wed, 07 Jan 2026 05:45:45 -0800 (PST)
Received: from razdolb ([77.220.204.220])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59b669418b6sm1224545e87.20.2026.01.07.05.45.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 07 Jan 2026 05:45:45 -0800 (PST)
References: <20251216-upstream_pcie_rc-v7-0-4aeb0f53c4ce@aspeedtech.com>
 <875x9fuj7i.fsf@gmail.com>
 <SEYPR06MB513404EB419B7850159F3CC29D84A@SEYPR06MB5134.apcprd06.prod.outlook.com>
User-agent: mu4e 1.10.9; emacs 30.2
From: Mikhail Rudenko <mike.rudenko@gmail.com>
To: Jacky Chou <jacky_chou@aspeedtech.com>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I
 <kishon@kernel.org>, Rob Herring <robh@kernel.org>, Krzysztof Kozlowski
 <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Joel Stanley
 <joel@jms.id.au>, Andrew  Jeffery <andrew@codeconstruct.com.au>, Bjorn
 Helgaas <bhelgaas@google.com>, Lorenzo Pieralisi <lpieralisi@kernel.org>,
 Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>, Manivannan
  Sadhasivam
 <mani@kernel.org>, Linus Walleij <linus.walleij@linaro.org>, Philipp Zabel
 <p.zabel@pengutronix.de>, Neil Armstrong <neil.armstrong@linaro.org>,
 "linux-aspeed@lists.ozlabs.org" <linux-aspeed@lists.ozlabs.org>,
 "linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>,
 "linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>, Andrew Jeffery <andrew@aj.id.au>,
 "openbmc@lists.ozlabs.org" <openbmc@lists.ozlabs.org>,
 "linux-gpio@vger.kernel.org" <linux-gpio@vger.kernel.org>
Subject: Re: [PATCH v7 0/7] Add ASPEED PCIe Root Complex support
Date: Wed, 07 Jan 2026 16:40:09 +0300
In-reply-to: <SEYPR06MB513404EB419B7850159F3CC29D84A@SEYPR06MB5134.apcprd06.prod.outlook.com>
Message-ID: <875x9dcz9c.fsf@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260107_054548_709181_396A31F9 
X-CRM114-Status: GOOD (  18.88  )
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


Hi Jacky,

On 2026-01-07 at 02:28 GMT, Jacky Chou <jacky_chou@aspeedtech.com> wrote:

> Hi Mikhail Rudenko,
>
>> First of all, thank you for your efforts in getting this driver upstreamed! I am
>> trying to understand whether this driver supports PCIe devices that have an I/O
>> port BAR, where CPU access to I/O ports is required for proper device
>> operation.
>>
>> If I understand correctly, this line in the Aspeed 2600 dtsi file declares the I/O
>> port range:
>>
>>     ranges = <0x01000000 0x0 0x00018000 0x00018000 0x0 0x00008000
>>
>> During system initialization, the pci_remap_iospace() function in
>> arch/arm/mm/ioremap.c maps the physical address range
>> 0x00018000-0x00020000 to the virtual address PCI_IO_VIRT_BASE
>> (0xfee00000). After this mapping, inb() and outb() calls work by converting I/O
>> port addresses to virtual addresses starting at PCI_IO_VIRT_BASE, then
>> performing reads and writes to those virtual addresses.
>>
>> What I don't understand is this: according to the Aspeed 2600 datasheet, the
>> address range 0x00000000-0x0fffffff (which contains
>> 0x00018000-0x00020000) is mapped to Firmware SPI Memory. This would
>> mean that outb() operations get routed to memory-mapped SPI flash instead of
>> PCIe.
>>
>> It seems like there's a missing piece to this puzzle. Could you help clarify how
>> this is supposed to work?
>>
>
> Thank you for pointing this out, and sorry for the confusion.
>
> You are correct that, as things stand, this does not make sense from a real hardware perspective.
>
> In fact, the I/O addressing support you noticed was something we experimented with internally
> only. There is no actual hardware design on AST2600 that supports PCIe I/O port addressing in
> this way. To enable those experiments, we modified our internal kernel accordingly, but this was
> never intended to represent real, supported hardware behavior.
>
> This is our mistake for leaving this description in the DTS, as it can indeed be misleading. We
> will remove this part to avoid further confusion.
>
> Thank you again for your careful review and for bringing this to our attention.

Thank you for prompt reply and for getting this clarified!

> Thanks,
> Jacky


--
Kind regards,
Mikhail

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
