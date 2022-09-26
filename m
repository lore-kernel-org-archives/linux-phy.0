Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0C71CC07E9D
	for <linux-phy@archiver.kernel.org>; Mon, 26 Sep 2022 05:35:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zaZsK5IOgrK8XAHO5mjVIOtn4Nd2QQPNh/mHLP1xjBg=; b=v64V8biyMnpLvx
	PkyF+NXlk1uP2hW9qhhRzKbkvzMOW8emPFR2gCQOB6a5sETPJ6TTLe6qJVxS3DqghydZzsZDUq0NF
	biwayS7JpJ7/TANmtupqbP95Tpqup2pIeYl5gPlWrh7WwzuszkQww8GDsMVXlCCnABxukDBU2qTxx
	q0Da2l6c7p9Dd1FnKP/iMBSt/IGDsdkWZHtmvIgRcQgIomUaF32/z6ynsZkuqSmz/tVfNXPvZssij
	yVv2637Wj9cJNHUr7m0xtRIa/hNWzBo+bFp8u48zDKAsJ12bW0GIfnxixfuESL7pId6bUUNcOCLSv
	rABxA0f1Q8Vh0ssmFeTg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ocgm0-0021SX-Vk; Mon, 26 Sep 2022 05:35:20 +0000
Received: from mail-ed1-x535.google.com ([2a00:1450:4864:20::535])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ocgly-0021RK-So
	for linux-phy@lists.infradead.org; Mon, 26 Sep 2022 05:35:20 +0000
Received: by mail-ed1-x535.google.com with SMTP id c30so6308299edn.2
        for <linux-phy@lists.infradead.org>; Sun, 25 Sep 2022 22:35:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date;
        bh=uQm/cyI6O2TECbE+cPd+sUKnp2FCGlHvQ4HWSuz+uSg=;
        b=bvj4BJCXhuoY+XVd7CpW0wyJbpTiRkIRiYp5uuTDkAbcaXZe8AzQT/VxPZLxL3Yorg
         xdtZuFe7/VqVVkB3XXhYGSa3RMXjHjZTOhD8G2nHvEN2zaQOYaHrsWWh0Jv3hyyoD3x2
         E0Wcv+6JZdSQryG4iCkzVhAd3XiX3pnqGTDQA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date;
        bh=uQm/cyI6O2TECbE+cPd+sUKnp2FCGlHvQ4HWSuz+uSg=;
        b=oZHPEYlwPRs9QTKjvkFE0lxIRTB9p0c2dg/UngkxrlM03rHUBqGKpn7QY/AdevivRW
         XI5ELBcxZW7CUe21+ORoCn3R7MXM16Dgo4ONeBomZXR2S+1zxyq8YdcylJgNOTC6s3OO
         INKwfoD1IqScst4G8aYiLw+7S/sw9zHD0EMIupaD6+kwtYaRZYTpFlWveTXFl/KA0ph7
         9RJAma7J0x13waVXoE481mP2/0yUsvXjYVVk2J5rk2VFnUm0S/KYdGIvqn5/Nl7yKHuM
         dk9l1UcmNhb76b78EpVHEUi3rUNjPwwXCHvZoGWx7NwC5PDVsM4wIWAWVixrj5WqGgUW
         cGGg==
X-Gm-Message-State: ACrzQf3tUyZwKSSP8mUMDjztpVH4d5y9LqjRecBkCwCVp8O04yt0zRNe
	9bXDrdBaWZcOerRKO2pjeacxymOVH5Z7+6h1qfK7aQ==
X-Google-Smtp-Source: AMsMyM5sOF/np8p+lz3ZmwY9NsZIytiFDwGMSg6JHrTesURDkV9WMexbAV6SKC66ej7VC+axAK4njLND0s0MeZqSPD4=
X-Received: by 2002:a05:6402:280f:b0:44e:ee5c:da6b with SMTP id
 h15-20020a056402280f00b0044eee5cda6bmr20607304ede.256.1664170517096; Sun, 25
 Sep 2022 22:35:17 -0700 (PDT)
MIME-Version: 1.0
References: <20220919-v1-0-4844816c9808@baylibre.com> <20220919-v1-2-4844816c9808@baylibre.com>
 <CAGXv+5GJrjxG0pEGqseEacz_KFCRhWJSiLoiwuwwUTaSeO0RBg@mail.gmail.com>
In-Reply-To: <CAGXv+5GJrjxG0pEGqseEacz_KFCRhWJSiLoiwuwwUTaSeO0RBg@mail.gmail.com>
From: Chen-Yu Tsai <wenst@chromium.org>
Date: Mon, 26 Sep 2022 13:35:05 +0800
Message-ID: <CAGXv+5Gw_fKHfhTEAOQi7R_GtD5OSiSTQ5wCvKjEckXBwjLLQA@mail.gmail.com>
Subject: Re: [PATCH v1 02/17] clk: mediatek: add VDOSYS1 clock
To: Guillaume Ranquet <granquet@baylibre.com>
Cc: Vinod Koul <vkoul@kernel.org>, Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh+dt@kernel.org>, 
	Philipp Zabel <p.zabel@pengutronix.de>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Daniel Vetter <daniel@ffwll.ch>, 
	Chunfeng Yun <chunfeng.yun@mediatek.com>, CK Hu <ck.hu@mediatek.com>, 
	Jitao shi <jitao.shi@mediatek.com>, Chun-Kuang Hu <chunkuang.hu@kernel.org>, 
	Michael Turquette <mturquette@baylibre.com>, Kishon Vijay Abraham I <kishon@ti.com>, 
	Matthias Brugger <matthias.bgg@gmail.com>, linux-mediatek@lists.infradead.org, 
	dri-devel@lists.freedesktop.org, Pablo Sun <pablo.sun@mediatek.com>, 
	linux-clk@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Mattijs Korpershoek <mkorpershoek@baylibre.com>, linux-arm-kernel@lists.infradead.org, 
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220925_223518_966445_3D6C9490 
X-CRM114-Status: GOOD (  12.49  )
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

On Mon, Sep 26, 2022 at 1:09 PM Chen-Yu Tsai <wenst@chromium.org> wrote:
>
> On Tue, Sep 20, 2022 at 12:59 AM Guillaume Ranquet
> <granquet@baylibre.com> wrote:
> >
> > From: Pablo Sun <pablo.sun@mediatek.com>
> >
> > Add the clock gate definition for the DPI1 hardware
> > in VDOSYS1.
> >
> > The parent clock "hdmi_txpll" is already defined in
> > `mt8195.dtsi`.
> >
> > Signed-off-by: Pablo Sun <pablo.sun@mediatek.com>
> > Signed-off-by: Guillaume Ranquet <granquet@baylibre.com>
>
> Reviewed-by: Chen-Yu Tsai <wenst@chromium.org>

I've queued patches 1 & 2 up here [1] and will send a pull request to
the clock maintainer later this week.

[1] https://git.kernel.org/pub/scm/linux/kernel/git/wens/linux.git/log/?h=clk-mtk-for-6.1

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
