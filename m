Return-Path: <SRS0=Uwmf=LZ=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-15.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,USER_AGENT_SANE_2 autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 43B04C11F6A
	for <linux-phy@archiver.kernel.org>; Thu,  1 Jul 2021 13:26:39 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 1133861418
	for <linux-phy@archiver.kernel.org>; Thu,  1 Jul 2021 13:26:39 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 1133861418
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lqMOnfZRqDrw1ci876hJUS46Qbi3QMGdegwf8WUWERM=; b=CH6f6Si50rjmWB
	P5jshGGdOAh7mlBTJ/4FZyLXJXn7KSpAcRj0a0l8nem0OxTMe7TUejeKaWf1ikM1IcXQGzTUyg4WG
	g2Gx+z73ik6yOil1m9eRMWkilNJOB5ZnRWdg4BZNQlPdhBxl98Wy7Vwn92WMsTsBMWUuHlrzM52rD
	/q1QoN52/Oty+sietzlKecN4ESbhnQC3V5hwNlkiR60BbnF8VvTfGcW831hmeF926m3LYTSoalG7H
	iVgzABUYuerERehsS/rv7XX0b1Ru69DNG1/zihE3e6gZrpCSWDg7wBkuImMA9d3S2/dHlGSzMTVA1
	Objo9Eb8XwBRdcCCL6Ig==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lywiE-00HS34-Fh; Thu, 01 Jul 2021 13:26:38 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lywiC-00HS1j-5C
 for linux-phy@lists.infradead.org; Thu, 01 Jul 2021 13:26:37 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id B692261417;
 Thu,  1 Jul 2021 13:26:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1625145995;
 bh=KE08IZ7N2zGxao9rEaDNwWtGrUCeXJ7OIw+RZIM0zO0=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=GoA8R/OrX31Xp7phjzlnKyn5dy9p8dTsHF2AL0FSbKKDcVIdrPJKWfNv24hD1ZNjd
 pz055uJeRm05yW2OKnly9+QykHCAkpTcYhSnlUliWCVrRryWgzx4jILXXZ2RvJCWYA
 XPvVgUM0wlpJN7YJV0kMX3gnKSSckNAcNHibVu12NSDu5HKUOXSOyfmvFSaLF5rwsy
 l5/eU8zAHlS77ouQ8CUTTRNQl370GKHC4Le1OX5mTJc1LdEhN2bUk+u75Np4JClWYZ
 upnerC74FpqaLdnXGH3GnaKf9k5zPpuWv8Ipy+/7ystk6in6Ah0lmeMfk48EYNLa4o
 ck8m4gHpSZS4Q==
Date: Thu, 1 Jul 2021 15:26:29 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: Lukas Bulwahn <lukas.bulwahn@gmail.com>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linuxarm@huawei.com,
 mauro.chehab@huawei.com, linux-phy@lists.infradead.org,
 linux-staging@lists.linux.dev, linux-usb@vger.kernel.org, Ralf Ramsauer
 <ralf.ramsauer@oth-regensburg.de>, kernel-janitors@vger.kernel.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH] MAINTAINERS: repair reference in USB IP DRIVER FOR
 HISILICON KIRIN 970
Message-ID: <20210701152629.66a47fe2@coco.lan>
In-Reply-To: <20210701093903.28733-1-lukas.bulwahn@gmail.com>
References: <20210701093903.28733-1-lukas.bulwahn@gmail.com>
X-Mailer: Claws Mail 3.17.8 (GTK+ 2.24.33; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210701_062636_301548_DF908082 
X-CRM114-Status: GOOD (  15.74  )
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

Em Thu,  1 Jul 2021 11:39:03 +0200
Lukas Bulwahn <lukas.bulwahn@gmail.com> escreveu:

> Commit 8de6b7edd493 ("phy: phy-hi3670-usb3: move driver from staging into
> phy") moves phy-hi3670-usb3.c from ./drivers/staging/hikey9xx/ to
> ./drivers/phy/hisilicon/, but the new file entry in MAINTAINERS refers to
> ./drivers/phy/hisilicon/phy-kirin970-usb3.c.
> 
> Hence, ./scripts/get_maintainer.pl --self-test=patterns complains:
> 
>   warning: no file matches  F:  drivers/phy/hisilicon/phy-kirin970-usb3.c
> 
> Repair the file entry by referring to the right location.
> 
> Fixes: 8de6b7edd493 ("phy: phy-hi3670-usb3: move driver from staging into phy")
> Signed-off-by: Lukas Bulwahn <lukas.bulwahn@gmail.com>
> ---
> applies cleanly on next-20210701
> 
> Mauro, please ack.

Acked-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>

> Greg, please pick this non-urgent minor fix on top of commit 8de6b7edd493
> 
>  MAINTAINERS | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/MAINTAINERS b/MAINTAINERS
> index 66d047dc6880..a4e0c20b416a 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -19153,7 +19153,7 @@ M:	Mauro Carvalho Chehab <mchehab@kernel.org>
>  L:	linux-usb@vger.kernel.org
>  S:	Maintained
>  F:	Documentation/devicetree/bindings/phy/hisilicon,hi3670-usb3.yaml
> -F:	drivers/phy/hisilicon/phy-kirin970-usb3.c
> +F:	drivers/phy/hisilicon/phy-hi3670-usb3.c
>  
>  USB ISP116X DRIVER
>  M:	Olav Kongas <ok@artecdesign.ee>



Thanks,
Mauro

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
