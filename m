Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 50360CA0EED
	for <linux-phy@archiver.kernel.org>; Fri, 22 Aug 2025 21:48:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=xLR7DjsdybydLyvtqzgIOigux0THUrr+QOw+r6RmrFI=; b=fFlvaGoFnpoQTC7JrHaUABllsG
	b3EO59Lk5Wbg1qXHYdd+RMvdHzylEtLyibCRst4iDsxmlbZIVYpKG7zs2vMiMbUeGYd523MsMiF5J
	YvLnzedMOXjO8W7Xmad7eHWaBfPmtvBgBxagiw6or+aMDszL42UglSUo4uqSeMomk8Myci73KIXYG
	f2F8vPUNjZ2YTF/4Jt1uCF5PU4D/xkkJBXLvGZmTWdQWxlmllf4qRBzycx0QMhcSzsfAmSqkEPfPi
	G1CvsA0q+LJZ7IX/CSbKiit++81sSXa83d7gpJWjSzlaACB6GDRu1uwhVKL6bvWSQixH3oj0Of+S0
	Ou5ZTNZw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1upZcZ-00000003Yvl-1xTH;
	Fri, 22 Aug 2025 21:48:27 +0000
Received: from mail-wm1-x32d.google.com ([2a00:1450:4864:20::32d])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1upPXM-00000002GXf-2M8O
	for linux-phy@lists.infradead.org;
	Fri, 22 Aug 2025 11:02:25 +0000
Received: by mail-wm1-x32d.google.com with SMTP id 5b1f17b1804b1-45b4a25ccceso11288495e9.3
        for <linux-phy@lists.infradead.org>; Fri, 22 Aug 2025 04:02:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1755860543; x=1756465343; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=EURP07SdmZQW2KWbnKhFoZWKzJWus82bAXE5Cr6kqT8=;
        b=Qpame0ejgthLaVRl8b5d4K1zAVuc/F1TujUf3IH7sWtinOoCvF0hlntgStFGnnIclT
         dyA8DeVePHNAsmjzqjC9aC3aXc0BauV10H76f+V4uqTaJZbKXgjQP43RMRV0p1UbrsOv
         +D9npA+xCAn9SpCRoDJG8WbeiCl2bgujDPbMPce79B4Sa6X3m3WGT2XVAqp5XCqzuu7L
         uUsJJXfFUQBw/O+CL17twtR260pCFKO74SiFsI3/OX9fU3VmV4wiEa/hc6dQtJiMYaGY
         bivWxbQIA/L8cVpWKSBJLJoafkseINHZdLrJVPIins4mM6J5HmX2E3KVdqgCqTXfWSTP
         /V+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755860543; x=1756465343;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=EURP07SdmZQW2KWbnKhFoZWKzJWus82bAXE5Cr6kqT8=;
        b=h1uUAiiDe4bVG2XHjA0N2D+6Xp/6Pg1ccs4znlpT1J1AaA45ys2Ac0WHfQ2gCiqmcb
         f0M6HTf0PwhYTjC0o2VM5PSOGHRuo7thCP1Rcx3ZPV3rVqC5uH7nWoMdZxcqkol4LZ5J
         CywW8wBh/dnwE5A/GEAteiIE1JtW0RqcevPXN0RMARrM3U7fQaxSRPo4NnDFTNpsS8cw
         yrfLdePmpCQCogAcwCO55bxaQ1wq1r7HvJy4V6PGoMx5KJbxg5gULpEd1JAqKQXwPUmN
         MzjmYd7T77toE0aeXVMsb48/IxKBb96uwLp7upz5R+NjCzEyx/UhWD+HLW6ctyqNqHdz
         0Mog==
X-Forwarded-Encrypted: i=1; AJvYcCUQRCmymf9Cn6T7nkmsTC3mvvB0lu4i2BZT8PDamqu9vkMJwzMGTs4qNE9YYJsPrA+0IGbynHbZ8SU=@lists.infradead.org
X-Gm-Message-State: AOJu0YwIJdGK+f2zGIAkHXPJk5lAWmyDWEbMAdbQ7Re4GG0WwotLrsH4
	cJtP3QyxEzC0j7y1EhXhr1JVUPDL8fMmjZ8GqU6c1cZ8SJKFU0hrTOffxEahgnZyWlo=
X-Gm-Gg: ASbGncu6SGXashLEAzVWlR9/p3YkmB7Kfd78lfVNBo4If8ChKSfvsROzcjBb6V4sIrW
	1sZuBR0CSUqaNy4iixTn9Zh1SvXp1T8YLOcHojQtkBPpHpcLeWOIcO86Sy+U2ULf1hPesZgU2Xn
	HqkcDPMG/jVNZWpzeR3Inv31ad6m3dJ3FchNgH8q3F4WMvMC+Pw38i9QQLsvzaKSKazERPZwVON
	HGWRxOP8wFXp1N/UO2OhZwtGrn0PCbef3CqOD9QPd+mcdiUCsrZPSPUWO4RZ6wyJLT0sDFvLi0A
	RRI8QaIk6yf6KcSS/9oPdtoUmsbxUlGudjGxgraUxRagMQlXdzlANsNjPLh0CkNxzQ/GmH2byY6
	3RSUiuUmQxbUF8HMueFfCc1N0jK8lKaJmPUexuQmoEdMqVFzUHm6/br6FEayPcgpFxkyu8AUFRQ
	o=
X-Google-Smtp-Source: AGHT+IE0Dex+3o6InK/YXUiV3XUtariytJViHjAa7y8QjqFdVq4V1b34qxJ2Y7CfjNPPeV8UpIYoYQ==
X-Received: by 2002:a05:600c:4fcd:b0:455:f187:6203 with SMTP id 5b1f17b1804b1-45b517d861fmr18589245e9.27.1755860542716;
        Fri, 22 Aug 2025 04:02:22 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:3d9:2080:3dd7:7361:c101:6a77? ([2a01:e0a:3d9:2080:3dd7:7361:c101:6a77])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-45b50dd02ebsm33068145e9.9.2025.08.22.04.02.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 22 Aug 2025 04:02:22 -0700 (PDT)
Message-ID: <018751b8-8b9c-4966-94e2-f3ec8625f87d@linaro.org>
Date: Fri, 22 Aug 2025 13:02:21 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH RFC 1/3] dt-bindings: phy: qcom,sc8280xp-qmp-usb43dp-phy:
 Document default phy mode
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I
 <kishon@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20250821-topic-x1e80100-hdmi-v1-0-f14ad9430e88@linaro.org>
 <20250821-topic-x1e80100-hdmi-v1-1-f14ad9430e88@linaro.org>
 <yc7ceoq3bn3lkxdwkrk64ecubej64vblpwlwzyj5cuep2wmjui@nln2t2yicu7o>
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
In-Reply-To: <yc7ceoq3bn3lkxdwkrk64ecubej64vblpwlwzyj5cuep2wmjui@nln2t2yicu7o>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250822_040224_731583_FDBEC10E 
X-CRM114-Status: GOOD (  20.98  )
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

On 22/08/2025 12:57, Dmitry Baryshkov wrote:
> On Thu, Aug 21, 2025 at 03:53:26PM +0200, Neil Armstrong wrote:
>> The QMP USB3/DP Combo PHY hosts an USB3 phy and a DP PHY on top
>> of a combo glue to route either lanes to the 4 shared physical lanes.
>>
>> The routing of the lanes can be:
>> - 2 DP + 2 USB3
>> - 4 DP
>> - 2 USB3
>>
>> And the layout of the lanes can be swpped depending of an
>> eventual USB-C connector orientation.
>>
>> Nevertheless those QMP Comby PHY can be statically used to
>> drive a DisplayPort connector, DP->HDMI bridge, USB3 A Connector...
>>
>> But if a 4lanes DP->HDMI bridge is directly connected to the
>> QMP Comby PHY lanes, in the default routing 2 or the 4 lanes would
>> probbaly be USB3, making the DP->HDMI bridge non functional.
>>
>> Add a property to hint in which layout mode the QMP Comby PHY
>> should be as startup.
>>
>> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
>> ---
>>   .../bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml         | 13 +++++++++++++
>>   1 file changed, 13 insertions(+)
>>
>> diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
>> index c8bc512df08b5694c8599f475de78679a4438449..129475a1d9527733e43ded5a38aad766f9810fe7 100644
>> --- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
>> +++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
>> @@ -76,6 +76,19 @@ properties:
>>     mode-switch: true
>>     orientation-switch: true
>>   
>> +  qcom,combo-initial-mode:
>> +    description:
>> +      Describe the initial mode of the Combo PHY configuration.
>> +      The Combo PHY is a wrapper on top of a DP PHY and an USB3 PHY,
>> +      sharing the same SuperSpeed lanes with either DisplayPort over
>> +      the 4 lanes (dp), USB3 on a pair of lanes (usb3) or both
>> +      technologies in a 2+2 configuration (usb3+dp) as default.
> 
> SPecifying this as an initial mode means that it can be switched later.
> Should we generalize this and desribe it as bus-type (from
> video-interfaces.yaml) and allow it to be present only if there is no
> mode-switch property?

I was not sure about that, and yes we should do that instead but I'm not
sure about how.

bus-type sounds great, but the numbering doesn't match so I was thinking instead
something like phy-type with a string or use the numbers from include/dt-bindings/phy/phy.h

The thing is, do we want to keep the dual dp+usb3 as static ? I think it's very possible
a board would connect the combo phy to an USB3 A connector and a 2lanes DisplayPort connector.

Neil

> 
> 
>> +    default: usb3+dp
>> +    enum:
>> +      - usb3+dp
>> +      - usb3
>> +      - dp
>> +
>>     ports:
>>       $ref: /schemas/graph.yaml#/properties/ports
>>       properties:
>>
>> -- 
>> 2.34.1
>>
> 


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
