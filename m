Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3645BC4452D
	for <linux-phy@archiver.kernel.org>; Wed, 22 Jul 2026 00:35:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mc061kwl9ekrv4c7WVLBYsNV4WyQWG/Nvp07rin+dSM=; b=0A1GR7lB216rn5
	BpRK078EPamt/SPqRK9N46gOuk4SuukGvopxUqYBs/wYuWmK5ahaDUiNgLZSoRj9AkhOB1JCpoewH
	z5RSlbCAM1ETtzOFodveusBVgeomK+tpOVVLdWcJ2gyGHpCbiI9wAgURGcj3toYeJ01XcQPurd7xn
	Ijc6DoSV+a+hBaYRciOFs1AamvwqYL8iTQ0+YiGRmS/2VApB9nebuUIzXFN53QP533S/G/gjXP94j
	v1CahsvkSHFQEhpZmb3RVzo+LOtw2LJY5UUUr3wCuqk6JsE+iTOYgNLWJxviNIX0olNblN9tNgzvq
	B7V+2x2QIMpYbyTTEKEg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wmKvt-0000000AeXe-2TWV;
	Wed, 22 Jul 2026 00:35:33 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wmKvr-0000000AeX4-0nuc
	for linux-phy@lists.infradead.org;
	Wed, 22 Jul 2026 00:35:32 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 66LMZI6U2934425
	for <linux-phy@lists.infradead.org>; Wed, 22 Jul 2026 00:35:30 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=f0V09DaOcz09+t9yB3GnAscn
	+Wyme+f7EEbXFshnkFU=; b=hGtFjSXJcWYAewpEj3csLzDMonBIsp5X43ygTqjg
	TeyApyY33614BCpgbmMQIcbVf9CXn8APaRipjqESQpIaASHM/BuXAMtv+88YNwYI
	w0ALBUf2HmjP22VP3hyUizfMBuUpHaajrnM9pvSTl/pfVWxb575CQeBFY4Mzx+P5
	U1pgmOECBVfDe1mF0sbqbVpwU1H9E5feOb0jBWWlbpHED6E9YPgrWq7v1mtbMyug
	UM6M6j6Fsuqu5PZvar4vJItmJw5Nn+afHJ8uYK8ctE9no0L25AQoA+Inz8tfPU6l
	fMSQKhjmaNNqukcCCVcZcloH23e84soehSZlpSN44LKdBQ==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4fj9aeav70-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 22 Jul 2026 00:35:29 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-51c1d137a68so325911551cf.3
        for <linux-phy@lists.infradead.org>; Tue, 21 Jul 2026 17:35:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1784680529; x=1785285329; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=f0V09DaOcz09+t9yB3GnAscn+Wyme+f7EEbXFshnkFU=;
        b=NloUBxi06euPAiUiD1zPCekKi70zF3x6/H++stSDNhpghkgbo+Hp5g0AXC9x1STuAj
         pW+fWjoNNmXou9lfZIB3NKd3DR/lbImupxgMaTOc9lq52ewOW7ix9zvvmuLngrBEJ+78
         vZEM+7kOqg/243DHzjSex8RiXUsuTj/t6jouW8IRzKWLyiWWBTt0X6ZJsUzyYSzk4d0x
         wOUVWQZi7SNuQWL4GJXklMqpJwgB5U++R9C7zsybTHNCWY84Yvg4cgMmu5TEABvu3buJ
         AgfHqtFcr9a/RDltlN4y8iQdXQofFQy3XbyP0P7oA8T75zl+j32p8zsiWsRJiv7Bb1v3
         A/5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784680529; x=1785285329;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=f0V09DaOcz09+t9yB3GnAscn+Wyme+f7EEbXFshnkFU=;
        b=qmU51/YZg0gTPPVpMSLevIAhRiB+2mJLOklV6+9WoTw4Bx1QjSlRToyvlOetOO13hN
         oWkdPSo1qsQfIDswhljF1hsKyjQuBFCk2I2cl/M8w97rGuH9syT6poXNhkRYfmuXhG2/
         9t2j/fdsM/YVLdiPM0v7A6tGNueNhSNwQx+sawdwJEVSCkljOxTcDTt7KaufGPbBliPk
         X3mXYGHS2/n3Vi2XuHHTqgs7lSrlznh6E24R1nhUhcc7MnjOclemHEabMeVN7XNdg+gn
         WxOVIAsyWaMDTo+lkJNlnvv1t58tlZty61YgSmsqZvi4b8xqWfSirlYaA4/5lEFLVue4
         b2fA==
X-Forwarded-Encrypted: i=1; AHgh+RrHEooBa0Zgpxbzcqli6C6OCSPlXvxopKQjGCEuqkafcLP4ZmDAb+ThDaN9msyYBZ208xUCKd6Kfrg=@lists.infradead.org
X-Gm-Message-State: AOJu0Yw/0iYezS2bmpTXEbLCnRVkrW4K+l5wFRitFpj2BvgIlITj0UdJ
	gyDFNtUCG+o1ibLaj0/Tjh28/m0tARBMCfbTHIh0HXFvqVX+3d5Lj7VovnVWpyZE5ct+W0g4v5j
	lWI7pXFeRQEmedzdRjxZv8H2YA6EvKQvVq/rgSXbouwQo4L47bMQUM7v3eRAWvG64YMey
X-Gm-Gg: AR+sD10rWSizHMDCT0I1hLrkmXsX9ayBK4nxdpbWSJiyLAFpvuoCOvmN+Dfx8BFEeQy
	ljBqfm5eZvbtyeEFBLmAnXKb4YoTbI/H9LT3PIS2pQuva85kNAkmTP+B9JZT25vOxbs1k9+ETzS
	Nso8OHINYXxANkOalRwwg2uQxrvzeabogvjuyK2/SPbbbUJWY/4zlBHTpRguxRzJsghTJRl9gqA
	P7lI9IxR8dSKWTXOeG3h/xudcfuS9IxOOFg+JqR05yPQUB8UbT7y/TjgC6E/2TnZzHnEtLmBEg0
	B0uondhCLBmuymX5CAY7BoaUrp4IBm4NBHHNIiIdMHoYb5Y6OcyZ+8NvztfY8pgbG+B8ZbAxgU3
	boNCJHyo6E5rx9TNMeGf5rKnMPbAscpSP4NaCRLvR09W54dZA7QS6J3xJMGBJLuwcHp4mL44MGI
	rjwdmkP/dVT1xClw==
X-Received: by 2002:ac8:5a86:0:b0:517:a9ef:ce30 with SMTP id d75a77b69052e-5213c8e2bc1mr196938901cf.17.1784680529363;
        Tue, 21 Jul 2026 17:35:29 -0700 (PDT)
X-Received: by 2002:ac8:5a86:0:b0:517:a9ef:ce30 with SMTP id d75a77b69052e-5213c8e2bc1mr196938611cf.17.1784680528783;
        Tue, 21 Jul 2026 17:35:28 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5b2a9f50b18sm179116e87.83.2026.07.21.17.35.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 21 Jul 2026 17:35:26 -0700 (PDT)
Date: Wed, 22 Jul 2026 03:35:23 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Esteban Urrutia <esteuwu@proton.me>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, phone-devel@vger.kernel.org
Subject: Re: [PATCH v2 2/3] phy: qcom: qmp-combo: Specify PLL version in
 qmp_v6_dp_serdes_tbl structs
Message-ID: <dph6cacosw3jzksqxp7fgofdueukrq6a3c5xys4jfrkqjuigvx@sroivvrxiwxk>
References: <20260715-sm8475-bup-usbss-v2-0-2d8def39b190@proton.me>
 <20260715-sm8475-bup-usbss-v2-2-2d8def39b190@proton.me>
 <wg6lgpaexz4ktjlfzqpsidj56wr3hjax2ktn75kqsoaubtdxre@xh3yn3xpr4af>
 <b77dc15d-f9ad-4c06-9e24-8f73421e2130@proton.me>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <b77dc15d-f9ad-4c06-9e24-8f73421e2130@proton.me>
X-Proofpoint-ORIG-GUID: sbOxS4CxLf-LU3IKYRNw0BVLzWxaUDZT
X-Proofpoint-Spam-Info: AW1haW4tMjYwNzIyMDAwMyBTYWx0ZWRfX9gyQxlvVHe2X
 O0pA4H7Sta3hwxp8tdrbj/kk8QUhO6X2tLdWoMBLBxQ/QFuupoCrw4pGWN+omukQfqUL9+AtbnF
 caeDv3RR1BFq8bRqblekNAOc5mQMIQE=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzIyMDAwMyBTYWx0ZWRfX385wHD5tIHwk
 I8AWvRZOm6NAVdSAU2uLHyz2wTKj4TndnZCd1rueg1quyi7YUJmSGtXWsfK7LAHrraw4ICbY2rQ
 mKEtpvvpudRnk7+Ngq8iEVNO3M05nf1qhJBoE5KuSGf+EEmpsjgZCbH21a9lIxFIzz728s/p0nC
 PPeT+jEJ8h2hpoO1sLFSz9PGlxFf2cLp7yPn9Lghhcf366DgaDP5pZrg6PHbDK0TcNI4ndsr9p1
 6Tl8RkPIm4e1lqfYqDVZ3Ruan6oTqB2lmGxV6h2kiKJq+aDvWD1fWi0sDRourt1W/qv5Y+fy+7G
 QwcFJsX95pClTJ6IIC2gqhj67nLw/P7CEVvrF2FkItt65KGQ1FWthRvIo/+vlWK/liG4rI5jkhA
 9E4HgrM0aLCnhke9M9wwo2TRra+/O3Fgbz++nTWTQmU/3FtdpYB12jB9ytbKdCOj35GKuWTEXmN
 04W67bdtoy4vntsjF7A==
X-Proofpoint-GUID: sbOxS4CxLf-LU3IKYRNw0BVLzWxaUDZT
X-Authority-Analysis: v=2.4 cv=Cr6PtH4D c=1 sm=1 tr=0 ts=6a601051 cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=RAioF0-LDSMA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=yx91gb_oNiZeI1HMLzn7:22 a=OQN141zOAAAA:20
 a=NEAV23lmAAAA:8 a=JfrnYn6hAAAA:8 a=PhrSGFbiKP9hCI9xACsA:9 a=CjuIK1q_8ugA:10
 a=uxP6HrT_eTzRwkO_Te1X:22 a=1CNFftbPRP8L7MoqJWF3:22 a=bA3UWDv6hWIuX7UZL3qL:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-07-21_04,2026-07-21_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 malwarescore=0 adultscore=0 impostorscore=0
 lowpriorityscore=0 spamscore=0 phishscore=0 clxscore=1015 suspectscore=0
 bulkscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2606150000
 definitions=main-2607220003
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260721_173531_407197_8AF113E0 
X-CRM114-Status: GOOD (  18.73  )
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

On Wed, Jul 22, 2026 at 12:18:10AM +0000, Esteban Urrutia wrote:
> On 7/21/26 6:46 PM, Dmitry Baryshkov wrote:
> > Checking the hardware docs I see no mention of v1 or v1.1 for these
> > PHYs.
> 
> I got this information from [1] (SM8475) and [2] (SM8550).
> As can be seen downstream, SM8475 specifies a v1 PLL while SM8550
> specifies a v1.1 PLL.
> v1 tables are used for SM8475 as can be seen in [3].
> In downstream, the SM8550 driver [4] defines both versions.
> The declaration for the structs found in the SM8550 driver can be found
> in [5].
> 
> Please check my findings.

Quoting commit b5383dbae381 ("disp: msm: dp: add pll params table for
4nm PHY pll settings") from the SDE driver:

    Because of changes to ref clock frequency, few of the pll
    reg values are different for kalama compared to palima.
    This change differentiates between these two 4nm versions,
    based on pll revision and also introduces a pll reg table
    to differentiate the values.

So, I assume, that v1 vs v1.1 is a clumsy downstream way to specify the
ref clock differences (which affect those tables).

I'd suggest adding the comments about 4nm-v1 vs 4nm-v1.1 rather than
renaming the structs.

> 
> Regards,
> Esteban
> 
> [1] https://github.com/LineageOS/android_kernel_qcom_sm8450-devicetrees/blob/lineage-20/qcom/display/display/cape-sde.dtsi#L70
> [2] https://github.com/LineageOS/android_kernel_motorola_sm8550-devicetrees/blob/lineage-23.2/qcom/display/display/kalama-sde.dtsi#L71
> [3] https://github.com/LineageOS/android_kernel_qcom_sm8450-modules/blob/lineage-20/qcom/opensource/display-drivers/msm/dp/dp_pll_4nm.c#L195-L282
> [4] https://github.com/LineageOS/android_kernel_qcom_sm8550-modules/blob/lineage-21/qcom/opensource/display-drivers/msm/dp/dp_pll_4nm.c#L131-L152
> [5] https://github.com/LineageOS/android_kernel_qcom_sm8550-modules/blob/lineage-21/qcom/opensource/display-drivers/msm/dp/dp_pll.h#L104-L129
> 
> 
> -- 
> linux-phy mailing list
> linux-phy@lists.infradead.org
> https://lists.infradead.org/mailman/listinfo/linux-phy

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
