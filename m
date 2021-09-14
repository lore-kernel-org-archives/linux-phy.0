Return-Path: <SRS0=TOd0=OE=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-9.1 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1763DC433F5
	for <linux-phy@archiver.kernel.org>; Tue, 14 Sep 2021 11:24:41 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id D32D3610FB
	for <linux-phy@archiver.kernel.org>; Tue, 14 Sep 2021 11:24:40 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org D32D3610FB
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=linaro.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0FF+bOVYs7nPZsaPupsrUnAAlypBUfOAymRCd0MOD9Y=; b=RxzV5zo6ngEUmw
	fcpvhxYtJ4JdizfHGBkAmP3p3dsjaGn0FxHUYSPlbcRLkAVsHocHu1O4MVFy5vPjG37vulVn3oVvV
	euUdKa4EATEZkmCceX+kUM+Y287h6yHkkSt8ml50GeQjFu3fjs2vKCrRgp+55WqGyIVNqluTMx1Lo
	1R/7pbGt2g4qKca5aJObeVc6ow5TuccRw5iVHgC9DRSouLkf1BjtDz1uqvxzM1IWn+d3OsmwnpxYl
	De9iiK6DSZs4p8RUPp4FPyVtzxbFOWcMy0khZEEoND8qp7oppJgtvC2m2xWwxp+CUEp6BoIhL/c4A
	T8lCUZVfANkElpfwW1Jw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mQ6YK-005OHV-Ao; Tue, 14 Sep 2021 11:24:40 +0000
Received: from mail-lj1-x236.google.com ([2a00:1450:4864:20::236])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mQ6Y6-005OCW-2G
 for linux-phy@lists.infradead.org; Tue, 14 Sep 2021 11:24:28 +0000
Received: by mail-lj1-x236.google.com with SMTP id q21so23149421ljj.6
 for <linux-phy@lists.infradead.org>; Tue, 14 Sep 2021 04:24:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=sQYFflwh2UscdO3zyTRqlybnH5iNH852O9o2kPEEpok=;
 b=yg3Jk74CEsgPN/LNHv15KV1CGB7SPRTuDArAUmTmr8G79zntKVNcBaAJj6IPozA8MZ
 rN1xuBvft0VS7+DHMGbP8hE9nXsJvOOrHWpWjDhbhtvjQtUvgqgaa78mSGrWX6s9OuCh
 wk7ETVZr2czjxf+M9dHc+8UC4kg8IYVlRmIyD1N/nMeGwN+x09s/ug8NYMT3ag6IALwM
 AlQtei/vR1GrXnb3/CflftanOjcM2d6YpQHdyHvDdOsp3C9oj9jSu3XC+K6GA3pavMxn
 rnNAQBbStbJv5sau5KYAHN51oJbzaSrVZ06CKs/CvfobyxAUJYf+8MPW3pmTQwWUK3X5
 R0xw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=sQYFflwh2UscdO3zyTRqlybnH5iNH852O9o2kPEEpok=;
 b=e17TvZjG2jZ8EC6XL599mWeIpzQlrG4fOylaZMkPd1aXJLl1j9nqSPo7+VQ2ksRCaX
 fsmrfSHAk6VPsNKoqnYTxup7RT86a8fP3307WKr+UGzjFEjbocHytxX4LtmsXvc/oBom
 oT4vvCr6q1Roztcu395Ji+253zgv3t0wVl0GNPDp9EvhG5IHKbK95WzmaYAyE2ykwNj7
 LLMRd28M1KNU0z+vcRHBkRvCsB2cvjp5ZX08I3r1W1ldfrBQkFjR1WyuKiJlJQ2pgXtg
 j+oxAP9E0PoexeNFYU1KD5+xn2w4FUCz66x1yr1p87tUP2uXIinmlThN3azixZBLTG9m
 2zvA==
X-Gm-Message-State: AOAM530qAPDpqKlf9WT22FMV0JO3caNgBtWsGxNhnbMQpJqQuWfpfANc
 kf1Kgla2A4hs6yPtS5jZl+rIL2iooqX/T9goQal3XA==
X-Google-Smtp-Source: ABdhPJxHkgRBr9/+9fH4dstW/KjkgkHVlu1Vx/B9P8GIGFA0lGklTTgO6ruxiP0tMTwe0McNkvfjGekJkulzdjWLUZ8=
X-Received: by 2002:a2e:8495:: with SMTP id b21mr15108198ljh.4.1631618664062; 
 Tue, 14 Sep 2021 04:24:24 -0700 (PDT)
MIME-Version: 1.0
References: <20210829182443.30802-1-rashmi.a@intel.com>
In-Reply-To: <20210829182443.30802-1-rashmi.a@intel.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Tue, 14 Sep 2021 13:23:47 +0200
Message-ID: <CAPDyKFq2VQ=khYnmfsQGPPcpRnxyATVSpwKSZ4MTbKn64rthVA@mail.gmail.com>
Subject: Re: [PATCH v2 0/4] Add support of eMMC PHY for Intel Thunder Bay
To: "A, Rashmi" <rashmi.a@intel.com>
Cc: Michal Simek <michal.simek@xilinx.com>,
 linux-mmc <linux-mmc@vger.kernel.org>, 
 Linux ARM <linux-arm-kernel@lists.infradead.org>, 
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Kishon <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>, 
 linux-phy@lists.infradead.org, Mark Gross <mgross@linux.intel.com>, 
 kris.pan@linux.intel.com, "Zhou, Furong" <furong.zhou@intel.com>, 
 "Sangannavar, Mallikarjunappa" <mallikarjunappa.sangannavar@intel.com>, 
 Adrian Hunter <adrian.hunter@intel.com>, "Vaidya,
 Mahesh R" <mahesh.r.vaidya@intel.com>, 
 "Srikandan, Nandhini" <nandhini.srikandan@intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210914_042426_139555_BEB5870B 
X-CRM114-Status: GOOD (  16.77  )
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

On Sun, 29 Aug 2021 at 20:24, <rashmi.a@intel.com> wrote:
>
> From: Rashmi A <rashmi.a@intel.com>
>
> This patch set enables the support for eMMC PHY on the Intel Thunder
> Bay SoC. eMMC PHY is based on arasan phy.
>
> Patch 1 Adds arasan sdhci support for eMMC in Intel Thunder Bay.
> Patch 2 Adds arasan sdhci dt bindings.
> Patch 3 Holds the device tree binding documentation for eMMC PHY
>         and listings of new files in MAINTAINERS file.
> Patch 4 Holds the eMMC PHY driver.
>
>
> Rashmi A (4):
>   mmc: sdhci-of-arasan: Add intel Thunder Bay SOC support to the arasan
>     eMMC driver
>   dt-bindings: mmc: Add bindings for Intel Thunder Bay SoC
>   dt-bindings: phy: intel: Add Thunder Bay eMMC PHY bindings
>   phy: intel: Add Thunder Bay eMMC PHY support
>
>  .../devicetree/bindings/mmc/arasan,sdhci.yaml |  25 +
>  .../phy/intel,phy-thunderbay-emmc.yaml        |  46 ++
>  MAINTAINERS                                   |   7 +
>  drivers/mmc/host/sdhci-of-arasan.c            |  29 +-
>  drivers/phy/intel/Kconfig                     |  10 +
>  drivers/phy/intel/Makefile                    |   1 +
>  drivers/phy/intel/phy-intel-thunderbay-emmc.c | 512 ++++++++++++++++++
>  7 files changed, 629 insertions(+), 1 deletion(-)
>  create mode 100644 Documentation/devicetree/bindings/phy/intel,phy-thunderbay-emmc.yaml
>  create mode 100644 drivers/phy/intel/phy-intel-thunderbay-emmc.c
>

Applied patch1 and patch2 for next, thus leaving the phy changes in
patch3 and patch 4 for Kishon/Vinod to pick up.

Thanks and kind regards
Uffe

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
