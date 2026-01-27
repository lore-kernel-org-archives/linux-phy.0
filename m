Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5231AD2D8E3
	for <linux-phy@archiver.kernel.org>; Tue, 27 Jan 2026 10:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lNa52StAoCHE0tw1wmkQnWEMYSdi305yMbEHJMtu7LE=; b=yHdFOhr18n+2NT
	70IabUJNVZ0DfyZa12H8GnXu/PK22IGFbfQguGD5ajBOmS1fEcpmkz3KyK3RkmZZKwVtJW59Tvnn+
	6JmOIPyhE0UqirYE4sTCKUVh0D51Sd+dCjpDFdSvUIaO0OwABhfNR6O0eTWBBF3a7UruQl0Id0xxS
	uwYAblIhhg7TbMKrmwx0i4GxgjwTUjBZQDQqEPuAtzSby9LIU8cG06LBr2vm183LbWD80EDnNqzwE
	IT2sXbJWXM8Y5lnyjp75dyFBYkXPgvKTmjogTDtqy47W2U9Njig8Afme08Qtza7/4zGUv/p3yM+kn
	pA03O0uboCb8gwLLqRVg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vkfzb-0000000E1Ur-40H6;
	Tue, 27 Jan 2026 10:08:15 +0000
Received: from mail-ed1-x535.google.com ([2a00:1450:4864:20::535])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vkfzZ-0000000E1Ti-1Sgw
	for linux-phy@lists.infradead.org;
	Tue, 27 Jan 2026 10:08:14 +0000
Received: by mail-ed1-x535.google.com with SMTP id 4fb4d7f45d1cf-658078d6655so10871928a12.3
        for <linux-phy@lists.infradead.org>; Tue, 27 Jan 2026 02:08:12 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1769508491; cv=none;
        d=google.com; s=arc-20240605;
        b=fY/fTgBKFtFfL7eYh1jZvDsndvK7tLzidxagmffBd6ejXrnyLVMm6od7ZqLfmAldLt
         D6EbNILAJUASHivZUM2NduTbIHqQtn2hoSladPJNBS2IZNtGbk+A+oruMmqBs306I2wH
         1Tj3FhdVP3RSPr8RK7gmu8j0FePZds0EFgTd0o4eimCGQOWUqWjPGHSM5eUVmlhSJ6SC
         gCnW5lxgMG1143BSXrjlgk7lAljJXu7LXXNQGDZsDwdpvyXv3ZjeqqrbbRS0c6eYiIrc
         oFsndTuAQKFu+3a80OMtLzYBV6aihKBEEHhQtQO1xr87H7RfIQ7XTrt5pmoKotjknmY/
         C+cw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=bpxQmfY9VK7T+Y3W6DWNgC6rQuK+Ld0siGTt5w9irRg=;
        fh=OXUROKI3IRSCfUl1Zz/PoU0DzKRFhqvdykqXqQPovq0=;
        b=XV2MFA5WA+AguOPUzdUML5pFmz/CVS+6WeFrq+QmtIgrfeLLkb237JeNZkLGcEHAkG
         OdVHiPE03+4Ts7wdi6dkPLsAyHweJ2QJS6qNxqYHYWUB5UFf0G5unkb7NKXqCnCTubGk
         MFgmZXqphMRA/3uMN+RxqT3YrG1fAJRl/p2YUif84r5ERnImcURJ9eH/KjjmKwjgB6g7
         gvqCwBkw82MPKKBPSLwX7gEN1PrH3UeHV/2R3kTna2Y7RZo0DV85GFarxnM/iYe71nco
         Hml53IMVZ/86EBkbcXvnmDLzL2XRzOPLsgQcajfCtGATAPR56+RHZQbadeysgCVI41Kr
         6lMw==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1769508491; x=1770113291; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=bpxQmfY9VK7T+Y3W6DWNgC6rQuK+Ld0siGTt5w9irRg=;
        b=aVSSXOGel9E6hwNsNG9fePrBVGRlZ6QNvKhq4b5zx135d8Q0VE4mHoRgr3c+MtkuvQ
         BnMOGLcMXSqG461GBKezdkpLCmZMVPr58GuRd4T5LIjNds+xLMihqHhc9CV2svf0znAE
         ppSUPaMCjBYVyYaqIXw1fAnUexgls3T7bzCoXntADJOPZwJo33wPPb5x9OPeMCnUDdXU
         MuHSCtuazRAwELuyR9Tf9G50I9qTGUUBBAFshPTlqWJcLf5X+n7/4vA1W9SW+J6MqNmA
         zSMuWIf633AWNvT/7rkaVovG+TIQnj7w+XHkOw6q7e5L/Gt/2F3N6Jz6c0EaSBsfGTdM
         C2ww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769508491; x=1770113291;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=bpxQmfY9VK7T+Y3W6DWNgC6rQuK+Ld0siGTt5w9irRg=;
        b=JeMKTICTHiz5x3dFpN2Ie7XuH2ePkyvXu5+gW87NpjTGWH2ybRvaj0yIvwXPCBnAa/
         A7c06PwenUxfBqtyM3OQnMrQK4Qm3p0ZPNKv/VEvUI91NiWIWiCbSdPcrSacEPOu+pSl
         3x5ftl31viJ0HkNXHDHObaKOPuHJcck0ez+H6ADLlTbyv822X/N0od1U4cy9akBW9umh
         PKhe8fMCuwnGM9yz1ubIYWiwH367FcdBbwOwOOF2Q5KBAqKQNONmcPWC5dXMNU0885iE
         fGkb/RGAxXQt7OtZbA8J6necZ/jISzAodJJfMBJeG1tlct0EX2pkZBpzdEZnwmi0HjLN
         f9Qw==
X-Forwarded-Encrypted: i=1; AJvYcCXmnnFn7LdYPNDxJv0ELwChdRD/xB5aYw5uxFVXnsleOYiugNqUD9rwxvedRLGyoAxGFZkMItw5bGc=@lists.infradead.org
X-Gm-Message-State: AOJu0YxfuwjZ1jIJ2UqSUYy9dhVHCmf1GL9zI+Dpe9eV3ebkEhJh0FHc
	pksEcco+G018N8GHqoN0S3NUdhiwg2kc7u2tYlBecbgv4iW5NCqmcvv1z8eetw6/QShVXkDRmkp
	mVfv3voRYV4PniKKZg58+IVUugkQlyZb2aIAiOHXvAA==
X-Gm-Gg: AZuq6aL2hzuYxVlbkSKkWwTgSliBE15VkSSB5IqAbBLV4GdGJulGyTXVkj3F5mdUb61
	zG4WFwiHxCBsDnPrFk3s7HpKrpBXyt0KzO0Mccr4n3dBbIY+PxoKnGN3hfH9HePaC8F6gc9BFjk
	TjeHDzjKfGMz07jfhN4/VufspjvjQykf8Nqt+hbm4INzW3XTvAPsDJuxp68kOM99wSAl/PHeTqF
	QJPtwCPTTtjNIBWUQjHTUU4mtYu6tqXQXMzFMt5r2GXeYI21kQ/12Js4wiE98xdio77HeYluYw/
	jR437DdFE/aVl2GvahexKCfN
X-Received: by 2002:a05:6402:1d50:b0:64b:6e44:217 with SMTP id
 4fb4d7f45d1cf-658a5f8e7cdmr891417a12.0.1769508490979; Tue, 27 Jan 2026
 02:08:10 -0800 (PST)
MIME-Version: 1.0
References: <20260126092159.815968-1-vincent.guittot@linaro.org>
 <20260126092159.815968-3-vincent.guittot@linaro.org> <69592713b7bd419e23df458734ca78070a83e8ac.camel@pengutronix.de>
In-Reply-To: <69592713b7bd419e23df458734ca78070a83e8ac.camel@pengutronix.de>
From: Vincent Guittot <vincent.guittot@linaro.org>
Date: Tue, 27 Jan 2026 11:07:59 +0100
X-Gm-Features: AZwV_QiOrd8cMHRoDNLhWiUkjdTQ9Am6xMiRSspZlgdv4qBzTDeeYROI1wjEMTk
Message-ID: <CAKfTPtD+EZ+apAnS7tccY5UrQx3EWXb4j33F_5SkHY80akxz-A@mail.gmail.com>
Subject: Re: [PATCH 2/4] phy: s32g: Add serdes subsystem phy
To: Philipp Zabel <p.zabel@pengutronix.de>
Cc: vkoul@kernel.org, neil.armstrong@linaro.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, ciprianmarian.costea@oss.nxp.com, s32@nxp.com, 
	linux@armlinux.org.uk, ghennadi.procopciuc@nxp.com, 
	bogdan-gabriel.roman@nxp.com, Ionut.Vicovan@nxp.com, 
	alexandru-catalin.ionita@nxp.com, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, netdev@vger.kernel.org, 
	Frank.li@nxp.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260127_020813_405571_563DF6CA 
X-CRM114-Status: GOOD (  16.11  )
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

On Mon, 26 Jan 2026 at 14:11, Philipp Zabel <p.zabel@pengutronix.de> wrote:
>
> On Mo, 2026-01-26 at 10:21 +0100, Vincent Guittot wrote:
> > s32g SoC family includes 2 serdes subsystems which are made of one PCIe
> > controller, 2 XPCS and one Phy. The Phy got 2 lanes that can be configure
> > to output PCIe lanes and/or SGMII.
> >
> > Implement PCIe phy support
> >
> > Co-developed-by: Ciprian Marian Costea <ciprianmarian.costea@oss.nxp.com>
> > Signed-off-by: Ciprian Marian Costea <ciprianmarian.costea@oss.nxp.com>
> > Co-developed-by: Alexandru-Catalin Ionita <alexandru-catalin.ionita@nxp.com>
> > Signed-off-by: Alexandru-Catalin Ionita <alexandru-catalin.ionita@nxp.com>
> > Co-developed-by: Ghennadi Procopciuc <ghennadi.procopciuc@nxp.com>
> > Signed-off-by: Ghennadi Procopciuc <ghennadi.procopciuc@nxp.com>
> > Co-developed-by: Ionut Vicovan <Ionut.Vicovan@nxp.com>
> > Signed-off-by: Ionut Vicovan <Ionut.Vicovan@nxp.com>
> > Co-developed-by: Bogdan Roman <bogdan-gabriel.roman@nxp.com>
> > Signed-off-by: Bogdan Roman <bogdan-gabriel.roman@nxp.com>
> > Signed-off-by: Vincent Guittot <vincent.guittot@linaro.org>
> > ---
> >  drivers/phy/freescale/Kconfig               |   9 +
> >  drivers/phy/freescale/Makefile              |   1 +
> >  drivers/phy/freescale/phy-nxp-s32g-serdes.c | 569 ++++++++++++++++++++
> >  3 files changed, 579 insertions(+)
> >  create mode 100644 drivers/phy/freescale/phy-nxp-s32g-serdes.c
> >
> [...]
> > diff --git a/drivers/phy/freescale/phy-nxp-s32g-serdes.c b/drivers/phy/freescale/phy-nxp-s32g-serdes.c
> > new file mode 100644
> > index 000000000000..8336c868c8dc
> > --- /dev/null
> > +++ b/drivers/phy/freescale/phy-nxp-s32g-serdes.c
> > @@ -0,0 +1,569 @@
> [...]
> > +static int s32g_serdes_get_ctrl_resources(struct platform_device *pdev, struct s32g_serdes *serdes)
> > +{
> [...]
> > +     ctrl->rst = devm_reset_control_get(dev, "serdes");
>
> Please use devm_reset_control_get_exclusive() directly.

Okay

>
> [...]
> > +static int s32g_serdes_get_pcie_resources(struct platform_device *pdev, struct s32g_serdes *serdes)
> > +{
> [...]
> > +     pcie->rst = devm_reset_control_get(dev, "pcie");
>
> Same here.
>
> regards
> Philipp

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
