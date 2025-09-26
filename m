Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E6992CAC5B9
	for <linux-phy@archiver.kernel.org>; Fri, 26 Sep 2025 00:14:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nM3RlKAay/oMXJh8RNwg4WJCP6yxvSvPuDR6jEjy/9I=; b=SaDibDivJ2mrdp
	eVcUeW1A7a1QvDu7OgypEHlVtmEgtjyGrx7xlQu4bruUV+3VrKo0duRdM967S/CqE1mK62qvm9a31
	9hg1qW6FPn0Lazcz6mnuXwX9ZYGnk+Q+ISikmjgxSEfRk3lGKoYvKqD6fDuwqS+mGe+Nz7wd/bW0w
	JekxvF2YNI6gOqukDUfk2grkN7zaqo3yKrLqsGto3dwZdjjSjwRCxhlXcQfnU0ep8BbfiQoP7UnKk
	dpHvNwWL+/2PUrcXBM5+82c+qBcwJKmM3Ka4ycbAK9UrLNTlyyqhXD37/+IOQnjQwEsxC8vigaf2Y
	w/gjZhLybgxsTzZlCKKQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v1w6g-0000000EG2E-1vjt;
	Fri, 26 Sep 2025 00:14:38 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v1w6e-0000000EFzd-0hbY
	for linux-phy@lists.infradead.org;
	Fri, 26 Sep 2025 00:14:37 +0000
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58PIQXt2005410
	for <linux-phy@lists.infradead.org>; Fri, 26 Sep 2025 00:14:35 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	y9aVQL6fEAcMEMTP9D/9Z6oTfy+cY28XMdggMyG2w/o=; b=RTZFtog3ulZxflRw
	CVYRks4Vr+AFqtvRb2kti29vCk19UwRstvMPlqFZakQgnHKJBcKuBm2qEEB+n1bx
	ikU5b8JQzPbne7dxrVJXIAlC/PUDsjYrZYkx3LKq8HNvf8UzsfnTLVARh4ehBetw
	Vs0WmegRNIP12xSGOqMJqc64YMhV8EvldY0JoaRdJaKRdrJDgVIUcCfQ1cCihINt
	h8247sc7y7UiTy7sKudy8cFnTkckARR0QwyBMGo6GBOYX2piLZEo+xaKiOI3iioW
	QCTH2+253rOeFFlqMcpFQEppiPq0B0OaQ33xaCrs7mgX3QneJs4ajd/kN6yF9cIQ
	CKRnCQ==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49db0u0s1w-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 26 Sep 2025 00:14:34 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-27c62320f16so18164995ad.1
        for <linux-phy@lists.infradead.org>; Thu, 25 Sep 2025 17:14:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758845673; x=1759450473;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=y9aVQL6fEAcMEMTP9D/9Z6oTfy+cY28XMdggMyG2w/o=;
        b=HXV1N381Q6xmVLrV4jS6Y+iHt9R+jCftq0HF9CDqjN91/aUvN+asGcv9oJoG4xK5FL
         01JllC6XX75EVlYq03whxmAcKPnnFOYCCHDuaaWak0GarUCtvm0hMIcApekguczmAH5F
         fyuo/wOXrMt3N3wTGf6DlqinhOmt2G3JbJWbalvBdVBED4y5POT69yIoJEfDe2HZrQMb
         T+/538qiYeiOzvt8Z7uZ8ouDsmLStM/9iejC8bE8g94po5UWzLmVuX1OYXJqNWyis9rT
         1vCN2F7qNYyz5CYYE2fpOUr3SfiAlrNcXdAqW6JuAGCcwpZD1/hkmv0QiZPv1p4e2hCw
         ygRA==
X-Forwarded-Encrypted: i=1; AJvYcCWh3WMwlVnf6GSI6Ps66HlgEEcG57T76sGyZVmo66f29uMVdbdtjUuBW40bFAUZ8tj1EOyudkyJ8TQ=@lists.infradead.org
X-Gm-Message-State: AOJu0Yx6eAXQx68V23oewH/5TnMI6r+bP3LvJ7sNgSgdFZiVgtj0WZmo
	ViKyR8TcxgyZvaOTXe7Q5L6Eu4g3PGZ9hJ6z34+Ak8dZ3LjYZFz/YmBpsgjUO/nHmjVLaHeIkyo
	0c02Ti0gcnYOQs9OYpVGz4eieb1Tmxbgu73PFrckB/RILWVVDf9XYikztA9hKHJpsUb2U
X-Gm-Gg: ASbGncvMhmnhq89LMkJypZDlTSetZEuqjauwiXlB2twE6PVaaw14Ijkg9Jr1+ymal1u
	DlvK3Rfd2gb6VNLlbkA91V6+wCJk3Rtrja8z+AlBDAjVNtVRWX8IGPSgvpSYPnKQhganP9hNmVA
	V8FTOOcUbZsLQsu0OFJZmbS45uT1rECz12s9O3Tx76vdg49setKUwKS6fFHFXTmKZPL3+xLkYnu
	TgMzKyeMmoUiLcofLv4zhsSGBhIM9DJkyIPGlAU9jL8/oX66i0M0mtY6x3+tcDP2AA1liMa3U7z
	y4Y2MmZQXzhQWmoOthXhBkbnIRVUyZAPPNSUUsN+0sVjKok1x1EIj4KzLztGj7fp1purXtHTHpJ
	gSN0fBa8=
X-Received: by 2002:a17:902:f544:b0:246:7a43:3f66 with SMTP id d9443c01a7336-27ed4a06c04mr62262925ad.7.1758845673438;
        Thu, 25 Sep 2025 17:14:33 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IF6RS0Z+VcLwtx06uS7E/LrV2b7e5WIQiC7s7bIX/lu3xtr100NQaYggwOJ4VVgTNHsEDWRcg==
X-Received: by 2002:a17:902:f544:b0:246:7a43:3f66 with SMTP id d9443c01a7336-27ed4a06c04mr62262565ad.7.1758845672931;
        Thu, 25 Sep 2025 17:14:32 -0700 (PDT)
Received: from [10.73.53.199] (pat_11.qualcomm.com. [192.35.156.11])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-27ed66cf181sm36713155ad.28.2025.09.25.17.14.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 25 Sep 2025 17:14:32 -0700 (PDT)
Message-ID: <5e9e2824-923c-1328-dd7a-a8b496c44a70@oss.qualcomm.com>
Date: Thu, 25 Sep 2025 17:14:30 -0700
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
From: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
In-Reply-To: <oecyjwj7ouufjbiq2fpvlhhuaof5agm22fdsruf3ppayiu4kkm@wvi4no53x64y>
X-Proofpoint-GUID: nyJALhsWwLb6wy4_cu-zpkMEmbf3k5DN
X-Authority-Analysis: v=2.4 cv=PYXyRyhd c=1 sm=1 tr=0 ts=68d5daea cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=ZdW6uxA9NKXbfdqeeS2OGA==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=INxguLwuHvTa_v7rZvUA:9
 a=QEXdDO2ut3YA:10 a=324X-CrmTo6CU4MGRt3R:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTI1MDE3MSBTYWx0ZWRfX8P7MPBVeGYT4
 2/2j8VXM03gSdRbjCoGKMIq+IlVNIM23/1XjmwhvXKj7sOkdyoJx4PcYPmhw0cU73AGeNPzvaYi
 CaxbUy1dKvP9GnmxGPZJ/3lBbVhxrv/TuKVbuXeWYtaU1Ak60y5/E1KmtEyYrOtNvUDVZMx1anY
 7gFge18OPVwIgSpwBNmLdxO5MxD/L+Myt9ZrLxyhtDAKEUFQ56KKL/x4YpqORAiaGmTVhhByQTk
 jl/S/aAsSnGhZxHPsaHLrvzcf5a0pELP1Q1Rf93oY/ZxIzC+8rXhn0drw0poo8LoGFbNxWmaZmA
 Z7jhDIbiI7lza10SGK4PexegI7RSS78AtXcp3HCDuEOIMt+fraXViEhelUvq5ZdIuXbSqYxiwbo
 QIVwnIxPM8yIp7Wad+cjh0Y4wCKaqg==
X-Proofpoint-ORIG-GUID: nyJALhsWwLb6wy4_cu-zpkMEmbf3k5DN
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-25_02,2025-09-25_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 priorityscore=1501 phishscore=0 adultscore=0 impostorscore=0
 lowpriorityscore=0 malwarescore=0 bulkscore=0 suspectscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2509150000 definitions=main-2509250171
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250925_171436_328333_BA2E6014 
X-CRM114-Status: GOOD (  22.00  )
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



On 9/24/2025 7:54 PM, Dmitry Baryshkov wrote:
> On Wed, Sep 24, 2025 at 07:28:47PM -0700, Wesley Cheng wrote:
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
>> Signed-off-by: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
>> ---
>>   drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 311 +++++++++++++++++++++-
>>   drivers/phy/qualcomm/phy-qcom-qmp.h       |   4 +
>>   2 files changed, 314 insertions(+), 1 deletion(-)
>>
>> +
>> +static const struct qmp_phy_init_tbl glymur_usb43dp_pcs_misc_tbl[] = {
>> +	QMP_PHY_INIT_CFG(QPHY_V4_PCS_MISC_PCS_MISC_CONFIG1, 0x01),
> 
> Why is this V4 all of sudden?
> 

Hi Dmitry,

Will fix..

>> +};
>> +
>> +static const struct qmp_phy_init_tbl glymur_usb43dp_pcs_tbl[] = {
>> +	QMP_PHY_INIT_CFG(QPHY_V8_USB43_PCS_LOCK_DETECT_CONFIG1, 0xc4),
>> +	QMP_PHY_INIT_CFG(QPHY_V8_USB43_PCS_LOCK_DETECT_CONFIG2, 0x89),
>> +	QMP_PHY_INIT_CFG(QPHY_V8_USB43_PCS_LOCK_DETECT_CONFIG3, 0x20),
>> +	QMP_PHY_INIT_CFG(QPHY_V8_USB43_PCS_LOCK_DETECT_CONFIG6, 0x13),
>> +	QMP_PHY_INIT_CFG(QPHY_V8_USB43_PCS_REFGEN_REQ_CONFIG1, 0x21),
>> +	QMP_PHY_INIT_CFG(QPHY_V8_USB43_PCS_RX_SIGDET_LVL, 0x55),
>> +	QMP_PHY_INIT_CFG(QPHY_V8_USB43_PCS_RCVR_DTCT_DLY_P1U2_L, 0xe7),
>> +	QMP_PHY_INIT_CFG(QPHY_V8_USB43_PCS_RCVR_DTCT_DLY_P1U2_H, 0x03),
>> +	QMP_PHY_INIT_CFG(QPHY_V8_USB43_PCS_TSYNC_RSYNC_TIME, 0xa4),
>> +	QMP_PHY_INIT_CFG(QPHY_V8_USB43_PCS_RX_CONFIG, 0x0a),
>> +	QMP_PHY_INIT_CFG(QPHY_V8_USB43_PCS_TSYNC_DLY_TIME, 0x04),
>> +	QMP_PHY_INIT_CFG(QPHY_V8_USB43_PCS_ALIGN_DETECT_CONFIG1, 0xd4),
>> +	QMP_PHY_INIT_CFG(QPHY_V8_USB43_PCS_ALIGN_DETECT_CONFIG2, 0x30),
>> +	QMP_PHY_INIT_CFG(QPHY_V8_USB43_PCS_PCS_TX_RX_CONFIG, 0x0c),
>> +	QMP_PHY_INIT_CFG(QPHY_V8_USB43_PCS_EQ_CONFIG1, 0x4b),
>> +	QMP_PHY_INIT_CFG(QPHY_V8_USB43_PCS_EQ_CONFIG5, 0x10),
>> +};
>> +
>> +static const struct qmp_phy_init_tbl glymur_usb43dp_pcs_usb_tbl[] = {
>> +	QMP_PHY_INIT_CFG(QPHY_V8_PCS_USB_LFPS_DET_HIGH_COUNT_VAL, 0xf8),
>> +	QMP_PHY_INIT_CFG(QPHY_V8_PCS_USB_RXEQTRAINING_DFE_TIME_S2, 0x07),
>> +};
>> +
>> @@ -1667,6 +1899,12 @@ static struct qmp_regulator_data qmp_phy_vreg_l[] = {
>>   	{ .name = "vdda-pll", .enable_load = 36000 },
>>   };
>>   
>> +static struct qmp_regulator_data qmp_phy_vreg_refgen[] = {
>> +	{ .name = "vdda-phy", .enable_load = 21800 },
>> +	{ .name = "vdda-pll", .enable_load = 36000 },
>> +	{ .name = "refgen", .enable_load = 936 },
> 
> Is this a meaningful value?
> 

I need to adjust this value.  I just want the load for the regulators to 
be in HPM, and after taking a look, looks like based on the rpmh 
regulator table, I need to be voting 35000.

Thanks
Wesley Cheng

>> +};
>> +
>>   static const u8 qmp_dp_v3_pre_emphasis_hbr3_hbr2[4][4] = {
>>   	{ 0x00, 0x0c, 0x15, 0x1a },
>>   	{ 0x02, 0x0e, 0x16, 0xff },
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
