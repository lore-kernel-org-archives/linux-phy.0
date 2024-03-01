Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 57D09C5475B
	for <linux-phy@archiver.kernel.org>; Fri,  1 Mar 2024 18:31:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=TlYbbAtWUrWCtqnvGbGgyavhlLOHyNRher2OlAqhrTQ=; b=sQtdKie96TenQnY53UiWy215bI
	2Tuxslb1+d9651nFDJTuI4bW66/jajJh7ABetAApcbtH6ynLG2bcx+dAylKVxcaCIKkCJ1HRluoLa
	jYO8YKzSD2AY+nVsK3zr9brE/zs4G9usPaOt2N44wCPizlvQPMndpVAFHa0bSTK1EGGhotHv8iE+n
	kZ1rcrO7+8hzfPpYm4rbe3JmT2//nUS9vDHZSRia0XS+nDA93kUE3yS+77eC3enihc6INdvmgL4Vu
	CDjI8xJabcuJO0Sb3G/4mhbgDzyqxAuGykwGGvDcNyvRqUXaNs4elQUz2hmR/Urjyg0ptBh52IXuE
	3NsTvnxA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rg7fD-00000001XzU-3inr;
	Fri, 01 Mar 2024 18:31:19 +0000
Received: from mail-wm1-x331.google.com ([2a00:1450:4864:20::331])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rg7fB-00000001Xys-087o
	for linux-phy@lists.infradead.org;
	Fri, 01 Mar 2024 18:31:18 +0000
Received: by mail-wm1-x331.google.com with SMTP id 5b1f17b1804b1-412c3f4c6b9so10151685e9.0
        for <linux-phy@lists.infradead.org>; Fri, 01 Mar 2024 10:31:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1709317875; x=1709922675; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=00fDWV96hGzMlgHmADg+FHDT30+NNE+7RPj/2lJdLsA=;
        b=mz6eYqFGkb4utY5aX158h0iagqx43DxWQPyI4tM0J7DnMJZFvEAgHL3S+RoSdBgVAn
         cIqF5s1wvJSrgvkABFNA76SLs7h8hf0bNuAbBWtZyHVXW8S+eROXdQ6FDdmqRkLadFPd
         mUCAh2N94uTQ6s7Q3D7btalS51oHR7wIrpx5TWu3bPty3nEMxPdXCjyfyeVfbCeXXx5Z
         9VaB3hcT2pH7uNe4Z8z0dzGphNwWLQXL3lkavxIod2wiFtMgSBG+rcLlQWkPiBo6xhEs
         kUBdiVER6nIS67xrEi8flBPjIWG/8ng/PiWBTCdLSOjcR6J+jI0eM35cuZVw5oQHudP0
         V82w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709317875; x=1709922675;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=00fDWV96hGzMlgHmADg+FHDT30+NNE+7RPj/2lJdLsA=;
        b=Ka9yQdVDGB+jopK/L6ONemrVdBeTrSc0B0JD4simqGLEUWsRvUMXxcGwAreMkd6A1n
         jtUN1Msc2IqeeFrX/uTnYfRPt2gVielyvPSynDrIJEe476iAkAPWadFbiBh4cTfwdJgP
         fLox2SwATkeX85agwLUborSXyzVbvNIXBjKNU6SnHcc9XdUlUNir6wF5HhGIB0VroiH5
         vovSUg995ZMMjyQf9SIaz12Oae3OetLTeH5O4N+kMubmqpaAe2OBzZQG6oTaWtUTTIPj
         88HEFb2NGKNQYaFpEIKNjLrENs+wjqIagtXQUZ3lG5f6+/M8AmZFwo8MxFVcne5jTm3I
         zkGA==
X-Forwarded-Encrypted: i=1; AJvYcCWPL3ds3EPQw8yKCcO0bnAZcwta7aKkjZaUe/mo6X9B7KkXnvs0tYb2xdRrz7MxHA2zuQHU5eiK2XZW9o9ewX+NnlU0owV1jr6SC8pa1w==
X-Gm-Message-State: AOJu0YzF6bVamJ6gZKBrtRZXDIEx2n+z8fhef3SkVmEt+IueGU6YEwWs
	Bo73ABJimN98UynJ2+y1tTNQTEFsHIf8u1hRZfO8izrArX1ymBvduPsO5SCr0zY=
X-Google-Smtp-Source: AGHT+IFEic06454DIPjHdGIhjkTFcQQke8zNWqIpZhtgGWNUnK5McNBCaU6INJ6zvLIZyqlDxtOTcw==
X-Received: by 2002:a05:600c:5105:b0:412:b0ef:22b1 with SMTP id o5-20020a05600c510500b00412b0ef22b1mr2001771wms.4.1709317874803;
        Fri, 01 Mar 2024 10:31:14 -0800 (PST)
Received: from ?IPV6:2a01:e0a:982:cbb0:7f8a:cf96:378:4490? ([2a01:e0a:982:cbb0:7f8a:cf96:378:4490])
        by smtp.gmail.com with ESMTPSA id p26-20020a05600c205a00b00412b62f6e35sm8342697wmg.15.2024.03.01.10.31.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 01 Mar 2024 10:31:14 -0800 (PST)
Message-ID: <4ec8a486-285b-40f7-8501-28550a9f83b9@linaro.org>
Date: Fri, 1 Mar 2024 19:31:13 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH RFT 7/7] arm64: dts: qcom-mode-switch: allow 4 lanes for
 DisplayPort and enable QMP PHY mode-switch
To: Bjorn Andersson <andersson@kernel.org>
Cc: Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20240229-topic-sm8x50-upstream-phy-combo-typec-mux-v1-0-07e24a231840@linaro.org>
 <20240229-topic-sm8x50-upstream-phy-combo-typec-mux-v1-7-07e24a231840@linaro.org>
 <jfwskyt3wllpf33ceeibrodorsfmhctfulfkzpkgmjikzbr63n@f4llf7wcmyxi>
Content-Language: en-US, fr
Autocrypt: addr=neil.armstrong@linaro.org; keydata=
 xsBNBE1ZBs8BCAD78xVLsXPwV/2qQx2FaO/7mhWL0Qodw8UcQJnkrWmgTFRobtTWxuRx8WWP
 GTjuhvbleoQ5Cxjr+v+1ARGCH46MxFP5DwauzPekwJUD5QKZlaw/bURTLmS2id5wWi3lqVH4
 BVF2WzvGyyeV1o4RTCYDnZ9VLLylJ9bneEaIs/7cjCEbipGGFlfIML3sfqnIvMAxIMZrvcl9
 qPV2k+KQ7q+aXavU5W+yLNn7QtXUB530Zlk/d2ETgzQ5FLYYnUDAaRl+8JUTjc0CNOTpCeik
 80TZcE6f8M76Xa6yU8VcNko94Ck7iB4vj70q76P/J7kt98hklrr85/3NU3oti3nrIHmHABEB
 AAHNKk5laWwgQXJtc3Ryb25nIDxuZWlsLmFybXN0cm9uZ0BsaW5hcm8ub3JnPsLAkQQTAQoA
 OwIbIwULCQgHAwUVCgkICwUWAgMBAAIeAQIXgBYhBInsPQWERiF0UPIoSBaat7Gkz/iuBQJk
 Q5wSAhkBAAoJEBaat7Gkz/iuyhMIANiD94qDtUTJRfEW6GwXmtKWwl/mvqQtaTtZID2dos04
 YqBbshiJbejgVJjy+HODcNUIKBB3PSLaln4ltdsV73SBcwUNdzebfKspAQunCM22Mn6FBIxQ
 GizsMLcP/0FX4en9NaKGfK6ZdKK6kN1GR9YffMJd2P08EO8mHowmSRe/ExAODhAs9W7XXExw
 UNCY4pVJyRPpEhv373vvff60bHxc1k/FF9WaPscMt7hlkbFLUs85kHtQAmr8pV5Hy9ezsSRa
 GzJmiVclkPc2BY592IGBXRDQ38urXeM4nfhhvqA50b/nAEXc6FzqgXqDkEIwR66/Gbp0t3+r
 yQzpKRyQif3OwE0ETVkGzwEIALyKDN/OGURaHBVzwjgYq+ZtifvekdrSNl8TIDH8g1xicBYp
 QTbPn6bbSZbdvfeQPNCcD4/EhXZuhQXMcoJsQQQnO4vwVULmPGgtGf8PVc7dxKOeta+qUh6+
 SRh3vIcAUFHDT3f/Zdspz+e2E0hPV2hiSvICLk11qO6cyJE13zeNFoeY3ggrKY+IzbFomIZY
 4yG6xI99NIPEVE9lNBXBKIlewIyVlkOaYvJWSV+p5gdJXOvScNN1epm5YHmf9aE2ZjnqZGoM
 Mtsyw18YoX9BqMFInxqYQQ3j/HpVgTSvmo5ea5qQDDUaCsaTf8UeDcwYOtgI8iL4oHcsGtUX
 oUk33HEAEQEAAcLAXwQYAQIACQUCTVkGzwIbDAAKCRAWmrexpM/4rrXiB/sGbkQ6itMrAIfn
 M7IbRuiSZS1unlySUVYu3SD6YBYnNi3G5EpbwfBNuT3H8//rVvtOFK4OD8cRYkxXRQmTvqa3
 3eDIHu/zr1HMKErm+2SD6PO9umRef8V82o2oaCLvf4WeIssFjwB0b6a12opuRP7yo3E3gTCS
 KmbUuLv1CtxKQF+fUV1cVaTPMyT25Od+RC1K+iOR0F54oUJvJeq7fUzbn/KdlhA8XPGzwGRy
 4zcsPWvwnXgfe5tk680fEKZVwOZKIEuJC3v+/yZpQzDvGYJvbyix0lHnrCzq43WefRHI5XTT
 QbM0WUIBIcGmq38+OgUsMYu4NzLu7uZFAcmp6h8g
Organization: Linaro Developer Services
In-Reply-To: <jfwskyt3wllpf33ceeibrodorsfmhctfulfkzpkgmjikzbr63n@f4llf7wcmyxi>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240301_103117_133394_15B04D6A 
X-CRM114-Status: GOOD (  20.05  )
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
Reply-To: neil.armstrong@linaro.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On 01/03/2024 04:00, Bjorn Andersson wrote:
> On Thu, Feb 29, 2024 at 02:07:07PM +0100, Neil Armstrong wrote:
>> Allow up to 4 lanes for the DisplayPort link from the PHYs to the Controllers
>> and allow mode-switch events to the QMP Combo PHYs.
>>
> 
> Please adjust $subject and commit message to suite the x13s.dts...

Sure I realized this after sending the patches....

> 
> 
> With this series I'm reaching 4k@60 on my X13s (with some difficulty due
> to current hotplug issues in the DP driver) - but 4-lane DP works, and
> so does 2-lane combo.
> 
> I tested switching between DP-only and a USB device, this worked fine a
> few (3-4) times, after which the USB device stopped showing up. The DP
> display continued to work nicely and the debug prints from the driver
> indicates that we're moving back and forth between the modes...
> 
> The problems I had when trying to implement this previously, with the
> device crashing on disconnect have not been seen, across 20+
> attempts.

Greatm nice this was fixed!

I also experienced USB issue after a few connect/disconnects, it seems that messing
with the USB PHY doesn't make DWC3 very happy, not sure how we could actually fix that.

Thx for testing!

Neil

> 
> Regards,
> Bjorn
> 
>> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
>> ---
>>   arch/arm64/boot/dts/qcom/sc8280xp-lenovo-thinkpad-x13s.dts | 6 ++++--
>>   1 file changed, 4 insertions(+), 2 deletions(-)
>>
>> diff --git a/arch/arm64/boot/dts/qcom/sc8280xp-lenovo-thinkpad-x13s.dts b/arch/arm64/boot/dts/qcom/sc8280xp-lenovo-thinkpad-x13s.dts
>> index a0fdef55a40a..6c73e0fc001f 100644
>> --- a/arch/arm64/boot/dts/qcom/sc8280xp-lenovo-thinkpad-x13s.dts
>> +++ b/arch/arm64/boot/dts/qcom/sc8280xp-lenovo-thinkpad-x13s.dts
>> @@ -556,7 +556,7 @@ &mdss0_dp0 {
>>   };
>>   
>>   &mdss0_dp0_out {
>> -	data-lanes = <0 1>;
>> +	data-lanes = <0 1 2 3>;
>>   	remote-endpoint = <&usb_0_qmpphy_dp_in>;
>>   };
>>   
>> @@ -565,7 +565,7 @@ &mdss0_dp1 {
>>   };
>>   
>>   &mdss0_dp1_out {
>> -	data-lanes = <0 1>;
>> +	data-lanes = <0 1 2 3>;
>>   	remote-endpoint = <&usb_1_qmpphy_dp_in>;
>>   };
>>   
>> @@ -1112,6 +1112,7 @@ &usb_0_qmpphy {
>>   	vdda-phy-supply = <&vreg_l9d>;
>>   	vdda-pll-supply = <&vreg_l4d>;
>>   
>> +	mode-switch;
>>   	orientation-switch;
>>   
>>   	status = "okay";
>> @@ -1149,6 +1150,7 @@ &usb_1_qmpphy {
>>   	vdda-phy-supply = <&vreg_l4b>;
>>   	vdda-pll-supply = <&vreg_l3b>;
>>   
>> +	mode-switch;
>>   	orientation-switch;
>>   
>>   	status = "okay";
>>
>> -- 
>> 2.34.1
>>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
