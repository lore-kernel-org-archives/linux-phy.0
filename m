Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8828ECAC5B0
	for <linux-phy@archiver.kernel.org>; Thu, 25 Sep 2025 23:03:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Jyppx3MIYB3FtIWFhpx0BM9I8oiuGX+e8MRWke9Dm40=; b=aSihVIRfCszQRr
	Gaa4gjrih7rWWAPyZRhct5M3CawU+7O/tqn5kSwLkxMKScIVEEs5lU/21vIB/Y4AfHfXyZbpVHnKo
	NQ8FlSQtJLJuZbHB9iurovoMbGsEpl8Q1Qri/e25v4AnwtRVi27ITEe6azmLgtmOzdZueEX1jky+u
	nBDyJXiZmCTe3JQS34M72Qr0dMtcg7LUWsD33YLINn+FAuPguhPJPRxSreWlj8f2ap2cQe71ABjCu
	GSUKDZqz5iy7jE+afdPgtfhJMtR6VSYXiOZcewBylo2AncHkwEg8cR/ag0FufswKvuup9ypvc76Or
	FYHc2sftPmjBygGeLTQg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v1uzq-0000000DolV-0kxZ;
	Thu, 25 Sep 2025 23:03:30 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v1uzn-0000000DojD-09wn
	for linux-phy@lists.infradead.org;
	Thu, 25 Sep 2025 23:03:28 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58PIPeeI011377
	for <linux-phy@lists.infradead.org>; Thu, 25 Sep 2025 23:03:26 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	WfzKhTLo4L9EzNBCoQA/Ic/EtRob2BTZ1wUdjds434Q=; b=aGbwZ7eQaktzZUWg
	TtevFKgN97y9vQBzP88J7XVt/wMNzOmew8z97fNrK1c5Kh2V3DhUBDjDi1g2VtPR
	8S1/M8Mz4j/Aubuz5cnHf7znpl2VPnxpIto7IyLMvnz8L+zZKHFm3Bf552x1nkme
	QE5/wnQACNH4COg6qdHBk1bv+A2TT7IilVu+WTNsIxRaoJiatdxhwx+iRP/ynafO
	XY3VlPlhJNPTTILXWRujMJOaTM9uiv7PoSzfa/69EeO8IxIazJwE+bIxOj9jvcWE
	10mhHmmmvp47afkRDWXwUtV7QjOQNxbQXd0/4P6XN+0bE+hciNoUtr7n1ovtHVt/
	EVSN3g==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49db0q0mmt-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 25 Sep 2025 23:03:26 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-26985173d8eso28607915ad.1
        for <linux-phy@lists.infradead.org>; Thu, 25 Sep 2025 16:03:26 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758841405; x=1759446205;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=WfzKhTLo4L9EzNBCoQA/Ic/EtRob2BTZ1wUdjds434Q=;
        b=TQk39t6zIv8xLbbEopW1Zex9xh68iP/52HucV3uM5UeHfF2nHiN+ybIDA39qwDgXgd
         EIxASBzyxH2GCUw5pUtfrwTVj4v6zYX5ivv+HOu31Rh/vH2z0iMzxZC+nlAliJm/Mh87
         xAzljwvBCORWKXDZtMdN+RrtcX+/3ipYc63g+HCteCf8kUTt4sS0euu34NDIv0QnP2T+
         wwkQjkrYxI1tzYD4N5NxLrtUVGOBk4CIy53LwevioexULyV7pQxhd/qEjc1QKzhal67O
         I2ClIPHjuPEf+Xkjp1HUMfhnwxoFM+/2Bp23CSVyz2p1plJG4MLo4NUxN2fIR7XcPQVE
         OfFg==
X-Forwarded-Encrypted: i=1; AJvYcCVZByql/9vOBCM8Qf+KxrR7h2TxR85EZOORV1yCOK908W9EFMWhe0I360HJMVG3c8hXvR532mf9Sq0=@lists.infradead.org
X-Gm-Message-State: AOJu0YwNhdhSbrAlkDburu+Y1yx9CaWjTmP3eypdvYkr8TDHyWmtcI8b
	vDdoXTHXw5B7Bix8UXgqYmeUmbfGs0HADnqfzgac86s5augVq8tzFk74i2li/aF6lDb6nB1WwrE
	Nec3y/rzCRo9544dFSkYXMhuvkMEl/E5fhofeoj04BcJVwRGlk1stXBIve52pN6s6u/38
X-Gm-Gg: ASbGncv93lko9ff2cXH/z2uncL0S+a2tpXifFWYogFhLzBlPT17aFT9rQaGoUVMZrw4
	ZAB3PugJOV6RpWdXcmR1QHLbkOLQxevqJc7wAB5GCGrzecswNaPQRMvG4qGy40NnBLiFGsOSOvA
	usQWhfTs4adSkqNza3X+yhW7Lqc/ZZNsvbgQ8h81pEye11+2Q4nD2tUseWZFibkuOf7wQxgGWRc
	ruUNgt3e21k5crMM6YbV8pftRR/839g9kwNDweknQerRWBKjn+KxeKsb43IJz0aPU/YkGZ//d9C
	nCrh0BuSlosRoEmCVQUutvEF8tM/xIggYGXLR0MKM2YmTeDYWQEb4TtVJk/AmW3vO6daofm3EYf
	YHNj7ECc=
X-Received: by 2002:a17:903:2ac7:b0:24b:270e:56c7 with SMTP id d9443c01a7336-27ed49c771emr61707185ad.7.1758841405492;
        Thu, 25 Sep 2025 16:03:25 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGHOJqmjzO+AnKfT1eW43G4SzpCox+5vXEEMV2sxZr+rbaIyUa/gbfX30AzcLSCvAvNAzb4yA==
X-Received: by 2002:a17:903:2ac7:b0:24b:270e:56c7 with SMTP id d9443c01a7336-27ed49c771emr61706895ad.7.1758841405047;
        Thu, 25 Sep 2025 16:03:25 -0700 (PDT)
Received: from [10.73.53.199] (pat_11.qualcomm.com. [192.35.156.11])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-27ed6ad1d45sm35260175ad.141.2025.09.25.16.03.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 25 Sep 2025 16:03:24 -0700 (PDT)
Message-ID: <297ee4ab-73f3-60d5-8e16-8830135603f1@oss.qualcomm.com>
Date: Thu, 25 Sep 2025 16:03:22 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Subject: Re: [PATCH v3 07/10] phy: qualcomm: qmp-combo: Update QMP PHY with
 Glymur settings
Content-Language: en-US
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>, krzk+dt@kernel.org,
        conor+dt@kernel.org, dmitry.baryshkov@oss.qualcomm.com,
        kishon@kernel.org, vkoul@kernel.org, gregkh@linuxfoundation.org,
        robh@kernel.org
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-usb@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20250925022850.4133013-1-wesley.cheng@oss.qualcomm.com>
 <20250925022850.4133013-8-wesley.cheng@oss.qualcomm.com>
 <bc866f21-9b41-43dc-b450-59a25d547b88@oss.qualcomm.com>
From: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
In-Reply-To: <bc866f21-9b41-43dc-b450-59a25d547b88@oss.qualcomm.com>
X-Proofpoint-ORIG-GUID: iFuEFGnVV42rd0D31BHGEBpAfIvsyESi
X-Proofpoint-GUID: iFuEFGnVV42rd0D31BHGEBpAfIvsyESi
X-Authority-Analysis: v=2.4 cv=aZhsXBot c=1 sm=1 tr=0 ts=68d5ca3e cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=ZdW6uxA9NKXbfdqeeS2OGA==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=R8zOBIxM2Q8kPqU31PkA:9
 a=QEXdDO2ut3YA:10 a=uG9DUKGECoFWVXl0Dc02:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTI1MDE3MSBTYWx0ZWRfX4hudGb8rariP
 LIUogdXVeR9pUob8X1tYBsgYwq4zbyHbvR5NcvBREkZT5HvHvK8L8PKqRBt2twRnV9+e776USkb
 LmqGcm+xUf4NZ6cqtHEzV8EL+tDePNDTapL8PyxRahgXQjnftJOKFK2dj/rqnLilEqxWhnScTmn
 lYeUV4LAhz/mb62c8rFP0fsleQLSEGYiyWcB46M1htfIfMkfS1hm2mj06M7LFsu0UVeXw98BZLx
 eW+WLfaukVGXLdxSYB4JnNliWEgEHoz8da54Heo2URRiNkxLaO7T1zce94OeYygWIBN63DoKbnS
 tEJliDJrbZjoB5r2hjM2boz5xBSOF6nRV1yAFOG9BCmOuJ8lZFq70vERzHRPaP3V/TG7djyrXWy
 s3XUpMH9+lPHNxs+X5x4zq8hJGXdMQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-25_02,2025-09-25_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 priorityscore=1501 suspectscore=0 malwarescore=0 adultscore=0
 clxscore=1015 impostorscore=0 bulkscore=0 lowpriorityscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2509150000 definitions=main-2509250171
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250925_160327_084140_4C488A51 
X-CRM114-Status: GOOD (  15.68  )
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



On 9/25/2025 3:43 AM, Konrad Dybcio wrote:
> On 9/25/25 4:28 AM, Wesley Cheng wrote:
>> For SuperSpeed USB to work properly, there is a set of HW settings that
>> need to be programmed into the USB blocks within the QMP PHY.  Ensure that
>> these settings follow the latest settings mentioned in the HW programming
>> guide.  The QMP USB PHY on Glymur is a USB43 based PHY that will have some
>> new ways to define certain registers, such as the replacement of TXA/RXA
>> and TXB/RXB register sets.  This was replaced with the LALB register set.
> 
> [...]
> 
>> +	/* override hardware control for reset of qmp phy */
>> +	if (pcs_aon && cfg->regs[QPHY_AON_TOGGLE_ENABLE])
>> +		qphy_clrbits(pcs_aon, cfg->regs[QPHY_AON_TOGGLE_ENABLE], 0x1);
> 
> Clearing this field is going to prevent the PHY from ever going offline
> 
> The HPG says this should only be necessary for keeping the phy active
> during MX retention (and the listed usecases are USB4 wakeup clock
> generation via a respective _USB4 register and/or USB3 autonomous mode
> operation), both of which are currently unsupported.
> 
> Are you sure it's necessary / desired?
> 

Hi Konrad,

At least on the PHY HSR, its mentioned as required, and if I remember 
correctly, if this wasn't done, I'd see QMP PHY init timeout.

Thanks
Wesley Cheng

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
