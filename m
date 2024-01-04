Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2F354C47073
	for <linux-phy@archiver.kernel.org>; Thu,  4 Jan 2024 22:50:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7AAolQstqr3xCz9h+YGueG50eLYNgQBjrd49HnJ3mPw=; b=bhgNs6ONmPQ3+g
	IlWcrWh5c892G86l13DjkQoOmowKIW63yyTZjnJHTSer5a9AJC10UuGumJ1BfmqS2kNX3MDApONlP
	SFjzid0/fUNaMr6frzb87tGF1C3ypuArSFD4+Y6cSQd+9ArmpFoVf4kyxtj7A5tKi+8W8XFEa478w
	jwxbdrMqi8cq+FA8VRBMn7tDAStQxE272zA0fZfJhnfrb6Fq9al1Vi7tbBAk5XsMcnSmX5OmGqbKl
	YxH12JNq4nSHo1MYwhwABqrhjrYiqVEXB0VeGT1/mUnh4zfW3dQUDWhHE+B9FbvLO88kgz4bEoiyW
	Oe3+9V4w91f0kuinT4HA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rLWYE-00FOS1-2y;
	Thu, 04 Jan 2024 22:50:58 +0000
Received: from mail-wr1-x42b.google.com ([2a00:1450:4864:20::42b])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rLWYC-00FOQ9-0s
	for linux-phy@lists.infradead.org;
	Thu, 04 Jan 2024 22:50:57 +0000
Received: by mail-wr1-x42b.google.com with SMTP id ffacd0b85a97d-3366ddd1eddso888934f8f.0
        for <linux-phy@lists.infradead.org>; Thu, 04 Jan 2024 14:50:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1704408651; x=1705013451; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=VcPQ9Xa0tJ4XfKkhqDvXF2rtEgjcj5MLQaEjWV4A5Kg=;
        b=vzyDpOW4/s/jh+lvIcgXvoLkIi6NMQ8zojAbXeDgVoMdwZdl9RjActHH+iZKUdd8zl
         wtrFeWFJhgMEFuMApQKuwlC4oxkqmAZchPOyb5q0C4UK2lGepwQHb7XwlzP3TpFeVbVc
         9gO+wMP6UM2ikdU6pE7HnCyent6jq26ShqLn48rA/Ye2bv0tVNDc6vAY5NVKC/PaVHVw
         ZtJSpme43r6zSTNDG1ry5ttLq6VcWgKo+dbUNZvoCrWL3EBSojbKuiTrF//Ob+OGltOP
         wVv1V66IhT4tfng5371zvsFDoKV7hk+FiKVgxuTF04FsdFrBY2ExsT/fI3lWmgjug5Yx
         l5ig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1704408651; x=1705013451;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=VcPQ9Xa0tJ4XfKkhqDvXF2rtEgjcj5MLQaEjWV4A5Kg=;
        b=msCMF5B/q3CIErKxKkHL+9Hl8UGsKAgvWInG+B02HcMc71zluGKjZyHuAjH6CzYARa
         wn7LyyvCMvwStEjtCZarEHg098ZdMSfrRvuikE/2DnVugKUG0Y2hN+sJ4dEezZBLhjaD
         d3QWPsuL2PoP7FLXGkpvBxrlnvGHUZ7VSJBERNS34uUCYdo+BfBf/NU4eUguzPShxyHl
         vlDCcqnDysJU1UEEM+E24EwGKHYGtH7RD/bNy8UZUTT/DJNYCOIFXiFyaIR4zVt9+1rX
         znWNjdV8XRBvoe/pnggtYYvsaHb3xqTBRqvNnMfiRkL2dSqFWkq4d7acYriuOzcbv3ey
         e3wA==
X-Gm-Message-State: AOJu0YxzCKKYc8Wjzi/wx1C44QoO1Y8P1y4ec1p7mO4KytgZiI/dhhe3
	+Nmrv8h7WFubyn6SiSyvUpn9OwHaioHWQQ==
X-Google-Smtp-Source: AGHT+IE3+wslo/R5fktyBQLHhO2GpT5lUe0uUiBgWQLm5rhL1CAYSVuuqQ/iTdjnpdLjsRGK7bgkOg==
X-Received: by 2002:a5d:464a:0:b0:337:43c2:d17b with SMTP id j10-20020a5d464a000000b0033743c2d17bmr377479wrs.77.1704408650907;
        Thu, 04 Jan 2024 14:50:50 -0800 (PST)
Received: from [192.168.199.125] (178235179036.dynamic-4-waw-k-1-3-0.vectranet.pl. [178.235.179.36])
        by smtp.gmail.com with ESMTPSA id co22-20020a0564020c1600b00556cf695da0sm214100edb.78.2024.01.04.14.50.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 04 Jan 2024 14:50:50 -0800 (PST)
Message-ID: <33b32e2b-fa35-448c-8b4c-c5c51a514922@linaro.org>
Date: Thu, 4 Jan 2024 23:50:48 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] phy: qualcomm: eusb2-repeater: Drop the redundant
 zeroing
Content-Language: en-US
To: Abel Vesa <abel.vesa@linaro.org>, Bjorn Andersson <andersson@kernel.org>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20240104-phy-qcom-eusb2-repeater-fixes-v1-0-047b7b6b8333@linaro.org>
 <20240104-phy-qcom-eusb2-repeater-fixes-v1-2-047b7b6b8333@linaro.org>
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
In-Reply-To: <20240104-phy-qcom-eusb2-repeater-fixes-v1-2-047b7b6b8333@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240104_145056_312765_5CA1A760 
X-CRM114-Status: GOOD (  13.86  )
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

On 4.01.2024 15:52, Abel Vesa wrote:
> The local init_tlb is already zero initialized, so the entire zeroing loop
> is useless in this case, since the initial values are copied over anyway,
> before being written.
> 
> Fixes: 99a517a582fc ("phy: qualcomm: phy-qcom-eusb2-repeater: Zero out untouched tuning regs")
> Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> ---

That's another good spot.. partial struct initialization of
pm8550b_init_tbl zeroes out the uninitialized fields.


>  drivers/phy/qualcomm/phy-qcom-eusb2-repeater.c | 10 ----------
>  1 file changed, 10 deletions(-)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-eusb2-repeater.c b/drivers/phy/qualcomm/phy-qcom-eusb2-repeater.c
> index 5f5862a68b73..3060c0749797 100644
> --- a/drivers/phy/qualcomm/phy-qcom-eusb2-repeater.c
> +++ b/drivers/phy/qualcomm/phy-qcom-eusb2-repeater.c
> @@ -156,16 +156,6 @@ static int eusb2_repeater_init(struct phy *phy)
>  
>  	regmap_field_update_bits(rptr->regs[F_EN_CTL1], EUSB2_RPTR_EN, EUSB2_RPTR_EN);
>  
> -	for (i = 0; i < F_NUM_TUNE_FIELDS; i++) {
> -		if (init_tbl[i]) {
> -			regmap_field_update_bits(rptr->regs[i], init_tbl[i], init_tbl[i]);
> -		} else {
> -			/* Write 0 if there's no value set */
> -			u32 mask = GENMASK(regfields[i].msb, regfields[i].lsb);
> -
> -			regmap_field_update_bits(rptr->regs[i], mask, 0);
> -		}
> -	}
>  	memcpy(init_tbl, rptr->cfg->init_tbl, sizeof(init_tbl));

I think this patchset can be made even better, this memcpy is also
useless and we can simply initialize init_tbl=rptr->cfg->init_tbl.

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
