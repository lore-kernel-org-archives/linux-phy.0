Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C19EFCAC5B5
	for <linux-phy@archiver.kernel.org>; Fri, 26 Sep 2025 03:17:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0sGf78P6okX6l+SjzxMpjNWm+ZtX0Ewn53kJjmJoPf8=; b=CASR/4s3PZySml
	D0aheLwOoX80Nio7BjaAYGDHXKh/y4L8F6nAE6cxj2KOWEch5a9zdMe3ZGbCNw3yioV3F9j5Xo4Iv
	RHLaANyYkPT6JyFtiGaN6qmhGd7sypknD/pRBK+p2cgDDJQAkrDW9N1fdLxL+G/g7aHzYamBD8+2F
	+HmCWPv4vZLda8NJCEwWeGJ/a6IOOSLVJA9tON2bN+MZ2byA24CyW2wMQ5lag6J48Exh/Y+ZCBAj5
	ETV1QFX6nSTfM1S14AQ0n3FACdHi3FQWK5GdDLHg8l1RCCxaG372A5cszapMoc+GUQmQw8UeOwMBu
	NFUeKnIsrq4MwOeCxmTQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v1yxF-0000000FJ16-1nDY;
	Fri, 26 Sep 2025 03:17:05 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v1yxD-0000000FIz0-0UrZ
	for linux-phy@lists.infradead.org;
	Fri, 26 Sep 2025 03:17:04 +0000
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58PIQMon026497
	for <linux-phy@lists.infradead.org>; Fri, 26 Sep 2025 03:17:02 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	9f6LSM6OdZg1tUtjh3SpMPAi8kke+aQ/eiH9bqFrAoc=; b=IY0hQEiiUKjWIxlz
	GvvGIamAvxkoqk3lbTXoYxuP4aHFIE9UWsA7aAy+slvo7FTwMZd3gfWIg6hU/9VH
	wCBQjhDxjZIfKR9tKWr8OvDiGSauCiuPczfoMhEFmBnozzfPhq4j2UPHP1DECSgH
	0CtqodR7Aw/J+D9RB/cNu9rjWTofNI91RD6xrxELmyKZV1W1xobgA6xhH3P/owRc
	wRFheeh/xVhRrPERbBtch9dShWYLyr3b7eUeta6VVLFMWKWZKhQLn4nUzGPAQXyG
	aUg0r9zWQebI/yZVwWdcfHA0TwlBrpRt7u46cG0HTs2ZaP2tcs9n9mJyb1762b4M
	C/+Zyw==
Received: from mail-pj1-f71.google.com (mail-pj1-f71.google.com [209.85.216.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49db0u15gn-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 26 Sep 2025 03:17:01 +0000 (GMT)
Received: by mail-pj1-f71.google.com with SMTP id 98e67ed59e1d1-32eadc2b473so482190a91.3
        for <linux-phy@lists.infradead.org>; Thu, 25 Sep 2025 20:17:01 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758856621; x=1759461421;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=9f6LSM6OdZg1tUtjh3SpMPAi8kke+aQ/eiH9bqFrAoc=;
        b=m7X+2FlWf+ZRlrDwwrOW5+kNVDUNc4XkYjhFIZK1rhOlqIWykJmZ5LSZ5HDTrUnCVu
         /TebLvI9hc656ZQRRLhwzqGvqk4lXNy8HceANG5S/K+MI4gAobmZqsXSp1WbdqL3yCqw
         S0fumEGtZL/KFSo1wa4KDiKjnYYhlRanCvb7ndcpI9i96OITlzmOpJgPoSR4LhASlLUh
         VliEMPfopWTsfhWbVzP5sFb03RQrGt8p9cUOqO4wbuT9n4QxIMhc/kep5bUQsjISNe8b
         QKRMTRUjEk5qdeyFczi6bTroVkjkn92x4QwvyX/zhitN+KPDUojjDZqHTezfO2LS87/G
         iSsQ==
X-Forwarded-Encrypted: i=1; AJvYcCXhb1+Chedj7zUDUe9eDhf0VH0TE0tcMmVgLeQdHTDHVPqu6G3+Q+Axe0c+gXfe4ibquRPWGyDTk88=@lists.infradead.org
X-Gm-Message-State: AOJu0YzuCbp01/DZppNb2vdt9qqYPSTTE+BXjt0Vf4hZ2t+8MhdG7LYa
	EQYOx74owXRGaof+yR3fjCdDlGmOYrW91zCzvLo3CjPwAJE5vgHShpGf6oYLp8qcfb3G/9pGFAg
	6N/evktiEkRITlqCs/fKbyn7zh7VXnfA76vVhXrwuLyotUYgWJimYcfPlbdakKjy2V92s
X-Gm-Gg: ASbGncsGqbCJCCdWD5y/J9ejrhruPJGNvlbo8dnqW/KiT/7wESb0M8Unu9slGl4oKtp
	58T2LaWe1NuNTGY37Wk6UaKEARXKdhP6kZFAQPrU1AMB8Zq419VehPMR/mfw2PlUagZ8597Ohwq
	+hXm/d6qdJjCXUGRbSmbjAW1BvXBGwj/c8r5/zbp/tvX5LFBpq/A+E7ubTBUv+Km3Ymj0moHu24
	q14/UCyTWH9HhddixVGTj0hpaUX4KJHCTBvi7qftk4WMbWORaanowlnScscs0ABCmLKT4TvpGrM
	KsFlf5d5sFpGQNlBDmz/vVcU5HhUG6VJLd5EwdojSpXDKW0Idxr111Yv8BDNjaEK+2EBIbSFcsS
	VUSsN0hl5wbhl61h8Z63UeaOFIEIC23ylljU=
X-Received: by 2002:a17:90b:3b48:b0:32d:e980:7a70 with SMTP id 98e67ed59e1d1-3342a17d006mr3998874a91.0.1758856620637;
        Thu, 25 Sep 2025 20:17:00 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEiqzLmVD4byJpS81rkUiJ1Icsy/ExxJQYHMvD+WEtpM3r1cCrKQQ5MrCKcNruiodugOB5rJQ==
X-Received: by 2002:a17:90b:3b48:b0:32d:e980:7a70 with SMTP id 98e67ed59e1d1-3342a17d006mr3998835a91.0.1758856620082;
        Thu, 25 Sep 2025 20:17:00 -0700 (PDT)
Received: from [10.133.33.139] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-781023c203dsm3184336b3a.22.2025.09.25.20.16.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 25 Sep 2025 20:16:59 -0700 (PDT)
Message-ID: <2577fb3e-96bb-4f2e-871d-27395065ef4b@oss.qualcomm.com>
Date: Fri, 26 Sep 2025 11:16:51 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 12/14] phy: qcom: qmp-usbc: Add QCS615 USB/DP PHY
 config and DP mode support
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I
 <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar
 <abhinav.kumar@linux.dev>,
        Jessica Zhang <jessica.zhang@oss.qualcomm.com>,
        Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        fange.zhang@oss.qualcomm.com, yongxing.mou@oss.qualcomm.com,
        li.liu@oss.qualcomm.com, Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
References: <20250925-add-displayport-support-for-qcs615-platform-v6-0-419fe5963819@oss.qualcomm.com>
 <20250925-add-displayport-support-for-qcs615-platform-v6-12-419fe5963819@oss.qualcomm.com>
 <5dtlqq7x36gb7cmiunoreoe2vftq46pusb75sbol47ceazefpf@lxrx3hhcwhju>
From: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
In-Reply-To: <5dtlqq7x36gb7cmiunoreoe2vftq46pusb75sbol47ceazefpf@lxrx3hhcwhju>
X-Proofpoint-ORIG-GUID: FIQZvLdn7M2xSDAiYQ2ayMl9bvYB1Ly7
X-Proofpoint-GUID: FIQZvLdn7M2xSDAiYQ2ayMl9bvYB1Ly7
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTI1MDE3MSBTYWx0ZWRfX1poTBU+LOHYk
 zdscsmems4WC8EupLtEutwkNaj5pt7l3Uwg0HLxr/kBdCL/1KA1pEAcDWqeVGc6/xI9Vfmj6TUZ
 4ZwNtBsKMtmgFvgmoJ3RfCTkNEyQPJrQlf88n++fH4rywkbXA4wrAk1oktTATc/VozKNE29z2VZ
 DjJIhsQGVUVDrynnNCPilw0Dg1xMn16nkRIWc7ojhTUtDg5DiYXsZp16sgMIbhsJlDaVY5tlTkJ
 CsXKOTa7k5fC5D5phQgftd8E06aL75HWQxssV6O3DphK9FmOlNJHZKRTurGnQoJ2G5qH53CVc5t
 0jhHT5P0uG6xpv8GRlwGJXt6FQYX+N2Ftk3togBbKNFV7jxYcQxTGPBWrJv5jZ3ktuO8TghWKq3
 c8ilALlWXLAKu2wTBBAOeDHRLCbuug==
X-Authority-Analysis: v=2.4 cv=ZsHg6t7G c=1 sm=1 tr=0 ts=68d605ad cx=c_pps
 a=UNFcQwm+pnOIJct1K4W+Mw==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=DA7DBj9iRjnvuWfEG8oA:9
 a=QEXdDO2ut3YA:10 a=uKXjsCUrEbL0IQVhDsJ9:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-26_01,2025-09-25_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 spamscore=0 malwarescore=0 lowpriorityscore=0 adultscore=0
 priorityscore=1501 impostorscore=0 bulkscore=0 suspectscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2509150000 definitions=main-2509250171
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250925_201703_281567_7B43417A 
X-CRM114-Status: GOOD (  14.62  )
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


On 9/26/2025 5:57 AM, Dmitry Baryshkov wrote:
> On Thu, Sep 25, 2025 at 03:04:58PM +0800, Xiangxu Yin wrote:
>> Add QCS615-specific configuration for USB/DP PHY, including DP init
>> routines, voltage swing tables, and platform data. Add compatible
>> "qcs615-qmp-usb3-dp-phy".
>>
>> Note: SW_PORTSELECT handling for orientation flip is not implemented
>> due to QCS615 fixed-orientation design and non-standard lane mapping.
>>
>> Signed-off-by: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
>> ---
>>  drivers/phy/qualcomm/phy-qcom-qmp-usbc.c | 407 +++++++++++++++++++++++++++++++
>>  1 file changed, 407 insertions(+)
>> +
>> +static const struct qmp_phy_init_tbl qmp_v2_dp_serdes_tbl_rbr[] = {
>> +	QMP_PHY_INIT_CFG(QSERDES_COM_HSCLK_SEL, 0x2c),
>> +	QMP_PHY_INIT_CFG(QSERDES_COM_DEC_START_MODE0, 0x69),
>> +	QMP_PHY_INIT_CFG(QSERDES_COM_DIV_FRAC_START1_MODE0, 0x00),
>> +	QMP_PHY_INIT_CFG(QSERDES_COM_DIV_FRAC_START2_MODE0, 0x80),
>> +	QMP_PHY_INIT_CFG(QSERDES_COM_DIV_FRAC_START3_MODE0, 0x07),
>> +	QMP_PHY_INIT_CFG(QSERDES_COM_LOCK_CMP1_MODE0, 0xbf),
>> +	QMP_PHY_INIT_CFG(QSERDES_COM_LOCK_CMP2_MODE0, 0x21),
>> +	QMP_PHY_INIT_CFG(QSERDES_COM_LOCK_CMP3_MODE0, 0x00),
>> +	QMP_PHY_INIT_CFG(QSERDES_V2_TX_LANE_MODE_1, 0xc6),
> Hmm, I just noticed. This register belongs to a _different_ space. As
> such you can't have it in the COM table.


Thanks for pointing this out. It likely worked before because the default
value (0xc6) was sufficient during validation.

I'll move this configuration into configure_dp_tx() and set it based on
link_rate.


>> +};
>> +

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
