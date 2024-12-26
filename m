Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CFB68E77188
	for <linux-phy@archiver.kernel.org>; Thu, 26 Dec 2024 17:37:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LguzY/UhAg1ODUQGKPml7nWpQgOt9sV9vZow1XOkDh8=; b=WeRNxzicP28Mbs
	q+YZmXM5L11+tfm6IdcWzD4jIoR6mxmLPL3Q+PMhatka01wLleLPGZfzbgAKqHTGcUTn7/mb+sbyT
	8ES9yfoer68fUwTHMd0B/02f7dTOM+ZE/Q2CqO7jkjxkOT2qAJGr6hoi2UqhUP8bxTzyXzCJ+IKRP
	FNqeXLy7OtBpY7MRtDRIBien9IqsT6BOc0C0ZKMUjg0jKKpTxQ6eFZwpMkC3iWaYtQGvSXMMg2sPK
	fjw9tjAqRc2LIhRn0PspoOSl2F0dHRQC8+51LI5SZF95wG/yJN6z19mre5kCbplf9Y6g/r7pnBJWL
	KZxh93aVV/tzDZwM0Bjg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tQrnK-0000000G9i6-2WX3;
	Thu, 26 Dec 2024 17:37:10 +0000
Received: from mail-pl1-x629.google.com ([2607:f8b0:4864:20::629])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tQrjp-0000000G9BK-1a68
	for linux-phy@lists.infradead.org;
	Thu, 26 Dec 2024 17:33:34 +0000
Received: by mail-pl1-x629.google.com with SMTP id d9443c01a7336-21661be2c2dso69282245ad.1
        for <linux-phy@lists.infradead.org>; Thu, 26 Dec 2024 09:33:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1735234413; x=1735839213; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=tU2DgvDvdkYRJ/UA+n5FQrbOcfdyXNL9khgRhEzfCzg=;
        b=txH2U0UvCucWIEbSRp1mieZB5r2MntsJccGpo0+Hn5g2pUPl9aDnw0ogb+Ox53kFHE
         hNX/1vng42HqCthrv32taivUp2BYu36tF0Yd0HtdwSBW9yf2JEuC8N24lbceGr7oJHf0
         zzoAET3qmlZ6xCEeEtu6qL3Wz7rvh12h5bQiRI4jgeqOK0iQIorkwxgsFLyufMglOIWi
         LouBM9S0zjMDm88rQy1p5gsg4ZL05fW4qd/w60iGG3yOdsE+rAN64BmXXt0hlqc8VvgI
         Yo/XtJTlB0rkqjqOUkq5FRWgB2ZKHECmYqk5tGBKKiBXgyjCh1SsAoz8mrTdb0u+tuUt
         j3Jg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735234413; x=1735839213;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=tU2DgvDvdkYRJ/UA+n5FQrbOcfdyXNL9khgRhEzfCzg=;
        b=KJ7o42grj16xMWegZKnoQmLK5nfRAt8hKli8rGyg6NYngspCUQq4xHNuYxmhDN8Hyn
         D9b6Tlj4jkXcbHdt3X948xsGYQpDV74SxhHI88Ztk1TWWqIGAYtlc856Dj8AdoZ9w1II
         rKiHM0FqDEG/ngIcOzhhYc6Q2K5FmO2VQyz9lh3s3ZPA4gdDtXsSNVmLAMwkLErNx78w
         OMEOjjnq232fBBP3qzm6+Xk8DoXEb2ewN924Z8xq8V5R+jwIi9KdZJp2N8CxBbYU5AGL
         imTyY3M8/tDsn935l/BjLa3D8x+xH7VxDxnVIHlKCzLgCLdPx7f/mfkO/ESzkqVFB3OC
         /5Mw==
X-Forwarded-Encrypted: i=1; AJvYcCWh4lQBsbUIRyy2h269yt88uwbdI97zylffSpCeBGXBdFZZhL38SNgU1/2TZuvjtOUEKK2lS2082IU=@lists.infradead.org
X-Gm-Message-State: AOJu0YwWJD3c02BCbTLJfUeGsFGS2NJuTv4WhYGO59XRnJk+J0nd8bRx
	c37QWXAbLgYB8WIN5MkcG93x8eC7GE1olUqr/KWyG0lhb6qVYZ1dNVuGyy3YfA==
X-Gm-Gg: ASbGncscnfPS56ckfnxoLvEwRRdiugFXRbFaKhgGCjC5SVA03CdZDroXdetnRZPlLZ6
	dy110cn+U0J0mXAm38curttZXtzKCvgEoNG4zdZIxaVBfKo7rmx13nTqW0gqkaDEaCAJpOMExxg
	ZnqK2kQei4/R92EOjuxdHXrbxokEwYUvXNaTQzzQzQfnLvyGmvQqXNdANWGbHc3LzcQ6rYjuJHm
	fHMqPyR7NmzcVHnqk0u0Os2hac5JFvwYbAmo1b6Oat3NNlENpM8EwXWW9lnutEFofWKdNCodROa
	CXDbjmTOOSHkA85BKOL8UTA0
X-Google-Smtp-Source: AGHT+IE+RbsmD3Zf9RNfUiqXZbLMpBzhTHXlQkE7VbdmcxZNIAB/IcMMJ416yI3GXCiiIa7UXuAU0Q==
X-Received: by 2002:a05:6a00:4ac5:b0:725:b12e:604c with SMTP id d2e1a72fcca58-72abdd3c467mr32014218b3a.4.1735234412566;
        Thu, 26 Dec 2024 09:33:32 -0800 (PST)
Received: from google.com (123.65.230.35.bc.googleusercontent.com. [35.230.65.123])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-72aad8fb851sm13146587b3a.132.2024.12.26.09.33.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Dec 2024 09:33:32 -0800 (PST)
Date: Thu, 26 Dec 2024 09:33:29 -0800
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
	linux-samsung-soc@vger.kernel.org
Subject: Re: [PATCH v4 6/7] phy: exynos5-usbdrd: subscribe to orientation
 notifier if required
Message-ID: <Z22TaVlsIiMw6jwk@google.com>
References: <20241206-gs101-phy-lanes-orientation-phy-v4-0-f5961268b149@linaro.org>
 <20241206-gs101-phy-lanes-orientation-phy-v4-6-f5961268b149@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20241206-gs101-phy-lanes-orientation-phy-v4-6-f5961268b149@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241226_093333_424356_C439877C 
X-CRM114-Status: GOOD (  17.02  )
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
> gs101's SS phy needs to be configured differently based on the
> connector orientation, as the SS link can only be established if the
> mux is configured correctly.
> =

> The code to handle programming of the mux is in place already, this commit
> now adds the missing pieces to subscribe to the Type-C orientation
> switch event.
> =

> Note that for this all to work we rely on the USB controller
> re-initialising us. It should invoke our .exit() upon cable unplug, and
> during cable plug we'll receive the orientation event after which we
> expect our .init() to be called.
> =

> Above reinitialisation happens if the DWC3 controller can enter runtime
> suspend automatically. For the DWC3 driver, this is an opt-in:
>     echo auto > /sys/devices/.../11110000.usb/power/control
> Once done, things work as long as the UDC is not bound as otherwise it
> stays busy because it doesn't cancel / stop outstanding TRBs. For now
> we have to manually unbind the UDC in that case:
>      echo "" > sys/kernel/config/usb_gadget/.../UDC
> =

> Note that if the orientation-switch property is missing from the DT,
> the code will behave as before this commit (meaning for gs101 it will
> work in SS mode in one orientation only). Other platforms are not
> affected either way.
> =

> Signed-off-by: Andr=E9 Draszik <andre.draszik@linaro.org>

Verified on my Pixel 6 Pro.

Tested-by: Will McVicker <willmcvicker@google.com>

Thanks,
Will

<snip>

-- =

linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
