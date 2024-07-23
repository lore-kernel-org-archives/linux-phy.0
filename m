Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9C117C3DA49
	for <linux-phy@archiver.kernel.org>; Tue, 23 Jul 2024 10:00:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FM4AS+YwujU0OGrQiKDTZbKXc6fdfT0kMaXMWWYUDhM=; b=0CsIuBySW4HBaO
	0RaMxI7tanbVoweVQCHDBHOR8HnzgImg7qiZ9Pjq+/ElfDtSLgn3Xsjjs3AV9Y3RP7wNb4zgpdaA/
	VYtNkOxHbpnPWtWSbqvL3vbiVi7igck8pUVCjW0Nib2yQMppdAr6YYmBjKnbs76ZlHAjHcNv8uGzt
	ZUUmNPBbwZC9d1tX6BhDKUYN0n8x4kDtzt9XlgnbuTCfRxJUjOpZ0FvFEIumJwAhqFGyu8DX9IuMn
	HaofidBL7t7i9MmoZtZtEP5OaeyTS1xESXvDTgKaHgymuxII12QGzIvxQovzlZKxiRY8PhI/YNkgV
	hLErEHf+kH6JSac7/9dg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sWCJS-0000000C68X-0pnz;
	Tue, 23 Jul 2024 10:00:06 +0000
Received: from mail-yw1-x112c.google.com ([2607:f8b0:4864:20::112c])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sWCJP-0000000C67l-2eF5
	for linux-phy@lists.infradead.org;
	Tue, 23 Jul 2024 10:00:04 +0000
Received: by mail-yw1-x112c.google.com with SMTP id 00721157ae682-6659e81bc68so54840277b3.0
        for <linux-phy@lists.infradead.org>; Tue, 23 Jul 2024 03:00:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1721728802; x=1722333602; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=zZ9Qf7tzxpC5iei1isMPCv59BXDJInOL01TWRb+zzks=;
        b=UbM8nEleYnAfo59wCWUTOkI9Yum6Dn/oo+aIfot1LK3X9Cj0rDjaRbelA4uQIMeR1L
         7EZuei6JSjoFVh4B50cM6l9JFcq5MIqay+NsiBA8H7rvsw932Mue9w3xkbBvKOhNtwt0
         QL1QhcUnU+peuVJ2umwD/ZoMPL2T06BDgpjKy9q85i3ZkePbs+AECie/dHOSf4weSHKc
         w3aCu0QIVXzA6hAFAHe97ioxWKpPaj2SvxhqxbxuNQnW/59qvkSnpNsySnLJVDYMHtnx
         uqcU2t6RTSqZj87XPmranNOxzAwPZrBhFVQFQjJg4dAVK4oAwm9falF3OOn2iUgjBSWX
         qcCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721728802; x=1722333602;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=zZ9Qf7tzxpC5iei1isMPCv59BXDJInOL01TWRb+zzks=;
        b=KPGi7K5pZWVtPyyax3taoaYYT5zPef+LklAVAVIGJjJVJRIlywBiiW6MIrajp3PO28
         ds44BADw/uUgslvqhtepJONkOjKAA7lA3LhNc+m8m5pEkZDm6v7bC4jjNY2OPqBtNVbq
         YBGB7x9+WY9+/m0bAcnHmWK0dRtM9v6Tve8HnGQV2v2tXAAJmiyzPxHlgXrmh1j+tNZi
         fVuAPUx4Rdoli8MWezXZRvUQHThT/YUrwriTXSFRxV5gFpZ75XmX4AKSr4LXfhcgpwso
         4ZkaUDr19ABYTmNDLmrNBIHNR6A7MxCULch7lappWYB6zJ6VpJ9Pp0ukh7fRPG6cGnK0
         5o0A==
X-Forwarded-Encrypted: i=1; AJvYcCXv1xT2tfyMAieKrIJEYCaCjfFD5OJsK+i43C2wKHaCh9+1SSup2vga3R1cqrdtnxbeXvfoswPc8ThtDFoyPpEXcNq3JLV+wCq4xPfxlA==
X-Gm-Message-State: AOJu0YwqAEdzy+UvVDnPxLYEMakR5NM9mS6CYjAB1sYVDDgTtbI0/3Y5
	YOcbktQHLWUwq8vBQUFGuDuIGegjeSrNdrrgKDrpxglTAeUqtyewmBENc+flkiQrwxHgdIkeMCL
	bYbrpjQ4LA4CTrNT9fV67tYXulEQOqLV9u5/Nvg==
X-Google-Smtp-Source: AGHT+IEK7eHMKU1XQHiBgtOg3dXLbIEHt6ytDKj/LYQe0cCDUemYTFAfT3Z9In6r8gnhOF50cJznogYo2H/FLxdYzK0=
X-Received: by 2002:a05:690c:2fc1:b0:665:7661:2b7a with SMTP id
 00721157ae682-66ad8dc2403mr100520887b3.25.1721728801875; Tue, 23 Jul 2024
 03:00:01 -0700 (PDT)
MIME-Version: 1.0
References: <20240627-hdmi-tx-v5-0-355d5c1fbc3c@freebox.fr>
 <20240627-hdmi-tx-v5-4-355d5c1fbc3c@freebox.fr> <d9898342-2439-4d3d-8e3d-5bf0a7a40245@linaro.org>
 <b6f6c845-6094-44ce-8ad0-ed4f6d353cec@freebox.fr> <CAA8EJpqrAFKCr63JHEpZ3b3zdRfoNXoJP6SqKDOO4sqc=c6YdQ@mail.gmail.com>
 <44101ecd-61f4-4609-bb22-12b40b692552@freebox.fr>
In-Reply-To: <44101ecd-61f4-4609-bb22-12b40b692552@freebox.fr>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Tue, 23 Jul 2024 12:59:50 +0300
Message-ID: <CAA8EJpprtmefNM_CJFRbYVNxOWUVVWbedBq44r7GXOdDrQ2WjA@mail.gmail.com>
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
X-CRM114-CacheID: sfid-20240723_030003_696138_E31765C0 
X-CRM114-Status: GOOD (  12.71  )
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

On Tue, 23 Jul 2024 at 12:48, Marc Gonzalez <mgonzalez@freebox.fr> wrote:
>
> On 16/07/2024 18:37, Dmitry Baryshkov wrote:
>
> > No, that's fine. It is the SMMU issue that Konrad has been asking you
> > to take a look at.
>
> Context:
>
> [    4.911422] arm-smmu cd00000.iommu: FSR    = 00000402 [Format=2 TF], SID=0x0
> [    4.923353] arm-smmu cd00000.iommu: FSYNR0 = 00000021 [S1CBNDX=0 PNU PLVL=1]
> [    4.927893] arm-smmu cd00000.iommu: FSR    = 00000402 [Format=2 TF], SID=0x0
> [    4.941928] arm-smmu cd00000.iommu: FSYNR0 = 00000021 [S1CBNDX=0 PNU PLVL=1]
> [    4.944438] arm-smmu cd00000.iommu: FSR    = 00000402 [Format=2 TF], SID=0x0
> [    4.956013] arm-smmu cd00000.iommu: FSYNR0 = 00000021 [S1CBNDX=0 PNU PLVL=1]
> [    4.961055] arm-smmu cd00000.iommu: FSR    = 00000402 [Format=2 TF], SID=0x0
> [    4.974565] arm-smmu cd00000.iommu: FSYNR0 = 00000021 [S1CBNDX=0 PNU PLVL=1]
> [    4.977628] arm-smmu cd00000.iommu: FSR    = 00000402 [Format=2 TF], SID=0x0
> [    4.989670] arm-smmu cd00000.iommu: FSYNR0 = 00000021 [S1CBNDX=0 PNU PLVL=1]
>
>
> As I mentioned, I don't think I've ever seen issues from cd00000.iommu
> on my board.

Interestingly enough, I can also see iommu errors during WiFi startup
/ shutdown on msm8998 / miix630. This leads me to thinking that it
well might be that there is a missing quirk in the iommu driver.

>
> I can test a reboot loop for a few hours, to see if anything shows up.

Yes, pleas.

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
