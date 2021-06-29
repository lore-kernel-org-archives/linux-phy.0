Return-Path: <SRS0=FOTy=LY=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-9.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2E05DC11F67
	for <linux-phy@archiver.kernel.org>; Wed, 30 Jun 2021 03:30:29 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id E2C0461D04
	for <linux-phy@archiver.kernel.org>; Wed, 30 Jun 2021 03:30:28 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org E2C0461D04
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=linaro.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KPskAEtOBamh+Phccrk6brNo0fNU0gDWjcK8QRG1zDU=; b=oQB8s5VDnyNe/M
	PWLG22rRG+PaZTzgTIO9b61WklOm9i8LqgrOkHgh16ixxBrKBMdb6HglblG/9UWShfZJDkrmOor6q
	JYNDylq4QD/S+0RU4LHxjprhdQIkaISCcAc2ipDZ9x0i2kKCm1XjPMB1o1tLkLnRVEK7OadNaMgHI
	OTDUrhF3oe45WEp3CtlOFH3Nc7bFQvb9IrrV9kxRR+N0VaxRdIV2al6zBnFCfL1jiQOuX2b6WpM4I
	/ww5p0vzJHDUB1LYfoGRjjFzwpUiTEUZwLFfJnCyuwbbihExDt0swFBIBlKkxRfyLlAzRPHcFi+H7
	0YeAmKhDl9+xVl5OmLiQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lyQvk-00Cgcf-6w; Wed, 30 Jun 2021 03:30:28 +0000
Received: from mail-vs1-xe2e.google.com ([2607:f8b0:4864:20::e2e])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lyFMj-00BPh4-Vm
 for linux-phy@lists.infradead.org; Tue, 29 Jun 2021 15:09:35 +0000
Received: by mail-vs1-xe2e.google.com with SMTP id e26so10933165vsh.7
 for <linux-phy@lists.infradead.org>; Tue, 29 Jun 2021 08:09:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Ei8DhtlygzR0YzhvSAOeJxbaayqBzli32veTEMkT6ts=;
 b=KgCSN8MP8fJ6RDcn54L6DX3FgWWGlkmkFcMOPl4oYjR+d58BcJXY+kdqECuBlpC2q/
 Zc9QzTM1DWkzKtufY4WNCpGcAk64qpkwDRDcSfo9xZUr1kY9tINWtT/fq8jSrFqi9DN2
 zOZQDMuYG9BN2JbnQkr0pw3IKy8XsYEBMqOptpxnNb4ajTfOWiuQe9SXHmUXJ28Dbpg8
 XLg54I0B0EkIlkUJAcEeHvS8TIRh7JEWrlfZYDW4dbWJuS923h+HF3c4OEZb2VJ2xw+g
 krVEM/e0zj4PMxRLeHZPi814CtN/d0ZpQW931V6gCvWNUOSMCWPDJMahFGL6G2woinRi
 5ApA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Ei8DhtlygzR0YzhvSAOeJxbaayqBzli32veTEMkT6ts=;
 b=sL1w1RaABS2203qCpzxY4cdFSv7h45nyNi1iC65+q2Z3ZeKmSc/4UCKSJGPu/1iM4n
 x+U4kypfWY5dPm2mIjo+HxcQLfTikY4NVSTgBLZ0o5wBfTHj5JzzGesHsDgQuyVNUxy5
 HX5n5AHuzFuUQwNWXm0ifEA5LzOigBnh6LO0XzGg5K1tTTF1AW8KuDGCa+aJpDFFwaPG
 sbq+/tcely6V1jDIuJ5AaPHyUNXjXVa9f1Z5iumWzb5X3mYNRVk46w4KBx11F1/5XFM2
 wWNhrGx84T5kuu7ipUV6EtOfQ75eJPKkGLFZv8+W/PAOSf2VZWayaoEO9QdIcQycNEex
 bA9A==
X-Gm-Message-State: AOAM531mmtPJ4y633pIX1hG2w/2b9hOTpgrTPTEWPwfQlYCfpQku+1GC
 OOVQMTyM/bKyU/gpZcJptb23Ap83fuMIcJGyqVO2PA==
X-Google-Smtp-Source: ABdhPJwL/Tz4unVTR5YW3TPwtQhdejHIVarPlrmHY5dQZ9xC87opBGYtDHlgJBwMv9bg3bGpYPV+Vy5yzTNslaeT0ZM=
X-Received: by 2002:a05:6102:3a70:: with SMTP id
 bf16mr26199022vsb.48.1624979372186; 
 Tue, 29 Jun 2021 08:09:32 -0700 (PDT)
MIME-Version: 1.0
References: <20210603182242.25733-1-rashmi.a@intel.com>
In-Reply-To: <20210603182242.25733-1-rashmi.a@intel.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Tue, 29 Jun 2021 17:08:55 +0200
Message-ID: <CAPDyKFpr=jjcjK=c7-cifYdGBw7ywmLsuJWw=bE8ZYqGuiUSfA@mail.gmail.com>
Subject: =?UTF-8?B?UmU6IFvigJxQQVRDSOKAnSAwLzJdIFtLTUJdIG1tYyBjbG9jay1mcmVxdWVuY3kgcHJvcA==?=
 =?UTF-8?B?ZXJ0eSB1cGRhdGUgYW5k?=
To: rashmi.a@intel.com
Cc: linux-drivers-review-request@eclists.intel.com, 
 Michal Simek <michal.simek@xilinx.com>, linux-mmc <linux-mmc@vger.kernel.org>, 
 Linux ARM <linux-arm-kernel@lists.infradead.org>, 
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Kishon <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>, 
 linux-phy@lists.infradead.org, Mark Gross <mgross@linux.intel.com>, 
 kris.pan@linux.intel.com, furong.zhou@intel.com, 
 mallikarjunappa.sangannavar@intel.com, 
 Adrian Hunter <adrian.hunter@intel.com>, mahesh.r.vaidya@intel.com, 
 nandhini.srikandan@intel.com, 
 "Raja Subramanian, Lakshmi Bai" <lakshmi.bai.raja.subramanian@intel.com>
X-Bad-Reply: References and In-Reply-To but no 'Re:' in Subject.
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210629_080934_051274_1C98EBE7 
X-CRM114-Status: GOOD (  15.31  )
X-Mailman-Approved-At: Tue, 29 Jun 2021 20:30:26 -0700
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
> Patch1: If clock-frequency property is set and it is not the same as the
>         current clock rate of clk_xin(base clock frequency), set clk_xin
>         to use the provided clock rate.
>
> Patch2: Since the EMMC clock in KMB was changed from 200Mhz to 175Mhz in
>         FIP,there were some warnings introduced, as the frequency values
>         being checked was still wrt 200Mhz in code. Hence, the frequency
>         checks are now updated based on the current 175Mhz EMMC clock
>         changed in FIP.
>
> Review comments from Adrian Hunter have been incorporated.
> Above 2  patches are tested with Keem Bay evaluation module board.
>
> Please help to review this patch set.
>
>
> Rashmi A (2):
>   mmc: sdhci-of-arasan: Use clock-frequency property to update clk_xin
>   phy: intel: Fix for warnings due to EMMC clock 175Mhz change in FIP
>
>  drivers/mmc/host/sdhci-of-arasan.c         | 14 ++++++++++++--
>  drivers/phy/intel/phy-intel-keembay-emmc.c |  3 ++-
>  2 files changed, 14 insertions(+), 3 deletions(-)
>
> --
> 2.17.1
>

Applied for fixes, thanks!

Kind regards
Uffe

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
