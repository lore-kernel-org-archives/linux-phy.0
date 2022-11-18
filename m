Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 03B05C433FE
	for <linux-phy@archiver.kernel.org>; Fri, 18 Nov 2022 21:44:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KxMqMEFIRF/mXaEjL0nGtCjyh5WFscqEYqIl1hDwAZk=; b=02e5bZY9KSKU0R
	4G2hvnXAgh2Q4t4lEZCsX+Z1NyTkyEKLFN0ttt8kubNRCeZBCsu5DHCIkcaNR08bskWTMVT5dOg+L
	okpw74F+h/9AOjP5OHUv54zKyfv2x9bGM37VQlGKhrPtcxR5L9WnjhFdlOv/47jbSHh1JupC/7cXr
	h22ecpPtYtbKViISmdNcscbMYg3v+hPpjSbwKPxePea0VxgG6ZbOYtq1rEmSTxPxzDsBGaRHcolCM
	tCKzxU/AGzn5jLygzE+0q9lEjU2KP7RHX8sNqnao4WMJRirc8R1RIglIEDah6Bk67mXMl3GTZUwoI
	SabVSqpomxXSKbjMu9zw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ow9AN-008NSr-6R; Fri, 18 Nov 2022 21:44:55 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ow9A6-008NEb-Ou; Fri, 18 Nov 2022 21:44:40 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 5115562579;
	Fri, 18 Nov 2022 21:44:38 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B3984C43470;
	Fri, 18 Nov 2022 21:44:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668807877;
	bh=Ro6AsXlXIrKhb60zReRlANZHKUr4qOa9kHx7oYfaRrE=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=TeOmRVfobV7yYb1UQSCU9V8jYLTo8QS4T+Bb0vu3a5KzzrRxwll6C87rA4yOd9/sa
	 4H6F62uXVusVVxyHOVrmJOuwTf/BQv70I+IPq77odKuRhBuuPZz7OfjHs1KKg7ydZn
	 femEKyZfbkZBiNd40NM7I6x0izwr1RJ8Yjh2CmUxInvAnfMpnTtSkGiFQFL5+dc9O2
	 JZbWlcegU3y/NK25ZCKw3BPhWLH7am1fymrn6a1sQ9wfJpVVbMZ+wZbvE+qtxK4dH6
	 CwfP6wx1HOFqLNkeBkFiRvwXHruOsbhLBgH9tY9Fw+MyPrYLL3lHxUubOsRTn7BVX3
	 Pv7eWp5YGuUsw==
Received: by mail-lf1-f51.google.com with SMTP id p8so10275275lfu.11;
        Fri, 18 Nov 2022 13:44:37 -0800 (PST)
X-Gm-Message-State: ANoB5pm0obrCjmUmIdTjWNUzm/SK7Y5S7xwSAqGIXsgZFofTHOkYNBhd
	ajo/5lW72W/cvOVR2GzNxjXdvRB9lI+PvP3ruQ==
X-Google-Smtp-Source: AA0mqf5Bn9XdvTzEAk8cfU7PcXIdAzaVCDQ4++OuMxbWnF5OZcAMFxIc1mQBZI4fKU1avrBB58hKEt1CGiPeef4tFLk=
X-Received: by 2002:a05:6512:32cb:b0:4ab:5a19:3455 with SMTP id
 f11-20020a05651232cb00b004ab5a193455mr2857438lfg.462.1668807875715; Fri, 18
 Nov 2022 13:44:35 -0800 (PST)
MIME-Version: 1.0
References: <20221112091923.9562-1-frank-w@public-files.de>
 <Y3QMMKGc6uNFyfWb@makrotopia.org> <46481C3B-3B46-440F-B923-02934E0445F1@public-files.de>
In-Reply-To: <46481C3B-3B46-440F-B923-02934E0445F1@public-files.de>
From: Rob Herring <robh+dt@kernel.org>
Date: Fri, 18 Nov 2022 15:44:27 -0600
X-Gmail-Original-Message-ID: <CAL_JsqLrgj97gCSvN7_WbHck5zpJECfVicUhV1P2cw0GONO_Sw@mail.gmail.com>
Message-ID: <CAL_JsqLrgj97gCSvN7_WbHck5zpJECfVicUhV1P2cw0GONO_Sw@mail.gmail.com>
Subject: Re: [PATCH v4 10/11] arm64: dts: mt7986: add Bananapi R3
To: frank-w@public-files.de
Cc: Daniel Golle <daniel@makrotopia.org>, linux-mediatek@lists.infradead.org, 
	devicetree@vger.kernel.org, Ryder Lee <ryder.lee@mediatek.com>, 
	Bo Jiao <Bo.Jiao@mediatek.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-phy@lists.infradead.org, Kishon Vijay Abraham I <kishon@ti.com>, 
	Jianjun Wang <jianjun.wang@mediatek.com>, Chunfeng Yun <chunfeng.yun@mediatek.com>, 
	Vinod Koul <vkoul@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, linux-pci@vger.kernel.org, 
	Bjorn Helgaas <bhelgaas@google.com>, Paolo Abeni <pabeni@redhat.com>, 
	Lorenzo Bianconi <lorenzo@kernel.org>, linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221118_134438_872466_571FCCE6 
X-CRM114-Status: GOOD (  13.81  )
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

On Wed, Nov 16, 2022 at 3:07 AM Frank Wunderlich
<frank-w@public-files.de> wrote:
>
> Am 15. November 2022 23:01:20 MEZ schrieb Daniel Golle <daniel@makrotopia.org>:
>
>
> >The device can boot from all 4 storage options. Both, SPI and MMC, can
> >be switched using hardware switches on the board, see
> >https://wiki.banana-pi.org/Banana_Pi_BPI-R3#Jumper_setting
> >
> >So why do the SPI-NAND vs. SPI-NOR switching with device tree overlays
> >and the SD card vs. eMMC switching with dtsi + 2x dts? To me this looks
> >inconsitent. Use either one or the other method.
>
> Hi Daniel
>
> It is still in discussion,if mainline-kernel will support devicetree-overlays [1].

No it's not. We're just in the middle of renaming overlay .dts files
to .dtso. Overlays have been supported for the last 1.5 years.

Rob

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
