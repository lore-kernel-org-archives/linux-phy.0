Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1048EC001E0
	for <linux-phy@archiver.kernel.org>; Mon, 31 Jul 2023 19:26:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=L27C2MKYaPCXJ9Xzr5/pBLY03eeojAVaEdd+o6vDt/Y=; b=N4rU6QUIzbJgbl
	wAPtAurtugI28TG3nGXVgU9Q6m5V7Utquswzks4j/7IgRISIqFVgnilXJTh7dQ5lEU5jsofoXx19W
	NcwyQDUFRBekGjFkt9RILMOb0tMyx8E/nVhkGrXwBPUXnATSX9P4F7z1G+e+Yjx2UlH9jOjfmXzFR
	9IDKnnTuSVFkADjwjNFU8kwVH8OvTIbMvoUQ9eE0BYdXlw21VJemzPHVifz3PgqQ3pVMGB2lbQqyc
	FYZ+JIE7Hw5jtzT9SzROsS3lPycdl2K4JWDLy0cg44gk41D0ZtzSZKZyI7VTijddJvPUic833Y4LU
	f2HYagH3kvUDlbIilYXw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qQYWw-00H7IJ-2U;
	Mon, 31 Jul 2023 19:26:10 +0000
Received: from mail-lf1-x131.google.com ([2a00:1450:4864:20::131])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qQYWu-00H7HQ-0g
	for linux-phy@lists.infradead.org;
	Mon, 31 Jul 2023 19:26:09 +0000
Received: by mail-lf1-x131.google.com with SMTP id 2adb3069b0e04-4fe0e23a4b1so7715010e87.3
        for <linux-phy@lists.infradead.org>; Mon, 31 Jul 2023 12:26:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1690831564; x=1691436364;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=dAtDVONTm8fxM9vprTXt/wQ+fXdAmYZlO6On6q1JPyo=;
        b=QiGhkpqcDrQkYdCbXGlnDrx/4d7+BbsA3UjDQswm+3JyY0cPunOnPyproAOH799eGh
         9g5trIMf/Iqs4sh0kMOfI5uOWxz9xa3lSV76fTg+0SBmnnvG0txM23svB8lwi7ZJsxPL
         P/roC/l7MEb28e5iZNtGuOhgFYxytwj2j8etrdcocJPywFrHYjUkY911LvmtSt7SXEHl
         w2f1cOzPoi7GAmoZHKUBhzGGKPftdhBBg/c7eqnPZ87SYcUGi3M9k/y7nf/qX3uOF+jL
         C/P3KrAVXbDNR7WL75YvDTZfmQud7gwRGybGYpErsN/fNfjzmp9qggazJ4BPJ48LiKMR
         Xycg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690831564; x=1691436364;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=dAtDVONTm8fxM9vprTXt/wQ+fXdAmYZlO6On6q1JPyo=;
        b=k8AUjo2U2DvclQmDdSzkAwJXGIUfX5Zadx7WxWI5zQdc7yBS5vq9vnJKHr8+LIVwlA
         Ei4oYG8B05x5S2vIJCgRT0uDSb+2/wh11vcsXBRFC9dfb1Fk1mh2HhYjAaYy2epMXSOk
         fMKRGaRyavSSVASd9fghDJS++k/p8rLEtR0iPTsGTRvM2Quvj5S2j9ozpCo1rL+Mhu3t
         XWbeC5+FylQTEMOMMNdGVwsrYF7Eyjw3NFGSQyOuC8vkR3bQiRkxTyXOK4C4S3XlmCKv
         YpQTiASk1Qo22axziFlX4b3Xp7xYFX8oJvD+h9d+IPbsZvf49TJnt7umHvqPdYk6WKTg
         YpKg==
X-Gm-Message-State: ABy/qLaWUaiyh9JK1hizvjNH6wKQ9ulJJsLaz/nXIw3MqK2hhAUCd4H9
	EJ1+rEH1bwO7sYfuMez13l4znQ==
X-Google-Smtp-Source: APBJJlFy1CnFzd3JRFIRJDUTCIq1v3rxk7n+be/5bd1UH8713qCtJvWFDWdm0E491c6+VnqSeBhrmg==
X-Received: by 2002:a05:6512:2529:b0:4fb:8fde:f60d with SMTP id be41-20020a056512252900b004fb8fdef60dmr647606lfb.22.1690831564380;
        Mon, 31 Jul 2023 12:26:04 -0700 (PDT)
Received: from [192.168.1.101] (abyk53.neoplus.adsl.tpnet.pl. [83.9.30.53])
        by smtp.gmail.com with ESMTPSA id u7-20020ac248a7000000b004fba6f38f87sm2190572lfg.24.2023.07.31.12.26.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 31 Jul 2023 12:26:04 -0700 (PDT)
Message-ID: <e971d768-8020-1716-f44a-4379f2975076@linaro.org>
Date: Mon, 31 Jul 2023 21:26:03 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 08/13] arm64: dts: qcom: sc8180x: switch PCIe QMP PHY
 to new style of bindings
Content-Language: en-US
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: Philipp Zabel <p.zabel@pengutronix.de>, Johan Hovold <johan@kernel.org>,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org
References: <20230731105759.3997549-1-dmitry.baryshkov@linaro.org>
 <20230731105759.3997549-9-dmitry.baryshkov@linaro.org>
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
In-Reply-To: <20230731105759.3997549-9-dmitry.baryshkov@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230731_122608_265916_9D5E80A7 
X-CRM114-Status: GOOD (  11.76  )
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

On 31.07.2023 12:57, Dmitry Baryshkov wrote:
> Change the PCIe QMP PHY to use newer style of QMP PHY bindings (single
> resource region, no per-PHY subnodes).
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---
>  arch/arm64/boot/dts/qcom/sc8180x.dtsi | 140 ++++++++++----------------
>  1 file changed, 51 insertions(+), 89 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sc8180x.dtsi b/arch/arm64/boot/dts/qcom/sc8180x.dtsi
> index 486f7ffef43b..fae149e33b98 100644
> --- a/arch/arm64/boot/dts/qcom/sc8180x.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sc8180x.dtsi
> @@ -1749,7 +1749,7 @@ pcie0: pci@1c00000 {
>  					<&gem_noc MASTER_AMPSS_M0 0 &config_noc SLAVE_PCIE_0 0>;
>  			interconnect-names = "pcie-mem", "cpu-pcie";
>  
> -			phys = <&pcie0_lane>;
> +			phys = <&pcie0_phy>;
>  			phy-names = "pciephy";
>  
>  			status = "disabled";
> @@ -1757,15 +1757,20 @@ pcie0: pci@1c00000 {
>  
>  		pcie0_phy: phy-wrapper@1c06000 {
>  			compatible = "qcom,sc8180x-qmp-pcie-phy";
> -			reg = <0 0x1c06000 0 0x1c0>;
> -			#address-cells = <2>;
> -			#size-cells = <2>;
> -			ranges;
> +			reg = <0 0x1c06000 0 0x1000>;
Please pad reg to 8 hex digits, here and below since you're already
touching this

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
