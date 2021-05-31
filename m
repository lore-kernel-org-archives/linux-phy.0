Return-Path: <SRS0=BSok=K2=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D2BCDC4708F
	for <linux-phy@archiver.kernel.org>; Mon, 31 May 2021 08:40:06 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 99C93610C9
	for <linux-phy@archiver.kernel.org>; Mon, 31 May 2021 08:40:06 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 99C93610C9
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=W7qUCVMX+qWR/Oyh1Dg51BfzAhRutotxn09WurzuiZY=; b=rUqffUoo+hkNDJ
	GRcIoC49yQpcfNL3NOuvPXBOCIwyT3Remc0/Kz/BnpAusZ1b9LGiDAbd18TEZ3rhuSn07loBLsGFc
	sbfhMsZeLHbKK33ITAHXSrUtu/wjf762IjGYMRM0dsm6nmoTpMDAdV+Y9py+HpbLME0/P+H11ANHJ
	DaDcZENLeDfpAzFedINhVDmNbhGLvEQRSkXprUDHQAhlVHTBor1FFXV5l8TaGQEn0d6LkJx7yE7aF
	cmj/56SsBxPauAS603/GymytR/Ocj6SRspVssDHC7o5+VJgaPREVtmqKI6dziuMWQh7uFstIsSJkR
	qiUX5lbtypsMMdF4L/nA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lndSw-00BV3m-37; Mon, 31 May 2021 08:40:06 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lndSt-00BV2a-HO
 for linux-phy@lists.infradead.org; Mon, 31 May 2021 08:40:04 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 30C1B6023E;
 Mon, 31 May 2021 08:40:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1622450403;
 bh=hIo9igXETrqt8JGupXund+T2mtkuw9aDgnbLO9HhyN0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=IMX+1p1XnD68tYgotvN1s1ACQ+Y/xvPR0Mo27Kdc6p0Ra+3bsuyiEihZzV0Qy/21O
 PBrNdp+BvYan4Tfq4071JGbwLuvxb42hGih5x62SVvzc28BkYC7QHpOqUZEvkNkdS+
 BY9Fa9OvmW5MGQqnwAwSeP1HUjj7XWddbQ4lMeLbYAEedgE4yPBwqludlILxELu4dN
 ZFu4FJ3uJ/Nwi/3BEYOau+jNT3GjlUfOr1Uk8Mc+pEC1FVE+y/RPmiBsk1K0IOxCi3
 0K28aJxa0bNRvZXNqaT5SPcAk44uECTcR29sbfPy5M1EM7tlFzBwuI9iKnkifjcqka
 i5O/v3PLi0g6A==
Date: Mon, 31 May 2021 14:09:59 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Yang Li <yang.lee@linux.alibaba.com>
Cc: kishon@ti.com, linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] phy: ti: Fix an error code in wiz_probe()
Message-ID: <YLSg3z3hYsT/QQ1n@vkoul-mobl.Dlink>
References: <1621939832-65535-1-git-send-email-yang.lee@linux.alibaba.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1621939832-65535-1-git-send-email-yang.lee@linux.alibaba.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210531_014003_624929_E3A26A48 
X-CRM114-Status: GOOD (  17.24  )
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

On 25-05-21, 18:50, Yang Li wrote:
> When the code execute this if statement, the value of ret is 0. 
> However, we can see from the dev_err() log that the value of 
> ret should be -EINVAL.
> 
> Clean up smatch warning:
> 
> drivers/phy/ti/phy-j721e-wiz.c:1216 wiz_probe() warn: missing error code
> 'ret'

Single line is fine for this

> 
> Reported-by: Abaci Robot <abaci@linux.alibaba.com>
> Fixes: 'commit c9f9eba06629 ("phy: ti: j721e-wiz: Manage
> typec-gpio-dir")'

Please dont split to two lines for fixes tag

> Signed-off-by: Yang Li <yang.lee@linux.alibaba.com>

I have fixed while applying so Applied, thanks

> ---
>  drivers/phy/ti/phy-j721e-wiz.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/phy/ti/phy-j721e-wiz.c b/drivers/phy/ti/phy-j721e-wiz.c
> index 9eb6d37..126f5b8 100644
> --- a/drivers/phy/ti/phy-j721e-wiz.c
> +++ b/drivers/phy/ti/phy-j721e-wiz.c
> @@ -1212,6 +1212,7 @@ static int wiz_probe(struct platform_device *pdev)
>  
>  		if (wiz->typec_dir_delay < WIZ_TYPEC_DIR_DEBOUNCE_MIN ||
>  		    wiz->typec_dir_delay > WIZ_TYPEC_DIR_DEBOUNCE_MAX) {
> +			ret = -EINVAL;
>  			dev_err(dev, "Invalid typec-dir-debounce property\n");
>  			goto err_addr_to_resource;
>  		}
> -- 
> 1.8.3.1

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
