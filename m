Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 468B9C3DA63
	for <linux-phy@archiver.kernel.org>; Tue, 23 Jul 2024 13:38:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ysVtNCsvTF1tyh8zD3wmeH1fWhNfYruSJK88eBt53MA=; b=3xe80Stfz+RXNc
	shSGo4c49271Lb0k57q7xZhPyr67oMcnk4PvVaBSkFZgLu8HCBdKdtnxuBT3CUN+kD8OnxinO8TXP
	W3s1/qwJIEWivYSbmS6Vefgqp5Vce+DFczufuyUKNlS2Fr7Ruum76/A5PYcRksxBcYHHBq8oskfXM
	SfyvShAZ7+jjU0UdpBq42oiLPJ+jyBHE33UOQNuxE9Dn6zQ0hDbOCmpmp20531/81CK1Ofa+jA8VW
	7iQfLJYK/C1crX5U5EFC/BLrmGIeuYUGoEemuNL6V0uHNfHSLdiFjYqdlu8GJoxFyZAfZygAr1qKp
	4Yz1N1khynlvlRMY9Nug==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sWFim-0000000CZxq-3xZn;
	Tue, 23 Jul 2024 13:38:28 +0000
Received: from mail-wm1-x336.google.com ([2a00:1450:4864:20::336])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sWFij-0000000CZwo-1YYN
	for linux-phy@lists.infradead.org;
	Tue, 23 Jul 2024 13:38:26 +0000
Received: by mail-wm1-x336.google.com with SMTP id 5b1f17b1804b1-4266f344091so40527315e9.0
        for <linux-phy@lists.infradead.org>; Tue, 23 Jul 2024 06:38:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=freebox-fr.20230601.gappssmtp.com; s=20230601; t=1721741903; x=1722346703; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=N3K8G5pHeQAwS16+pZRohvo75/Cf2iIKXzbelmWiAXE=;
        b=BuZJ/t7naQR7yOKMpQD200pcQ276qJjJD6V8Lm8SQGnYt94ceuccz34L3RhBQs0sCW
         50sDv+OTsZJqQZlsddVbQlBYBESVovzevhJL+AqhTW7Nf00i6UP8RZS3Q6X2rP8qWv8z
         9ejU2cg88rYAc3iO4taT0upR/A5wkq83k6X7PfVIzPZAg3m28oiSL3doc26SqJKs++Tl
         l7SLmU4FnJPW0ljLdfnU04/1L+FDlJ3oJdFuunoyOkWx/HONngeJp2SX8OuIpKTdlYNR
         yXCC8ABa6D0Idi16wu7CZ5YGUV4gyktlibXntFDpD2R6G6elDV0VgpwKNGiW1vc+XhcS
         AMzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721741903; x=1722346703;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=N3K8G5pHeQAwS16+pZRohvo75/Cf2iIKXzbelmWiAXE=;
        b=AzvzOjS5VtLJpg06H4t7JOoZcO+/VmTE2WL7VIxwWnXNd/baOk+CQh5GF1aPP1v7to
         rEd7Ky+acKKUe86UMK0fileq+PW3wK8CVy5mpu5QVr8NLQFo5QtiZVFHihv2d2E3L4nX
         d0q6z2ULTcVyOiJrCo6pnCN/ufjKcIYq3hef9YolBxv/xvzKEVHYpXqAmv8ZZ8h5mjeP
         7eZLybvcsQGK7nJvD68z0tmU4PRkLO/IzyuTFYrdiaaKtEK6kmpa0JRueic4n5qEBPXO
         SiR1VPqQgrZXBDN9GrX+AbKg8+OM91F4jOdtadut1uGq+nDdNO+EuLa5lOXggcRBMpIV
         +pRA==
X-Forwarded-Encrypted: i=1; AJvYcCWls9INw0pOaiGR7yzKHJxKVX/OLa9dh4kZEKMximKhqNZzF5HVhZKo0AceypMzYdiNgk3mBlw/gS9NMxnhYwwCNUlHNvGRYvYpiZzzlw==
X-Gm-Message-State: AOJu0YyVGNmUtdNj9C4Fwa28TYNP5t43XSUvZYBQ1vNiN4/AnshyJ1Cg
	E0XAi3Do1xFOZln0iY/7UFmU0WnOz2SlG35qwnK9SQSKO0ZbXcAjQpUSn034AdE=
X-Google-Smtp-Source: AGHT+IGbKurHrcBQxOwjoCy3I00Mb7Ii4AMC80qELYY6RamyBgLgQUYcRMumqK9YF+XJH9OtD5bRNQ==
X-Received: by 2002:a05:600c:4eca:b0:426:6876:83bb with SMTP id 5b1f17b1804b1-427dc52921amr59397295e9.17.1721741903494;
        Tue, 23 Jul 2024 06:38:23 -0700 (PDT)
Received: from [192.168.108.81] (freebox.vlq16.iliad.fr. [213.36.7.13])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-427d2a8e420sm203734675e9.35.2024.07.23.06.38.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 23 Jul 2024 06:38:23 -0700 (PDT)
Message-ID: <a8c7db04-7212-4bf0-b8b1-d371ee33478b@freebox.fr>
Date: Tue, 23 Jul 2024 15:38:22 +0200
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
Content-Language: en-US
From: Marc Gonzalez <mgonzalez@freebox.fr>
In-Reply-To: <45f5dae6-c606-4612-900a-b719f58d92ce@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240723_063825_451174_DF51CDC9 
X-CRM114-Status: GOOD (  13.47  )
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

On 23/07/2024 15:08, Konrad Dybcio wrote:

> On 23.07.2024 2:57 PM, Marc Gonzalez wrote:
>
>> On 23/07/2024 13:45, Konrad Dybcio wrote:
>>
>>> On 23.07.2024 11:59 AM, Dmitry Baryshkov wrote:
>>>
>>>> On Tue, 23 Jul 2024 at 12:48, Marc Gonzalez wrote:
>>>>
>>>>> On 16/07/2024 18:37, Dmitry Baryshkov wrote:
>>>>>
>>>>>> No, that's fine. It is the SMMU issue that Konrad has been asking you
>>>>>> to take a look at.
>>>>>
>>>>> Context:
>>>>>
>>>>> [    4.911422] arm-smmu cd00000.iommu: FSR    = 00000402 [Format=2 TF], SID=0x0
>>>>> [    4.923353] arm-smmu cd00000.iommu: FSYNR0 = 00000021 [S1CBNDX=0 PNU PLVL=1]
>>>>> [    4.927893] arm-smmu cd00000.iommu: FSR    = 00000402 [Format=2 TF], SID=0x0
>>>>> [    4.941928] arm-smmu cd00000.iommu: FSYNR0 = 00000021 [S1CBNDX=0 PNU PLVL=1]
>>>>> [    4.944438] arm-smmu cd00000.iommu: FSR    = 00000402 [Format=2 TF], SID=0x0
>>>>> [    4.956013] arm-smmu cd00000.iommu: FSYNR0 = 00000021 [S1CBNDX=0 PNU PLVL=1]
>>>>> [    4.961055] arm-smmu cd00000.iommu: FSR    = 00000402 [Format=2 TF], SID=0x0
>>>>> [    4.974565] arm-smmu cd00000.iommu: FSYNR0 = 00000021 [S1CBNDX=0 PNU PLVL=1]
>>>>> [    4.977628] arm-smmu cd00000.iommu: FSR    = 00000402 [Format=2 TF], SID=0x0
>>>>> [    4.989670] arm-smmu cd00000.iommu: FSYNR0 = 00000021 [S1CBNDX=0 PNU PLVL=1]
>>>>>
>>>>>
>>>>> As I mentioned, I don't think I've ever seen issues from cd00000.iommu
>>>>> on my board.
>>>>
>>>> Interestingly enough, I can also see iommu errors during WiFi startup
>>>> / shutdown on msm8998 / miix630. This leads me to thinking that it
>>>> well might be that there is a missing quirk in the iommu driver.
>>>>
>>>>> I can test a reboot loop for a few hours, to see if anything shows up.
>>>>
>>>> Yes, please.
>>>
>>> Yeah I do trust you Marc that it actually works for you and I'm not
>>> gonna delay this series because of that, but please go ahead and
>>> reboot-loop your board
>>>
>>> 8998/660 is """famous""" for it's iommu problems
>>
>> [   20.501062] arm-smmu 16c0000.iommu: Unhandled context fault: fsr=0x402, iova=0x00000000, fsynr=0x1, cbfrsynra=0x1900, cb=0
>>
>> I get the above warning pretty reliably.
>> I don't think it's related to the issue(s) you mentioned.
>> System just keeps plodding along.
> 
> Yeah that one's "fine"

I booted 40 times in a loop.

`grep -a -i FSYNR console.logs` just returns the same 16c0000.iommu
"Unhandled context fault" message 76 times (as above).

NB: I have maxcpus=1 set in bootargs.

Could the iommu issue be a race condition, NOT triggered when code
runs with less parallelism?

Regards


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
