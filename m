Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CDB19C87FCF
	for <linux-phy@archiver.kernel.org>; Thu,  7 Aug 2025 13:06:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ykudi+wUt5I/bAnJfIIoV7TKr0T/QjfSx7Jz+iFOnxk=; b=o9ApNzggoY58R1
	ukSz9+QMmvQ4T9+3wn9dNQ1zrgyb03gAs7GUTfDj0MzIjzOT+oEosSg1NU8r48WifaxDPGetydk9V
	54716Di/B7RBNLltIEDsca9LsZpFceJs0ATYhIyEfduusUQG67uTeLE9e2Ux9sQ6Z/7CJU5wBuozl
	k83CIEzNuhw/3yUX4D8B6Bl8jFNNR31K90/zPC/xS6jtxlIymZJQl1hQF/kP6Lzex9QglaxshFyAb
	pH9EkTJh2HLV3disxlh66IKq9rAGPPgnLajF5/o1ekE2CuA41NQhELfd2Fh727t+idNtm34MPUFYS
	utyaNbQqxMF2VyiKBQCw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uk0Jx-00000000dub-1TTJ;
	Thu, 07 Aug 2025 13:06:13 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uk0Js-00000000dsv-0TcS
	for linux-phy@lists.infradead.org;
	Thu, 07 Aug 2025 13:06:12 +0000
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5779CtWM011668
	for <linux-phy@lists.infradead.org>; Thu, 7 Aug 2025 13:06:07 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	FBcHHZfiUOp++mqWXUPK8pryPqtEB0VS2HuB1/078ss=; b=DTIiN6OKDoIjOaO4
	OC8rpTbQGvguholN17OtKg2iqya2D/ELG3j6EOXCe7rwcyImk7mx5OvoPnJCTB1W
	jYG06ZuobdmqDG3RUdRuuFa8Aa4azYMIrYM6WkOR2SlVpibF1gSZ44bC70csptE8
	i1X4/msKGunDC/4xb78WafOpfYasd/80ViVJGd/R52Cn3KswxwECiTBuph2/+Zrd
	EdsivZD166b58WKRT9lbjT1bUeNZJuiAhjZkBocVo9P8B4GZgFR8ksoklSmGLu1P
	Rp7y+DjzgOSwzsyq7lgiiS+1NQtALd8iElw2Jn1qoX+YYdnypwyzkPZ8i9GtG1HA
	MiWfoQ==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48cpvy12uh-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 07 Aug 2025 13:06:07 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4b08f6edcedso3310211cf.2
        for <linux-phy@lists.infradead.org>; Thu, 07 Aug 2025 06:06:07 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754571966; x=1755176766;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=FBcHHZfiUOp++mqWXUPK8pryPqtEB0VS2HuB1/078ss=;
        b=rPx9wCzkbZBhaWpFP/cpTw3kfxwW+NCP8PfJkDVCr2BqqFDIT7sUChIxVHylO3+nQn
         kS/y9cS70KvVpoSYggySZC5xBjG2El1e3F/jZOGiSKdn9c7ordwmIqJk5FLI/AwOmSCa
         buJFRlE+mmVOLWaLuXwD87xJRdyG2e7gRdKFYOLtLsIcC0AvCGiP/IXUncuMuWzYvaHU
         6rk6tnGj+cBbf36N7xxQ8Oys3MIhIEh1GhuvgO+B+SG7CDb+RS1rq/SQr+pis/m5sH68
         x4zOk6Ozd97CcoKN7nWf+1q9BbO6TYnRAj+LVhP1owjS8fIj59cnkpt815TouZbSjW/N
         ZYbg==
X-Forwarded-Encrypted: i=1; AJvYcCWwqfok4wCaFV3O030HVr3mOb8Pr+TbwFXTUapQYpS1hFRA/rGQ3OIgha3VUXTBgb+/N9vhl9UKWJU=@lists.infradead.org
X-Gm-Message-State: AOJu0YzxQknzSCOjaQ+MSRptleqBLKWt0UVuSJ8ZjML1PJ6jk5GkpNnz
	K3QTYxJAsNmJYftKZ5IzeniAjh7BVjz3IMId9RWYAPna8dUFaFw2FNxerzOw92GAwR5/dxhO/+E
	B/rYsmmokQyAqb6DfFIFsjz/NKn2Y7aDHntavbbmOkEEf/BVlPgvzc4zCoV6txqJXsSix
X-Gm-Gg: ASbGncv6W9znj1vhNA/3/B+FZHrpzb0qMR9DbKOpogKVveJpFbrXTkf1JBCYyMpLSNO
	7+xpyAo6t3xwpy7e4i5wivk6TGylxpjccqwFhihqWzxsS1Wu2gVCMPPIosLBooCasn9jOx1edz4
	7OFgjeZNaWhmUxnMm05brpaOdTENaqHksKkdtQd1d8EwcjSY4sFZpfyg/PKrcPU7Ft7ab6g6qwM
	fw0RNzsSyE+j6tFDQCsKOEBxf26SRasZ6P4djREuSnCTXNMeJziDYydIcIE9HUvVfc8nk7VP5y3
	vePPtl0vthlgKU4W9gi9188j6eQ0aX5eYpOaekOVNrEz4HecDh/DSsC88nXB3yma3fyffw92nGi
	F/F61bl8+VWfD9WeGuQ==
X-Received: by 2002:a05:622a:1482:b0:4a9:e46d:ca65 with SMTP id d75a77b69052e-4b0912cb849mr59963861cf.3.1754571965791;
        Thu, 07 Aug 2025 06:06:05 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHZ8LROlrHhAO/nx3LuVhJ4aWIUOSeMqQnvYxszMmFd8ZNXQqKXcDSu0gnMVTLJH/zAcvVbmg==
X-Received: by 2002:a05:622a:1482:b0:4a9:e46d:ca65 with SMTP id d75a77b69052e-4b0912cb849mr59963051cf.3.1754571964966;
        Thu, 07 Aug 2025 06:06:04 -0700 (PDT)
Received: from [192.168.43.16] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-af91a21b115sm1282528466b.103.2025.08.07.06.06.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 07 Aug 2025 06:06:04 -0700 (PDT)
Message-ID: <aed1de56-fafe-4ccc-b542-69400b574def@oss.qualcomm.com>
Date: Thu, 7 Aug 2025 15:06:01 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH V1 4/4] phy: qcom-qmp-ufs: read max-microamp values from
 device tree
To: Mark Brown <broonie@kernel.org>
Cc: Nitin Rawat <quic_nitirawa@quicinc.com>, vkoul@kernel.org,
        kishon@kernel.org, mani@kernel.org, conor+dt@kernel.org,
        bvanassche@acm.org, andersson@kernel.org, neil.armstrong@linaro.org,
        dmitry.baryshkov@oss.qualcomm.com, konradybcio@kernel.org,
        krzk+dt@kernel.org, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org
References: <20250806154340.20122-1-quic_nitirawa@quicinc.com>
 <20250806154340.20122-5-quic_nitirawa@quicinc.com>
 <f368b6da-1aa3-4b8e-9106-3c29d4ab5c5e@oss.qualcomm.com>
 <fe2bc07c-8fe9-47fd-bcd7-c2f0ebbd596f@sirena.org.uk>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <fe2bc07c-8fe9-47fd-bcd7-c2f0ebbd596f@sirena.org.uk>
X-Authority-Analysis: v=2.4 cv=TJpFS0la c=1 sm=1 tr=0 ts=6894a4bf cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10 a=kfhvm8o0YWoXJs5BtVMA:9
 a=QEXdDO2ut3YA:10 a=kacYvNCVWA4VmyqE58fU:22
X-Proofpoint-GUID: NcYJeZpCDPJQUIVWE02AQKSvFRHeyOlz
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODA3MDA0NiBTYWx0ZWRfXxlFjzJBh24dE
 oMj5Ym05MS+Zv3SK9Xbla6oYySHw8K9NWLwXRx3e/QHP4xIRNP6fjrJIZ+fRXSMIFhpXllfnFT1
 XRaPFbc29OIvyv+rdD8ZSftDK2veLoRSbFb1dqJaqH5GyPaXm41Phuq48zbgqPYWROvgOhHdOfA
 Ck18Tc9MvVkHZDjHgRrUCS4l31yhr9kgsGMv35YjRKctJPhYK/EmGbR2zf9P9O7Plj4OGeSf/kO
 xH8Re20zltngWn3DDV/p+AxLY0kBWKRxjghWn8xhLA11oeFbdlrO6su6vdL5w7/k2M1JfclXSau
 S611Ksb0uNoJEZGdnlAsdfFF3PpeQBSGbzrHI4q5Sw4GtFFzQ80aRuEtKQSGy7aaqI+7gSvalwr
 7/SHT0ny
X-Proofpoint-ORIG-GUID: NcYJeZpCDPJQUIVWE02AQKSvFRHeyOlz
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-07_02,2025-08-06_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 phishscore=0 priorityscore=1501 impostorscore=0 bulkscore=0
 adultscore=0 spamscore=0 malwarescore=0 suspectscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2508070046
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250807_060608_173422_1BF7DEFF 
X-CRM114-Status: GOOD (  20.66  )
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

On 8/6/25 6:51 PM, Mark Brown wrote:
> On Wed, Aug 06, 2025 at 05:58:30PM +0200, Konrad Dybcio wrote:
>> On 8/6/25 5:43 PM, Nitin Rawat wrote:
> 
>>> Add support in QMP PHY driver to read optional vdda-phy-max-microamp
>>> and vdda-pll-max-microamp properties from the device tree.
> 
>>> These properties define the expected maximum current (in microamps) for
>>> each supply. The driver uses this information to configure regulators
>>> more accurately and ensure they operate in the correct mode based on
>>> client load requirements.
> 
>>> If the property is not present, the driver defaults load to
>>> `QMP_VREG_UNUSED`.
> 
>> do you think having this in regulator core would make sense?
> 
> I'm not clear why the driver is trying to do this at all, the driver is
> AFAICT making no other effort to manage the load at all.  We already
> impose any constraints that are defined for a regulator while initially
> parsing them so it's not clear to me what this is supposed to
> accomplish, and it'll be broken if the supply is ever shared since it'll
> set the load from this individual consumer to the maximum that's
> permitted for the regulator as a whole.

Qualcomm regulators feature a low- and a high-power mode. As one may
imagine, low- is preferred, and high- needs to be engaged if we go
over a current threshold.

The specific regulator instances in question are often shared between
a couple PHYs (UFS, PCIe, USB..) and we need to convey to the
framework how much each consumer requires (and consumers can of course
go on/off at runtime). The current value varies between platforms, so
we want to read from DT.
The intended use is to set the load requirement and then only en/disable
the consumer, so that the current load is updated in core (like in the
kerneldoc of _regulator_handle_consumer_enable())

My question was about moving the custom parsing of
$supplyname-max-micromap introduced in this patch into the regulator
core, as this seems like a rather common problem.

Unless you meant to object to the "QMP_VREG_UNUSED" part specifically?

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
