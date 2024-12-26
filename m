Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 17005E77188
	for <linux-phy@archiver.kernel.org>; Thu, 26 Dec 2024 17:38:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fLu2+/wjk15D+3hkPZYbLcOCCnNi1JhqLWAS5ZrV20A=; b=QmgmxttLTZtfP+
	/xIwrv6yB92j4Mo/ghAzQRFeGGS2UgBJDkq3Tsh8y83tcUM36qaPbgMeRo3mP2e+tRjt9l6mleK8u
	GFTJdrOfuTBmdCZvYhQfWQ4U5xaMxb4Z66gAfgkKj1dq2fZfs5uM11em2HiH4IuYFXG8HsiKDI+fi
	S0Q4MAlVNFwDrASQS5UG3OfSs/EqxewFae4RkWvPnQJxIn8O8WGzrrmc1tSWKVNupYk4R8hpv7MHv
	gPWDsuZWq+M8a34BN6HoBfuzY37BRP12iD0HeRVKfxrzKhBkgK25QvyTjGKgJ/hTwhDcc/edALvCJ
	3gxner5o5UFFBSTDkFRA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tQroT-0000000G9q2-3USg;
	Thu, 26 Dec 2024 17:38:21 +0000
Received: from mail-pj1-x102b.google.com ([2607:f8b0:4864:20::102b])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tQrkZ-0000000G9IO-1XXo
	for linux-phy@lists.infradead.org;
	Thu, 26 Dec 2024 17:34:20 +0000
Received: by mail-pj1-x102b.google.com with SMTP id 98e67ed59e1d1-2ef89dbd8eeso5713847a91.0
        for <linux-phy@lists.infradead.org>; Thu, 26 Dec 2024 09:34:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1735234458; x=1735839258; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=UpfjO3nCfSKSU/F6ZQHVcOz1mCD2+D/yZzyTSXWn/XA=;
        b=cGDeAdL6f0pDJR8HguzKjZ28LRIWt9Asub3VBozrlnMmX+sjTFGefBctvYXY8EDnIp
         J1pfn2nOMjlRfGJJg0FRqp9Cr4a8ihcBDfNKZjFDxnpdglbau47I1RNp0o1czqD7Ysax
         SHgbs0dDIVMWoPQ4hU6hrxMNjD4jr0lB1cnuu6+Mix7/DkSRaT44SyYRgv4NWbW2xQRk
         a2P2v7wCPkJ5kBuhAESZVkgRC5tNY8if/QIQxv8xe0riL2F8/+iawy78EDYhOvlmw0gg
         Pk2j9iV4/wn48Of1/darbFeeZayEFapiHAWrDZqb4pqkaPK2zbQLpKpXSHuhWuyrBkzo
         OSXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735234458; x=1735839258;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=UpfjO3nCfSKSU/F6ZQHVcOz1mCD2+D/yZzyTSXWn/XA=;
        b=p5Um2oqVOk8jYjaD0bqk3ZKTJrIxn9MUS6FarOelsXzgDXW1t3H/t2/azqQBvRQNpp
         e9UhB4jw5X+G2roFkMKlgE4bm7b3pYPkC6Xsd18gvoAEYsWN83mJntFzLUDH7t/ekYiu
         nRyctgJz9wjUCF8ZR/xQAbJxdG1gicfBvP35oHYeUJ9zCb7rSVqIxvw0ox6zGnpHS0I/
         HQpGYr8JQBQPKuqeE0bW4SJIynknyQBoOMYEyJvKQh0OMb9TQybY1NtpR2ft4Nh61zbe
         f4O9PrMY4SEAZL4EPQOauhR/h69Jo9Q1PA7/PxjF3quHsiPyNOxfwdNip0Rci52rKtIQ
         S0kw==
X-Forwarded-Encrypted: i=1; AJvYcCWI5lpKFbYlmpIMbRhKJNH14vJIW30C9SzScOyDhYexpi4YfhpqvdGtZ/i0YFChr0ZAuu05pCiMlQY=@lists.infradead.org
X-Gm-Message-State: AOJu0YxHQ8WjswHnEiXGMpDHQuGu1uQ+tzXYJPHx/Ljkc0Wb4b/27gd2
	SIJdoaLpdYyifQGRDs/liklLps667Ta6/HLQisheFrmsQ0DMjSDuS0+c0StdCg==
X-Gm-Gg: ASbGncvB6Z0ijNBakDsgFYxnBZxbEMHKyMj7C81BI/Brw2UziMRmt4PwbK6qSRaiqz9
	UGuWUyaOGzOnVK/lvCLJf+jnQgVgMAVrkt2S468TNcTxn8ABmNh8Oiuw/rnc9kn1Ah1YWCRezid
	baWGU0jc7s8bF4OA+R0/y6BoQwG8qntvjC2U2vrfbox+LOCnI48K+yW4ewWe+bMDAMHVeRMaqbj
	6/vTVD62qqAsXnk6OSdtM/dSupnk1yG7isnryqNLOFo7QKw1UFeVYihFpuEJ/HGJO64guH5sicw
	QNRQfOK7lg5q7JOIaDo40LGF
X-Google-Smtp-Source: AGHT+IEXR2tW0UBVoELj4Ujtb5xezOwJU19NdsTJFIlGuhV4cKpQboh3iQ1wj0Q6nDV1+6ZatyEKfA==
X-Received: by 2002:a17:90a:c2c8:b0:2ee:b2be:f390 with SMTP id 98e67ed59e1d1-2f452ec3780mr32597910a91.28.1735234457983;
        Thu, 26 Dec 2024 09:34:17 -0800 (PST)
Received: from google.com (123.65.230.35.bc.googleusercontent.com. [35.230.65.123])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-2f4477c8542sm14223370a91.17.2024.12.26.09.34.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Dec 2024 09:34:17 -0800 (PST)
Date: Thu, 26 Dec 2024 09:34:14 -0800
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
Subject: Re: [PATCH v4 7/7] phy: exynos5-usbdrd: allow DWC3 runtime suspend
 with UDC bound (E850+)
Message-ID: <Z22TljXrbBNazNwW@google.com>
References: <20241206-gs101-phy-lanes-orientation-phy-v4-0-f5961268b149@linaro.org>
 <20241206-gs101-phy-lanes-orientation-phy-v4-7-f5961268b149@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20241206-gs101-phy-lanes-orientation-phy-v4-7-f5961268b149@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241226_093419_409493_EA31AB6D 
X-CRM114-Status: GOOD (  14.43  )
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
> To make USB runtime suspend work when a UDC has been bound, the phy
> needs to inform the USBDRD controller (DWC3) that Vbus and bvalid are
> gone, so that it can in turn raise the respective gadget interrupt with
> event =3D=3D DWC3_DEVICE_EVENT_DISCONNECT, which will cause the USB stack
> to clean up, allowing DWC3 to enter runtime suspend.
> =

> On e850 and gs101 this isn't working, as the respective signals are not
> directly connected, and instead this driver uses override bits in the
> PHY IP to set those signals. It currently forcefully sets them to 'on',
> so the above mentioned interrupt will not be raised, preventing runtime
> suspend.
> =

> To detect that state, update this driver to act on the TCPC's
> orientation signal - when orientation =3D=3D NONE, Vbus is gone and we can
> clear the respective bits. Similarly, for other orientation values we
> re-enable them.
> =

> This makes runtime suspend work on platforms with a TCPC (like Pixel6),
> while keeping compatibility with platforms without (e850-96).
> =

> With runtime suspend working, USB-C cable orientation detection now
> also fully works on such platforms, and the link comes up as Superspeed
> as expected irrespective of the cable orientation and whether UDC /
> gadget are configured and active.
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
