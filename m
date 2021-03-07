Return-Path: <SRS0=tcZo=IF=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D1EBAC433DB
	for <linux-phy@archiver.kernel.org>; Sun,  7 Mar 2021 15:55:25 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 1417B650E6
	for <linux-phy@archiver.kernel.org>; Sun,  7 Mar 2021 15:55:24 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 1417B650E6
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=crapouillou.net
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Cc:To
	:Subject:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=X2ndBt6s+ehisZaxc12ZIhSHdlBhrwrV/k/Wivw9wYE=; b=VQ9R87sU0vJXulMijVOJXIu/x
	2wwV6JDYvxdgTsffj/9bTJzbH/NjfbVLMEKNtkLvJXtPc4UdRFY19cdB3SUft3YrTvZoCqwIImOrj
	faz5HAvwpbnpaDJDxnT4XVCgIfEBblU25nU5sFQRZgf6FdHuy319rqPJKTSZdMbuy4cvONFZRm3jV
	QDC6Sc5rUufBl2phfx9hZ4+QWb6QTHotkIjKfFEUEKWyRix2PjkANyJDhusCijbZhAFcmKL8RQgox
	LEsvjD20QiXVa3ok32B29j49pdT+q71PJVh1kri0KsBmmsv/0bEBjOiiBgpb8TRLVBgdhoHJuOPK/
	A8msHkp5g==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lIvkW-00AosI-RQ; Sun, 07 Mar 2021 15:55:22 +0000
Received: from aposti.net ([89.234.176.197])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lIvkT-00AopA-7N
 for linux-phy@lists.infradead.org; Sun, 07 Mar 2021 15:55:19 +0000
Date: Sun, 07 Mar 2021 15:54:57 +0000
From: Paul Cercueil <paul@crapouillou.net>
Subject: Re: [PATCH -next] phy: ingenic: Fix a typo in ingenic_usb_phy_probe()
To: 'Wei Yongjun <weiyongjun1@huawei.com>
Cc: Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 =?UTF-8?b?5ZGo55Cw5p2w?= <zhouyanjie@wanyeetech.com>,
 =?UTF-8?b?5ryG6bmP5oyv?= <aric.pzqi@ingenic.com>,
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org,
 kernel-janitors@vger.kernel.org, Hulk Robot <hulkci@huawei.com>
Message-Id: <L7WLPQ.OX36H4LIU83T3@crapouillou.net>
In-Reply-To: <20210305034933.3240914-1-weiyongjun1@huawei.com>
References: <20210305034933.3240914-1-weiyongjun1@huawei.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210307_155517_392071_DEC0582A 
X-CRM114-Status: GOOD (  12.24  )
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
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org



Le ven. 5 mars 2021 =E0 3:49, 'Wei Yongjun <weiyongjun1@huawei.com> a =

=E9crit :
> From: Wei Yongjun <weiyongjun1@huawei.com>
> =

> Fix the return value check typo which testing the wrong variable
> in ingenic_usb_phy_probe().
> =

> Fixes: 31de313dfdcf ("PHY: Ingenic: Add USB PHY driver using generic =

> PHY framework.")
> Reported-by: Hulk Robot <hulkci@huawei.com>
> Signed-off-by: Wei Yongjun <weiyongjun1@huawei.com>

Acked-by: Paul Cercueil <paul@crapouillou.net>

Cheers,
-Paul

> ---
>  drivers/phy/ingenic/phy-ingenic-usb.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> =

> diff --git a/drivers/phy/ingenic/phy-ingenic-usb.c =

> b/drivers/phy/ingenic/phy-ingenic-usb.c
> index ea127b177f46..28c28d816484 100644
> --- a/drivers/phy/ingenic/phy-ingenic-usb.c
> +++ b/drivers/phy/ingenic/phy-ingenic-usb.c
> @@ -352,8 +352,8 @@ static int ingenic_usb_phy_probe(struct =

> platform_device *pdev)
>  	}
> =

>  	priv->phy =3D devm_phy_create(dev, NULL, &ingenic_usb_phy_ops);
> -	if (IS_ERR(priv))
> -		return PTR_ERR(priv);
> +	if (IS_ERR(priv->phy))
> +		return PTR_ERR(priv->phy);
> =

>  	phy_set_drvdata(priv->phy, priv);
> =

> =




-- =

linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
