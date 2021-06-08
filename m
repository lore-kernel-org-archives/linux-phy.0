Return-Path: <SRS0=5CPW=LC=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 02829C47082
	for <linux-phy@archiver.kernel.org>; Tue,  8 Jun 2021 12:54:16 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id BCA0561246
	for <linux-phy@archiver.kernel.org>; Tue,  8 Jun 2021 12:54:15 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org BCA0561246
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=linaro.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ca5uRdrScMiIglH/M2iHyTDa4NM6ev7b7NvuKWEShxA=; b=pcLWZlEEoXL7H2
	k9zMLKG7Dml0Jz1KHJUXq/es3f27SrMF4hjlo9FYyctiJHgGIB+r7Wb4J0RoaI4T2bPQTSrzSvPaL
	UA2JrFP25ZyV5LxY1KTMaO5zniRlWA2glhW8KMUqJMJfAZUE4KYxYVRaSAC0jlhb4P9YXDSgmVp90
	2dFb5QdjyYP2C0wqHoQ07T19pcSpP9X7g/9Mzeiz+dnmeSqrMeTZ/2FThTCVas8xynlRE4gjyuPM6
	7+HR4BDmqr7QBaTFxeFBdSS4lmXdv29dz9KSzJSSijJxwMTeq+zxv7HZcP7X/Ngt9W7CG5GFDoYiJ
	/GTAOayWPN6ZkYUsf3YQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lqbFH-008VBA-6h; Tue, 08 Jun 2021 12:54:15 +0000
Received: from mail-vs1-f51.google.com ([209.85.217.51])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lqbFC-008V9B-EH
 for linux-phy@lists.infradead.org; Tue, 08 Jun 2021 12:54:11 +0000
Received: by mail-vs1-f51.google.com with SMTP id z206so10793021vsz.6
 for <linux-phy@lists.infradead.org>; Tue, 08 Jun 2021 05:54:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=YDlE8XM+AqrC8aactj8iOE9/9/UtQhGPP6ubsL853mE=;
 b=ynpc10QMwm1EgFSorofuApQoVcK7XFUqTGiG/nOznXG5OK3Vs7OJvq5di819+XZX7P
 KE41fyCrCkIn1O+QuYypb2iUsvHiElO1lrhDqRlgEjkqcpZrVQlSkxZIG/wthzCj3fOj
 htkCrvsm8PvJfnwOADdWmCPFNfL3nWvUUQBney1QxyJIaw3CT+VJ5TdluB2SKBfpXdpO
 QZlyXchlhzlevdx7DuKhficlhG+d06CvwIttQhfJf2dk1TEaZD6wNjjEFr6fsSFongIf
 sWu1mQq8ztnYQrqVoRNTv10PzYGdlu2ZCTk8ODBhRLMeYY+90Xu0zDLoKov/EJlc1iMt
 NIpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=YDlE8XM+AqrC8aactj8iOE9/9/UtQhGPP6ubsL853mE=;
 b=Ib37QavrqkCk0DPJ/l4+LW6IX0Tw8eZ3MaOpgHfFfbnfiFn4NGdF3fNHMKcVzOXCrm
 x+4591nUFafFsY//KOsuJRRwalOVLcnxe0ZjDiCkjJzcgTVjP7P0QWgLpjoKeVUw8ebI
 mdIF4ztgKqjX27iBuWtJp3G+ed7AgEDbzMffqHuR0KxBBtnEobb4sZfAIb+4p8uiopkg
 BoOzjwc/IdtIzzSkZiaZNSnJun9Qr8ziyrzU5ks8HOQsr591i0K7ilRAZYKfB7gWwCd4
 i+rbFnIOi+tcXO9xidySvyIxu0SxmTjX7QiEoxhjnAG0bn9WQoPy/o03MTebfWEePb0R
 GHkg==
X-Gm-Message-State: AOAM531PM99Kbs8d92d5FvmpKaZHmhddZCO760EAVgpTXqyb1FGujByY
 A9XbTts9zYnko4HMg7Hx35RtHya3CHtKAXWTnOMDBQ==
X-Google-Smtp-Source: ABdhPJzXlM5//BYqNHry4rGqxcGe5fwgnxOs8PtRpsSla+nUrxQuMCRfrAnGVPJFCfoi/NqcFSD0YHHKehrlKhq2/SM=
X-Received: by 2002:a05:6102:3023:: with SMTP id
 v3mr11576713vsa.19.1623156789091; 
 Tue, 08 Jun 2021 05:53:09 -0700 (PDT)
MIME-Version: 1.0
References: <20210603182242.25733-1-rashmi.a@intel.com>
 <20210603182242.25733-3-rashmi.a@intel.com>
In-Reply-To: <20210603182242.25733-3-rashmi.a@intel.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Tue, 8 Jun 2021 14:52:33 +0200
Message-ID: <CAPDyKFr-vuP_bdG-iFjJyS3ZeVDiVq+3aVERHjBo-8BHf38m9g@mail.gmail.com>
Subject: =?UTF-8?Q?Re=3A_=5B=E2=80=9CPATCH=E2=80=9D_2=2F2=5D_phy=3A_intel=3A_Fix_for_warnings_d?=
 =?UTF-8?Q?ue_to_EMMC_clock_175Mhz_change_in_FIP?=
To: rashmi.a@intel.com, Kishon <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>
Cc: Michal Simek <michal.simek@xilinx.com>,
 linux-mmc <linux-mmc@vger.kernel.org>, 
 Linux ARM <linux-arm-kernel@lists.infradead.org>, 
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 linux-phy@lists.infradead.org, Adrian Hunter <adrian.hunter@intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210608_055410_512206_0D42F0C9 
X-CRM114-Status: GOOD (  16.88  )
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

On Thu, 3 Jun 2021 at 20:22, <rashmi.a@intel.com> wrote:
>
> From: Rashmi A <rashmi.a@intel.com>
>
> Since the EMMC clock was changed from 200Mhz to 175Mhz in FIP,
> there were some warnings introduced, as the frequency values
> being checked was still wrt 200Mhz in code. Hence, the frequency
> checks are now updated based on the current 175Mhz EMMC clock changed
> in FIP.
>
> Spamming kernel log msg:
> "phy phy-20290000.mmc_phy.2: Unsupported rate: 43750000"
>
> Signed-off-by: Rashmi A <rashmi.a@intel.com>
> Reviewed-by: Adrian Hunter <adrian.hunter@intel.com>

I guess $subject patch should be queued together with patch1/2 (via
the mmc tree?), no?

Vinod, Kishion, if that's okay I need an ack from you to pick it up.

Kind regards
Uffe

> ---
>  drivers/phy/intel/phy-intel-keembay-emmc.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/phy/intel/phy-intel-keembay-emmc.c b/drivers/phy/intel/phy-intel-keembay-emmc.c
> index eb7c635ed89a..0eb11ac7c2e2 100644
> --- a/drivers/phy/intel/phy-intel-keembay-emmc.c
> +++ b/drivers/phy/intel/phy-intel-keembay-emmc.c
> @@ -95,7 +95,8 @@ static int keembay_emmc_phy_power(struct phy *phy, bool on_off)
>         else
>                 freqsel = 0x0;
>
> -       if (mhz < 50 || mhz > 200)
> +       /* Check for EMMC clock rate*/
> +       if (mhz > 175)
>                 dev_warn(&phy->dev, "Unsupported rate: %d MHz\n", mhz);
>
>         /*
> --
> 2.17.1
>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
