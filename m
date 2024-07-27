Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 59E69C3DA4A
	for <linux-phy@archiver.kernel.org>; Sat, 27 Jul 2024 20:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dTJIAR2IcQ2htCtq/PFL+ap+cbzI/ym1H5JP42ulCLw=; b=u2IuyA6d+W+NlX
	TfvXaSJPAwG7ycwEUBXHuPHY3Nr9KctNLLl+2vjU1pxQWr+yGB6SgOM9TphVPZIi3IsIpy3azG2Do
	Q8Aa0RwKbvbVStm71Wu1oPKnbu6pgMrD3ZfRXG8UWtXLghnhiajOuctGKlbrYdKG795zMRt/j4ZSd
	etQocmPTlSRJESkXABr/E9o9Z1m/wVO8VkQrnBzXu7U6onmRaVMWrVTO/lzxAy1fXkZMOMipYcgkr
	VVgPMeFcF5D2CBx7Pv99HD0A5iJkDkhtiy+ku3K2tHSaJ3qUyCrfixZ2xQfLmq6b3mfN2fcM1mzOk
	W0RKeypZ4ACIqZeFnzow==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sXo1p-00000007Gbp-0HOF;
	Sat, 27 Jul 2024 20:28:33 +0000
Received: from mail-lj1-x235.google.com ([2a00:1450:4864:20::235])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sXo1P-00000007GXE-0i9B
	for linux-phy@lists.infradead.org;
	Sat, 27 Jul 2024 20:28:08 +0000
Received: by mail-lj1-x235.google.com with SMTP id 38308e7fff4ca-2f01e9f53e3so34114231fa.1
        for <linux-phy@lists.infradead.org>; Sat, 27 Jul 2024 13:28:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1722112085; x=1722716885; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=a5TCSE5IQPZmg5+Co6Qb5Q76qkbbdisagHTdBaE0Lw8=;
        b=ME1Oa/lX0k0D9fdq9NjghvhC9k4r5tnF11OpFWkZG9xHK2XbBDzNpSYnYRgpXvKPVW
         ra0irCKkcdN+fBPntnP+kr1Tl5O9QyyIUncFx1rDMnCXHhU5Fo4O35Fd4+u/vvY9zoIm
         6icMpcTpxWBjLJv7Sx2KFfy1kSZydrd80Qup3k1ftLXZMDXDUYutajFw0aZryvwLtWUH
         fEVyloNiw8ZNYdDVGuyBRg8fFC6B2Lrzjm7MR727mPmhAm0gvhZTudcQdlbbHFpyXPo5
         3Cm1i8/RxOMY/IeCAimJNMZEGIsNfkllakef8s3wQsNKyOajggfBI17CBFBpaRrTdDiX
         pu4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722112085; x=1722716885;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=a5TCSE5IQPZmg5+Co6Qb5Q76qkbbdisagHTdBaE0Lw8=;
        b=YRclIy8X1GUDTinsjqjBiGBbBr4slPj6RUnXHvTb0gRCZaJVGxrjmdIAHrvfrJIn4R
         vOrsI0gJtmmJrMh0Al5EqAuHD1sJ6vL6aHH0y2snxKFUjvVxouTEoVRuPXMR/+tGm1n7
         5jC5myZNW4FGP/HquDeJihDYqpPFX7Ls5e0S2eWPosaq6TXXlywlhfHJnKEU080NzxFp
         BWSCf0Cq4nFRfCOQN4vch8o3cFNqrHVik8WtGG1M81g59SC63a/rkd/ndG1CQx9StTmP
         2j/wdoC+j1wpN51KK2umTgjoQ48vxjvq07wNzA7hWk3PnAuM97vL6RhWTne4aGQY5SOH
         Glsg==
X-Forwarded-Encrypted: i=1; AJvYcCXUaF/EPJtsyrRJScHxjIrJf0BqC7Z0gHozoTuBDz6GghmjfdkB4puBk1NRjjlANbU0r51/as+E8Zqwsyey1GSULx+liJECY5RYjSdi9g==
X-Gm-Message-State: AOJu0YyeCgmCXeL6orlZdmXcWxTe7ZrNUH2trPfVFDBxn/7cM6otfhON
	zx8NOhBgVQYNhdroLQ8CGTDr2lwVZ39ZJIALObr4jqS2RET5ffnPaIAPsLqfINQ=
X-Google-Smtp-Source: AGHT+IHk5AHyaj6Kn7pMIySWcR20lekDgoIkBhN1ucGkQo9nR7bUmFlDSzTzDXUXY1CP8lJJ++NOEg==
X-Received: by 2002:a2e:b5b1:0:b0:2ef:2555:e52d with SMTP id 38308e7fff4ca-2f12ee6342bmr21991621fa.45.1722112084809;
        Sat, 27 Jul 2024 13:28:04 -0700 (PDT)
Received: from eriador.lumag.spb.ru (dzdbxzyyyyyyyyyyybrhy-3.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-2f03d074ea4sm7683151fa.116.2024.07.27.13.28.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 27 Jul 2024 13:28:04 -0700 (PDT)
Date: Sat, 27 Jul 2024 23:28:02 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Sui Jingfeng <sui.jingfeng@linux.dev>
Cc: Liu Ying <victor.liu@nxp.com>, dri-devel@lists.freedesktop.org, 
	devicetree@vger.kernel.org, imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, p.zabel@pengutronix.de, 
	airlied@gmail.com, daniel@ffwll.ch, maarten.lankhorst@linux.intel.com, 
	mripard@kernel.org, tzimmermann@suse.de, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, shawnguo@kernel.org, s.hauer@pengutronix.de, 
	kernel@pengutronix.de, festevam@gmail.com, tglx@linutronix.de, vkoul@kernel.org, 
	kishon@kernel.org, aisheng.dong@nxp.com, agx@sigxcpu.org, francesco@dolcini.it, 
	frank.li@nxp.com
Subject: Re: [PATCH v3 00/19] Add Freescale i.MX8qxp Display Controller
 support
Message-ID: <zr2t6deyvwacawj7s36gols2vxu24fah25x6ofy7xpqyvc4s2d@luavybrlxpaf>
References: <20240724092950.752536-1-victor.liu@nxp.com>
 <wky3mjl7fn773myatyrdsea6oc2xebkvrgmigmmoj36eswgqry@2kox5ad5dynl>
 <aba35ecb-2357-4c4f-8366-08d14e40d436@linux.dev>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <aba35ecb-2357-4c4f-8366-08d14e40d436@linux.dev>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240727_132807_241904_5F11DAFF 
X-CRM114-Status: GOOD (  27.79  )
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

On Sun, Jul 28, 2024 at 03:10:21AM GMT, Sui Jingfeng wrote:
> Hi,
> 
> On 7/28/24 00:39, Dmitry Baryshkov wrote:
> > > Hi,
> > > 
> > > This patch series aims to add Freescale i.MX8qxp Display Controller support.
> > > 
> > > The controller is comprised of three main components that include a blit
> > > engine for 2D graphics accelerations, display controller for display output
> > > processing, as well as a command sequencer.
> > > 
> > > Previous patch series attempts to do that can be found at:
> > > https://patchwork.freedesktop.org/series/84524/
> > > 
> > > This series addresses Maxime's comments on the previous one:
> > > a. Split the display controller into multiple internal devices.
> > >     1) List display engine, pixel engine, interrupt controller and more as the
> > >        controller's child devices.
> > >     2) List display engine and pixel engine's processing units as their child
> > >        devices.
> > > 
> > > b. Add minimal feature support.
> > >     Only support two display pipelines with primary planes with XR24 fb,
> > >     backed by two fetchunits.  No fetchunit dynamic allocation logic(to be done
> > >     when necessary).
> > > 
> > > c. Use drm_dev_{enter, exit}().
> > > 
> > > Since this series changes a lot comparing to the previous one, I choose to
> > > send it with a new patch series, not a new version.
> > I'm sorry, I have started reviewing v2 without noticing that there is a
> > v3 already.
> > 
> > Let me summarize my comments:
> > 
> > - You are using OF aliases. Are they documented and acked by DT
> >    maintainers?
> > 
> > - I generally feel that the use of so many small devices to declare
> >    functional blocks is an abuse of the DT. Please consider creating
> >    _small_ units from the driver code directly rather than going throught
> >    the components.
> 
> Well, I really don't think so. I don't agree.
> 
> I have checked the DTSpec[1] before type, the spec isn't define how
> many is considered to be "many", and the spec isn't define to what
> extent is think to be "small" as well.

Yeah. However _usually_ we are not defining DT devices for sub-device
components. So at least such decisions ought to be described and
explained in the cover letter.

> 
> [1]
> https://github.com/devicetree-org/devicetree-specification/releases/tag/v0.4

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
