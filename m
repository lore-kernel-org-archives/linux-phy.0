Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E81D8C3DA49
	for <linux-phy@archiver.kernel.org>; Tue, 23 Jul 2024 12:57:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ts0UvsYQEInFBPn5cW1WOG4HOL1fx5tUB29bMvzcJzE=; b=2OyYw+n3PnFJG3
	e8jlOnVaK185ba2Aja8mlm7k6z+Ct4X3CojWcUOgeacbXrmuSFKqE+O4+djIE1ADjsgw+9grZ4+Vm
	0pZ8504yjxkGLZtSnhKS97LL3B8GLxLV0inU2cgKJg6U9BnL0zxADfnjuyAhUkd7I8YaYhNzQg434
	zZfxtOQpeheuQQynVwjXxUxxNnLlXU2CL762YhGUOYYb1s8uiS9Dfoi94f/ggL5N5QYuSkeepbUv4
	sk7mb53+L6v92Myk2JFjo8npNCWyh64D7Yx2uMWb4+N50vhWvFXz5sjjjStI7T/oGUUJa/gnYjUw9
	qy7wEkWbGReSp/rJcFeg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sWF5O-0000000CRBT-1gFr;
	Tue, 23 Jul 2024 12:57:46 +0000
Received: from mail-wr1-x435.google.com ([2a00:1450:4864:20::435])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sWF5K-0000000CRB1-3lLh
	for linux-phy@lists.infradead.org;
	Tue, 23 Jul 2024 12:57:45 +0000
Received: by mail-wr1-x435.google.com with SMTP id ffacd0b85a97d-3683178b226so2820457f8f.1
        for <linux-phy@lists.infradead.org>; Tue, 23 Jul 2024 05:57:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=freebox-fr.20230601.gappssmtp.com; s=20230601; t=1721739461; x=1722344261; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=SeKatBLYJH5XyX/2Nj+nxQW9hTn0jzkDBU0xeQ71mXY=;
        b=jb/FSbkEFYpvZ/zFtTy3sQQnAePbG+3GWC535t5LZGmcWQSiYR6mgFVsBUYyXrIoH+
         ftQMp+4XANWuci5fulES2khkJ69u6kDp+IByIaKl+nK2NBmyn2QIhgUUjx7Wy9VIOb7g
         0pz+9gqy5xP4uItFj6u2Tj1g6aZ3UqPxb1aDqX3NiPN2lGMuZuogkbrNAGljCmYKeMva
         7uaPCTTKak257PD//dUD2Q9kXfwAfY4KrXJsNGMji7VdcUuhrFHPllYdefIIFJM4aDZV
         X7DK67viIMmGZaFLG1wviNpA/creWFvWAHC3bUwhjCxZj3zLK3AroWHH5Lv4fAii0S9l
         pWPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721739461; x=1722344261;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=SeKatBLYJH5XyX/2Nj+nxQW9hTn0jzkDBU0xeQ71mXY=;
        b=CudHhRip8+215Md0R8k9ktyTFBCpGoiyx4H3OxIQ9Rb32SZNWPTWncFidvHww8s475
         5Uoc1b56aQ1A3z8wJkzUMFfxzaH9JwEHJa6SxKnZ1LhxlZ0sRVXFqpoGsz2iaF4PUq2V
         d4G2CA6drrsTiaxrUNCe2xQHdEstHkcsTNdx2xgZUp8AANxt3I3CwhRRs2wsNLECww4E
         Yp2S3ea09PNHsjQ+HRt/RrYA6Qh7uSPLIQVrJJXxNh7l7oVzvxnEsES63N+4yvrXRV3S
         tuYWoU4EKCOVpJ6M0ye84iFzbn/BPYFhrPEij92e6YNEp3d6ARbocrxP9eSMdQck1MHd
         fBzw==
X-Forwarded-Encrypted: i=1; AJvYcCU5QEnqINe3SAbAufzZZ2UkHfdn9gOZCZoAoWxSi9yP6B1Iw9KYP3B689InZwsl1f5bQvhG3doSeUs6H744DLUSOf+l5kkZMog/njq6mg==
X-Gm-Message-State: AOJu0Yy5vv8ypFm3EGpnBtbo13LERMKq0Xh1V5El/rOCKqwylg86MWns
	RQyT5tbdES7AnjY219pFl2NsvhY6viAw2t6XbufTMAtUTMUu7C7kR7bbKlE0UrY=
X-Google-Smtp-Source: AGHT+IGKnPjeRq1q8SaJtQeMhMmjaCgxwKDKeHRrSzys8nqzqExgksL9p1XuEKgZOiUCRZ+30+JqnQ==
X-Received: by 2002:a05:6000:2c5:b0:367:9881:7d5e with SMTP id ffacd0b85a97d-369bae3bfaamr7585209f8f.8.1721739460788;
        Tue, 23 Jul 2024 05:57:40 -0700 (PDT)
Received: from [192.168.108.81] (freebox.vlq16.iliad.fr. [213.36.7.13])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-427d6697c3fsm173164805e9.0.2024.07.23.05.57.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 23 Jul 2024 05:57:40 -0700 (PDT)
Message-ID: <7d34a857-6495-482b-9070-1817c88c9913@freebox.fr>
Date: Tue, 23 Jul 2024 14:57:39 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 4/4] arm64: dts: qcom: add HDMI nodes for msm8998
To: Konrad Dybcio <konrad.dybcio@linaro.org>,
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I
 <kishon@kernel.org>, Rob Herring <robh@kernel.org>,
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
 <44101ecd-61f4-4609-bb22-12b40b692552@freebox.fr>
 <CAA8EJpprtmefNM_CJFRbYVNxOWUVVWbedBq44r7GXOdDrQ2WjA@mail.gmail.com>
 <04ef978f-2bfd-46cc-a9f7-40a6f1c507f8@linaro.org>
Content-Language: en-US
From: Marc Gonzalez <mgonzalez@freebox.fr>
In-Reply-To: <04ef978f-2bfd-46cc-a9f7-40a6f1c507f8@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240723_055743_127817_3CEB700A 
X-CRM114-Status: GOOD (  14.44  )
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

On 23/07/2024 13:45, Konrad Dybcio wrote:

> On 23.07.2024 11:59 AM, Dmitry Baryshkov wrote:
> 
>> On Tue, 23 Jul 2024 at 12:48, Marc Gonzalez wrote:
>>
>>> On 16/07/2024 18:37, Dmitry Baryshkov wrote:
>>>
>>>> No, that's fine. It is the SMMU issue that Konrad has been asking you
>>>> to take a look at.
>>>
>>> Context:
>>>
>>> [    4.911422] arm-smmu cd00000.iommu: FSR    = 00000402 [Format=2 TF], SID=0x0
>>> [    4.923353] arm-smmu cd00000.iommu: FSYNR0 = 00000021 [S1CBNDX=0 PNU PLVL=1]
>>> [    4.927893] arm-smmu cd00000.iommu: FSR    = 00000402 [Format=2 TF], SID=0x0
>>> [    4.941928] arm-smmu cd00000.iommu: FSYNR0 = 00000021 [S1CBNDX=0 PNU PLVL=1]
>>> [    4.944438] arm-smmu cd00000.iommu: FSR    = 00000402 [Format=2 TF], SID=0x0
>>> [    4.956013] arm-smmu cd00000.iommu: FSYNR0 = 00000021 [S1CBNDX=0 PNU PLVL=1]
>>> [    4.961055] arm-smmu cd00000.iommu: FSR    = 00000402 [Format=2 TF], SID=0x0
>>> [    4.974565] arm-smmu cd00000.iommu: FSYNR0 = 00000021 [S1CBNDX=0 PNU PLVL=1]
>>> [    4.977628] arm-smmu cd00000.iommu: FSR    = 00000402 [Format=2 TF], SID=0x0
>>> [    4.989670] arm-smmu cd00000.iommu: FSYNR0 = 00000021 [S1CBNDX=0 PNU PLVL=1]
>>>
>>>
>>> As I mentioned, I don't think I've ever seen issues from cd00000.iommu
>>> on my board.
>>
>> Interestingly enough, I can also see iommu errors during WiFi startup
>> / shutdown on msm8998 / miix630. This leads me to thinking that it
>> well might be that there is a missing quirk in the iommu driver.
>>
>>> I can test a reboot loop for a few hours, to see if anything shows up.
>>
>> Yes, please.
> 
> Yeah I do trust you Marc that it actually works for you and I'm not
> gonna delay this series because of that, but please go ahead and
> reboot-loop your board
> 
> 8998/660 is """famous""" for it's iommu problems

[   20.501062] arm-smmu 16c0000.iommu: Unhandled context fault: fsr=0x402, iova=0x00000000, fsynr=0x1, cbfrsynra=0x1900, cb=0

I get the above warning pretty reliably.
I don't think it's related to the issue(s) you mentioned.
System just keeps plodding along.

Regards


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
