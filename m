Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8D0D7C5DF70
	for <linux-phy@archiver.kernel.org>; Tue, 18 Aug 2026 08:59:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cnzrXHo+KXGsB4RWrmV96sdK3Tf2zSZzp7JJ+aWRsvo=; b=UOejQTIO3kObVg
	Qd/2t62UwzOhvhENBAO+P7KbmQhOGntvfRUAClgXYaoCkkxXBMkJjg0PyBowhTLT2xK7dTB5zQDvq
	a11ADfLJ/tBIg7XBtd9NYs/uCck3HrQ/5Q4xOAtBnRffCXhQ1lwliqFpzbOvS+HFn9+mYNVPYglQo
	jVENxQBbYy8HfgadurapY5+xnGfKYnxpL7fN7gByIV1UL8bWCugONHRSdoLUwp/E+5nJt+LQXPAQB
	NLQd3HXTmFQmVByb7ZvRsL7lioCGnjCl1XWF6ec7r/3AWAcIRgfYaD4vWZIG/xqzBL/q1vzwQ926D
	fP7TlEg5i24ZMx0eyZGA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wwFfZ-00000007YrD-1BV4;
	Tue, 18 Aug 2026 08:59:41 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wwFfX-00000007YqD-0PkQ
	for linux-phy@lists.infradead.org;
	Tue, 18 Aug 2026 08:59:40 +0000
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 67I8BFLt644973
	for <linux-phy@lists.infradead.org>; Tue, 18 Aug 2026 08:59:37 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	pUZh4V+xlLajL1iKhB/L1N6pUu9ZGTc+yAIjmI39q5A=; b=odJNddL6n3Yg84V/
	V7dp51G8nLT/abdu4I4lBqhIab1eOjaky+vhaHVXKOa9Wn0wI3JyLXDAP2LMDO97
	9xz/MMmkWSxgIAnNNn5ZQO+31NzCq2VR/sOHEWxhmwxU4Ykb019Uxh8Q+939IkvA
	BCy65w40wXYHSLmq0zVxe6YzJAyMgllnbph5RlrWzt2KawKiJOzFXLKX9nzho+h8
	GEYxTtZNshjh1I67lYUqyvvXFGL3qTLBUrMma21YSJLAkQWEkWsXB8m1o8Kd5l2l
	0CSLjWXJxfCjXa0Xaw693YZ5+vuuqHWAYNASoIAPSUiBa2F7Rj8bDdtcQ3ZMHDN9
	ZdBHpA==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4g4611bpvu-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 18 Aug 2026 08:59:37 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-930b81c13b0so31734185a.0
        for <linux-phy@lists.infradead.org>; Tue, 18 Aug 2026 01:59:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1787043577; x=1787648377; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=pUZh4V+xlLajL1iKhB/L1N6pUu9ZGTc+yAIjmI39q5A=;
        b=fl9INCosQyzhhHU/oW4vfGgMXEijraLvE3nYchi7/YNPB4rpwEFKYi9WuLxDWhW1lb
         /U61Xvqcuppz3rL+ywX6DZ7hSzQoYMkbgXzFWoSh15Ldgr3BFRfz1WNsDD0nsowydYyp
         77Lu3D9eZ4gyi5mfGnMIMzugDoOjqwcZ7i8HvVdwAQMyTvaPK5zkC1hdxRd/oT4y5APH
         Y6pzPTe0DdkZDnMh268PK2MeQyQtycVI9qnTc6ztoDVhZ2dLVKSdjZPJYBdwFXgEHjG6
         T7x+drt7268PS8Uwws/B9vecJghES8Fjeb8d6OvaYlKC8tVOHiy2umrM9sB7oRo6b4j2
         SQ1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1787043577; x=1787648377;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=pUZh4V+xlLajL1iKhB/L1N6pUu9ZGTc+yAIjmI39q5A=;
        b=Kkuytol6PwMmbbaV0IBrxAyrt+zv8oVZTph0pq5zcjJG9l0UyqdKFLXK7Zj7VcbZDs
         ZkhhQw2NzXzyJCfYC4RSVvMYtBharHLRPlLs8APyuXiozPIxCaTAlsimU9v8exiQIKP5
         9lp9Sss2EQ+EXIK8PpaS01X0upQwBrAi0AOUN9eWegY36zeWOz/8E+eaeKGcPCZwKknl
         sb9F/FZ+cP12I2VKk0S/dK7SbkN8+HlMZAkicYcS/fV6n66heAsCuHb4KGBtSwMIAAbv
         NAnP0xC4kMCz0N2Cn8BOHzQxiXC7IpXSr21Vw50gbKHBRyrgvZwi974Ujy5C60C5Ercg
         2F8g==
X-Forwarded-Encrypted: i=1; AHgh+RqpiCKwM/+Wn0k3jXXrZ8mATi+vM9VZgHkB5s7UTzJc4xJvuKwylq2bYM51jo9j42EcbUIwfCZbtFw=@lists.infradead.org
X-Gm-Message-State: AOJu0YyKUcomlzDb4f+t1yLmN5OVu4440pmSMFaGsWCzZrc4mF2oyipi
	aNdh3vK8dO1DfXtYuqmfHhs6V4mNfn3fZeFHhIDF4MW1VBLFhqCEABWlLrU67KO0Ljg6I+jyue6
	u7x3T66vlQ6IWLz5pN5L6ybA7bHgfZ0Hos6FyY/GNWSmTo3NVwAkFrDtz/rTFiV6Jf4XB
X-Gm-Gg: AR+sD12XiuXnu+859yI4sFxG1o/1A8yCVnoLZ98BUhcAEjjLsgKXgzwQC/r4BJmNdfn
	NArT+HzCXcH6wkyObKAj2ET4bF/BBDqVr9gMOsn2M7G7R9+ZzSR/ZojMdFaPDW6mdtoicjVAe84
	wJlxtGJbvW/Jy14UWmJI/ezHcPq/j3yns1edvW7jcY+tniXRU3JinPPV4UrzKnRHpTsTwExKjkw
	N137wNTA2n8orHdf4VvRILRmfAqOe+HvN1GiTUHGBT5VFA5aiA1cgqyGAIp9VyvQ30qc9awC9Ie
	TlIjF/oZsEWnO1v5HnvjTMmDbX/HSh2OfiJR+AF1HCM6tyRJEZ14XwyvZkLHNkyP8+sTFha1mYd
	aDe0rWaeqV/Jc+ikN2zwpmHJp
X-Received: by 2002:a05:620a:a19:b0:936:f9a6:3813 with SMTP id af79cd13be357-936f9a6387emr613139785a.0.1787043577232;
        Tue, 18 Aug 2026 01:59:37 -0700 (PDT)
X-Received: by 2002:a05:620a:a19:b0:936:f9a6:3813 with SMTP id af79cd13be357-936f9a6387emr613137785a.0.1787043576821;
        Tue, 18 Aug 2026 01:59:36 -0700 (PDT)
Received: from [192.168.120.193] ([178.235.128.140])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-c217fea2cdcsm154925766b.18.2026.08.18.01.59.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 18 Aug 2026 01:59:36 -0700 (PDT)
Message-ID: <e5cef6f2-3953-43fd-be4e-db526840a344@oss.qualcomm.com>
Date: Tue, 18 Aug 2026 10:59:34 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 06/10] phy: qcom-ipq806x-usb: fix the PHY_PARAM_CTRL1
 field masks
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Christian Marangi <ansuelsmth@gmail.com>,
        Andy Gross
 <agross@codeaurora.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-usb@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-phy@lists.infradead.org
References: <20260810-msm8974-usb3-v1-0-1a47e1185524@oss.qualcomm.com>
 <20260810-msm8974-usb3-v1-6-1a47e1185524@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260810-msm8974-usb3-v1-6-1a47e1185524@oss.qualcomm.com>
X-Proofpoint-GUID: oGUqcq6ygN47TxNltmpFOgR66wag4e2m
X-Proofpoint-ORIG-GUID: oGUqcq6ygN47TxNltmpFOgR66wag4e2m
X-Proofpoint-Spam-Info: AW1haW4tMjYwODE4MDA2NSBTYWx0ZWRfX5g5ZhemwwyK7
 zWi7e+qU2OzskjvcvAsWJOPodpfV94sVpZ54xO8v59z0dTqYF41j6kmLhXbtstEnoyDsOYtFANL
 buHyXuwyv5JCxVLrt5lkB7yQKbCYzuw=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwODE4MDA2NSBTYWx0ZWRfXwtBZuWChMc7R
 r/9/dwl8j+NQ/HlH9LGlhFv0UoF/ZTONgtBKJ4fuvUsnxIuXjBJ2NGJzn+RQNR6yGGjx8gth+mh
 F4I0EwqieKrVOXj8AgNMx19Y8DQzdc7ulyZtjI/2lPJOORkg+B8D38cbBltYnRZW8BTNyqR25rK
 R9qK6tLC/aJ+/KVnyUuWWW5jMlc8wIdBryQqumUPmRPapuTC/AmpOaGgvGc5YEgy8oTm7R4Yvak
 MBK/MSSZIGilxt4XOWX/CEQn7+dQd1Ua47Khw0MC2HDEjQ4MNssulqNenWOq8NHC/htC2l7GDv4
 0XxTYmDgEusjpCbDtDT3eW8UuLG5fbI6MfSuCj46SDBQFQBcVq98Lf6dlHeNE6AYlnICGXm0e05
 MF03X6o6R1G6z2B4B/A/5WKPdaafpGpDGJ697xN4b6ieNrB+gMon2k3nepFkFn4si8o0hbPSw53
 4hx9omfZgbDrBlwvzKw==
X-Authority-Analysis: v=2.4 cv=UslT8ewB c=1 sm=1 tr=0 ts=6a841ef9 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=PRfkaYvzSr8QmIIGAkY2Sg==:17
 a=IkcTkHD0fZMA:10 a=Sv0fKeRqtYgA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=rJkE3RaqiGZ5pbrm-msn:22
 a=EUspDBNiAAAA:8 a=IrLRzikX9qukkVrrmFsA:9 a=QEXdDO2ut3YA:10
 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-08-17_04,2026-08-12_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 clxscore=1015 impostorscore=0 suspectscore=0 phishscore=0
 bulkscore=0 priorityscore=1501 malwarescore=0 spamscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2608180065
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260818_015939_260252_86D2F0D2 
X-CRM114-Status: GOOD (  12.63  )
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

On 8/10/26 1:42 PM, Dmitry Baryshkov wrote:
> Each of the PHY_PARAM_CTRL1 field masks extends one bit below its
> documented field: TX_FULL_SWING [26:20] is coded as GENMASK(26, 19),
> TX_DEEMPH_6DB [19:14] as GENMASK(19, 13), TX_DEEMPH_3_5DB [13:8] as
> GENMASK(13, 7) and LOS_BIAS [7:3] as GENMASK(7, 2). Also, the field
> described as LOS_BIAS in reality is called LOS_LEVEL. FIELD_PREP against
> these masks places every value one bit short of its field, so the
> programmed swing/de-emphasis/LOS parameters land shifted and the
> neighbouring fields are corrupted; the masked write-readback in the SS
> PHY init reports 'write: ... to QSCRATCH: 4 FAILED'.
> 
> Align the masks with the documented field positions.
> 
> Fixes: ef19b117b834 ("phy: qualcomm: add qcom ipq806x dwc usb phy driver")
> Assisted-by: Claude:claude-fable-5
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> ---

[...]

> @@ -436,7 +440,8 @@ static int qcom_ipq806x_usb_ss_phy_init(struct phy *phy)
>  	data |= PHY_PARAM_CTRL1_TX_FULL_SWING(0x6e) |
>  		PHY_PARAM_CTRL1_TX_DEEMPH_6DB(0x20) |
>  		PHY_PARAM_CTRL1_TX_DEEMPH_3_5DB(phy_dwc3->tx_deamp_3_5db) |
> -		PHY_PARAM_CTRL1_LOS_BIAS(0x9);
> +		PHY_PARAM_CTRL1_LOS_LEVEL(0x9) |
> +		PHY_PARAM_CTRL1_LOS_BIAS(0x0);

lgtm except the POR value of BIAS is 2 on 8974 and 0 on ipq806x

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
