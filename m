Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5D1E3C79F89
	for <linux-phy@archiver.kernel.org>; Mon,  7 Sep 2026 12:06:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=x8ZJWg7DRBKA+UEXUyvdC+v+PmVJLQB+9PO4V53/TDA=; b=PMcmGL/m6Y77oT
	X2+nYVOFBlLJpXbEIi5U4iIXpRfXQf2iuQGLfjXTaZZWRgBn0rRb2VagZ3kGW1vzir2Q+0Kp8VxV+
	FQMuLIyqj0FUdm3MwdRTdOXwz3NegwdpdZ3r4A4Huz7QvTs26PG427AlcVpzmS2uOImFPc791fB92
	GClTEMosnhZMPiIclolLFmhul1+CUP62UC+YxnMxSGcN55rTeJ1Cl6CsTYLXpe/v415pM1FR+nHiC
	4KybVoem6JgpyWvuivqV13COCAefwPFNwszijO4/GxRdVVbB6GVFvgFqAAilUAL7JYeuNArAv24Q4
	wIg4EPdpD+MrXuJ8ycRQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3Y7K-00000006lKm-0JsZ;
	Mon, 07 Sep 2026 12:06:30 +0000
Received: from mail-pg1-x52b.google.com ([2607:f8b0:4864:20::52b])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3Y7I-00000006lKI-0q4m
	for linux-phy@lists.infradead.org;
	Mon, 07 Sep 2026 12:06:29 +0000
Received: by mail-pg1-x52b.google.com with SMTP id 41be03b00d2f7-c9e7391839cso3593677a12.0
        for <linux-phy@lists.infradead.org>; Mon, 07 Sep 2026 05:06:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1788782787; x=1789387587; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=jalcXwT2Yf1NbQPCnMUl/zDvl6z8nL40vYt7Jj9wsrg=;
        b=e18QVjpEhTpqXiE45TyrMsX5tlVlQTOkWBvuIhWbu69AMvVdsaEEmhD5mmAVhgZlNP
         k4/jtJkMIMBv1JSw6Sx2bfvECLHDS5ve2mIFRTYcBrLQY6pje/A3JObLkJn2ZTcj1BKL
         sPnKV4oeZwadFS0jFLCLZ3ZEKK8lYeQAlwT+mQNDzLx9PndSu5j1tUzN5HLzVxZig4su
         SNNEESl0o7ForCD16+eJ3BmiS+Vvagpns5ErN0358vrx4GZWRjRetNNDjdUw3owfV8l/
         UkJOzKokMpRkv2grcj+tK2pNuc9s0nSBrRABbXykAxu1tvazPnxHnQLuttw0IaIMMyeh
         nYnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788782787; x=1789387587;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=jalcXwT2Yf1NbQPCnMUl/zDvl6z8nL40vYt7Jj9wsrg=;
        b=qDd+H7wK37h9gasFfOW0t9s/D1Ou7ZPH9ae92Pg4EPv8Wf6d5GZ/Dm/lWk7P4UWPcz
         BPf+qbEo/8QmieSwT8msOHS6hP00xTmGlM0NCkFnlL3mCQEDnbO9S3F9Jv8YpYbymGBD
         xLCEiAZjujXTewQfq8BSl8geUUsudl5jvf0MHtFVRdZgLXfX06JnyQuifYb91iV+XX8Z
         251Onw2AePKdkUWzsfA0cmTkJIWKJEkfnDes5VYhOUd0Ary8iwc3JDtu7wWNZRqFI0Km
         UOmBPR69dPUiCekhq0vaVejrwbWYUeDiPa59XGf0gREEyp0X3CyANX8R3mfgtdWFvHQT
         mYpQ==
X-Forwarded-Encrypted: i=1; AKwUvByZKnEA7GAdUfYYM4mKozB6RiiPheAt3lz8zflgFkvhVMcBg92SRuzYbFKWXtTdhh41qghljEj9HAs=@lists.infradead.org
X-Gm-Message-State: AFuF++l4rxI6fSVbFCktHeUi1RlgCfgqCNw/59FLYmX1PgjiJeXDRx5p
	gyHLYT9uf2khx29Tf52IhsQHkvqronPw2uXSaowsGYkpO+KYKklRoYp2
X-Gm-Gg: AYBFou2aNEwANl9OCwu0J/ODhdDntPX9FzPTfHtmWqQMi/K+WR4t6RU1bmIuORNoKVj
	ZHKwLJe2Y+SWbNN1/J3rWbmhvWLeJkfMH2B5CUtB1ZG1LkWS9hnLwB9vvjzh+DqN7Csu6rUDxL+
	VKudC05GcUNgBT9bzOTiwsBC7tpmZrge6ZbihdAwCe2pViGAXdR/ZlacoeHPlLyBuaTSJeY6LuS
	Ib/HELvhO9znjGsI2IieJnsH5EaKg9VM0Ipb85y12NSGzP1nheylK6i7SvOHlCJAg61sCBIWbb4
	aMgsCFuNNEfQtHIs7tU0PvQ0XIiJOHKQGw6pXpPDn/ICp8oXmbeTwrQNvjszgPYmqejqB0AX3OE
	EAvnpq5fsLwBg+5QcKCyudMp0l/aE7mTKjEmfxLn8xcnQ49K8yrRgu6k1f+0wifoAZpb/eetENm
	LK4EtmFfxCIITbh1ZBHsHgkz3J9ipBSj25PDlctFbyriAZ0IkroSVJxIKUxTg=
X-Received: by 2002:a05:6a20:430f:b0:3d1:9166:5c68 with SMTP id adf61e73a8af0-3da39ee15fdmr29716602637.8.1788782787245;
        Mon, 07 Sep 2026 05:06:27 -0700 (PDT)
Received: from localhost ([2001:19f0:8000:3e6e:5400:6ff:fe38:3d01])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-cc45a6abb12sm3818124a12.16.2026.09.07.05.06.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 07 Sep 2026 05:06:26 -0700 (PDT)
Date: Mon, 7 Sep 2026 20:05:57 +0800
From: Inochi Amaoto <inochiama@gmail.com>
To: Vladimir Oltean <olteanv@gmail.com>, 
	Inochi Amaoto <inochiama@gmail.com>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Manivannan Sadhasivam <mani@kernel.org>, 
	Andy Shevchenko <andriy.shevchenko@linux.intel.com>, linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, 
	Yixun Lan <dlan@gentoo.org>, Longbin Li <looong.bin@gmail.com>
Subject: Re: [PATCH v2 0/4] phy: core: Add phy bulk helpers support
Message-ID: <ap6ngAxlztCAFSH0@inochi.infowork>
References: <20260904083709.425893-1-inochiama@gmail.com>
 <20260907102849.w7yn43x6m3f2rnuj@skbuf>
 <ap6fcP7Oct109dkY@inochi.infowork>
 <20260907115712.dg5pw4ajvrtdipey@skbuf>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260907115712.dg5pw4ajvrtdipey@skbuf>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260907_050628_257172_9F390188 
X-CRM114-Status: GOOD (  17.75  )
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

On Mon, Sep 07, 2026 at 02:57:12PM +0300, Vladimir Oltean wrote:
> On Mon, Sep 07, 2026 at 07:29:49PM +0800, Inochi Amaoto wrote:
> > Yes, I have one for it. This is the spacemit pcie driver.
> > https://lore.kernel.org/linux-pci/20260907112606.465778-1-inochiama@gmail.com/
> > 
> > But it only uses a few of these helpers. So should I remove all the
> > things that are not directly used, and let others add these if they
> > need?
> 
> How many functions would go away, and how difficult would they be to
> reconstruct, if we only were to add them on an "as-needed" basis?
> 
> If the answer is "many", I suppose you could also leave a note in
> phy.rst that links to v2 and mentions unimplemented functions because
> they lack a user.
> 

In fact I think it is happy. This PCIe driver only use three APIs:
- devm_of_phy_bulk_get_all
- phy_bulk_init
- phy_bulk_exit

So most of them will be removed as only a few are on the path.
I will follow you suggestion. Thanks.

Regards,
Inochi

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
