Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3DE22CD5BCF
	for <linux-phy@archiver.kernel.org>; Tue, 26 May 2026 06:42:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SSuhSLcbXgFeyhUxrd1SinGdo26KaDRpbtpErw6pXHU=; b=LTEg0wnX3w+vq3
	LeYF3jg/92b8tcr7uy7RG9ASkzAqTgFiFXl+6FGBpYoze9alnRyvSpb+NJ6yCZ2WHKnP+Fm01SVOg
	cnsvYBO9hUowSMaeVKZE66usiqRXEmusAC6iE21XeWhFurkT54Mtwa7wLtM1QfySJEWDNJWmF87dW
	ULzMwiuk0pmUeXqHavTO5rm/Ow7Yg7afmEjTGQ0VcoiZLmkwYPb+4hPCB7tes68rSY4x6Ojwf/nFt
	krO+/3YlNu+5zlLGIEWXVT9LFbxDrf4akyb3ISlwP6CWJ1FacBqr5GdxPy9DkFkWII3tAX2uI0W8U
	Fb475OhTWCTgq0VZs3vQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wRlUL-00000001Bpy-2nNG;
	Tue, 26 May 2026 06:42:05 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wRlUI-00000001BpB-3qir
	for linux-phy@lists.infradead.org;
	Tue, 26 May 2026 06:42:04 +0000
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 64PLfSkb3263593
	for <linux-phy@lists.infradead.org>; Tue, 26 May 2026 06:42:01 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	nx7dST+rJAS+31ZmDGbjNSLJU/fJwkaTptXWG8RZ9k8=; b=o+fmvfOVsG24K0Ab
	hTzqZYO8ng4P6kSWsC5Ge2thjXLa0yQUpOc74ZnUER3rvoC4Jw30NRpy+qv6iBWt
	eQSJ+3EMZi7I7gabCCEqO1SnekFze9Z1gxaqMXv3mPRwBJtQOtm2Y+Knwn0YRo0F
	GKKzayvcnJRZ7cTrPUV8q0V7DdLmn1WXjcompefnjkk6Bn0Bq5nPLH1mx1Cizfpz
	wfR/Kx5v3AbB3vbyetJasRr1Z3hp6yEPPWR+aCeVgououlvkY7NzQv7yIF0VPXGs
	pHDsPGGtjSVIEbSGSnBtBngPCGrFbsU/ezuJGfOYgouumbw6pGL+QigtgIMl+MRy
	b0vivw==
Received: from mail-pj1-f69.google.com (mail-pj1-f69.google.com [209.85.216.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ecnhs30n5-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 26 May 2026 06:42:00 +0000 (GMT)
Received: by mail-pj1-f69.google.com with SMTP id 98e67ed59e1d1-367fd7b8825so10192220a91.0
        for <linux-phy@lists.infradead.org>; Mon, 25 May 2026 23:42:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1779777720; x=1780382520; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=nx7dST+rJAS+31ZmDGbjNSLJU/fJwkaTptXWG8RZ9k8=;
        b=Q1dSHa0BSIGCdGEpOMo5/2K62hCPEzyO1Op+W5s3OP56rcJGYzQnHBZHkiEYG4qj3X
         L0XIvMDkqetZtf1MPT0/04/C8blxCINtzgAbEWDr7+Qw8tbEu3oQazszOizVJ8mviiL9
         UOkBpUMy33MOz9qvA42Tonzt7Y1XFGH08qcWRUd4ExxrCT6+laBzTcB4ox7qh1ip1xCk
         r5evFzZZsJGc8wsXFYtVPlfrLrCIStmqQRws4mQN2cAP51fxPXGa/ck/o/koXvOLRgui
         EUY8jb9SsXo27tSpIgTv+2gBpX8UJlP5SAcdgAgAoMUEmgTaJyhkFcsrzBqkGdk0B7SV
         8FFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779777720; x=1780382520;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=nx7dST+rJAS+31ZmDGbjNSLJU/fJwkaTptXWG8RZ9k8=;
        b=nlB/5TrLaX5TXUWLGDqRSkuJaUVnp6EuzdRpeRs6L+ZRkj5Pmn+DcGK3fsN2Z+F+Pe
         oS3/xBJqt9nfMXcUyBarCCNF5ZJVfMULDCj72uVZD+8koF/ujgoDO8udU77c4yNYflME
         GtXk0YyaG00k/zhLxzi/OjYKoF2VdaaZeoJMdBLU+Kf7NkNdGHJM3kWFMZI+e/TQKV/3
         e0ru6P13MW1qclb7dvVUzAism+N6rdqxATDIW7eG/ynXNV9x64Wg558ovVfLjaCN9ZVQ
         rMDjdmqxv0+2qfyRaz//DGG+vNgjhNiVKbfv/BJmec06Ui1fVHqwSsX8FNAIO2L7Pm8c
         rnAA==
X-Forwarded-Encrypted: i=1; AFNElJ+zkgGiRCc6BAW3ebTMZ7H0KiN2orfRNolObK3BIjogbYzqI1Hakay6L7NiwWTPC2fWLTXOtPCZnkY=@lists.infradead.org
X-Gm-Message-State: AOJu0YzE7ZlAj7O9WG6XlFSJg8M4hYUBZWNXYEbca5DHSbnD+nS/c48F
	7cJ/io62r8RV0ZOu0v7oVSmmb+7yZR3mQuMWnV83YJLO1T7QVZN+CXoMmQuUBDmt/EXXBJwhF8p
	jFvRsNrmyV4mBqs+t7ZWUJM+sl9x9EgoTw/TC/LESZZ9KJK/RE+BSmHpCl7rgA6ArL92y
X-Gm-Gg: Acq92OHcoaG6C4yOR8ZykrACV8Qe6Ya5jQLQYdsxxVI0WqyaO7NGpzj+jCEywif4Xd+
	sFT4thSNpzorCVE594tyL9YFObWgaS3HcqacNDSok7+ThdATNXBuu+cQ+mzrOl5YouGpebG1frO
	TKAzQ4JeZHk5qT5TPtUJim686UDg/4bHZcv+QBkXQsFaJ3G/zwGZwx5Yy3fxSmZTjEHVuIXTzAm
	9rZAedLjRnQpshfFpLADyECTgRCTnCqhJbHLBxzU+f8ZTCP6CiwS32PiT/m+yEsXs+u9KqLvrK6
	N/zB5stqVqvhC+evrj5mZRm69+j+3BPCg1tNd//S9TJner/a1AFcAikhzVuzJbxYWACZF/QIKFF
	O8DfUlTjPi70HZsiWsin2Z3Gj7x9I0HZ9959c5S8Ae1tM26/Ddw==
X-Received: by 2002:a17:90b:56ce:b0:36a:cace:a4b6 with SMTP id 98e67ed59e1d1-36acacea4d5mr8607079a91.9.1779777719857;
        Mon, 25 May 2026 23:41:59 -0700 (PDT)
X-Received: by 2002:a17:90b:56ce:b0:36a:cace:a4b6 with SMTP id 98e67ed59e1d1-36acacea4d5mr8607044a91.9.1779777719373;
        Mon, 25 May 2026 23:41:59 -0700 (PDT)
Received: from [10.92.181.2] ([202.46.23.19])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-36b0d6a612dsm810455a91.17.2026.05.25.23.41.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 25 May 2026 23:41:58 -0700 (PDT)
Message-ID: <190e16f9-f467-4446-a5ee-eaf01ad55861@oss.qualcomm.com>
Date: Tue, 26 May 2026 12:11:52 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH V2 3/3] phy: qcom-qmp-ufs: Add UFS PHY support on Hawi
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: vkoul@kernel.org, neil.armstrong@linaro.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, mani@kernel.org,
        alim.akhtar@samsung.com, bvanassche@acm.org, andersson@kernel.org,
        abel.vesa@oss.qualcomm.com, luca.weiss@fairphone.com,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-scsi@vger.kernel.org
References: <20260522172716.820490-1-palash.kambar@oss.qualcomm.com>
 <20260522172716.820490-4-palash.kambar@oss.qualcomm.com>
 <szzkygcwnrx2p54hbulzd3edhwzueaulhpyl35b762yo4enepu@zgzv6oxdocha>
Content-Language: en-US
From: Palash Kambar <palash.kambar@oss.qualcomm.com>
In-Reply-To: <szzkygcwnrx2p54hbulzd3edhwzueaulhpyl35b762yo4enepu@zgzv6oxdocha>
X-Authority-Analysis: v=2.4 cv=Vd3H+lp9 c=1 sm=1 tr=0 ts=6a1540b8 cx=c_pps
 a=vVfyC5vLCtgYJKYeQD43oA==:117 a=j4ogTh8yFefVWWEFDRgCtg==:17
 a=IkcTkHD0fZMA:10 a=NGcC8JguVDcA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=rJkE3RaqiGZ5pbrm-msn:22
 a=EUspDBNiAAAA:8 a=ZrBsj_3XA7F7z1mTZmAA:9 a=QEXdDO2ut3YA:10
 a=rl5im9kqc5Lf4LNbBjHf:22
X-Proofpoint-GUID: AdTTN4YyOafZhWuKtNbyRuOWJfLqEmDl
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNTI2MDA1NiBTYWx0ZWRfX04mdwqO335Ky
 Z0VEson6COx2KwLUpDoLt+a2zra37P1BZZMxTXXY00UK54KGyMRIMIeqCk/xbUHInI0maXndI76
 MLdwWlFJlKb53wssUQGdpWyoQ8SbwRWzEP6VJ5I52PHwTo5J2idMZtVpfKKpTQ+W+niTSvxr4l7
 S5I/ogDx83/1z2r/vgw6iF6aMIlscAavn3Gaq0cil1cS4LPk/tLRdQ+MyEgaqvbD39rkPJYVOvl
 ONKVDk0SnvgJNFT1+UDX8cQBsyZdoN3IVDpqGzOPflwVhsDLxux0a7hPrJwvdpMVLBIX5vmGUnQ
 PnWYjdVHdgAioxV4Z8W+s0NxFTUJj2KfHHosTUNqMZy2DhJ2G9eg1ijC8cIOrhGs65BELAG8mP0
 Y8OGTcvakP2FByipEnR9myz7R8mhhL/BTDTVDgJXxly61Lv6aVoCVOerJtUKuVLmYyM1rJzcclk
 iY42YyE7CN8uUYVtaqg==
X-Proofpoint-ORIG-GUID: AdTTN4YyOafZhWuKtNbyRuOWJfLqEmDl
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-05-26_01,2026-05-18_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 suspectscore=0 malwarescore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 phishscore=0 adultscore=0 priorityscore=1501 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2605130000 definitions=main-2605260056
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260525_234203_199755_9F9B84F2 
X-CRM114-Status: GOOD (  14.80  )
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



On 5/25/2026 2:15 PM, Dmitry Baryshkov wrote:
> On Fri, May 22, 2026 at 10:57:16PM +0530, palash.kambar@oss.qualcomm.com wrote:
>> From: Palash Kambar <palash.kambar@oss.qualcomm.com>
>>
>> Add the init sequence tables and config for the UFS QMP phy found in
>> the Hawi SoC.
>>
>> Signed-off-by: Palash Kambar <palash.kambar@oss.qualcomm.com>
>> ---
>>  .../phy/qualcomm/phy-qcom-qmp-pcs-ufs-v7.h    |  24 +++
>>  .../phy-qcom-qmp-qserdes-txrx-ufs-v8.h        |  37 +++++
>>  drivers/phy/qualcomm/phy-qcom-qmp-ufs.c       | 140 ++++++++++++++++++
>>  3 files changed, 201 insertions(+)
>>  create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-pcs-ufs-v7.h
>>  create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-qserdes-txrx-ufs-v8.h
>>
>> @@ -1306,6 +1315,12 @@ static const struct regulator_bulk_data sm8750_ufsphy_vreg_l[] = {
>>  	{ .supply = "vdda-pll", .init_load_uA = 18300 },
>>  };
>>  
>> +static const struct regulator_bulk_data hawi_ufsphy_vreg_l[] = {
>> +	{ .supply = "vdda-phy", .init_load_uA = 324000 },
>> +	{ .supply = "vdda-pll", .init_load_uA = 27000 },
>> +
> 
> Stray empty line

Will fix and Update. Thanks.> 
>> +};
>> +
>>  static const struct qmp_ufs_offsets qmp_ufs_offsets = {
>>  	.serdes		= 0,
>>  	.pcs		= 0xc00,
> 


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
