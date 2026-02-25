Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3F84FEFD20C
	for <linux-phy@archiver.kernel.org>; Wed, 25 Feb 2026 08:16:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Q4kdbmx1U6rEp756sPS/ktQcBhRVxkSMkfPb68Dz1Tk=; b=RvQb/tCoxEY/eT
	IfXgzvuUNLRUYdCHktA4r4xobsTI6Vbj1AOHhZn10t9V7+OQr6U4oznsrioASEXjFFDVvTn3Ts8FD
	jWwMqKBFtsbOzYQMyQnr0TlDTbGzvu2YY5BtN3BtCWmfXdJrVQBM1Y+FluGzbC4yZyDsca4ambWtR
	8QmwxtZlf+J5z9+nfnhSKjnaUmgbnnulmDRTfAx48/T0Y8re9eXvl1p9PONdQheS/KDByiSZK1x/H
	D6FGUZC6Pzfy94f7a9ebpH3SGcZau45e3lcE23W3rC9kj51mK4wMNEjGmfJm38KNbUE+MA55aPW+w
	n4THQEuqEBDqt4iPM7Ew==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vvA4X-00000003Vos-2oUk;
	Wed, 25 Feb 2026 08:16:41 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vvA4T-00000003Via-2sXM
	for linux-phy@bombadil.infradead.org;
	Wed, 25 Feb 2026 08:16:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Type:Cc:To:Subject:Message-ID:
	Date:From:In-Reply-To:References:MIME-Version:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=x2LJlLYDb1+QOSf2a+RA+BcJzRTj83OmLJeFRnjwCps=; b=RH6ttf6YaqoYA0FXK/DHTZTzQr
	dY+mUVPYTlTkHkT6yqWrv6POS9zpnr9K/go8yxL2rUlOPSeVGZHmErf63e7hOR3C8Z/pvW5DU6U5N
	JNjON2sDOmfYTx+2aCeHUGnOVIEao+8NMFD2HYCZMTArm4DjFbwJFDC/jE8W9++aq9CN+QWnAGrtv
	CKhBP6wA0TdvvEp3Bc1mZ5j8S/JtK4AXlenTPrwYdSWJ/Av5ebY8JYmAK3lzeSUhaf1cWX7K7xIWP
	dzkfloFgmjBigzjgSrWzCV9J6OFGS6vHsx9z0lvFYlGw9Fx+sevNcxwUcs9zqI8o3dUuGYBamm/MQ
	oT9YgR/w==;
Received: from mail-ed1-x531.google.com ([2a00:1450:4864:20::531])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vvA44-00000008YBs-1sSw
	for linux-phy@lists.infradead.org;
	Wed, 25 Feb 2026 08:16:34 +0000
Received: by mail-ed1-x531.google.com with SMTP id 4fb4d7f45d1cf-65f812e0d93so1151688a12.2
        for <linux-phy@lists.infradead.org>; Wed, 25 Feb 2026 00:16:10 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1772007369; cv=none;
        d=google.com; s=arc-20240605;
        b=WI515hVBYf4MDnY1ByQAXvAVnEI4RT9asN8GzC7g3rRtMhaxwYx98cYaIwJXYfs2S4
         SAH6w7EVCSWzs6M+c3bPEmkeJWW2e+i2dNgfsBrZ4pyW3p9vMAx8RIlxL8d+KfCMpBGs
         dmAwOe9a4TtKjq3ToO0YEF0Bk9MphzTTGVSTYaFvOzGJwy8SgaSwrCrJFr5cnxPPJQn1
         5b/o5leDxPxlZA2jf0sswYQWeui836DoY0h7+futwgXOrnDEwj4VQ2/lrDSyKywFn3as
         mLTEkLjYDOG+/R9l1oftAjTQyFGdEhtIj9uMT3ePlhfP5ex3Hm92jhIn4sqzJ3O6QuR/
         tczQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=x2LJlLYDb1+QOSf2a+RA+BcJzRTj83OmLJeFRnjwCps=;
        fh=Lov3mNuYMM2ya/f1usoCq71KRFl4NamQUou8sX7rL5o=;
        b=YbJs5GVNbI+fxupq7kcgIeqyGxZBnz59spZGe7v2LCVONUdnHMTRGiFaAk2khh9lxS
         HP+vckexxT6K7bfJLMnEAj5sXKQJud7h8Y73ysx5Z0bvHDvslQZ/1tnMTR74j8zObH6E
         Mijrp7SCpPz9p6guZhGKnuwADSfO71OhGgLvhSHYTxY3zcDpRRg5RCDKV1niD4IC7oyx
         iirUuOB0jyTMpZUB3da0yHr+qMDxf5qS1BScKZ2PfB+cR2QV5T7zv93YmTfscN4aGkj/
         VVKScJhLiJmE2bhKWsSw2AbTLF0uwFX2RCD6N9Pcyr8jp0MvizkxQdDvOgaRQtafu9jB
         +3xw==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772007369; x=1772612169; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=x2LJlLYDb1+QOSf2a+RA+BcJzRTj83OmLJeFRnjwCps=;
        b=lw8+bbiRh+baV5e5K+CRhyGp6G3FriYe2jEJVVQ9zkLHpQt88idf+ZTtH0CsbmGfGq
         uW+h/ozKE0htXULCeOSRZi+CJvfEpfVcwk1/UJLjQEX6DYjFBXArA3HMsA0U+Ynjz/DD
         kbRksaxBfFLyStzX0SM3tIrGxxWdubOjc3qmaYl+lBsipHxl2KX5dW1mJcI0GD8rNi1+
         Sw1ijGeojd4fRcTZyL896PD3cOn35w0Zh2X8DvjjBXF3UpkSji/CymmYcwtgh6jaaNYb
         08eL//15qGvAZbUyK0XCeXyHqGU1UMr4tdkM47b7c0qm7tTZPIJq4fauUNTllLBb9ClY
         +9cQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772007369; x=1772612169;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=x2LJlLYDb1+QOSf2a+RA+BcJzRTj83OmLJeFRnjwCps=;
        b=k+4aj09REQ9CgZ+kQJlFT2vUNfiQ2ZMqlBExVN/O/X91Jrb8Wkquzpevcp4PZxBSke
         u8t53Egq78OUv5f9WxXrm/5zIcbeqn58ZCn93ud/0n3GKL19Nf9QHjnyZAeleSKJPKi2
         kKV5kGJQH4+V5FUzE3Gl3nDDWDJ1mjc0lbtp31vqVlJ8WT7o6ZbbgEQCXwz7tJVHPmHT
         f0YVlgoIHKUxCw5vohb+160jHFdpwQ5moE5le7tq3+1nn6BDBc7ks8LUbhWHoO6Rdccr
         QS5uM5qCALaVoeH9uCWlbrlMw96lXHjFA4IJLvgShurKZdDbyh4Cq+7oFpcXUGr1SFvg
         d8nA==
X-Forwarded-Encrypted: i=1; AJvYcCXyPjx3uEO4eYDzydprsUyrEr6mzWhjlnncj8qaYl2cMbii4LPORPV3Q8n4H+LR1/8d6RY/ZkZG6EQ=@lists.infradead.org
X-Gm-Message-State: AOJu0Yz401zuBh62tnOkOoYG0OyT6ICWgFHOG/i1sbqsTNbGLFdbxjjB
	Moshjca8EqWijE2XbtMYmvE8S9c9HFfkYKnouIXwuzzvHXoZO8q/GhSNHo0piwBfIEh0e7R76a8
	ngKHxsPCIf43a2vdchDToZSCygMsiihE=
X-Gm-Gg: ATEYQzzXjMgTe14jkHp5AwelybOJRF407h81EpOqYU5FpHfVmMWOg0pqZM67tOlFw9p
	BaxgpvyrqwnoBhTYvujRoCaS/E8+LWZEDbOh9BJl8rJEdj6BI0PeNqEbI24P0EjB6cbKzajH+PS
	3yeCFM1tVKVlD1vrqoE7HDXqhJ+F/t++dTNVWn14gElaT2eX3XLj89X1r+U5kP6eF/28MemCd1r
	4hi1hBdowYy/tOvVAyBYuMDIJKeBoBGgIyNPq0lryRqMRM2K8E+ROBErLj8LRl5C5Dn5WhaXh67
	NJt+5w==
X-Received: by 2002:a05:6402:23d0:b0:65f:8b6e:e1e0 with SMTP id
 4fb4d7f45d1cf-65f8b6ee3eamr689444a12.14.1772007368034; Wed, 25 Feb 2026
 00:16:08 -0800 (PST)
MIME-Version: 1.0
References: <cover.1771863641.git.l.scorcia@gmail.com> <2fbf179c03c61f527e2583f9df4f97f6aaf3297a.1771863641.git.l.scorcia@gmail.com>
 <bc064717108de5ea1a8c98937bb03fd00794682c.camel@mediatek.com>
In-Reply-To: <bc064717108de5ea1a8c98937bb03fd00794682c.camel@mediatek.com>
From: Luca Leonardo Scorcia <l.scorcia@gmail.com>
Date: Wed, 25 Feb 2026 09:15:54 +0100
X-Gm-Features: AaiRm52dJLE1LivX43DCdk6HfEogq21vfzP2R-PH1LBTeVTcW8EPNiYL5Cy5zOU
Message-ID: <CAORyz2Ki5aPNbcY5-_mRwFgwT46VN_pRV2iP7z7x3snzrbKz=g@mail.gmail.com>
Subject: Re: [PATCH v3 5/6] drm/mediatek: dsi: Add compatible for mt8167-dsi
To: =?UTF-8?B?Q0sgSHUgKOiDoeS/iuWFiSk=?= <ck.hu@mediatek.com>
Cc: "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>, "robh@kernel.org" <robh@kernel.org>, 
	=?UTF-8?B?Q2h1bmZlbmcgWXVuICjkupHmmKXls7Ap?= <Chunfeng.Yun@mediatek.com>, 
	"tzimmermann@suse.de" <tzimmermann@suse.de>, "simona@ffwll.ch" <simona@ffwll.ch>, 
	"mripard@kernel.org" <mripard@kernel.org>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, 
	"maarten.lankhorst@linux.intel.com" <maarten.lankhorst@linux.intel.com>, 
	"dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>, 
	"chunkuang.hu@kernel.org" <chunkuang.hu@kernel.org>, "vkoul@kernel.org" <vkoul@kernel.org>, 
	"krzk+dt@kernel.org" <krzk+dt@kernel.org>, 
	"linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>, 
	"p.zabel@pengutronix.de" <p.zabel@pengutronix.de>, "conor+dt@kernel.org" <conor+dt@kernel.org>, 
	"airlied@gmail.com" <airlied@gmail.com>, 
	"linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>, 
	"matthias.bgg@gmail.com" <matthias.bgg@gmail.com>, 
	"neil.armstrong@linaro.org" <neil.armstrong@linaro.org>, 
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260225_081620_931471_11911176 
X-CRM114-Status: GOOD (  19.09  )
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

> > The mt8167 DSI controller is fully compatible with the one found in
> > mt2701. Device tree documentation is already present upstream.
>
> If mt8167 DSI is fully compatible with mt2701 DSI, I think the binding document and device tree should be modified.
> In device tree,
>
>     compatible = "mediatek,mt8167-dsi", "mediatek,mt2701-dsi";
>
> And this patch is not necessary.

Hi, if I understand your review correctly that's what v2 [1] of this
patch did, but the change was rejected during review.

As far as I can see there is no win-win solution here. This tricky
situation derives from the fact that in last year's submissions the
change was only partially merged - the bindings went upstream while
the driver did not, and now we have to work around this. In v3 I tried
to address the issue by actually implementing what the binding
document says.
I'll be happy to resubmit v4 but I need to know what's the consensus here.

Thanks!

[1] https://patchwork.kernel.org/project/linux-mediatek/patch/ff920a7cc94f2b0c03d4bb55142030fded30d07c.1771258407.git.l.scorcia@gmail.com/

> >
> > Signed-off-by: Luca Leonardo Scorcia <l.scorcia@gmail.com>
> > ---
> >  drivers/gpu/drm/mediatek/mtk_dsi.c | 1 +
> >  1 file changed, 1 insertion(+)
> >
> > diff --git a/drivers/gpu/drm/mediatek/mtk_dsi.c b/drivers/gpu/drm/mediatek/mtk_dsi.c
> > index af4871de9e4c..ad10e86b161d 100644
> > --- a/drivers/gpu/drm/mediatek/mtk_dsi.c
> > +++ b/drivers/gpu/drm/mediatek/mtk_dsi.c
> > @@ -1301,6 +1301,7 @@ static const struct mtk_dsi_driver_data mt8188_dsi_driver_data = {
> >
> >  static const struct of_device_id mtk_dsi_of_match[] = {
> >         { .compatible = "mediatek,mt2701-dsi", .data = &mt2701_dsi_driver_data },
> > +       { .compatible = "mediatek,mt8167-dsi", .data = &mt2701_dsi_driver_data },
> >         { .compatible = "mediatek,mt8173-dsi", .data = &mt8173_dsi_driver_data },
> >         { .compatible = "mediatek,mt8183-dsi", .data = &mt8183_dsi_driver_data },
> >         { .compatible = "mediatek,mt8186-dsi", .data = &mt8186_dsi_driver_data },
> > --
> > 2.43.0
> >
> >
-- 
Luca Leonardo Scorcia
l.scorcia@gmail.com

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
