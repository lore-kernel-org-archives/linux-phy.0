Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F3EC6CA1012
	for <linux-phy@archiver.kernel.org>; Thu,  4 Sep 2025 09:24:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5exmNUKcBEFmW8TOQxMYQZcdK1jyx/bijLqjE2BAXEg=; b=nR8XnlbrvoDPV3
	LzjaQSygYqmCY/8HC0sxuXs5WrS5ZOTTok240TiwQvDraLi527/rnut5AjN/0S82TLXru7ZXhEAiI
	VuEEt5rPgzcNrroeSKYKYLXAH51pycMGH6afu5qZW/6hEWfocPN6pvrcNZeseFDzm+iaYiwsqudsE
	OvSXCvxPKRvilMQJEDTICL7e2KB4/MepLwS3AM/dtFEzkNUEYWD8r2Ut86iHjFDdOoXq1mJtWwuDq
	g8AmwrkYZZd05SzA7Ds+Md3jLVTR1mHQGVTdG9tUtWopHrKMpz9K0x9aIanyKwBo4M+7q07kg69wa
	+BCfUdBX6mthWGsyFnFg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uu6CT-0000000AXYa-3640;
	Thu, 04 Sep 2025 09:24:13 +0000
Received: from mail-wm1-x332.google.com ([2a00:1450:4864:20::332])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uu5T3-0000000AHPm-2q3L
	for linux-phy@lists.infradead.org;
	Thu, 04 Sep 2025 08:37:18 +0000
Received: by mail-wm1-x332.google.com with SMTP id 5b1f17b1804b1-45b8e28b3c5so10323055e9.1
        for <linux-phy@lists.infradead.org>; Thu, 04 Sep 2025 01:37:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1756975036; x=1757579836; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=8TvpDldbS6p0mFVJOieeQjela+t5WFiWiQauN+gr6YU=;
        b=RLB6Mp+73eVOblyd0XGGZUNPhnCn2Xd84psQLixb1tsiyOD9heWbbpZfpbEccgKU6z
         6jl3LCFX6RZN9/SaA8GBOMnDTteo3IIGkzRtom0TPd+yt6AxLcDqtEh86FTQN0zwAJ9/
         v6kupro/RoTpmhd7hnvOqKokf61NXIiLaMjfNoJ0hGl6iBcU6WI1OLUdhdsKeqBEhfo5
         tCypC8WDylA74j/bKidRz/Kh5FC903yJUVKLgQQuRR0dAT6xgE9nyThUPpwP1sFrLBc8
         ciWkK8SnEFSpnzbUKffcL6WWoZGnbhFp+Fff5pfDc49yixfCA9efXQcfIp/X+2/7xgIl
         Fe3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756975036; x=1757579836;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8TvpDldbS6p0mFVJOieeQjela+t5WFiWiQauN+gr6YU=;
        b=VnB1MAODdik+70Gk11sron4c7K3cPDibWjlrIh52tzWuafK3HV31lh6TPwK1vLV1xG
         Q4+eYcLBTn0yhW2iaqAPvLeCLyTcGxL8KhdXiqcbdYJYakW+khmIvggtYtL/5y6j8kUr
         yx88Cvc8fID7lXjyUVZSnTy24E/V8/2c26L+DGVSmhMyDRNEmPtPhjAcuWl8HLCMErTe
         bmQebSVJvLtU1dW0bwE7baGW088o38XlBizeXelOI+WS5pMLu4H4kDcOEC4GYHeVmJPe
         ah40WRuS7oxCfmv+DDBCYkB96ELWLIV7u2GUzZm/TxDu3Oc0LwITd2nnzhJR/dTeU3oU
         r6lg==
X-Forwarded-Encrypted: i=1; AJvYcCXcXI0F8g9WH3/vThm0n1pJCWo7dAByfJ5ik24igiZph99qzRWbgi0Dv8eWqA2SM1pUSa8s2B5kZIc=@lists.infradead.org
X-Gm-Message-State: AOJu0Yy2mZ/ijJeAaALsdUp5oyp/TUmcUE/PfFiwbi+MLoNxeIq4pogu
	O660B2gQeSGKHO3Bwqv3POfCrwflQeUUyUN20kGmr9TR0KT7bejc6esefj1/QvMTCn0=
X-Gm-Gg: ASbGncsOmDVeGh4Q+a3uT6+PSg1GGr9NDd5dTC66qwdijuyM0PeqLR6r2Mj7I8A42ay
	VAMlb/w9Ht2qyngWlhfSYnG/drC/Vv/o4ZQ9FFSI25g569WbGTiIVWFMZidaBKuX/gvrbChYF7D
	bOPWLoxlT+08sGXJgJHMOU39oB3alb5qbCO/XIz9QCuYHeftVFD9qKY8cttIAAY1J5K/SQ0xcae
	tqBBnuX+VnpMKf1MQAdFtJlGzX3eXDWL3X7M1Be/bMwkbpvCy4CV2unrOjP7U5FRYuSTL4JgkXF
	pbSPUtyPxESUGh0NvUfq+vz0Y/dJgQl7UBi3BYg+vprU2jSYuKBgTiJgzafZXsy4tYrvJIdnwVy
	ehJHQswc5xwhsHCIHuAjr/1KAxlXaxN2U
X-Google-Smtp-Source: AGHT+IGYkXiZRUXlOQf3empsPbLwkG2nRtYg4Fk+8qLi58TcgS/9+AaJQqZP1jo3HcduMoYVw1R45A==
X-Received: by 2002:a05:6000:1ac7:b0:3e0:854b:20f5 with SMTP id ffacd0b85a97d-3e0854b234bmr1369457f8f.21.1756975036044;
        Thu, 04 Sep 2025 01:37:16 -0700 (PDT)
Received: from linaro.org ([86.121.170.194])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-45b6f306c22sm362172195e9.13.2025.09.04.01.37.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 04 Sep 2025 01:37:15 -0700 (PDT)
Date: Thu, 4 Sep 2025 11:37:13 +0300
From: Abel Vesa <abel.vesa@linaro.org>
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: Rob Herring <robh@kernel.org>, Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
	Dmitry Baryshkov <lumag@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
	Sibi Sankar <quic_sibis@quicinc.com>, Rajendra Nayak <quic_rjendra@quicinc.com>, 
	Johan Hovold <johan@kernel.org>, Taniya Das <quic_tdas@quicinc.com>, 
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, stable@vger.kernel.org
Subject: Re: [PATCH v2 1/3] dt-bindings: phy: qcom-edp: Add missing clock for
 X Elite
Message-ID: <5dqyfunemo6jcj3c3nwmhbazfbackja5dpgsmu42sjzaxwbfok@rdwj3k7nsm2n>
References: <20250903-phy-qcom-edp-add-missing-refclk-v2-0-d88c1b0cdc1b@linaro.org>
 <20250903-phy-qcom-edp-add-missing-refclk-v2-1-d88c1b0cdc1b@linaro.org>
 <11155d6c-cc11-4c5b-839b-2456e88fbb7f@oss.qualcomm.com>
 <20250903235138.GA3348310-robh@kernel.org>
 <1b92fe18-67bd-4fda-b7c2-952ed96aaa61@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1b92fe18-67bd-4fda-b7c2-952ed96aaa61@oss.qualcomm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250904_013717_733750_2AD8C34F 
X-CRM114-Status: GOOD (  15.87  )
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

On 25-09-04 10:11:26, Konrad Dybcio wrote:
> On 9/4/25 1:51 AM, Rob Herring wrote:
> > On Wed, Sep 03, 2025 at 03:37:25PM +0200, Konrad Dybcio wrote:
> >> On 9/3/25 2:37 PM, Abel Vesa wrote:
> >>> On X Elite platform, the eDP PHY uses one more clock called
> >>> refclk. Add it to the schema.
> >>>
> >>> Cc: stable@vger.kernel.org # v6.10
> >>> Fixes: 5d5607861350 ("dt-bindings: phy: qcom-edp: Add X1E80100 PHY compatibles")
> >>> Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> >>> ---
> >>>  .../devicetree/bindings/phy/qcom,edp-phy.yaml      | 28 +++++++++++++++++++++-
> >>>  1 file changed, 27 insertions(+), 1 deletion(-)
> >>>
> >>> diff --git a/Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml
> >>> index eb97181cbb9579893b4ee26a39c3559ad87b2fba..a8ba0aa9ff9d83f317bd897a7d564f7e13f6a1e2 100644
> >>> --- a/Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml
> >>> +++ b/Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml
> >>> @@ -37,12 +37,15 @@ properties:
> >>>        - description: PLL register block
> >>>  
> >>>    clocks:
> >>> -    maxItems: 2
> >>> +    minItems: 2
> >>> +    maxItems: 3
> >>>  
> >>>    clock-names:
> >>> +    minItems: 2
> >>>      items:
> >>>        - const: aux
> >>>        - const: cfg_ahb
> >>> +      - const: refclk
> >>
> >> "ref"?
> > 
> > Certainly more consistent with other QCom phy bindings.
> 
> That, and the name of a clock-names entry ending in 'clk' is simply
> superfluous

Yep. Will fix in v3.

Thanks for reviewing.

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
