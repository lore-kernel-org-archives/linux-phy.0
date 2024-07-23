Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 667C3C3DA63
	for <linux-phy@archiver.kernel.org>; Tue, 23 Jul 2024 09:48:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TXb6A+v5ewAulGWuf24GNwWaXcOWh9CNjNQZS+NXEXM=; b=YaSu+vtQe5QoYf
	eU38pZeLS2EQYMXAOA2PUWs3lnSQWsnugv+/CanzLqPglkFxN8Yhjlnoyu9e3d4LznginN71lW6zw
	C5wYdngMsL+cXjkXXSJ4v84gHWWkpKmefTZYm+HE046o6fpZ8+jCQ2Qe9LgMlmaJQWIf7+6Os2ozs
	R1CGewj56bT0faNnvRsm44dpM5nC/sHgwkmuhErSzS+BEfCUVsOOp6yrb64fT7L8J3Lo53t1J8yeJ
	rC+nqoXKfzE+uHLieqZsMgJ2THg/CFZAFKQAsZzHG0wR+5vqpeiSDOWvJoDTrCdfGNfL2iGyUNyGB
	d7q0GDOlQ5dkRqTEsQdA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sWC8B-0000000C4JY-00MX;
	Tue, 23 Jul 2024 09:48:27 +0000
Received: from mail-wr1-x431.google.com ([2a00:1450:4864:20::431])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sWC86-0000000C4H7-49Ia
	for linux-phy@lists.infradead.org;
	Tue, 23 Jul 2024 09:48:25 +0000
Received: by mail-wr1-x431.google.com with SMTP id ffacd0b85a97d-3686b554cfcso2527833f8f.1
        for <linux-phy@lists.infradead.org>; Tue, 23 Jul 2024 02:48:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=freebox-fr.20230601.gappssmtp.com; s=20230601; t=1721728100; x=1722332900; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=rbEJArM2criAyBNgn8vJ5ITCWqJpj4+z96xeB0rfsFI=;
        b=ikhw5daCv+1qjPQReV5yLn+3zpCKpSkB7ZI2m1UtPh/WWOnaIjh8Hy2ZxERSRut9Cs
         tq8lP0vfk2eM9X7D+yO+XNIaXfQM+AsAfnLTwcmVXvrgidjiojX7AWeU8rwifCCezvar
         ILgLW2iUtJ9LGZAghJHGfRwxi2JsE6wfTGKgoJ4DJze5CRwJwCMJrmY8RV7fR/8b0HYe
         +XpF+M4sa95OOwtk+J0DVImsW4GLJPRr0ruKxfPivUFT4xb7GBuSrtNbe0dDdciLgqi1
         rnSz6I/5Lw2OGlfMd4rpswFHyO/By5XmSU8sHpBv79WbQZzOFcvx6xRBL0BYcglxUkCw
         l8JA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721728100; x=1722332900;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=rbEJArM2criAyBNgn8vJ5ITCWqJpj4+z96xeB0rfsFI=;
        b=uz1nft1VAEAITS2QPHCyGOcATJdxVPUjhnJq16YIePP9hD/E5CcbdKDpm4A/Uj/xKb
         Mnx0ZTJXoBDuLwaaTOctStSwyDe+LiHrsVTs0ijdrNvq6neUPomdOaOxc7lINy9RBSkW
         CTcwOCs6Xi+m8W0wtYcKIKyrayDcpTM+VjbvG27qWJ7xK6eIPf6ucEtyjrRn0iBDaf6I
         gKMYipQ+VhcmrRYX88cYNkm4hYvR/YrANN8//JUiKZV4OperfJYVHWr4N1ou1Acou6N0
         S1Y78VuHBlIC+4M7kYDO9yNcE0kBNjfiPof8b9YBxn8rOe0Xbr79nzjmwZWf2DZKRoex
         leeg==
X-Forwarded-Encrypted: i=1; AJvYcCXVLZtJCEbxcLz4oEZUd7d4mn3WE58An3iKt+YeD59/TCTtpinGBypBqjisduc7UWYmXynrW8D0iAVyAFa+NfORWiWvlrP4ntHQj47QUw==
X-Gm-Message-State: AOJu0Yy1G/TW2/zyx5rjUQN2lk9KOautbdijHvy7vvNeWU+cCQ2nYRBz
	31r/ApPvqWb+8W8RUY+WlJmfSx9h7uyEDN1X9haRnCEZofrvwNarD9etdUmfoLs=
X-Google-Smtp-Source: AGHT+IH4hk/YqpKQL3zW/Jf38G6coS3kepTKE1VDym0yEzRHfbf7GMeH/Em3PPXdvHdzhvTFpRLYnw==
X-Received: by 2002:a5d:4992:0:b0:368:4c54:ae27 with SMTP id ffacd0b85a97d-369dec2931emr1628909f8f.36.1721728099886;
        Tue, 23 Jul 2024 02:48:19 -0700 (PDT)
Received: from [192.168.108.81] (freebox.vlq16.iliad.fr. [213.36.7.13])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-368787caefdsm11053461f8f.66.2024.07.23.02.48.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 23 Jul 2024 02:48:19 -0700 (PDT)
Message-ID: <44101ecd-61f4-4609-bb22-12b40b692552@freebox.fr>
Date: Tue, 23 Jul 2024 11:48:18 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 4/4] arm64: dts: qcom: add HDMI nodes for msm8998
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Rob Clark <robdclark@gmail.com>,
 Abhinav Kumar <quic_abhinavk@quicinc.com>, Sean Paul <sean@poorly.run>,
 Marijn Suijten <marijn.suijten@somainline.org>,
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 Bjorn Andersson <andersson@kernel.org>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
 Arnaud Vrac <avrac@freebox.fr>, Pierre-Hugues Husson <phhusson@freebox.fr>,
 Jeffrey Hugo <quic_jhugo@quicinc.com>
References: <20240627-hdmi-tx-v5-0-355d5c1fbc3c@freebox.fr>
 <20240627-hdmi-tx-v5-4-355d5c1fbc3c@freebox.fr>
 <d9898342-2439-4d3d-8e3d-5bf0a7a40245@linaro.org>
 <b6f6c845-6094-44ce-8ad0-ed4f6d353cec@freebox.fr>
 <CAA8EJpqrAFKCr63JHEpZ3b3zdRfoNXoJP6SqKDOO4sqc=c6YdQ@mail.gmail.com>
Content-Language: en-US
From: Marc Gonzalez <mgonzalez@freebox.fr>
In-Reply-To: <CAA8EJpqrAFKCr63JHEpZ3b3zdRfoNXoJP6SqKDOO4sqc=c6YdQ@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240723_024823_370862_D201EB96 
X-CRM114-Status: UNSURE (   7.54  )
X-CRM114-Notice: Please train this message.
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

On 16/07/2024 18:37, Dmitry Baryshkov wrote:

> No, that's fine. It is the SMMU issue that Konrad has been asking you
> to take a look at.

Context:

[    4.911422] arm-smmu cd00000.iommu: FSR    = 00000402 [Format=2 TF], SID=0x0
[    4.923353] arm-smmu cd00000.iommu: FSYNR0 = 00000021 [S1CBNDX=0 PNU PLVL=1]
[    4.927893] arm-smmu cd00000.iommu: FSR    = 00000402 [Format=2 TF], SID=0x0
[    4.941928] arm-smmu cd00000.iommu: FSYNR0 = 00000021 [S1CBNDX=0 PNU PLVL=1]
[    4.944438] arm-smmu cd00000.iommu: FSR    = 00000402 [Format=2 TF], SID=0x0
[    4.956013] arm-smmu cd00000.iommu: FSYNR0 = 00000021 [S1CBNDX=0 PNU PLVL=1]
[    4.961055] arm-smmu cd00000.iommu: FSR    = 00000402 [Format=2 TF], SID=0x0
[    4.974565] arm-smmu cd00000.iommu: FSYNR0 = 00000021 [S1CBNDX=0 PNU PLVL=1]
[    4.977628] arm-smmu cd00000.iommu: FSR    = 00000402 [Format=2 TF], SID=0x0
[    4.989670] arm-smmu cd00000.iommu: FSYNR0 = 00000021 [S1CBNDX=0 PNU PLVL=1]


As I mentioned, I don't think I've ever seen issues from cd00000.iommu
on my board.

I can test a reboot loop for a few hours, to see if anything shows up.

Regards


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
