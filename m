Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BD980CCA471
	for <linux-phy@archiver.kernel.org>; Tue,  7 Oct 2025 01:05:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PUJBy15yAr0SUMI6jC8CEPrIUzzkDQsMQPlRMdndw9A=; b=SwEcrrYaCQAFWn
	7GS7i3uhLghUvZsWI+NBsIUtR1Kq7U78LzdL8oYrge6K3Gifoou7vcCMnFHxxgHynOa1PCKFiiUZu
	Yy8uy2+LToJynlTpDg1MjN6XHJugIrIIK6wTZ4ndnqJcuA+Nbe4s616aEHV1R8alZJJI/HAnsSHkb
	l7sHyekUJWbcHZom9NHPwn39ib+SVArlHxLyi0uATCsBDd2NvvknNL50hRGi1Q79F/L9VXourtdfq
	v9E/3wcZ6Oyxa3rZ3BRPGNFSurH+/LEBAA6SVN6YXBqnwGFz2KD4tM8lSVJPfXPd55Ewzg3YQiWkd
	zZumc5NfQCa1neCHiH6w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v5w8r-000000015uO-2DAd;
	Tue, 07 Oct 2025 01:05:25 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v5w8o-000000015u0-2toZ
	for linux-phy@lists.infradead.org;
	Tue, 07 Oct 2025 01:05:24 +0000
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 596LKhxb017905
	for <linux-phy@lists.infradead.org>; Tue, 7 Oct 2025 01:05:22 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	ahrNSeb0NQWhBk3m/lb45NZJspf2/oAz6SdApzCbmB4=; b=NbRT3MvCpVXIy1/j
	yBsNPUnV+xpirXET0ZtQucBsmSEZN4tVhOuo63z61mDu4kqH+cS6kuXYd/c8LrhW
	wFIOpeowFn+oAGZS/C5hLi1zSd/ZXVWgcVUEyyY+ZoEcxgluOirk5YVimKmYiotb
	sHyoP65AvirMhuAHnD2DZTXNoKUGRW2cuh0IB2K+2F2SIKnwDYpBb72+wawiOhOr
	qhjdUHKuE5m1pbo0vLNzWdoOubSVjh7UkWp3oa/h9UJobxYRfT0mcXlw/mRcHP8T
	+7oSz/p0ss8iyKem9W6AKcW9aFQYSBshVXvFuTZ0kuhqVOvFNko2x13KhtiZtcVw
	SfoPgA==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49mnkprdqv-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 07 Oct 2025 01:05:22 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-28c58e009d1so95536495ad.3
        for <linux-phy@lists.infradead.org>; Mon, 06 Oct 2025 18:05:22 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759799121; x=1760403921;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ahrNSeb0NQWhBk3m/lb45NZJspf2/oAz6SdApzCbmB4=;
        b=phkOa6EOLbvt2PINm1Jl5EjLjcFjKTfuavVxbV/DyzwV1hpTlTUs0CLhwcjtH9rWJJ
         2MNU0hp1zB1TiJrpZEiflrZa2EqJtvv1Ds6DOKMmtmIcM7HdNndZaCDygmAmGiF6UMUA
         kgkC3v6IbKW4orYH1o9g++q/g9oYfMUREso/QhKJSoz08P40X7n4mJF2DF7//sp37bQ+
         swWpieowKZ/3mGB8fCH7zq4/HlmJdsRo1rlsiSlTpnEoVD1tghww4+CX0aA0AID4jb8G
         u3IzfX1ezcHbxjI++1OGq2lL5GIigQ/PP8QcCDCUNdH02ENSc2TpiOHUyCb7slrWCten
         j/Tw==
X-Forwarded-Encrypted: i=1; AJvYcCW/QGwbmVp2u++kaiuTjt3OkpCh2eOdsxEJqEWgEVGbYe6SxiV/B5BHcV0zHG3xnTITOV6VpWFKO1U=@lists.infradead.org
X-Gm-Message-State: AOJu0Yx6FNtT8/GraMu1D3oEuv0e41E2tVKRe0JsFjSEohKykoeMrK9J
	+lNftxQBSAw2COJIxefGDBmpgw8n5IeJCJuytebkxSylzBKPO1ABFo0IOs96GxqSl4ZiLWwEOEG
	19pQchnQS3sZFOJEPZoYvObeA4pqem+DLz+e+SEyxsqJppHU6Tq49Kd/yxhf6WJzC+sy6
X-Gm-Gg: ASbGncvMVMxyAPH4M6eI28IrPy1dW2UCauTctJDvmGApVON5ZDPiX4NynTI7iW/mLmh
	ySnPTsVMobs3Q9aJQ75i8ya2DS1BnvE+LWz16caVGTHA6hux3D/5/546Gma3TMfRXzV5KgfeAYY
	2FmczLdm3x/beGnLSUhzisvsnMB4aPMzn7BeFBaRLcPKk4uCsbAfNnoH37HNL0xMLWH/ifi2iEM
	TUUx75q+VvmlqJy5kW5FqSsRQM1Z4De5TIXwg9/6oV1SPyPcTvpA6X1cIcsqA1G94zpZbb1wbgN
	9DHloaVbw3ovzwC28NwoYa3UDwpAxilVm4LFIGi/zIw4r9nWYy6A/Jkj0Mjlr5g+k/kjXDzwadm
	RmMSDscXc479r
X-Received: by 2002:a17:903:1b46:b0:26a:23c7:68da with SMTP id d9443c01a7336-28e9a5bf107mr191525465ad.25.1759799121209;
        Mon, 06 Oct 2025 18:05:21 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHK5FlqZZWAVLLYWf7xgsddH7C7vi1Z0PSmlxL52MRXH9QOeZfRWq6du/B1w3IP8YVFcHH7cQ==
X-Received: by 2002:a17:903:1b46:b0:26a:23c7:68da with SMTP id d9443c01a7336-28e9a5bf107mr191524955ad.25.1759799120730;
        Mon, 06 Oct 2025 18:05:20 -0700 (PDT)
Received: from [10.73.54.138] (pat_11.qualcomm.com. [192.35.156.11])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b6099af3cf6sm13327205a12.13.2025.10.06.18.05.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 06 Oct 2025 18:05:20 -0700 (PDT)
Message-ID: <6ed9bd6b-37a3-36a8-a347-85429670837f@oss.qualcomm.com>
Date: Mon, 6 Oct 2025 18:05:18 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Subject: Re: [PATCH v5 00/10] Introduce Glymur USB support
To: Krzysztof Kozlowski <krzk@kernel.org>, krzk+dt@kernel.org,
        conor+dt@kernel.org, konrad.dybcio@oss.qualcomm.com,
        dmitry.baryshkov@oss.qualcomm.com, kishon@kernel.org, vkoul@kernel.org,
        gregkh@linuxfoundation.org, robh@kernel.org
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-usb@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20251006222002.2182777-1-wesley.cheng@oss.qualcomm.com>
 <a6690fbc-0b86-4725-99ca-6b4cc477b4ec@kernel.org>
Content-Language: en-US
From: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
In-Reply-To: <a6690fbc-0b86-4725-99ca-6b4cc477b4ec@kernel.org>
X-Proofpoint-GUID: DrdJ2d0g0ldFWBGUeJsc3hWZuQ3BJmDD
X-Proofpoint-ORIG-GUID: DrdJ2d0g0ldFWBGUeJsc3hWZuQ3BJmDD
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDA2MDE2OCBTYWx0ZWRfXzhq7tHHnyEFL
 9x9J3gRVrhk5OkVjIXOETV/7S6Po2e8WTtU2Q+1Y6FPCB+kM6VvvPwdsUfEZtkzvsvO7RlHd68l
 PGm8rEJiP3tdKWhZvA1dNu2UPC9U94OEbFjRAHMuJ52I7NxaYHEs39bcCbLJ7o0xOoNDluRXulm
 lqntO0E/f+IRoYaNI5B/LcZa/PzL0Du65M7ZRx3RlAEmHFAHf6MDXaJKAWdZEnmFfssOpmvCIDg
 qca0f8mh21sR0LkEADH9hD+W+WSZSaTLRxm25sxaI/Hdz50/xlQSOz58WfLLBSjRFJejV1SUDB8
 3FrMYiuMo/lqx+3+U9djLozY4meOjKao6GuUKXtasL33+b6/MphGZ3ZvUPkkuzEQuHV2/CvOK6N
 mF85KadNeW80/msh0IeuBrfFrw5+mg==
X-Authority-Analysis: v=2.4 cv=BuCQAIX5 c=1 sm=1 tr=0 ts=68e46752 cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=ZdW6uxA9NKXbfdqeeS2OGA==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=Zu9LzCyC9gr4H2Ik_2AA:9
 a=QEXdDO2ut3YA:10 a=1OuFwYUASf3TG4hYMiVC:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-06_07,2025-10-06_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 bulkscore=0 adultscore=0 priorityscore=1501 phishscore=0
 lowpriorityscore=0 clxscore=1015 spamscore=0 suspectscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2509150000 definitions=main-2510060168
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251006_180522_744163_1CF404D9 
X-CRM114-Status: GOOD (  11.08  )
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



On 10/6/2025 6:02 PM, Krzysztof Kozlowski wrote:
> On 07/10/2025 07:19, Wesley Cheng wrote:
>> This series enables the PHY level changes that are required to support
>> the type C based controllers and the multiport controller.  The typeC
>> ports utilize a usb43dp based QMP PHY for the SSUSB path, while using
>> the M31 eUSB2 PHY for the HSUSB path.  For the multiport controller,
>> it will utilize two QMP UNI PHYs for the SSUSB path, and two M31 eUSB2
>> PHYs for the HSUSB path.
>>
>> -----
>> Changes in v5:
>> - Moved phy-qcom-qmp-usb43-pcs-v8.h into USB specific QMP driver
>> - Fixed DT bindings for clock properties for QMP combo PHY
>>
> 
> Where are lore links? Why aren't you using b4?
> 

Sorry, I'm confused?  Lore links to what exactly?  There aren't any 
dependencies here, in case you mixed up this series with the DT one.

Thanks
Wesley Cheng

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
