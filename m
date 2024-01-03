Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 36361C3DA6E
	for <linux-phy@archiver.kernel.org>; Wed,  3 Jan 2024 13:42:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=li+mQoH7vy+Ngg8M4Tm4J8JHISvTZ5OT5/PZFLANpy8=; b=azP4ehtsayS5fu
	mkZaf0oHj3XF+Sm1aH8tnHyE+Rj88VrUiJMePSaxpFME741srhnLQRqIRpIm/BSOlL6La25DPyt5P
	QXwtJCvYUanW9D7TDOnqhg0Fm7z+EPNjb/LRDvsQ9D4ajgo0fdioo3sE2fssR+AWx3wiu/GnAeC8Z
	ZTiKdGGmlMneMxIzr9ix7ICfvBlut22f8yUqVBEdzoSmLcnVavq2mYNbO0hoO06onTZY1WCJrxxY3
	WEFxY5gt6oZqtc++lw0DrZ+4LAacza/HJ4RFirbFbrzLaw9PzU7akVKBmqfLB6ibOMo/JbeEOrHaK
	vXB6GXeM7Y6YjWXfQsmw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rL1WL-00B0Ve-31;
	Wed, 03 Jan 2024 13:42:57 +0000
Received: from mail-lf1-x134.google.com ([2a00:1450:4864:20::134])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rL1WJ-00B0U9-07
	for linux-phy@lists.infradead.org;
	Wed, 03 Jan 2024 13:42:56 +0000
Received: by mail-lf1-x134.google.com with SMTP id 2adb3069b0e04-50e7aed09adso8574640e87.0
        for <linux-phy@lists.infradead.org>; Wed, 03 Jan 2024 05:42:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1704289372; x=1704894172; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ywm1NJM84MFVbNs8Kn4Mu02P9WC9fu63PnwufUkYyus=;
        b=LZ3YdqqziQIQEAsdlo3ViQYAFTE92Wslf8l/rzQ8JZhV+cMYPbaPKPTx29n1DHwj0A
         Q6tfMXjAE5pKwkWa5WNXMxq0KRS0o3sF8aqP3vi1CeJiHli2V/9aULb0NcsbR1XBlEJF
         Fswavewjv6r8926fOXL+vQHisI4wVPy+YviEhwjxDeMAgtT1UOWYbNb8NJ1IZbmZB9wX
         ou1u6ZWGJmwZRbC2UrMCPgbFUkYrHAGHVyY5wFR6yjlS2XYSIRj+C+u2dctmK1YAWYlb
         oDVqVsIZt7i1o04LylL29Cgs2NVxIGH4h0KWyEhFgSDpRTVfIGjOiSARw2/+98RT2OkU
         Odkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1704289372; x=1704894172;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ywm1NJM84MFVbNs8Kn4Mu02P9WC9fu63PnwufUkYyus=;
        b=NEOftRPrEIRGOtp1xPEWpULto2AYZ1inusOMXm0n52X3NsRkcdDPZb7Ek2w8h9TrIT
         VMopIH/s0DQI7JzlKqiAjQpI779JKUSvHl41umz0b/H8AcR64vo1EbYX2OUXs0cuZbqN
         BxJSUMSztLGl5Tmxp7/CcvYVZzgPKmCQhz5yMOa7O7Ui8e6oib8WgmJUpG7Yu7FEPUCU
         Rp0Uy2bQy6I/jyXqhQ6Z4czepjlbUCXVCEYH7B4yeUvqjlroMr+gZIeSV6Ix8W/i+CtZ
         BjWeh/TVCFXE6+4cqSeiVGWZ7AK6cwjmMf4iOA1MHoFek60CeOO6Gp7XzWTdQzOWAOFW
         8T/Q==
X-Gm-Message-State: AOJu0YzMgcqG28E1JuBoRKChF2/lansHQF9pv9wrluoAe8K/P9hUvr/2
	R5wLrNNQ2ARBw6zIGXlT3oQnLmfob9zU8bo1TG3yxR+lJyw=
X-Google-Smtp-Source: AGHT+IF/E3O4/SeJ3/L03JtNje4HPHmKSxk1jYT6GhkDV/vLGOKfuXNGpS6l0kqQGCl2uDjt2JUZ0A==
X-Received: by 2002:a05:6512:39d4:b0:50e:8158:1fae with SMTP id k20-20020a05651239d400b0050e81581faemr7183741lfu.99.1704289372403;
        Wed, 03 Jan 2024 05:42:52 -0800 (PST)
Received: from [192.168.199.125] (178235179036.dynamic-4-waw-k-1-3-0.vectranet.pl. [178.235.179.36])
        by smtp.gmail.com with ESMTPSA id a5-20020a17090680c500b00a26a4458241sm12720131ejx.18.2024.01.03.05.42.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 03 Jan 2024 05:42:52 -0800 (PST)
Message-ID: <6179e3c7-f399-4b0f-abb0-aaf5e549d8d9@linaro.org>
Date: Wed, 3 Jan 2024 14:42:49 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 0/3] phy: qcom: edp: Add support for DT phy mode
 configuration
Content-Language: en-US
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 Abel Vesa <abel.vesa@linaro.org>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I
 <kishon@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Johan Hovold <johan@kernel.org>,
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
References: <20231219-x1e80100-phy-edp-compatible-refactor-v1-0-f9e77752953d@linaro.org>
 <CAA8EJpr8rKMBzcm-=HGu7-C5hPkNMrnG1cA78O00UjgJVT7p6Q@mail.gmail.com>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
Autocrypt: addr=konrad.dybcio@linaro.org; keydata=
 xsFNBF9ALYUBEADWAhxdTBWrwAgDQQzc1O/bJ5O7b6cXYxwbBd9xKP7MICh5YA0DcCjJSOum
 BB/OmIWU6X+LZW6P88ZmHe+KeyABLMP5s1tJNK1j4ntT7mECcWZDzafPWF4F6m4WJOG27kTJ
 HGWdmtO+RvadOVi6CoUDqALsmfS3MUG5Pj2Ne9+0jRg4hEnB92AyF9rW2G3qisFcwPgvatt7
 TXD5E38mLyOPOUyXNj9XpDbt1hNwKQfiidmPh5e7VNAWRnW1iCMMoKqzM1Anzq7e5Afyeifz
 zRcQPLaqrPjnKqZGL2BKQSZDh6NkI5ZLRhhHQf61fkWcUpTp1oDC6jWVfT7hwRVIQLrrNj9G
 MpPzrlN4YuAqKeIer1FMt8cq64ifgTzxHzXsMcUdclzq2LTk2RXaPl6Jg/IXWqUClJHbamSk
 t1bfif3SnmhA6TiNvEpDKPiT3IDs42THU6ygslrBxyROQPWLI9IL1y8S6RtEh8H+NZQWZNzm
 UQ3imZirlPjxZtvz1BtnnBWS06e7x/UEAguj7VHCuymVgpl2Za17d1jj81YN5Rp5L9GXxkV1
 aUEwONM3eCI3qcYm5JNc5X+JthZOWsbIPSC1Rhxz3JmWIwP1udr5E3oNRe9u2LIEq+wH/toH
 kpPDhTeMkvt4KfE5m5ercid9+ZXAqoaYLUL4HCEw+HW0DXcKDwARAQABzShLb25yYWQgRHli
 Y2lvIDxrb25yYWQuZHliY2lvQGxpbmFyby5vcmc+wsGOBBMBCAA4FiEEU24if9oCL2zdAAQV
 R4cBcg5dfFgFAmQ5bqwCGwMFCwkIBwIGFQoJCAsCBBYCAwECHgECF4AACgkQR4cBcg5dfFjO
 BQ//YQV6fkbqQCceYebGg6TiisWCy8LG77zV7DB0VMIWJv7Km7Sz0QQrHQVzhEr3trNenZrf
 yy+o2tQOF2biICzbLM8oyQPY8B///KJTWI2khoB8IJSJq3kNG68NjPg2vkP6CMltC/X3ohAo
 xL2UgwN5vj74QnlNneOjc0vGbtA7zURNhTz5P/YuTudCqcAbxJkbqZM4WymjQhe0XgwHLkiH
 5LHSZ31MRKp/+4Kqs4DTXMctc7vFhtUdmatAExDKw8oEz5NbskKbW+qHjW1XUcUIrxRr667V
 GWH6MkVceT9ZBrtLoSzMLYaQXvi3sSAup0qiJiBYszc/VOu3RbIpNLRcXN3KYuxdQAptacTE
 mA+5+4Y4DfC3rUSun+hWLDeac9z9jjHm5rE998OqZnOU9aztbd6zQG5VL6EKgsVXAZD4D3RP
 x1NaAjdA3MD06eyvbOWiA5NSzIcC8UIQvgx09xm7dThCuQYJR4Yxjd+9JPJHI6apzNZpDGvQ
 BBZzvwxV6L1CojUEpnilmMG1ZOTstktWpNzw3G2Gis0XihDUef0MWVsQYJAl0wfiv/0By+XK
 mm2zRR+l/dnzxnlbgJ5pO0imC2w0TVxLkAp0eo0LHw619finad2u6UPQAkZ4oj++iIGrJkt5
 Lkn2XgB+IW8ESflz6nDY3b5KQRF8Z6XLP0+IEdLOOARkOW7yEgorBgEEAZdVAQUBAQdAwmUx
 xrbSCx2ksDxz7rFFGX1KmTkdRtcgC6F3NfuNYkYDAQgHwsF2BBgBCAAgFiEEU24if9oCL2zd
 AAQVR4cBcg5dfFgFAmQ5bvICGwwACgkQR4cBcg5dfFju1Q//Xta1ShwL0MLSC1KL1lXGXeRM
 8arzfyiB5wJ9tb9U/nZvhhdfilEDLe0jKJY0RJErbdRHsalwQCrtq/1ewQpMpsRxXzAjgfRN
 jc4tgxRWmI+aVTzSRpywNahzZBT695hMz81cVZJoZzaV0KaMTlSnBkrviPz1nIGHYCHJxF9r
 cIu0GSIyUjZ/7xslxdvjpLth16H27JCWDzDqIQMtg61063gNyEyWgt1qRSaK14JIH/DoYRfn
 jfFQSC8bffFjat7BQGFz4ZpRavkMUFuDirn5Tf28oc5ebe2cIHp4/kajTx/7JOxWZ80U70mA
 cBgEeYSrYYnX+UJsSxpzLc/0sT1eRJDEhI4XIQM4ClIzpsCIN5HnVF76UQXh3a9zpwh3dk8i
 bhN/URmCOTH+LHNJYN/MxY8wuukq877DWB7k86pBs5IDLAXmW8v3gIDWyIcgYqb2v8QO2Mqx
 YMqL7UZxVLul4/JbllsQB8F/fNI8AfttmAQL9cwo6C8yDTXKdho920W4WUR9k8NT/OBqWSyk
 bGqMHex48FVZhexNPYOd58EY9/7mL5u0sJmo+jTeb4JBgIbFPJCFyng4HwbniWgQJZ1WqaUC
 nas9J77uICis2WH7N8Bs9jy0wQYezNzqS+FxoNXmDQg2jetX8en4bO2Di7Pmx0jXA4TOb9TM
 izWDgYvmBE8=
In-Reply-To: <CAA8EJpr8rKMBzcm-=HGu7-C5hPkNMrnG1cA78O00UjgJVT7p6Q@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240103_054255_116232_9D30C2EC 
X-CRM114-Status: GOOD (  19.92  )
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

On 21.12.2023 17:27, Dmitry Baryshkov wrote:
> On Tue, 19 Dec 2023 at 22:55, Abel Vesa <abel.vesa@linaro.org> wrote:
>>
>> Until now, all platform that supported both eDP and DP had different
>> compatibles for each mode. Using different compatibles for basically
>> the same IP block but for a different configuration is bad way all
>> around. There is a new compute platform from Qualcomm that supports
>> both eDP and DP with the same PHY. So instead of following the old
>> method, we should allow the mode to be configured from devicetree.
>>
>> There has been an off-list discussion on what would be the right way
>> to pass on the PHY mode information to the driver and it has been
>> concluded that phy-cells is the way to go. This means that basically
>> the controller will pass another value (that is, the PHY type) to
>> its 'phys' DT property.
>>
>> For this, we need both the bindings value and the PHY mode value to be
>> added as well.
>>
>> The controller part will follow shortly. But for now, lets see where
>> this is going.
>>
>> There has been another attempt at this here:
>> https://lore.kernel.org/all/20231122-phy-qualcomm-edp-x1e80100-v3-3-576fc4e9559d@linaro.org/
>>
>> Compared to that version, this one uses the phy-cells method and drops
>> the X1E80100 support. The X1E80100 support will be a separate patchset.
> 
> After several back and forth discussions, I think that this approach
> is not correct and not that easy to extend. Instead I'd like to
> suggest adding a property to the DP controller, which enables eDP
> behaviour (and thus makes DP driver call phy_set_mode()). Something
> like this:
> dp: displayport-controller@ae0000 {
>     compatible = "qcom,sm8000-dp";
>     /* reg, interrupts, etc */
>    edp-interface;
>    /* or simpler */
>    is-edp;
> };
> 
> What do you think?

Please excuse my alzheimer, but why did we not go with phy-type after
the last discussion?

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
