Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E09ADC35FFA
	for <linux-phy@archiver.kernel.org>; Wed, 19 Mar 2025 11:49:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=10Glb1IYY0SQIhvhJhJLXr6gFyatfYNWfoNaXJ5xMRA=; b=Z5zvP5jFScMO6n
	5JXRVdGpoUzz7H1AVk7nPt+BJzeCnM7hBnliCfIyR9Vk15H2/NFzL9RzkdfKmfcmYwAE5PaxYRk4Z
	CwU89wRcdUl5GvSyJLPRKIgMxgWa3qJymHt8lHt9AqPymDUqioTgsX3gI52enhPbcu9iNzcTQ3S4Q
	2M14kle0x9Q5V0mc2BwI7zdZ7gXNaGZJHS624dRbTDK/Li/JlbjQAP4ww5FoMVPFbTKUByeMPmGpT
	x2mdj2Q9yOboMszJNSNi8q5JKIW+aRCU32iB5tv/84qz4i54tKNB2+PnBKS/PwuG9epdHYb3fn1yx
	tB+7aD/5N0iHkAosNToA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1turvN-00000008shm-2oKE;
	Wed, 19 Mar 2025 11:49:29 +0000
Received: from mail-wm1-x32c.google.com ([2a00:1450:4864:20::32c])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1turoA-00000008rXT-2RZb
	for linux-phy@lists.infradead.org;
	Wed, 19 Mar 2025 11:42:03 +0000
Received: by mail-wm1-x32c.google.com with SMTP id 5b1f17b1804b1-43cec5cd73bso29755395e9.3
        for <linux-phy@lists.infradead.org>; Wed, 19 Mar 2025 04:42:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1742384521; x=1742989321; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=4+TU65vbu1/jXurIViozymomrJ8y6tyjAhqqoeO6eX0=;
        b=UQuOsjkW4Sh40PJlg62uGtxlIiliFeIdtI8hkTeL4Dnc2COoHFOaN0jzz4GKlLschT
         jsdkbbm+wNl8CgbqWLsj1h6XW0C6B2ckh0TCqkqDq7gY3Bi9G8RTuPEEzguDzNByvjH8
         0R1rb9rBtVt8ue120sqEOcpqytzZ6A+PAXGqmhxbnl9Zx3iHDEdkQTejouoENeOYyV/1
         obEyCFsVWzcuHq19ofd2FxwrpGvXSWrjBqhQI+FsU23YeYF/AO0trRza5pY6fVZt1E3+
         f1dnlZB2tDfcekf3H0XqS1v1mSRWWMIgSmDt803HzWEAjimjYAnY+bWOWqwuvS2CQMdY
         940Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742384521; x=1742989321;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=4+TU65vbu1/jXurIViozymomrJ8y6tyjAhqqoeO6eX0=;
        b=Y+/eL7TlkdofMcDiH4nq2miPeedUkEp6vpeKQerH6GKJYi/sFhtEN0nEFHYXkkqWSM
         z1nBTRtm8BP4V4kMpk1V9EpJIT9iu9VaMKZV8EzJKNtQ4EVc9h8eBzxr3b7vkFZudKi7
         mSbXpXdm3GvC55WVzHSVfYGUptWfVRNAw4xNlV9SysB2VG+Z1Vco7lnW9rgpAlJE0yCd
         ear99/Uooud7UqpXZBZZXj8rMm2g+EoHxmjr18uPFzJ4eyPMnj+CvbVlcs1HEs2XF3+4
         EibHyHDEiAYe2ak0ZEIwi6rpd2eiJ+OYpZX4adTnyyOG1dEkj2amNNOj+d59SGpxV9ye
         Ac0A==
X-Forwarded-Encrypted: i=1; AJvYcCWOPbLFWHP+3TDJnjK6yEY/inymv6ugKe5jRhQ7eSOtbXWpJc7ftD6yvHH8MDQ+SRDs2pK70PLGA80=@lists.infradead.org
X-Gm-Message-State: AOJu0YxmB/SSNVRyuKBz+Mo/hjwEw6MXC0EKjBMdvwdvsn3pjK4n7HuV
	kjmuGoEpqBWaqdXuOwlQZKxibzdyZUPpL1gRdntlfyas5/9ukZD4
X-Gm-Gg: ASbGncv4GkXNE0O3FQEGD3w8+gAAU+l/mtwR4MHGArCzIpT0pcY4IqjtiE20n5Km/CP
	U2WwEA4oQz8zQuBK2mIh7nduHFsvCzcxNiXLOWCkITJCc+rfz7c/NvJik7wDJosDJ/hgkhHbnhh
	hSFzqi0MLQ7oqRIWiymR7z2xoWCjV4MuVS9w8rxDhOSbgxL021DrGXH13df/hY84Qeua7zl7dnb
	9kdYcgKcZudH9mAWeHABASehVXJ8ok9Fe9CS1K3qwcbS2mU1KNIric6llPXVx0XQpTmKKt4xES0
	jCVPzvzQGjbH5BBWr3bAFM/kmRmsZDE1V5z7AQFOmQ8BANvvt3/FTuOv2SeBw3BiaRm8WGe7ctW
	lfNgnpsYNLl1797bkrXPldkY=
X-Google-Smtp-Source: AGHT+IFywsl9y7ebNfImSsuSeRCQjDn2pZoC89iOcbWE3Jn5XpbRxM2xF4kr9OnVwSO3zLjsCDSNow==
X-Received: by 2002:a05:600c:35d2:b0:43d:5ec:b2f4 with SMTP id 5b1f17b1804b1-43d437930eemr18264585e9.10.1742384520414;
        Wed, 19 Mar 2025 04:42:00 -0700 (PDT)
Received: from [192.168.1.105] (91-139-201-119.stz.ddns.bulsat.com. [91.139.201.119])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-395c7df33aasm20407235f8f.2.2025.03.19.04.41.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 19 Mar 2025 04:42:00 -0700 (PDT)
Message-ID: <295bd48c-940a-4944-ab3b-ab7cd46e4fef@gmail.com>
Date: Wed, 19 Mar 2025 13:41:58 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] phy: qcom: phy-qcom-snps-eusb2: Make repeater
 optional
Content-Language: en-US
To: Stephan Gerhold <stephan.gerhold@linaro.org>,
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
 bjorn.andersson@oss.qualcomm.com
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I
 <kishon@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Aleksandrs Vinarskis <alex.vinarskis@gmail.com>,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
References: <20250318-xps13-fingerprint-v1-0-fbb02d5a34a7@oss.qualcomm.com>
 <20250318-xps13-fingerprint-v1-1-fbb02d5a34a7@oss.qualcomm.com>
 <6yykvszzbhonc3dkwhva55arsdvp4hv4p2fo2vv6ftwr46httm@wnofgs4jaqaa>
 <Z9qd1GJ1418CbaOt@linaro.org>
From: Ivaylo Ivanov <ivo.ivanov.ivanov1@gmail.com>
In-Reply-To: <Z9qd1GJ1418CbaOt@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250319_044202_627983_E531882E 
X-CRM114-Status: GOOD (  21.78  )
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

On 3/19/25 12:35, Stephan Gerhold wrote:
> On Wed, Mar 19, 2025 at 12:20:07PM +0200, Dmitry Baryshkov wrote:
>> On Tue, Mar 18, 2025 at 10:22:56PM -0500, Bjorn Andersson via B4 Relay wrote:
>>> From: Bjorn Andersson <bjorn.andersson@oss.qualcomm.com>
>>>
>>> In a multiport configuration based on the SNPS eUSB2 PHY it's not
>>> necessary that all ports are connected to something.
>>>
>>> While this is allowed by the Devicetree binding, the implementation
>>> current fails probing for such PHYs, which also prevents the multiport
>>> controller from probing.
>>>
>>> The lack of repeater does not alter the fact that the PHY is there and
>>> attempts at describing only the used PHYs in Devicetree results in
>>> failures to initialize the USB controller.
>>>
>>> Make the repeater optional, to allow the these PHYs to be described in
>>> the DeviceTree and for the associated multiport controller to operate
>>> the other ports.
>>>
>>> Signed-off-by: Bjorn Andersson <bjorn.andersson@oss.qualcomm.com>
>>> ---
>>>  drivers/phy/qualcomm/phy-qcom-snps-eusb2.c | 10 +++++++---
>>>  1 file changed, 7 insertions(+), 3 deletions(-)
>>>
>>> diff --git a/drivers/phy/qualcomm/phy-qcom-snps-eusb2.c b/drivers/phy/qualcomm/phy-qcom-snps-eusb2.c
>>> index 1484691a41d59a7eaf257ef44300827c668bf7e0..8897d2072ccfcaa5b4a510c17761dcdeed5bad0f 100644
>>> --- a/drivers/phy/qualcomm/phy-qcom-snps-eusb2.c
>>> +++ b/drivers/phy/qualcomm/phy-qcom-snps-eusb2.c
>>> @@ -401,9 +401,13 @@ static int qcom_snps_eusb2_hsphy_probe(struct platform_device *pdev)
>>>  				     "failed to get regulator supplies\n");
>>>  
>>>  	phy->repeater = devm_of_phy_get_by_index(dev, np, 0);
>>> -	if (IS_ERR(phy->repeater))
>>> -		return dev_err_probe(dev, PTR_ERR(phy->repeater),
>>> -				     "failed to get repeater\n");
>>> +	if (IS_ERR(phy->repeater)) {
>>> +		if (PTR_ERR(phy->repeater) == -ENODEV)
>>> +			phy->repeater = NULL;
>>> +		else
>>> +			return dev_err_probe(dev, PTR_ERR(phy->repeater),
>>> +					     "failed to get repeater\n");
>> Can you use devm_of_phy_optional_get() or devm_phy_optional_get()
>> instead?
>>
> There is such a patch from Ivaylo already [1].
>
> @Ivaylo: Are you planning to re-spin that patch set?

Yes. I've spent the past week digging deeper into how my hardware works,
as well as improving the patchset.

>  Might be even worth
> putting that patch first / sending it separately, since Neil pointed out
> there that the bindings already have the repeater as non-required.

That's going to be... quite a bit of work. I have around 6-7 patches for this
driver alone, including moving the whole driver to ../, so moving this patch
to the front will be annoying.

Best regards,
Ivaylo

>
> Thanks,
> Stephan
>
> [1]: https://lore.kernel.org/linux-arm-msm/20250223122227.725233-6-ivo.ivanov.ivanov1@gmail.com/


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
