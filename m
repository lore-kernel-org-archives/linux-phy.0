Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1117CC36000
	for <linux-phy@archiver.kernel.org>; Fri, 21 Mar 2025 15:56:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RiX4b5Eo9xHAEQg7iheCB/8PG3ukYeBIiXaHJbFX+vg=; b=rQTTIXHWY1ZJ5k
	ZLoeDj8E7EoeA+SAmX2869cngnF3z+CB2JatwPl5p8ydIdvweR3GJuPhIDCP3WHesrxzP+1cqMVcX
	cXgwi/pokW/erIMZtmEX2T4+/1DAVLfhb9F/OJZYZn8+7eNNfBIs8mLEp/3+hc2drB0HOXfhs1fQ5
	DsAa1OrpFNRvrKAjpa4vq+rg4wiOXo3IcI6yPNM4ZY5Kc5ePdYppC6DMvFB1VtW9tY1vRZVy/dx1n
	uNwQy7g60DPupCYBWFjAvvlB8llR6os1ki5n6UgHL9Bh8Sh2QI6PrtBt+xyWcULkMWxmHYe68zNo6
	aTqCWnrxLOoeZlikZsGA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tvej7-0000000FNcD-3NFL;
	Fri, 21 Mar 2025 15:56:05 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tvegG-0000000FMyc-2yVk
	for linux-phy@lists.infradead.org;
	Fri, 21 Mar 2025 15:53:10 +0000
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 52LATBii016546
	for <linux-phy@lists.infradead.org>; Fri, 21 Mar 2025 15:53:07 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=VQlDE2/fBoDju/XlglpVY6/w
	fpayn18xS3bj6jOtEoE=; b=jD29Qml+wTE5+2QhwYgyLZzkeSaTzE/Pij7VjbA8
	4k/oIrWsQmIIoY+EZfu/XxBkvCr9ObjmenKZfOZvT417avfhJwOHhvfnZTpcRbQo
	K/K05js6Gt8KWqcU0/pisHfHxvtLYFI1ME0D8iaphCtOp8GITOEWO92R07LO0hFq
	VXgVdxArFxisF0wZCH5OHYTnQptnX1R1gE5RxZM0ie+vgOZe8nTsfe9KWNBftY9K
	+NxWKq64w0ezd4sk2iEBcQcxJ/chx0OAtgyCIZOJC+nre/RG2hdyQ2WmJW7fcDUV
	H7hDNM6UhcPNcpQBIwVulZKgQBjKNw2Us8yTMtx5bQbnLA==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45gcd1dbpr-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 21 Mar 2025 15:53:07 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-47699e92ab0so42222201cf.0
        for <linux-phy@lists.infradead.org>; Fri, 21 Mar 2025 08:53:07 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742572387; x=1743177187;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=VQlDE2/fBoDju/XlglpVY6/wfpayn18xS3bj6jOtEoE=;
        b=jpV9JUw8G6b31yOjpacvLp80BSY+f/pSI9Ty0hfDoA0nQb6H7omUzKbP6ptnxqJ2rX
         YB827N30Cjropetr+zLiSbyIkXy6xlRxe9vODgkrcXdxcZMxpEvSXEF/suSoD2pkPUlF
         JJIvGR4genQlM27CR3tnEhSlu98YbpoqVBfMG8I5IY5s0IFyL6Z/hCgetRB/bo3CtWnr
         HNvfjgZC9liHpW5v+XjECidBeIVIAPPvuA5mybo4Mp+aUMmxOFOEp3ca1Whw74a9cOEU
         RH1Qvn6f1g1MspTt2qyp/fiXM0W6B9X7aDaL6GrKMheoACxmU+p3wlent9PlX+P0LGZc
         W8RA==
X-Forwarded-Encrypted: i=1; AJvYcCW40rNWnEhJwQugPCnTZyJ1J38x25XEVivU+kaKpds08OZHUlZAoQrhngKrGAPVIbVLycYhQ8qzjBk=@lists.infradead.org
X-Gm-Message-State: AOJu0YzkkX6b1vM95BAOSHgSq+vzzH2CsBsBqeLpm60EBcdt+CckU2E5
	oYcJY9+OL1Z0Colsxbv6SqAJ78nopwLXktzTXmOs5Ux+Dmt08ayYIjJ+ouTomlZLvpmX6z8+s7l
	xu79jobHICl+UiTHuTZz7F8yPP4JUr97aOpuMi2GkkZHxLtTOkh91Pi0cDS3JqQ0V
X-Gm-Gg: ASbGncs6f2Rt27YPCGjWxksjok2OVg5KwkZL/fpQOldAweKkeToilmRr95xBTFs0Des
	murET3VveRunKky0HhZoYd/9z5gr9JM8ZTs/SdJgRchDUoPZ8+ALIxnpqiIGE8xgO7Z4IH4fshi
	sTaj7DY3PAm3C5gFMX7bexgr2pgqGphUOMBzPicNI887HLqDsSLtEKKvcWUOFoFgs/17FvNObFm
	fdbs+ruzZ0tI27dc0o81Q2KgrjhlDjz41bAfCERSldqvzObkliBVOyHqpDwHz0WLUJfh8VQ/e+J
	qN2viVK0+pfw/UMkle4C/2s2lE8XV4+GY5GTPmBTOEcoY8vnWWkbkpiSdZ/mgf0XwY/i7pMQDPc
	O4kQ=
X-Received: by 2002:a05:622a:180a:b0:477:1e1e:de with SMTP id d75a77b69052e-4771e1e070bmr43919911cf.0.1742572386750;
        Fri, 21 Mar 2025 08:53:06 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IF3lNdzhAtr0sK0LLAK9PFg2BBOEsioVsVc8qjwwC0svOGQ2IU+IMTDXrTnp+MfGwnE56Mnog==
X-Received: by 2002:a05:622a:180a:b0:477:1e1e:de with SMTP id d75a77b69052e-4771e1e070bmr43919501cf.0.1742572386254;
        Fri, 21 Mar 2025 08:53:06 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54ad647c54csm216260e87.66.2025.03.21.08.53.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 21 Mar 2025 08:53:04 -0700 (PDT)
Date: Fri, 21 Mar 2025 17:53:01 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Ivaylo Ivanov <ivo.ivanov.ivanov1@gmail.com>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Alim Akhtar <alim.akhtar@samsung.com>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Marek Szyprowski <m.szyprowski@samsung.com>,
        Sylwester Nawrocki <s.nawrocki@samsung.com>,
        Abel Vesa <abel.vesa@linaro.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-samsung-soc@vger.kernel.org
Subject: Re: [PATCH v3 08/10] phy: phy-snps-eusb2: refactor reference clock
 init
Message-ID: <vphiep5kvusrsyv76a3hdnkso35isoe76uy5hx2vm33tix7yxl@4qh6sk3xe3nu>
References: <20250321135854.1431375-1-ivo.ivanov.ivanov1@gmail.com>
 <20250321135854.1431375-9-ivo.ivanov.ivanov1@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250321135854.1431375-9-ivo.ivanov.ivanov1@gmail.com>
X-Authority-Analysis: v=2.4 cv=bfFrUPPB c=1 sm=1 tr=0 ts=67dd8b63 cx=c_pps a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10 a=Vs1iUdzkB0EA:10 a=pGLkceISAAAA:8 a=EUspDBNiAAAA:8 a=bmNeyW_Q0om-5_paTGoA:9 a=CjuIK1q_8ugA:10
 a=dawVfQjAaf238kedN5IG:22
X-Proofpoint-GUID: 8DympmOTCFDB_vQoWc7Hc8ny747zwiw-
X-Proofpoint-ORIG-GUID: 8DympmOTCFDB_vQoWc7Hc8ny747zwiw-
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1093,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-03-21_05,2025-03-21_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 spamscore=0 impostorscore=0
 clxscore=1015 suspectscore=0 malwarescore=0 bulkscore=0 mlxlogscore=777
 priorityscore=1501 lowpriorityscore=0 mlxscore=0 adultscore=0 phishscore=0
 classifier=spam authscore=0 authtc=n/a authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2503210116
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250321_085308_873778_7F8CE176 
X-CRM114-Status: GOOD (  13.62  )
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

On Fri, Mar 21, 2025 at 03:58:52PM +0200, Ivaylo Ivanov wrote:
> Instead of matching frequencies with a switch and case, introduce
> a table-based lookup. This improves readability, reduces redundancy,
> and makes it easier to extend support for additional frequencies in
> the future.
> 
> Signed-off-by: Ivaylo Ivanov <ivo.ivanov.ivanov1@gmail.com>
> ---
>  drivers/phy/phy-snps-eusb2.c | 61 +++++++++++++++++++-----------------
>  1 file changed, 32 insertions(+), 29 deletions(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
