Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C97ABC4332F
	for <linux-phy@archiver.kernel.org>; Sat,  5 Nov 2022 21:13:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YJ4nA766rRe0EwEwYmsdWsNiW3bL/iI7bKAoPYkgs+s=; b=aUmbz0f2KTNjet
	XlxDvUN7Mcp5JU+gqQYYpZ+cnfxlHkb6VYequ1a7+PN9G4vfKA0tcbxRx106y4VcDgLnkNAcTrwm0
	4vCOGgS6Rh/U1fAiNrxr+LjZlGccChAXP5am4oAzHLVkO4G8BzvJAX6J3qgeCF147Bj4hP9h6wBst
	7E9bgVpYXoE1RXT/gYHMighzWg0AGTJdkgBUyXWLYU2eX8XLJRQ9TLj9FOy9RE+pyUR9vflVc9zr5
	q0hd79D3jdGxyEkYhoufLvavDyEYrBcm1T+ogFpPyai1jxJ85/RwiaBKusP6gUaWlnOBLS1ztnc4Q
	jISLmKYTIYTV4lNGT1vg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1orQU4-007GZ1-Mk; Sat, 05 Nov 2022 21:13:44 +0000
Received: from mail-ej1-x62d.google.com ([2a00:1450:4864:20::62d])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1orQU2-007GY3-2n; Sat, 05 Nov 2022 21:13:43 +0000
Received: by mail-ej1-x62d.google.com with SMTP id ud5so21383662ejc.4;
        Sat, 05 Nov 2022 14:13:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=M3Atp6OQ0hihmNz5QNadkHqhzgkTJKoUcjOaBjypw+Q=;
        b=bglHRnU7qLXHRwlACNnGxRtFU87lku3jx4z8p+iuFay60Y+qhtekjyPje77IX2HDUm
         PQqQWBuCa5r1TADFDwyvCE5As/H+aB7sd/4WYChe2pomHXSaVaqszjNd556B0ViY3QTf
         dXsFgprtTwBld3U36VY2vBkYBuT5lsZ6qde8XiV3CaYm/nQJwPYiiVyBHdZQdMaRF7bb
         tBvlENeZXV01SkeWeEvj8lojikZX3K6pnbpZksLONvd6BzBxxHIeHIG1g70opmppmoit
         qn0EwdMw3SiTI3AXQ/eIhv/+VPKpwRj2H5zGv0MPVQjDEOSPmxBM6yp7kXXceRO+g9UN
         MqdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=M3Atp6OQ0hihmNz5QNadkHqhzgkTJKoUcjOaBjypw+Q=;
        b=xs/WQ9veEZlCjdAaMYWiXVJvDcjCWGrfn0PnAdBwZCN6hehVbOZ9qOteiYd9JxaXsb
         N24fLfEZUzdMdk96Fh3fhP5eOzn79xHqH0CV3MQ1yMHF1G9Gy0vwcArLvg6CQ0KjK4+z
         CRixxtIDzEoc6wDaIfp3/O/LDTDVn8tGC2QyZphTectzdJ5SmKZ+pNkSOofHBWIXBXDf
         5QH6UOCwfur3ag6AvKjX8nt8lQZGLzuQ8+39LlZStXEjypC2IRKAUwleXsLc71MO0HuC
         Q3RA/9h/FBJ4Fzi62F80h6QyZrjQK7U66A4iqCiOFPnN4PXgzS6Uu3B2o6eO8sk2IG0E
         1YNQ==
X-Gm-Message-State: ACrzQf3RoxGzypGGCnKQCOzzbZD21+1K1yLeXh6lLUyIAvTdek9a48rM
	vg9BfOw2Qsfi77CUz3kGRxM=
X-Google-Smtp-Source: AMsMyM79/7WOpzBWpxDgJ8bsfPTIPC+HmiuFD6hoPreKi16DPueMc86u46duAg2o3oOTVhj7pnUXHA==
X-Received: by 2002:a17:906:33d8:b0:7ad:a195:ce51 with SMTP id w24-20020a17090633d800b007ada195ce51mr40269876eja.365.1667682819641;
        Sat, 05 Nov 2022 14:13:39 -0700 (PDT)
Received: from jernej-laptop.localnet (89-212-118-115.static.t-2.net. [89.212.118.115])
        by smtp.gmail.com with ESMTPSA id 8-20020a170906300800b0078d22b0bcf2sm1324907ejz.168.2022.11.05.14.13.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 05 Nov 2022 14:13:39 -0700 (PDT)
From: Jernej =?utf-8?B?xaBrcmFiZWM=?= <jernej.skrabec@gmail.com>
To: Samuel Holland <samuel@sholland.org>, Chen-Yu Tsai <wens@csie.org>, Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>, Andre Przywara <andre.przywara@arm.com>
Cc: Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-phy@lists.infradead.org, linux-usb@vger.kernel.org, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev, Karl Kurbjun <karl.os@veroson.com>, Icenowy Zheng <uwu@icenowy.me>
Subject: Re: [PATCH v2 6/7] arm64: dts: allwinner: h616: OrangePi Zero 2: Add USB nodes
Date: Sat, 05 Nov 2022 22:13:37 +0100
Message-ID: <3195779.aeNJFYEL58@jernej-laptop>
In-Reply-To: <20221031111358.3387297-7-andre.przywara@arm.com>
References: <20221031111358.3387297-1-andre.przywara@arm.com> <20221031111358.3387297-7-andre.przywara@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221105_141342_160017_CC5363E2 
X-CRM114-Status: UNSURE (   7.90  )
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

Dne ponedeljek, 31. oktober 2022 ob 12:13:57 CET je Andre Przywara napisal(a):
> The OrangePi Zero 2 has one USB-A host port, VBUS is provided by
> a GPIO controlled regulator.
> The USB-C port is meant to power the board, but is also connected to
> the USB 0 port, which we configure as an MUSB peripheral.
> 
> Signed-off-by: Andre Przywara <andre.przywara@arm.com>

Reviewed-by: Jernej Skrabec <jernej.skrabec@gmail.com>

Best regards,
Jernej



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
