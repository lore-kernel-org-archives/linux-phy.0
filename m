Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A887DE77188
	for <linux-phy@archiver.kernel.org>; Thu, 26 Dec 2024 17:30:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=C/IR2u/uMRoysWDpxnK10GLOZt3ZYxo5hvP1tcCzdiY=; b=Evk2XuTLfjeyhv
	Cx0Y2CborYgg0BWoEdvW96W/EMBGmSwd+Sqf7YNROuNG8Lxo+DlGcijC+BRmzmlmGqjNOLy8pZuue
	R7sbdUmhz9NpWrmbNdeYCNW5qJOp6LuIkVb0mZiCEeb8BTHINA10sZcUQ16LnPfYiyIuW+W21hiFF
	me4cxwfdPXWcVmGNgh3GEjaczH/o+PDtX/KwiBAE92rVpi7mk2Uq/UO+i61ZEG6ewmu7eeEaE02aN
	ZW3qwvt48bACPnN+MYowS8umRtrbC65JICFozMVI+YFkXQeK5Bp0TPC0HvNModPHygx7iWtZ/sBBZ
	4Nt16iXGD7V5QxFj35jA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tQrgT-0000000G8jM-3mgd;
	Thu, 26 Dec 2024 17:30:05 +0000
Received: from mail-pl1-x634.google.com ([2607:f8b0:4864:20::634])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tQrfI-0000000G8cY-2AVD
	for linux-phy@lists.infradead.org;
	Thu, 26 Dec 2024 17:28:53 +0000
Received: by mail-pl1-x634.google.com with SMTP id d9443c01a7336-21634338cfdso110448905ad.2
        for <linux-phy@lists.infradead.org>; Thu, 26 Dec 2024 09:28:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1735234131; x=1735838931; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=MZM4CEUh2HGYEJA81GK95AB62iIhj0se6/I95TBn3+Q=;
        b=RuhT1YhFBvswWkFtCTWVjLHlwuFVLR+fdfmCBkMJLgNAwupVAMwdcrGqceAeSxywYB
         5YYMqPrkhzO7Yqpt/GfqSrwTyxkMOomEB2f0BgVBQldLsIqPiCCyOzshjdnq3rp6+fcT
         84jK5847r1UXcuKCsTYHbU1nANK8R854WBfqP3lZqy2F9ZALx2bMUhx2o7Un9nx8Wxkq
         7R17E+9IsN0V4CU83pKWynsX+hObMxetswrEmIvzd2wREnnl0pASh2bhnF/Ix5lorHbd
         TKR8OdKvwBpjJ1BrukTjNd5ME1gYcXUUnEs7P5cngytGBXSbXZbO+S+mCrCIrfS991Fj
         pd5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735234131; x=1735838931;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=MZM4CEUh2HGYEJA81GK95AB62iIhj0se6/I95TBn3+Q=;
        b=QIczAC1AMDAAj7L6kVjLOHpV7Af4PTVio59wKeeBb6UUktkaneo5SJhBnO1IMLINti
         00j+b9TDvbz1tbWaK7jg3o3f123ELWxfwWv0O7YGyA2e7k/Z/am90jctkarvjWh2636A
         qrjIeIqMOtVkWH7YZOeleUfwfTzH2Lx/v59tsSXaRpoRwOXTF9Uo3BEU8pBgkZ/Cvn8W
         JpLYeEw0vPpF0RB6MRz8bAJYXgtB6NF/N2OqvsSw4/ZGtx1MQBhPTHzD7ZCAI+ZevBy8
         39D39bE3JISaWiUSPlrrTDzXFKgV0oHw0G5zwK54R5q1swMI0YBwOLMPRvKCfxUy5h89
         sH7Q==
X-Forwarded-Encrypted: i=1; AJvYcCVgNWGbQ54er37ll2P8tvvT+WjS3y6dplnON7U0ldjB4bp6HFn6cDr/0HipIjGGnHGtgoP2HzYjH1A=@lists.infradead.org
X-Gm-Message-State: AOJu0Yy0xLyOw1ir6wLLbHa81+VGXRu3qVFa+qIBpLuj78dR7Nq51eKb
	tQrFhSF25mZfSHKjqxNebJPSYRjyychGdO6nJUl0A6E/jsJiaFSj7OAcClzWrg==
X-Gm-Gg: ASbGncs2tnbdB8lHQJjVMJA/qOoOicsCJ+lOVnRo/kUSy/W87bdmwKdHUvwNUb9mCHb
	/0/1GPbicKpPQ5n7cdfBppJCUgCU48UazEW+DoCR+x4kzszM1YLfhKRYxKys4afWeqybyf0QCic
	fmdcuvnb80EBBrEYISixIP0n+dhsVwCU7/EJj1+rPFvsNDYeD6knD/NBdTYCtS1zfsCInrK7k1v
	ED1iKiM0Zed3CtRIjWKTUCXIcgASrIrXR327J7tsYSjKgxAdqmYap9hvcAc+iMW4uFQtpX6ChXl
	zkQwP4s26fMJiNLQ2tRtRjU8
X-Google-Smtp-Source: AGHT+IFBYpPcdLPqV6zNyGAlMP+fcIVUdggCbxsnyGgouqIm8mTzus1DxDfWnUwkq2+QguJv2z5GcA==
X-Received: by 2002:a17:902:d502:b0:215:94eb:adb6 with SMTP id d9443c01a7336-219e6f2605emr383250035ad.40.1735234130575;
        Thu, 26 Dec 2024 09:28:50 -0800 (PST)
Received: from google.com (123.65.230.35.bc.googleusercontent.com. [35.230.65.123])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-219dc962c05sm122006295ad.43.2024.12.26.09.28.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Dec 2024 09:28:50 -0800 (PST)
Date: Thu, 26 Dec 2024 09:28:46 -0800
From: William McVicker <willmcvicker@google.com>
To: =?iso-8859-1?Q?Andr=E9?= Draszik <andre.draszik@linaro.org>
Cc: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Marek Szyprowski <m.szyprowski@samsung.com>,
	Sylwester Nawrocki <s.nawrocki@samsung.com>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	Peter Griffin <peter.griffin@linaro.org>,
	Tudor Ambarus <tudor.ambarus@linaro.org>,
	Sam Protsenko <semen.protsenko@linaro.org>,
	Roy Luo <royluo@google.com>, kernel-team@android.com,
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: Re: [PATCH v4 0/7] USB31DRD phy updates for Google Tensor gs101
 (orientation & DWC3 rpm)
Message-ID: <Z22STiGYnLdSkNnW@google.com>
References: <20241206-gs101-phy-lanes-orientation-phy-v4-0-f5961268b149@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20241206-gs101-phy-lanes-orientation-phy-v4-0-f5961268b149@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241226_092852_567899_8C1B9822 
X-CRM114-Status: GOOD (  27.64  )
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On 12/06/2024, Andr=E9 Draszik wrote:
> Hi,
> =

> This series enables USB3 Type-C lane orientation detection and
> configuration on platforms that support this (Google gs101), and it
> also allows the DWC3 core to enter runtime suspend even when UDC is
> active.
> =

> For lane orientation, this driver now optionally (based on DT)
> subscribes to the TCPC's lane orientation notifier and remembers the
> orientation to later be used during phy_init().
> =

> To enable DWC3 runtime suspend, the gadget needs to inform the core via
> dwc3_gadget_interrupt() with event type =3D=3D DWC3_DEVICE_EVENT_DISCONNE=
CT
> of a cable disconnect. For that to allow to happen, this driver
> therefore needs to stop forcing the Vbus and bvalid signals to active
> and instead change their state based on actual conditions. The same
> TCPC notifier is used to detect this, and program the hardware
> accordingly.
> =

> That signal state is based on advice given by Thinh in
> https://lore.kernel.org/all/20240813230625.jgkatqstyhcmpezv@synopsys.com/
> =

> Both changes together now allow cable orientation detection to work, as
> the DWC3 will now call phy_exit() on cable disconnect, and we can
> reprogram the lane mux in phy_init().
> =

> On top of that, there are some small related cleanup patches.
> =

> Signed-off-by: Andr=E9 Draszik <andre.draszik@linaro.org>
> ---
> Changes in v4:
> - separate out patch 5 'phy: exynos5-usbdrd: gs101: ensure power is
>   gated to SS phy in phy_exit()' from this series, as a stable patch
>   shouldn't be buried inside a series like this (Greg)
>   Link: https://lore.kernel.org/all/20241205-gs101-usb-phy-fix-v4-1-02788=
09fb810@linaro.org/
> - Link to v3: https://lore.kernel.org/r/20241205-gs101-phy-lanes-orientat=
ion-phy-v3-0-32f721bed219@linaro.org
> =

> Changes in v3:
> - patches 1 & 2: update as per Rob's suggestions
> - patch 7 & 8: drop init to -1 of phy_drd->orientation (Vinod)
> - patch 7: avoid an #ifdef =

> - Link to v2: https://lore.kernel.org/r/20241203-gs101-phy-lanes-orientat=
ion-phy-v2-0-40dcf1b7670d@linaro.org
> =

> Changes in v2:
> - squash patches #2 and #3 from v1 to actually disallow
>   orientation-switch on !gs101 (not just optional) (Conor)
> - update bindings commit message to clarify that the intention for the
>   driver is to work with old and new DTS (Conor)
> - add cc-stable and fixes tags to power gating patch (Krzysztof)
> - fix an #include and typo (Peter)
> - Link to v1: https://lore.kernel.org/r/20241127-gs101-phy-lanes-orientat=
ion-phy-v1-0-1b7fce24960b@linaro.org
> =

> ---
> Andr=E9 Draszik (7):
>       dt-bindings: phy: samsung,usb3-drd-phy: add blank lines between DT =
properties
>       dt-bindings: phy: samsung,usb3-drd-phy: gs101: require Type-C prope=
rties
>       phy: exynos5-usbdrd: convert to dev_err_probe
>       phy: exynos5-usbdrd: fix EDS distribution tuning (gs101)
>       phy: exynos5-usbdrd: gs101: configure SS lanes based on orientation
>       phy: exynos5-usbdrd: subscribe to orientation notifier if required
>       phy: exynos5-usbdrd: allow DWC3 runtime suspend with UDC bound (E85=
0+)
> =

>  .../bindings/phy/samsung,usb3-drd-phy.yaml         |  21 ++-
>  drivers/phy/samsung/Kconfig                        |   1 +
>  drivers/phy/samsung/phy-exynos5-usbdrd.c           | 202 +++++++++++++++=
+-----
>  3 files changed, 182 insertions(+), 42 deletions(-)
> ---
> base-commit: c245a7a79602ccbee780c004c1e4abcda66aec32
> change-id: 20241127-gs101-phy-lanes-orientation-phy-29d20c6d84d2
> =

> Best regards,
> -- =

> Andr=E9 Draszik <andre.draszik@linaro.org>
> =


Thanks Andre for getting this working! I've tested this on my Pixel 6 Pro.
I was able to verify runtime PM works in both orientations with high-speed,
super-speed, and super-speed-plus. Feel free to include:

Tested-by: Will McVicker <willmcvicker@google.com>

Thanks,
Will

-- =

linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
