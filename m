Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B9357C3DA49
	for <linux-phy@archiver.kernel.org>; Tue, 23 Jul 2024 14:40:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=g5YVkgGtmxHqvqaWWRT7o8EaZ1i5ZKNywnxaxubYo/U=; b=4MlapRVkJ71VWK
	1qiJSAsHhSFZEyfVgn/zA5Uav0lkT8nd5k/04WaVzAspEUo6bo+zfjuxJhCSCTFHjaP/AUBeh1EJS
	NPinjx6IMIlnKIphTNfuKUGMkTxphto1jeOh3Nk4kJqDSGZX3P0nQDCvERPvj9cq+h4KJM+JqqRk3
	E2BLz1U5w72orl4QarbLjcrFynHNl+QmANP44O9FWKegtjoWnpuDIG/+Q7eJ1CtTDqtda/+PnRIik
	sKQU/EdH2WfEwzALp7AtpLurDcP0zAgFLt+NHzkyNTBRddun4Re2xbjRJbDib+Qr6kY0R1+kSBhfb
	UsTd4KA4ahfJN48IDbHw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sWGhD-0000000CkX7-1rXr;
	Tue, 23 Jul 2024 14:40:55 +0000
Received: from mail-wr1-x436.google.com ([2a00:1450:4864:20::436])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sWGh9-0000000CkUo-3RR9
	for linux-phy@lists.infradead.org;
	Tue, 23 Jul 2024 14:40:53 +0000
Received: by mail-wr1-x436.google.com with SMTP id ffacd0b85a97d-3683f56b9bdso2931159f8f.1
        for <linux-phy@lists.infradead.org>; Tue, 23 Jul 2024 07:40:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=freebox-fr.20230601.gappssmtp.com; s=20230601; t=1721745649; x=1722350449; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=T3K8m7UYLI9e2nw2FiKuLBXvna2sOiFY/YtJCGaVVwg=;
        b=HzM8woWsmReuQEV39OrC76jk3eD9sTGfQZHQl/5NvaE7Xz6eNWxkN4OhfI4xAl2OwO
         lYQpBF8qXwKVYf2Cf+lfE3bTFqWBDtOi0OZzKWbBH5iOT1fRftA9dUcz8J48LimC7VwI
         thSn2H3BNmTEljSezclnOvOqB2cEILCTju8zBK09IbW/8ACUo0m8gGyMVLEA7hRhyeak
         6Ye6/B+poV+2KK3MBoUdhZ6X7HwGX3PGkpIcs6Ha36Yxa8l1IMEzSLCfmhM3iACUzFNP
         40ZkW70lbdzZhZMWKYTY6r1IHDioErlFHAWCoM9pT5b0Vb7fZAv0YZW8flSeGtrcK7xy
         uH7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721745649; x=1722350449;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=T3K8m7UYLI9e2nw2FiKuLBXvna2sOiFY/YtJCGaVVwg=;
        b=g8axp/Adfpa/lh9aRJg9EBTh3IF+IGrtiv3KzKfah/BORq8OyjtFlKBsPC3hed847W
         Ip39GKpZ5y/WC50g62fr+ltD+sg3na9asAtgi6biz831Rbkd2N/pXllK4UgpqzTCZb33
         WhpmMoskb37/zFXlTXFXw2CrLRGlMlhA0E68HGInrMKW+JYiZhl8AZnynM5Pfkf1i/gn
         AhvmC9zPUb+Fb4VTuLJxrWY8NtraN+WcIHRDVQjDsRt+Nii3hUzh8bo7b50T803XfF/6
         OtmC5UEJi+St8mVsSqy5+i1YXeG6f/54mHl+2L9llTe4OSLN9gJyZ459HnU7GlWQSDHD
         Si1A==
X-Forwarded-Encrypted: i=1; AJvYcCVkcGhSaR4SkoQfVpbte1umi2KOF5VR7ZNiLSbae3Zhmy9NmY68YhxnwgmM+FJ7Lp2QRqQ1P/VnQVbuTB3ggG3MF46adMR50MGgsxnW/Q==
X-Gm-Message-State: AOJu0YzhqPCNPNRecVAEGwzazMSpN1/qPbwHnKzAUhr5JzQ2p53C2Bs4
	jLHJ/u6mReGb34LpsDC76ak1yEhzAmyddvekoaSVk58vBXtmWaF3NGiFwLDIIKA=
X-Google-Smtp-Source: AGHT+IGlwpdFnzbN5dFR3IJlUvCm4jcY/F9lixNZD/n0wR4wTR15Py/Fg3+cKLPkHHM/vuMRaPpzDw==
X-Received: by 2002:a05:6000:4026:b0:367:8a3b:2098 with SMTP id ffacd0b85a97d-369bbbb2e21mr7254343f8f.3.1721745649159;
        Tue, 23 Jul 2024 07:40:49 -0700 (PDT)
Received: from [192.168.108.81] (freebox.vlq16.iliad.fr. [213.36.7.13])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-368787cf182sm11760210f8f.82.2024.07.23.07.40.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 23 Jul 2024 07:40:48 -0700 (PDT)
Message-ID: <0d5d3918-3988-4d29-8bb3-aaf7b0aa0045@freebox.fr>
Date: Tue, 23 Jul 2024 16:40:47 +0200
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
 <7d34a857-6495-482b-9070-1817c88c9913@freebox.fr>
 <45f5dae6-c606-4612-900a-b719f58d92ce@linaro.org>
 <a8c7db04-7212-4bf0-b8b1-d371ee33478b@freebox.fr>
 <57c165e6-d942-4a17-a26b-7e4a0422127c@linaro.org>
Content-Language: en-US
From: Marc Gonzalez <mgonzalez@freebox.fr>
In-Reply-To: <57c165e6-d942-4a17-a26b-7e4a0422127c@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240723_074052_348421_F2D7C8E2 
X-CRM114-Status: GOOD (  17.51  )
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

On 23/07/2024 15:43, Konrad Dybcio wrote:

> On 23.07.2024 3:38 PM, Marc Gonzalez wrote:
>
>> On 23/07/2024 15:08, Konrad Dybcio wrote:
>>
>>> On 23.07.2024 2:57 PM, Marc Gonzalez wrote:
>>>
>>>> On 23/07/2024 13:45, Konrad Dybcio wrote:
>>>>
>>>>> On 23.07.2024 11:59 AM, Dmitry Baryshkov wrote:
>>>>>
>>>>>> On Tue, 23 Jul 2024 at 12:48, Marc Gonzalez wrote:
>>>>>>
>>>>>>> On 16/07/2024 18:37, Dmitry Baryshkov wrote:
>>>>>>>
>>>>>>>> No, that's fine. It is the SMMU issue that Konrad has been asking you
>>>>>>>> to take a look at.
>>>>>>>
>>>>>>> Context:
>>>>>>>
>>>>>>> [    4.911422] arm-smmu cd00000.iommu: FSR    = 00000402 [Format=2 TF], SID=0x0
>>>>>>> [    4.923353] arm-smmu cd00000.iommu: FSYNR0 = 00000021 [S1CBNDX=0 PNU PLVL=1]
>>>>>>> [    4.927893] arm-smmu cd00000.iommu: FSR    = 00000402 [Format=2 TF], SID=0x0
>>>>>>> [    4.941928] arm-smmu cd00000.iommu: FSYNR0 = 00000021 [S1CBNDX=0 PNU PLVL=1]
>>>>>>> [    4.944438] arm-smmu cd00000.iommu: FSR    = 00000402 [Format=2 TF], SID=0x0
>>>>>>> [    4.956013] arm-smmu cd00000.iommu: FSYNR0 = 00000021 [S1CBNDX=0 PNU PLVL=1]
>>>>>>> [    4.961055] arm-smmu cd00000.iommu: FSR    = 00000402 [Format=2 TF], SID=0x0
>>>>>>> [    4.974565] arm-smmu cd00000.iommu: FSYNR0 = 00000021 [S1CBNDX=0 PNU PLVL=1]
>>>>>>> [    4.977628] arm-smmu cd00000.iommu: FSR    = 00000402 [Format=2 TF], SID=0x0
>>>>>>> [    4.989670] arm-smmu cd00000.iommu: FSYNR0 = 00000021 [S1CBNDX=0 PNU PLVL=1]
>>>>>>>
>>>>>>>
>>>>>>> As I mentioned, I don't think I've ever seen issues from cd00000.iommu
>>>>>>> on my board.
>>>>>>
>>>>>> Interestingly enough, I can also see iommu errors during WiFi startup
>>>>>> / shutdown on msm8998 / miix630. This leads me to thinking that it
>>>>>> well might be that there is a missing quirk in the iommu driver.
>>>>>>
>>>>>>> I can test a reboot loop for a few hours, to see if anything shows up.
>>>>>>
>>>>>> Yes, please.
>>>>>
>>>>> Yeah I do trust you Marc that it actually works for you and I'm not
>>>>> gonna delay this series because of that, but please go ahead and
>>>>> reboot-loop your board
>>>>>
>>>>> 8998/660 is """famous""" for it's iommu problems
>>>>
>>>> [   20.501062] arm-smmu 16c0000.iommu: Unhandled context fault: fsr=0x402, iova=0x00000000, fsynr=0x1, cbfrsynra=0x1900, cb=0
>>>>
>>>> I get the above warning pretty reliably.
>>>> I don't think it's related to the issue(s) you mentioned.
>>>> System just keeps plodding along.
>>>
>>> Yeah that one's "fine"
>>
>> I booted 40 times in a loop.
>>
>> `grep -a -i FSYNR console.logs` just returns the same 16c0000.iommu
>> "Unhandled context fault" message 76 times (as above).
>>
>> NB: I have maxcpus=1 set in bootargs.
>>
>> Could the iommu issue be a race condition, NOT triggered when code
>> runs with less parallelism?
> 
> No clue, can you try without maxcpus=1?

Same behavior without maxcpus=1

40 boots, no panics, no FSYNR other than 16c0000.iommu

> The thing will likely run slower (because reasons), but shouldn't
> explode

That makes sense!

- Hey, boot is slow. What can we do to make it slower?
- Well, just add a bunch of cores running in parallel, that will get the job done!

As a matter of fact, trying to boot to command-line with
maxcpus=1 causes the system to lock up & reboot.
I had to add a systemd script to enable some cores at init.
Some qcom daemon must be locking a core & expect progress
from another process.

Regards


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
