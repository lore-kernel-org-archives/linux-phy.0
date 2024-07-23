Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 91A6CC3DA63
	for <linux-phy@archiver.kernel.org>; Tue, 23 Jul 2024 13:43:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jrC6/mmRaU8zccQpaC32/MPowkZx1Op6XNTTJamK2Aw=; b=dloXyxC/ac4Qmm
	E/1DbY2RBUbuT2keLXEpqQOD3XsLwB/S5z2N3KNc9vkwUxgz45O4uPB9bH5c/qVIKSRYFO6yk3hfO
	F+k1wefKC8+/FFbwIE1741DiCk+h3agUu3hN0c0ZPH/iF52kcZrpkBCHyCqg+N+6OQRb0EtSqPHp8
	JrYRccRfukPoDJz31LWXd8Go1Gr2Aw35jn1jrWogRUf+H6ODt8M2Ofk5fFfCFUyDnrPWgHV+1N2c7
	OvUSrWwA/7iD9YUhIhNuEN51nemUxyKxD2AtTQqEv9nG6P5hlbIx5onCTyskPzUssGR1On74OTDwB
	rzDLO5/8OwVdIDJG1b3A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sWFnW-0000000Cb7Z-1INs;
	Tue, 23 Jul 2024 13:43:22 +0000
Received: from mail-ej1-x631.google.com ([2a00:1450:4864:20::631])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sWFnT-0000000Cb6l-3tXR
	for linux-phy@lists.infradead.org;
	Tue, 23 Jul 2024 13:43:21 +0000
Received: by mail-ej1-x631.google.com with SMTP id a640c23a62f3a-a7aa086b077so46479366b.0
        for <linux-phy@lists.infradead.org>; Tue, 23 Jul 2024 06:43:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1721742198; x=1722346998; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=mVMG/uTEUf1KhxbYqzxZppjAwG6qO+7aRJSTph3UtBs=;
        b=cLPciWZJSqJj4JZf+UH909IvSM4xSpETdNRhp2PB14WmT0rJ007D+Ogf+pFEjdJS9u
         NZhqgkulaRlT6xHCq2QWcuf+nY87zZ1iT0uR4Jp79cBq9ivkNqs+QTWgJXLd4+orsv4I
         C3apjGJrUcWwR5JGznVja0Ie53HA+BFRHugfDHwYRF6wi74KT2BdbPsA3w9udwVJs0JZ
         E6X1To+7QJdTyZqS5DCgwZprlOY6fkhamNY23u09X2+loul6ENuak7ob9x9nqJ1tWjQb
         jra14mcSW7BkmlVrNQh/HloTv7/OBcbS0Tjp0S5zDt4jvX0QV9Hw++NFCYk71pXCh6vc
         Rbsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721742198; x=1722346998;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=mVMG/uTEUf1KhxbYqzxZppjAwG6qO+7aRJSTph3UtBs=;
        b=QO76mqmMnZ8tQOqPpzYkudlFTlIbUFC019xa5A9WHuNCZu7uZEMywgM40U+aKXJWf6
         ncQl8xZSxjhp8hcMGjHaYcRo2E8dsKSA12pYHaUZ6xHwSYUlkObCGcbvKMj9Qi+Qwlc2
         r4IOZ25n4/21W+AGX241/E1yqrtalR1jpWqIjLkRfEJGuvH6iwau5SgXsHXAUxYznJ3u
         rg41E6l9NwDV+JfmdkEleHgHkgVioT2CQlXGb7BI07DUzNfVbW0z7bRvisYdPbrPCqki
         4R3ZNRLD4DnxcwPVLykUP9Cm3N4KdUm9b7+yJAfzSW3sbN0TNVGvCgSJQzQPOIQR61h/
         ZrXw==
X-Forwarded-Encrypted: i=1; AJvYcCX0etNr/xq2VPe1MFcbex4009T4AtolN5jSaZE9J/mRyl1HoCjjsWt0+BKGvUOVyo1jDHWXFPJM1MNZX+Sy2gkI8Wjyq6QKxb9Rh8gT7A==
X-Gm-Message-State: AOJu0YwV8mHO600KauZRJjIm9WOiZDmfQeUFLMLSJTGkszyNFcM02q59
	M9/TQzz1fo4JMtJ8yEs60f66azMcaqrsEEJmVW9MfKVR24fbZp0v21lJwgmel1U=
X-Google-Smtp-Source: AGHT+IE+cxtq1rBP5ZCwyM/iBhNOsoKaiSM8RddFYe5ZZJ+3U4Nkd5DFypVcLuQUbpf2C4hYjOkbug==
X-Received: by 2002:a17:907:2da8:b0:a7a:a2b7:93fe with SMTP id a640c23a62f3a-a7aa2b7943bmr85721466b.47.1721742197360;
        Tue, 23 Jul 2024 06:43:17 -0700 (PDT)
Received: from [192.168.105.194] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a7a8d9b2d1dsm96699866b.63.2024.07.23.06.43.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 23 Jul 2024 06:43:16 -0700 (PDT)
Message-ID: <57c165e6-d942-4a17-a26b-7e4a0422127c@linaro.org>
Date: Tue, 23 Jul 2024 15:43:13 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 4/4] arm64: dts: qcom: add HDMI nodes for msm8998
To: Marc Gonzalez <mgonzalez@freebox.fr>,
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
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@linaro.org>
Autocrypt: addr=konrad.dybcio@linaro.org; keydata=
 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
 izWDgYvmBE8=
In-Reply-To: <a8c7db04-7212-4bf0-b8b1-d371ee33478b@freebox.fr>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240723_064320_117078_59E33726 
X-CRM114-Status: GOOD (  14.62  )
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

On 23.07.2024 3:38 PM, Marc Gonzalez wrote:
> On 23/07/2024 15:08, Konrad Dybcio wrote:
> 
>> On 23.07.2024 2:57 PM, Marc Gonzalez wrote:
>>
>>> On 23/07/2024 13:45, Konrad Dybcio wrote:
>>>
>>>> On 23.07.2024 11:59 AM, Dmitry Baryshkov wrote:
>>>>
>>>>> On Tue, 23 Jul 2024 at 12:48, Marc Gonzalez wrote:
>>>>>
>>>>>> On 16/07/2024 18:37, Dmitry Baryshkov wrote:
>>>>>>
>>>>>>> No, that's fine. It is the SMMU issue that Konrad has been asking you
>>>>>>> to take a look at.
>>>>>>
>>>>>> Context:
>>>>>>
>>>>>> [    4.911422] arm-smmu cd00000.iommu: FSR    = 00000402 [Format=2 TF], SID=0x0
>>>>>> [    4.923353] arm-smmu cd00000.iommu: FSYNR0 = 00000021 [S1CBNDX=0 PNU PLVL=1]
>>>>>> [    4.927893] arm-smmu cd00000.iommu: FSR    = 00000402 [Format=2 TF], SID=0x0
>>>>>> [    4.941928] arm-smmu cd00000.iommu: FSYNR0 = 00000021 [S1CBNDX=0 PNU PLVL=1]
>>>>>> [    4.944438] arm-smmu cd00000.iommu: FSR    = 00000402 [Format=2 TF], SID=0x0
>>>>>> [    4.956013] arm-smmu cd00000.iommu: FSYNR0 = 00000021 [S1CBNDX=0 PNU PLVL=1]
>>>>>> [    4.961055] arm-smmu cd00000.iommu: FSR    = 00000402 [Format=2 TF], SID=0x0
>>>>>> [    4.974565] arm-smmu cd00000.iommu: FSYNR0 = 00000021 [S1CBNDX=0 PNU PLVL=1]
>>>>>> [    4.977628] arm-smmu cd00000.iommu: FSR    = 00000402 [Format=2 TF], SID=0x0
>>>>>> [    4.989670] arm-smmu cd00000.iommu: FSYNR0 = 00000021 [S1CBNDX=0 PNU PLVL=1]
>>>>>>
>>>>>>
>>>>>> As I mentioned, I don't think I've ever seen issues from cd00000.iommu
>>>>>> on my board.
>>>>>
>>>>> Interestingly enough, I can also see iommu errors during WiFi startup
>>>>> / shutdown on msm8998 / miix630. This leads me to thinking that it
>>>>> well might be that there is a missing quirk in the iommu driver.
>>>>>
>>>>>> I can test a reboot loop for a few hours, to see if anything shows up.
>>>>>
>>>>> Yes, please.
>>>>
>>>> Yeah I do trust you Marc that it actually works for you and I'm not
>>>> gonna delay this series because of that, but please go ahead and
>>>> reboot-loop your board
>>>>
>>>> 8998/660 is """famous""" for it's iommu problems
>>>
>>> [   20.501062] arm-smmu 16c0000.iommu: Unhandled context fault: fsr=0x402, iova=0x00000000, fsynr=0x1, cbfrsynra=0x1900, cb=0
>>>
>>> I get the above warning pretty reliably.
>>> I don't think it's related to the issue(s) you mentioned.
>>> System just keeps plodding along.
>>
>> Yeah that one's "fine"
> 
> I booted 40 times in a loop.
> 
> `grep -a -i FSYNR console.logs` just returns the same 16c0000.iommu
> "Unhandled context fault" message 76 times (as above).
> 
> NB: I have maxcpus=1 set in bootargs.
> 
> Could the iommu issue be a race condition, NOT triggered when code
> runs with less parallelism?

No clue, can you try without maxcpus=1?

The thing will likely run slower (because reasons), but shouldn't
explode

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
