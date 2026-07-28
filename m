Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DFCEDC531F9
	for <linux-phy@archiver.kernel.org>; Tue, 28 Jul 2026 10:47:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OyRXD7pMaCM2eYKcV1Wb0LeQD2GGH4UEhkqz206YQd4=; b=JWHVcX1XaG8zev
	UaFkgV7s3vn4MqtZ1/3VgdfOdCtMtXqToUMYXKnAHiRnxkpLOzKW9tNujmcMSSqZAC6fKicNvfipL
	+QI6KvVgfLwyzccPrY9kM7wiHxGd4UU9Wj+PHXpoaAppxr7Pd8PSoLtb+ql7+wigW7QeZpbXTwpO3
	E26IDsQAkfYmvwr90g32lwFKXDFzn6WcVre1D/NU3rW2pOCfEbaYS3fuacMShnMclsvcW35DSorEk
	nKDVVohmT2eCCn3CAAlm+bcSEFwi0ScBCpdZS4kn9rgSnitTzViw+g4iY/59B+8GT6ToHXvUNCbqu
	Sa4qaE/YaJ2I5hWzu+Qg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wofKz-000000050gA-2U1Z;
	Tue, 28 Jul 2026 10:47:05 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wofKw-000000050eY-2saa
	for linux-phy@lists.infradead.org;
	Tue, 28 Jul 2026 10:47:03 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 66SAgToq2687911
	for <linux-phy@lists.infradead.org>; Tue, 28 Jul 2026 10:47:01 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=ZSQCjovMoYS+6pEsxEo7tfKm
	+dlRh0HJwKOjEk//Kqs=; b=hQD/heiFUcX5vffC6Pm9LAl8II13oaiJ5REbHxXq
	H5DSEodQspUaY2nJnvOJ8Ih8sWc+a459Bk+Vn7PS4A//DfTk2R7f8+XdHzmLD2kN
	Kq4Fo4kMUevBcbX9F+0FbUttiCnM/Rf5iJRgrpr1Qtu/RDf3gacrnTnggJqc6e/s
	xH9eGfOkgiqlDMD5F7qrfwDz4Y3g5SJ+e98Wi38iP8Q1LpZ7hYFLGGX/vSBy1i+8
	wHCT1fAk3K9l0Ae5miQrb1bKnoY57RlMJNOuNannIOY1n0ZiZSvVePcYURoAEfH0
	Wni6apLgLSX56/ZXU/i4YzVrFMJMh3L2yRuB6Kos/OOfcA==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4fphh7jbar-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 28 Jul 2026 10:47:00 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-51c1a97644aso46684851cf.2
        for <linux-phy@lists.infradead.org>; Tue, 28 Jul 2026 03:47:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1785235620; x=1785840420; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=ZSQCjovMoYS+6pEsxEo7tfKm+dlRh0HJwKOjEk//Kqs=;
        b=Y0/YxKxsvhJLSWpOj/qTqsBMGeKtUIl9KZBPspr6Sl3uxq1emEoKmaax2AC37WiurU
         ECdEHTIxyUqV9ismWVLp85v8IN+xa/ffrQd8kvvvNXbZd1vLrtOLBWi6iBvS+tKnPHiZ
         TyxxKQvgX2iGu2kHt26FWVMbcdgdhlO5Dnh2u89XrtfqXwRRbFoeX98Zor2lQ26/EF2Y
         H3vqd+P1vT/8fxh8PiIR2zoHgUl/XZ97j10Up30ztpWJEoPaKra1nRaDajlNd/rWK78Q
         LWeVhNyTqCcubzcEgFbZRLEkIyYBcXw2slHtrGitC8JHmnXxCEF4D5GCH9Dvgc9G700d
         HyEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1785235620; x=1785840420;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=ZSQCjovMoYS+6pEsxEo7tfKm+dlRh0HJwKOjEk//Kqs=;
        b=TGQqVkZz61jhnMigdOet2QaOwEdqQ/EMH4AhNKs9ik9thijwOZTUq9laONI8MvwpWG
         LwJdJIBPimsSBHED4M39CQXI6Ig4SdBzZB4fdQgb6uJgA1z+N+6fowywr4cLrnJNg2pQ
         5dQVdbSDpiDFKlZ6/BqS+PfK3NxxSuOEWLsbEyf5+lfL07/JsYynBVdwuBDMNZKjTBRj
         OgYVQYuV8SOW0ZKyIsY2Y81dtTBggPmKU/G27934aWcUMwS3gSkjd/s7xgPKqsOS5NJb
         hj4ecSkvko25zqB5u6BMOD4pwLZNE34+ATsWa93q5YWtdBUbYP8PbzqI8l1kd4ReTmzd
         B2NA==
X-Forwarded-Encrypted: i=1; AHgh+Ro1AA11GN4LFwuRGKdBhNGxJs1dX3HAhzYb723BrYVp2AyKeCMij1KzCcxcLrxVGyKLeF8K5hL9b6Q=@lists.infradead.org
X-Gm-Message-State: AOJu0YwZPgGAW47AFhfjmh9gD4C8mcDp43Ley41oucAYOhQmg6ejIIBF
	IXajKlva44B7A3kPzo6oHbUQXbWR10Nz8zFaLX8DLArq7T5JPvyGMf2oSfYLDf4H3RELrD1p76u
	rQrvhx2EKWFwJsKHcgDeE6Ddd2L6lN28wF3qqJ55Vu7t0QUjiYX02FJQb614vj77glYRp
X-Gm-Gg: AR+sD12XBpZFeKwD7CnABOkZAIvcBg93dPuSo11XjHQPa6aSZ0xHYbma6WPZ9X4QO9s
	1bbcNTicnMtr+Q9f2rVJlcg0OW4sauuVyA7zxmBrDXRZV0uvhjaNwYRV2ofuKjsaDSoRlZZT7/+
	Cr8MYb7IbS307JNHgMP9GLTYs/HIKnnqRXlTQ0kJe/str98Ri8jkzgSFuRG2hIl+R3Cc1ULFHDs
	uFCQJv80VEhOLpbCJ0T638qp/cAcLjYxexXbsTRBXgpfTG3xpK92oX9GQxNR+ML/foOuvNwh9Iz
	V1sajgrmcsW3MoVkdnLRKHVr8qmCJzILW1mECxtz6kpPX7LYn5310ea3I667wyM/j/D7aMEruZR
	QjhklQKy9SF1V1yEJg3TtM2eoJO6dmsGlmEavpbnpbDFiCQf7ja97ui72J2gKFwU2sBt2UYdBFr
	HXqYr1WM00fDMAOA==
X-Received: by 2002:a05:622a:588e:b0:51c:17cd:1fd4 with SMTP id d75a77b69052e-529d70d7486mr14826331cf.41.1785235620184;
        Tue, 28 Jul 2026 03:47:00 -0700 (PDT)
X-Received: by 2002:a05:622a:588e:b0:51c:17cd:1fd4 with SMTP id d75a77b69052e-529d70d7486mr14825941cf.41.1785235619645;
        Tue, 28 Jul 2026 03:46:59 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-39f22187279sm20379291fa.13.2026.07.28.03.46.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 Jul 2026 03:46:58 -0700 (PDT)
Date: Tue, 28 Jul 2026 13:46:55 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Robert Foss <rfoss@kernel.org>,
        Todor Tomov <todor.too@gmail.com>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Bryan O'Donoghue <bod@kernel.org>,
        Loic Poulain <loic.poulain@oss.qualcomm.com>,
        Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-media@vger.kernel.org, linux-phy@lists.infradead.org,
        Krzysztof Kozlowski <krzk@kernel.org>
Subject: Re: [PATCH v13 2/5] phy: core: Add devm_phy_get_by_of_node()
Message-ID: <t2c7lvpp3xyoumd2gdzntkwb6xpdjvhzyp2hllukimzfzbwbvm@fkgwdtcqxof5>
References: <20260728-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v13-0-ae811e2f0799@linaro.org>
 <20260728-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v13-2-ae811e2f0799@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260728-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v13-2-ae811e2f0799@linaro.org>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzI4MDA5NCBTYWx0ZWRfX3NRdcV4orJlL
 PCFbkIyxDEZ3UINHO/i6DuVVYZkzPARMGcMzinxc9HwjF4KIMOsZRFDbWvZqpdfL61pAZkqc6Qi
 W6PT28zQrvU1BWeyNOckJ6OKt8gAitwZJEzGXaIdE25/iiVFafdzBdscWhQ2CGw6hollFWowz9s
 zU0t8fiD3c9v/is4Y/W/yUM41JI2yPKRosZ9tmEnISQu/tWprWCAqbDlfPZpr6lAyyx9Q/kFHRe
 APdkSlprihviLg581X3EBWG1JO9Be65ABO/JKPGucf4QnePQZpUlcBt5lbrbvm1o0J03En9tVMy
 YYIikz5GQ8k8aMZ95lhOksQoAdqDXjKhDyeAAGCD6KOUEjx9dMdMD4v5vMOXyhKi6KJP9a2Ss9A
 ehDlqcD5/RQnVLmziMqgJmUYDJ7dFQI7zJSQjD9uywHSomGmn4cMe28K3RSaJpGy6NJixv58e0X
 q7X+zwIgKdj9zob5bjg==
X-Proofpoint-ORIG-GUID: kVhe46B21pHZrvVLYZuOyhCSpgw8ATk9
X-Proofpoint-Spam-Info: AW1haW4tMjYwNzI4MDA5NCBTYWx0ZWRfX0NE6mfHbQHU4
 SgzUowQDOYACja09ikgFoDK8qxh+4+zuE1areptKjSB0G5JnMD5sp/1eHqcz+hDP2Tp9IxyUIWt
 wb5liMSlUlP9w6n9XlWqV6AqusNPWDw=
X-Proofpoint-GUID: kVhe46B21pHZrvVLYZuOyhCSpgw8ATk9
X-Authority-Analysis: v=2.4 cv=b+6CJNGx c=1 sm=1 tr=0 ts=6a6888a4 cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=RAioF0-LDSMA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=3WHJM1ZQz_JShphwDgj5:22 a=KKAkSRfTAAAA:8
 a=2AomeXgjd0MQctyRrFgA:9 a=CjuIK1q_8ugA:10 a=dawVfQjAaf238kedN5IG:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-07-28_02,2026-07-28_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 phishscore=0 lowpriorityscore=0 suspectscore=0 adultscore=0
 priorityscore=1501 impostorscore=0 malwarescore=0 bulkscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2607280094
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260728_034702_840621_72BB7B7F 
X-CRM114-Status: GOOD (  24.23  )
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

On Tue, Jul 28, 2026 at 10:35:33AM +0100, Bryan O'Donoghue wrote:
> Add a devm variant of phy_get_by_of_node() to allow for the familiar
> pattern of having devres automatically release resources on the driver's
> exit path.
> 
> Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
> ---
>  drivers/phy/phy-core.c  | 34 ++++++++++++++++++++++++++++++++++
>  include/linux/phy/phy.h |  7 +++++++
>  2 files changed, 41 insertions(+)
> 
> diff --git a/drivers/phy/phy-core.c b/drivers/phy/phy-core.c
> index ebfad5325072e..7af24f2f4120f 100644
> --- a/drivers/phy/phy-core.c
> +++ b/drivers/phy/phy-core.c
> @@ -1029,6 +1029,40 @@ struct phy *phy_get_by_of_node(struct device_node *np)
>  }
>  EXPORT_SYMBOL_GPL(phy_get_by_of_node);
>  
> +/**
> + * devm_phy_get_by_of_node() - devm managed lookup and obtain phy reference by device node
> + * @dev: device requesting the PHY
> + * @np: device_node of the PHY provider
> + *
> + * Returns phy associated with the device_node or ERR_PTR. devres manages
> + * releasing resources.
> + */
> +struct phy *devm_phy_get_by_of_node(struct device *dev, struct device_node *np)
> +{
> +	struct phy **ptr, *phy;
> +	struct device_link *link;
> +
> +	ptr = devres_alloc(devm_phy_release, sizeof(*ptr), GFP_KERNEL);
> +	if (!ptr)
> +		return ERR_PTR(-ENOMEM);
> +
> +	phy = phy_get_by_of_node(np);
> +	if (IS_ERR(phy)) {
> +		devres_free(ptr);
> +		return phy;
> +	}
> +
> +	*ptr = phy;
> +	devres_add(dev, ptr);
> +	link = device_link_add(dev, &phy->dev, DL_FLAG_STATELESS);

Why are you adding devlink here?

> +	if (!link)
> +		dev_dbg(dev, "failed to create device link to %s\n",
> +			dev_name(phy->dev.parent));
> +
> +	return phy;
> +}
> +EXPORT_SYMBOL_GPL(devm_phy_get_by_of_node);
> +
>  /**
>   * phy_create() - create a new phy
>   * @dev: device that is creating the new phy
> diff --git a/include/linux/phy/phy.h b/include/linux/phy/phy.h
> index 71c2e16397130..14b924a88411f 100644
> --- a/include/linux/phy/phy.h
> +++ b/include/linux/phy/phy.h
> @@ -285,6 +285,7 @@ struct phy *devm_of_phy_optional_get(struct device *dev, struct device_node *np,
>  struct phy *devm_of_phy_get_by_index(struct device *dev, struct device_node *np,
>  				     int index);
>  struct phy *phy_get_by_of_node(struct device_node *np);
> +struct phy *devm_phy_get_by_of_node(struct device *dev, struct device_node *np);
>  void of_phy_put(struct phy *phy);
>  void phy_put(struct device *dev, struct phy *phy);
>  void devm_phy_put(struct device *dev, struct phy *phy);
> @@ -499,6 +500,12 @@ static inline struct phy *phy_get_by_of_node(struct device_node *np)
>  	return ERR_PTR(-ENOSYS);
>  }
>  
> +static inline struct phy *devm_phy_get_by_of_node(struct device *dev,
> +						  struct device_node *np)
> +{
> +	return ERR_PTR(-ENOSYS);
> +}
> +
>  static inline void of_phy_put(struct phy *phy)
>  {
>  }
> 
> -- 
> 2.54.0
> 

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
