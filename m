Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3AA67C369D9
	for <linux-phy@archiver.kernel.org>; Wed, 30 Apr 2025 16:43:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GW2sxMoeyFZj37AGboGEdpeeT1LINFQT1WUuZld27tY=; b=sDbykud/p1mkkr
	g82DoRpXHg+7wfNc0bLtc0Ffk4YCuOegx+boSZvVjGSD+Bn87RV5O8zyJ4sN+exdNxIsM2IxM41d2
	EesiISaIOtvH2DrN2QAUnqgeLT8bcRJukSQwHmZL2zbhE/9m5EFxt6v+YR76cnC/fbR7qzquPwMIv
	0QvVVqAVxpbUxksiKaj2dLC13fTCRdcgfFj1BdEvokQE2oJwrH+sknDB8mtW7HEBEF8XiZzl/CSN2
	8nMT+5Z2kKLZx63aUJ5WVZ1Td2AwojRkaBh29vLknlSmdZCmi5iFO6qTm8kcZC8N+hYwojFLvEv9Y
	0xx25jxS8hCOgOaCjsqg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uAAXB-0000000DTAG-3fQZ;
	Wed, 30 Apr 2025 16:43:45 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uAAX9-0000000DT9Y-2a62
	for linux-phy@lists.infradead.org;
	Wed, 30 Apr 2025 16:43:45 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53U9658i018336
	for <linux-phy@lists.infradead.org>; Wed, 30 Apr 2025 16:43:41 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	m8gechZt1FFMmvPClarUjgPBXpccO8/uIU+IaL+lEqg=; b=Jk/Q5dEqOZ38oUAi
	Z2vIDqnZXUD9/g843JoICwAxjXU07O14bYND0HsT+FP6uBwthjrCm0eLUZdIA+DG
	GZdKxpfwtr2bjCtsgE/NmwS/j3Ec0DTWELlQoGA9Ao01AWaHHAqftcgsGf47mnus
	3tMhdafHp/4R6Kds/yoB/GbIrDgov8qp6wkMcajUDo3jQ0ojnU6kl9adquglgwrt
	ArxPjtfOEVIws4k6IMw0nOF66WTrcoqjpRbi87p6Te/qYiXCk4c32AWhrqLzhL9N
	RiaGO01BbuAgxW7Adwge+8smE7G/6zjioni57Q09RxJF3XUKnSl7GkFWLB42Rv/U
	cYR0kg==
Received: from mail-pf1-f200.google.com (mail-pf1-f200.google.com [209.85.210.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46b6uaavf2-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 30 Apr 2025 16:43:41 +0000 (GMT)
Received: by mail-pf1-f200.google.com with SMTP id d2e1a72fcca58-7398d70abbfso112175b3a.2
        for <linux-phy@lists.infradead.org>; Wed, 30 Apr 2025 09:43:41 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746031420; x=1746636220;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=m8gechZt1FFMmvPClarUjgPBXpccO8/uIU+IaL+lEqg=;
        b=kJlzVpkmouVpvRYqLT5tHLmFJzBKMphVZZJDJU1te+0qlokC+SNX3v+fV4hY5fnTvf
         usA9KEGnFRaatrAhg2+j3hAxV9cwrbdzt2n6A3UIxKOAzlJ4i2THOnM2eYQ56NAzirN4
         f4wVd9tBJ0ZlXmCoJXThCDfKSB8c3JzG4LdMJyeA8tZEBhQEBhwTgUcR0yY3oQQdioSJ
         LRr2Hu3exhIQYkL/4h0osowPBm1S3K+n5Zj29yu2NDJIkHQcRmUD4wAScPPlAD7kFJgF
         SANl+hC0kMr6taBgnODCA0edV0eOuBZPF3ryx+6AKM+PQwFDPgVRw+tl8ZvkDuvtf0rM
         F/Hw==
X-Forwarded-Encrypted: i=1; AJvYcCVn5BT9ybESLIp6GIZSPQCCwqg6lVHYF8X3cp4nZIr/jzX847q0g9+PvM2IsHlclVHBBEDVRvybKBk=@lists.infradead.org
X-Gm-Message-State: AOJu0YzJdD0f/WtmNGs7BZGNN2CWOlbaHHGCZwA3h9YXWJljbbVx/l1Q
	TjvIDTFsYuY+vrCXTFBYfS6V78Xc3xPscSdTuoIfIhvhogOwDG5TRkvBHgGCGKr0wMTzGT45xhM
	T7ap876nlWCo9qnExiYxETniahqSsnTpFMmgW5q7g4zs1hXm6UL3GeAg3RbaBFqk0
X-Gm-Gg: ASbGnctvvwOKb39TspBhLXTgrfRWYlmnDUJ0SzD8nAGAqoWfCt3ndlMiGkDKZ0dzrgn
	bD2ojfk4MPBghq4NWGDZRGI8/Ngfh/n6PVljJYWU4kXleXIYSdDVbWh43H7IOvO+HXcqNOjpdeB
	qyAx9wdZ6qi/qyrgjyigi//UlypMJmDEvuvHmvwOoaRF/wDObVUgXHzhz5QZlPLJ3Sf+ImFGNYB
	0RDBUW2clSJtpfftILPb4OdYZ8RViaLLX5IDk5gwOSOXmN53a3bLI/U2BaPtXX6JKSt7kSES38j
	gVjNeg861FucLCm3A23GBL2A/Lkn4hh4bgybOBmEnOieI5cyGlj2
X-Received: by 2002:a05:6a00:1814:b0:72d:9cbc:730d with SMTP id d2e1a72fcca58-740389c6d3amr5637543b3a.11.1746031420667;
        Wed, 30 Apr 2025 09:43:40 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFfvM2n/WCXOQfmCAt6vISRbV46zytVPmlHBi42n3e9/Mr/zp0qmV/V+dD0IhKtXBh3vpZs5w==
X-Received: by 2002:a05:6a00:1814:b0:72d:9cbc:730d with SMTP id d2e1a72fcca58-740389c6d3amr5637514b3a.11.1746031420328;
        Wed, 30 Apr 2025 09:43:40 -0700 (PDT)
Received: from [192.168.1.4] ([122.164.87.156])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-74039a5c25esm1943084b3a.136.2025.04.30.09.43.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 30 Apr 2025 09:43:39 -0700 (PDT)
Message-ID: <52c249e3-3cf4-492b-a22c-f82caa3bcd73@oss.qualcomm.com>
Date: Wed, 30 Apr 2025 22:13:34 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 0/2] Reuse the IPQ6018 QUSB2 PHY settings for IPQ5424
Content-Language: en-US
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I
 <kishon@kernel.org>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Varadarajan Narayanan <quic_varada@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org
References: <20250415-revert_hs_phy_settings-v3-0-3a8f86211b59@oss.qualcomm.com>
From: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
In-Reply-To: <20250415-revert_hs_phy_settings-v3-0-3a8f86211b59@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=BNizrEQG c=1 sm=1 tr=0 ts=6812533d cx=c_pps a=mDZGXZTwRPZaeRUbqKGCBw==:117 a=wj/iefQKNY9P1RSDfSoyGA==:17 a=IkcTkHD0fZMA:10 a=XR8D0OoHHMoA:10 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=ZGpNPYoN0zUfxpdBiG0A:9 a=QEXdDO2ut3YA:10
 a=zc0IvFSfCIW2DFIPzwfm:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNDMwMDEyMCBTYWx0ZWRfXxa7Q7jN0gV7F bA2DPJITdCmdQl30VL70INfdsl/8yY6YzpN2oqAHvI8G3yd96fyCb/wYEruXUnBFwPth6H0JrI8 nPJT8hYWdoLijxfDwOkvsXu2PuuHS9sXjzsvOGtD0c+BkuGVS55FwRCRTYidoyOanK7yDoo9hbh
 gCraTurxP/6By0RDJEu2yi05ru7fMqZPBcbYUBE8v4EKPqyJlC272zBRfvcIGieGxv9CnaRpnUm XLoXCJ5HCkZ6n6MYF8znFLKmLW4Hd3HbIGUbdILk2z2V9mN/VRzs1oGUuMjrKEZeouLC2moSItQ 8p63Uja00EJ2VX2jpWb8Mjk87CG++Av+TF3BfGj4LpvpIhlS67v33C6AfEl6GqlVFkwoOIfO0ql
 oTphXeZyDYOMViopIFRs0tuj3h4VkxQJaEu2hW4xSp51sOMnNvgxkHiM9ZqMtpr+a54bcns8
X-Proofpoint-GUID: 5SJ7t0UcEiI_fWScP3zUUXg4tb8xOvnX
X-Proofpoint-ORIG-GUID: 5SJ7t0UcEiI_fWScP3zUUXg4tb8xOvnX
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-04-30_05,2025-04-24_02,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 priorityscore=1501
 impostorscore=0 bulkscore=0 clxscore=1015 spamscore=0 adultscore=0
 phishscore=0 mlxscore=0 suspectscore=0 lowpriorityscore=0 malwarescore=0
 mlxlogscore=820 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2504070000
 definitions=main-2504300120
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250430_094343_665757_7C360A24 
X-CRM114-Status: GOOD (  15.64  )
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


On 4/15/2025 9:52 AM, Kathiravan Thirumoorthy wrote:
> With the current settings, compliance tests are failing, especially eye
> diagram (Host High-speed Signal Quality) tests. Reuse the IPQ6018
> settings, as mentioned in the Hardware Design Document.
>
> Merge Strategy:
> --------------
> Both the patch in the series should be merged together to avoid breaking
> the USB feature.


Gentle Reminder...


>
> --
> Changes in v3:
> 	- s/complaince/compliance (Mukesh)
> 	- s/design team/Hardware Design Document (Mukesh)
> 	- Link to v2: https://lore.kernel.org/r/20250414-revert_hs_phy_settings-v2-0-25086e20a3a3@oss.qualcomm.com
>
> Changes in V2
> 	- Splitted the patch into 2 patches, first revert the commit and
> 	  then reuse the IPQ6018 data (Vinod K)
> 	- Dropped the R-b tag from Dmitry
> 	- Link to v1 -
> 	  https://lore.kernel.org/linux-arm-msm/20250407-revert_hs_phy_settings-v1-1-ec94e316ea19@oss.qualcomm.com/
>
> ---
> Kathiravan Thirumoorthy (2):
>        Revert "phy: qcom-qusb2: add QUSB2 support for IPQ5424"
>        phy: qcom-qusb2: reuse the IPQ6018 settings for IPQ5424
>
>   drivers/phy/qualcomm/phy-qcom-qusb2.c | 27 +--------------------------
>   1 file changed, 1 insertion(+), 26 deletions(-)
> ---
> base-commit: b425262c07a6a643ebeed91046e161e20b944164
> change-id: 20250414-revert_hs_phy_settings-47643d2c75ba
>
> Best regards,

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
