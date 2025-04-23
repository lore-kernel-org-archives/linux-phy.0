Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 706A0C369CB
	for <linux-phy@archiver.kernel.org>; Wed, 23 Apr 2025 12:05:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ro11MKnEXlaGRFzzQ5DFPJEgdvMHOPngr996HjToIG8=; b=uY6lH6rinx4mVW
	SouEXwbV3KYvjzA0l/wYzNQW4ze8PnpJq4f3/F12E1+n315Bu1Gk47l+cysHmgtELWmMDjU8lQLSt
	W3m0i9CixoThk8R1hcEIj+YL99uJg38hM/lABE2gyRryQ/QdMaq8ADRS6QMIFex5JbUmcP2NNOAGw
	MXkVu2J/mCvqBhVbvfKVQV5UXUBDoA0hK9dOGxnIEASzyaQKguuSbfFj674o6CRCcJoU+NSZxmzI8
	EweKHZl5bmScxnyvsgHuFO8Vts3Uo1b4mVFPjAD0tg2KIrAxEErRzt6o7lMcuhGnmFaS+QWOohrbS
	4OQSTASHViAyIlDx4oPA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u7Yqc-0000000AQNx-0bwK;
	Wed, 23 Apr 2025 12:05:02 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u7Xys-0000000AGLh-2oKc
	for linux-phy@lists.infradead.org;
	Wed, 23 Apr 2025 11:09:31 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53NANjd4022005
	for <linux-phy@lists.infradead.org>; Wed, 23 Apr 2025 11:09:29 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	rd3YHcBC3TYtyVK0LNqsKsNH4Ca1SUDlk/VqAbaBYrI=; b=Gbgs5PmbS8Rwe2pl
	Dq6Am/mKNhrlPfQGhW8NJ20qN/u2MfsTbMt9JKfTsZsriPgCrD1ZJH6fyBdkpHSu
	jdoV1xiMyokzvwCwhb84EVPK+qC/ms8DuOjyZ2u4k5Ie//6MviheNXJIR5BE6Hlx
	XZznHFV/OYdCeG/heni3kCKt45iziHEyIsWRyKiFtmUxqlC6L7KT26gWzDXWwYyD
	SKbu5nLgMhry0zDGxU24KWICXm+VTEokewsAax3Pp0KBl8UwFiC/c6fvmx1zyq0u
	DAP9S1arRjzHfhq+Rhf64cyydOfzx1PvSvdLg514Bdlkkw8JkIxoax/0SwlUhYOP
	pH6qqw==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 466jh11vf1-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 23 Apr 2025 11:09:29 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-7c76062c513so120942385a.3
        for <linux-phy@lists.infradead.org>; Wed, 23 Apr 2025 04:09:29 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745406568; x=1746011368;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=rd3YHcBC3TYtyVK0LNqsKsNH4Ca1SUDlk/VqAbaBYrI=;
        b=ideTPQsancz6Xftkmv5ePip3DGhytMEkEYz4TBxal2J7di84Bwif9rJvvR7w4AZRV3
         BphPxq359O/UKUcFrPNdOR4V1IejmbazW1DFztkKLbpZI7W7yzM7RQAAeCquMA4s5piQ
         egoW0yGR7NJ9iUA8dlQdZbcosepFzJbrm1MwFKGaiAvGb0I+U+H5OcKxIXaaO88pdbh+
         IlvkkxD2H7wvCd/4arXElR1dipX0j7XyZe3wU1UHd6JnN7O1JpAMhdBfeYjwxGi8EF2s
         hKAWJ3deGmy9fOF2bRe93LkH1JdRN+aSPWRgXZTB8qVxeO/pvuGFta5tPotw3bvPSNl1
         sxvA==
X-Forwarded-Encrypted: i=1; AJvYcCW0p9t+R+DOfK9CeiuA/J5ACt/WnTmo/5LulaTDBNgRYarsIyySUiZZ5mRq9mH7YZQx+jw3DvWlnP0=@lists.infradead.org
X-Gm-Message-State: AOJu0Yyjm+TmQvG0oPEvcrKVrwq7smYXeQBUEHy2o7Lj1qs3G5uL3vkT
	qnyPgGkpbRAMVmtYSvXlTT6pbLXvo27im5691fejrfUXQOWXD3fflOH0tduZYvvoUV6dwzkQFK9
	sedy1smBhbzNHazTLPmFZfuXtDkc1HnfzKjkr+K5Bj2CLaw0TOZBb4iHXn6yE2qxX
X-Gm-Gg: ASbGncsB63/VrKgEq29Anuu6Z4Q90AFDrjgF++YtG8x2sS+wMK6aSLzc69wUsjeMf5R
	PeoHiilUWnSswGBvcFCHAqyo2U+5tlMBHOl9JtQrmd3auDrVfgUVf4iFnlrjExNHvw0S5H5Ge1z
	Uhw2+gGwYcncnEjBuPTfbRkwO2EL2sy+EK12PDIZ0mJVl3btJmIHHUhxmXDqifKRsIH21D4Ydf4
	Se+LEGU+qAVrFBw8/0V4n7vYBp3LZjHZcEEsIxOvhZJsnsBKysoT2ctltrV8WZEHSl09SrBiR/4
	DbN1uNQPsh9BW8rCgXDSsUYY3PMuUc44+BPKGqqpGCyKudTwAdGW2JVuEmSWmxSv5pg=
X-Received: by 2002:a05:620a:d8b:b0:7c5:79e8:412a with SMTP id af79cd13be357-7c94d243c53mr169135785a.2.1745406568543;
        Wed, 23 Apr 2025 04:09:28 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEiZEnn54IflaB3i4pqXC7ZrnER6o9bw/syciNUcOHoqO5HVrimc4sTg7qhgrFutnZVRtO8kA==
X-Received: by 2002:a05:620a:d8b:b0:7c5:79e8:412a with SMTP id af79cd13be357-7c94d243c53mr169134385a.2.1745406568049;
        Wed, 23 Apr 2025 04:09:28 -0700 (PDT)
Received: from [192.168.65.183] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-acb6efa5c5asm784078066b.166.2025.04.23.04.09.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 23 Apr 2025 04:09:27 -0700 (PDT)
Message-ID: <b7027077-e9a3-462b-92a8-684a42d23604@oss.qualcomm.com>
Date: Wed, 23 Apr 2025 13:09:25 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH V3 4/9] phy: qcom-qmp-ufs: Refactor UFS PHY reset
To: Nitin Rawat <quic_nitirawa@quicinc.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: vkoul@kernel.org, kishon@kernel.org, manivannan.sadhasivam@linaro.org,
        James.Bottomley@hansenpartnership.com, martin.petersen@oracle.com,
        bvanassche@acm.org, bjorande@quicinc.com, neil.armstrong@linaro.org,
        quic_rdwivedi@quicinc.com, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org,
        linux-scsi@vger.kernel.org
References: <20250410090102.20781-1-quic_nitirawa@quicinc.com>
 <20250410090102.20781-5-quic_nitirawa@quicinc.com>
 <pur4y63xhfmqlyymg4pehk37ry4gg22h24zceoqjbsxp3hj4yf@4kptase3c4qp>
 <317faeaa-3130-4e28-8c5d-441a76aa79b4@quicinc.com>
 <CAO9ioeXnnbNzriVOYPUeBiWdrPfYUcMk+pVWYv0vZpJbFeByoQ@mail.gmail.com>
 <2820908b-4548-4e0a-94b2-6065cb5ff1f3@quicinc.com>
 <c2ec6b7c-421d-43c3-8c0a-de4f7bdd867c@oss.qualcomm.com>
 <a24ff510-2afd-4aa7-a026-199fb6d87287@quicinc.com>
 <CAO9ioeUDzYLMvqmsOQ-VfgLQLavHqn=QVYxyHzetjSfmhjKFjw@mail.gmail.com>
 <1a623099-40bb-4884-8d93-132138a4150b@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <1a623099-40bb-4884-8d93-132138a4150b@quicinc.com>
X-Proofpoint-GUID: gkE6hXSyknZhji0iwUxPxfAGxRrEE7cg
X-Authority-Analysis: v=2.4 cv=OY6YDgTY c=1 sm=1 tr=0 ts=6808ca69 cx=c_pps a=50t2pK5VMbmlHzFWWp8p/g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17 a=IkcTkHD0fZMA:10 a=XR8D0OoHHMoA:10 a=COk6AnOGAAAA:8 a=iCsAco6G6QYzM88_SOEA:9 a=QEXdDO2ut3YA:10
 a=IoWCM6iH3mJn3m4BftBB:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-ORIG-GUID: gkE6hXSyknZhji0iwUxPxfAGxRrEE7cg
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNDIzMDA3NiBTYWx0ZWRfX1vJYYeDmXkB6 WC2q+t1/0bg7daGo+eYaB6uOr8mDBJgRcnSk/GgaPIQw2iPLtMyh4SfHt/7kJ6f+IOMmLqbMxSa gtO92Z3yV8DwjgBtE6y/WSfU4RHgSxCvyvA1mgQ4gqDvt92jXOqiiFzUmfkYVMXRy6l4gzc4te1
 3X/IAy72qNy4zsyZr02ngcqjkVNBGfq6NDDX47Fla30dHPBafs8juV9KicpEP3rGGgGaJ7e4if4 nTmUS0KOtZ1i2MF3LSCT+pyWOiVLzPMHWtgzJdxYjWx3S1YkzC6DNbv8Ye+IVL9xJ+BmBKhKDGo RJhzIk+fSepXhEOR0aTY84FfTP6RsJy1z4CdXcUgwVzpiiezNLqHgop/LCOKmvyfw2knNPYK0/t
 8KCkYoNUzNyHx/mL9Vik9THFH5jEFwccztM/WOER34QXkivTLvg8tSenWqweh1904mCZtZHc
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.680,FMLib:17.12.80.40
 definitions=2025-04-23_07,2025-04-22_01,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 impostorscore=0
 lowpriorityscore=0 suspectscore=0 mlxscore=0 clxscore=1015 malwarescore=0
 mlxlogscore=999 phishscore=0 priorityscore=1501 spamscore=0 adultscore=0
 bulkscore=0 classifier=spam authscore=0 authtc=n/a authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.19.0-2504070000
 definitions=main-2504230076
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250423_040930_846605_DA22C8B6 
X-CRM114-Status: GOOD (  22.89  )
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

On 4/16/25 2:26 PM, Nitin Rawat wrote:
> 
> 
> On 4/16/2025 5:43 PM, Dmitry Baryshkov wrote:
>> On Wed, 16 Apr 2025 at 12:08, Nitin Rawat <quic_nitirawa@quicinc.com> wrote:
>>>
>>>
>>>
>>> On 4/15/2025 2:59 PM, Dmitry Baryshkov wrote:
>>>> On 14/04/2025 23:34, Nitin Rawat wrote:
>>>>>
>>>>>
>>>>> On 4/11/2025 4:38 PM, Dmitry Baryshkov wrote:
>>>>>> On Fri, 11 Apr 2025 at 13:50, Nitin Rawat <quic_nitirawa@quicinc.com>
>>>>>> wrote:
>>>>>>>
>>>>>>>
>>>>>>>
>>>>>>> On 4/11/2025 1:38 AM, Dmitry Baryshkov wrote:
>>>>>>>> On Thu, Apr 10, 2025 at 02:30:57PM +0530, Nitin Rawat wrote:
>>>>>>>>> Refactor the UFS PHY reset handling to parse the reset logic only
>>>>>>>>> once
>>>>>>>>> during probe, instead of every resume.
>>>>>>>>>
>>>>>>>>> Move the UFS PHY reset parsing logic from qmp_phy_power_on to
>>>>>>>>> qmp_ufs_probe to avoid unnecessary parsing during resume.
>>>>>>>>
>>>>>>>> How did you solve the circular dependency issue being noted below?
>>>>>>>
>>>>>>> Hi Dmitry,
>>>>>>> As part of my patch, I moved the parsing logic from qmp_phy_power_on to
>>>>>>> qmp_ufs_probe to avoid unnecessary parsing during resume. I'm uncertain
>>>>>>> about the circular dependency issue and whether if it still exists.
>>>>>>
>>>>>> It surely does. The reset controller is registered in the beginning of
>>>>>> ufs_qcom_init() and the PHY is acquired only a few lines below. It
>>>>>> creates a very small window for PHY driver to probe.
>>>>>> Which means, NAK, this patch doesn't look acceptable.
>>>>>
>>>>> Hi Dmitry,
>>>>>
>>>>> Thanks for pointing this out. I agree that it leaves very little time
>>>>> for the PHY to probe, which may cause issues with targets where
>>>>> no_pcs_sw_reset is set to true.
>>>>>
>>>>> As an experiment, I kept no_pcs_sw_reset set to true for the SM8750,
>>>>> and it caused bootup probe issues in some of the iterations I ran.
>>>>>
>>>>> To address this, I propose updating the patch to move the
>>>>> qmp_ufs_get_phy_reset call to phy_calibrate, just before the
>>>>> reset_control_assert call.
>>>>
>>>> Will it cause an issue if we move it to phy_init() instead of
>>>> phy_calibrate()?
>>>
>>> Hi Dmitry,
>>>
>>> Thanks for suggestion.
>>> Phy_init is invoked before phy_set_mode_ext and ufs_qcom_phy_power_on,
>>> whereas calibrate is called after ufs_qcom_phy_power_on. Keeping the UFS
>>> PHY reset in phy_calibrate introduces relatively more delay, providing
>>> more buffer time for the PHY driver probe, ensuring the UFS PHY reset is
>>> handled correctly the first time.
>>
>> We are requesting the PHY anyway, so the PHY driver should have probed
>> well before phy_init() call. I don't get this comment.
>>
>>>
>>> Moving the calibration to phy_init shouldn't cause any issues. However,
>>> since we currently don't have an initialization operations registered
>>> for init, we would need to add a new PHY initialization ops if we decide
>>> to move it to phy_init.
>>
>> Yes. I don't see it as a problem. Is there any kind of an issue there?
> 
> No issues. In my next patchset, I would add a new init ops registered for qcom phy and move get ufs phy reset handler to it.

I don't really like this circular dependency.

So I took a peek at the docs and IIUC, they say that the reset coming
from the UFS controller effectively does the same thing as QPHY_SW_RESET.

Moreover, the docs mention the controller-side reset should not be used
anymore (as of at least X1E & SM8550). Docs for MSM8996 (one of the
oldest platforms that this driver supports) also don't really mention a
hard dependency on it.

So we can get rid of this mess entirely, without affecting backwards
compatibility even, as this is all contained within the PHYs register
space and driver.

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
