Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7E252CCF9EC
	for <linux-phy@archiver.kernel.org>; Mon, 27 Oct 2025 11:09:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=b5PBBWF1/a0INUzzFBpp4Uj7FZceIs/rLEIJpehe+l0=; b=vGifn8www4ET1s
	yNUnSAHTWpwhYap23/IS0WI8VLX2S94Z3enWzAwgE0jBGKV0l8zqK0SvpZMWn4jEfESIb8EqMr3gF
	ZDlUDEYbaf1OYBZEtR3ryshEw7OPk0SUnKSSI5b5OYJE/1IOpHa1LMUHcbUnLneZglpiAfSPp7MNm
	fEf+4pVsJwAnyjLPXSVTpnLgG15MMOFFi8mr6guutVvdav8qQhYWAGKYAGlmUbzHwnZm3yXdmgKoG
	f4jm/NQwpKoA48ZlIl4eCt9/htZrJHQW1wnbUxhBERdQv4SnBVDd5My2jobxRmjEpQKYKCz5pCIfD
	rmuTRC/wR+hphm7fSohg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDL6e-0000000DjJD-0BfA;
	Mon, 27 Oct 2025 11:09:44 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDL6b-0000000DjIs-1SUh
	for linux-phy@lists.infradead.org;
	Mon, 27 Oct 2025 11:09:43 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 59R8P3sJ1037004
	for <linux-phy@lists.infradead.org>; Mon, 27 Oct 2025 11:09:40 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	1OKEOWHV2jDS8HuQ9OUVVQMf5EtunRWIyG+g+gcxrpY=; b=SpVB3hnWbAeoJ9wZ
	tFc7is5UpBTRfm16Nn1oq21eEX04VqEEkDkbTT3Iyf/r80XbsiykH2sAcPctUP27
	VgrmhKqOTxq8rACgwt29XMf3a4W73v/7RYSNzUrS4lThnQDUm0pS6kHXe77Ge7Yq
	OpidUmIXwu/mlLWrbMWHLy0yXiOqEuG20gD7t5K4Z0dvAlE5Aohb7GoyY7UucXPW
	L3y1f3OF49Qn20vfa7tBw4fofqlCgcCf+OMPggbVnQmCDIcyAkDkmlOerjXetucz
	YNjc1waY60MCzdPjLb/480MCIYB4v5hP2hwqARkeB6yg1d22dehJq8G0gxYhYFrV
	EobTmA==
Received: from mail-pj1-f70.google.com (mail-pj1-f70.google.com [209.85.216.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a0px6m8vj-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 27 Oct 2025 11:09:40 +0000 (GMT)
Received: by mail-pj1-f70.google.com with SMTP id 98e67ed59e1d1-32ee157b9c9so3526587a91.2
        for <linux-phy@lists.infradead.org>; Mon, 27 Oct 2025 04:09:40 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761563379; x=1762168179;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=1OKEOWHV2jDS8HuQ9OUVVQMf5EtunRWIyG+g+gcxrpY=;
        b=TgLNUYPhSCa+spsKTH/05ROok4EVG9JLWbJQgqywHOKF7dZBsJTeHB0Ms6d4vXwE/Y
         QzPYvhTFVsNRg0ae0v8kRNGrUeWKG61V3yISbhDMKtiSx6wMZrqt/IvxZELAOkCye2Uq
         c0bQ+2ceRw+WAyQsc6iD+eaXIBpypOGpGHRtpkS0M54GMveWKYnHepKl252dIUtBRWoI
         x+ZkebVLgqCtq3cEq4ogamgVEbuk6akqpqtL2KMNiKy2PkFQ8fWsdACw/2Gu61g53wYE
         FSuMRrPddXGbaFjC/pTlelaSZNGin/p+YDZEbbQTbH0r9VTNEWr1cor0eqUlJgODkYBJ
         wmTA==
X-Forwarded-Encrypted: i=1; AJvYcCUO3MsC3nEL/HZQY83HdObchbR5Qn1a66fLF/64o82I8qR58J7ws1lu2kXovy9BpwCzQTaYb06vBwc=@lists.infradead.org
X-Gm-Message-State: AOJu0YwjlPNTCzh0htPhXMDq0JZVJg1+lGu4GOIS6QVh4PvJTyf2M43b
	gxZ1McmrwFCpVHlgjF8bbg8Ug/zT4WMyPShcr1XFPSti011fL4zX42VOXp8hRthuiUOcVB0yJos
	EQvC6mKKR6ANVAr/p0VSWuFoF6A7ueqVoLggil7Ua2zJGQvnYgkjr8L/pf35/ctYxZLS1
X-Gm-Gg: ASbGncv7xPU53w9+3A9LdOlKMdSad7/aiBP2h9uagkvDImgUQTkXvpdJJk70HX+wNxG
	q00fxEjTPwiMjAPcAsVNCApwjhKsjMT3R4nR1VsqQbuwTVSn4uvgi3oOMDJh4sDO3Z9w0Jeh91a
	O/Bb8NMPZJdeJ3JZ7T7TiROUGINNG+ndHe+Ty0dhuIycxYUgM4vj16hujb50SNfU+ercDwl4ixi
	5/aQYvNlby5Jubhv/WYL7RCrZw19+o+Tjd+zu9pFQ+R7dH8cmzpdhm/ZyIy2kBfkMfYVLZfUoe5
	qMMY9ihRc7BqSTwZ5/6Om1mVP+fHyfMrv8TRVNu6RGFQK4CMYM/XwZrCFC5LOEB29QbGCfl8aZZ
	CL98mgJHIATfQmCcmfJIcUmRQBZA=
X-Received: by 2002:a17:90b:2686:b0:32e:e18a:3691 with SMTP id 98e67ed59e1d1-33bcf919f1fmr50010245a91.35.1761563379207;
        Mon, 27 Oct 2025 04:09:39 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHkUlEj8/wHcKODqSO/BOEax5NmnIZ4PQBlUjqIzNj2WYmI0MzR8y/WOp5byH5DLvoMAjzatw==
X-Received: by 2002:a17:90b:2686:b0:32e:e18a:3691 with SMTP id 98e67ed59e1d1-33bcf919f1fmr50010210a91.35.1761563378756;
        Mon, 27 Oct 2025 04:09:38 -0700 (PDT)
Received: from [10.218.10.142] ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-33fed7f3aeesm8092563a91.14.2025.10.27.04.09.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 27 Oct 2025 04:09:38 -0700 (PDT)
Message-ID: <1c52e759-15fd-462b-a9fd-ad620da099f5@oss.qualcomm.com>
Date: Mon, 27 Oct 2025 16:39:34 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] phy: qualcomm: m31-eusb2: Add runtime pm ops
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org
References: <20251027062458.1411096-1-prashanth.k@oss.qualcomm.com>
 <daf0055b-7caf-4ace-8a06-071468273a37@oss.qualcomm.com>
Content-Language: en-US
From: Prashanth K <prashanth.k@oss.qualcomm.com>
In-Reply-To: <daf0055b-7caf-4ace-8a06-071468273a37@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDI3MDEwNCBTYWx0ZWRfX/xgKezTs4eFW
 w/Uh1VO3vEbwoiXnQOEE4t8uMIgg0JpN/u2sJk5IQVLcAnI9Dg4NnMxhZrDyMe5i3yMUnMwILEv
 KSO5V6aGuB6/MLu8KInK9vx9U7cxz1CIyTyHz0YXaSHj6UeS91VdkqY1O+YcmJrcIVNGkSZ5d5W
 +FIYZHVjcQUFy6ENm45M8XTvmJ31BQYm1ayRDcr7Y0S5xMdu1QZJ/efT0xVdBT6DrZFa00nEhRe
 ilzr3CKtmC6nupckOj/1i8YGWDku6iHJEJ5LCa1KjBC7Q0qZMrjQBJ9qZZPFgiqpBa8rKdp1HM6
 ypFSmavzaiCchTXxy2H6M7mWByLMQza7AHN0eCT0+uSshwbUAgIMrX7Jkirf3+xVLryn3+qcY9i
 9N6WXmlM2mtQznG7JlGhpLMbZf80UA==
X-Proofpoint-ORIG-GUID: 1qhJblZYvMXUKakKA0-XgCy1zqul_oK8
X-Proofpoint-GUID: 1qhJblZYvMXUKakKA0-XgCy1zqul_oK8
X-Authority-Analysis: v=2.4 cv=WqMm8Nfv c=1 sm=1 tr=0 ts=68ff52f4 cx=c_pps
 a=0uOsjrqzRL749jD1oC5vDA==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=1dOfxVL-wUTtPdxvxmkA:9 a=QEXdDO2ut3YA:10
 a=mQ_c8vxmzFEMiUWkPHU9:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-27_05,2025-10-22_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 priorityscore=1501 impostorscore=0 spamscore=0 phishscore=0
 suspectscore=0 lowpriorityscore=0 malwarescore=0 adultscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510020000 definitions=main-2510270104
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251027_040942_161410_EFC81B23 
X-CRM114-Status: GOOD (  14.97  )
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



On 10/27/2025 1:55 PM, Konrad Dybcio wrote:
> On 10/27/25 7:24 AM, Prashanth K wrote:
>> Add runtime power management operation callbacks for M31 EUSB2 PHY.
>> Enable/disable the clocks based on the runtime suspend/resume calls.
>>
>> Signed-off-by: Prashanth K <prashanth.k@oss.qualcomm.com>
>> ---
> 
> [...]
> 
>>  static int m31eusb2_phy_probe(struct platform_device *pdev)
>>  {
>>  	struct phy_provider *phy_provider;
>> @@ -270,6 +298,17 @@ static int m31eusb2_phy_probe(struct platform_device *pdev)
>>  		return dev_err_probe(dev, PTR_ERR(phy->clk),
>>  				     "failed to get clk\n");
>>  
>> +	dev_set_drvdata(dev, phy);
>> +	pm_runtime_set_active(dev);
>> +	pm_runtime_enable(dev);
>> +
>> +	/*
>> +	 * Prevent runtime pm from being ON by default. Users can enable
>> +	 * it using power/control in sysfs.
>> +	 */
>> +	pm_runtime_forbid(dev);
> 
> This screams "this patch is broken" or "there are bad issues" which
> you did not describe at all.
> 
> Konrad

Hi Konrad, I was followed the same sequence from other phy drivers
containing pm_ops. I assume the runtime_forbid is added to control
runtime pm from userspace.

Regards,
Prashanth K

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
