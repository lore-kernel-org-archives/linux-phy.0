Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 86691C433F5
	for <linux-phy@archiver.kernel.org>; Thu, 29 Sep 2022 10:06:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/OHWDU1QSUW6xoW1yZrJ/ueWuCoKT4rgVcQ5aC8vY2k=; b=UD20VF4UQjgW1r
	ufQtOJUl7weFImo2J6oQDez44fcXlObR/SocuZLUFp1lAEpOkw1ExgPCNFscFduweqDqCxYGB4dq4
	TINYC6AKhktWKtZj9kjq6CcFFDgjQp1HYp5iGtwX2RpXXxhdyNESsyt0am3qrZc1T36+4J1cujJuv
	eEjsRErso72sTb9lfVBoWndfYfL5wF8egUHykpOY9QiBSI9xPyNZXO7eSsBDJVIDaX3obA+YgrsuG
	DovveHz0GLpCDH46K+TSqMIKYVQtouUECIpZxXOcvsphSa6oBgYNc9imExK7dHg0dEyrljVAHGsh0
	3CQgWSyHS3zYbZuh19Jw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1odqQx-002JSB-U1; Thu, 29 Sep 2022 10:06:23 +0000
Received: from mail-yb1-xb2b.google.com ([2607:f8b0:4864:20::b2b])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1odqQu-002JPZ-S3
	for linux-phy@lists.infradead.org; Thu, 29 Sep 2022 10:06:23 +0000
Received: by mail-yb1-xb2b.google.com with SMTP id 4so945034ybe.2
        for <linux-phy@lists.infradead.org>; Thu, 29 Sep 2022 03:06:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date;
        bh=uOjBpR0wXiSksc7oPhYdRZkX5LJfmohwHgmy4jHV2Lg=;
        b=CJhopwTxUXuqPCMfoXuohVoLDGZD/ruIQ2af9zkFkVJpkd6L/jRDbVEunbFnM5X5ba
         lYD6vqAsWrcQzj3yFg8Cw+uklZT800iRHLuhfAHZZlp/8WbAt6lnxiKoAH0V0BnrFkkx
         sHbXA+709094kZgziOXSOFGSuFzidkvLLEdKH3jCXehOANgNYUXlmIbXIEmTFtpJjJ5P
         DA7j3oU/H8O6bEAo09Qg5AEfgvIY+veTNdUumqtFnWdzdc1QM/+GjwfxomXVtjpnhGYl
         UK2xbB+OV9dU9/BfGjlLnR28xfEwdwBN2VrWGC7ze1rJWv3lSuE6/ZEfpN5vAbhs3TxA
         PxhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date;
        bh=uOjBpR0wXiSksc7oPhYdRZkX5LJfmohwHgmy4jHV2Lg=;
        b=YOrMFAF4Ajw/TJjcFujpQeie//cscBRW8WA4mdiS9PJHgz3/Vv9abDpxNrZSDO1Scg
         05Sot6nuqcx8KFThPJAjQQTg1uCMsoZadrj2yQPgO/LjpPbswCSXo/cGmuhtR+hTJzr8
         XLZgipW0xdR8q+FbA/TPTW0Ts991gOLdWORsqHzYVrQ48UgaZpLabrZSuuczM4+r6Bld
         izEvLCgGp+80eaBxF0FiHMNeH0swdzSs8c2IEENCNBLaD7tdRtlaWtdItsWvABGoyF4p
         TlsH1SKvOJccn29pG/ZFC5e6ZKpPNZ1zEHrjr/jdJyLeeJ/9YMgMyM6vs3cXJL+Ojg8Q
         t88w==
X-Gm-Message-State: ACrzQf21uIMj6qkrhydy+igYbIHDGGAIGChU4KE8pPPf8rqsABgb7Zzh
	VPiUtemcT9sAU9/hPcJy9NtsdeF2YjVl8OlvhK/Atw==
X-Google-Smtp-Source: AMsMyM5/wkIMQDgN4Sbr7kMfAeh/RpwFo1XVLCMUcgsodOXvBIkFBo3D7t8mIJBefNEt6R9oOjJaMuCQXrJhSBMwHh0=
X-Received: by 2002:a05:6902:102f:b0:6b4:7cba:b77a with SMTP id
 x15-20020a056902102f00b006b47cbab77amr2423354ybt.516.1664445978945; Thu, 29
 Sep 2022 03:06:18 -0700 (PDT)
MIME-Version: 1.0
References: <20220928231014.455201-1-dmitry.baryshkov@linaro.org> <YzVpA9zN9Fc45l7r@hovoldconsulting.com>
In-Reply-To: <YzVpA9zN9Fc45l7r@hovoldconsulting.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Thu, 29 Sep 2022 13:06:08 +0300
Message-ID: <CAA8EJpq6C2WRJrtRYzFunG+7F8+7dGu8mTr2oASo8=cqB3ASWA@mail.gmail.com>
Subject: Re: [PATCH 00/18] phy: qcom-qmp: rework register layout tables
To: Johan Hovold <johan@kernel.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konrad.dybcio@somainline.org>, Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@ti.com>, Philipp Zabel <p.zabel@pengutronix.de>, linux-arm-msm@vger.kernel.org, 
	linux-phy@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220929_030621_000244_6B982D67 
X-CRM114-Status: GOOD (  21.67  )
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

On Thu, 29 Sept 2022 at 12:44, Johan Hovold <johan@kernel.org> wrote:
>
> On Thu, Sep 29, 2022 at 02:09:56AM +0300, Dmitry Baryshkov wrote:
> > This is an alternative implementation of the QMP PHY driver cleanup
> > proposed by Johan at [1]. This patchset changes register layout tables
> > to use symbolic names instead of bare values and attempts to tie the reg
> > layout with the version of the QMP PHY.
>
> I wouldn't call this an alternative, but rather a separate change on
> top. Using separate per-IP version "register-layout" structs is in
> principle a good idea. It does require a bit of extra work though, as
> it's not always clear what version of the IP each platform is using (e.g.
> IPQ).
>
> I've respun the clean up series that triggered Dimitry to send this
> series:
>
>         https://lore.kernel.org/lkml/20220929092916.23068-1-johan+linaro@kernel.org/
>
> and dropped the two patches merging the IPQ and SDM845 structs.
>
> The register layout work can be rebased on top (trivially).
>
> I'm not so fond of the whole splitting of header files into atoms as you
> lose the overview. But I guess that's a separate discussion.

It was done so to ease merging new platforms, where we have tons of
similar headers. It is much easier to compare downstream header to the
single-version qmp header rather than finding a spot in a monolithic
header which fits the one you have. And also as a result it is also
much easier to spot the actual difference between e.g. v2 and v3.

> > [1] https://lore.kernel.org/linux-phy/20220928152822.30687-1-johan+linaro@kernel.org
>
> > Dmitry Baryshkov (12):
> >   phy: qcom-qmp-pcie: rework regs layout arrays
> >   phy: qcom-qmp-pcie: rename regs layout arrays
> >   phy: qcom-qmp-ufs: split UFS-specific v2 PCS registers to a separate
> >     header
> >   phy: qcom-qmp-ufs: rework regs layout arrays
> >   phy: qcom-qmp-ufs: rename regs layout arrays
> >   phy: qcom-qmp-usb: remove QPHY_PCS_LFPS_RXTERM_IRQ_STATUS reg
> >   phy: qcom-qmp-usb: remove QPHY_PCS_MISC_TYPEC_CTRL reg
> >   phy: qcom-qmp-usb: rework regs layout arrays
> >   phy: qcom-qmp-pcie-msm8996: rework regs layout arrays
> >   phy: qcom-qmp-combo: remove QPHY_PCS_LFPS_RXTERM_IRQ_STATUS reg
> >   phy: qcom-qmp-usb: rework regs layout arrays
> >   phy: qcom-qmp: move type-specific headers to particular driver
> >
> > Johan Hovold (6):
> >   phy: qcom-qmp-pcie: drop unused common-block registers
> >   phy: qcom-qmp-pcie: clean up power-down handling
> >   phy: qcom-qmp-pcie-msm8996: clean up power-down handling
> >   phy: qcom-qmp-combo: clean up power-down handling
> >   phy: qcom-qmp-ufs: clean up power-down handling
> >   phy: qcom-qmp-usb: clean up power-down handling
>
> Johan



-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
