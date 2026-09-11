Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 927AFC88E50
	for <linux-phy@archiver.kernel.org>; Fri, 11 Sep 2026 12:25:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gQ8EPR2+hYOSsQDhZQAkXchbWXnOp0Nt6hbx1g+GQHo=; b=vVrUDHGfv1hY07
	ZX5CXzJO96eypJ33SZIvUM4vKmzxPhiH3AXPY8Ozfy/JswhuKFVe3lED+tVUpCvUEqLd5JLn5fXim
	BGuJc2Rdo3tPPMP2/MiYBYFuehK1If3cTgd8h2ZbRAMfV4X4/nvC4G64TxlSdbvN4rvZwSUJ1U+Yk
	65R+6XtmMj7VNccGu0Med7r2Enc7Ungk8esXNqWSLK4f8VXDc9JUEdlpzmGsMjYr6SkXwTrG0IjzG
	kmIm9BIlqDWkXIHROVZLnGlt501sq7++p6/Q8qEUuLmFrMGlCfRoP10YxJoIj69ZwZKMfRLGGjGJR
	gDFqf7+j3x3dk5ByUfFw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x50K2-0000000Gd9g-168U;
	Fri, 11 Sep 2026 12:25:38 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x50Jz-0000000Gd92-39kG
	for linux-phy@lists.infradead.org;
	Fri, 11 Sep 2026 12:25:36 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 68BAq8k02726660
	for <linux-phy@lists.infradead.org>; Fri, 11 Sep 2026 12:25:34 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	1S5/mPaFZQObEkBwz5Y/uD94W7vae2ZRFWoFv2SAZLk=; b=DsajK290ORKzekJL
	BoSHjxMnsxLcrc+zhjhUruSs030C8qDv6t8YBu271U4I8PW9U3nUzFbrBqv36RcU
	fNU15LQq0zGb0uMlIBnsRAiOfSfAuiiH9ehxthJHqV20Gvt/7mNKmg6t+20FIJ51
	rVE5eQfFhCup/9g08sfWnPMqxEl6ew8QZs8cGpUbOKdMI2urTAA+NNH1uMJ/EuNh
	W4hIAkY3Vo9BasXNCPHpvRaHihF+7eoifVzyPFgbTZK5tWDJxapFMUnJMmIyuRet
	MksTG+KnSr8IbpBCQ1luMHQDATxSRfa7Go3CjIaY8T89nI6IDszSW23NSice2tfh
	PKoAiQ==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4gm7ucjdnx-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 11 Sep 2026 12:25:34 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-2d94a158dc8so12279775ad.2
        for <linux-phy@lists.infradead.org>; Fri, 11 Sep 2026 05:25:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1789129534; x=1789734334; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=1S5/mPaFZQObEkBwz5Y/uD94W7vae2ZRFWoFv2SAZLk=;
        b=eVIxRQusaxEcoFtOAmWRD+0yOayPOHdh+8UCNjXK2dA2KJ42n5jPT8wNQ6maEsBjIb
         DkKgBzGhi3LrTjdjYY+6F0nrYEzflIiOtHrG03i/nf7z4ApkkVmLOF2qhS6l/kvgBcBe
         g5IwQMWuPxAXxA6YSscbXT/0RRmzKLs3Pa3ezayd0UD4a6hG3BQUYI27fDuT9z+PopXd
         b73Hh4VzJrDfUDLFJYS3xNy222uG/N1KJv0rVTra0ueCbt45UdiDB9/MAZA3JNyjY7Lv
         ynZRwovpfgS7GM9Nare6em6auYmTeGRF38Jf+vOL7QBsivDEQFqyo3ddYjLDPtSXF936
         c6sQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1789129534; x=1789734334;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=1S5/mPaFZQObEkBwz5Y/uD94W7vae2ZRFWoFv2SAZLk=;
        b=AFTpgKTt27zDgVxm+AhJGht/gO7Qn9JqOa25fz/Wne/uMxVWL5De2MxhfsIYGVPAMa
         VV/jtFWgy+twyqiC0XWrSJrzq5YL/od9jZ1wqQM/uRYjrnYU6E5tG+nd0SRNEk70KqZv
         9Ff3IFENre3yQaf59DFNy4wLelqCItwQeflxRZnYyrocXa4cvJ0l6gw6UFRTpUxY04QZ
         dU6qXUY/28ZPUTErsl8EdpLV0LkRUCkSGAHWIL9U2DOsgZERHcYO1X3ecuoYTj+a1Kxa
         LyJ8oW7HM9R4IHy5wKC8koojFAmPRQxcCtYI1xemyow6MrNShHoUylkCkqr8xZIa9mlB
         3nbA==
X-Forwarded-Encrypted: i=1; AKwUvBwuIyIqeTRrEw05bzfvO4mfUtcYZc92XAo0vVf9eDtbqOqpfxVOvZbWo8XvUsh+QYvF9QEMLgqhHmU=@lists.infradead.org
X-Gm-Message-State: AFuF++kTC4/NT+Dt/LXIdccEsWXLW1jKnSzygnMI7LSSX+1XZIZ5aYXl
	vOvRe/Vchyr7AG/E9/CoGfqaW67RpK3efjfeJJHpCrufntCYi/mu0CezC9Z+RsNkcRxRsa+IVfx
	wr4yBQAE35mFn71yjjqJ4VSTiw5OPcbmCWPSly1/om+3DTQVkly4cKG71x4L5AU4SUiQT
X-Gm-Gg: AYBFou0r9qzW31Yv0AJpQMJjaa1/kcLgZq1O87XmEep7/ELZwrhYPJJPX4jvaIltWu4
	2VMUuLEMBc+ZCm5f+lucm0kCjqq5wjzDAoH1E7Ese38XfmY/JkjuxhmXoA0VIAJvd5bVWSFqsKl
	pkVtMnQD4Bj+fIuB1Ey+zOW2wdgtYce1Jn4dYbpFAkqCJ2bMcszLD25Ww0Z7zKqhWNdV1bCE7+I
	r2itGmrkIcSfecQuzbSAwvpuh2QiLDJcjGOE3wwqnMgtFk+ydfQc42F5x2sXbEvkmZqqj4WTSb8
	EjaHGq2HCR0cgESpmw3V7ufzYmaIx7gdkB5YJxg0vaUJTS1zZf1coC03/kb1b3vTKnt92DCAGkL
	3GG8MqPLjR3kyayTCse/TMehF74k/
X-Received: by 2002:a17:903:2443:b0:2d1:134:b86e with SMTP id d9443c01a7336-2dd2a1cdd36mr71171165ad.2.1789129531886;
        Fri, 11 Sep 2026 05:25:31 -0700 (PDT)
X-Received: by 2002:a17:903:2443:b0:2d1:134:b86e with SMTP id d9443c01a7336-2dd2a1cdd36mr71166445ad.2.1789129526926;
        Fri, 11 Sep 2026 05:25:26 -0700 (PDT)
Received: from [10.92.160.138] ([202.46.23.19])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-33ba4f5833fsm8027738eec.23.2026.09.11.05.25.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 11 Sep 2026 05:25:26 -0700 (PDT)
Message-ID: <2229f9de-dc18-4c05-8077-59869a987714@oss.qualcomm.com>
Date: Fri, 11 Sep 2026 17:55:22 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 6/9] phy: qualcomm: qmp-combo: Extract common DP PHY
 init sequence
To: Manivannan Sadhasivam <mani@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong
 <neil.armstrong@linaro.org>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org,
        Ritesh Kumar <ritesh.kumar@oss.qualcomm.com>,
        Mahadevan P <mahadevan.p@oss.qualcomm.com>
References: <20260908-glymur-phy-v3-v4-0-ff22e5150538@oss.qualcomm.com>
 <20260908-glymur-phy-v3-v4-6-ff22e5150538@oss.qualcomm.com>
 <rtpmf4gfixtn3ka44reaurodo7fgsaj4amajklef22ersizweg@a2drblb654bv>
Content-Language: en-GB
From: Nabige Aala <nabige.aala@oss.qualcomm.com>
In-Reply-To: <rtpmf4gfixtn3ka44reaurodo7fgsaj4amajklef22ersizweg@a2drblb654bv>
X-Authority-Analysis: v=2.4 cv=O4asLx9W c=1 sm=1 tr=0 ts=6aa3f33e cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=j4ogTh8yFefVWWEFDRgCtg==:17
 a=IkcTkHD0fZMA:10 a=VdqzKS8jKosA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=DJpcGTmdVt4CTyJn9g5Z:22
 a=EUspDBNiAAAA:8 a=V1R2uIZI5OquyjJlcbQA:9 a=QEXdDO2ut3YA:10
 a=GvdueXVYPmCkWapjIL-Q:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwOTExMDE3NCBTYWx0ZWRfXzZWewqr+dvEl
 j78D9xFnonK0wB2ht1LqncU0ldeZTI8Z0KXm/WUdH3Q7CjDA75rnVBE6wLckyhuleDfXMKlQxOl
 TudPSE1f9FIiF72aiGqwcNW5sgjaYBZjH50JMYnohX8hJbW2KP7V0CleoCRxR6AMLzalx+anElM
 7T48VipihVbFsDtPZIOvEv7l2nmvbBq97fRhw8sPeqTiT7C2G1TwWIXjzgEUozTFGte9d+cr6ua
 12JZtaw76S4K16qKWrjXR9ogCFxJBq1b4R2ORTjfhKzBL38TjHItCgFYp1I/Y6Q9c3mQp7SjXW6
 Bm5e7DfdT13dL8VofNOV4CLcG+h4HfX98UslYOODj2d5oTSgADh/D1GOdzHmgsKFegTPOdWiA8E
 lg/0VJ1h+qxFtEIWEEUBKoHD/E1x58GnM3zYnQbJ9NpMMutcZ4jR5pLs8P/lGuDf72pwZJgJSfF
 Rz/A/BPmghqJmhXU7gg==
X-Proofpoint-GUID: 4F_M6zps_RPKRqAS84cHAKrhuL8G58ut
X-Proofpoint-ORIG-GUID: 4F_M6zps_RPKRqAS84cHAKrhuL8G58ut
X-Proofpoint-Spam-Info: AW1haW4tMjYwOTExMDE3NCBTYWx0ZWRfX1Rp5SjS49G2A
 r3rchj/yFPTJjqS29QF3cTnrieIwSwvVqCzcpK6EIRUspRQ9K5X+RrwO6rXmcr12hRs7bwktXZM
 4OYgwz0Rx6Tyf8WeMxeEBII2TSpxFD8=
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-09-11_04,2026-09-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 clxscore=1015 priorityscore=1501 suspectscore=0 impostorscore=0
 lowpriorityscore=0 spamscore=0 adultscore=0 malwarescore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2609040000 definitions=main-2609110174
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260911_052535_829407_AC2A503B 
X-CRM114-Status: GOOD (  19.61  )
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


On 9/11/2026 11:00 AM, Manivannan Sadhasivam wrote:
> On Tue, Sep 08, 2026 at 07:30:59PM +0530, Nabige Aala wrote:
>> From: Ritesh Kumar <ritesh.kumar@oss.qualcomm.com>
>>
>> Extract the common DP PHY initialization sequence shared between
>> qmp_v456_configure_dp_phy() and qmp_v8_configure_dp_phy() into a new
>> qmp_combo_configure_dp_phy_common() function.
>>
>> The common sequence covers:
>> - Validation that dp_aux_cfg2 is configured for the platform
>> - Writing dp_phy_cfg1 and dp_aux_cfg2 hardware-specific register values
>> - Calling configure_dp_mode() for TypeC lane orientation
>> - Programming AUX_CFG1, TX lane control registers
>> - Invoking configure_dp_clocks() callback
>> - PHY_CFG reset/enable sequence
>> - Polling COM_C_READY_STATUS and COM_CMN_STATUS for PLL lock
>>
>> Refactor qmp_v456_configure_dp_phy() to call the common function,
>> removing the duplicated initialization code. Update
>> qmp_v8_configure_dp_phy() to call qmp_combo_configure_dp_phy_common()
>> directly instead of going through qmp_v456_configure_dp_phy().
>>
>> Signed-off-by: Ritesh Kumar <ritesh.kumar@oss.qualcomm.com>
>> Signed-off-by: Mahadevan P <mahadevan.p@oss.qualcomm.com>
>> Signed-off-by: Nabige Aala <nabige.aala@oss.qualcomm.com>
> One comment below. With that addressed,
>
> Reviewed-by: Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>
>
>> ---
>>   drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 99 ++++++++++++++++++-------------
>>   1 file changed, 59 insertions(+), 40 deletions(-)
>>
>> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
>> index 0ec382aebe2b..79006469f3d4 100644
>> --- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
>> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
>> @@ -3459,6 +3459,7 @@ static const struct qmp_phy_cfg glymur_usb3dpphy_cfg = {
>>   	.configure_dp_tx	= qmp_v4_configure_dp_tx,
>>   	.configure_dp_clocks	= qmp_v8_configure_dp_clocks,
>>   	.configure_dp_phy	= qmp_v8_configure_dp_phy,
>> +
>>   	.dp_aux_cfg2		= QSERDES_DP_PHY_AUX_CFG2_V8,
>>   	.dp_phy_cfg1		= QSERDES_DP_PHY_CFG1_V8,
>>   	.dp_mode_ignore_reverse	= true,
>> @@ -3766,6 +3767,62 @@ static void qmp_v4_dp_aux_init(struct qmp_combo *qmp)
>>   	       qmp->dp_dp_phy + QSERDES_V4_DP_PHY_AUX_INTERRUPT_MASK);
>>   }
>>   
>> +static int qmp_combo_configure_dp_phy_common(struct qmp_combo *qmp)
>> +{
>> +	const struct qmp_phy_cfg *cfg = qmp->cfg;
>> +	u32 status;
>> +	int ret;
>> +
>> +	if (!cfg->dp_aux_cfg2) {
>> +		dev_err(qmp->dev, "DP AUX CFG2 value not configured\n");
>> +		return -EINVAL;
>> +	}
>> +
>> +	writel(cfg->dp_phy_cfg1, qmp->dp_dp_phy + QSERDES_DP_PHY_CFG_1);
>> +
>> +	qmp_combo_configure_dp_mode(qmp);
>> +
>> +	writel(0x13, qmp->dp_dp_phy + QSERDES_DP_PHY_AUX_CFG1);
>> +	writel(cfg->dp_aux_cfg2, qmp->dp_dp_phy + QSERDES_DP_PHY_AUX_CFG2);
>> +
>> +	writel(0x05, qmp->dp_dp_phy + QSERDES_V4_DP_PHY_TX0_TX1_LANE_CTL);
>> +	writel(0x05, qmp->dp_dp_phy + QSERDES_V4_DP_PHY_TX2_TX3_LANE_CTL);
>> +
>> +	ret = qmp->cfg->configure_dp_clocks(qmp);
>> +	if (ret)
>> +		return ret;
>> +
>> +	writel(0x01, qmp->dp_dp_phy + QSERDES_DP_PHY_CFG);
>> +	writel(0x05, qmp->dp_dp_phy + QSERDES_DP_PHY_CFG);
>> +	writel(0x01, qmp->dp_dp_phy + QSERDES_DP_PHY_CFG);
>> +	writel(0x09, qmp->dp_dp_phy + QSERDES_DP_PHY_CFG);
>> +
>> +	writel(0x20, qmp->dp_serdes + cfg->regs[QPHY_COM_RESETSM_CNTRL]);
>> +
>> +	if (readl_poll_timeout(qmp->dp_serdes + cfg->regs[QPHY_COM_C_READY_STATUS],
>> +			status,
>> +			((status & BIT(0)) > 0),
>> +			500,
>> +			10000))
>> +		return -ETIMEDOUT;
> Didn't I suggest that you should just return what readl_poll_timeout() returns?

Ack, I will update in the next revision.

Regards,

Nabige

>
> - Mani
>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
