Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CE8E1CCF9E0
	for <linux-phy@archiver.kernel.org>; Sat, 25 Oct 2025 00:02:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uXJBPz4Rul+ZNwDj6B48eJ/GsoSilDUH8ZfY3DCL0k4=; b=Kq3K06fsZ+UE2i
	j2BfgRY0tH2hF1UgL+l4yv02OxAB4OT0eNXHuMqo2tMpZHBdQNi5RZ4iLqKvq6dXgfnUugFznXjP7
	vxrFCHfM10gCFvJuZAg0Y+gpOpBGzotFlynNbk0gCvMf7nFhlOpjzjdCKTQSq1St38Or10E81Jmt4
	NHzljF/PdMIVKNezZXzAQSVDMPh4mq+iQMrPhCVQcUcW0ltb/2anit/SxLz+/FLLQvsH69q4EMp1p
	JUL0r2yVubV1cUyCSI44EwWmNmASD/XUD1S9ZcqHfd0xgMkY0j3yIslRoFrqlAXuP0u+SuHx7qMvb
	5iMmpA5zchg6j7x4/1wQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vCRjm-0000000Ah5P-1CGn;
	Sat, 25 Oct 2025 00:02:26 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vCRjj-0000000Ah52-3JZZ
	for linux-phy@lists.infradead.org;
	Sat, 25 Oct 2025 00:02:25 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59ONqw3b011616
	for <linux-phy@lists.infradead.org>; Sat, 25 Oct 2025 00:02:20 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	fc56pL8berOUmLto0AR19Euk08KtluvdaeNgGMdpvTE=; b=XGM/74FOGdNx4bPt
	V2fYvREFPHifpId8zU2Ui2yQVcAFg4vl3fBm1nXlYcoeDfHYVXKzMnCXVKFwH9NV
	ziNbdw9OozywFuMK9R+KP8Mmy9KWf+6igzG7Di5mhjv/NgAHH2XnP8ljF+k4x+HQ
	TLX3TVACSX4kY/NvUVAJkHPpGvmT8RXfArjyAXrezz3uCta5/LfvRMuwfiMwYAHI
	YCo3G4yPBh4AJE/eqLXCWLepxGpXYLzhT4JBWnr0xLI0TKfGPsMWgG/KLx8r9/dK
	AalJYizIUkOpmENTDJ/1dYL2T6hOT+ni8NXATzK1GBwWSYJOs3Stqe3Mja39E0q0
	xWn5Zw==
Received: from mail-pf1-f198.google.com (mail-pf1-f198.google.com [209.85.210.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49xhe0uh8q-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Sat, 25 Oct 2025 00:02:20 +0000 (GMT)
Received: by mail-pf1-f198.google.com with SMTP id d2e1a72fcca58-7a267606fe8so2113145b3a.0
        for <linux-phy@lists.infradead.org>; Fri, 24 Oct 2025 17:02:20 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761350539; x=1761955339;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=fc56pL8berOUmLto0AR19Euk08KtluvdaeNgGMdpvTE=;
        b=KSYLNoBdYzqmbwl5svLNYt3xtDSMvdIbQU47MZ91qxn9SzO1nOPsxKF7ovIdoa8tNC
         IFYvJI603ts8K38fN8jI+/7ZlcbQKiQSzqjyu/zKyDLlauq+JgToRJLZp6xrb9NlRqvw
         jFQzpzfNWGrJrKEHvqvPYLQ0JirUJHmDrw478DCG6Njj7aX4syitALTdGKIRTtQyD0yX
         So/0nRbaShXC0Zctu4Knh2PtqPmsb1Z29Ftx8+c4yHxtH2OAPOlLYSq2+v/qKzW4wVe9
         +MdihQJqqBJap/KG2gtuBt4xKuccTPIYYpA+wPJ8IPI099tvlO9eI2Skuk1rk1raOecu
         7BPg==
X-Forwarded-Encrypted: i=1; AJvYcCXpyBwiD+lA5KGqgzhroO4OT921QKCI6H+jM+C9Ekoou+v85Cvgaj/5xN/ZDJX3vBUmxuHkyRuQAzw=@lists.infradead.org
X-Gm-Message-State: AOJu0YzB/6/shWbOZFv0miVasc2sKN5GuhHdJM+cT0xOOl5hOdMsrI9/
	7fzy7c0clgcerY3mWNtsjLLIITB48O1Za/9eNBiJl/5J8SBVzwenuAHn5HeHVRYyPDAnbQqPRTE
	tjKNgWNdLvvmSkr6jxwdIQVq3XG9OxJaDVoaSF8bdQzrUc4s9TKbLVsH7CIh8keMVdP/f
X-Gm-Gg: ASbGncvPGaTlhnWxbApaCkD4G7UMU7jGTfyoA+GDa4bzCAinTlbTDCDCk0YyGx6+hL2
	rVvluXotTfYGjnSk6L03rq1MPrgmj9oACancCTKLgi4SHT2zOTSdj8xqmF3ajvV18S5H+8RXjuQ
	aFStsNn4m9q4ewk6KLND0Xye8t3YcBljGHteDfNy7prP53qBbmiY3kKwrkXFj+0NEmSGpAO5y1G
	iembuKIJMvS4Abtem5mw+NgVHpDVnOsdMpgP1xwihya8NgGR7pR38TsdSnYQ7cB1ph/OoeULu8F
	oz7ojCwbQuYvlfl3oIiH5W6b2nETQ4RWERRTwDLHznV3iRF1Mbg8CgvYagcFUN/EAJjvI02oU6L
	dWbJX7qguFzMxXnck+viag+dSzq3pjA/vunzDUft4
X-Received: by 2002:a05:6a20:e291:b0:341:3b91:69d1 with SMTP id adf61e73a8af0-3413b916bfemr325141637.5.1761350539001;
        Fri, 24 Oct 2025 17:02:19 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHx6iqMO7Mnjaq8k2ZFocktbexyApACGzLDJtVcDcWlYMjTJ7zTgXxvx6wLi2N8LqDG0LX5kw==
X-Received: by 2002:a05:6a20:e291:b0:341:3b91:69d1 with SMTP id adf61e73a8af0-3413b916bfemr325102637.5.1761350538483;
        Fri, 24 Oct 2025 17:02:18 -0700 (PDT)
Received: from [10.73.53.19] (pat_11.qualcomm.com. [192.35.156.11])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b712d024aaasm382952a12.26.2025.10.24.17.02.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 24 Oct 2025 17:02:17 -0700 (PDT)
Message-ID: <9d3dd1cf-4969-3dcb-18dc-59cfb68033f7@oss.qualcomm.com>
Date: Fri, 24 Oct 2025 17:02:15 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Subject: Re: [PATCH v5 07/10] phy: qualcomm: qmp-combo: Update QMP PHY with
 Glymur settings
To: Abel Vesa <abel.vesa@linaro.org>
Cc: krzk+dt@kernel.org, conor+dt@kernel.org, konrad.dybcio@oss.qualcomm.com,
        dmitry.baryshkov@oss.qualcomm.com, kishon@kernel.org, vkoul@kernel.org,
        gregkh@linuxfoundation.org, robh@kernel.org,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-usb@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20251006222002.2182777-1-wesley.cheng@oss.qualcomm.com>
 <20251006222002.2182777-8-wesley.cheng@oss.qualcomm.com>
 <zaotrz6upmpwv2w65633rlflubmykzn5dqiydl66y7rdalld4l@bo4oto5iynor>
Content-Language: en-US
From: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
In-Reply-To: <zaotrz6upmpwv2w65633rlflubmykzn5dqiydl66y7rdalld4l@bo4oto5iynor>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDIxMDE2NyBTYWx0ZWRfX1USGlf8wWtdS
 +DjynhfyMdOohVm+UYOn9bej6TOHr+w4NLme+E84P8FpKgSyKFh2jDId0QDr0bivnioIHQlSDF3
 UkOmSk1j/WCUEpwLzbsV8r/gqyuE/kTigD4v0nKW9fW6XxG0/Ha/M2ngiOKIBVAanWmT2v8D2GL
 z5jFrpOAVd37Ah5uarVco/3afssptls5nxr3rDOqRXDGY9Ie/9HHxr9Q8mGlvWZWtS1K0nwA8Hz
 Ack6ae2t9pOUs6mCH5hdF3iS9k3q3ukVpM/0VzWDRase7xy8oGG6lHDsB65w1wbdCRmB5YQjn0e
 PZ1EIw9CvEzPy72ILPCfMkf8qcUYNW348vijRCZS4IodiNAZW/q2pDmExz2DS3jMpyyV9nbN6ND
 H6kzJN9IcSDjC1e0FQXT4To5iD8w0A==
X-Proofpoint-ORIG-GUID: bmsgCzULd-Db5xowid_JPBnJ9YNwUhyQ
X-Authority-Analysis: v=2.4 cv=WYUBqkhX c=1 sm=1 tr=0 ts=68fc138c cx=c_pps
 a=m5Vt/hrsBiPMCU0y4gIsQw==:117 a=ZdW6uxA9NKXbfdqeeS2OGA==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=iT4AbuSYlod7UvTVlOgA:9 a=QEXdDO2ut3YA:10
 a=IoOABgeZipijB_acs4fv:22
X-Proofpoint-GUID: bmsgCzULd-Db5xowid_JPBnJ9YNwUhyQ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-24_05,2025-10-22_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 adultscore=0 bulkscore=0 impostorscore=0 spamscore=0
 priorityscore=1501 clxscore=1015 malwarescore=0 lowpriorityscore=0
 phishscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2510020000
 definitions=main-2510210167
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251024_170224_002452_6083128A 
X-CRM114-Status: GOOD (  24.44  )
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



On 10/24/2025 3:04 AM, Abel Vesa wrote:
> On 25-10-06 15:19:59, Wesley Cheng wrote:
>> For SuperSpeed USB to work properly, there is a set of HW settings that
>> need to be programmed into the USB blocks within the QMP PHY.  Ensure that
>> these settings follow the latest settings mentioned in the HW programming
>> guide.  The QMP USB PHY on Glymur is a USB43 based PHY that will have some
>> new ways to define certain registers, such as the replacement of TXA/RXA
>> and TXB/RXB register sets.  This was replaced with the LALB register set.
>>
>> There are also some PHY init updates to modify the PCS MISC register space.
>> Without these, the QMP PHY PLL locking fails.
>>
>> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
>> Signed-off-by: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
>> ---
>>   drivers/phy/qualcomm/phy-qcom-qmp-combo.c     | 314 ++++++++-
>>   .../phy/qualcomm/phy-qcom-qmp-pcs-aon-v8.h    |  17 +
>>   .../phy/qualcomm/phy-qcom-qmp-pcs-misc-v8.h   |  12 +
>>   .../qualcomm/phy-qcom-qmp-qserdes-lalb-v8.h   | 639 ++++++++++++++++++
>>   .../phy/qualcomm/phy-qcom-qmp-usb43-pcs-v8.h  |  33 +
>>   .../phy-qcom-qmp-usb43-qserdes-com-v8.h       | 224 ++++++
>>   drivers/phy/qualcomm/phy-qcom-qmp.h           |   2 +
>>   7 files changed, 1240 insertions(+), 1 deletion(-)
>>   create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-pcs-aon-v8.h
>>   create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-pcs-misc-v8.h
>>   create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-qserdes-lalb-v8.h
>>   create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-usb43-pcs-v8.h
>>   create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-usb43-qserdes-com-v8.h
>>
>> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
>> index 1caa1fb6a8c7..8216820e388f 100644
>> --- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
>> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
> 
> [...]
> 
>> +static const struct qmp_phy_cfg glymur_usb3dpphy_cfg = {
>> +	.offsets		= &qmp_combo_usb43dp_offsets_v8,
>> +
>> +	.serdes_tbl		= glymur_usb43dp_serdes_tbl,
>> +	.serdes_tbl_num		= ARRAY_SIZE(glymur_usb43dp_serdes_tbl),
>> +	.tx_tbl			= glymur_usb43dp_lalb_tbl,
>> +	.tx_tbl_num		= ARRAY_SIZE(glymur_usb43dp_lalb_tbl),
>> +	.pcs_tbl		= glymur_usb43dp_pcs_tbl,
>> +	.pcs_tbl_num		= ARRAY_SIZE(glymur_usb43dp_pcs_tbl),
>> +	.pcs_usb_tbl		= glymur_usb43dp_pcs_usb_tbl,
>> +	.pcs_usb_tbl_num	= ARRAY_SIZE(glymur_usb43dp_pcs_usb_tbl),
>> +	.pcs_misc_tbl		= glymur_usb43dp_pcs_misc_tbl,
>> +	.pcs_misc_tbl_num	= ARRAY_SIZE(glymur_usb43dp_pcs_misc_tbl),
>> +
>> +	.dp_serdes_tbl		= qmp_v6_n4_dp_serdes_tbl,
>> +	.dp_serdes_tbl_num	= ARRAY_SIZE(qmp_v6_n4_dp_serdes_tbl),
>> +	.dp_tx_tbl		= qmp_v6_n4_dp_tx_tbl,
>> +	.dp_tx_tbl_num		= ARRAY_SIZE(qmp_v6_n4_dp_tx_tbl),
>> +
>> +	.serdes_tbl_rbr		= qmp_v6_n4_dp_serdes_tbl_rbr,
>> +	.serdes_tbl_rbr_num	= ARRAY_SIZE(qmp_v6_n4_dp_serdes_tbl_rbr),
>> +	.serdes_tbl_hbr		= qmp_v6_n4_dp_serdes_tbl_hbr,
>> +	.serdes_tbl_hbr_num	= ARRAY_SIZE(qmp_v6_n4_dp_serdes_tbl_hbr),
>> +	.serdes_tbl_hbr2	= qmp_v6_n4_dp_serdes_tbl_hbr2,
>> +	.serdes_tbl_hbr2_num	= ARRAY_SIZE(qmp_v6_n4_dp_serdes_tbl_hbr2),
>> +	.serdes_tbl_hbr3	= qmp_v6_n4_dp_serdes_tbl_hbr3,
>> +	.serdes_tbl_hbr3_num	= ARRAY_SIZE(qmp_v6_n4_dp_serdes_tbl_hbr3),
>> +
>> +	.swing_hbr_rbr		= &qmp_dp_v6_voltage_swing_hbr_rbr,
>> +	.pre_emphasis_hbr_rbr	= &qmp_dp_v6_pre_emphasis_hbr_rbr,
>> +	.swing_hbr3_hbr2	= &qmp_dp_v5_voltage_swing_hbr3_hbr2,
>> +	.pre_emphasis_hbr3_hbr2	= &qmp_dp_v5_pre_emphasis_hbr3_hbr2,
>> +
>> +	.dp_aux_init		= qmp_v4_dp_aux_init,
>> +	.configure_dp_tx	= qmp_v4_configure_dp_tx,
>> +	.configure_dp_phy	= qmp_v4_configure_dp_phy,
>> +	.calibrate_dp_phy	= qmp_v4_calibrate_dp_phy,
> 
> So I see you are adding the DP related config here as well, but it is
> definitely not compatible with v6 N4. I'm assyuming you picked v6 N4 as a default
> just to allow the USB part work for now, right ?
> 
> I don't suppose we can drop the DP related config from this patch and
> still have the USB part working, right?
> 
> Otherwise, we need to mention the fact that even though the DP part
> is also being added, it is broken.

Hi Abel,

That is correct.  Without these defined, the USB path won't work, and 
we'll need to supplement this if we wanted to add DP support.  Hence, 
why I didn't add any mention of DP altmode in the commit text.  I can 
clarify that we added DP placeholders if that makes it more clear in the 
commit text.

Thanks
Wesley CHeng

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
