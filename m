Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 11092C79F99
	for <linux-phy@archiver.kernel.org>; Mon,  7 Sep 2026 11:30:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UIfYa/Xx+4ZcZZcCtHblP/HdihmvwA5nyk/NWm7Vdm0=; b=FSMkKgM2QcRNhT
	Vp+JPbEFqxbs+PhMdjMXgmSW7oCIQI8qeUhWsJ4IyYeE3G/lYP7CkZueg54BA/LE3M0Y7WX/GKUGv
	9y1P7TiLaorlp0Myu0W+7cizcGYFy0u0zQsHBxBAUzj6s0IgjxGFc43SpITfyzBPbhn8aj7arvFR4
	32IIiz7ExWy36wB4Tvys35bOG3jei1pwgnYsMQNh4IdK6J7/jXsV82ouza13K2L/SamsUuEQgrMUI
	VFONjsKRNqWz4xTgRUmnjQqPI1lQxE1phJctH5SgnSIG90TsVEBXonYMr9xVD2YFBgO6H5J7WO06p
	A0JIA8HdSPWEvGbDm4Nw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3XYM-00000006f3s-2cCl;
	Mon, 07 Sep 2026 11:30:22 +0000
Received: from mail-pl1-x62b.google.com ([2607:f8b0:4864:20::62b])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3XYJ-00000006f2l-3GSL
	for linux-phy@lists.infradead.org;
	Mon, 07 Sep 2026 11:30:21 +0000
Received: by mail-pl1-x62b.google.com with SMTP id d9443c01a7336-2d6efd73032so37881635ad.0
        for <linux-phy@lists.infradead.org>; Mon, 07 Sep 2026 04:30:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1788780619; x=1789385419; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=FU4CEbQdu8+Brk6sDGMvGiHki1B0bPVbshQiknk3v7k=;
        b=kyhrq1Oxh0/BbDEPDo/pm6pL4KygI6wa9riDG9gjHT2SBg7TBTrBN7s58HS7f1KpW7
         Sx4vfAJYL4SeQjKLwxEuMWWkuPf5H6yaGFE/M+Mq9kr/Jh8p+5rXrtDOCOaU3K3sBMn8
         Nt0RVtlvBfLaFQkxfhQ9OrENPrhcyw5IWqfd0R20AGh3DN3s2rzrV9rhGDeXbFhEkTtb
         P772nvRDk8SyPwr7kiNULt8Qx1h5vw63hfPwkakVrjs+h7UEOhQb6zOIVoRTP0NSWTNR
         v7yYU03giD6nWQ8RcLNTX4My7bLRC9Nb9fuF6UU9vIUqpZbJfW27AZc+c6ZnPY9rmBAz
         KeKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788780619; x=1789385419;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=FU4CEbQdu8+Brk6sDGMvGiHki1B0bPVbshQiknk3v7k=;
        b=Me3UVkEXv/X5SvC8et9wAnwHLI3Z7+HGwS0UClsYsefCYu+eew7KiY+lWs3GEzXCHZ
         Yey9wBA/MHS64s9kwmmGQg+5YMR5K4yeR77Fgev2kLpKKTavNzeHPUd/uJI0Vq7sxXL4
         TBKUGxFL/tOJZz3mhdIdKTIfDJoHp6IfZVMcF/H02EmJY3iOHC9RTOdxqg/VmVBMGhcj
         vdTIChKBq0cF5t/GIX5jQPk/nBPEtLbkyKUmFxg3qkEGGdO+CV2GdKTZdtf/Y/Z5K8ub
         uP+xb46+tXV1JtXUA/zsX21PXkvyvK1SwzfKqCtDBtcJ9AFqN9+CzXFJmpP8l5n0p4I0
         lkYg==
X-Forwarded-Encrypted: i=1; AKwUvBxAKs7yH9jvDcCmg5+dUxLfeFN9cgeAGj4XqxNGymqJXoZoc6YkGtkcf5RCcoOPRVBlo3uBGUFV7ac=@lists.infradead.org
X-Gm-Message-State: AFuF++kNv77KqUBs6LpzbRebqo1OF7tOAyRpWFn+IVUzJrcsdsi5NUi/
	CaM7QLKu0NQ7mgMuNjn5UmYpQB0EBgRvbd/0FKAd1qR+0OoUHiGgbeO2
X-Gm-Gg: AYBFou092Zs7U2O9aGa37kUfBVcnzEhw3z2kTV8bX1IFzr10huxt9z/bffnWJTSDldI
	FmqYmY9bxfZs3Quiw+Onj6sVTAhVRlEWLTRskWqa11fLbBIZFlMI9pIz8pYKr/W/uUqpTrOdPDS
	Z5kNsW3Wmr7G1K13HtL3CzR0EGA6w2k+K3JT2r8ihY9IYTFNCyHsoxnxfS1y1q5ijxGSqrl1l1M
	b8SE8KITFVaRnIcKdECoK9kTfv40icWwD+Mfb7JWRzl/iOo2aHouSrhOmDoWAXehLy6PwjZe6lC
	iGo6CNhrHFguhUWrgIpl+mBaYjY2jYpVIkchEj8Y/X59RFWQyC/3IUf4K7kT/MCqajuXEaKRwsY
	AcEjyu3wXgBLpHmSFGzqcpweC/wBlqHNgwy6zDY/JSaJ1fgd3W831Z6gcM2kuEK54JInwbqW6Nk
	O7kUStFFOJltKX0pkxKdtpqLsXjaX69jfFmUpDcM6su78gZqvaRLS0XqTgqcE=
X-Received: by 2002:a17:902:c951:b0:2d9:2b1b:878a with SMTP id d9443c01a7336-2dafaf60ec2mr266366025ad.10.1788780618646;
        Mon, 07 Sep 2026 04:30:18 -0700 (PDT)
Received: from localhost ([2001:19f0:8000:3e6e:5400:6ff:fe38:3d01])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2db1497d455sm45019245ad.30.2026.09.07.04.30.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 07 Sep 2026 04:30:18 -0700 (PDT)
Date: Mon, 7 Sep 2026 19:29:49 +0800
From: Inochi Amaoto <inochiama@gmail.com>
To: Vladimir Oltean <olteanv@gmail.com>, 
	Inochi Amaoto <inochiama@gmail.com>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Manivannan Sadhasivam <mani@kernel.org>, 
	Andy Shevchenko <andriy.shevchenko@linux.intel.com>, linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, 
	Yixun Lan <dlan@gentoo.org>, Longbin Li <looong.bin@gmail.com>
Subject: Re: [PATCH v2 0/4] phy: core: Add phy bulk helpers support
Message-ID: <ap6fcP7Oct109dkY@inochi.infowork>
References: <20260904083709.425893-1-inochiama@gmail.com>
 <20260907102849.w7yn43x6m3f2rnuj@skbuf>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260907102849.w7yn43x6m3f2rnuj@skbuf>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260907_043019_816959_6F1E412A 
X-CRM114-Status: GOOD (  24.81  )
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

On Mon, Sep 07, 2026 at 01:28:49PM +0300, Vladimir Oltean wrote:
> Hi Inochi,
> 
> On Fri, Sep 04, 2026 at 04:37:04PM +0800, Inochi Amaoto wrote:
> > As discussed in [1], some drivers may do not care the difference between
> > phys. Instead, they only need to treat them as a group and operate them
> > together. This means a bulk operation is needed.
> > 
> > Add some bulk helper functions for phy core by referencing the design of
> > clock/reset subsystem. This can relieve the driver owners' life who needs
> > to handle many phys, as well as each phy error reporting.
> > 
> > [1] https://lore.kernel.org/linux-pci/ak9KzNFF26B0Kttz@ashevche-desk.local/
> > 
> > Changed from v1:
> > - https://lore.kernel.org/linux-phy/20260831025319.94886-1-inochiama@gmail.com/
> > patch 1:
> > 1. Update document.
> > patch 2:
> > 1. Fix document format.
> > 2. Fix several document description.
> > patch 3:
> > 1. Split into two patches: one for non devm helpers, one for devm helpers.
> > 2. All the bulk helper now use unsigned int for counts.
> > 3. Fix multiple the while loop statement.
> > 4. Rename of_phy_get_parent_count() to of_phy_get_count().
> > 5. Fix some 80 line function problems.
> > 6. Use PTR_ERR_OR_ZERO() to simplify the error handle.
> > 7. Fix zero value in the document
> > 8. Use two separate release function for devm helpers.
> > 
> > Inochi Amaoto (4):
> >   phy: core: Add common helper to add phy phandle device link
> >   phy: core: Add common helper for get phy phandle by index
> >   phy: core: Add phy bulk data helper functions
> >   phy: core: Add managed phy bulk data helper functions
> > 
> >  drivers/phy/phy-core.c  | 700 +++++++++++++++++++++++++++++++++++++---
> >  include/linux/phy/phy.h | 186 +++++++++++
> >  2 files changed, 850 insertions(+), 36 deletions(-)
> > 
> > --
> > 2.55.0
> 
> Please include a user of this API in the next patch submission.
> We should avoid, as much as possible, to introduce unused code.
> 

Yes, I have one for it. This is the spacemit pcie driver.
https://lore.kernel.org/linux-pci/20260907112606.465778-1-inochiama@gmail.com/

But it only uses a few of these helpers. So should I remove all the
things that are not directly used, and let others add these if they
need?

> Also, please address Sashiko's feedback (excluding the pre-existing
> issues).
> 

Yes, I will, thanks.

Regards,
Inochi

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
