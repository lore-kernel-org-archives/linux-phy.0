Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 39337CCA464
	for <linux-phy@archiver.kernel.org>; Fri, 16 Oct 2026 12:06:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=762pEUIJbeKnDZshoY8q4dGUKitwDFsunhYb71Jtwos=; b=HfjzsRYMO2LV/y
	Ba0uu/sQu5MFqQla4s0/RTVYSkRzrCmov8T72XaWjfDnRyWazLFa27HNEAtleZ5PUbiQTXcZ/fFbi
	NTdWLpg1dfspwgupoGGdUnttDw2iKHml50rrRo8zQyHT2XcZFFYLEpqvgM9hpcpOq8mukmeRVyBHe
	aYLIBjyU3P/zfWH7TsVyi+n/t2X6UjyShmweqPZeEIwg3tOZ/QyaeV0JJY0iUCHIyxBn6iJwJ5I2S
	DBbvWUyRqr/MikX56XDhlPTj3YNqIZxd528QSq9nbjO/wqG/5q2Yd1hC0kOlh1XkSrXJSlVLDcT2E
	YaiZ6je5vK5seFT4yrJw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHghT-00000002oxV-0uWz;
	Fri, 16 Oct 2026 12:06:15 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHghR-00000002ox7-456y
	for linux-phy@bombadil.infradead.org;
	Fri, 16 Oct 2026 12:06:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=bWzg8bctVvqRGEewiwOX+S0Z7/Ay3Fj1IoRNJ5Ddqeg=; b=JLf/Bi5GKYa2COeDw5jl0eWsXr
	8hin6li/4Dn5hfoKL9JJBKWJJE0LYK6V39jREAFsfVHoh+xlfuGRnSfhowrrUfymlvlFCpAgjGIy8
	2U3wV1kueITh2axzQy6zDF217tsXV8czBWZDB0TQ4VvEbEc4i5Oj+gAny/37tP3nFscEQfUVCTVwx
	qA8Bt+3EPxvWQ9aJpEO9pc81dcg0MRxX3FSm4FWiqxJ2+QgEdF3dTMGNqzNDs99k1YI/2HLPQranv
	1y3Afzfkcs1GjywOUbZOaV8btTSFddm6ZEthFL6NXEuAcG7QgotArVJVtI284LADSI7HTq9jC2+4x
	bfh80RXw==;
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by desiato.infradead.org with esmtps (Exim 4.99.5 #2 (Red Hat Linux))
	id 1xHghM-00000001Ssc-20bY
	for linux-phy@lists.infradead.org;
	Fri, 16 Oct 2026 12:06:12 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 69GAAATM1983178
	for <linux-phy@lists.infradead.org>; Fri, 16 Oct 2026 12:06:05 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	bWzg8bctVvqRGEewiwOX+S0Z7/Ay3Fj1IoRNJ5Ddqeg=; b=cfcN2dVl9jVZL7Tl
	kI2ddKGopHXchsnI6OpYS1SnsqYeK6z7CE4q/sMXCGbfe0cS2hqrg1eDVqcFADSI
	yAt+zBVO8HiN/nvoN4wvpIy52V+kj0mupei0pNwySdFKQf7IcsC+MA2n+Qru/i7G
	beJyo53oQKCBh6YB1fYJfM5wHnKBeAwlUFpQvB3o3a/JMmymMIxgSc0pytg+OdwL
	O+tCpulwNwGzaqb/AiTszZs0X+XlvrqgpXLFdC5swEUlq6xD/Ew8R8WoVJWT6Er+
	BchFOkDG6ZmZ6G0gDxOhvgN8ICLPmSsnVfuRHeH0wOqZ9Oj5SWC3bgnrzzZgUOVm
	nhxGYQ==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hb8a8ah3c-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 16 Oct 2026 12:06:04 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-53630cded29so1025751cf.2
        for <linux-phy@lists.infradead.org>; Fri, 16 Oct 2026 05:06:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1792152364; x=1792757164; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=bWzg8bctVvqRGEewiwOX+S0Z7/Ay3Fj1IoRNJ5Ddqeg=;
        b=AyGidCp49bTBqoTmE327kyywdJm/9jQb8JHRGXFQB8YpaBO28O+UCDypVmf4PDnuic
         HKYRgTiESLX0ROH8ShP6lzO+/Nspt8WhNRqmnGkTVTkpfEPR8O2DB2m0ZZqMywbj4/ll
         HRv36xMEDS4wOCp8071sRAwsEz7XWmfRYRy9M7IhpjjR4A3jCTMVkWv9kO7Fm9t5R8+u
         zMcTTaXkH6+40OxT8aQI7Ezkh3fnx+N4+2T2Ph8nyXQ1rch4HHRaTcUavHUlEFg+Xidg
         iKjYR861pIl9BkP2t7F3mKY9bjWoBmcLtOXTaW+RP4AGUR45KhF+MmS99LggLIq4Bsc6
         HUwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792152364; x=1792757164;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=bWzg8bctVvqRGEewiwOX+S0Z7/Ay3Fj1IoRNJ5Ddqeg=;
        b=E3F+rcTXSNj+vkm+6kjjzaDotYdZp9F5qIWgY8HAnndxm18d8GJahCWt/PDPsRES/s
         znntOjPek4cnhKXrPlQ8zV5rk0ilegVbFog+6j+o/h15sNCo5aZsWKzimXgRt1cPT9wQ
         xy3gW6sxU0zZF8avI/+Kegym0es2ZSuPlhlHY7zJ3GSugRYl6u6P68i09KF42Coc0Znz
         vg+ydh7rEORkZ/uMDV58/vMuLFp5cHKzZMQgGB/HCCcEFoJGeBkqct8/kpgypuBBMm5B
         6FF3VL5sRJAgRCVpZeymHT/nt7DkrJG7xoHEUNhi8L8GeNbK7mN6dQpNb+H1W2kHPOoP
         m6xg==
X-Forwarded-Encrypted: i=1; AKwUvByBF5FxcjBm3phaYoohUVH56Sa53roiPU+RuO3NCsMAW3iYeAuEvm+yrMRGVuxOZlKSI4tltdTFx1s=@lists.infradead.org
X-Gm-Message-State: AFq9FYImvZyBuFtPleDchLZ2GWo1m1i7QX3v25ukVdG6HIzdLz90wN5z
	r/o8AjthuvhlD7SBCFfyVCJZmmJ150o0gSNGrfzwEKsBve1vLuT6Lu4HByncbcXqZajkycLtZ86
	HO4YNdNzBF+qUNI4mmL35+BOTwYRu/Xjxe4SfIEBaiqqSiRXHa6MAb2rKn3hW3UDGj1ZE
X-Gm-Gg: AYBFou24Gs1SA8+kYI5B9GcKx+/Vfgj5vg4pcnkhnI7ejzZcHDdzKZpf5WbckOdGssN
	NOBU7I6Nc2204gYeaXqFgsFzxXiKjzAqprpH5Sy/qbzZX1t9EvYpjCTYgDcuskcwuMTZg/uAmM0
	/n6g+HmoisatrHoeypQG60FjoJYfDRMZwNhnu07Wzax1KLuXSPxdS35ZPbliclpDFjbkgCq3bac
	NH0bLWleoR7pixlQXqjzYo+zouxuAgbaA2dtY51lXcdNS7ghqHzURh78CZy8DsbZTdtMrYmYCf5
	XgjRuGiwc1w2cXWoDq9Gf4vI1D3i4MwafX3nyB1CdU9H1M0j/MZbpN2wl0Z6XOJNsDLrFyvv/SJ
	frkhEd7Vu0p/M+CRvLAY4Tg==
X-Received: by 2002:a05:622a:453:b0:536:3519:de44 with SMTP id d75a77b69052e-5363519e697mr17804641cf.4.1792152363641;
        Fri, 16 Oct 2026 05:06:03 -0700 (PDT)
X-Received: by 2002:a05:622a:453:b0:536:3519:de44 with SMTP id d75a77b69052e-5363519e697mr17803941cf.4.1792152363002;
        Fri, 16 Oct 2026 05:06:03 -0700 (PDT)
Received: from [192.168.226.26] ([178.235.128.140])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-c40913c615esm64286366b.42.2026.10.16.05.06.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 16 Oct 2026 05:06:01 -0700 (PDT)
Message-ID: <80314471-1913-4dbd-b91d-7b25bf4b3b14@oss.qualcomm.com>
Date: Fri, 16 Oct 2026 14:05:59 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH RFC v2 4/4] phy: qcom-mipi-csi2: Add C-PHY support for
 X1E80100
To: Nihal Kumar Gupta <nihal.gupta@oss.qualcomm.com>, geocausa@gmail.com,
        Bryan O'Donoghue <bod@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        David Heidelberg <david@ixit.cz>
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Loic Poulain <loic.poulain@oss.qualcomm.com>,
        Vikram Sharma <vikram.sharma@oss.qualcomm.com>,
        Suresh Vankadara <svankada@qti.qualcomm.com>, tjose@qti.qualcomm.com,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>, linux-phy@lists.infradead.org,
        linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20261016-x1e-cphy-rfc-v2-0-377654253193@gmail.com>
 <20261016-x1e-cphy-rfc-v2-4-377654253193@gmail.com>
 <010f8a27-e058-4c8b-8681-24df30c29853@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <010f8a27-e058-4c8b-8681-24df30c29853@oss.qualcomm.com>
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDE2MDA0OCBTYWx0ZWRfXyV4ouKs1RbyP
 FS/UvWdpPeWatJ1cI7+D+amOYy7Y61wn2QG0UldWw0c4NmvRo9ARjeJlBFtBP1AsiMvYUuKmq2G
 JHeZhz+19HTQvWq7UWjc4EuYduZdSlo=
X-Proofpoint-ORIG-GUID: Ni-QJRYPAv7Yj_zNOsTmInBUHEB5x2nK
X-Authority-Analysis: v=2.4 cv=GJadgeNK c=1 sm=1 tr=0 ts=6ad2132c cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=PRfkaYvzSr8QmIIGAkY2Sg==:17
 a=IkcTkHD0fZMA:10 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yOCtJkima9RkubShWh1s:22
 a=Nw1dH8mji9hsHjV9vaMA:9 a=QEXdDO2ut3YA:10 a=dawVfQjAaf238kedN5IG:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDE2MDA0OCBTYWx0ZWRfXzlQNvnW9T6c7
 Kd9D87Ra+Hj6ImIZ//NkZfoypof6ZO47gYWmxbFIYHnVZUsJuVnv9AkPjzTB8VGBgUMrxJPKdkw
 bP18mgZk+2I9p2x8e2O2QmPg45d9B6HYVZc3LpJXLdb8l5vGhSfShvFNMOnphuXcagJCmULLhdU
 IjXyJyMGz8P2W0SljsqeI7Xq50JlJtloCKc4+6QOGPOFsj2DV8c/rCN8ZRrXrr55de/VZtq3RV7
 ajyGdHYeG9qu3pTL6yjaAx/tnQxkqBtFupQS6HMuoaECThW+kUSR1oFsTraGfjB1TI+pFfnHxSu
 HYfJC3RcrirntD4YkqP1Jjb1hDL+ClsXbWxAbytZ7DW+wvsc45Vf63j/6eqiBC53Co6pe9qd0bz
 j45RQomxPwK62rT1BDNEg0UQsXi5oA/hzqegSvBs0P9ndFpEX6XBEpKFc2Xbyg6F2jF3FvD5ZY9
 N4eop4vxT25b2Z/eNjA==
X-Proofpoint-GUID: Ni-QJRYPAv7Yj_zNOsTmInBUHEB5x2nK
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-10-16_01,2026-10-14_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 impostorscore=0 spamscore=0 malwarescore=0 lowpriorityscore=0
 bulkscore=0 priorityscore=1501 phishscore=0 adultscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2610080000 definitions=main-2610160048
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261016_130609_020320_B2B46229 
X-CRM114-Status: GOOD (  13.39  )
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

On 10/16/26 1:35 PM, Nihal Kumar Gupta wrote:
> 
> 
> On 16-10-2026 16:27, George Neacsu via B4 Relay wrote:
>> +	{.reg_addr = 0x0a54, .reg_data = 0x00, .param_type = CSIPHY_DEFAULT_PARAMS},
>> +	{.reg_addr = 0x0a40, .reg_data = 0x00, .param_type = CSIPHY_DEFAULT_PARAMS},
>> +	{.reg_addr = 0x0a60, .reg_data = 0xa8, .param_type = CSIPHY_DEFAULT_PARAMS},
>> +	{.reg_addr = 0x0a84, .reg_data = 0x00, .param_type = CSIPHY_DEFAULT_PARAMS},
>> +	{.reg_addr = 0x0a90, .reg_data = 0x02, .param_type = CSIPHY_DEFAULT_PARAMS},
>> +
>> +	/* csiphy_reset_exit_reg_2_1_2, 3PH */
>> +	{.reg_addr = 0x1000, .reg_data = 0x0e, .delay_us = 3048,
>> +	 .param_type = CSIPHY_DEFAULT_PARAMS},
>> +};
>> +
> I checked the register settings and they look good to me.
> 
> Can we write the delay value in hex as well, to keep the table
> formatting consistent.

I don't think delay in hex makes sense to a human reader

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
