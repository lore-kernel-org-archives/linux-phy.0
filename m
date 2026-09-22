Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F1766C982FA
	for <linux-phy@archiver.kernel.org>; Tue, 22 Sep 2026 10:13:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PjJrejMQS0IxK+qwHkj47SnvOCONjjhXBZ1FxIwaqvg=; b=e72+CCn8abINlI
	fPcmtQxiDikhazDO6x4ERmikFiaYunCC1dqscFEtaAc/0XeQ9vyFINtqU/0OSRYdZgdpzmmnp+1lC
	c42nSNrtONoJMhosEwHLg3eJR0hKBMC9VGWuVErqLovByGA60gYtH0ECk3knLN5IejJ8q6Wsihzds
	z+H9/bBlhjuoheqAKJtsxeJxw7dzkMfZzSNgLmIvlIkeuJ93gLDWbOW+YfWp+LIzUVeXl70weY4As
	3vV3+mYNSk7YeGekCrWsFYbIGGXa2fjL76zfTgL6qohhcFnfMiv1hDuwluK5id4ZgMkctGckmrwqn
	ihuHfUmKLZ00L0SbRDwA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8xVA-000000051UM-1rUx;
	Tue, 22 Sep 2026 10:13:28 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8xV7-000000051T9-3AbV
	for linux-phy@lists.infradead.org;
	Tue, 22 Sep 2026 10:13:26 +0000
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 68M7k9eP3712862
	for <linux-phy@lists.infradead.org>; Tue, 22 Sep 2026 10:13:25 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	q0el7bjuErDhLYtuG9rneG619xk/rheRzGy3iRFFfwQ=; b=i7SCOKDXt2eU2cH0
	ansFF+NzxfioO9peEW4+f3IBOhJGRHojBi1dIa0LAZuhycDXOn4BF+43jaNsP0YD
	P7YtlMEjF1mGHD2XBTu5fzovZIw2Ky4K6Suz0EuvQ//UvvqnTbjzgaBUf/evLjcT
	MkhMEr3Wkj81dNdUS9Z2vGe6jfzjU9QuHSc1WDX1HvgMJAXzR3nksV4g/fm3xBuw
	3nokLj18kjCqThxbIS9ccbS0jGb1qGWghOpG9ZQyiNZZXKQEK24zIaG/+qIgUZvI
	08HhJvSTZPH96MfcSktZ8Mf4MNkUPFZv8aVQtA+ZnRIADCSMw1DuvAm26lslUOCZ
	scpHYA==
Received: from mail-ua1-f70.google.com (mail-ua1-f70.google.com [209.85.222.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4gunjyrmxt-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 22 Sep 2026 10:13:24 +0000 (GMT)
Received: by mail-ua1-f70.google.com with SMTP id a1e0cc1a2514c-98283f87cf2so40068241.3
        for <linux-phy@lists.infradead.org>; Tue, 22 Sep 2026 03:13:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1790072004; x=1790676804; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=q0el7bjuErDhLYtuG9rneG619xk/rheRzGy3iRFFfwQ=;
        b=Dbwaoth2TRlNF0hpp/A+aQQsFHLJAs1FfSj7yCkrlqiDwdAoFwieH47YZ0NrXj5yEq
         oHREyml78qMC9VOG6Kns0ma+rOknTmbAmZ0F85wuHjgTCQrEtbiB7vkPsKFn7oPeWU5E
         3KYsuumZ1KYMC2QZxEcHRQwfHnDZc/5xokzmlLb55wZdA8CyhqftTNDaHUb7oHSa36s6
         vBZc5pdSL6dlIIcdfHD+GYlkrbSlqjGOXriBG1twk8kokNYMk6juAsQXsVfnOCH4wau/
         FD7xVEl6SFjLxIFEzrLSYRiCQQYcxED6fZhGgCKxXjFFvVF2cUu6nqgAPnMEIyPbQRBh
         q/kA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1790072004; x=1790676804;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=q0el7bjuErDhLYtuG9rneG619xk/rheRzGy3iRFFfwQ=;
        b=sM089RI9CO2nTyNYp43YDnDXEEdEweSLNcHdw8jIUo00X0W9MtfZQcdxzpcQd6Uf9p
         4x2TVtSpkcsYnEiyh7Rey3Hr51GaFu47xajm52aVMbG+PVCkjeqMQpSN+B6XNDLyNrik
         KBsem1OMxxr9zhq2uZ8BXhR3SpY2iaHr6aTZMcExVxPMFmHvZymnP7pbQpLYmiuljvco
         hj+yKWgz3IJuyvJC/mmCUvVMH4+me2ALyeRF1OE66ZDfa9mdZtkvm4fwWmzsrP+r2aly
         QNGKUaU9me74uNS6nI8twWBaLGG95BK4+YrD+2CO0WXC7Zyy+2s+yyEnscpXS49JEqEe
         XIyw==
X-Forwarded-Encrypted: i=1; AKwUvBzO2W6miFGVApljyTYua7s37gDVJUnLhXhJM9GWCUzLO7JbT9FIQfzmWqLIEDp5z2elinr1iYVprNY=@lists.infradead.org
X-Gm-Message-State: AFuF++nSH7T8hYGf7kMYDPYLw2DGAOt4l0z5B5N7qZIbrwCuuojx0Uh5
	bXmllmuuMhqzEMPGbOh77ZBzYxe/FG5U1joEshz6mpOpNbf1nBaQOPvMfEPGS5WjSH/cFZcOl3o
	NzDiI6WAm9apZnePY9irBomU9tqEs/yXF1pkrWCzWbT2GfjWZHNLtPxDOMqJ7GWMfGw/t
X-Gm-Gg: AYBFou1uumCPns2XKGwylC/H22RrwG2tS3OlL4nZvmuYO7XrpGytuAMxNEA6UWXevSB
	KK0i5zk15k/vmdjM9j/1Qw45I5kSVWvnKruxco4vMDdAY3a4qvfVMVLttLMaid5RCSu86mpzp2q
	CyGBXbu5HkJB8WA6KeFTvAQVGBy32xNHbFa3//y+eGT/Gj5AUd9AY7zxrmIrauYXFCAq2dXA9aw
	DDkrsRKBXaaMqDXL+e9i3jUbK+Ad/XOYc2YH0NpRORS5JtXl8I1j1mVpGkShq1av21QbAGd+KQc
	GAZPTNWN58/NZxOmS8WVBIiQzBF4AZEIhu8zqCPaDKTKAaY1XUNpqDKhL11U6GY4MipMkBj+nPZ
	zruskIWSh7u5jo65AQ0WcOw==
X-Received: by 2002:a05:6102:5791:b0:7a7:12b0:fd03 with SMTP id ada2fe7eead31-7a712b10825mr4973416137.0.1790072004198;
        Tue, 22 Sep 2026 03:13:24 -0700 (PDT)
X-Received: by 2002:a05:6102:5791:b0:7a7:12b0:fd03 with SMTP id ada2fe7eead31-7a712b10825mr4973396137.0.1790072003762;
        Tue, 22 Sep 2026 03:13:23 -0700 (PDT)
Received: from [192.168.202.12] ([178.235.128.140])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-c2a9c5e7850sm60804766b.42.2026.09.22.03.13.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 22 Sep 2026 03:13:23 -0700 (PDT)
Message-ID: <58efd258-dc43-4d5c-89c6-81d1f9b528ce@oss.qualcomm.com>
Date: Tue, 22 Sep 2026 12:13:19 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 5/6] mfd: qcom-pm8008: Add support for PM8010 PMIC
To: Lee Jones <lee@kernel.org>,
        Nihal Kumar Gupta <nihal.gupta@oss.qualcomm.com>
Cc: Bryan O'Donoghue <bod@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Loic Poulain <loic.poulain@oss.qualcomm.com>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Guru Das Srinagesh <linux@gurudas.dev>,
        Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-media@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, mfd@lists.linux.dev,
        Suresh Vankadara <svankada@qti.qualcomm.com>,
        Vikram Sharma <vikram.sharma@oss.qualcomm.com>,
        Jishnu Prakash <jishnu.prakash@oss.qualcomm.com>,
        Dhruvin Rajpura <drajpura@qti.qualcomm.com>
References: <20260907-glymur_camss-v2-0-75f7982dc983@oss.qualcomm.com>
 <20260907-glymur_camss-v2-5-75f7982dc983@oss.qualcomm.com>
 <20260922093327.GA2308615@google.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260922093327.GA2308615@google.com>
X-Proofpoint-GUID: yQ69qn_qsTOHBy9ntPq1oxx88ELjcnOo
X-Authority-Analysis: v=2.4 cv=KqHYSmWN c=1 sm=1 tr=0 ts=6ab254c4 cx=c_pps
 a=R6oCqFB+Yf/t2GF8e0/dFg==:117 a=PRfkaYvzSr8QmIIGAkY2Sg==:17
 a=IkcTkHD0fZMA:10 a=VdqzKS8jKosA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=rJkE3RaqiGZ5pbrm-msn:22
 a=EUspDBNiAAAA:8 a=IqmdDbymtu-JnQ37yGIA:9 a=QEXdDO2ut3YA:10
 a=TD8TdBvy0hsOASGTdmB-:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwOTIyMDE0NiBTYWx0ZWRfX0Z5dCozrYiSW
 ALHk8waucPJT+wuOaMhvVhG/3V8GYXSiO3+fVjmM5q14AFKQ8XsVpJ4OA30VxB2CH+024KemFKt
 Q2nQe7gL5ITDgRWqhhcvX7E4Gubuh6VAmFfK/C40UBeQSin1jFfiibpSqSV1i0Qp7pwr5P4HxDO
 QSlbC95ZVHWkzf35g5hPQb1tr44WL1/CXElELRs/DXaYa8wNonRw2r5w5t42KvrW4B/gTQTS8zF
 y8uM6Jh8Kx+A/BE9O19lFQ71DzS+CiuNZFKXfowk+HhOzv0mSvLyj7WgC6ACdwF1AuTA2HvdWFQ
 sx27uoYmJxh4zFpK3VS5xUE1ygQJq7YrtWJKAAmcAuan+xYjjarMrrzbjpqs/SfV6X7G7aWvbQ2
 OsAG7bn6n6PZZp9NIAey4RQMwTxKlGToFVjJZYrAvyJSrJK1jB1YDB4Nq04B1kfNe6raD8voOcf
 OQVF+JL4M6v9/5kNdeA==
X-Proofpoint-ORIG-GUID: yQ69qn_qsTOHBy9ntPq1oxx88ELjcnOo
X-Proofpoint-Spam-Info: AW1haW4tMjYwOTIyMDE0NiBTYWx0ZWRfX4ffZPENSsXWz
 tVAp/aC3Th0V3xZtAxYRt86vUWHfcexxs83mPC+XWxyg96qF4Ic0BthdBwKsQ9JU8dQO1Y70W3z
 LnGtnr5HcpWJm4dsIcMAKb4kfSvFE+Y=
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-09-21_07,2026-09-21_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 spamscore=0 bulkscore=0 priorityscore=1501 phishscore=0
 malwarescore=0 suspectscore=0 clxscore=1015 adultscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2609040000 definitions=main-2609220146
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260922_031325_919597_1936E6A9 
X-CRM114-Status: GOOD (  15.04  )
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

On 9/22/26 11:33 AM, Lee Jones wrote:
> On Mon, 07 Sep 2026, Nihal Kumar Gupta wrote:
> 
>> From: Jishnu Prakash <jishnu.prakash@oss.qualcomm.com>
>>
>> The PM8010 is a variant of the PM8008 PMIC with a slightly different
>> IRQ layout and MFD cells. Introduce per-variant match data (IRQ chip
>> descriptor and MFD cells) selected via the new "qcom,pm8010-i2c"
>> compatible string, and support probing without an interrupt line by
>> falling back to a reduced set of MFD cells when the client has no IRQ
>> assigned.
>>
>> Signed-off-by: Jishnu Prakash <jishnu.prakash@oss.qualcomm.com>
>> Signed-off-by: Dhruvin Rajpura <drajpura@qti.qualcomm.com>
>> Signed-off-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
>> Signed-off-by: Nihal Kumar Gupta <nihal.gupta@oss.qualcomm.com>
> 
> Who are all of these people?
> 
> Did they all work on this?  If so, where are their Co-developed-bys?

I wrote an early/incomplete version of this patchset and handed it
off.

If that was used as base, please fix up the attribution, if not -
drop me from the list.

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
