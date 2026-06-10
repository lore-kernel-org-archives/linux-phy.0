Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 58348CD8CB9
	for <linux-phy@archiver.kernel.org>; Wed, 10 Jun 2026 13:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BXL+4gm9JGmcweVF7F5LIB2SBzpl/3JdiOm6fM/SMYw=; b=0WGHatfyt56DZW
	0MzLO53zi8H5c/0Qs0bWc4/ZEpGD2szUbNYMkwRiV0Z2SJkNJHUGCniOq86Pz0+PT3Ex0jahshacn
	D1HJOLzFdUtm3ZQzrDefPC6YKqcRVj8uHDT0wgjCB5WOrafMdKNRLvIlJDV57IpdIrz6oCqU3dzNf
	vjbfIchTK2Jfra43mzN4sVWGd+R3VqOczXSFxx8U3bkGqnHkNDpJgDaeEWHRWv6iT0qOVOpaDxm7s
	cnJiBVYXk00Qaz62wfHwxziGl2kbAVTTpOswTQ2MBnm5+q/iiBom036j0tYH84GEswh61iAQ1IPkp
	cGPAnpOHi+1tv2wfu9/g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXIrB-00000007kde-0Sr1;
	Wed, 10 Jun 2026 13:20:33 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXIr7-00000007kcf-2KrS
	for linux-phy@lists.infradead.org;
	Wed, 10 Jun 2026 13:20:32 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 65ACBmR61169773
	for <linux-phy@lists.infradead.org>; Wed, 10 Jun 2026 13:20:29 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=b+ILUUeSN9I7rJQjjJXG9lLz
	Il41Tpno6VEpIZWt+nA=; b=W2wsDPigsNbT6UesO9rCDgz0yG6GbY75tZnSU4+d
	sDhFjUGv0pM7sf70salXeeFctT7bxvQtalSCnGKny/Uwq3pffyByBkJYcXOuc3qr
	eKb9ULZHixiO8MzmueVgUofdq0msLz+rXl/IIC7VZlA1ljTaNPdFg8wQ3rZ9DEiM
	MuxeOZe9KDPPTL4BaYYIRyQACXJHmZSNtltSPC60oTeB1gyZbcBtGzOwhrcXi+m/
	i5ffxvXugGUyri9djfUGejRkRyRN6sjE/TrH3+T8ED3v4HtoeKfNhNipGP8LXbpO
	xa4S/aF7ouVr+uzcqpfUpmaTiNTb0osDB5nIxB75jPEU5g==
Received: from mail-ua1-f70.google.com (mail-ua1-f70.google.com [209.85.222.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4eq4w1ry82-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 10 Jun 2026 13:20:29 +0000 (GMT)
Received: by mail-ua1-f70.google.com with SMTP id a1e0cc1a2514c-96387f0ca7bso2164278241.2
        for <linux-phy@lists.infradead.org>; Wed, 10 Jun 2026 06:20:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1781097628; x=1781702428; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=b+ILUUeSN9I7rJQjjJXG9lLzIl41Tpno6VEpIZWt+nA=;
        b=O9qWnCD+3nXcQv8IwOTbWCjLoE4gBRQdSl7jnmZDNqOjxG5+XTFGNtmgBaarAf0gsr
         i1PdKyN4zJi5V0p7OBrW+zp9r9QqMCvm9tV079UGwrK5DzAN2Yhk9G72FlmCPdJskt4V
         AVP6zKTlDrNMQ8VaCxPIlIkWV7NiaOi1Ix8om0zPJmSiN14Ad8qtG7pmGzw2tU2+WcAF
         S1vQfYWEPcbUOVIg0V38xZ7Ogk5Jv29X8hBa6L6YyibRyzIM3IpUuCS9U6h9S6Ptc7rW
         HBxBOx86+XyUwA5z5C6vQClh3jzumRFNQ8F5CTauc7azlhXNxrnMz1FoDVoj4mDKH3rv
         VPnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781097628; x=1781702428;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=b+ILUUeSN9I7rJQjjJXG9lLzIl41Tpno6VEpIZWt+nA=;
        b=LWkjS3hbQD+rlrAwIm0ERteTAVyYu1f4Q8WRiWmIsYU7lGgKgnANuQ30AI35sDs3cJ
         0xR6qmiEzBYIEsf7oOpQ1F/ERlE5HpGupHV15JeKzkVlohOaoMeJZq+XmHEhrX6CEm22
         +8/1GFzkgcqXLWIoKlFC4+X+oQwd1mgzAxXelvM/iUBdI4TZcXFW8ETe5m3+FFjy0Jrd
         1SwhkilDAG9tBrFuz0zyzFEfcyn88BFK9FLGXc3UNw9S1nAOyrftMpaKFZVj+bvTFvgY
         vs+g4yFLozFxm7sUfk2PPBOMXa6JvO5JcePEgXMHgHU7+TQvg52QgiVlhvJDUGDX3Ato
         SvIA==
X-Forwarded-Encrypted: i=1; AFNElJ+Pdh4SYgp3q9XQGCVoNpCVURoJRX+5bSbOdFX4OPRNjjWDCcJIJuG7fl9bWY81ARFNY8FVyLG4GHs=@lists.infradead.org
X-Gm-Message-State: AOJu0YyiYr863/cgHQ5uMwrOvgLgLr355nuP5ZnnWZL5ePGmjd56kdgS
	Wfj8sV8TjDu+uZa22fQWOqj54dYTPEIzO35GU7wT523nkLjyVLa7wLaBbvmSmRIZOaD/RGtwO7a
	R+SB+yfEIkPqIRlwCZp/DUj/ZJFR6p2x58XnPBnu38R/JRdtDaWFnyTdr2+uooQfvDt8Z
X-Gm-Gg: Acq92OGLEyAFr/BD6+Dwol7VkCG7LCvHSNd17G7uiTu7+p9tDNP8VeeMEJkU/nIZDLc
	kqy5lEOrSCPP/t7lyDbj2wVH8QC/QRL8V+H6KGqGE1DnQOgH5fxoQFJqYzg/mXJKxNG8WW77FiH
	f6s53JAh283N3nib5pk8V7O01fY8IpKGNl8lnW4Ew5WJd71raIFfSeudpFsYjO3kCsolNspZybX
	5somNQxjtBE+863ezH7xgRcXdzDpkykdSkn0L+Bx3sPgVRvjeRUB5HniYzJ07ZuJqKG/0BHRNvT
	qhK75c8vRmTjXFIUTw3Q9Nd9QU2x7B9hsmEJ6zqHjmu9ruh4H7hBG6s9pi416yX0XkuX9PbI1tT
	toTWeK9VpKOOkwcPuMVCPJFdopqvW8clbsSCOCzAdn2QTpZf1IZ4H6EYWE2MpOu7SZJ9YNW0PVd
	HwX+3Pe69pYG7utuuexLM91Sp/WrYnwKeDib8w/dqCeYZ6Ew==
X-Received: by 2002:a05:6102:5044:b0:6ef:f691:7044 with SMTP id ada2fe7eead31-71928c9b108mr4398296137.1.1781097628050;
        Wed, 10 Jun 2026 06:20:28 -0700 (PDT)
X-Received: by 2002:a05:6102:5044:b0:6ef:f691:7044 with SMTP id ada2fe7eead31-71928c9b108mr4398247137.1.1781097627623;
        Wed, 10 Jun 2026 06:20:27 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-396ac2be2absm61723611fa.23.2026.06.10.06.20.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 10 Jun 2026 06:20:26 -0700 (PDT)
Date: Wed, 10 Jun 2026 16:20:24 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Konrad Dybcio <konradybcio@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>,
        Iskren Chernev <me@iskren.info>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Bjorn Andersson <andersson@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: Re: [PATCH 2/4] phy: qcom-qusb2: Fix SM6115 init sequence
Message-ID: <iykbillfumrcbi36opmu5i2fbcot7lz3settfnw5i7sqdgzmr4@evagz7qqnjpm>
References: <20260610-topic-8996_61x5_qusb2phy-v1-0-d7135980e78f@oss.qualcomm.com>
 <20260610-topic-8996_61x5_qusb2phy-v1-2-d7135980e78f@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260610-topic-8996_61x5_qusb2phy-v1-2-d7135980e78f@oss.qualcomm.com>
X-Proofpoint-ORIG-GUID: vCjk1CGBA0Jys8zfBALt6S69wsSWrGbo
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNjEwMDEyNyBTYWx0ZWRfXyBg5AmvqytvG
 llAej9tJJxheb+M+xf3NFRhrRpOPKTRhPeEwsF1DUqPCYe/ZeOCAh2tzsyIlmBMzPcvPis9g37S
 wiMU6ZkFnofrXoLgnEfbYk8R5tnt0YmuLKvBttuO2Oikuv+AyIxhIjX2NCNFoYvcz+9ctHVyCio
 I7V98tuTqDSzwRwHuhjrxx16bQs4CMRRkiFOVyi8J5DX3bNi0eM11VSKizl6EcOu6CN0WK4tIN7
 YFF1IJRSmfn/rlbi2dNHeLWXLjynETYl1jFdOhvUXIZ8YYFOVF+o5v+W6tnU0WY9WzBgclUdima
 uKG/37PIcgA3MvQya8wKdUWnP+hRCuVIw0xRucnoPQQ1dl13jLNCccW674JW02JUf63+iH7t1wv
 uh4aWryZHImekCZENwrApdkAfK3w/KOpWtqPa9rIYyli2ympVJdrX8Y25DUpbofmmFYVBacrHBG
 rnU4J6Lkh9mRZCqczTQ==
X-Proofpoint-GUID: vCjk1CGBA0Jys8zfBALt6S69wsSWrGbo
X-Authority-Analysis: v=2.4 cv=ZfEt8MVA c=1 sm=1 tr=0 ts=6a29649d cx=c_pps
 a=R6oCqFB+Yf/t2GF8e0/dFg==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=FelO9ux0wxsA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=DJpcGTmdVt4CTyJn9g5Z:22 a=Oh2cFVv5AAAA:8
 a=EUspDBNiAAAA:8 a=SC11PsEEbJH5d9KfBicA:9 a=CjuIK1q_8ugA:10
 a=TD8TdBvy0hsOASGTdmB-:22 a=7KeoIwV6GZqOttXkcoxL:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-06-10_03,2026-06-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 adultscore=0 clxscore=1015 spamscore=0 phishscore=0
 lowpriorityscore=0 priorityscore=1501 impostorscore=0 suspectscore=0
 bulkscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2605210000
 definitions=main-2606100127
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260610_062029_601540_1203C067 
X-CRM114-Status: GOOD (  15.79  )
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

On Wed, Jun 10, 2026 at 02:04:15PM +0200, Konrad Dybcio wrote:
> From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> 
> I don't know where the existing one came from, but it's apparently
> wrong, according to both docs and a downstream DT [1]. Fix it up.
> 
> The updated values also happen to match SM6125, which will allow us
> to fix that platform too.
> 
> [1] https://android.googlesource.com/kernel/msm-extra/devicetree/+/refs/heads/android-msm-bramble-4.19-android11-qpr1/qcom/bengal-usb.dtsi#145
> Fixes: 7756f1d6369e ("phy: qcom-qusb2: Add configuration for SM4250 and SM6115")
> Signed-off-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> ---
>  drivers/phy/qualcomm/phy-qcom-qusb2.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
