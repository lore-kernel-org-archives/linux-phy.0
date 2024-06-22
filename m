Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 50622C27C4F
	for <linux-phy@archiver.kernel.org>; Sat, 22 Jun 2024 00:07:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UK3TdJM16DI7LND4ifOf3Zq51ZKb95bcyc+ARyL/B08=; b=i2/TCGktCGeW13
	Ka6T0uZobHVEE0ou8ODhnSV1c9ZskHFkIeGJe4te1sJQY0j78xo1vKZ3FU5mwWSKV2s/wSD3EfMhl
	MXTA62zkHu7u6ZQMNiZk9g4MfLpL2eZy6FcMeSZtoDnGl/WU4TwTbaq6cwBlo1J1RT4HCqB/a4Mhv
	B7R5cI9hJotTpURDC1fO5B6LJiLGBuBejEdIs9wlEBlKAE7IhWP3nfCyfIgSb0Vw69yEGyGm0k20e
	J0pBGk1kny1IRIPGpV8/kx6lgsK8br/FVXSty/Y3gjg0bFI6z2c6ceIouEpujk8k89P0G9foCrL88
	3N/EvI8lyotpthxJ3Y3Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sKoIL-0000000AyLy-00my;
	Sat, 22 Jun 2024 00:07:53 +0000
Received: from mail-pl1-x62f.google.com ([2607:f8b0:4864:20::62f])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sKoII-0000000AyLA-0pTB
	for linux-phy@lists.infradead.org;
	Sat, 22 Jun 2024 00:07:51 +0000
Received: by mail-pl1-x62f.google.com with SMTP id d9443c01a7336-1ee5f3123d8so260815ad.1
        for <linux-phy@lists.infradead.org>; Fri, 21 Jun 2024 17:07:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1719014869; x=1719619669; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=AVh4f6aDFggCQxeACj/Y+2csLoIHzjIutTBKzrEmvec=;
        b=GfzHPInq375z4048REbEeeknZ2l2ooXYS8kanLqWx++nDzovKoC+ixNrUVscyV9wY0
         Z/YaEoltadK773aK1ORCorMLuVlcRAfEpH3VAOWFG1wMSR7MTwfqHuKhBIKsiwCLqiX7
         9jLpUDvPRQGXjeFZHg+5Fc2E0uNEYF+YaPq6kZhmU/ps22LVmCut2Uc2ENfdwpj98cXk
         8/f5j7p76qrvDgMCu82O9gMHAigDqPv5B5jvkx9uol57AJQ4DXOyl3STI+gW+AHjgB0A
         uM30M32VRhwgJNnrv2BCCzGk2o+32hnDdiWeINmM5/Cw4Tm7EDyPS2kisyw8xlOwJVIZ
         UYhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719014869; x=1719619669;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=AVh4f6aDFggCQxeACj/Y+2csLoIHzjIutTBKzrEmvec=;
        b=VgSWVzlCpfk0QVD8Xv2JTLnMR5nYRfMVRSVUQMQecc4M1AfB7kOHypTkaxvmwU6qu/
         aGHbMRmexceD1w+1A1VrgH9ebHORHHJGDzTXEcPZ8HGSOnq6GZWtBd3ar7cIugoz4PNb
         7VloVkX0Ozfi2akvixbo5a5k7eia83n70COUqHUO3MlOtNSUEu+/eRhp50cB98jRozHz
         Mstohbx2S/rkP2WlDz0tLleMNJLCjfrYlFIhlbU7UvxIbD8+XegcQUD69o0z1TrTgA41
         j7QQjuUpWGcy5A6oFi0M7MpHLNhaw1CR1LbPXVenbAmt77sq4sscMdp5QZyKdv9zk60N
         hgBg==
X-Forwarded-Encrypted: i=1; AJvYcCWgLwKZyQPLwhAgMDIAA5E++FpVDe2+8P4NZwF2fd5dPU2IrQz71WoghuWkMQTIIwDn3nkFBNU50+WZODabTv7axCX32D72R6uxUJXHMg==
X-Gm-Message-State: AOJu0YzKlttpp6UN4Kconf5QD/rxXpm2Vxfgju0C+twMJccjCAbEUEJ6
	4+2YcBbd2jsH8J4aBS3sBTx0hP8WCJ58mmXypDxBSCNKAK22TDWG+1+wJPA57g==
X-Google-Smtp-Source: AGHT+IFZzkoPglStXTsiSGxKm5UGD1YXcN6j2iZrwpJmR5uQr6OjhCrwqZMmcCE7BXkKaphhRz+WDw==
X-Received: by 2002:a17:902:a989:b0:1f4:7db0:afbd with SMTP id d9443c01a7336-1fa0a2319bdmr811465ad.28.1719014868736;
        Fri, 21 Jun 2024 17:07:48 -0700 (PDT)
Received: from google.com (7.104.168.34.bc.googleusercontent.com. [34.168.104.7])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7065124dd1bsm1989696b3a.108.2024.06.21.17.07.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 21 Jun 2024 17:07:48 -0700 (PDT)
Date: Fri, 21 Jun 2024 17:07:44 -0700
From: William McVicker <willmcvicker@google.com>
To: =?iso-8859-1?Q?Andr=E9?= Draszik <andre.draszik@linaro.org>
Cc: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Peter Griffin <peter.griffin@linaro.org>,
	Marek Szyprowski <m.szyprowski@samsung.com>,
	Sylwester Nawrocki <s.nawrocki@samsung.com>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	Sam Protsenko <semen.protsenko@linaro.org>,
	Krzysztof Kozlowski <krzk@kernel.org>,
	Tudor Ambarus <tudor.ambarus@linaro.org>,
	Roy Luo <royluo@google.com>, kernel-team@android.com,
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org
Subject: Re: [PATCH v3 6/6] phy: exynos5-usbdrd: support Exynos USBDRD 3.1
 combo phy (HS & SS)
Message-ID: <ZnYV0MfjLyyI5uqQ@google.com>
References: <20240617-usb-phy-gs101-v3-0-b66de9ae7424@linaro.org>
 <20240617-usb-phy-gs101-v3-6-b66de9ae7424@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240617-usb-phy-gs101-v3-6-b66de9ae7424@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240621_170750_262514_54C27978 
X-CRM114-Status: GOOD (  24.38  )
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

On 06/17/2024, Andr=E9 Draszik wrote:
> Add support for the Exynos USB 3.1 DRD combo phy, as found in Exynos 9
> SoCs like Google GS101. It supports USB SS, HS and DisplayPort.
> =

> In terms of UTMI+, this is very similar to the existing Exynos850
> support in this driver. The difference is that this combo phy supports
> both UTMI+ (HS) and PIPE3 (SS). It also supports DP alt mode.
> =

> The number of ports for UTMI+ and PIPE3 can be determined using the
> LINKPORT register (which also exists on Exynos E850).
> =

> For SuperSpeed (SS) a new SS phy is in use and its PIPE3 interface is
> new compared to Exynos E850, and also very different from the existing
> support for older Exynos SoCs in this driver.
> =

> The SS phy needs a bit more configuration work and register tuning for
> signal quality to work reliably, presumably due to the higher
> frequency, e.g. to account for different board layouts. Additionally,
> power needs to be enabled before writing to the SS phy registers.
> =

> This commit adds the necessary changes for USB HS and SS to work.
> DisplayPort is out of scope in this commit.
> =

> Notes:
> * For the register tuning, exynos5_usbdrd_apply_phy_tunes() has been
>   added with the appropriate data structures to support tuning at
>   various stages during initialisation. Since these are hardware
>   specific, the platform data is supposed to be populated accordingly.
>   The implementation is loosely modelled after the Samsung UFS PHY
>   driver.
> =

>   There is one tuning state for UTMI+, PTS_UTMI_POSTINIT, to execute
>   after init and generally intended for HS signal tuning, as done in
>   this commit.
> =

>   PTS_PIPE3_PREINIT PTS_PIPE3_INIT PTS_PIPE3_POSTINIT
>   PTS_PIPE3_POSTLOCK are tuning states for PIPE3. In the downstream
>   driver, preinit differs by Exynos SoC, and postinit and postlock
>   are different per board. The latter haven't been implemented for
>   gs101 here, because downstream doesn't use them on gs101 either.
> =

> * Signal lock acquisition for SS depends on the orientation of the
>   USB-C plug. Since there currently is no infrastructure to chain
>   connector events to both the USB DWC3 driver and this phy driver, a
>   work-around has been added in
>   exynos5_usbdrd_usbdp_g2_v4_pma_check_cdr_lock() to check both
>   registers if it failed in one of the orientations.
> =

> * Equally, we can only establish SS speed in one of the connector
>   orientations due to programming differences when selecting the lane
>   mux in exynos5_usbdrd_usbdp_g2_v4_pma_lane_mux_sel(), which really
>   needs to be dynamic, based on the orientation of the connector.
> =

> * As is, we can establish a HS link using any cable, and an SS link in
>   one orientation of the plug, falling back to HS if the orientation is
>   reversed to the expectation.
> =

> Signed-off-by: Andr=E9 Draszik <andre.draszik@linaro.org>

Tested-by: Will McVicker <willmcvicker@google.com>

[...]

Thanks,
Will

-- =

linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
