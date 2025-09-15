Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0781FCAC599
	for <linux-phy@archiver.kernel.org>; Mon, 15 Sep 2025 10:12:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=G2V22kRiEFFnjJ3re+QvXRI6g4VYSsqLLbS+MdtrR5Y=; b=0Q391Hmk9nsG9a
	ACvd3HEw3OobHA1AJqTm2jAE8j5FLzoEcnn/9VECXWlFzvQdiUP9v1twbyX7YlNGiqZ0gRQLrTgxH
	esIo+ArBRlnlG4tvxX27uwxHL/sB65Knw6ysMJ707diXnhWpolXHMGzhekC1SaDVaHcBtRBh6PEvr
	L+jOlnehdd+vSTLFirtEUDoJNZWODMhH6Wyaa1bDRGvHoSiiFAlTAtNN2RvbU3rxhBazyTdl/N/Vo
	oBpFrvqj/kE8WjMLjU0SGb2nwkf9y+rytLkbgFucmpYcC1q0ufRz3o37QTqGqJh6fXhkn+kmnsC1n
	b1doKSbKlr+T9f+hZ6XQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uy6C8-00000003acs-2hXF;
	Mon, 15 Sep 2025 10:12:24 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uy6C5-00000003acB-2Gn0
	for linux-phy@lists.infradead.org;
	Mon, 15 Sep 2025 10:12:23 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58F8Fl4a027268
	for <linux-phy@lists.infradead.org>; Mon, 15 Sep 2025 10:12:20 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	sKD/3kPWUFAIEKI0UmpKQAcxh9lP5Wru5KsNYI2Yxfo=; b=ZBc6wlxTY2NrEsig
	4fQSCUgYY0661833ZRKf3dhutGaTAzFuHKLF3C1rfXISL2/jQUDk9D013zPWen2u
	wZIPk1j2YBJ/R2kQl07dACQ8jGwRzyItehxgwlk9Edh24ZmWGBY6yc0NnX3mcafn
	0HNtDPxk0fs1714LQ6pRoeqkF0tzHWRE4bSyy6Qwq2eP4gNuu37lfyKUwfMoHrVE
	QTYIw+5pNEaUPbC9mwZ436p61Q2YDL6KYHHsKtmRQiCjQnjU/soVB0yVci1F8tab
	OV68RFIxLx7hl3P/HKZr13Nn2vxowr3nXiMCJpb/wjfLKTnd2EgynxizCnhZNmG4
	B0N/Yg==
Received: from mail-pg1-f200.google.com (mail-pg1-f200.google.com [209.85.215.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 495072mgy6-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 15 Sep 2025 10:12:20 +0000 (GMT)
Received: by mail-pg1-f200.google.com with SMTP id 41be03b00d2f7-b4d01b30e8dso1071905a12.2
        for <linux-phy@lists.infradead.org>; Mon, 15 Sep 2025 03:12:20 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757931139; x=1758535939;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=sKD/3kPWUFAIEKI0UmpKQAcxh9lP5Wru5KsNYI2Yxfo=;
        b=kXbpyJmlN4NXzulIU1z9h8KskTA2L+xP1Vp8pR9Tkg2ieR4WtnH2FbrI06Ki151VYg
         7imijVV/haJC64a146+ScWWaW9ThKGjgwbQD57awYMGYsnI/KT98TrtMWRYfdFtp20Mi
         J90rC5rj//peyAETZ64PHqdZLECOR/pNMvK6+/ZDC6nDaE6fIL3+Dg8jQNBRosM+bpn4
         s7QcHdyxj2UMGd3N4BM1qRy7HKeki2U4oAccpEafBP8YmQjr+A/292OLEmZ7yZQpqCeB
         WYUM8p6sHHA1tQ0xlOFk2IQn2uxw5bn0ogFsjKLNJ5cX2LkqmU/7a9a1uWHLfmQ9/wgE
         NtXw==
X-Forwarded-Encrypted: i=1; AJvYcCUJMahQFnwsiK0fiR2rjbL0BVI5uGbKHhgCgWtheV/X4mmGSsMJNLOiuDsZrTBw88kL3Kg9Hsu5p5w=@lists.infradead.org
X-Gm-Message-State: AOJu0Yyq6O8PYnM9FoOzPvDpabvl7CutvrriUiMf4sl684FwUkV1CX6e
	VRijxcgZh/N9+BaPv0wj5m6k3Q28gvvS7Sv+IGVF2FSoK2X7LLgVMtaYajikniO5owgf7/aZQbt
	UOsSq5QDaxJ7A93CA5rSlsHudwYUQ8TSt5V5hGAG3OcFasFLR03r1O7uRX/uFAiuXZuAW
X-Gm-Gg: ASbGncuRTAi3X/+ujH7l3P3v1HgVeCJxK7nLp16MD8fKMPisYKIwBmZloRyn5fghJKA
	fTtM0enxGaGVApxg2A9qfH5JqqrVuD61kZQhHGG5l5IRM3N8pCy/dd/kPVptcoK7h+OZLEXOLaO
	4ixUOPwXpv+psbgGN8+wEe23Pk6E5Li6TmB7NlQKzSO9k+CF6esk6eHrmE2Sqk+1WNBIU98AwpB
	faTP0+Uf7H7sxEuzq/bduO4RZFkZfRJcZMj1+VeyINGLSi+sSXqoazW6yAhMFY2tXu9mUoYf+rN
	jL2uGDDDnKjr78V3LI4XctRe0C4s8oMJmqZliQYRznVC9+eM1zbELtv4sjKNP/ITomo/jcxILAn
	uWcZMHuuBmuNnKxTMCbwWN4WEnDdSLS2+2As=
X-Received: by 2002:a05:6a21:328d:b0:264:10e4:f87 with SMTP id adf61e73a8af0-26410e411fbmr1664434637.4.1757931139306;
        Mon, 15 Sep 2025 03:12:19 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHxZXxZBGVcbThhG/IvVDI3mpTgc5wznmZnjs66RxbpQzCycjFMO9w4+/RnbJr+43MLjBFNnw==
X-Received: by 2002:a05:6a21:328d:b0:264:10e4:f87 with SMTP id adf61e73a8af0-26410e411fbmr1664402637.4.1757931138808;
        Mon, 15 Sep 2025 03:12:18 -0700 (PDT)
Received: from [10.133.33.231] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b54b03cf65csm8329380a12.16.2025.09.15.03.12.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 15 Sep 2025 03:12:18 -0700 (PDT)
Message-ID: <f030649a-9505-4bda-9ce9-00eeee8d3b06@oss.qualcomm.com>
Date: Mon, 15 Sep 2025 18:12:10 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 11/13] phy: qcom: qmp-usbc: Add USB/DP mutex handling
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I
 <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov
 <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jessica.zhang@oss.qualcomm.com>,
        Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        fange.zhang@oss.qualcomm.com, yongxing.mou@oss.qualcomm.com,
        li.liu@oss.qualcomm.com, tingwei.zhang@oss.qualcomm.com,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
References: <20250911-add-displayport-support-for-qcs615-platform-v4-0-2702bdda14ed@oss.qualcomm.com>
 <20250911-add-displayport-support-for-qcs615-platform-v4-11-2702bdda14ed@oss.qualcomm.com>
 <nfugwwknnlxls75yo5rex6ggu5nzpq6enyx6e6nfnfei3icxjg@t7dnzcfcjw4o>
 <cf6c2c2f-9878-4181-a3c8-9692423308bd@oss.qualcomm.com>
 <q4dplt6fq3cneludcuhxevklaj6omeio3cjxw2owt4h3wistd6@arv23ri4cl75>
From: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
In-Reply-To: <q4dplt6fq3cneludcuhxevklaj6omeio3cjxw2owt4h3wistd6@arv23ri4cl75>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTEzMDAyNSBTYWx0ZWRfX+m6tNf2N/ctF
 M5Cq68zSIqCiAlJM4JigzF0JNCRPhh91BTNZmmd5OmdyrrdIDKRZRXBebLMBrVl1Dw9Mvfu+VU1
 MZesYBq6Yh0dTHmH4OTpvNG6hr2+548xwdsbEjd9qbh6Gpewyn8LaYUheIHM3kUQXqbUWMSqPCU
 uR/I9yFWrYX88j41aN5q35ilex4LICBc69YjYIsiBPX78tWAefddIQYMNwwhgM3+BG9VuAo4lNG
 PhFEcgva5jXSKGdfqa35ySoLuf5dV/krN8FDFKR04bOdjJCvcP9y+JpHzMzmmUFLeIelFzGao5K
 Y+1ZwSVOvoFceUyZPir36OtmZCeAakbEu3RV38CkFr9I0F+39folXETnGNA74r5U8jTdszE8lah
 pDlbD3dr
X-Proofpoint-GUID: d8YuSWCjeqkjbVjd0otwvCYtgGY0Plsr
X-Authority-Analysis: v=2.4 cv=WcsMa1hX c=1 sm=1 tr=0 ts=68c7e684 cx=c_pps
 a=oF/VQ+ItUULfLr/lQ2/icg==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=CZmHqXGeirO8O24YQhMA:9
 a=QEXdDO2ut3YA:10 a=3WC7DwWrALyhR5TkjVHa:22
X-Proofpoint-ORIG-GUID: d8YuSWCjeqkjbVjd0otwvCYtgGY0Plsr
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-15_04,2025-09-12_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 impostorscore=0 adultscore=0 bulkscore=0 spamscore=0
 suspectscore=0 phishscore=0 clxscore=1015 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509130025
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250915_031221_705414_27A1C27F 
X-CRM114-Status: GOOD (  16.05  )
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


On 9/12/2025 8:09 PM, Dmitry Baryshkov wrote:
> On Fri, Sep 12, 2025 at 08:03:01PM +0800, Xiangxu Yin wrote:
>> On 9/12/2025 6:32 PM, Dmitry Baryshkov wrote:
>>> On Thu, Sep 11, 2025 at 10:55:08PM +0800, Xiangxu Yin wrote:
>>>> Introduce mutual exclusion between USB and DP PHY modes to prevent
>>>> simultaneous activation.
>>> Describe the problem that you are trying to solve first.
>>
>> Ok.
>>
>>
>>>> Signed-off-by: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
>>>> ---
>>>>  drivers/phy/qualcomm/phy-qcom-qmp-usbc.c | 21 +++++++++++++++++++++
>>>>  1 file changed, 21 insertions(+)
>>>>
>>>> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c b/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
>>>> index 613239d15a6a3bba47a647db4e663713f127c93e..866277036089c588cf0c63204efb91bbec5430ae 100644
>>>> --- a/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
>>>> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
>>>> @@ -1061,6 +1061,19 @@ static int qmp_usbc_usb_power_off(struct phy *phy)
>>>>  	return 0;
>>>>  }
>>>>  
>>>> +static int qmp_check_mutex_phy(struct qmp_usbc *qmp, bool is_dp)
>>> mutex has a very well defined use case - a sleeping lock. Please find
>>> some ofther name.
>>
>> Then how about 'qmp_check_exclude_phy'?
>
> qmp_usbc_check_phy_status()?


Ok.


>>
>>>> +{
>>>> +	if ((is_dp && qmp->usb_init_count) ||
>>>> +	    (!is_dp && qmp->dp_init_count)) {
>>>> +		dev_err(qmp->dev,
>>>> +			"PHY is configured for %s, can not enable %s\n",
>>>> +			is_dp ? "USB" : "DP", is_dp ? "DP" : "USB");
>>>> +		return -EBUSY;
>>>> +	}
>>>> +
>>>> +	return 0;
>>>> +}
>>>> +
>>>>  static int qmp_usbc_usb_enable(struct phy *phy)
>>>>  {
>>>>  	struct qmp_usbc *qmp = phy_get_drvdata(phy);

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
