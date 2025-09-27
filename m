Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 16FE9CAC5B8
	for <linux-phy@archiver.kernel.org>; Sat, 27 Sep 2025 00:26:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CPR2MBDuOxua/8Go9/VH7yQ+Udz8AfxzeEjR84mrOgM=; b=an/QA+8rldDd+n
	pUfN3+7cfFT0LTzrS9Q2DyVUCviBVFzC1ZLnK86MJE5JFd3FmxUgR1BeUYjfZzSxyKM1hFaneGVrD
	W6GqnKH7Fau52PQZB9qq55lB5wWagECG9LA1ZbrPVMGlQZFeIICCXzu1YfhDSPsXYJT8bbD0qJsnh
	egFNXPxe32yLCU6//hnToF2qeJCYGBZyl1y86u3OCDqGBBxhH/jwM86A8y50kFBt50K0vaxrlmn8G
	47fbNTsO4JxQJtqziGkXRd0VkdJkwjqFzqj8kmZp/vhLdX0Q2e/qP1jMWgMumdiPL+hBiGFcYrFTL
	+M5qsiy5rxb81P8WJZCg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v2Ila-00000005fo9-2fyR;
	Sat, 27 Sep 2025 00:26:22 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v2IlY-00000005flI-0xS3
	for linux-phy@lists.infradead.org;
	Sat, 27 Sep 2025 00:26:21 +0000
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58R0KTfo012195
	for <linux-phy@lists.infradead.org>; Sat, 27 Sep 2025 00:26:18 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	RcvHuJWCbk3BM+dDfbEeuaA/xZMstL+kCgs1ypKPlgs=; b=dcB57Lvfe3uZsrIs
	nDRj+QPZE3erPi5hptVnoU8pG7SZFqJVkcAvGtQzj1ZqiOstWvV2gxaptDPlRIfs
	XFKJlibWgim3QDRKeM1BYxWvgwsLzqFlVvKwCtUk3U1UQ/ELRdQ1DQd9O+he97OR
	PObWWdi57Ro6HRSH9iPXq4WZnmhDATWgbMURlyxS/465f3+365NrHzCVWJ1iG2//
	PfaJdY5OkXCncWTAWbk/khzN5PFAAGnwZ8KPSvH727AnsVijD/Euwg1Q5hxOtc9a
	ZuNF4DYRFl1vaSzgO2pJpgFoP1JgCamrCKmXH/+I/g//5n00mm06eE6zWPXNS6xU
	utxBrQ==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49e59mr0a0-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Sat, 27 Sep 2025 00:26:18 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-269af520712so33527905ad.2
        for <linux-phy@lists.infradead.org>; Fri, 26 Sep 2025 17:26:18 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758932777; x=1759537577;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=RcvHuJWCbk3BM+dDfbEeuaA/xZMstL+kCgs1ypKPlgs=;
        b=qnGv4aL2qTj+QvHOgBERYFpL3yZoQ/4dvhT6Km+7JANMeMOBdCMSubvNFMdGdjcKAc
         HzQhrQ5TJyguxpGX/riuJh279XqDvywebrkLnvDnhJfkKMZLSu5N2+5UglvxjLM1Gj2X
         5NoDPEmwJoDZpuiRWJhm1c2SFXklqZm+mq3XF1J2d9/BznVm0ZY4vCae4KBYvOHF4Lkk
         D+J4kv7Tb2IqNrRW6Kh3srcsRIJVTgN6jlSrZZOQVN5nK/GY/p/usny0zkLcz5Tdy5gm
         3d/bPxVkxg08zQC49PRIRy4GVAt3e90BLYzN0X7t5+F1FSuKtuP3pVfgCgNqdzxVJ0K8
         iSZw==
X-Forwarded-Encrypted: i=1; AJvYcCVWrIn/6e9/iIS25l2XWHrJrhFdu+45AIsKpRprhYoaDTgqEz8e21kkF9qPb8wd3eWS5Bm8eoB16ZY=@lists.infradead.org
X-Gm-Message-State: AOJu0Yx6Xi89tIYPYIRsN2/JnEXwIDAZ2vkGBUJU26tL5lpSCTxaBU5o
	SjZMLmWqEATeJ3KqYRyYnTBDSt7CzzUqxYJa0h8h6n5PAbHzxtzQ6hNEk40Wq6OYu/JircBcSas
	qaSJYv6zqYYLyTJhW5Pnr3fcvszde1KDsnXhj8U6hiIJ+c1gEgcg50QqwYgvS23lenI5v
X-Gm-Gg: ASbGncuH8CfIvaez/3bBSb5hzbjDoDriagnbWjriy/CyP9wFgkpVuEylJlQOPsm7NfX
	Mh50SQTAtJs3NX1dQNHrPNa2C/76R2jLSwG1SRxSE778+1GQwgjTfoMDvhO8xYw1dztTqxvcREX
	hb7X4in6/RxfWNpBEhdgsgV3fHghX+N0cmK9im7RdJAesJjgjUsT2YvwtpbKeDLobMWhaDcp2i9
	7lKkmJPVQh48GBhmuxwyl7Hopl3r7+7lcbCe74oy0+8aTMLuZuL+9o/5UvPsH6sF3J+r16bVxHr
	6plvl3I4X3tsuYrlT+ovZKqwa1tXFci+iICdDcEJ1NX09cmuaB3vvve9u6m2w1z9myZ1+mQtBmB
	s5JSmGtg=
X-Received: by 2002:a17:902:db02:b0:25d:d848:1cca with SMTP id d9443c01a7336-27ed4a9210cmr101101265ad.35.1758932777140;
        Fri, 26 Sep 2025 17:26:17 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGl/VvGzXBiAsVCQPQ5JSyszwVAPZ3CE+4Pj60nC2J+bmZi/TFe45otM20FRy6jWafZOYKjuQ==
X-Received: by 2002:a17:902:db02:b0:25d:d848:1cca with SMTP id d9443c01a7336-27ed4a9210cmr101100975ad.35.1758932776652;
        Fri, 26 Sep 2025 17:26:16 -0700 (PDT)
Received: from [10.73.53.199] (pat_11.qualcomm.com. [192.35.156.11])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-27ed66d3acfsm66321885ad.20.2025.09.26.17.26.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 26 Sep 2025 17:26:15 -0700 (PDT)
Message-ID: <89375a6d-782f-8b89-bf16-1d13b7a525ed@oss.qualcomm.com>
Date: Fri, 26 Sep 2025 17:26:14 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Subject: Re: [PATCH v3 07/10] phy: qualcomm: qmp-combo: Update QMP PHY with
 Glymur settings
Content-Language: en-US
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: krzk+dt@kernel.org, conor+dt@kernel.org, kishon@kernel.org,
        vkoul@kernel.org, gregkh@linuxfoundation.org, robh@kernel.org,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-usb@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20250925022850.4133013-1-wesley.cheng@oss.qualcomm.com>
 <20250925022850.4133013-8-wesley.cheng@oss.qualcomm.com>
 <oecyjwj7ouufjbiq2fpvlhhuaof5agm22fdsruf3ppayiu4kkm@wvi4no53x64y>
 <5e9e2824-923c-1328-dd7a-a8b496c44a70@oss.qualcomm.com>
 <exe3i3lgeor6bdokdqzu2nlenlbtjgv6c3swek3phirsinjnhp@tb5x5lkf2i26>
From: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
In-Reply-To: <exe3i3lgeor6bdokdqzu2nlenlbtjgv6c3swek3phirsinjnhp@tb5x5lkf2i26>
X-Proofpoint-GUID: 7TZU4G-vkPQIcaUpdW65CZhmCyjFqBgl
X-Authority-Analysis: v=2.4 cv=O4g0fR9W c=1 sm=1 tr=0 ts=68d72f2a cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=ZdW6uxA9NKXbfdqeeS2OGA==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=sM_2IyiB1HmcMQZSuvwA:9
 a=QEXdDO2ut3YA:10 a=324X-CrmTo6CU4MGRt3R:22
X-Proofpoint-ORIG-GUID: 7TZU4G-vkPQIcaUpdW65CZhmCyjFqBgl
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTI3MDAwMSBTYWx0ZWRfX9M73vyg1bkJl
 PDmZXkFvTFG8Y9T3RJ8mdxDwXnE4ji2Eq/969sgf9lAwsxCW9FDKHcXBI8fQhWVf68lV8bdn/fz
 qnxvN5jzcHvkfLHt+HpWUVo635mvTXBJwKBZ2hE5TgdGiryhL+DrkpnKzl7rpCHdddEgD8KV/uO
 UTWnEivrF2r1I9HHqqgtgAHDNW/u5F8ZV8Rn643IFm+TyhJ/cEBi40cyV9gIZefB829ECaVnE/c
 yjqHvPbQpwKEGdq0ctk80OcsHS0u6RGWE7N9u4XRriQj+Ewi4jCUAZyT9Dv0Y67KcmfnUQXSugL
 nsVqU82C/IShesxHu0vTBcbADfx2/Wgg5/sRDCLpdPG444+SFwhJQBBAA3vJ7in2E/r6MD5oRY1
 45T9YFgDqL5r+9hDcWg64Ep+77Uajg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-26_08,2025-09-26_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 phishscore=0 clxscore=1015 priorityscore=1501 lowpriorityscore=0
 spamscore=0 impostorscore=0 bulkscore=0 suspectscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2509150000 definitions=main-2509270001
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250926_172620_396468_88BAE6B1 
X-CRM114-Status: GOOD (  20.80  )
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



On 9/25/2025 7:11 PM, Dmitry Baryshkov wrote:
> On Thu, Sep 25, 2025 at 05:14:30PM -0700, Wesley Cheng wrote:
>>
>>
>> On 9/24/2025 7:54 PM, Dmitry Baryshkov wrote:
>>> On Wed, Sep 24, 2025 at 07:28:47PM -0700, Wesley Cheng wrote:
>>>> For SuperSpeed USB to work properly, there is a set of HW settings that
>>>> need to be programmed into the USB blocks within the QMP PHY.  Ensure that
>>>> these settings follow the latest settings mentioned in the HW programming
>>>> guide.  The QMP USB PHY on Glymur is a USB43 based PHY that will have some
>>>> new ways to define certain registers, such as the replacement of TXA/RXA
>>>> and TXB/RXB register sets.  This was replaced with the LALB register set.
>>>>
>>>> There are also some PHY init updates to modify the PCS MISC register space.
>>>> Without these, the QMP PHY PLL locking fails.
>>>>
>>>> Signed-off-by: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
>>>> ---
>>>>    drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 311 +++++++++++++++++++++-
>>>>    drivers/phy/qualcomm/phy-qcom-qmp.h       |   4 +
>>>>    2 files changed, 314 insertions(+), 1 deletion(-)
>>>>
>>>> +
>>>> +static const struct qmp_phy_init_tbl glymur_usb43dp_pcs_misc_tbl[] = {
>>>> +	QMP_PHY_INIT_CFG(QPHY_V4_PCS_MISC_PCS_MISC_CONFIG1, 0x01),
>>>
>>> Why is this V4 all of sudden?
>>>
>>
>> Hi Dmitry,
>>
>> Will fix..
>>
>>>> +};
>>>> +
>>>> +static const struct qmp_phy_init_tbl glymur_usb43dp_pcs_tbl[] = {
>>>> +	QMP_PHY_INIT_CFG(QPHY_V8_USB43_PCS_LOCK_DETECT_CONFIG1, 0xc4),
>>>> +	QMP_PHY_INIT_CFG(QPHY_V8_USB43_PCS_LOCK_DETECT_CONFIG2, 0x89),
>>>> +	QMP_PHY_INIT_CFG(QPHY_V8_USB43_PCS_LOCK_DETECT_CONFIG3, 0x20),
>>>> +	QMP_PHY_INIT_CFG(QPHY_V8_USB43_PCS_LOCK_DETECT_CONFIG6, 0x13),
>>>> +	QMP_PHY_INIT_CFG(QPHY_V8_USB43_PCS_REFGEN_REQ_CONFIG1, 0x21),
>>>> +	QMP_PHY_INIT_CFG(QPHY_V8_USB43_PCS_RX_SIGDET_LVL, 0x55),
>>>> +	QMP_PHY_INIT_CFG(QPHY_V8_USB43_PCS_RCVR_DTCT_DLY_P1U2_L, 0xe7),
>>>> +	QMP_PHY_INIT_CFG(QPHY_V8_USB43_PCS_RCVR_DTCT_DLY_P1U2_H, 0x03),
>>>> +	QMP_PHY_INIT_CFG(QPHY_V8_USB43_PCS_TSYNC_RSYNC_TIME, 0xa4),
>>>> +	QMP_PHY_INIT_CFG(QPHY_V8_USB43_PCS_RX_CONFIG, 0x0a),
>>>> +	QMP_PHY_INIT_CFG(QPHY_V8_USB43_PCS_TSYNC_DLY_TIME, 0x04),
>>>> +	QMP_PHY_INIT_CFG(QPHY_V8_USB43_PCS_ALIGN_DETECT_CONFIG1, 0xd4),
>>>> +	QMP_PHY_INIT_CFG(QPHY_V8_USB43_PCS_ALIGN_DETECT_CONFIG2, 0x30),
>>>> +	QMP_PHY_INIT_CFG(QPHY_V8_USB43_PCS_PCS_TX_RX_CONFIG, 0x0c),
>>>> +	QMP_PHY_INIT_CFG(QPHY_V8_USB43_PCS_EQ_CONFIG1, 0x4b),
>>>> +	QMP_PHY_INIT_CFG(QPHY_V8_USB43_PCS_EQ_CONFIG5, 0x10),
>>>> +};
>>>> +
>>>> +static const struct qmp_phy_init_tbl glymur_usb43dp_pcs_usb_tbl[] = {
>>>> +	QMP_PHY_INIT_CFG(QPHY_V8_PCS_USB_LFPS_DET_HIGH_COUNT_VAL, 0xf8),
>>>> +	QMP_PHY_INIT_CFG(QPHY_V8_PCS_USB_RXEQTRAINING_DFE_TIME_S2, 0x07),
>>>> +};
>>>> +
>>>> @@ -1667,6 +1899,12 @@ static struct qmp_regulator_data qmp_phy_vreg_l[] = {
>>>>    	{ .name = "vdda-pll", .enable_load = 36000 },
>>>>    };
>>>> +static struct qmp_regulator_data qmp_phy_vreg_refgen[] = {
>>>> +	{ .name = "vdda-phy", .enable_load = 21800 },
>>>> +	{ .name = "vdda-pll", .enable_load = 36000 },
>>>> +	{ .name = "refgen", .enable_load = 936 },
>>>
>>> Is this a meaningful value?
>>>
>>
>> I need to adjust this value.  I just want the load for the regulators to be
>> in HPM, and after taking a look, looks like based on the rpmh regulator
>> table, I need to be voting 35000.
> 
> Please provide a value from the platform data rather than just the HPM
> boundary.
> 

OK, I referenced our power grid for the correct Ipeak for that 
particular regulator.  Will update this number accordingly.

Thanks
Wesley Cheng

>>
>> Thanks
>> Wesley Cheng
>>
>>>> +};
>>>> +
>>>>    static const u8 qmp_dp_v3_pre_emphasis_hbr3_hbr2[4][4] = {
>>>>    	{ 0x00, 0x0c, 0x15, 0x1a },
>>>>    	{ 0x02, 0x0e, 0x16, 0xff },
>>>
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
