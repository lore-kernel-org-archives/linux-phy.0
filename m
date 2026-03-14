Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 73BD0105F7B0
	for <linux-phy@archiver.kernel.org>; Sat, 14 Mar 2026 08:15:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fDLoMjT21QccgvDgh6a17OYq0yWlr12HQq38F4ZzEiU=; b=iC9Wz9J5y8DPFZ
	+8CYoigNEImvsdKNSAyl/733JDaiJ0lEGKU2r31dSlfAkJTr4xOF8+1gboqtgV34C1EUZAUf7PzDh
	wppgc8ujtLHfqOjwbqXIYb4pCef3MUcUDWK2V7fa3GeYoVfcfflb8DO4cb55UUkw0vGl0+x4qjUyA
	jOuA4JtaMwt4q02myByALEDE1nOiS+i8PEVizIe0u9fFBUhqdRZmY+eqGUO7Yp2RStMJIuO+wpXJo
	GegODcgWtexxdi9kkD058ornkZpdkY6BPDCLEEQ/1ZqYOdacjqiRlrqgNh/l34vV3r0gGQzzHPnAG
	p54cA0z9zz9S4jh7iMVg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w1K9P-00000001cSI-3n5P;
	Sat, 14 Mar 2026 08:15:11 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w1K9M-00000001cRT-1VHU
	for linux-phy@lists.infradead.org;
	Sat, 14 Mar 2026 08:15:09 +0000
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62E3nHQj677055
	for <linux-phy@lists.infradead.org>; Sat, 14 Mar 2026 08:15:07 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=1oe/bEGh1wABv9dzWIU0CVKm
	bRrD+hQyEkkW2Ehs+zg=; b=aQL+I7nJTw58XPrCF9uKkjbChcjMeAjchi8hDJ7J
	nh5TGCuALUZHXXXarv4ZjCs7upjWh0qOeWpL9etG/mET45/JJRXtF4XZf8rIonIg
	1dUAnADv2roNFnR6of+u/hhlLy7k9C610zXvs6DUC89A315xUr/11b7wmMYwBrYm
	IBVpejcLdJGD3MVYCYGeQ3q/3Xd4bMkV0fjJoyKHVCnedQ9Fn3GPtdy5UA1UOMqJ
	dC8O3S+YHrDP6bIIPgmhnDJPZUOreEMSyMty90a3j1XYH1CrH4UNwV3S35PqURbx
	oPBLY+yNOFXSYg9iluqo+CKLpdKePBmjIwl+0eDGkvqEBw==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cw03xgd40-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Sat, 14 Mar 2026 08:15:06 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8cd767c51efso362303785a.2
        for <linux-phy@lists.infradead.org>; Sat, 14 Mar 2026 01:15:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773476106; x=1774080906; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=1oe/bEGh1wABv9dzWIU0CVKmbRrD+hQyEkkW2Ehs+zg=;
        b=Fyrz0MeesOMtt+0D1GYzy4hhw11KxWuw/LVOzR0RLr7jnsrTK1kgE446YfNAySpllm
         fxjBmozNiBK+mGxAQ3kPkZeiZE4Tp/H2+1zJ+xofuzRj5dRLKz6fkZgO5MvUB6i9kieX
         3JkoOQIUtl9Z8lz83Z88IVDcVEMCL9zPvFonvuMzKA4Law7xqpj/s5eHuaFYhCUWpiNt
         vx8I4A8ptZhpMlY1YZbpmRl8+q77L49bMrVdOwC2Sy3xLx2E9RL7XkDUU/vWMKTjQ6r1
         wJTjC5f9CglnzkMjYf+YQNuArB6QlGmsnRq2ItQl+KXg773JeSLS4gR8hSEmFb3pfa6E
         UFlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773476106; x=1774080906;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=1oe/bEGh1wABv9dzWIU0CVKmbRrD+hQyEkkW2Ehs+zg=;
        b=TuKMQS/3r2FCD5+xDYwbpqOGqCEnXSDyG8JZKklgUf6qVxwHDQBUwG9k/rspBmEQDS
         NkDm75e/JvkVC17yo/eEa2UMlJ6kKpOgVOCdAUQhWmia31Dp5BXNuOkBaB7v4vDxwzuF
         tWwFJFs+nYp3RxAfcVgCIosm2ywvE5qv2CjibT7SGsf18OE2asdgFGcvogDTSujQ8eQt
         mvsL+rfLSagYEViR23ZFb4wEj6DXwYOGZWWy+sKfZL8jsqX5xcAsow4zbdyEiwtNpCwC
         gdV5481zXQ8vznk5XWraLBS2+ArHKWMTrtALNZJt2iI1XTqg9WuNtLsNprG5vkuxZAtV
         rImA==
X-Forwarded-Encrypted: i=1; AJvYcCU+0qziVGQhTg8t1ViG4+Jy0s6QUoHRZc9n1xSF72e4JzKZLYDe1Q8d3iknLWDdaTDb2mFO0252FwY=@lists.infradead.org
X-Gm-Message-State: AOJu0Yx+PFAHCg9SA/Xggwofl/munb4TQfsk9c8VzPdYk5cwrsWNHF06
	A08V3N5w1LtJ64l9+ORnRu0Nia6iOno1Z/dyrDwIw4ArKU6AuYdtePdjiGw8DviT54qCy2t5/g2
	jevUK/kai8gUPyno3B21C5urF5QUIDlJYNIdvB4F2FtMOyZihM/UclcNtONMLYXIcJLLq
X-Gm-Gg: ATEYQzyc6eywwEtygb/4LOAyZ01SMRdg8JWgYpioVVYDrtCDAZVfDqwy/AUQE02NJ5H
	WKgJj3Rdej3BnuEwyVP/Nat5VZpFcJ/VkjNzPUij+vI5dUU0sTb/I+P59VHFyf4yME5J5Iywl75
	Q3fTYnuaSQovNa8CRyOiksqPM2Csm/ax4SIdmQNJAn5VkyDLzT1ijXlPa8HweNXAMXYNeYZUn11
	RRtpe8d0syb4DjQ/gsPniefl16J3UoSWPlzsNHcyG6xt1OVGkmk1qrZ4CiVzbnfdwl/jnZxX1WA
	Kp2qzao6XXykQDKBFwIyFg4Llky/9gGdil4cxAPXnB6JlXe5f6PYgnbRii0tJ26awb8pKnBDX+H
	LJHawq8GqOLR5tK/w6QVbo/+GgvQpIysQD12LetEtWvAopviIpsNcYNZqSB65pZlOua4ab52nx+
	FF5201+P8bxFP1S1Q8RxrpPa/rvKNS5w+ix+I=
X-Received: by 2002:a05:620a:31aa:b0:8cd:8e8c:208b with SMTP id af79cd13be357-8cdb5b05b6amr799154785a.38.1773476106256;
        Sat, 14 Mar 2026 01:15:06 -0700 (PDT)
X-Received: by 2002:a05:620a:31aa:b0:8cd:8e8c:208b with SMTP id af79cd13be357-8cdb5b05b6amr799151085a.38.1773476105783;
        Sat, 14 Mar 2026 01:15:05 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5a156033a1esm2008837e87.36.2026.03.14.01.15.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 14 Mar 2026 01:15:03 -0700 (PDT)
Date: Sat, 14 Mar 2026 10:15:01 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Shawn Guo <shengchao.guo@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Abel Vesa <abelvesa@kernel.org>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Luca Weiss <luca.weiss@fairphone.com>, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org
Subject: Re: [PATCH 1/6] phy: qcom-qmp: Add missing QSERDES COM v2 registers
Message-ID: <y27nftzoudhvyz57pdgch6rfdu4brss64vpwkcuasozbrri6q4@2tt43qo5quer>
References: <20260314051325.198137-1-shengchao.guo@oss.qualcomm.com>
 <20260314051325.198137-2-shengchao.guo@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260314051325.198137-2-shengchao.guo@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzE0MDA2MiBTYWx0ZWRfX3h7bTii+T6mM
 vEJgrL2RZfOS3mRyNW3XPcAuSYUj6UtGB/PyJqMKkCi2Qre4cspT2qjDzo5pN1l5UJNfPbp0qSP
 sgNeRsVLHrVndIoycdraRJMWBg8mKcSDHJlr9hVWhh0QiIvfFaTKEivn4Cq2XatnqHHMriCeufm
 Rbgzvkg6as5VgKAGj72UYO1KgreN1FITzhLSiYjIs9wYuPVrhWT08mn/v2f7mpYFkTuHUUVttZS
 dC3uQ+00SJ1jn/bft5dKuvUKT2GYEHCy0Yd2npujljKcQws60ptny0vDsAWPQL/9vrh1B/728fB
 HqVVzzOuNqN6JWPj9PDLgUndchUexqlDs1NXpiejFusLhJprAKM+pt3LI25XPieDVkD5Om3LIQL
 zzIy5ArY6B2IKs0mYCtWKYrfjO1oAyApe0A3Ad64bJAEAolwQIY1YEOqiRbJRZQgkLw5m0FC2h2
 1/c7Z38Q9IEPq410M+A==
X-Authority-Analysis: v=2.4 cv=YLOSCBGx c=1 sm=1 tr=0 ts=69b5190a cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=_glEPmIy2e8OvE2BGh3C:22 a=JfrnYn6hAAAA:8
 a=EUspDBNiAAAA:8 a=dUGQFA8BKvGjJvMztnMA:9 a=CjuIK1q_8ugA:10
 a=IoWCM6iH3mJn3m4BftBB:22 a=1CNFftbPRP8L7MoqJWF3:22
X-Proofpoint-ORIG-GUID: 3LA900hshqSolC2g01n-SCEGWs2MoD0z
X-Proofpoint-GUID: 3LA900hshqSolC2g01n-SCEGWs2MoD0z
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-14_02,2026-03-13_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 adultscore=0 clxscore=1015 priorityscore=1501 impostorscore=0
 spamscore=0 malwarescore=0 suspectscore=0 bulkscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603140062
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260314_011508_518198_DCE11037 
X-CRM114-Status: GOOD (  13.05  )
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

On Sat, Mar 14, 2026 at 01:13:20PM +0800, Shawn Guo wrote:
> A few registers that could be used by phy-qcom-qmp drivers are missing
> from qserdes-com-v2 header.  Add them.
> 
> Signed-off-by: Shawn Guo <shengchao.guo@oss.qualcomm.com>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-qserdes-com-v2.h | 3 +++
>  1 file changed, 3 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>

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
