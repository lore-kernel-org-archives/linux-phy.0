Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CAEE9CAC5B8
	for <linux-phy@archiver.kernel.org>; Thu,  2 Oct 2025 07:26:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ZAr3LtFG6TegO2dLkzR6QPv98x7BFlwX//gT1wGj1pY=; b=UdV0f8ge+eTyFSov3T1iCNdiod
	+MIpO4ih6yci9xajIBRiqGPXj3CucOlJM0dfgMWIjgRg681p599A4Dr/eBo4zdXYF7R1sPiDxtpN5
	wCwORe4PUHX5VnoNu5WaROf76hzbH1lhG0u69PtvqaPsGq3bU9n+E8YDNiFZXNfAwXWkMV6IZO8GG
	Ox9lalv7a5XIES7PBgllKXOmxYn6oc3z0UqxdDiraxfEWMD4PjsRZSdVRiWCs+YihDAgmFlv/uIW+
	ou7ZROOJvm5yvf9GRcNMoyg5p8SMgHJSuVcA+DygblQIUb078vp5Lj5IsNm7+kOb/CbsZmdk4k/5a
	Na3CYBww==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v4DiI-00000009mtt-1URs;
	Thu, 02 Oct 2025 07:26:54 +0000
Received: from mail-wr1-x430.google.com ([2a00:1450:4864:20::430])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v4DiF-00000009mt0-1zrv
	for linux-phy@lists.infradead.org;
	Thu, 02 Oct 2025 07:26:52 +0000
Received: by mail-wr1-x430.google.com with SMTP id ffacd0b85a97d-3ee15505cdeso483341f8f.0
        for <linux-phy@lists.infradead.org>; Thu, 02 Oct 2025 00:26:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1759390009; x=1759994809; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=OgFAvhDVaoxAtr2iADn6RVzu91lOh6v/w6Asw54CiCk=;
        b=hnz4swh5dlFFf2TcR5tbzEY/4J8T6qOirQGxDDdy3UMwF7UbK1DjCgaPCJMV/YL5yw
         6UL96JsriF9Yc/KKIOaRKzyqDwklZIzBwtNfnkwe/GzubWAlj5rd4km6pR5PEqV0QMkb
         U76MkK1ogvXmUHDxPkIt2iM7FN21F3lSHrb8CamAQVveWLiSmGn3zrP7HBi99xfOPM2o
         d+I0BMSf4f7okyb3QM2TvVE90WLJK0ruVWnuP/bmiawVH2Ml+btDwMRc8Uqtr7Kk7NSY
         RMr9MJferIBx6cojEm8NP0Vs75R3zTsSC27s5tajjNG4QMuUOYmrRTG8dgdKokGn1qJr
         j1lg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759390009; x=1759994809;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=OgFAvhDVaoxAtr2iADn6RVzu91lOh6v/w6Asw54CiCk=;
        b=eOdx+lLmMzQ/dxVgfoxEIq9uedE7b0LWWVYLpLB9OoTsyO5z6lFceWtDO6qCb5I29y
         1khWh5GlIldTZlJOkvYrgN6349HPhb0utqu0BUi8Mg2uv8BQiNvTJAGRWWt031QTOPpJ
         7dUTdI2cCEqRNeT5TNr6N/cJvpxWrRAXzUz7DxkJneid6saShe8dV17ka9x+O9e+Y5ni
         Tmk6JfGAcnqqBjSSXoKq7pkKoQe3pfClTy8r7pjikX4Y6O2WfnZBZzxC7DvuNqMemWme
         9ZiEMED1GT3zOxwY33DL9p9pTra+4jkN+O9iQIrdtyDBC4R2wTB3p1eR8UXWko3OC8qe
         W5pQ==
X-Forwarded-Encrypted: i=1; AJvYcCVG36K6Z5T476afCpiu+5vndiDnmN5whA3A2n+FiWyTw9FNQ81PQZEHvf5feAOF6S6v0/G3rUalDOM=@lists.infradead.org
X-Gm-Message-State: AOJu0YzKxkqhXBH/VATDsJ1wHkTjyPce6ziTjRB3DOwnsNK54InrRrjV
	BQEipbhlF0AcIsAoDsYTzqH0xsvCxzuB1xYuypJDH9D3VHy/HGVLErkQ0JSdT7foZKk=
X-Gm-Gg: ASbGncvMcP9zu4/TQcX+sz6KjDTAHWpGmwbzjuGAlMMEXBMVnwGPWGcOutpqIM/dYs/
	6hixt5aJAuRvS96H+zCtheCPrrWrgHXAYNndJVl54o8KtqTo2zwny+gcnNr8ti1No+rm2azPqWu
	IBevp6cjGFgJtSxso2T6sRSWQlb9oPjEBnFj9GDEay3ce4neZBVkg4E9TSlOFZyMap0jTdsKsae
	ytfe1/1Gichv/OR9hMnqI2uqYThhz0p/1G+A+0P9cugmtbMPKS/JjhWyoMRDyuRt10bdC7GOy2E
	ESo5aIOlLx4hfGgNtqBAgPRb4zVUAbntEOex3jfhitau6LezOxXjMvVGzMbQzV10lyf9eSzQd7w
	soB+1GpiHmjuCCnqGj8PUu7NwHxH35aBsNWKJc7dt6WSktMPlPGc55qK1IjeU45C/H6GQOWY2eE
	Tsiw5uOcpXuVP/OZZQ7W5NfLJBNuob7UVh6qCjVg==
X-Google-Smtp-Source: AGHT+IFteDch3BVt0bDc3AgrulJS8q/xxMOCOQx7fQ+JlPLxSOHm9OmUPhVp7LLdzvzStKCXdc/FyA==
X-Received: by 2002:a05:6000:144f:b0:403:8633:b7e3 with SMTP id ffacd0b85a97d-4255d2b744cmr1489346f8f.30.1759390008988;
        Thu, 02 Oct 2025 00:26:48 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:3d9:2080:9092:34c0:f6b9:8584? ([2a01:e0a:3d9:2080:9092:34c0:f6b9:8584])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4255d8ab8fdsm2374781f8f.15.2025.10.02.00.26.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 02 Oct 2025 00:26:48 -0700 (PDT)
Message-ID: <58d5f774-f0a5-419b-bea6-118cb98c944e@linaro.org>
Date: Thu, 2 Oct 2025 09:26:47 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH] dt-bindings: phy: qcom,sc8280xp-qmp-usb43dp: do not
 reference whole usb-switch.yaml
To: Rob Herring <robh@kernel.org>,
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I
 <kishon@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
 Krzysztof Kozlowski <krzk@kernel.org>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20250902-topic-sm8x50-fix-qmp-usb43dp-usb-switch-v1-1-5b4a51c8c5a8@linaro.org>
 <20250905175533.GA1000951-robh@kernel.org>
 <nwtt76n4t7tlf26ex47wrot7g7nldtmavbzgwmluls3egamjsi@mkomopb6fjh6>
 <20251001163139.GA1877961-robh@kernel.org>
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
Organization: Linaro
In-Reply-To: <20251001163139.GA1877961-robh@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251002_002651_561398_ACE3370F 
X-CRM114-Status: GOOD (  22.86  )
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
Reply-To: Neil Armstrong <neil.armstrong@linaro.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On 10/1/25 18:31, Rob Herring wrote:
> On Tue, Sep 30, 2025 at 10:10:25PM +0300, Dmitry Baryshkov wrote:
>> On Fri, Sep 05, 2025 at 12:55:33PM -0500, Rob Herring wrote:
>>> On Tue, Sep 02, 2025 at 06:10:05PM +0200, Neil Armstrong wrote:
>>>> Both bindings describe a different layout of the ports properties,
>>>> leading to errors when validating DT using this PHY bindings as
>>>> reported by Rob Herring.
>>>>
>>>> Reported-by: Rob Herring <robh@kernel.org>
>>>> Closes: https://lore.kernel.org/all/175462129176.394940.16810637795278334342.robh@kernel.org/
>>>> Fixes: 3bad7fe22796 ("dt-bindings: phy: qcom,sc8280xp-qmp-usb43dp: Reference usb-switch.yaml to allow mode-switch")
>>>> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
>>>> ---
>>>>   .../devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml    | 8 +++++---
>>>>   1 file changed, 5 insertions(+), 3 deletions(-)
>>>>
>>>> diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
>>>> index c8bc512df08b5694c8599f475de78679a4438449..5005514d7c3a1e4a8893883497fd204bc04e12be 100644
>>>> --- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
>>>> +++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
>>>> @@ -73,8 +73,11 @@ properties:
>>>>       description:
>>>>         See include/dt-bindings/phy/phy-qcom-qmp.h
>>>>   
>>>> -  mode-switch: true
>>>> -  orientation-switch: true
>>>> +  mode-switch:
>>>> +    $ref: /schemas/usb/usb-switch.yaml#properties/mode-switch
>>>> +
>>>> +  orientation-switch:
>>>> +    $ref: /schemas/usb/usb-switch.yaml#properties/orientation-switch
> 
> Looking at this again, this isn't even correct and I don't think it
> works. It's missing a '/' and  should be ...#/properties/... to be a
> valid json pointer.
> 
> I thought we checked this...
> 
>>>
>>> This is a pattern we try to avoid with references at a property level. I
>>> prefer you make port and ports not required in usb-switch.yaml.
>>
>> But this solution is also not perfect. E.g.
>> Documentation/devicetree/bindings/phy/fsl,imx8mq-usb-phy.yaml should
>> only allow the orienttion-switch property, while using
>> allOf:$ref:usb-switch.yaml allows all three (orientation-switch,
>> mode-switch, retimer-switch).
> 
> That can be handled like this:
> 
> $ref: usb-switch.yaml
> properties:
>    orientation-switch: true
> additionalProperties: false
> 
> Though if you need unevaluatedProperties for some other reason, then
> that won't enforce it and it's just documentation. In that case, then
> perhaps usb-switch.yaml is not the right granularity and should be split
> up.

I did a split up at:
https://lore.kernel.org/all/20250930-topic-sm8x50-fix-qmp-usb43dp-usb-switch-v1-1-060568de9538@linaro.org/

> 
> I put this into the category of "this is the least of our problems". I'm
> not that interested in enforcing what common properties a device uses or
> not. It's undocumented properties I'm worried about or lack of
> constraints (on reg, clocks, interrupts, etc.).

Thanks for the comment, I'll have a look if this would work.

Thanks,
Neil

> 
> Rob


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
