Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 62082D3749C
	for <linux-phy@archiver.kernel.org>; Fri,  5 Dec 2025 20:14:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=E0kcmCj3hi/ZeDIeORHg8AiyuT5Sx3oES8n5nEon/bw=; b=GRUe7he59b7YpK
	u+933jNUApt2G02NsPnq4Y5pZzXRfA+SH+QDpOIQHFpB1BucuWlf1HibBhpxOkUEZtqeva4VrFfd8
	pNWh+9xWxCvTXw+UH65OB+D1xz0HyadnXlD7qGsv4MYZ7UNfZh09nr4KvGeIaJcBU3ogxW1UG0NeC
	BsEoNPCU2VR+26D+WUmOvTOuCHrofSYwE0QhXMGAzgbBNFVxq0P2sXsyKTTAXpWKj5JhA2SC37BwN
	ipR89YLNEuKG9qI5fUTsTe2zEPVNBmNieYuY4D9zApONwxvVgvH+F9H3iZv2dWua17tQhvE3OKEKL
	PVRYnncrvl4OWHdkA3ug==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vRcCZ-0000000A0RB-0bT5;
	Fri, 05 Dec 2025 20:14:51 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vRcCW-0000000A0QL-0Yzn
	for linux-phy@lists.infradead.org;
	Fri, 05 Dec 2025 20:14:49 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5B5FBOSG1255886
	for <linux-phy@lists.infradead.org>; Fri, 5 Dec 2025 20:14:47 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=Q3EvGHgRlbS5shVZ0VVN2NQJ
	T7zGIo2BEsdcpNjZsfA=; b=H5gk96Sho6QY26Gl1RPKz7oAxb3ks/PfPdSAgS1M
	QAleZS9lvw45AdkuUuk/nh0i6w9DwG10fovjO6MFKw23SVhSTTTE8XjdbjSjQszk
	dheGJUTL+OeejhEjDGAhHuv9nXclBjVbx9DWJS/3WCJ3QgK0OqxX3CMC2VKSVv+1
	jIiyoVXCdOBc5nLmCR7W/sBT+NsnL8RCbiDKth5+R6T76Tt6yXVkJqAjy4vSy3EP
	lFs179lWnw12EtDYWFCxC/TWtq/exuD9rRRacORDxPtLbfSRtzz5zRlRvQa3eZZ2
	gGOxVa+y6ouLsolTsN6mBPd1dwATSVZX+BEu5ZrfyDwPqw==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4aukmj391p-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 05 Dec 2025 20:14:46 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8b17194d321so296131585a.0
        for <linux-phy@lists.infradead.org>; Fri, 05 Dec 2025 12:14:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1764965686; x=1765570486; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=Q3EvGHgRlbS5shVZ0VVN2NQJT7zGIo2BEsdcpNjZsfA=;
        b=T3SvcXNIhQ89bWRM82omkdN3EqIxHwocZSyMZzY4iOngb9IalowqN6LcFpmOBbKEuN
         YUJEYS8ubPHJ9gW9RuVk5hK81QAsDFxUG+XTWR77RC+fz1gS3a7fWFRsc8x3Qonwkum5
         qp2asYnZJS7On96myn33MrZBjkD0DcnroeadbHjaepH+0dnXVVx3/sKW0hsKx44I6dsn
         n7y63do8GlmEN30vMS4wFsdoUMT3JWyVfSCpC2H6CA75IokwklN5V30JJLJ7y2N32dic
         UF9ZSdyCfpcu/Om1sI2WEIbykezbQpuz+w1wQRfsb/XeUTAq3T5MTuii401VM3eg9Vmz
         VHdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764965686; x=1765570486;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Q3EvGHgRlbS5shVZ0VVN2NQJT7zGIo2BEsdcpNjZsfA=;
        b=Q4/LJ24hngBa95cjn2X7U1eG8hPl2878cEo6tEksHRBOwnFuZZaVGd36l+U7iX2V+o
         5wXKfQXobuwjCyGBNHRLjoJjGfrO0tgbFUUD+Yp/8kIj7XN6P178CBbxebqVuLpxZTII
         Bcrm+P5SFA7CoxDs/d1icBSs7uiCoOM9VBk/jmWUU7y2EShchxmIIrqGQ0Df59IeiaTP
         kUIqBtxBbnT8x3Bd+3WKxWpofS46i4umN3JlWWZOgEDQBlV8STcghz1QE/AwbwFt/t37
         2HvlOi1hHevUrX8yha8Elnxe/E2ViyD2WTae//03mhslGwDYq9AZnJL8kJt7FWSqhK1n
         Tx/w==
X-Forwarded-Encrypted: i=1; AJvYcCUPZB56kx0qROKvBF5JlGIWwKt5XwKY9vZXGm27ZFT+0CdVTh1YtIPwJ1e/SNxjxMzT30Agytw1p+w=@lists.infradead.org
X-Gm-Message-State: AOJu0YwCidxfVbIrLxSQYEX0MqQuq2nU6v48JLuieDhukGjQh383Ky0b
	IlZ8R00zZoz7obrYrx92G0Mb3oKf5l7Q2OZasID35TCo6NUd9UYpSWeK2gQYykBWMUaFlanHLxu
	fnoJOI59NJ0KzPCNFPG7NxmmZtJRPvJfxiPfBi7LBOY84JDgrmi1oC1PfOELp1iDReqpB
X-Gm-Gg: ASbGnctCcKOrHvXgy75S5gAu8py2Lt4ItmA1Mak3p9AfCK1VTdAh1t4S386FoiL5LY2
	epRBOfqkh6e4h30slfhlPEz8JJSS0aXPrM7+eFqYKiNYVbz3X8wJnkRcPWXM/1Yu7I5nv7N6htA
	3FfrPAr5AFN2UzgTE2Jja0IIdtYBRAaesvY0wHJlcOYyW3dqCVHdtmSdL+8X7OZp2x9eUEFFhT8
	DztWIsJmgxWdQpt98/Bcy94kSroMxm3VbD8Ev4BUUgSq2cP8uVYyYMjm+6TZc66FXq3Y6v5e2+Z
	4DP2uqPjCgW+hDgGAPzjZv0ICuoA8LS3519N9fAGKtJLhEJriqop6E887jNTKOcxU4BGl1Va0+0
	5XoHbw18ST/Kf4F/1GQh0xsW/kUMqRzAHEJaUa3fubvG4dIUFEIEEGfGYXFpbeILGzC4CN+nVfx
	Ssklk0nF2imlTvpCwptUNsK+o=
X-Received: by 2002:a05:620a:1917:b0:8b2:e179:febd with SMTP id af79cd13be357-8b6a2331561mr50402185a.10.1764965686266;
        Fri, 05 Dec 2025 12:14:46 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGEGqQ3m6FnpqaR5Hve3u+4mkL2wdR32OB01TZ2bFeJ424hCezkIZXj4dF9QZqciSP1ZXEItw==
X-Received: by 2002:a05:620a:1917:b0:8b2:e179:febd with SMTP id af79cd13be357-8b6a2331561mr50397685a.10.1764965685765;
        Fri, 05 Dec 2025 12:14:45 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-597d7b1a416sm1815344e87.17.2025.12.05.12.14.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 05 Dec 2025 12:14:44 -0800 (PST)
Date: Fri, 5 Dec 2025 22:14:43 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Abel Vesa <abel.vesa@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Abel Vesa <abel.vesa@linaro.org>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: Re: [PATCH v5 2/4] phy: qcom: edp: Fix the DP_PHY_AUX_CFG registers
 count
Message-ID: <xvkh657hkoztrvyjrepmq3bvhmjfw6evwl27vski3547mgbnrq@wzok7ld4wmh6>
References: <20251205-phy-qcom-edp-add-glymur-support-v5-0-201773966f1f@oss.qualcomm.com>
 <20251205-phy-qcom-edp-add-glymur-support-v5-2-201773966f1f@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20251205-phy-qcom-edp-add-glymur-support-v5-2-201773966f1f@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=bYtmkePB c=1 sm=1 tr=0 ts=69333d37 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8 a=c4sUNlcVcd6a9V-9oyAA:9 a=CjuIK1q_8ugA:10
 a=IoWCM6iH3mJn3m4BftBB:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-ORIG-GUID: R8YPWei5izXQ5gqRYlXH_AQ6rjGR_zFs
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjA1MDE1MCBTYWx0ZWRfX4atqu6xkwYa6
 AZw8G+StBQ4YIBduqB+eWjoml4WR7CWTcMvumh4xcOIgiaHyTQSfErq0Bb0jfWJ/kGBr98izOyL
 Cjti/hNbeQhz20suEa4LQNt9lIF9NH04NwRx4jQlpP0JgfNiNAfyBWY7UssMtPJ9uljMPES9y2k
 VO7xW2H8EV8KN07bIPAa8PqpwwxlcWqtoD5bQM5mhgRpR6M1IYLyZ4Y38eFZbyzeEXJ0xC0pTYy
 0lEfuh7PO52Tb3ynKdylIAwLFuu1RtDbQUjCEVXQQRwzQqMVT0haL10igQ99gCAjaCsBqikQf3Z
 wTv7OKi7rfoCgYpadaujovcIbLqatYdsXq8CsxA3+nVemWyQnFBsKVDalaQCd33CcysnbLd/bBE
 JZLNuyjxUVeIYzHaJ16FvxheYMDS0A==
X-Proofpoint-GUID: R8YPWei5izXQ5gqRYlXH_AQ6rjGR_zFs
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-05_07,2025-12-04_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 spamscore=0 adultscore=0 suspectscore=0 priorityscore=1501
 bulkscore=0 impostorscore=0 lowpriorityscore=0 malwarescore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512050150
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251205_121448_291965_D5C8559C 
X-CRM114-Status: GOOD (  15.95  )
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

On Fri, Dec 05, 2025 at 04:23:21PM +0200, Abel Vesa wrote:
> From: Abel Vesa <abel.vesa@linaro.org>
> 
> On all platforms supported by this driver, there are 13 DP_PHY_AUX_CFGx
> registers. This hasn't been an issue so far on currently supported
> platforms, because the init sequence never spanned beyond DP_PHY_AUX_CFG9.
> 
> However, on the new upcoming Glymur platform, these are updated along
> with the rest of the init sequence.
> 
> So update the size of the array holding the config to 13.
> 
> Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> Signed-off-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
> ---
>  drivers/phy/qualcomm/phy-qcom-edp.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
