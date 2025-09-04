Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6BEADCA1015
	for <linux-phy@archiver.kernel.org>; Thu,  4 Sep 2025 06:51:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:From:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=k+zGLKVblOt5NieQXFG68DTY5c2OulF04fXeSpqEP+Q=; b=QTIbfQ/LWgHyX1
	I1l/GFoxNpK87iIxUg/rpaSR7CNjH5vUY6vHzgJokXUVg2I9JCri5sHhUbHkEm65Aol37lrZ7o6IM
	H6aCtgvHTekuoxMac9/T3elYqIQ/bLiUVZqikJyVHbljn/VM9UDk1sgFWcGeoRdI8QUMb2ObRZwxb
	51KHw6MW+RtlFgg7J0nFz2FE/EiQHalCSud2Dia2mAJz86DpxgYbEzNcN2GtwpQl9XzyH7zO+vo9U
	3w8EgnFAOnzuJIZ0hDOZ8R7SFa7Iwq/hhFvP3gk8tp5TM7zYb/CHWIZxg6j4AhoFvdncY20qvHPK5
	9xHp/tFR+NmgaQysFjMA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uu3p5-00000009eb8-0mWD;
	Thu, 04 Sep 2025 06:51:55 +0000
Received: from mail-ej1-x62f.google.com ([2a00:1450:4864:20::62f])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uu3p2-00000009eaL-3pL4
	for linux-phy@lists.infradead.org;
	Thu, 04 Sep 2025 06:51:54 +0000
Received: by mail-ej1-x62f.google.com with SMTP id a640c23a62f3a-afcb7ab87ffso9395266b.3
        for <linux-phy@lists.infradead.org>; Wed, 03 Sep 2025 23:51:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1756968711; x=1757573511; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :references:cc:to:from:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=CdjOlgNh/y7eLo86RUzv7Bt8tBIqvVaGzK6r9fvl2iQ=;
        b=kDT38yvohaOia6nwlAyaOEaLovd2NuBTBt+MPJrjR0RsEqnj9oNbee9RPuwe8UZbk+
         LE6YNZ8as5LWZtF1l3VkTtqSNy9QxoJ3R7h9xwHydSSusJtCdQuiUuWbaclZR3HCGLGx
         JYldBrvXSPWK5OflbrWnDjPB5HPD8LIZ7DUUSKgC17N0OI01YDacF4TBBg9AHZUTVsTw
         wVb+4ylmsyRjzLfp8qn4H8lsmXMi/IZxPUK+x2D1fB9SabllbGT5q/Wmc2i8GkJU0Pnp
         LixRAp7ZWAurzgqmoDjIzZHAAJf7Xqjzo0rrcs4cycIvIy3m+nOq+q3HJ4u0s6FkGVQx
         jHJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756968711; x=1757573511;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :references:cc:to:from:subject:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=CdjOlgNh/y7eLo86RUzv7Bt8tBIqvVaGzK6r9fvl2iQ=;
        b=PlSIUGKstNExCwIUhVS6AePQHJpJd5Uznw9Es5dLxc2lpVWQuSsiOCAZgtjAjTO20F
         APsDjNMruSVV/EqnQTx8MR8RkkXulR6Ts25D6b8zD14aHrs8bqfEF8vhYWixFzPwcYnf
         mU7gH+4/VeJenWwMJJL8qzkLXXtICMD1IGw1QlOM1lgjELx3M70SL8sBAImK1zVoupIb
         R+GVLocBPSEAOcH3lCIRZdKmREgVRO4Ccmy5XWxFDw+H2PSrULRGes5WAy5ssbNIl8ru
         TcAhkcWcIAAc+LuhzXlYrmFpezT0oVJs8EJTfDcBluYw9QXgjgbpK+RYJSMol254x6DI
         /D9w==
X-Forwarded-Encrypted: i=1; AJvYcCUXXzq37b+DwoBzkPP3nVwAriNrFetuD1rG19i/UlL3eAINev5edria2KagpK8ark8c68n50SjYvBY=@lists.infradead.org
X-Gm-Message-State: AOJu0Yzb+MgwcOU3R/evfPCX0WDrWl1GGseiTLf8ZItuCIsJEGzgYFdh
	diVZsBK95nF5XAEHJX12ZnD6dK8DdSUUm2AgqZBILXn1GqQDigPxuRLkyqPaiqp9m2Q=
X-Gm-Gg: ASbGncvT4pGB7n184wW7PiiYRld63TJc9CyACPX/b00yG5suq9KHdqC5l5DjdDToNcr
	QHJG/Xkd786Q8xl1XRyZj8Zmkngej/TcgRPvXOODk3/Arm80XzkK8U9kwboLbB/fFshW8RL7lA0
	3LQAeLH0v8jWRqRkwIglNYYkB4i28H01aV/BeNWiPC8QaZTcZSiooky6xoUTKgC3G8tLdS0C726
	A7C8slnAx+M/014fsm3bishL8XDCe5N+FlTcQIC0s81vd3RYUCPmjsO1Wn9gK7OH1704mA8eVc/
	RsYfc8+ysBMZRlmFFwXPH3IsPUtHBwc1MaaLOkDk5wOn55AIW5ICvaoc9WEUGh4u9am53YKbBBG
	GBjcFF/8+ts69dhdleF6XkhG9aUCGKCCKy4bAKEDV2cgOJ+1HYC+tXQ==
X-Google-Smtp-Source: AGHT+IHmdmBdwywisUEuGkl8Y4YRksf5bRCeh9RSJ2PP2a1QEuIml1vKP+r0gUO5VROTDRi+NY5XOw==
X-Received: by 2002:a17:907:e8d:b0:b04:79ed:73aa with SMTP id a640c23a62f3a-b0479ed8b38mr125555866b.1.1756968711268;
        Wed, 03 Sep 2025 23:51:51 -0700 (PDT)
Received: from [192.168.1.29] ([178.197.219.123])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b0416e878a2sm1073819566b.95.2025.09.03.23.51.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 03 Sep 2025 23:51:50 -0700 (PDT)
Message-ID: <49a1ed5b-2afd-46b5-b5b1-74dd82dae95b@linaro.org>
Date: Thu, 4 Sep 2025 08:51:49 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/3] dt-bindings: phy: qcom-edp: Add missing clock for
 X Elite
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Abel Vesa <abel.vesa@linaro.org>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Dmitry Baryshkov <lumag@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>,
 Sibi Sankar <quic_sibis@quicinc.com>,
 Rajendra Nayak <quic_rjendra@quicinc.com>
Cc: Johan Hovold <johan@kernel.org>, Taniya Das <quic_tdas@quicinc.com>,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 stable@vger.kernel.org
References: <20250903-phy-qcom-edp-add-missing-refclk-v2-0-d88c1b0cdc1b@linaro.org>
 <20250903-phy-qcom-edp-add-missing-refclk-v2-1-d88c1b0cdc1b@linaro.org>
 <04437373-c5a2-43e4-b591-921ce450f3d8@linaro.org>
Content-Language: en-US
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 xsFNBFVDQq4BEAC6KeLOfFsAvFMBsrCrJ2bCalhPv5+KQF2PS2+iwZI8BpRZoV+Bd5kWvN79
 cFgcqTTuNHjAvxtUG8pQgGTHAObYs6xeYJtjUH0ZX6ndJ33FJYf5V3yXqqjcZ30FgHzJCFUu
 JMp7PSyMPzpUXfU12yfcRYVEMQrmplNZssmYhiTeVicuOOypWugZKVLGNm0IweVCaZ/DJDIH
 gNbpvVwjcKYrx85m9cBVEBUGaQP6AT7qlVCkrf50v8bofSIyVa2xmubbAwwFA1oxoOusjPIE
 J3iadrwpFvsZjF5uHAKS+7wHLoW9hVzOnLbX6ajk5Hf8Pb1m+VH/E8bPBNNYKkfTtypTDUCj
 NYcd27tjnXfG+SDs/EXNUAIRefCyvaRG7oRYF3Ec+2RgQDRnmmjCjoQNbFrJvJkFHlPeHaeS
 BosGY+XWKydnmsfY7SSnjAzLUGAFhLd/XDVpb1Een2XucPpKvt9ORF+48gy12FA5GduRLhQU
 vK4tU7ojoem/G23PcowM1CwPurC8sAVsQb9KmwTGh7rVz3ks3w/zfGBy3+WmLg++C2Wct6nM
 Pd8/6CBVjEWqD06/RjI2AnjIq5fSEH/BIfXXfC68nMp9BZoy3So4ZsbOlBmtAPvMYX6U8VwD
 TNeBxJu5Ex0Izf1NV9CzC3nNaFUYOY8KfN01X5SExAoVTr09ewARAQABzTRLcnp5c3p0b2Yg
 S296bG93c2tpIDxrcnp5c3p0b2Yua296bG93c2tpQGxpbmFyby5vcmc+wsGUBBMBCgA+AhsD
 BQsJCAcCBhUKCQgLAgQWAgMBAh4BAheAFiEEm9B+DgxR+NWWd7dUG5NDfTtBYpsFAmgXUEoF
 CRaWdJoACgkQG5NDfTtBYpudig/+Inb3Kjx1B7w2IpPKmpCT20QQQstx14Wi+rh2FcnV6+/9
 tyHtYwdirraBGGerrNY1c14MX0Tsmzqu9NyZ43heQB2uJuQb35rmI4dn1G+ZH0BD7cwR+M9m
 lSV9YlF7z3Ycz2zHjxL1QXBVvwJRyE0sCIoe+0O9AW9Xj8L/dmvmRfDdtRhYVGyU7fze+lsH
 1pXaq9fdef8QsAETCg5q0zxD+VS+OoZFx4ZtFqvzmhCs0eFvM7gNqiyczeVGUciVlO3+1ZUn
 eqQnxTXnqfJHptZTtK05uXGBwxjTHJrlSKnDslhZNkzv4JfTQhmERyx8BPHDkzpuPjfZ5Jp3
 INcYsxgttyeDS4prv+XWlT7DUjIzcKih0tFDoW5/k6OZeFPba5PATHO78rcWFcduN8xB23B4
 WFQAt5jpsP7/ngKQR9drMXfQGcEmqBq+aoVHobwOfEJTErdku05zjFmm1VnD55CzFJvG7Ll9
 OsRfZD/1MKbl0k39NiRuf8IYFOxVCKrMSgnqED1eacLgj3AWnmfPlyB3Xka0FimVu5Q7r1H/
 9CCfHiOjjPsTAjE+Woh+/8Q0IyHzr+2sCe4g9w2tlsMQJhixykXC1KvzqMdUYKuE00CT+wdK
 nXj0hlNnThRfcA9VPYzKlx3W6GLlyB6umd6WBGGKyiOmOcPqUK3GIvnLzfTXR5DOwU0EVUNc
 NAEQAM2StBhJERQvgPcbCzjokShn0cRA4q2SvCOvOXD+0KapXMRFE+/PZeDyfv4dEKuCqeh0
 hihSHlaxTzg3TcqUu54w2xYskG8Fq5tg3gm4kh1Gvh1LijIXX99ABA8eHxOGmLPRIBkXHqJY
 oHtCvPc6sYKNM9xbp6I4yF56xVLmHGJ61KaWKf5KKWYgA9kfHufbja7qR0c6H79LIsiYqf92
 H1HNq1WlQpu/fh4/XAAaV1axHFt/dY/2kU05tLMj8GjeQDz1fHas7augL4argt4e+jum3Nwt
 yupodQBxncKAUbzwKcDrPqUFmfRbJ7ARw8491xQHZDsP82JRj4cOJX32sBg8nO2N5OsFJOcd
 5IE9v6qfllkZDAh1Rb1h6DFYq9dcdPAHl4zOj9EHq99/CpyccOh7SrtWDNFFknCmLpowhct9
 5ZnlavBrDbOV0W47gO33WkXMFI4il4y1+Bv89979rVYn8aBohEgET41SpyQz7fMkcaZU+ok/
 +HYjC/qfDxT7tjKXqBQEscVODaFicsUkjheOD4BfWEcVUqa+XdUEciwG/SgNyxBZepj41oVq
 FPSVE+Ni2tNrW/e16b8mgXNngHSnbsr6pAIXZH3qFW+4TKPMGZ2rZ6zITrMip+12jgw4mGjy
 5y06JZvA02rZT2k9aa7i9dUUFggaanI09jNGbRA/ABEBAAHCwXwEGAEKACYCGwwWIQSb0H4O
 DFH41ZZ3t1Qbk0N9O0FimwUCaBdQXwUJFpZbKgAKCRAbk0N9O0Fim07TD/92Vcmzn/jaEBcq
 yT48ODfDIQVvg2nIDW+qbHtJ8DOT0d/qVbBTU7oBuo0xuHo+MTBp0pSTWbThLsSN1AuyP8wF
 KChC0JPcwOZZRS0dl3lFgg+c+rdZUHjsa247r+7fvm2zGG1/u+33lBJgnAIH5lSCjhP4VXiG
 q5ngCxGRuBq+0jNCKyAOC/vq2cS/dgdXwmf2aL8G7QVREX7mSl0x+CjWyrpFc1D/9NV/zIWB
 G1NR1fFb+oeOVhRGubYfiS62htUQjGLK7qbTmrd715kH9Noww1U5HH7WQzePt/SvC0RhQXNj
 XKBB+lwwM+XulFigmMF1KybRm7MNoLBrGDa3yGpAkHMkJ7NM4iSMdSxYAr60RtThnhKc2kLI
 zd8GqyBh0nGPIL+1ZVMBDXw1Eu0/Du0rWt1zAKXQYVAfBLCTmkOnPU0fjR7qVT41xdJ6KqQM
 NGQeV+0o9X91X6VBeK6Na3zt5y4eWkve65DRlk1aoeBmhAteioLZlXkqu0pZv+PKIVf+zFKu
 h0At/TN/618e/QVlZPbMeNSp3S3ieMP9Q6y4gw5CfgiDRJ2K9g99m6Rvlx1qwom6QbU06ltb
 vJE2K9oKd9nPp1NrBfBdEhX8oOwdCLJXEq83vdtOEqE42RxfYta4P3by0BHpcwzYbmi/Et7T
 2+47PN9NZAOyb771QoVr8A==
In-Reply-To: <04437373-c5a2-43e4-b591-921ce450f3d8@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250903_235152_955237_FC96EB13 
X-CRM114-Status: UNSURE (   7.89  )
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

On 04/09/2025 08:50, Krzysztof Kozlowski wrote:
>> +allOf:
>> +  - if:
>> +      properties:
>> +        compatible:
>> +          enum:
>> +            - qcom,x1e80100-dp-phy
>> +    then:
>> +      properties:
>> +        clocks:
>> +          minItems: 3
> 
> That's an ABI break, so you need to explain it and mention the impact.
> Reason that there is one more clock, but everything was working fine, is
> not usually enough.
Heh, I already asked for that at v1 and nothing improved.

Best regards,
Krzysztof

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
