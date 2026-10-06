Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 795C2CA5FED
	for <linux-phy@archiver.kernel.org>; Tue,  6 Oct 2026 11:07:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=E1LGAFhrvwdd9iNfDkiI9+WRFHfLxBvgqPQqq6tA0Ss=; b=Tgc7qeUX+j4GIa
	DFxS6lEejM+8meVi4kzqxOBcY0+1VL8YlSnQid19IY2zZdqIarwpovQzKd/SyEsBKj/WE2/rBUhHi
	xVPXnGoofxDxakm/Af0o7FPTCZVJ6qhEkDLO4wlV9IrJewnJCMM4wHYNUEtuT7H5JWrXMq4HVa8PD
	OsVhQCMjJ1MXw2W7+N0KSbDVcNcx3wBNM4a2c80EZ2lnRfPfiBtGz38w7Ca/t2S6JIL0f3Hc3879B
	qa7RS/ragwRgulh+rxWwmHbzeIYyxvGrgMFypI795FFcgBtDCSuQKP/WjeqaJtRjTOeZy4gnVjP0k
	LQiwyWhywJTrpwE9Jb6A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xE31D-00000000b56-0jVN;
	Tue, 06 Oct 2026 11:07:35 +0000
Received: from mail-qv1-xf33.google.com ([2607:f8b0:4864:20::f33])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xE313-00000000axr-3FFS
	for linux-phy@lists.infradead.org;
	Tue, 06 Oct 2026 11:07:27 +0000
Received: by mail-qv1-xf33.google.com with SMTP id 6a1803df08f44-9178aabd30dso7991576d6.1
        for <linux-phy@lists.infradead.org>; Tue, 06 Oct 2026 04:07:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1791284844; cv=none;
        d=google.com; s=arc-20260327;
        b=gMexuCrZJnQpYxvv/KZTwaG1jLz+NWTissUtD7UH/hSJj9Uu0ptElEtCl+KnhTJNE4
         cXMr5+OF2qQz4hFvZts3UJjGBAV1RgsEAlVXfQzOdAHKM/hQSlDBxbQ2STv5fn+c+W/w
         PvX3ompeRG8ph4+gXFu6ADn8CQwmb6YQIYbMGhpRbnWQgNIUmMCAJogJo7oAQufEFSix
         gw/Z7sHfvcgHb2FmeHpHDtDhQ58OTkGoSo4mj5pw7R6n4rgj8UMfIC0dc5xv3XtB1yJ1
         GoNrCnACv6Iu8sKkqiu18PyUm6U1XP6iVXpebizLuddNQMpwgNOQ6DQThG+VSgYJasNE
         y4ZA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=st0WdGm0HQhoVPJqkSZGig8FXS+yxZLP3K54PTCRXrQ=;
        fh=c464o/toDyJR9grPm8KKRMVQUj45qTgtNvjT3xwuHVM=;
        b=DSiYI2VeYihnQSPWx4OXzwUef+Mu7RletBJa62YGa/WQKI1O/edOMlnN6nW3rONwl8
         EtnVf3xSRgU7Wsi0hQ8eMh5vIcObe8AtikmfVFiBhDC9HZVl76rPJAQH+R5XYgVXGF49
         sbuoXmmurAMiBAYY88R1LVX0jvBV/U68wLdR0Y9yK1AOx/scvoT6YmcDwEBGd+zKNzze
         xQCU3ScYAa/YnpFeyGImxYu6+YmET5we/q6qxzmb9hQ+zrNRFlmJsBRKUY3sk/53/QqR
         lkEqhcLmT/LNHq/eYHl5h6x3Po+olMZZHj0rxlBXHReopj5xT8+hBLx3I1fokt8EPlUC
         Zrsg==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1791284844; x=1791889644; darn=lists.infradead.org;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=st0WdGm0HQhoVPJqkSZGig8FXS+yxZLP3K54PTCRXrQ=;
        b=VuxZKT5UtEBb9Oj0WJNAYbwqJ3C9T/Lm7xnw8NO2duka9jQwNMVLSTjzFEF9Y1F/yG
         AzflmsjOX2dgO37+/tMaKQGuSIQqod9QuG0tNCdQUYtILttAeikBrxO7w8qol4ApexOF
         ks+BZ77HcW9S4+DAHufex7giUX/+cAGBmgSQInRln90CwhiRxwBowofVgsaP4gMw0FsJ
         +uB1Vq6pgEYepxqNiScbSzavKCJagnTVK4Ha2E4xnQ8lP0CQu+H3mvLwNq1WW741qGEN
         jBjV0++EKqoaqaxM0f37kFCIQcWipfGXKG+hIdniD4MnGIWtTqRkc2m9Ux6U+B378g0H
         gtyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1791284844; x=1791889644;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=st0WdGm0HQhoVPJqkSZGig8FXS+yxZLP3K54PTCRXrQ=;
        b=cUvXpc8qoCSNr34yFDIcD96jELXlkCgaCT8Wr49i2LTuDMmtslIiVseoA3w8DaIoKJ
         5SdkbTHZjLNzMoQ6L2wlMPjIMdT3/LkUqC5F13zI3LR21Aa1IXunpvJnK/+E+asb0oBP
         dw5eMquXKzb4a/9A5mxRnauMab0+lPGciceea/3c0FW8cyFv3A2j+JahE3l3wQnwILWx
         iMzc4pPIaMEkiANgY4+NTDwAYSN3if2hxOTR0EulUvyZMbEzdBfyavujpiS4VMFEjkrz
         joOPcJjRWMBfifQx4DJmLveN0lJQX39Ad6Qw0RG929+h9lyWPRojXaaXSEBDWA1V45QW
         xjFw==
X-Forwarded-Encrypted: i=1; AKwUvBxaCXUttWXGOfyslpcSIYVNgYx0bNa5QPWOPznrrHXLaQwdAhZuDrysDY3RKo8xyFZLxDEnSTjsVBg=@lists.infradead.org
X-Gm-Message-State: AFuF++lqWT3AQ6aL7lzOfXHlaj7b8ROx0LpQTAZ3KNtUShoX/D73luEV
	+xwUa4EICP/voPPxDlnQv9AffuiSSIrKFQHGdnnX1a0bp3Km30C3VSDJRrA6CJnTqPLi7ZJEqWk
	DX+7/UCxrI9KkjThBAG5cTIjzD89Cu+300t1M
X-Gm-Gg: AYBFou3Xamy1FOqr4xp5/NiO6PKo/1y0pwxKZkfiqMpPCYCkoQs4OVj3U+7P09rXfxr
	dp04pGAPVCUMVixVWCbB0fViDWtVqh/g8hhjAM4f63SlHOe2sObchIe3f4gedeK5tivnHDbUuFJ
	y1P8AEQiTMTdaPeYkUad5hxUD/TIrbNfI97dyp/eA92Uzo5y22QfnKhpVaCPBnSTuKmtFupKsau
	Fk+mIfa0P8LzSP6nAN/Ic4XCUn+fcl7GbcWtY+kcIDoFIYw6AAwn6SoCaJPvzd/jo2DXdBK6vVU
	AXixroPvLTXBxS/acVP2dN55yrCIhpM8klGzCHUzh/VNa0hhwkPxkZxRNTUIqyRjJng3+tJ9opY
	VZSeUk/xi
X-Received: by 2002:a05:6214:310a:b0:919:5a24:d77c with SMTP id
 6a1803df08f44-9198b7bec34mr20040386d6.31.1791284844396; Tue, 06 Oct 2026
 04:07:24 -0700 (PDT)
MIME-Version: 1.0
References: <20261006102937.10972-1-ansuelsmth@gmail.com> <asTRQ6d0-NYOeHqX@parshuram>
 <CA+_ehUw8fQHGef_L7YPQEf-wwuzP9km=G64Ty3+AkvM=fkNJ4Q@mail.gmail.com> <asTVqsqOLb29LY08@parshuram>
In-Reply-To: <asTVqsqOLb29LY08@parshuram>
From: "Christian Marangi (Ansuel)" <ansuelsmth@gmail.com>
Date: Tue, 6 Oct 2026 13:07:10 +0200
X-Gm-Features: AclHuK__1dmQcUVRwrNQOlxQllKfZWHAwvmEnEZJ6X7sEUc-dLa0jeCfKreo69E
Message-ID: <CA+_ehUxra53C2N8a0t73nLpS4DkaNSzE3STfhU7j3ZoQ9becyg@mail.gmail.com>
Subject: Re: [PATCH v14 0/3] airoha: an7581: USB support
To: Vinod Koul <vkoul@kernel.org>
Cc: Neil Armstrong <neil.armstrong@linaro.org>, Manivannan Sadhasivam <mani@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Lorenzo Bianconi <lorenzo@kernel.org>, linux-arm-kernel@lists.infradead.org, 
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261006_040725_836979_6C08A0B1 
X-CRM114-Status: GOOD (  24.71  )
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

Il giorno mar 6 ott 2026 alle ore 13:04 Vinod Koul <vkoul@kernel.org>
ha scritto:
>
> On 06-10-26, 12:47, Christian Marangi (Ansuel) wrote:
> > Il giorno mar 6 ott 2026 alle ore 12:45 Vinod Koul <vkoul@kernel.org>
> > ha scritto:
> > >
> > > On 06-10-26, 12:29, Christian Marangi wrote:
> > > > This is a major rework of the old v2 series.
> > > >
> > > > The SoC always support USB 2.0 but for USB 3.0 it needs additional
> > > > configuration for the Serdes port. Such port can be either configured
> > > > for USB usage or for PCIe lines or HSGMII and these are configured
> > > > in the SCU space.
> > > >
> > > > The previous implementation of a dedicated SSR driver was too
> > > > complex and fragile for the simple task of configuring a register
> > > > hence it was dropped and the handling is entirely in the PHY driver.
> > > >
> > > > Everything was reducted to the dt-bindings to describe the Serdes line.
> > > >
> > > > Also the property for the PHY are renamed to a more suitable name and
> > > > everything is now mandatory to simplify the implementation.
> > > > (the PHY are always present and active on the SoC)
> > >
> > > I get build failure:
> > >
> > > drivers/phy/airoha/phy-an7581-usb.c:7:10: fatal error: dt-bindings/soc/airoha,scu-ssr.h: No such file or directory
> > >     7 | #include <dt-bindings/soc/airoha,scu-ssr.h>
> > >       |          ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> > >
> >
> > This header is present in linux-next
> >
> > https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/tree/include/dt-bindings/soc/airoha,scu-ssr.h
> > https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit/include/dt-bindings/soc/airoha,scu-ssr.h?id=11952173d8a180ac05641775f80bd6946327478f
> >
> > Introduced by a clk series.
>
> Okay so we have a cross tree dependency. I would like my tree to be
> buildable and not depend on next.
>
> I can
> a) get a signed tag for this from clk tree with the required patch,
> merge and then apply this series
> b) postpone to rc1
>
> Either works for me
>

Maybe "a" is better for other phy driver? The pcie move patch is blocking
other airoha drivers currently.

What is the procedure? In theory just the dt patch is needed, nothing else.

Thanks a lot for helping in this.

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
