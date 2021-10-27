Return-Path: <SRS0=D930=PP=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4DDE4C433F5
	for <linux-phy@archiver.kernel.org>; Wed, 27 Oct 2021 13:33:59 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 2248C60F92
	for <linux-phy@archiver.kernel.org>; Wed, 27 Oct 2021 13:33:59 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 2248C60F92
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=linaro.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ruyU6bVbiPni/jBOgNVDpJTb1J05Ix2t8Qlx8m+bjYY=; b=WnLjduFuD2yR36
	MULj2InfRI+rMULJ5M6vppoLuz7zHWHdPqRBJ22QhRCcAPzY470GirLmDhR42g9IsoZWnnH/tjCre
	+ErW9wYg5sdqliH+K5imci97WTziuY3vC8mCWkiebzOYuAAbfgSqmGNeJ6aZFxJmF5VSV7yvD+xIs
	z0/OIBFJ9t1pVObQaBg57sVjxa9QLzFJGzB0eu0azoZE5c0YRyTzSTs8alU8pF4eo6VKaD9r3aVh2
	nykLxjWo945yxZV5zmN0Tmp9hsAGzVrYYrYkvEOQ10qo5PZ4kRtVVwTxhsNDk9QynbhBCa6Ir87RQ
	5Hj5zo3y+uQOBL3tb+yA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mfj42-004zZK-GB; Wed, 27 Oct 2021 13:33:58 +0000
Received: from mail-lj1-x234.google.com ([2a00:1450:4864:20::234])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mfj3z-004zXv-U9
 for linux-phy@lists.infradead.org; Wed, 27 Oct 2021 13:33:57 +0000
Received: by mail-lj1-x234.google.com with SMTP id k13so4676600ljj.12
 for <linux-phy@lists.infradead.org>; Wed, 27 Oct 2021 06:33:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=SF3TuLDwjCSTuZKZbIAlHelYHC/Il4xa/tsPH6DiGEk=;
 b=StFhjxBA3IYeh9xk7RxqepC2BTyp6miu58c8IkRnymFpoS65OAATRBs7/kyVTuxoGw
 gu/PqDKU65tuETTCV7BjhfDevG+pkJFpVNaRwfjzs3g1oQR3HXznUf7LGudjcpuOjea1
 p4cSk9qhmET+0GBnNbq2t0+UR83tD//Q8k5H5MppGhwBLdLyMNYxz2J8v0pye1w6UBXf
 uNLYDPTBI6AtB92nh+JyboY5Bd4wjk0OCPWJr5vsktR5/ugKhipEXjTdyO6nPO29IET/
 0UFJ4Gsj/mrHYibEAq580ICfQxLt1PwnbkxeVasgzNRRvxcdLnweWv8kODSF7FTvGMAs
 jQZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=SF3TuLDwjCSTuZKZbIAlHelYHC/Il4xa/tsPH6DiGEk=;
 b=cxmbnoLh0QX+XA/6iQewgLuNde7YpRz3Yk0S2AOx4wOlM9Ebe0Xkc4FjADIFJUbiqN
 kP+9DaYZXXGEOuXjNr7s/zFkB/YSbBPbPxvB9nuMFVQYjZGRcHOcnXLAbbD0p/PAV5+2
 BvXXEqBbfZ2Ni85JWlsYpJMI7lltqPFJOUH/kHzrJRTnnx+Vg4denk8Dw4L3LsiVomYF
 +TnGKoK8Z2dsF+wnhsedIJ2y/bar13cme065HpLwKegPApABn0k0jlDIY9Oc6hClj4Qo
 /8CX7rLrILRrbAaT2yQMez8ACcf4n77C0gkPkgQoojZq0SAOFzo0YSOMs2F7IehvAmVV
 pA1g==
X-Gm-Message-State: AOAM531oI1pABcXZxSa9sGaRnhPXVT1MaqmdUUQFnbvKO/gG7IMhsjOa
 9bksbuW6mEeaN5btA+/fzoaLVEIssJY8MU+sY5PlZQ==
X-Google-Smtp-Source: ABdhPJw4Hz0qU7pk4QAD1ecXWuVM1EJf2LFlyX+ruH5szvN19acgbbYV2uu01lA95rFJu0mT5Vax7MFwL0q2NXqqy2Q=
X-Received: by 2002:a2e:85c4:: with SMTP id h4mr33373312ljj.4.1635341633803;
 Wed, 27 Oct 2021 06:33:53 -0700 (PDT)
MIME-Version: 1.0
References: <20211027115516.4475-1-rashmi.a@intel.com>
In-Reply-To: <20211027115516.4475-1-rashmi.a@intel.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Wed, 27 Oct 2021 15:33:17 +0200
Message-ID: <CAPDyKFq=_Me6CwrsM+ESP+mw0Yb-anmKzqOX+Y8R0_n5U8OtuQ@mail.gmail.com>
Subject: Re: [RESEND PATCH v2 0/4] Add support of eMMC PHY for Intel Thunder
To: rashmi.a@intel.com
Cc: michal.simek@xilinx.com, linux-mmc@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, robh+dt@kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, kishon@ti.com, 
 vkoul@kernel.org, andriy.shevchenko@linux.intel.com, 
 linux-phy@lists.infradead.org, mgross@linux.intel.com, 
 kris.pan@linux.intel.com, furong.zhou@intel.com, 
 mallikarjunappa.sangannavar@intel.com, adrian.hunter@intel.com, 
 mahesh.r.vaidya@intel.com, nandhini.srikandan@intel.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211027_063356_020529_158FF940 
X-CRM114-Status: GOOD (  17.02  )
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

On Wed, 27 Oct 2021 at 13:55, <rashmi.a@intel.com> wrote:
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
> Reseding V2 patchset to get the dt-binding patches reviewed.

I have already queued patch1 and patch2, so there is no need to resend
them anymore.

Kind regards
Uffe

>
> Changes from v1:
> Add arasan sdhci dt bindings
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
>  drivers/phy/intel/phy-intel-thunderbay-emmc.c | 511 ++++++++++++++++++
>  7 files changed, 628 insertions(+), 1 deletion(-)
>  create mode 100644 Documentation/devicetree/bindings/phy/intel,phy-thunderbay-emmc.yaml
>  create mode 100644 drivers/phy/intel/phy-intel-thunderbay-emmc.c
>
> --
> 2.17.1
>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
