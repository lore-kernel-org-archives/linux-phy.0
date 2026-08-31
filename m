Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6D427C61DE2
	for <linux-phy@archiver.kernel.org>; Mon, 31 Aug 2026 09:49:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6Ol2lNLA69byf+JacpFYRCjdo4QXEQd1uSg10Y2bpQI=; b=qbM7NJVOYyRk8N
	Jn9Nf611uz8gc4vDUz/arR9vPFi1ODLXzPQFuo+hGGpUbsoAoNA4p9w23zOok7jAfyz+nvzpzroG6
	/fJJ7l6VXdok0LcNpEowwBu9n0ZIFyww305a/chbB7VMJWxnj2W9QBggnQvqzCFSWxqj2RNiQMmap
	JsQethDzYjBLrD26iq5++sTNlOoA+ePBNUdIy9gLSlBBXC4vkXGxcZWZeShap1H6wB5odxjOmjIze
	xwx7G3GVrAZNx6bHYHq3BdjMeZ/B0zlOAabQcQ68IS1gWaUfV9PMxJHadKzkrE15O5TMieS/T79AK
	qreGXjdubvBsl7a40q/g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x0ydg-000000093eC-49BW;
	Mon, 31 Aug 2026 09:49:16 +0000
Received: from mail-pj1-x102f.google.com ([2607:f8b0:4864:20::102f])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x0ydf-000000093dU-0vWy
	for linux-phy@lists.infradead.org;
	Mon, 31 Aug 2026 09:49:16 +0000
Received: by mail-pj1-x102f.google.com with SMTP id 98e67ed59e1d1-398e9698a70so583533a91.0
        for <linux-phy@lists.infradead.org>; Mon, 31 Aug 2026 02:49:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1788169754; x=1788774554; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=tgHFIRmhsqAJHJCUFWnm6qnOb1lTD89+RXYjFUi9avs=;
        b=SAUPiUKCT9NAF1g0DCCmv8oDdE5wPYazoHP5KoU4JeCeHLJhqTZCvDPdYBbRlbtjdq
         30RArlCoDLkisKQe4fK58HxB9PRhdCGL5odQF1qiBEr3Pppiwy+kx4wXX7tSKhufIZKx
         C8RurLMM1RX/DwZutfiaNoRGaXb+H4J/bnm8mvGz1CEVzH7ZGzCaVoDyQUjQ+t7fd2py
         mLL7n9L4doQhkuPWpwlpWR1hqzvNNaB9Qmllsl2o6Vg1ITHKygomF4cuE7433gQIwcO6
         RDMr6mEqlHgk4CBZYPdc7H/TYE/GdU1aE4pAw7Dk9eeddp2C0DmM+nsVK4mFbF+gAKFC
         JIqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788169754; x=1788774554;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=tgHFIRmhsqAJHJCUFWnm6qnOb1lTD89+RXYjFUi9avs=;
        b=IL1TNqdxbtycD492V0f3TV2nlszcdG7nODsoAuVssSeMxnhHUORwL15uE0qMXMGj+h
         JU7XVg5jdhwMR42IoXIUbwnhb2mxdmOQUiIDIQUkTa0HqrGuhwnRl1D4GpUipvZHjrRr
         zXOJ5R9GY7knsMWo7RH2cYoTZ3nj9bMV9ntkqILOOhQChDx0Eoel1DUFAKUoPHG/iVGG
         k/KJ5DXtAdLM2TouW3ucB5RUya9/9AZxtEMK7AF9hsYukB82KlCAPxRq3Epflb8NJTKm
         zC16YQCmtpzzbgFMlKIfBWKAtvKWNs8dqXPZg56Poc6h+ouL1b8Xv3V7P5kfVIi8o6Qu
         RGZA==
X-Forwarded-Encrypted: i=1; AKwUvBzlHHIjK4wZdIMtI+wSEVPS2LNytLaIZEn2uVbsPrWm3ncmKgs3brpP4AaXzldLnDYuuOCQ64O2Leo=@lists.infradead.org
X-Gm-Message-State: AFuF++meRrA7d5PwPxL31GIlb0H6LiAVKBIRB3vG3ps5vhBCTBCTasPz
	gfKLRrCB7q1D2J3825A7T1PkCCX/pVh/1pNjtnPSJ4/4/mQeT8BplaJH
X-Gm-Gg: AYBFou28RLGDU11v/2bBMxJS6Hb/DFibfAT/rSuvOB/UxcXKX3pXdqOQ0CNoTdSLwY4
	p3g63pc9063Srq2A0NV1s4+tjCyMF8mEprpRPiu1+LmDt4bmz1vgYfZPhZJ3HoJ54USDM5PZESI
	ew0yx2zDMFEgAshz5sMAPnhhm1Jj1GAaFecAZMLfrljT0y7Zt8Kaz+WFDmCZOKaKZC4MhC1NrEz
	rylvW+/3j2usG/qN4M8adjVfW2PeU9JoLfFEbb79f9ZQI1IsvGWOWzM0aEpFixCUw3CExMXnFUX
	1rDwvBmUXvaUsT9q40/KQp5e2VwQODkSBZfcxyWqKp/Ox3knZNOFGzU9ZkTXWJZkUWteX5gsMor
	3SXrnXesAlGFU5q+bw63vJPZk6/PGVDgdW76bm+Nf1GZSLvXEEhIm9SRcGv2EAtzpilh4tNM4Q3
	7cwrPBiCxTqf1/+oGtVowRp8Ojzd8ZjnBoecUFqCmLJvqzkk0wEd2Gzbo/nAs=
X-Received: by 2002:a17:90b:1a8a:b0:398:9bd1:3211 with SMTP id 98e67ed59e1d1-3989bd135cbmr22863004a91.18.1788169753993;
        Mon, 31 Aug 2026 02:49:13 -0700 (PDT)
Received: from localhost ([2001:19f0:8000:3e6e:5400:6ff:fe38:3d01])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-398fae7a197sm2074315a91.17.2026.08.31.02.49.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 31 Aug 2026 02:49:13 -0700 (PDT)
Date: Mon, 31 Aug 2026 17:48:56 +0800
From: Inochi Amaoto <inochiama@gmail.com>
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>, 
	Inochi Amaoto <inochiama@gmail.com>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Manivannan Sadhasivam <mani@kernel.org>, 
	linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, Yixun Lan <dlan@gentoo.org>, 
	Longbin Li <looong.bin@gmail.com>
Subject: Re: [PATCH 2/3] phy: core: Add common helper for get phy phandle by
 index
Message-ID: <apVN6N1wVYDyeW5R@inochi.infowork>
References: <20260831025319.94886-1-inochiama@gmail.com>
 <20260831025506.95548-1-inochiama@gmail.com>
 <20260831025506.95548-2-inochiama@gmail.com>
 <apVF0kdgA1f_MdgB@ashevche-desk.local>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <apVF0kdgA1f_MdgB@ashevche-desk.local>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260831_024915_259931_D0A61C6E 
X-CRM114-Status: GOOD (  19.36  )
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

On Mon, Aug 31, 2026 at 12:13:54PM +0300, Andy Shevchenko wrote:
> On Mon, Aug 31, 2026 at 10:55:04AM +0800, Inochi Amaoto wrote:
> > Several phy helper use index to get phy phandle of a device node,
> > add a common function for the future reuse.
> 
> ...
> 
> > +/**
> > + * of_phy_get_by_index() - lookup and obtain a reference to a phy using a
> > + * device_node by index.
> > + * @np: device_node for which to get the phy
> > + * @index: index of the phy from device's point of view
> 
> > + * Returns the phy driver, after getting a refcount to it; or
> > + * -ENODEV if there is no such phy. The caller is responsible for
> > + * calling of_phy_put() to release that count.
> 
> Use proper syntax for Return: section, with the above kernel-doc will warn.
> 

Thanks, I just copy the wrony syntax. I will fix them in all the patches.

Regards,
Inochi

> > + */
> 
> -- 
> With Best Regards,
> Andy Shevchenko
> 
> 
> 
> -- 
> linux-phy mailing list
> linux-phy@lists.infradead.org
> https://lists.infradead.org/mailman/listinfo/linux-phy

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
