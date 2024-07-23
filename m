Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CAAF0C3DA63
	for <linux-phy@archiver.kernel.org>; Tue, 23 Jul 2024 13:11:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wl6A7xurc6ssthvG7+U510KEYjOyUwkhTRzMd7ojJYc=; b=zGRggbE5qu9OeB
	tVt0eXLv4vG60b2n3gU2srbBJYcEbn3l7iVacJpRg1gIxLKBBpEnyfVZeX5GLKryvR9NxkK7Qi7lc
	xgVkpIrkKnqhiUb+Ot8vQdnx7B0E/W3YP8nuxux7DCZGVludln3Obr3ff0ysctwx29Py1MQ0tR4ku
	h42owl3luhI3frquJCB6MNRptfaspweAJ1uNiy4rfCgOFtYlfdwihc+WpgC3riU2526+DWqQ9bLPx
	thi2Rm6domRMASPOTe8+C+nlC+Xfz6lWjKHFzgwCSB9BHGBxtPYcFhLWk1rckeB2lT1sC7Qlmr2XI
	839SGmtPEnsFsLg/nHpA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sWFII-0000000CTdH-2CPD;
	Tue, 23 Jul 2024 13:11:06 +0000
Received: from mail-yb1-xb2e.google.com ([2607:f8b0:4864:20::b2e])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sWFI5-0000000CTZI-2da8
	for linux-phy@lists.infradead.org;
	Tue, 23 Jul 2024 13:10:55 +0000
Received: by mail-yb1-xb2e.google.com with SMTP id 3f1490d57ef6-e05ecb3dbf6so5305485276.0
        for <linux-phy@lists.infradead.org>; Tue, 23 Jul 2024 06:10:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1721740252; x=1722345052; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=9S9caq5ixK7RVU119zrmlgox7IJy9AQQzneZ4xlUEts=;
        b=VP66pgwSa5DhiTjlHwuSpBNKaRFVh3RYALd4al/TTXrZoUTmdWACyjh+JM5wgoqmKl
         JDE333jG+2QpA3wn/2n7utee2SfIsDWdYuGdau09wIUSQn4RPQs8ASa0zOPOx5ee2s+W
         rvObO38BgI7zzkg3pcz/dylEyNOgnfubDEULAX/1lLwll8u2GpA24hHf9hi6DQ5hKoK4
         huZ8eIzHFXQ4rgOhkHoJ4YzgahU1ULshv9scFNZfbm5UNcUQjfAGT7koy03elhSI13Dg
         I0oLBpJBKneH6CLBeTYY5ozWOfk9fDXjCJg8YcOur2atyxmuZCRudfQoFzDDL+7WjO5K
         iSHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721740252; x=1722345052;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=9S9caq5ixK7RVU119zrmlgox7IJy9AQQzneZ4xlUEts=;
        b=KVXmAcK2G4HsxNyIE9X9uiq8a55s700/y2bqWL+GswWHRfyVbRVsTwJPp1+Kq4yHw6
         K8I9M8j8K/UsuH6V0tlHHaevtZnc7IDjULPUtmCeauO0REf80LHWyqT7qbZo8ihR12HQ
         OD3xfArZQyznuwLhlWhcRZEiXYOqji84dAbzbfkvCGedz3gID3a5e+t5FmOpd4t6e8KZ
         5nIE+K6KSulSH58nOWRDcdaP+ocsVpTzxTGEpcUX2+MpO3Sd/KlXfNi3QDtAa5LQ7D1I
         qNuoB5QbzslqyjvfUhFCFdkXpGPrBNJgFhyPgKHHdH+xzWHr7Kh9mRkF51kYTUCK/qgo
         FE7g==
X-Forwarded-Encrypted: i=1; AJvYcCV5kLI7oOroZDF/tj1Fz31eU5ri3S+5u9c/k8FDrfzQew+iVnM3brRAO7fPiIyNRWrMwQLEuYKb0EzvHrn/oob2wlnMp9Utu7u8l6JXGA==
X-Gm-Message-State: AOJu0YxBvNX9CBB1s7GievNKf1mXtXJ4LkvFU+wzmFfkbGTbu9t6apsA
	ep7/DGUs96rtGQlyWUiVeQgEzwQwX/OQPnRZUZSHu3DOmt2S5Qyh5Xe4yP6SrVpN1sFDFUX6Ljv
	hvEuhayx3WY0UvJN8cVeGQvlwDWMcGwSbwEougA==
X-Google-Smtp-Source: AGHT+IEvHl3fw0AI0tCkrIySzqAkFe181rizQvmQiBdjgb0qmyADd+fwF1ufcs4Jld9VZVuq1IfAGCuddousT9eYlYU=
X-Received: by 2002:a05:6902:e01:b0:e06:df51:fda0 with SMTP id
 3f1490d57ef6-e08706a4dd8mr13265905276.42.1721740251724; Tue, 23 Jul 2024
 06:10:51 -0700 (PDT)
MIME-Version: 1.0
References: <20240627-hdmi-tx-v5-0-355d5c1fbc3c@freebox.fr>
 <20240627-hdmi-tx-v5-4-355d5c1fbc3c@freebox.fr> <d9898342-2439-4d3d-8e3d-5bf0a7a40245@linaro.org>
 <b6f6c845-6094-44ce-8ad0-ed4f6d353cec@freebox.fr> <CAA8EJpqrAFKCr63JHEpZ3b3zdRfoNXoJP6SqKDOO4sqc=c6YdQ@mail.gmail.com>
 <44101ecd-61f4-4609-bb22-12b40b692552@freebox.fr> <CAA8EJpprtmefNM_CJFRbYVNxOWUVVWbedBq44r7GXOdDrQ2WjA@mail.gmail.com>
 <04ef978f-2bfd-46cc-a9f7-40a6f1c507f8@linaro.org> <7d34a857-6495-482b-9070-1817c88c9913@freebox.fr>
In-Reply-To: <7d34a857-6495-482b-9070-1817c88c9913@freebox.fr>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Tue, 23 Jul 2024 16:10:40 +0300
Message-ID: <CAA8EJpo_ki3fxR4dmobMH_CiYWfb2ZOHwiY8e-McKR8xqU9jbQ@mail.gmail.com>
Subject: Re: [PATCH v5 4/4] arm64: dts: qcom: add HDMI nodes for msm8998
To: Marc Gonzalez <mgonzalez@freebox.fr>
Cc: Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Rob Clark <robdclark@gmail.com>, Abhinav Kumar <quic_abhinavk@quicinc.com>, 
	Sean Paul <sean@poorly.run>, Marijn Suijten <marijn.suijten@somainline.org>, 
	David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, Bjorn Andersson <andersson@kernel.org>, 
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org, 
	freedreno@lists.freedesktop.org, Arnaud Vrac <avrac@freebox.fr>, 
	Pierre-Hugues Husson <phhusson@freebox.fr>, Jeffrey Hugo <quic_jhugo@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240723_061053_708509_4CF7F667 
X-CRM114-Status: GOOD (  20.44  )
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

On Tue, 23 Jul 2024 at 15:57, Marc Gonzalez <mgonzalez@freebox.fr> wrote:
>
> On 23/07/2024 13:45, Konrad Dybcio wrote:
>
> > On 23.07.2024 11:59 AM, Dmitry Baryshkov wrote:
> >
> >> On Tue, 23 Jul 2024 at 12:48, Marc Gonzalez wrote:
> >>
> >>> On 16/07/2024 18:37, Dmitry Baryshkov wrote:
> >>>
> >>>> No, that's fine. It is the SMMU issue that Konrad has been asking you
> >>>> to take a look at.
> >>>
> >>> Context:
> >>>
> >>> [    4.911422] arm-smmu cd00000.iommu: FSR    = 00000402 [Format=2 TF], SID=0x0
> >>> [    4.923353] arm-smmu cd00000.iommu: FSYNR0 = 00000021 [S1CBNDX=0 PNU PLVL=1]
> >>> [    4.927893] arm-smmu cd00000.iommu: FSR    = 00000402 [Format=2 TF], SID=0x0
> >>> [    4.941928] arm-smmu cd00000.iommu: FSYNR0 = 00000021 [S1CBNDX=0 PNU PLVL=1]
> >>> [    4.944438] arm-smmu cd00000.iommu: FSR    = 00000402 [Format=2 TF], SID=0x0
> >>> [    4.956013] arm-smmu cd00000.iommu: FSYNR0 = 00000021 [S1CBNDX=0 PNU PLVL=1]
> >>> [    4.961055] arm-smmu cd00000.iommu: FSR    = 00000402 [Format=2 TF], SID=0x0
> >>> [    4.974565] arm-smmu cd00000.iommu: FSYNR0 = 00000021 [S1CBNDX=0 PNU PLVL=1]
> >>> [    4.977628] arm-smmu cd00000.iommu: FSR    = 00000402 [Format=2 TF], SID=0x0
> >>> [    4.989670] arm-smmu cd00000.iommu: FSYNR0 = 00000021 [S1CBNDX=0 PNU PLVL=1]
> >>>
> >>>
> >>> As I mentioned, I don't think I've ever seen issues from cd00000.iommu
> >>> on my board.
> >>
> >> Interestingly enough, I can also see iommu errors during WiFi startup
> >> / shutdown on msm8998 / miix630. This leads me to thinking that it
> >> well might be that there is a missing quirk in the iommu driver.
> >>
> >>> I can test a reboot loop for a few hours, to see if anything shows up.
> >>
> >> Yes, please.
> >
> > Yeah I do trust you Marc that it actually works for you and I'm not
> > gonna delay this series because of that, but please go ahead and
> > reboot-loop your board
> >
> > 8998/660 is """famous""" for it's iommu problems
>
> [   20.501062] arm-smmu 16c0000.iommu: Unhandled context fault: fsr=0x402, iova=0x00000000, fsynr=0x1, cbfrsynra=0x1900, cb=0

I think 0x1900 is WiFi.

>
> I get the above warning pretty reliably.
> I don't think it's related to the issue(s) you mentioned.
> System just keeps plodding along.
>
> Regards
>


-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
