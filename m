Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 53793C43219
	for <linux-phy@archiver.kernel.org>; Sat,  5 Nov 2022 21:07:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NdrVtfEl3tHG0Z+BXdtfr+/aWU9vqeA8BQoXV9BoqDI=; b=4PHZQa7mVrcAcP
	HxjZ/5SnSL4wemLF+DoRD/7AVyqo/PdPz9FiFKNEeY5v8n8UlT5MOy5uH14JuMJwAdNKWvRTwhhI4
	5lzgTQKfPH4LAZKLIEOkHB8gq7h844AXDdYl83wgM1L0Xu7FCyf8lNdTeHrGeOs/d3u1EhgF9Kgb5
	dWAQhWY0VQro0ntGq0p2vra5V4BenbStbAkasJWLTmdSWfT+AxmdXNI3Ed/qhC4Y7aNdbEmWqK/33
	aMArgDsfZPjN6pkcpS5+0lXkTO7vbfUIs5QXNluRJJZMkRWm6LqS7kVyi01f/kdnRbJ1inEs2PKIx
	QKer6EIxwAjSfKMC2fsg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1orQNz-007G9g-Bb; Sat, 05 Nov 2022 21:07:27 +0000
Received: from mail-ej1-x62c.google.com ([2a00:1450:4864:20::62c])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1orQNw-007G9B-VX; Sat, 05 Nov 2022 21:07:26 +0000
Received: by mail-ej1-x62c.google.com with SMTP id q9so21459748ejd.0;
        Sat, 05 Nov 2022 14:07:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Hs1jDi6MDHgTf1jm542+fLUkEHEfEymUM9i9SJMIuQs=;
        b=EU83VSr+4f/dRzu7BrHWHuC+FZM+vpOUF3haqKM6eGmSAXu+USRthwUd9L62hX1cCL
         UWgXG2sgyxjp6mZcQzSXYw1KjqBoo2nESeGQAdqU5cSLU3bk3BfGi1bFo26+cmFRL+LI
         dt3ftM2HquC67CEFOjCaoalWoVLJz9CmbpWnNayQtQgHdeWDDBu/VpbD/LMwja7YurXZ
         bnf2e970QhC9bFcje8zNjfvjBSuvnrYAiQamOXh9i3FQ2/0gmiRWdlvdkU34KsemKyn6
         P4/X3MGgAssww5hS3JLFzW11uALuf1AF0bTorit9RMT0gsxuQF4fBzowfnc+q8fNnrgi
         3OGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Hs1jDi6MDHgTf1jm542+fLUkEHEfEymUM9i9SJMIuQs=;
        b=mWqgofo8owcZ6L5hlP0jvqmlXbYvrnkVJMicF4KZP8ERgKVfOYmn3uT0fCNO3HVwj7
         tDzx0MuAA6lNhdmavrGkIJdUnIFvKCsxhNUjThPX9Zn34sxldx6uFW3M5pap+nYmcTHS
         cILY3Pmc6rw7wYwNYNJ2ou7EAYY/jSZ56bLwajOOKE2BctIHC6Mzbcq07PgQ1BYcIphP
         Q0lql5GNUAZ2AT47zn1qC7fZB3SacAZo59lH9AED54G3ZeL++J2A93UJFSWXwspPT4sf
         BEXbcAHNTS9R0koyKS9e1++t/ciWcYe/1smZLicmPivEH/c7vlpCRDH2mRlP+YmofP2T
         0uYQ==
X-Gm-Message-State: ACrzQf1Ivyw7g33yCQXWHwcUuEwwR2v8KnuQ/DcvrEGv0cS5L5XSc8tC
	DkeqVHn/CxfkvUoJI/Pu934=
X-Google-Smtp-Source: AMsMyM4qnYaEHN9tm9Dx5kAMHo2UAPkX2VxnU3giaRhnRkxPmcavexaDdSZAyj2UDFCzgEehUeRyeg==
X-Received: by 2002:a17:907:a067:b0:7a7:dc5e:eb2d with SMTP id ia7-20020a170907a06700b007a7dc5eeb2dmr41564881ejc.121.1667682442717;
        Sat, 05 Nov 2022 14:07:22 -0700 (PDT)
Received: from jernej-laptop.localnet (89-212-118-115.static.t-2.net. [89.212.118.115])
        by smtp.gmail.com with ESMTPSA id x19-20020a170906711300b0078116c361d9sm1378095ejj.10.2022.11.05.14.07.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 05 Nov 2022 14:07:22 -0700 (PDT)
From: Jernej =?utf-8?B?xaBrcmFiZWM=?= <jernej.skrabec@gmail.com>
To: Samuel Holland <samuel@sholland.org>, Chen-Yu Tsai <wens@csie.org>, Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>, Andre Przywara <andre.przywara@arm.com>
Cc: Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-phy@lists.infradead.org, linux-usb@vger.kernel.org, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev, Karl Kurbjun <karl.os@veroson.com>, Icenowy Zheng <uwu@icenowy.me>
Subject: Re: [PATCH v2 5/7] arm64: dts: allwinner: h616: Add USB nodes
Date: Sat, 05 Nov 2022 22:07:20 +0100
Message-ID: <2120022.irdbgypaU6@jernej-laptop>
In-Reply-To: <20221031111358.3387297-6-andre.przywara@arm.com>
References: <20221031111358.3387297-1-andre.przywara@arm.com> <20221031111358.3387297-6-andre.przywara@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221105_140725_042138_C4F22107 
X-CRM114-Status: UNSURE (   8.87  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

Dne ponedeljek, 31. oktober 2022 ob 12:13:56 CET je Andre Przywara napisal(a):
> Add the nodes for the MUSB and the four USB host controllers to the SoC
> .dtsi, along with the PHY node needed to bind all of them together.
> 
> EHCI/OHCI and MUSB are compatible to previous SoCs, but the PHY requires
> some quirks (handled in the driver).
> 
> Signed-off-by: Andre Przywara <andre.przywara@arm.com>

Reviewed-by: Jernej Skrabec <jernej.skrabec@gmail.com>

Best regards,
Jernej



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
