Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BB6D5C79F89
	for <linux-phy@archiver.kernel.org>; Mon,  7 Sep 2026 11:57:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lMvXsEs7fowuVYeZcIXMnkPJJk6lveBXjOS3eMakKQM=; b=ii33xG0HbEKisq
	UGg65Wtfx5moZiUJ5BQJqOpuNzuu92oPoySPn66GseeHG4PLLVqmmYosz1AFa/rn/qL04ySAV7xBN
	QtzxSRsvUk6zlLnpbGfvbRTgrGKjOC/HiaV4rJFSVahmVcjOXDTv3wsVb74a3IAZvt7t1gci93OTn
	chUAmWer2DXo3uORVbj1bziC/qecV+5ijmlWp309C2vhb4MYK3dkPnxeyhhLQBv+iQ0bC1uBTSMnb
	QRVRWpItfnJSlIJB6+JDrfL/JU3jME0eR/sfk52FqRpFRKFchTBQqDeWCvhDyC0IQST+Sj1ct4P/T
	u4iDzhblXbyTfIYpkPOQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3XyS-00000006j4B-1KjE;
	Mon, 07 Sep 2026 11:57:20 +0000
Received: from mail-wr2-x10.google.com ([2a00:1450:4864:30::10])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3XyP-00000006j3V-14nf
	for linux-phy@lists.infradead.org;
	Mon, 07 Sep 2026 11:57:18 +0000
Received: by mail-wr2-x10.google.com with SMTP id ffacd0b85a97d-4858a186d5bso235027f8f.2
        for <linux-phy@lists.infradead.org>; Mon, 07 Sep 2026 04:57:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1788782235; x=1789387035; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=1gcmB9FcGzp8BvkHmT9Fmc8HcBUppQYVGoa05TdIcAA=;
        b=AlRIH27+K/hA7BkcWnNogel4Baih2NxTeY5z5IpHfjZTr+P1oNQ38j1Nr4hC7Eepey
         K3zm51m18NmHBoTyHlZKF+1g87i6b7T1gXSZv8QWDUuDXKIlFRL4odrwoJ0rJwDTUHmd
         A01avkGDDdMUKZ9v/5gu+2t4pOVrTQKnFO+swNvZgs2hmB/g0+br/07+YvDLhoCeb3jq
         5qOnLKz8tG27d+6ioBsli90hRBzb5X1s2RHvlHZeiP2MWRjINS66pL+DTjdwm6QybqDx
         maBWuL9sVHfY0XoqEC4Bbz7bpaCLyKntFqrT2DGXZSEusQLkOuguiU+bsGlKtylYNmFu
         Xbdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788782235; x=1789387035;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=1gcmB9FcGzp8BvkHmT9Fmc8HcBUppQYVGoa05TdIcAA=;
        b=rmTt3Yf4q+B5lwmhfdZlsUojCjWCBOrquH86HkuTl+8LOVpF1ZedTOEvjWM93liyQj
         f470llgriZm1inM2pFati4ro0I4KCB9PMfM0ZQKT5rfGl+cjkvRcX6umnMgbA/CTdE1c
         Ytr3YYtPG5f3MPXXcrtR56PYVGERe8KEprwxJjJngDEL23OTW09xUAuCDoKTZnAbQBvP
         ATzFfxX0HmWEuMwBgTVoSRj4JLvQH9w928+NHHqRS2iHLCeFOq12q3vga3mEQqcwYHa7
         HZjQ9uPKCGAJLqkywMaQZLOr6Hw7HKSL5hXqVwSZImTtqlMTlO0iDihPp+OXN/X2pEjH
         Y/kg==
X-Forwarded-Encrypted: i=1; AKwUvBwhQ1u66cd+ns2YYgcUZUfKp6pGRZ2sKzmn6c8HmVggJ/UwKONqxR1fTM/IIoywt2Ed+aT88tom6VI=@lists.infradead.org
X-Gm-Message-State: AFuF++n2cyVMp09V0/Ap8wDZutvTeHrhl/Y+dL9HRzH4dE0cBFztsFm4
	D6rElBHMpAczBkDz9nQdiNZygfMIl+YuOzQx8t4Eqg0LAAtNlppXU1ha
X-Gm-Gg: AYBFou3V71g3NDKULotVBTb999i2tJktOhwRCxq7skis1jp/miHj9SZ/YJr6k2X3+fz
	870vhZwHycQ8Nzao++c5BoJhym3NUa/85PmipLqy2BCiNj/t6PFZyNAuzkXA20+OHvSQ/z1zAHp
	Rn8oaubboD9S0tBzcUAdCiWdMGpgRRRi5hDq1LnNLCG+WPivZArzcnPztxQfOp1gry3QZpXbiux
	V0HZEaE1VBrIrP7KcyIknjM4Dj3SbmkH1zh4yQkfXs5yYJmIBhn4ID7djemlYVqEl+N4fRMldQ1
	MSWXXjxo8vAUTWU3Jc77V3IAue+Vm7wPVUQ+IkOKWXuqmlVg0zAh1FZ0VFfI3u/LshW0QXDjIQf
	kVB+l0Ms+xB4TrrGDvMoO5pU47NwZkCCanEHbaSXt1/CjqzXyeo9HP1Kaa5hwepTTIOynkpowgK
	JqE5AYItnmTghBFAFsJsswwfDyu+iT4S3DyScYHb90OYGgFmLXQw==
X-Received: by 2002:a05:6000:144e:b0:485:8ad5:dbbb with SMTP id ffacd0b85a97d-485907f1861mr13652195f8f.4.1788782235302;
        Mon, 07 Sep 2026 04:57:15 -0700 (PDT)
Received: from skbuf ([2a02:2f04:d006:ef01:8e86:58dc:206e:83a0])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-485885bfdf6sm29210647f8f.34.2026.09.07.04.57.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 07 Sep 2026 04:57:14 -0700 (PDT)
Date: Mon, 7 Sep 2026 14:57:12 +0300
From: Vladimir Oltean <olteanv@gmail.com>
To: Inochi Amaoto <inochiama@gmail.com>
Cc: Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
	linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org,
	Yixun Lan <dlan@gentoo.org>, Longbin Li <looong.bin@gmail.com>
Subject: Re: [PATCH v2 0/4] phy: core: Add phy bulk helpers support
Message-ID: <20260907115712.dg5pw4ajvrtdipey@skbuf>
References: <20260904083709.425893-1-inochiama@gmail.com>
 <20260907102849.w7yn43x6m3f2rnuj@skbuf>
 <ap6fcP7Oct109dkY@inochi.infowork>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ap6fcP7Oct109dkY@inochi.infowork>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260907_045717_308130_EFEC8339 
X-CRM114-Status: GOOD (  11.95  )
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

On Mon, Sep 07, 2026 at 07:29:49PM +0800, Inochi Amaoto wrote:
> Yes, I have one for it. This is the spacemit pcie driver.
> https://lore.kernel.org/linux-pci/20260907112606.465778-1-inochiama@gmail.com/
> 
> But it only uses a few of these helpers. So should I remove all the
> things that are not directly used, and let others add these if they
> need?

How many functions would go away, and how difficult would they be to
reconstruct, if we only were to add them on an "as-needed" basis?

If the answer is "many", I suppose you could also leave a note in
phy.rst that links to v2 and mentions unimplemented functions because
they lack a user.

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
