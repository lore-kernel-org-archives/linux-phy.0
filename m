Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F2170D61013
	for <linux-phy@archiver.kernel.org>; Thu, 29 Jan 2026 13:02:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=P1GNi+qEMZq/i152PZQlChMPOr7U5op9kj+grAVzjVk=; b=vjb9Z4sh5z8Fvq
	bfc9QP0cl5/VjCyLm2Zn+LNVV1QWqA4bL4ATHZVt+S3u6ZFP00aTq0M7IykafbU1ekuXlFZsaCvMJ
	P3yMHEvT4IeVa684nfdNL5h+LjNESfkjaLavbJhPTt0As3g6rko3O4Yh/HE6Wk3ACwviny/f/2/GN
	vd6lCYccjXvX7hEadGGS0D2f20UZ30JUK9uMRtognn0u/0OhsnuQNGxyjZ7dIwoHYNEcZiqInV3Ei
	WzvwHlVMu3yCw2pBcoAT9eMxena6vRDY2HMPZKzGMVKKAs3P01rldXjBaCLb+lFotAdA6fzQ/K1zh
	NOXTzzEBqxt6er29C6Bg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vlRfG-00000000837-33cv;
	Thu, 29 Jan 2026 13:02:26 +0000
Received: from mail-ed1-x529.google.com ([2a00:1450:4864:20::529])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vlRfE-0000000082N-3fUB
	for linux-phy@lists.infradead.org;
	Thu, 29 Jan 2026 13:02:26 +0000
Received: by mail-ed1-x529.google.com with SMTP id 4fb4d7f45d1cf-658b511573cso1710611a12.0
        for <linux-phy@lists.infradead.org>; Thu, 29 Jan 2026 05:02:24 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1769691742; cv=none;
        d=google.com; s=arc-20240605;
        b=eO4ZlM3X3o8I/DoUTnyc71ekvHAx3h5nNZEUMkhFudxWsST7t84lAvdZGPMrrA5c8+
         ypCcyHjTBuIoGn41p1i9Sxo+9liPcRwYCRZ9WRQ38+OjL1sTKOlzNDo3H2MyNnmjON+G
         WV2BOsB1gGhtsVwIWnGmh2J6/CVB7TOx+MQHoP9gzNRn5QZcB8Efxw08HwdJvcJQVtEM
         /O6hA0FksECwowRgzE1g00CsAQYfLIkFPNJll0DSlLavYeyxGD+kUr3Hi7FzVxCMfoNK
         cQ+C11+DLo1eqShsIR48hDLCwVB2DjpGUF1Fipr1v0R+VnLclj1qR60VY2kyoH2OIa3W
         JkPQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=o5jH8Rxdp+tEZoB9l9fTv6AucC1v6C8I9T+8Tw0hHlg=;
        fh=8qSecIx8wZkrPdUUe0XB4vU9MBMPx0HsPQA18atAqX4=;
        b=W7MJ8NnO+o+ApcHsKAQZcpiUa/v753haIZMshVHUp+PcgMM3FnYwOL6KZme8Z++Kyx
         rKaSRit4bzZCZ3UjXqm0S35/+0uJtOCWsF1ru/Ot1Obf9UjW9r5HlAqfYMFjCZPGQZ/r
         lSiBfJUEaATY8jgRbKjNnXlTFzQRYJAmOtKBRYJTTxrkCGMDlP1ErHuRM7GB0acF0cMi
         R4bMVIjLPGSww0DFB/nsQJgK4Z27VZQ/qpdtSXZqgCA2PdNPkjABj/0V609WUU63EdHz
         DjTXp2AYwQwDZZLS0Bi0cZf/FFHZl00NkURcIu80XkhpoSjqVh2rsyUeF+XyGtF5Mkfu
         VI1A==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1769691742; x=1770296542; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=o5jH8Rxdp+tEZoB9l9fTv6AucC1v6C8I9T+8Tw0hHlg=;
        b=tVSNkobbzD9L/IZe0n/+KgQVFf91Xk69sPBeAHhDfGHP3LGza6EE5mTFRL08NODL8I
         Lepk1/qrKaNn4paJj7qkGTtkDjWZspn20x9P4uwrfwFDhWgpswI/pPSVyr7EF6o2neu1
         VomTke+NhAc+jqs43S6DLkjSTKflZhCwPfi3Z0rhiMyQcgT28GAQzIBlsInVoXc9tojA
         +iGOFpqcX7eyPPic/eIbs/1oFVrvWR17yOAZHMf0H+DTM11VIAjMaN1rvu9ge4GwhUTe
         TjzEtZsoLGO4rNq44hwlGBY1J1fP4PaeY0DbuLIpOvyjBMEnZNEEucJfJsCLI5Owy8BV
         6icA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769691742; x=1770296542;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=o5jH8Rxdp+tEZoB9l9fTv6AucC1v6C8I9T+8Tw0hHlg=;
        b=Hu+Wcs5FWDv1TYtz5PH9GSL819/baoSactZixzjcSz8VAaSfLWHxRMVZ9FWydcV7Gh
         ccE1cvv8F0AUasF4NKBhnwh4L4E2Uo2cpy0MmDvG5WY44rRg+Xo9Om7rL8j3xCVIZlqW
         JzRFW0X8Vq7IsxfJDA7+nzcfJTeOE3/H/YplDn/oa+PLuDM6J9nhCdEEyTeP//i0hIEj
         ONLsxC1l5CMDkGNrc8xE37b+aq89iJ2U8ThH4MerguHqVsNGC4lI3Wd3ti2dldo+w3iK
         RCw0nx8EUTAKbBXtB5AfdKYX7APA2NzKOws6MDMDs6tAlPI8R6HNfj+ABGwD4ilHaKT8
         pIVw==
X-Forwarded-Encrypted: i=1; AJvYcCW+eBPd64r3kniBYi9pHpieE6MB67aZ3uNFDhXTefKTjtLdilAd8fXahWIfe1Tw594hN3Rc9pu3nxc=@lists.infradead.org
X-Gm-Message-State: AOJu0YyxP/tnzYQdKz7xALESLOfMX4lwdWNhyusHMF9W/C28UfFxtPxs
	i0UJhrDOHR9oFNQh4wvAEY5y1JG0633RKkUKXSSo9i2OX833D2eUGXKK0U0Rk4XZSDTQG3mtdRe
	9wgi/cbtfvSvIOGev4PNd+W0QFb7YX3Quq4ZHHEfmBQ==
X-Gm-Gg: AZuq6aJPbAu/Z1N8ZUm7+H/i1CFZ/TWxAmI6p2NjlYAljQAlDizUSVwL4vVtuGUD6Ss
	L57G3x/dYUHHHZ52/dmjP22wtvKxi85PsY8dosl4zzNF8bq1xcwENmklFDkc9SdAN//Ko6d1etn
	ikAJZ2AkKN5pk0d/+k7CRnQ5tcJC/AkRRe/iFiBaoYnGyhJ9/Fs+PFCCT135CcbU7eUTmMk8OWF
	tIETIcuqglC4Lu7nm9K64/TyHCdDiUmBs0XITp1Cxg3FXTGILWFXXXp46PzvcWxUh/uchX/VFTu
	b3l4rKUrIx3q59R+KnNbFTxK
X-Received: by 2002:a05:6402:40d6:b0:64d:e1c:4c0a with SMTP id
 4fb4d7f45d1cf-658a5f8cfdamr6437778a12.0.1769691742347; Thu, 29 Jan 2026
 05:02:22 -0800 (PST)
MIME-Version: 1.0
References: <20260126092159.815968-1-vincent.guittot@linaro.org>
 <20260126092159.815968-3-vincent.guittot@linaro.org> <aXtB0QcVOkE_hhny@shell.armlinux.org.uk>
In-Reply-To: <aXtB0QcVOkE_hhny@shell.armlinux.org.uk>
From: Vincent Guittot <vincent.guittot@linaro.org>
Date: Thu, 29 Jan 2026 14:02:09 +0100
X-Gm-Features: AZwV_QgTBsEbqAq2XkLUgo22OQOD7HpGZIhc6Tp00c8M0BIdl_pPusc1NHtuBUU
Message-ID: <CAKfTPtAg201wXU_LuO-Y0M8k6ew8-vhKsjoHzJ1sxqp3Pn=wVQ@mail.gmail.com>
Subject: Re: [PATCH 2/4] phy: s32g: Add serdes subsystem phy
To: "Russell King (Oracle)" <linux@armlinux.org.uk>
Cc: vkoul@kernel.org, neil.armstrong@linaro.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, ciprianmarian.costea@oss.nxp.com, s32@nxp.com, 
	p.zabel@pengutronix.de, ghennadi.procopciuc@nxp.com, Ionut.Vicovan@nxp.com, 
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	netdev@vger.kernel.org, Frank.li@nxp.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260129_050224_929720_36E1C74C 
X-CRM114-Status: GOOD (  19.56  )
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

On Thu, 29 Jan 2026 at 12:17, Russell King (Oracle)
<linux@armlinux.org.uk> wrote:
>
> On Mon, Jan 26, 2026 at 10:21:57AM +0100, Vincent Guittot wrote:
> > +/*
> > + * Until now, there is no generic way to describe and set PCIe clock mode.
> > + * PCIe controller uses the default CRNS = 0 mode.
> > + */
> > +enum pcie_phy_mode {
> > +     CRNS = 0, /* Common Reference Clock, No Spread Spectrum */
> > +     CRSS = 1, /* Common Reference Clock, Spread Spectrum */
> > +     SRNS = 2, /* Separate Reference Clock, No Spread Spectrum */
> > +     SRIS = 3  /* Separate Reference Clock, Spread Spectrum */
> > +};
>
> So this is a PCIe thing. If it's part of the driver's API, then it
> should be common and not driver-private.
>
> > +static inline bool is_pcie_phy_mode_valid(int mode)
> > +{
> > +     switch (mode) {
> > +     case CRNS:
> > +     case CRSS:
> > +     case SRNS:
> > +     case SRIS:
> > +             return true;
> > +     default:
> > +             return false;
> > +     }
> > +}
>
> This checks that the submode is one of the PCIe private modes that this
> driver wants to see.
>
> > +
> > +static int s32g_serdes_phy_set_mode_ext(struct phy *p,
> > +                                     enum phy_mode mode, int submode)
> > +{
> > +     struct s32g_serdes *serdes = phy_get_drvdata(p);
> > +
> > +     if (mode == PHY_MODE_PCIE)
> > +             return -EINVAL;
> > +
> > +     if (!is_pcie_phy_mode_valid(submode))
> > +             return -EINVAL;
>
> This checks for the PCIe submode, but notice the test immediately
> above. PCIE mode is being rejected. So, this driver supports
> everything else but PCIe.
>
> That doesn't seem right.

It's a mistake

>
> --
> RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
> FTTP is here! 80Mbps down 10Mbps up. Decent connectivity at last!

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
