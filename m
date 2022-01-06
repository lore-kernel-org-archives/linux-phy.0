Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BEE5BC433EF
	for <linux-phy@archiver.kernel.org>; Thu,  6 Jan 2022 12:16:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VqabFheU1/8JusByUQlBuU8pztpwAnAk0TXCYQd6mfw=; b=qZapyrhCcaHThH
	ePQ3uDeDEJ8tPzA8d6kn+hqYtn4W0lL6dLoKXOrG9qrz2T7I3DEWjegjlR34SXfVQgs6lDtvmosjt
	8Rl3Gtqu/BtVi6ySSVrKV1/LSGabbb8jD9lwNLZp4vyaLVV8yoVKjaNbMsaTbWgX/IuU+KOCtjpSF
	OnjDyRmc2tFxgSnjoytq+/X/aD+SzjVmHj2/h/eD4aEJbT8lpZbMQz2KYBQo0c531rU16mHXrGqLv
	RMMHvI9Iha6Uq1iTAvN3l/OTTiLUaugN29ds9Vv89zorB5AYhMCBK+knPS3O5BpEElScNJcZUhii/
	N18t349aoXrw6F1oIwpQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n5Rgu-00HaVa-4D; Thu, 06 Jan 2022 12:16:24 +0000
Received: from mail-pl1-x631.google.com ([2607:f8b0:4864:20::631])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n5Rgh-00HaS7-TE; Thu, 06 Jan 2022 12:16:13 +0000
Received: by mail-pl1-x631.google.com with SMTP id l8so150879plt.6;
 Thu, 06 Jan 2022 04:16:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=ezhOL9IQmLkdhn7bT2hYUZscONiXzj3Zulc4AqaqV74=;
 b=VWuYcofoSfJWAV4N8jaIG1D93UCOzzLF4pnjMZckQdHuwfgaz+x204qWdN4QF4YoRD
 jjXdv6nQCa0cdQvhgmsH706TQG5JQqC2UipfolVHtapLb6VJ6mjx3mvAMAvJ9Ooi5nB6
 CRsCNuUmRVJtehrSnmYuebPoAmJSgHGuYmCNi47cAYBd27WmmUPIrHfBja4EQVUVAYvE
 xHEMWdoc093Hihp5ksbATTC/pSlSafiFyvDCnDXh1YrfV/2OCzLMdP60JaQ0C2aNaVkj
 tim9w33+IK49XDuWb+ftGMo9xZMAsOF+xNjlHqYS+VRwvF0me3YYKY1Vt79vdnY/4VeR
 RXUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=ezhOL9IQmLkdhn7bT2hYUZscONiXzj3Zulc4AqaqV74=;
 b=sSSLH8gEHbQkMX7sw985l8vSj9djKguTztIGNXObcxzO41tdF1P8OQz6KLfqphF4uf
 tLmM/q/pez3IFhdRrZ+n0+rulRFd6lkS/3838bQI1Rl9iBU2pqu+UuPsdSxz2pysz4R2
 hI1iQtdrPxwDdBgmwv5mIwO1Bqli6+QYn5+xzEQyHdBfA1zhqXPU9hjKMOsaeTIJ5Q8K
 QZaXsQF/fijwD4BLKhhIWZQURMMvIp9BCMupUgHR4tsMuCA39xaaI1WYk6lIcJc+2DK9
 5dp0l4LwjgDDH8qcAOg4odlSe+tORxX/cvrw/no7klSJ3qxMAwHa52tydLRkJZhxPNZU
 GsRQ==
X-Gm-Message-State: AOAM533L8wu0GNAGEbSNNHBOebAOjhELYcSrYD/vgqZacL6xMR93T57Y
 imyllDDoPvJrB/BdSF211Pn7lB0h3ENE1LoAyW4=
X-Google-Smtp-Source: ABdhPJzV2qd7Kyc2ZIOHuzuuD3AFWMO67x7jgDMNj2Z9+hCizMBZuXOekzZfGXgf9RDEl+VUGs7ztA==
X-Received: by 2002:a17:90b:4f4a:: with SMTP id
 pj10mr9731709pjb.112.1641471369839; 
 Thu, 06 Jan 2022 04:16:09 -0800 (PST)
Received: from 8345e2a12d0c ([159.226.95.43])
 by smtp.gmail.com with ESMTPSA id b5sm2401828pfm.155.2022.01.06.04.16.07
 (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 06 Jan 2022 04:16:09 -0800 (PST)
Date: Thu, 6 Jan 2022 12:16:05 +0000
From: Miaoqian Lin <linmq006@gmail.com>
To: Chun-Kuang Hu <chunkuang.hu@kernel.org>
Cc: Philipp Zabel <p.zabel@pengutronix.de>,
 Chunfeng Yun <chunfeng.yun@mediatek.com>,
 Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 linux-phy@lists.infradead.org, linux-kernel <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH] phy: mediatek: Fix missing check in mtk_mipi_tx_probe
Message-ID: <20220106121524.GA25165@8345e2a12d0c>
References: <20211224082103.7658-1-linmq006@gmail.com>
 <CAAOTY_-7-BrnkPk_5V5y20F6fX3X8Vm0tcYAA=1DNCnxjvNF8A@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAAOTY_-7-BrnkPk_5V5y20F6fX3X8Vm0tcYAA=1DNCnxjvNF8A@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220106_041611_973822_CC11BDB5 
X-CRM114-Status: GOOD (  16.60  )
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

Hi, Chun-Kuang:

On Fri, Dec 31, 2021 at 12:31:33AM +0800, Chun-Kuang Hu wrote:
> > diff --git a/drivers/phy/mediatek/phy-mtk-mipi-dsi.c b/drivers/phy/mediatek/phy-mtk-mipi-dsi.c
> > index 28ad9403c441..67b005d5b9e3 100644
> > --- a/drivers/phy/mediatek/phy-mtk-mipi-dsi.c
> > +++ b/drivers/phy/mediatek/phy-mtk-mipi-dsi.c
> > @@ -146,6 +146,8 @@ static int mtk_mipi_tx_probe(struct platform_device *pdev)
> >                 return -ENOMEM;
> >
> >         mipi_tx->driver_data = of_device_get_match_data(dev);
> > +       if (!mipi_tx->driver_data)
> 
> I'm confused. mtk_mipi_tx_probe() is called because this device node's
> compatible match one in mtk_mipi_tx_match[]. So I think the return
> value of of_device_get_match_data(dev) would not be NULL. If this is
> true, this checking is redundant.
>
I think your are right, this checking is redundant. Thanks for your
reply.

Regards,
Miaoqian.

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
