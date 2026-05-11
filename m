Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E2AE9CD37AC
	for <linux-phy@archiver.kernel.org>; Mon, 11 May 2026 09:07:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3nGEOQb7BmF6AIK4EcOFWK3yWZqjz7I5Sj3tU/cCoZo=; b=fgNTIha68RREkD
	d6zzguvNRAjowFZOKG3IonDhoCyeCyQVdV6mcl4fWQOzYZ+p/GccUzsEIyFUHdeDIux9zYNGhdn2/
	0dN77Ho9MvvhH3Bs6mQtFQgdUX+KkQoiT/h0l1PdERb2CgKbvpixGwzgEByN2W0tOE0JFWnFXpdAW
	fSizyZI3UCUkJoImlZX1jVDKz8HSJXXI0Wx0Lv+Y6VBhWpQCTYtc38Q9hJOKV+KyJ+ogJoJI24DyK
	ONAkLCC2xT9LQcBcnA0K9weO8t/SdiMTKzLUV6gvTBeVa6wJrVJJCTVlPu6BxCjwnWmK2RPHPhjb6
	ucG9X+TgnOJDN5DhnAkA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wMMbM-0000000CqSo-1Gki;
	Mon, 11 May 2026 09:07:00 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wMMbJ-0000000CqS5-38Hr
	for linux-phy@lists.infradead.org;
	Mon, 11 May 2026 09:06:59 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 64B6gWkj775038
	for <linux-phy@lists.infradead.org>; Mon, 11 May 2026 09:06:56 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	9r81hLdy+5UdlIFvYJjAgeru8301hA14/IjYRO/7rU0=; b=jDV/ayRU9lStkFP/
	IsYT4lXV2wkPsNhXCTWVXX3oILJJjC7q//iDCpEvyIBYoMH1tswQWtE6JsOCqUky
	cKLvZY33QC1jacSUNU7ecJG1Iv4+b52VusW4t5Su1tiVpJiG9gtzk29rM7cDkuN3
	rSO5PtPBIogT++gTyYPwZkenW4QQRrzmnin/uHcytOUP835i7uotfqi2sWeRhgOz
	2TYq2rx+7arHfb1C1gOw7Qk89Fz5Ys+zqrc7CDtBBwXFC0gbXjXrdd/KRauIOXRf
	1J7lYvw157nGj7Az7gtaACYM6O9SU2uhYISg6uPUjCXKccj0txtMxxMaHFQlk4mx
	v6xDJw==
Received: from mail-pj1-f69.google.com (mail-pj1-f69.google.com [209.85.216.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4e3a32ggpt-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 11 May 2026 09:06:56 +0000 (GMT)
Received: by mail-pj1-f69.google.com with SMTP id 98e67ed59e1d1-36641bb3d97so2260296a91.3
        for <linux-phy@lists.infradead.org>; Mon, 11 May 2026 02:06:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1778490415; x=1779095215; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=9r81hLdy+5UdlIFvYJjAgeru8301hA14/IjYRO/7rU0=;
        b=RP/rjxvQdQ5hEU+G+ZjaZRQfNpBc7Y2lILJpAsERzp6tLNl4lXSjueSkNwnhTRQ8Q8
         yAi/zZTG1y/WHpN5+6dmoGdYWFP+YlnWRq4bMrzHTGVf8beh/cubdzE6zRxn5uy5QrUo
         c9ruLCEU/ztagLUxdbKaAlmyTyaN4OmXh/J9QC1VJ30yWbgfBDNZv+Q2X/xMBU/oUrHJ
         KSuH2FLuj45vK3pVOmywmPpm6OW6986lnrG2p9SblXP7v9rW1lamMksbGJ8VzwZrtwBw
         aBwmoKVHa1cR0200XfjvRipEWaNJ+5ztDMSwHK9fMdPtmtIyy0LJ0I6GJlNWX6fJH5kc
         nbHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1778490415; x=1779095215;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=9r81hLdy+5UdlIFvYJjAgeru8301hA14/IjYRO/7rU0=;
        b=LfxQGzv2m6K0owjX/9d1zESl9gRlhO5tVVTg9Lul6rAiLMhS4D6R4FyRmRIwHEHgUK
         VAg+YFEc+FHQnaKOmGfK9AMbAnAAadJ9WWYvPHC53h8tNz60nH5O1dGJlbTzdN6QIZsh
         lGZhZ3Y5fR4KVwWdScHLVwjn6fyaMd8qdogXyMX2CxUr1gzzQHvzJ35WB59Wwt5o/Y/E
         7+cekyeLCaKFA9Zd2eSSSoh1nJYLu7NGY8m+43+HPuVm//TCslMPLYVdPa9T19DhY2zq
         4DZFlD0FKn5zt37G3ng/aolLk4eEnRgNoe8qLJ/W0MutSn4g4iUW1xvFmF9p/rjmIN4y
         RVJg==
X-Forwarded-Encrypted: i=1; AFNElJ+2lhuiueG+toCktnDjbNTOVOzQ98f4cK1HIff17NgfNQmk/osNV8UuNMwWvO0HqELdiBflXquvdCU=@lists.infradead.org
X-Gm-Message-State: AOJu0Yx7BICCfi0S3fmcJQNi+3Y6k1korM54Z15jpOH13qqJXNz2woI2
	bdK6jaaR28gkqMA/52lx8edLWKLhbDRIrxsujUwQlvS2iz0CX7l+03JBzZoAKpk5y2PuhF06hSx
	Sjhq2okmp+d5+a699GJSk+JQ0qclHlL4KDPCsVKxH7/n7++v2m9JOTscsW5bI4O//ObTo
X-Gm-Gg: Acq92OHtNnUCf5t2dbd6k4MAFdEfomNDUZgLd3DiGdACuk9ndASKn7xWqq+HgbAjFED
	ecpbKBtndU4ZPcbOf9RGDu7w1FZfW2FBF8LHPFTLgzbUe736XbCtjGe+Yt23M+U/nKkd4nVn3kj
	GOGbzqDoAN2Zv64CFPNN5CiAYGWXQZS/ZRxFaAREjquI9M6CViEZvZuHRO2JaKiG4vY/LG9pz4v
	9URyGNlHjy7Oly5vOdGEaqW158+Ez+RObcUh0QSQBBhnK0aHzt2RgWLy3mSHz3TTmfNO1ee8aUJ
	2E0RZEi2T3ZvSjcfIK1jq3koYvYx3UVWPO9Nylcsa42JmUfF/zvvgOP/3CKXOX8voaohy9C8mXa
	S2t34XEjnsMaxJaLblOOsR7/mttQG5m87/gHURuTUwllsaHFP+gU1DeHiSBGU4iTmmFH9zIDJup
	gcRIP8gTE0txVHew==
X-Received: by 2002:a17:90b:2888:b0:365:d46a:524 with SMTP id 98e67ed59e1d1-367d46c601emr9621799a91.2.1778490415320;
        Mon, 11 May 2026 02:06:55 -0700 (PDT)
X-Received: by 2002:a17:90b:2888:b0:365:d46a:524 with SMTP id 98e67ed59e1d1-367d46c601emr9621690a91.2.1778490414692;
        Mon, 11 May 2026 02:06:54 -0700 (PDT)
Received: from [10.217.219.121] ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-367d687a2a8sm6936179a91.15.2026.05.11.02.06.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 11 May 2026 02:06:54 -0700 (PDT)
Message-ID: <a5a97989-0e5f-447b-906d-c09801aacda8@oss.qualcomm.com>
Date: Mon, 11 May 2026 14:36:48 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 0/4] Add USB Phy driver and binding changes for
 Qualcomm Shikra SoC
To: Vinod Koul <vkoul@kernel.org>
Cc: Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring
 <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>,
        Johan Hovold <johan+linaro@kernel.org>,
        Loic Poulain <loic.poulain@oss.qualcomm.com>,
        Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20260504170659.282532-1-krishna.kurapati@oss.qualcomm.com>
 <agBP_HeLmVAKLFUh@vaman>
Content-Language: en-US
From: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
In-Reply-To: <agBP_HeLmVAKLFUh@vaman>
X-Proofpoint-ORIG-GUID: yEZK4KfScxp-23jd7vlDRBq5yXw7W7YD
X-Proofpoint-GUID: yEZK4KfScxp-23jd7vlDRBq5yXw7W7YD
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNTExMDEwMCBTYWx0ZWRfX8Clcq5o42OgA
 lutEakegPuX/31mfwMKDqH7zBRffp/Y7C8RjglDf4fYdCuq8Gkj9t3QtF4ypeFTcKIV/yyMlArt
 o93pDwZwt2uHg3//mXANv+V3w2YQI5W0JogpU3BNn76UIhu1TpOZDT3c2O3GNYT9wGYaiNzjsnt
 +4mx6ms2Q4Z/m8I5GfyOO3rPk8pXTeo1bHxaE8BX2Or1QqRbAPzSsBJl5zKn4PegL6CAHGjmw0o
 s69Dangy8nUSfSm0U9AGYcCAu5uSwT7W+z9Fqbe9Hx4W/sppdKBrEMyAmPf5HoZmcQBFqFBxH8C
 hGpVqCej1SiPxGMqyO21kLFLKQOjUXW/GGQ1VpISTKPL6noZvOR141KST9FaFAJC5+zFaveNmQZ
 3XsMH0e2ImhFTsk8yd5Bw5uTosKYwMNkREDx/zUHTe46n7QiVAtWmsKen+x0sEb4psyEcu4m5z3
 1R2COPPoLk7kU3qMWwg==
X-Authority-Analysis: v=2.4 cv=SLVykuvH c=1 sm=1 tr=0 ts=6a019c30 cx=c_pps
 a=vVfyC5vLCtgYJKYeQD43oA==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=NGcC8JguVDcA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=DJpcGTmdVt4CTyJn9g5Z:22
 a=c92rfblmAAAA:8 a=EUspDBNiAAAA:8 a=VwQbUJbxAAAA:8 a=WzJcQefkPXJgcSUdovYA:9
 a=QEXdDO2ut3YA:10 a=rl5im9kqc5Lf4LNbBjHf:22 a=GvGzcOZaWPEFPQC_NcjD:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-05-11_02,2026-05-08_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 clxscore=1015 impostorscore=0 priorityscore=1501 malwarescore=0
 phishscore=0 adultscore=0 bulkscore=0 suspectscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2604200000 definitions=main-2605110100
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260511_020657_800038_1650A038 
X-CRM114-Status: GOOD (  14.79  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org



On 5/10/2026 2:59 PM, Vinod Koul wrote:
> On 04-05-26, 22:36, Krishna Kurapati wrote:
>> This series adds Driver and binding changes for USB Phys on Shikra. There
>> are two USB controllers - One of them is SS capable and other is highspeed
>> only capable. The ss Phy init sequence is same as that of Talos.
> 
> Please check https://sashiko.dev/#/patchset/20260504170659.282532-1-krishna.kurapati%40oss.qualcomm.com
> 

Thanks for the report Vinod.

Will do the following:

1. On hs phy driver patch, will update commit text to mention that 
register init sequence of Shikra is same as that of Talos and hence the 
qcs615 init tbl is being reused.

2. On the super speed phy driver patch, I repsonded to Krzysztof 
comments as to why fallback copatible can't be used. Will update commit 
text appropriately once comments are all resolved.

[1]: 
https://lore.kernel.org/all/d52c5039-9431-44ed-9f3b-bb00d03ae176@oss.qualcomm.com/

Regards,
Krishna,

>>
>> Changes in v2:
>> - Separated the usb controller binding changes
>> - Updated commit texts.
>>
>> Krishna Kurapati (4):
>>    dt-bindings: phy: qcom,qusb2: Document QUSB2 Phy for Shikra
>>    dt-bindings: phy: qcom,msm8998-qmp-usb3-phy: Add support for Shikra
>>    phy: qcom-qusb2: Add support for Shikra
>>    phy: qcom: qmp-usbc: Add qmp configuration for Shikra
>>
>>   .../bindings/phy/qcom,msm8998-qmp-usb3-phy.yaml  |  2 ++
>>   .../devicetree/bindings/phy/qcom,qusb2-phy.yaml  |  1 +
>>   drivers/phy/qualcomm/phy-qcom-qmp-usbc.c         |  3 +++
>>   drivers/phy/qualcomm/phy-qcom-qusb2.c            | 16 ++++++++++++++++
>>   4 files changed, 22 insertions(+)
>>
>> -- 
>> 2.34.1
> 


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
