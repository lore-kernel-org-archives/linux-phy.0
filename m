Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A9A99C5B543
	for <linux-phy@archiver.kernel.org>; Tue, 27 May 2025 20:49:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CW85xAwHSsnzx1w92Is+HH6UlN2afM+ji7Z11h3oMLk=; b=JtiMyi0q/87m8u
	tJn5lzycR2ZlID2JOwAyj7ltZuyGGjcMb2VbL0K43Jk6LSQgN0PqujZMm9f0YJ5M5OXjvuZWFtpSP
	46Je4Hk9FDJGD63JGypBEBSmCYVhPyUw6nVUGi1AH15WkYPLfE9XT+wNku/I9SHjyB7QCx3eTVcwP
	7lGYF5N0rSFRDk+xuz4KZTCB5EY89zedE9PxpDHshQGWTgn1UVHhmCpSOgrJNcbXSi18gBtuGL8S+
	LClZ/aurx0jz8A2mxEsLxMP3N7mjJIVfKKayMkFQAYy5tiHWOLPpzELk1gf4AlgbVZN8z7ri/aYU2
	qL6EAjBIMB9q9sh2qDuA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uK1F5-0000000BXWM-0tuX;
	Tue, 27 May 2025 20:49:47 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uK1F3-0000000BXVi-1x98
	for linux-phy@lists.infradead.org;
	Tue, 27 May 2025 20:49:46 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54RCPC94024736
	for <linux-phy@lists.infradead.org>; Tue, 27 May 2025 20:49:44 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	l/O2p+x2xSIF9G83bk2qKzG3F5MRhPuwnk3uawbQiMA=; b=UsuwHtTT+19r7X8+
	9xmaaZgI+E0BIU70xalEcDbNCLUWA3zODGfnv3/ro6F7QXVxsRWDTWwby1mIIJfB
	W8z2bntkGEeR9PFuJqqDMH8dlrAKdVUw3qxjFFb7O3+F98T+bWjAh4Lo/WqA8gj5
	Ymffg0F32lHihXoT7GeEg3BRyPZu3RX70+mdjrzLjgji3SKwywfI7V6RDMuUWHpP
	mWhc8g6vUvxkgPjIMvMfEXVvLpnVcuQI2qNMFUHlKJAEHQgo+yn6w/111Xgrpv8S
	ARkHdfBTbl8Y2ByIpLAcep8iN4/qLAK91a8pqvU4NgKeovig8qb5MvcwvKY7fvSV
	N//IMg==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46u6vjr7tr-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 27 May 2025 20:49:44 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-7c54734292aso102843285a.2
        for <linux-phy@lists.infradead.org>; Tue, 27 May 2025 13:49:44 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748378983; x=1748983783;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=l/O2p+x2xSIF9G83bk2qKzG3F5MRhPuwnk3uawbQiMA=;
        b=cWZJTPoH35kxt7XqVAK9+SNT+8Niqf1mVp9KyRPQn7bisuOPCYHdwfY7Te7JsvwjKS
         eG0Y8qocMVG84tBBpGf/u09VjTU8AhZow+vGW5gJMj90QEMxocmjr8/aCgvo+Zkr8XHE
         zUKHt0vuqxpEUhZ6UqC7DZdadMQ68jhpqvqp6HC0qeERqOFvX5FCdcjbRH5Qq4W/XcgK
         f/c034yWjpM6Q2d77lOA5L9LLGos1PIsKfsCb9p954yJMLaSinM6uB34GYcTaJDmK826
         3z8GuZIJyCrZ17k2YsT5nMlOkuFS2hfmkCYgZ/O4FXhWm4R26yzAe6f2uMIz/PeBm184
         KLRQ==
X-Forwarded-Encrypted: i=1; AJvYcCWH8OJnhds2NNDiE2OFeIVyhr03AgvvDPJUZgWXkcW0vFWTqV9v6trclypbv0MNMa7qwVHr2JQqHvA=@lists.infradead.org
X-Gm-Message-State: AOJu0YyCEnG8EAF3jIKgjF91xZeuIHa4FSd7x7E36e3S9UKriy0/BUth
	ZrFGjFOMhR7xKkeubp0d6zxfFJdX8585lbEz1nx+zQ99hcz7gLPbauzb06WE2sLNKV1/5m3W0VC
	UPIWbgal4p/nZ7PUXzsCpQ8Ba+iEWNfk4XYZKqhDo7ectn2b6Mp0cU83Z1zPncMHeJsse
X-Gm-Gg: ASbGncuxvhRHomvCBH4H2SATR2S3hfu9mi21MXqqTraHm+nSLwDJKYqmbGeVgXJD+KC
	h/Zn8jnwjrni9vX1ci+3iW/pKsHogykutwrFGRNFBtd8e+84yHerw+uHmBr20JBLnEIXpjiWYVP
	YILwoV9wBmlX3gSh5izVMU01zuDmi7Un4Qp5mnkSFWvU0AxUq/vcW+4R/xTqVU+styINQEEOpXN
	ix2+TcPDnnNAN1UVvKO9Eghal+xig/9b1g8zU3WAl3w8vzo6xTsuTrXFiiJoxWDZ63wMWKELvIv
	WFDHlvnTvzIczN9U2TLqM+U78KVlGTB4dt1oGjoBMGU9hLnx97bGJTAevlid8DmH7A==
X-Received: by 2002:a05:620a:28c9:b0:7c5:ba85:357e with SMTP id af79cd13be357-7ceecb95729mr796620185a.3.1748378983313;
        Tue, 27 May 2025 13:49:43 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IH+Ja5XuujBwuUP9ccKnyssxrFJe/lbLz9Lqf/caKcpdJ8XAsoYbJmo6SDfbvW/t6c1zMYunQ==
X-Received: by 2002:a05:620a:28c9:b0:7c5:ba85:357e with SMTP id af79cd13be357-7ceecb95729mr796615885a.3.1748378982465;
        Tue, 27 May 2025 13:49:42 -0700 (PDT)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ad89f2508b7sm8518366b.132.2025.05.27.13.49.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 May 2025 13:49:41 -0700 (PDT)
Message-ID: <b4e1ea54-ff3c-408e-8716-f48001ec9113@oss.qualcomm.com>
Date: Tue, 27 May 2025 22:49:38 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 7/8] drm/msm/dp: Retry Link Training 2 with lower pattern
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Xiangxu Yin <quic_xiangxuy@quicinc.com>
Cc: Rob Clark <robdclark@gmail.com>,
        Abhinav Kumar
 <quic_abhinavk@quicinc.com>,
        Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Kuogee Hsieh <quic_khsieh@quicinc.com>, Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Linus Walleij <linus.walleij@linaro.org>,
        Bartosz Golaszewski
 <brgl@bgdev.pl>, quic_lliu6@quicinc.com,
        quic_fangez@quicinc.com, linux-arm-msm@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-phy@lists.infradead.org, linux-gpio@vger.kernel.org
References: <20241129-add-displayport-support-for-qcs615-platform-v1-0-09a4338d93ef@quicinc.com>
 <20241129-add-displayport-support-for-qcs615-platform-v1-7-09a4338d93ef@quicinc.com>
 <CAA8EJpoN1qBHyZrQJT_=e_26+tcaKRnSrhtxrK6zBP4BwpL=Hg@mail.gmail.com>
 <b4345b9e-62c6-470d-b1b0-4758cef7f175@quicinc.com>
 <xlmgdysjah3ueypdrdu5b6botvidb2wn4rfm4qpeysclscmuwy@vpfv2ymprblj>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <xlmgdysjah3ueypdrdu5b6botvidb2wn4rfm4qpeysclscmuwy@vpfv2ymprblj>
X-Authority-Analysis: v=2.4 cv=UOXdHDfy c=1 sm=1 tr=0 ts=68362568 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=dt9VzEwgFbYA:10 a=COk6AnOGAAAA:8 a=OAqA0DyV7igbTOjjZJsA:9
 a=QEXdDO2ut3YA:10 a=NFOGd7dJGGMPyQGDc5-O:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-ORIG-GUID: QbOsvRYom8LQDPKT0azk136lq4x1nTAG
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTI3MDE3NiBTYWx0ZWRfX1oCOPQiOPiQQ
 nO4hkM0jOAHlaQK/QK/YBFJ27h83TTw1iPk5bu0qftEJaTORUdtRBH2PJmOEY9p30TzmGk8wQJS
 tnSOFMq5IQKvnwbIPV4eqGMPaLfPh5gnCFMnsttZT3JcqQOP3rugQGEOwoa4Hq2+KuQXzJ9o5AA
 xbcD3DLSi9kXKbAp5TTQDCQHzFlCm7dWDEe9loX3K8gScfm0hQ0fpFgSb7H6NhemjygGSSXVpgE
 X9Ve6Nor3UjcRFZ325AoRWekDvKxk/trXbCB3p2QOebnOhwI9uJQ+FiN++eTNYtlomD/ZVjEfjU
 c6jvHDatFTBLc9sJ8Y6gWCG3rMJjteaw55741rWsBnQembozvMF1UjUypTkXL2sRQU9QHDfclN+
 O0xt9U8mQtXej4O80n5ARAFd5l/Q8mNSBp66nDf+qz17PvSCHyVaVf/N2X/RqtajTURV3C/7
X-Proofpoint-GUID: QbOsvRYom8LQDPKT0azk136lq4x1nTAG
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-27_10,2025-05-27_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 phishscore=0 mlxscore=0 adultscore=0 priorityscore=1501
 mlxlogscore=999 bulkscore=0 malwarescore=0 impostorscore=0 spamscore=0
 suspectscore=0 lowpriorityscore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505160000 definitions=main-2505270176
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250527_134945_534238_502C675D 
X-CRM114-Status: GOOD (  14.81  )
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

On 12/3/24 3:07 PM, Dmitry Baryshkov wrote:
> On Tue, Dec 03, 2024 at 04:13:22PM +0800, Xiangxu Yin wrote:
>>
>>
>> On 11/29/2024 9:53 PM, Dmitry Baryshkov wrote:
>>> On Fri, 29 Nov 2024 at 09:59, Xiangxu Yin <quic_xiangxuy@quicinc.com> wrote:
>>>>
>>>> Add a mechanism to retry Link Training 2 by lowering the pattern level
>>>> when the link training #2 first attempt fails. This approach enhances
>>>> compatibility, particularly addressing issues caused by certain hub
>>>> configurations.
>>>
>>> Please reference corresponding part of the standard, describing this lowering.
>>>
>> Per DisplayPort 1.4a specification Section 3.5.1.2 and Table 3-10, while the standard doesn't explicitly define a TPS downgrade mechanism, it does specify:
> 
> Anything in DP 2.1?
> 
>> - All devices shall support TPS1 and TPS2
>> - HDR2-capable devices shall support TPS3
>> - HDR3-capable devices shall support TPS4
>> While these capabilities are explicitly defined DPCD for sink devices, source device capabilities are less strictly defined, with the minimum requirement being support for TPS1 and TPS2.
>> In QCS615 DP phy is only supporting to HBR2, we observed a critical interoperability scenario with a DP->HDMI bridge. When link training at TPS4 consistently failed, downgrading to the next lower training pattern successfully established the link and display output successfully.
> 
> Any other driver doing such TPS lowering? Or maybe we should be
> selecting TPS3 for HBR2-only devices?

Bump, this patch looks interesting and I'd like to see it revisited if
it's correct

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
