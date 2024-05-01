Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 408B4C4345F
	for <linux-phy@archiver.kernel.org>; Wed,  1 May 2024 23:06:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6tmtQn1OknO0I5RCXG57hY+END9HDtHfiLQDrDZtrZg=; b=AL99heDfVioeg9
	Nvv2Cu/PpAhpU0GdxmhnH+yhRryWpHiUv0/H7NL/XvwJu9/wkvPPv4S3KuEGXqfYpiY/sVDxNisq0
	ZQXuzfV8ENKJiMwZUQ0ltN3UTyDoFoJR6h6gxCv2q0pVVV55wXEMCiwqpNRKIjcRp13030TmR+RMy
	BOdcbJxhNngA8DvffUveTMQoQ1MSQAltXcn+bRlRdbl+VRbXgv0fIPQ77cBVMpiuGeI5AdDrOTvy9
	4WEFtMPBqmlhzrSVBtbRiRv2JIYzGgjWcafhxASWFXpPnsJ6PPegh21V3hL2zqYh3F/09xiRXYRCq
	fxDAqUoLjL3F9pmF0glg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s2J1X-0000000AsFE-3rGq;
	Wed, 01 May 2024 23:06:03 +0000
Received: from mail-lj1-x236.google.com ([2a00:1450:4864:20::236])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s2J1U-0000000AsE9-3qyo
	for linux-phy@lists.infradead.org;
	Wed, 01 May 2024 23:06:02 +0000
Received: by mail-lj1-x236.google.com with SMTP id 38308e7fff4ca-2dcc8d10d39so84979921fa.3
        for <linux-phy@lists.infradead.org>; Wed, 01 May 2024 16:06:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1714604759; x=1715209559; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=cRBEcA6g+erlLdoN9JCHOuy1WSfoHszt/1llYH033ko=;
        b=qXgYiBIkBuO04GlkgHNlBIliPmWvYnykBM/q4fR7T86dMAjNjIqPFJ4NzsFWQlK5sJ
         t95VPRXzSIOdTS8l2b7wLmcUw+JyMPmXHF0I02xjSc/a8t+bzA9ioo+WAP29iGPI/KIt
         +32LFvV+kHJVV0frcS3p89yvWmAU8qn4yC1wtWVznCCVhWVFma34QWK6moGpz+Z3ZNv1
         Ps64SSlF1wKR3t/1qjjKGnrZAhd31mA/PJD+9FPvn9RRLdABKYvMUePT/FdNLBmiMkIf
         4loE6fYeRJG3aSNqGOMLGkYGB3PVIuyl2uaBOEtKD/FaZEhvSgQJgMreM2tLHIpVjGdB
         MTiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714604759; x=1715209559;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=cRBEcA6g+erlLdoN9JCHOuy1WSfoHszt/1llYH033ko=;
        b=XE6HMU9rKI5xPflIJAvcnDKVpf/+gZZoz3FAV5IVOddPyNPjys5mXMWHyFyhnoSp/R
         e3/9i6ErSG1kb9gyfnwNen0nLpf/gPj2oZHhnhp2n/TTUVfN/74h0P/Plzt3qoqWFqOb
         rcfINzQCQoFppt+NlW6FQ7j3iqQehqXb1W9+ucSV9heX6Dwdt1QIYUZTnmsu/DrK0ngR
         i2nC/ZQuYl4HoAtpoz36yYGbp/sDqFV5TDLp1k2dtoQM3CK898WGDYDzPfgjuRXh7rY2
         LjutVco8eyT1XjijPFFps5d/1f/onb1mkAmuLi7XuhEmL2s/Nfz/zKinAbzOnZoRDkPK
         uY4w==
X-Forwarded-Encrypted: i=1; AJvYcCWd5tSnYgR2p2XFNP1lyWAb9hBrmESxCaDD/zHP/dBsZwnGb3aMTtlwAeaktB4E301rFD1blAw+QrrkZgooexukPjcLx2zN1/pURPAYHQ==
X-Gm-Message-State: AOJu0YyYj2M73udeBO07/bdLFv2VOoux/c8jv7Cq5JRdec90/rF+jNqJ
	LftR1vQz+LWfP9FpJus6cUSxv+8XsqLF5CUcPKmGnFP3Ip/pt1zD87G7zbaBKvo=
X-Google-Smtp-Source: AGHT+IF6OMGZZYenYi9Acf2TXo7ddbB6cUhYV16WhKLqosbbD+RcK8Qv6yX4zk8hdkhaC3hJMC0FLA==
X-Received: by 2002:a2e:9ad1:0:b0:2e0:e470:882f with SMTP id p17-20020a2e9ad1000000b002e0e470882fmr2385088ljj.28.1714604758948;
        Wed, 01 May 2024 16:05:58 -0700 (PDT)
Received: from [192.168.114.15] (078088045141.garwolin.vectranet.pl. [78.88.45.141])
        by smtp.gmail.com with ESMTPSA id p6-20020a05640243c600b005725d859e4esm6083491edc.73.2024.05.01.16.05.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 01 May 2024 16:05:58 -0700 (PDT)
Message-ID: <f936d927-4d17-4928-a1a1-7bd4d3db6e54@linaro.org>
Date: Thu, 2 May 2024 01:05:55 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 08/13] arm64: dts: qcom: sm6350: add power-domain to UFS
 PHY
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Abel Vesa <abel.vesa@linaro.org>,
 Wesley Cheng <quic_wcheng@quicinc.com>, cros-qcom-dts-watchers@chromium.org,
 Bjorn Andersson <andersson@kernel.org>, David Wronek
 <davidwronek@gmail.com>, Andy Gross <andy.gross@linaro.org>,
 Evan Green <evgreen@chromium.org>, Douglas Anderson <dianders@chromium.org>,
 Iskren Chernev <me@iskren.info>, Luca Weiss <luca.weiss@fairphone.com>,
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
 Yassine Oudjana <y.oudjana@protonmail.com>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 Krzysztof Kozlowski <krzk@kernel.org>,
 Konrad Dybcio <konrad.dybcio@somainline.org>
References: <20240501-qcom-phy-fixes-v1-0-f1fd15c33fb3@linaro.org>
 <20240501-qcom-phy-fixes-v1-8-f1fd15c33fb3@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@linaro.org>
Autocrypt: addr=konrad.dybcio@linaro.org; keydata=
 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
 izWDgYvmBE8=
In-Reply-To: <20240501-qcom-phy-fixes-v1-8-f1fd15c33fb3@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240501_160600_992893_400ED12B 
X-CRM114-Status: UNSURE (   6.96  )
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

On 1.05.2024 6:19 PM, Dmitry Baryshkov wrote:
> The UFS PHY is powered on via the UFS_PHY_GDSC power domain. Add
> corresponding power-domain the the PHY node.
> 
> Fixes: 5a814af5fc22 ("arm64: dts: qcom: sm6350: Add UFS nodes")
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

(same comment as p5)

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
