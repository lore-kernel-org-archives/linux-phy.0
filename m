Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 34E4BC79F89
	for <linux-phy@archiver.kernel.org>; Mon,  7 Sep 2026 10:28:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UZia+d7f+y/2mcM7CtmkQnmcPbnC/7nje91f0p2IVG4=; b=tKH+TdvYui2rww
	O2ot13G44q+T2hgyxAlAZsvTOSmV2g46QFt3X2pO55ZpJ/fC0bZzmcu5TWsboSBcOoxCgNw4ptrdF
	wJxMjZJw0RGE5tZO6qdeNuufu2Ev55l75SGA6F9JhYZSP3xnZNFKgXjqoMzkLEPRvDLt7xFCFi1dy
	IIAXxDsKtninaGDUnggrLzC4WcdGr2LN7qENIKtkdfKaeofJDljlGVxKBChOED4kAVfILviLePjW7
	VJzFB24HLuFB902rIfqFt92Ur1NnScLfZyJ47DOuYoXPsFcMHRezzxO0ONb/0VMUP2k+BvJ+ykuvT
	mWSCuTRtz9/iCfPlscQg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3Wav-00000006U7l-3381;
	Mon, 07 Sep 2026 10:28:57 +0000
Received: from mail-wr2-x10.google.com ([2a00:1450:4864:30::10])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3Wat-00000006U6k-2Blu
	for linux-phy@lists.infradead.org;
	Mon, 07 Sep 2026 10:28:56 +0000
Received: by mail-wr2-x10.google.com with SMTP id ffacd0b85a97d-48435ae9ca4so365961f8f.3
        for <linux-phy@lists.infradead.org>; Mon, 07 Sep 2026 03:28:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1788776933; x=1789381733; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=L64O8c68uHWszTYOMdgMxgtHCFDKEdZxdX31illwNnc=;
        b=kcyA+onQttJ2MgjnEuJKTQ5gLlJVl9KvLa7aWQ8ScT9j/EDm+0+qY3neAD3DQSq/mh
         EpaE/aYMVX/GLfXqqEUDxA8I0AWQgM6LgEmfzxZ51h9UnRgqs9AciJIER09fkK1jo7MD
         o3A3nwIulPXeBYcUDa4WG7dwnE8ZFNYxxeKCsMtQeWNBNgqhVr02bsgiS1eMUzCwDuz5
         Njk7EBIoGKJvUHWYjbnMoM8RSIDA4KwvUcoqbhENcy7ferhiQ/0cz5TTkuZ1PmZq+VXn
         KwrXju6glxHLREFd8NLnzBSHmHtVm6VwNsIuKi+mbh0XzbYGlJtMmyqAbuJ3NWM9nfin
         7ayQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788776933; x=1789381733;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=L64O8c68uHWszTYOMdgMxgtHCFDKEdZxdX31illwNnc=;
        b=U1M7qYl7Pj6oX371Ythh9ROqDI9M/vxjt7CNyveb4I4YMLrJwdMbodl9XmZ0LTvwsm
         RgU20CvdITNRH0vsL/QY+tI9ldZ+H+bG7rNOot9rss0tU7PlRECghM3qElVH3uozOvUE
         79s0Isprcq8rwT2quQpKFfoid11j2aN+ig35OJmAvgbnppJp0MrZs5r3sa555dKh77Sy
         YW/3KR4ks1GX1d7SmY84Z0Jy2U+jB+LvfMAX9qiSVLSDp/bxMpmL5kfD/uLX5pGggFCb
         baLYmtIiTsD4PKBnEFXvC3PDgTjiBKzVIxM9++BEyov7mLmDNsrzNc/SZUcs4nrbh69C
         iT1w==
X-Forwarded-Encrypted: i=1; AKwUvBwLZoUJiJXTYspaj9+QO3K1Aljs7cRb+7NDGoHs6sHRchosPKe5zMuvGMIfboeFMlKokGm8RjWYAyY=@lists.infradead.org
X-Gm-Message-State: AFuF++lWPPxaZJ7WP9k1gC+7SuHu3118DLL/UlnW8AeTPleozwKvISxZ
	CaXScUFF7JZw0lYRc8mRLOv1kKFGbBh3TFSSXnOlaVC8Nd2oG/AkEtXU
X-Gm-Gg: AYBFou3uw9T8VA3vQG2JPd9KKvtdVjvxVE1Z/g5gZwteGElRtnhfeUazlM89JF0EVa3
	4GR2PVQmfDirFLCvAIKpiRsbUFh0FImBmlg8+wJJn6/cO/UuMsoBksKIICIo1tZu5aWhDE6OmIv
	xgQaCzxprxXuIGeoBXR5yPqENDcl6PrEYM53K57hOKBcZpAvuoe6NyarJUSlgZwAOjrK4aWVTz7
	3OR0NK4prTCNYnmzIJGzVoC0KbkB/ZHtEs6m01T5ggUNsR+9qCT0l59KPM9r0pXqCVSRtwb0bzb
	w1EWqnfLPEECg0hk66U+lFWcimkDM1mQvBtg9GNinKfb4dZWY0/r6kZlHEpENjAt+QrY5SnNIfM
	kj6wA4qyEbMe6izRs44c26EFhAGEEzcSkELkovHrOfFNCbJ6YjHNXCVyGu4BhYzGBdVqJyH9UVm
	w2lSPjlrPeLTLb8ge4p9082xho9qcXASL60I1P+ME6TWb5c2P6ww==
X-Received: by 2002:a05:600c:34c5:b0:499:cef6:104c with SMTP id 5b1f17b1804b1-49cf823c012mr180608075e9.1.1788776933213;
        Mon, 07 Sep 2026 03:28:53 -0700 (PDT)
Received: from skbuf ([2a02:2f04:d006:ef01:8e86:58dc:206e:83a0])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-49cee5d476esm422034945e9.1.2026.09.07.03.28.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 07 Sep 2026 03:28:52 -0700 (PDT)
Date: Mon, 7 Sep 2026 13:28:49 +0300
From: Vladimir Oltean <olteanv@gmail.com>
To: Inochi Amaoto <inochiama@gmail.com>
Cc: Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
	linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org,
	Yixun Lan <dlan@gentoo.org>, Longbin Li <looong.bin@gmail.com>
Subject: Re: [PATCH v2 0/4] phy: core: Add phy bulk helpers support
Message-ID: <20260907102849.w7yn43x6m3f2rnuj@skbuf>
References: <20260904083709.425893-1-inochiama@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260904083709.425893-1-inochiama@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260907_032855_578897_9D531DE2 
X-CRM114-Status: GOOD (  17.27  )
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

Hi Inochi,

On Fri, Sep 04, 2026 at 04:37:04PM +0800, Inochi Amaoto wrote:
> As discussed in [1], some drivers may do not care the difference between
> phys. Instead, they only need to treat them as a group and operate them
> together. This means a bulk operation is needed.
> 
> Add some bulk helper functions for phy core by referencing the design of
> clock/reset subsystem. This can relieve the driver owners' life who needs
> to handle many phys, as well as each phy error reporting.
> 
> [1] https://lore.kernel.org/linux-pci/ak9KzNFF26B0Kttz@ashevche-desk.local/
> 
> Changed from v1:
> - https://lore.kernel.org/linux-phy/20260831025319.94886-1-inochiama@gmail.com/
> patch 1:
> 1. Update document.
> patch 2:
> 1. Fix document format.
> 2. Fix several document description.
> patch 3:
> 1. Split into two patches: one for non devm helpers, one for devm helpers.
> 2. All the bulk helper now use unsigned int for counts.
> 3. Fix multiple the while loop statement.
> 4. Rename of_phy_get_parent_count() to of_phy_get_count().
> 5. Fix some 80 line function problems.
> 6. Use PTR_ERR_OR_ZERO() to simplify the error handle.
> 7. Fix zero value in the document
> 8. Use two separate release function for devm helpers.
> 
> Inochi Amaoto (4):
>   phy: core: Add common helper to add phy phandle device link
>   phy: core: Add common helper for get phy phandle by index
>   phy: core: Add phy bulk data helper functions
>   phy: core: Add managed phy bulk data helper functions
> 
>  drivers/phy/phy-core.c  | 700 +++++++++++++++++++++++++++++++++++++---
>  include/linux/phy/phy.h | 186 +++++++++++
>  2 files changed, 850 insertions(+), 36 deletions(-)
> 
> --
> 2.55.0

Please include a user of this API in the next patch submission.
We should avoid, as much as possible, to introduce unused code.

Also, please address Sashiko's feedback (excluding the pre-existing
issues).

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
