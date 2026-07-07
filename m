Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 21270C43458
	for <linux-phy@archiver.kernel.org>; Tue,  7 Jul 2026 08:44:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/6XexQ6B3k1R6o04pD9S/CHM15jqb4llcItBFRNBFR4=; b=VWTNWcJkS3rJ7t
	rDrN3bRJ1iK5O+Z5rUK6C5hQkqxD38K2FPtZLVVVJHBmJPtL9zuAR4nQXo7dnrQCJ3xitw3ST1UFM
	E82clyLlL68iAJO3+p481DA9Sld3Kistp5KF1pdStZGoF/T6Qi05drS38Fla18T95dZAgslO2V9hs
	atw8DJRR/pJayOo6T1r6t0kwW5Qh6TKs6c+ZuxqmWXEwNYas2GQFZlNQt9jssj0nBYUxFKS4zgPKG
	fJcaanJzitcskcrkMFgW7Dl6d7LVysn/qJ9QQFx+6TNjMIrBzwrHDQBg7yUA6ENkLdLvN1a2159uL
	JUwjb56L5k17Q7IEA+xg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wh1PR-0000000EVcd-3fQR;
	Tue, 07 Jul 2026 08:44:05 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wh1PP-0000000EVcI-1Kja
	for linux-phy@lists.infradead.org;
	Tue, 07 Jul 2026 08:44:04 +0000
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6678EEtr3203466
	for <linux-phy@lists.infradead.org>; Tue, 7 Jul 2026 08:44:02 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	YXUXWqaoASgKGldEh6YTJBIIvyXgmngAzgY5m49GYxI=; b=fwLXoNlvsEbFTZkm
	RvnyGzub7C8Wyt0NN5UD1GXo4GNhsmel+G0p9Ixb0XTbHEKvM4p5qaYeqBIcknPA
	L91RJUpBHvgIoNyQQ5cVqNk5ZHfqj6mTFzYcvWYrh9PyPXHYcufY+u0en+EysBcL
	BJAQYqWEbdXMlvKM3I4gYNFUC8fU6Y3qReza5mC3qFiivBI7AheDMKhVvbheynpZ
	RENZ9WYIMTxihU0RuMqOgaRiF4BJ9D43X002hL1sZd8Pe+IF9Mis6NxOhEC5kQYq
	iV623yjxiQSC7F63SGzlMip0sJGM0sG+WUuwBcDkro3o3yjZ1nMlokwfsqfztC8Z
	3Fevrg==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4f8v9a8hww-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 07 Jul 2026 08:44:01 +0000 (GMT)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-8ebb599e528so10935156d6.1
        for <linux-phy@lists.infradead.org>; Tue, 07 Jul 2026 01:44:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1783413841; x=1784018641; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=YXUXWqaoASgKGldEh6YTJBIIvyXgmngAzgY5m49GYxI=;
        b=W8dLFRpaZhXOD0lnsI2qZQYtYuAGvyjrqVGG//6m6NgMlRtJ8tskgcf5my1PWBl33R
         +uIk5QisRjPxrbq4ogV0hTOqKs3+L+rRcreZE19uATl6eBaUq3T0kHciXU0s04LzU8x/
         vG6cfxbBHAA/pWROdBSrwPGQ08ELAh6qUPyeih3zUnYe0ZfIMTt+OVSphZiCK8CG3jzK
         qp4Zv3tUmaUIEDj7KGcr3X4erdGpT6w+NC+davXemav+JrpBsM/AOuZVD71a6b4S3awv
         EpGXTq3w4zF7T7sFnAFduakC2214/7pbEaXF3LcrRx0dGv4TJdNMBZ7G/PfF3BnhUUtq
         tWog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783413841; x=1784018641;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=YXUXWqaoASgKGldEh6YTJBIIvyXgmngAzgY5m49GYxI=;
        b=f/cUoTIEO0m2VExxprn9qgXpuLEGTKYHU4uUpFTnIg7wf7z75k4wWV8iq/XzGQaQHt
         r7U/rmg/g2FT+vh+gLm3k3l6GHpZgU4QB0osxExKFAp5MIkU7zMKn0W78qSMlmTISGo/
         3VWxypasJHbmGNYHvrtrYr8zDfuGhh8UMz6hVGCxlPWKdVOaNSsZj/OAZKOHVwxkFZ25
         xf8hEMelin3WjpRSBv/bPOfUb/iaDuYcH+yZZL5kQliG7g6VTGDgtGgOUt41a4wfZsSx
         k69PhxwBtOE0dUSh3ixsdI23a7wDiv3TtJQ65dFVbhm/zSo/rBpTwNUHgA63KOLj/2wc
         XqCQ==
X-Forwarded-Encrypted: i=1; AHgh+RpIXlQi31HVZNIU82UF8IiBR3VjMyL4Z6EZMNMAmMD36FqwzyZ5ohhUP3vCIg4MQ/HFL9q1cY/fzrA=@lists.infradead.org
X-Gm-Message-State: AOJu0Ywclz45/8QJscOt4065eabpXErwVvyAOfR+217KEQcqy00b8XaF
	fyexpLM6+n98LNQsKjkLA67Sz7BTTG1BrtTG7KC8NkCvRPMn5XBRo/Pc9hNo2me3NLEX976TItF
	9AKORqftMMvvCX4dr3FQBbp/IkhipGReJUpLQ6tKgvWm+rWLqe7I6dnLoYF9eC6vDkaIE
X-Gm-Gg: AfdE7cn4jg2NSvCYMqlRF8y9AxzxXj+4NMnlE2hzyB4LmhwQuctSzD3So/E/Ay9KWmM
	K2RRqLw4O1DWCehzF8pffgge8YZVq9fBry3fxMgrnVrtkXFk/MFvJPu8DEKU3PDAgRqnlRmlGHJ
	ptg4DxIaII+V46C1u8i3gDkarYPffAua2rU4COKTSaxjQ6lStHfhYBZpo8FZsuQnRSO+W0Q3Bcy
	99wKwHqRvtzZ+egkUqBFY9pvFXA4E8tU6HTMAaL8+X1JQnFrinW0aAXKPEdIyBh6sWb8zUObxOq
	oOZ5LZ78EGJiS5/CF8LeJJiNs/8dCIvoEV/t8XYJX4lZRYagJRHXk5nEDgn9TpNEfYSejd1jR7U
	Cmk631qIG/rtyJBdzAl0Jw2Y7veXxaJIxUSA=
X-Received: by 2002:ad4:5c82:0:b0:8f2:fba:7f36 with SMTP id 6a1803df08f44-8f749b6b74dmr138770176d6.4.1783413840953;
        Tue, 07 Jul 2026 01:44:00 -0700 (PDT)
X-Received: by 2002:ad4:5c82:0:b0:8f2:fba:7f36 with SMTP id 6a1803df08f44-8f749b6b74dmr138770026d6.4.1783413840554;
        Tue, 07 Jul 2026 01:44:00 -0700 (PDT)
Received: from [192.168.120.193] ([178.235.128.140])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-69a19cd89b1sm5363449a12.1.2026.07.07.01.43.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 07 Jul 2026 01:43:59 -0700 (PDT)
Message-ID: <ad7edaf4-caf5-4655-b489-de4b8bee6426@oss.qualcomm.com>
Date: Tue, 7 Jul 2026 10:43:57 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 0/3] phy: qcom-qusb2: sort out register layouts
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Kathiravan T <quic_kathirav@quicinc.com>,
        Baruch Siach <baruch@tkos.co.il>, Dmitry Baryshkov <lumag@kernel.org>,
        Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>,
        Manu Gautam <mgautam@codeaurora.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org, stable@vger.kernel.org
References: <20260706-fix-qusb2-v2-0-8d9cd73b1db7@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260706-fix-qusb2-v2-0-8d9cd73b1db7@oss.qualcomm.com>
X-Proofpoint-GUID: VHHY03gRue8VqOy_bNWUBEKHb9uwEUn4
X-Proofpoint-ORIG-GUID: VHHY03gRue8VqOy_bNWUBEKHb9uwEUn4
X-Proofpoint-Spam-Info: AW1haW4tMjYwNzA3MDA4NCBTYWx0ZWRfX+hfxmFPAHjid
 dNerWoqzxMFWFKJczqUOc2FdNsNzygnU+X7nmvv6Wg9kaWutd1+KtXIFHBW1MLFP01MfUjpx9tH
 IrgXrmTOog9mKIN77jTQ80xw9KgjcYU=
X-Authority-Analysis: v=2.4 cv=b9yCJNGx c=1 sm=1 tr=0 ts=6a4cbc51 cx=c_pps
 a=UgVkIMxJMSkC9lv97toC5g==:117 a=PRfkaYvzSr8QmIIGAkY2Sg==:17
 a=IkcTkHD0fZMA:10 a=RAioF0-LDSMA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=ZpdpYltYx_vBUK5n70dp:22
 a=EUspDBNiAAAA:8 a=BeWwBsZv0zths8DhLt8A:9 a=QEXdDO2ut3YA:10
 a=1HOtulTD9v-eNWfpl4qZ:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzA3MDA4NCBTYWx0ZWRfX5TvP9tQm51Q3
 XS7t3XB8FzOdOg5lnEOjNi3KKt1M7kRem+VJMP4J+4636bdBuIoQESunhhjCS9wSeBJmXOuG1ng
 OPPRvRkiVEBKTVkY/dQNK1YYQhQOGfMAhBStmEMBxfcavN1zORXcIvqSOO5gAu7sTbkdidFUh28
 4uq4+LaJzDg3JsJtWxxGLnnSwZHBzCynwwCp/xbhA5WFejuwU+7qDr2SA9jujAopI+DjLL5G5hY
 1xf7pF8imgNkdY6pOqMcEkjMmnyLeJl+cbo0LTBCrUi493NNbxXJ0TaGvNP/bL0QlWoQXqDqsxd
 hOl+uJ5uM3yv/3uaivMwKkyYsAJkhzSzLQaitQaaD6vtqGh7gf9vzNmaV/e27GOVFZr8xCvOgIw
 ODEDt8JIZVTP0HHqzws+RVpzaAfPtseGvjJ/OHwVuWZ0W55mM2kEf16vMjCLgPVk/3vamo0fD/+
 6400G23MsMBe5qisJYw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-07-07_02,2026-07-06_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 suspectscore=0 priorityscore=1501 adultscore=0 malwarescore=0
 bulkscore=0 spamscore=0 lowpriorityscore=0 phishscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2607070084
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260707_014403_478539_5A2224AD 
X-CRM114-Status: GOOD (  12.79  )
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

On 7/6/26 3:53 PM, Dmitry Baryshkov wrote:
> IPQ6018 and MSM8996 use the same register layout, however for historical
> reasons ipq6018_regs_layout ended up correctly definig TEST1 register at
> 0x98 (because platforms using that layout didn't use autoresume), while
> msm8996_regs_layout used TEST_CTRL offset (0xb8) for the TEST1 layout
> entry. Fix handling of the autoresume register and definitions of those
> regs layouts.
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> ---
> Changes in v2:
> - Reworked the series to enable autoresume on Talos
> - Moved autoresume description to the regs layout, it is a property of
>   the regs rather than a platform.

I think the new approach is sloppier

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
