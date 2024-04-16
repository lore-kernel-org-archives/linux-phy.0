Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BD01EC04FFF
	for <linux-phy@archiver.kernel.org>; Tue, 16 Apr 2024 10:29:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qPWe2t0ik2wqz2cam2DGRXjEnLLpGNZF2yAveKX95Yk=; b=OeaMRTvXeQhFHD
	qi+cIAZcuc6rLgxjgfOcwGw/NCHtPvy0XvLk48/CgTa6vnvWNeILBJQBHAt6JDaNuSG6v0ypHBXa6
	zNzLhqH+x4N1MXYm23blIIpNUAWxUi7zDAlVayGZoHI1gCEz6pfoCXM+pQXildnrsQIHHEFnCIVJg
	BFMkAt4eS8HdDl7KV+BAVkJXAfqdAS0BD6SnitpbcoHd22o1nYQnMXWJZK/lG18gGjDrjtmRwOCLl
	uwtJYyey/qPXRhQSJVWF8PAQtdlL35MnzkjG78da1//0tliHpAXzc9iL04dnawQjKrm7cPZIXf+Rv
	BBjDrbaJiNgf/8wsAj8w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rwg4B-0000000Bmvv-11pN;
	Tue, 16 Apr 2024 10:29:31 +0000
Received: from mail-oo1-xc36.google.com ([2607:f8b0:4864:20::c36])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rwg48-0000000Bmu1-00tQ
	for linux-phy@lists.infradead.org;
	Tue, 16 Apr 2024 10:29:29 +0000
Received: by mail-oo1-xc36.google.com with SMTP id 006d021491bc7-5aa1bf6cb40so3108095eaf.1
        for <linux-phy@lists.infradead.org>; Tue, 16 Apr 2024 03:29:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1713263366; x=1713868166; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=CTjrCNZbBSPJIq0cHJaUgYHpJavxftBIjzydI7AEWe8=;
        b=FVR0TPKIrPOJ6T2wWQVwR44Jb6Qp1fd7mcpIqX5yPwFjaT9XcGq7drL7yiq5VaNCp1
         CYJ0mFKpzJ0UtmPceyaHDjc+EQ7N2dDCdkeG2ltzfAakHgIUIPSEs6cLrbF+Bw5J6CVU
         iQUYeWXBF2PFPetGZT6DUG5QlDe/HfhB+H1iHb0c9jAX5o1+6nW2jrmSnU6klnzdJwaQ
         PomxHfZwcK28r9Ni8CG6AeNUJj+52px6LFitQUTajnmVoQgIK/e7XOShR+G/p5hwq64l
         EjuJ6388kx5vr5YNfAu6eiG0QK7dmihQmPkrSLi/Lba2naSWxSO0SPeRTu5j+7KJJeVe
         HXHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713263366; x=1713868166;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=CTjrCNZbBSPJIq0cHJaUgYHpJavxftBIjzydI7AEWe8=;
        b=Pnxr/SJewgTKLbcyLmJJsqVRU9jcbEKko01C87aaVUUUyFdx8VAwLSsMUUMboKoQdO
         LdEymvXHMtr47QZRW5Q6pqHrgskZH/AfzRMzJ8lyE2DfrEElxXq28kSodin0Kr9JM16+
         XSiEjzI5B/kiW+yRY2J4y7MYXJ0rRc/LF0AgrxvfxtaU1GVxZW/Cb15hQtLjgN3A+pgO
         5ZGWPlk2qGb4a7zWrF/wl7N7vyQIwJVLsMzungsea7x1CZQqsjQeCgC6dWfoVLZvzBcu
         bpGR0mEjD2lFMfWtwzLSc+f45yW0Y8qYAeMuXdXS7RcKtFe4VKkX0HqXdjCaA5vouznp
         1jgg==
X-Forwarded-Encrypted: i=1; AJvYcCVJY5HKga/92006n73fLnf1VTsP7Wyt/6gS33i/AndvnEqPkFZJh43WtcrZ8kteRGnQVqTDlCTdXvRGesjbZwO9QCPx6ARvMx+JplvR2A==
X-Gm-Message-State: AOJu0YzSOE7PnpB+7wjGPoVSubFxMjrTHGHtgPeVGhzDjbJztBohzaMp
	yixEibIEkmPRXvqVKW4+gEdbc3U8oa5mxR1Ub6V+s9lXj3cptx+/37Zq9G0gxvQvbDlberuz7tX
	4H7V1G9uztBlgfkoB7dEXt88sAVldEzkdGm8xeA==
X-Google-Smtp-Source: AGHT+IF0mprWmsJ0VbCYrBsXHEko3BiOSfnamAyFvbNWuNvMQCxuk0etOf3eft9TH8byKplO1hBCDcIJEdlM+FZqB18=
X-Received: by 2002:a4a:98d1:0:b0:5ac:9f37:3ef4 with SMTP id
 b17-20020a4a98d1000000b005ac9f373ef4mr5487329ooj.4.1713263365969; Tue, 16 Apr
 2024 03:29:25 -0700 (PDT)
MIME-Version: 1.0
References: <CGME20240404122615epcas5p3812bd7c825bf604fc474bbcdf40d11f6@epcas5p3.samsung.com>
 <20240404122559.898930-1-peter.griffin@linaro.org> <04d401da898e$fd57ec10$f807c430$@samsung.com>
In-Reply-To: <04d401da898e$fd57ec10$f807c430$@samsung.com>
From: Peter Griffin <peter.griffin@linaro.org>
Date: Tue, 16 Apr 2024 11:29:15 +0100
Message-ID: <CADrjBPoVSvUoq4Yw6DWRXN6=xi31p6=UKCL=57VHDoaKiQCTEQ@mail.gmail.com>
Subject: Re: [PATCH 00/17] HSI2, UFS & UFS phy support for Tensor GS101
To: Alim Akhtar <alim.akhtar@samsung.com>
Cc: mturquette@baylibre.com, sboyd@kernel.org, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, vkoul@kernel.org, kishon@kernel.org, 
	avri.altman@wdc.com, bvanassche@acm.org, s.nawrocki@samsung.com, 
	cw00.choi@samsung.com, jejb@linux.ibm.com, martin.petersen@oracle.com, 
	chanho61.park@samsung.com, ebiggers@kernel.org, linux-scsi@vger.kernel.org, 
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-clk@vger.kernel.org, linux-samsung-soc@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	tudor.ambarus@linaro.org, andre.draszik@linaro.org, saravanak@google.com, 
	willmcvicker@google.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240416_032928_137836_E4FB29D3 
X-CRM114-Status: GOOD (  18.18  )
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

Hi Alim,

Thanks for your review feedback.

On Mon, 8 Apr 2024 at 09:30, Alim Akhtar <alim.akhtar@samsung.com> wrote:
>
> Hi Peter
>
> > -----Original Message-----
> > From: Peter Griffin <peter.griffin@linaro.org>
> > Sent: Thursday, April 4, 2024 5:56 PM
> > To: mturquette@baylibre.com; sboyd@kernel.org; robh@kernel.org;
> > krzk+dt@kernel.org; conor+dt@kernel.org; vkoul@kernel.org;
> > kishon@kernel.org; alim.akhtar@samsung.com; avri.altman@wdc.com;
> > bvanassche@acm.org; s.nawrocki@samsung.com; cw00.choi@samsung.com;
> > jejb@linux.ibm.com; martin.petersen@oracle.com;
> > chanho61.park@samsung.com; ebiggers@kernel.org
> > Cc: linux-scsi@vger.kernel.org; linux-phy@lists.infradead.org;
> > devicetree@vger.kernel.org; linux-clk@vger.kernel.org; linux-samsung-
> > soc@vger.kernel.org; linux-kernel@vger.kernel.org; linux-arm-
> > kernel@lists.infradead.org; tudor.ambarus@linaro.org;
> > andre.draszik@linaro.org; saravanak@google.com;
> > willmcvicker@google.com; Peter Griffin <peter.griffin@linaro.org>
> > Subject: [PATCH 00/17] HSI2, UFS & UFS phy support for Tensor GS101
> >
> > Hi folks,
> >
> >
> > Question
> > ========
> >
> > Currently the link comes up in Gear 3 due to ufshcd_init_host_params()
> > host_params initialisation. If I update that to use UFS_HS_G4 for
> negotiation
> > then the link come up in Gear 4. I propose (in a future patch) to use VER
> > register offset 0x8 to determine whether to set G4 capability or not (if
> major
> > version is >= 3).
> >
> > The bitfield of VER register in gs101 docs is
> >
> > RSVD [31:16] Reserved
> > MJR [15:8] Major version number
> > MNR [7:4] Minor version number
> > VS [3:0] Version Suffix
> >
> > Can anyone confirm if other Exynos platforms supported by this driver have
> > the same register, and if it conforms to the bitfield described above?
> >
>
> VER (offset 0x8) is standard UFS HCI spec, so all vendor need to have this
> (unless something really wrong with the HW)
> Yes, Exynos and FSD SoC has these bitfield implemented.

Thanks for confirming! I will look to propose something once this
series is merged.

Peter.

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
