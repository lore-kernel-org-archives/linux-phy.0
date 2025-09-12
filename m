Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2DF4ECA101F
	for <linux-phy@archiver.kernel.org>; Fri, 12 Sep 2025 12:03:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fyCFsTCrYlhKAXPvS8mZcfygkC9RWIJ6ysywanU84D0=; b=vDYwSYNx9umTSN
	M3RqBHHQSW2D+PzitPdbcxSMagQUc52gURYJGz+fNX/FvRd+798W2ZQ0UY5v0Wg7ydowltkw4Rv44
	K9Z+z2LmCik2B+CQz0b5o5b2UUgYJ8CfflTXLtolDOC3pv2hy4ngy98cDqB20QQqPB5iFC8heGQiR
	v27lLZ7XWmqux/vLO/8Sz32MyMmYA7AoqwtGt1amT27AkICi2dViGggKvIaNXdHb8DiWpmWDSYzxz
	vOW7a8dfRjvw1RLMV048BdUY/GsdoHwRZDE/O2mpdCgQrM8ClZxy0eHUY50BePxX4f7hhCgfxpmF8
	CASn1yDhnTVpHwvRVgrA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ux2Uj-0000000945O-3tBt;
	Fri, 12 Sep 2025 12:03:13 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ux2Uh-0000000943p-1DjU
	for linux-phy@lists.infradead.org;
	Fri, 12 Sep 2025 12:03:12 +0000
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58C9fDNr018545
	for <linux-phy@lists.infradead.org>; Fri, 12 Sep 2025 12:03:11 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	zMKtRR1gvr98NkFlahada0nc1pCDoOH4s0Uqq/hc/XM=; b=WKF/LsS/PAUWM2XV
	I1POHixo3Ch+L34iRRQ9hJZf4lUjKxqL22xSH/dQJk3dm+diZB053n756JOTq9MX
	qAbeTu2VcYx+0bN9xLevJI19AnRWr7O6PZ5gQzGW1jgnhYdm77qR8KeJWCigcvdW
	4WNl7IJaf7CdKtyzK9dyIsk5pSErrCEIgLNUw05hdHtN1izh3lGaeHVA8YefwlPu
	hVLLG6ySFRFT4HVLLyywvm1ei9BIrlisdVK2b3GJZpvryZjCjN0WKDFPyvOGW1zu
	ykOL1P3SNSnL3prr6NDwIm4xi55i0pj73PHhsLLBt1haGjYFL9KthsYrEVzJueeU
	t51ydw==
Received: from mail-pj1-f70.google.com (mail-pj1-f70.google.com [209.85.216.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 490e8akjbk-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 12 Sep 2025 12:03:10 +0000 (GMT)
Received: by mail-pj1-f70.google.com with SMTP id 98e67ed59e1d1-32d8eb60ef5so404159a91.3
        for <linux-phy@lists.infradead.org>; Fri, 12 Sep 2025 05:03:10 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757678590; x=1758283390;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=zMKtRR1gvr98NkFlahada0nc1pCDoOH4s0Uqq/hc/XM=;
        b=L/D6ffUueiXxwlChOWecc4KwwARLMxNww+/3j8nj82ajS1BmC5VbOIsKmQ85Vx6A0m
         INfOMae53PKPRxohxZVdvIFTodgTtBdp0lTwbVqgrlhaq+XE+OR4YIGxQ3aieGgoBIwp
         WUiIFzJrdGL3fbEXYW0GXQ84IMNGHgqYx6B1/C/DlpLZNU+Zo5GyWhAXTi3JFVo99P0P
         3NfbBqCwxo302k6KjsgzldCODmAH9UdQeTSr+8vHNMfpAIB9lhj0QBH+p7MC5zDe/LO1
         mVo+JnQgbwwubMnTRasEO/LyiFcXp0n/TAkbGSaf/dsFizXUpomw6qvg5E2RmHdYLj0D
         AfrQ==
X-Forwarded-Encrypted: i=1; AJvYcCWaxzFOJgF0YLhIugWRj5Ott0Lm4heIgNr2Z6tQKoubu7x2Lf+/kIJz3x3k6ffPKCJhUOnE5/4t8UM=@lists.infradead.org
X-Gm-Message-State: AOJu0YxfbjHsYUycNx+2AxGpRI76ukpr6zXRrr6LIxpEFVmKCkBZoNdO
	1fFJamWTiXIU90xQu2tssJwvrgYJ/NXhg9k/qKTI5+owEWoAP2KygYwK6xCznxbRADkr2d9UhN5
	VvOkE/dSgVOUIlNlBFZmiuZK3KYBrg5rmshNfJDVaGU/jpIAmCqmEpVsB8TkSMCNRGC+n
X-Gm-Gg: ASbGncuAqza03s4Z06fe21vvXKKmJLelCiDmwJZzdg/LAMvLf+MELSWI7MFQV2gz5rR
	Kz0x4VC50Vs2CxVrMVjVeqQiZ5SWt1pQCfzH+mahKlQJ6hO9hM2mZdcKmbIL6SIVnJO71ZnG+/K
	Gws4FHHx2J3zopIFGCuRjt7uplbg/l3klqPd2ick6t7/rijxwF1fDdRAXs83F5FpCBuA4FaNRzX
	FMicAzeIxD19boDHrZtJJzzhmvxrO0PBBvnpKItZytKNYD3eRBMJBWKHUBsn4qrW614oOTJbReB
	FP6dv7gx2NRjztt7/e5aTlEmj9ublZIy5RCqCn4/TKtvGV2+R3bG4kHCzRBL2ytWkNokEuGjRTM
	QMFg/Y8gbGGXNOK31/0oVYvDCTStuoA==
X-Received: by 2002:a17:90b:1d07:b0:32b:9416:312d with SMTP id 98e67ed59e1d1-32de4fcc070mr1755249a91.8.1757678589752;
        Fri, 12 Sep 2025 05:03:09 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFLbeV2EFA9K8UJYz1maZdy+AMfW1DBGrroF29kzoSYpUtUZhd3N4o5LVMtPmgZDxe9yHDhjg==
X-Received: by 2002:a17:90b:1d07:b0:32b:9416:312d with SMTP id 98e67ed59e1d1-32de4fcc070mr1755211a91.8.1757678589043;
        Fri, 12 Sep 2025 05:03:09 -0700 (PDT)
Received: from [10.133.33.174] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-776075fdd83sm5311370b3a.0.2025.09.12.05.03.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 12 Sep 2025 05:03:08 -0700 (PDT)
Message-ID: <cf6c2c2f-9878-4181-a3c8-9692423308bd@oss.qualcomm.com>
Date: Fri, 12 Sep 2025 20:03:01 +0800
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
From: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
In-Reply-To: <nfugwwknnlxls75yo5rex6ggu5nzpq6enyx6e6nfnfei3icxjg@t7dnzcfcjw4o>
X-Authority-Analysis: v=2.4 cv=H7Dbw/Yi c=1 sm=1 tr=0 ts=68c40bfe cx=c_pps
 a=0uOsjrqzRL749jD1oC5vDA==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=eXWC9YIREg2_PHQc8DoA:9
 a=QEXdDO2ut3YA:10 a=mQ_c8vxmzFEMiUWkPHU9:22
X-Proofpoint-GUID: I-C7WZyD6KoqHCkb0ydeHhEd-ZPHGYPn
X-Proofpoint-ORIG-GUID: I-C7WZyD6KoqHCkb0ydeHhEd-ZPHGYPn
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTA2MDAzOSBTYWx0ZWRfX+qt1LNU5Kldv
 JY8yiHiRStc4/xISxw/Rg2y5QobuerbS97GwgQlRCrBldCM6e8gcXus0NcCwvv6W4V13d/Bv+84
 jzeMMW28/Q/I9iAJBVhcqmLEzYLjiY+9bH0mhdJGu3Jhc10yG0vTNxDXWwvDixqxllqfoMY2n6T
 jitvPBMJHO3gTf2P1PojwfAFOsLhafw7+MDACwiee9NbmHDrRw/90gKWVx6vlZ42qenD3UQyGrm
 i3iGNJJWJaHTtuI810fLsiuiim5FzD0CmqceeWAnPoJM2tbjYgw2OCKjBu8Sm8iQjbqusPgCeUF
 KLk0nT1BpjSvvMi84Vtlc5cRMPnlwoIQUfo9kfO1/hBVRTWPPKMOF6CoZRG4lwZFryNsIp6SLwP
 6eqHKWWN
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-12_04,2025-09-11_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 bulkscore=0 impostorscore=0 adultscore=0 phishscore=0
 clxscore=1015 suspectscore=0 priorityscore=1501 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509060039
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250912_050311_339509_DBC53A3B 
X-CRM114-Status: GOOD (  16.32  )
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


On 9/12/2025 6:32 PM, Dmitry Baryshkov wrote:
> On Thu, Sep 11, 2025 at 10:55:08PM +0800, Xiangxu Yin wrote:
>> Introduce mutual exclusion between USB and DP PHY modes to prevent
>> simultaneous activation.
> Describe the problem that you are trying to solve first.


Ok.


>> Signed-off-by: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
>> ---
>>  drivers/phy/qualcomm/phy-qcom-qmp-usbc.c | 21 +++++++++++++++++++++
>>  1 file changed, 21 insertions(+)
>>
>> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c b/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
>> index 613239d15a6a3bba47a647db4e663713f127c93e..866277036089c588cf0c63204efb91bbec5430ae 100644
>> --- a/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
>> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
>> @@ -1061,6 +1061,19 @@ static int qmp_usbc_usb_power_off(struct phy *phy)
>>  	return 0;
>>  }
>>  
>> +static int qmp_check_mutex_phy(struct qmp_usbc *qmp, bool is_dp)
> mutex has a very well defined use case - a sleeping lock. Please find
> some ofther name.


Then how about 'qmp_check_exclude_phy'?


>> +{
>> +	if ((is_dp && qmp->usb_init_count) ||
>> +	    (!is_dp && qmp->dp_init_count)) {
>> +		dev_err(qmp->dev,
>> +			"PHY is configured for %s, can not enable %s\n",
>> +			is_dp ? "USB" : "DP", is_dp ? "DP" : "USB");
>> +		return -EBUSY;
>> +	}
>> +
>> +	return 0;
>> +}
>> +
>>  static int qmp_usbc_usb_enable(struct phy *phy)
>>  {
>>  	struct qmp_usbc *qmp = phy_get_drvdata(phy);

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
