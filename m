Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AA5EBCA1009
	for <linux-phy@archiver.kernel.org>; Wed,  3 Sep 2025 17:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=q/M/O4lUX/82WjtsZJ2TPdo3S2OYtD9CD78qdpKOFu8=; b=42pU5Lq3AMAK43
	OoGIN6kw7ODzC1vsWGjgIamZiev8YzNlIWjKbtfkv/+yACL99N7M4nEvZQh3dfMb7atURaFQItA49
	2IFccjTwBCufWAf0nShHkfS4yF7n1bV5bdf5Q7Jqv885TIhJmTMqQFWWErGPE4pzdHsdwr33e3KvU
	CVhpFujdr/nlIoKVpZyM2lW9hfpY6K5Lt+UAxw8fzPOp0A+mWk/oCzkFQXsIO6Z1K/WNDo1hLukrA
	cO9gf4vUB3tyz472VNoz0jACE/q0HK7ilNFzUg6J3CKtgNDocUHIJbXC5uHV7EHsMB6CkuAKIpLL2
	dJexQ6RKeQiroVzEdeIQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1utrAj-00000007B8p-1NXD;
	Wed, 03 Sep 2025 17:21:25 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1utng2-00000006cXy-21o7
	for linux-phy@lists.infradead.org;
	Wed, 03 Sep 2025 13:37:31 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 583BF9Pu003120
	for <linux-phy@lists.infradead.org>; Wed, 3 Sep 2025 13:37:29 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	G6WxjVs+4qB1wpptnxje/lLl2BWE/gnMjf/dmXAtLn4=; b=LsmQHOXIM/ofd/2i
	Gk9P9qYur8B8+LvatykrcBUBrN7ecmvdxnI4IekSsM26hRqjzhy0Q4lcw0+tH2XD
	D0PU7/PjIpqbMxMLzKkpC765oMelSfI3HaSgloqXsqrIyKinaOLLokmJdTPcMf5a
	Mfi3nl5T1UWSQQeyjQ+wTjpwGnIEYFwcg0YqaCkrNjGZseUL9enRcIWi1FubdYzY
	WY7iS4wDK+vvi9vkP4fmqzngE8oZDbgSc6mlCDJNA0ee4UAyr/Ju+GF01dZ0jd6Z
	Sl6Q5jJxYrn6RWgNABOffNV1vPKQA3BtkXIUt9Z6N5mWZjCBQeQwpTsNk+qIGdXx
	VlKBnw==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48urw03vns-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 03 Sep 2025 13:37:29 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4b3387c826eso12459891cf.2
        for <linux-phy@lists.infradead.org>; Wed, 03 Sep 2025 06:37:29 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756906648; x=1757511448;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=G6WxjVs+4qB1wpptnxje/lLl2BWE/gnMjf/dmXAtLn4=;
        b=joA9/lUnQozklZIyXcwBQK9t4AN0Dv0VJD5yFHEwjVLjEuIXM/vEjMiRaZLlsHs/Tm
         1P8DDZQoeViEIS1MSor33U1A6fYCFw3bSZNq2HEz5tpnLpourZdeU8xNrmWpsjOdLWJS
         wGtQWc5lthLxIJn7BN31+jFUUAH78tugTbe7eTdWmXYtKYlg8bXoo13GhlApSn/DXBE4
         2/PS4nQTnu5Rg00FUPLP29S5DiGWxtpN3ASkUxRpVc1CmGteYI9BuYwlw+bRk/m49AqB
         H/ZRXgqmRN5Pp0tHrjOYaqtaxU6kgaVwBvUg7LlYXeTxsT5H5sbXGp3NhFjveb6FQqNg
         tU5Q==
X-Forwarded-Encrypted: i=1; AJvYcCXevdUjurPdu/kGoNd5Roa5Euh5Rz0jFKsB0wV88liaYdzW5BbkSFJc6CIKwwNFGpQNUX1bqzpckc8=@lists.infradead.org
X-Gm-Message-State: AOJu0YwcmNeBwI6wisIxas6r7PXAsGCNgw0CdxxUPQao6wOIml972pAW
	f5289PLZEem2b4tuNhh2F5LlbU5nFIXkR277hKspKfoXkcUz15mBuQE3lRLm8WrEjjODyUbT3gI
	Uv24a32DFcQbNBvGfS8yRVCF3WM0r4K+nF2a3Eq2Qx8HkkpT8+om1NiGlMdVp/1JU3io8
X-Gm-Gg: ASbGncsImZ5WOFVfmMo0swcbv2nlfrba911OxDLPK/PV/uyZoYDp9TFQv7v9POa29c6
	1myA2Fu/pkHflJFbUAoVH+FR0JfRmEzGiAVw0sZ/HiyhnOOl98ZJwV/y2sEj+6BTdFKfyKlAF9r
	hj0SJkLjnsV4NyJxozLkQchhCsfubNtkXAzYAm8ZiNL+SOf8QHHsQVbXjJCpzy2sRxPT5gzKg1R
	I0QGEjBrQ6UATv3Pl/WkS0MjjsfX7OlipDbkFsixVHRbVeipQvtCfLxJcRbFJQwDLdR4ZRJd9dW
	tlipU/WWFTmezfbGAwfqt1N3xMorRJZnZEAGJEnZn3IWOz63BFlLF8Jbn47V1sXu7q0KSQg80Go
	5oMeq+V7PFiJPqMVcu9PvUg==
X-Received: by 2002:a05:622a:5f0c:b0:4b4:9655:9343 with SMTP id d75a77b69052e-4b49655aba8mr8680641cf.3.1756906648323;
        Wed, 03 Sep 2025 06:37:28 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IE9aESjDi7u3ikl+t7p2SljGJv1hsVA1MO3GfCrupQw910Ny+G82IIly/jBPP+7T98Yksz3kw==
X-Received: by 2002:a05:622a:5f0c:b0:4b4:9655:9343 with SMTP id d75a77b69052e-4b49655aba8mr8680251cf.3.1756906647585;
        Wed, 03 Sep 2025 06:37:27 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b0431832a98sm699384166b.80.2025.09.03.06.37.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 03 Sep 2025 06:37:27 -0700 (PDT)
Message-ID: <11155d6c-cc11-4c5b-839b-2456e88fbb7f@oss.qualcomm.com>
Date: Wed, 3 Sep 2025 15:37:25 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/3] dt-bindings: phy: qcom-edp: Add missing clock for
 X Elite
To: Abel Vesa <abel.vesa@linaro.org>, Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Sibi Sankar <quic_sibis@quicinc.com>,
        Rajendra Nayak <quic_rjendra@quicinc.com>
Cc: Johan Hovold <johan@kernel.org>, Taniya Das <quic_tdas@quicinc.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        stable@vger.kernel.org
References: <20250903-phy-qcom-edp-add-missing-refclk-v2-0-d88c1b0cdc1b@linaro.org>
 <20250903-phy-qcom-edp-add-missing-refclk-v2-1-d88c1b0cdc1b@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250903-phy-qcom-edp-add-missing-refclk-v2-1-d88c1b0cdc1b@linaro.org>
X-Proofpoint-GUID: dbGmA8Ii3XOy13bNbef2N557rW75rj_n
X-Proofpoint-ORIG-GUID: dbGmA8Ii3XOy13bNbef2N557rW75rj_n
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODMwMDAyNyBTYWx0ZWRfXx6iTIuXA6IcA
 MD9NpQBZp1WHzNioPfyp7ApJz4WQkzqLumuh8xA9a173VVvh1bQT6JSIHn8MYJUAwIjXOnwPyk9
 nYH3TUgEmfhrWYOaOMpGY53gwyYSOuPCWgJ9OJDo4KZOZ1rAjxECpj8//NBAhQCHzKI2YQxsX5F
 jyrJszChbuaqNfT/Zs1Yog327BJA5MkjqIN5lUDtig/49Gbs83s/SIu29HmEV8JVuf5B1dUEhXr
 hCfDCrsSHB6MGoxI0d2/7isJKLuLMAocDPgoOCHarunFC2+GLfSnA3zHT+lMxncc7QhyIH0mGwn
 mi2OjAMVKTZUwnKLDabFjNaoS9Zxle4VNcvm/4o5YoUnRkUcnkzn1QmKlwNJWYP2YlTqWE2g8oz
 zO4sw4YS
X-Authority-Analysis: v=2.4 cv=NrDRc9dJ c=1 sm=1 tr=0 ts=68b84499 cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=VwQbUJbxAAAA:8 a=KKAkSRfTAAAA:8
 a=D1QSBg5h22RYVcxFYwcA:9 a=QEXdDO2ut3YA:10 a=kacYvNCVWA4VmyqE58fU:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-03_07,2025-08-28_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 suspectscore=0 malwarescore=0 priorityscore=1501 phishscore=0
 impostorscore=0 spamscore=0 bulkscore=0 adultscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2508300027
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250903_063730_647586_1D61E9C6 
X-CRM114-Status: GOOD (  16.10  )
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

On 9/3/25 2:37 PM, Abel Vesa wrote:
> On X Elite platform, the eDP PHY uses one more clock called
> refclk. Add it to the schema.
> 
> Cc: stable@vger.kernel.org # v6.10
> Fixes: 5d5607861350 ("dt-bindings: phy: qcom-edp: Add X1E80100 PHY compatibles")
> Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> ---
>  .../devicetree/bindings/phy/qcom,edp-phy.yaml      | 28 +++++++++++++++++++++-
>  1 file changed, 27 insertions(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml
> index eb97181cbb9579893b4ee26a39c3559ad87b2fba..a8ba0aa9ff9d83f317bd897a7d564f7e13f6a1e2 100644
> --- a/Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml
> +++ b/Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml
> @@ -37,12 +37,15 @@ properties:
>        - description: PLL register block
>  
>    clocks:
> -    maxItems: 2
> +    minItems: 2
> +    maxItems: 3
>  
>    clock-names:
> +    minItems: 2
>      items:
>        - const: aux
>        - const: cfg_ahb
> +      - const: refclk

"ref"?

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
