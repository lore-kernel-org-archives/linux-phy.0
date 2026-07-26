Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A55C2C531C9
	for <linux-phy@archiver.kernel.org>; Sun, 26 Jul 2026 20:36:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CR9fvSn+dc/KGyFDpc9Q4sa8piyl0zoLjWcoqdF21Tk=; b=CoHmbdwsfXWgHN
	oAwG7c3BnWvD8Uo/baW8W+jBV/aAecutbdwYt2lvoMogFapg0/q/X6y9UBJmByLbtIk+0QNT9ZYoq
	dsYC9ZhUIMiMBINcG6HOUZUNVsD9VHLWNCcMAO5YdNJEp3dayMpL6BAgOtCiwNf8gMIU9dXg1B3zE
	kp/WFYcF2M9Bmz/1jPelTBRXqjJX+HfJYA8mA2S3f/JuQyWW4AK5TNP1b1wL2wvgsK/027w3NiSh8
	qR/VMTYavz9tApaNmIAE2rbA8CtgieeI6F1Y0avYO9NyLYwpc+//t6qKI7lvqrHPic0DSX5+Ta3a3
	lILlnLU6TyGfZEcw3e6g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wo5aG-00000001cQZ-0SNd;
	Sun, 26 Jul 2026 20:36:28 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wo5aD-00000001cPV-0e1Q
	for linux-phy@lists.infradead.org;
	Sun, 26 Jul 2026 20:36:26 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 66QJusVm1712080
	for <linux-phy@lists.infradead.org>; Sun, 26 Jul 2026 20:36:24 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=SqkFlTAif5bgt5ylvluZMohK
	o/S/Ct196CfCN2FqXGM=; b=R9ptAdUxCT12Agi9X7rhDpAzfW15zvVnvGLyC3dG
	rO9wfllvlgyoUm82DAU2xUdM9q4xOy9mjkeZBw1IRgWj9ouHq7WbcEE2oE5qbPE4
	6KoQNY6cXiFWsHDhphiJzB8lwIJnqlKWUg29/MPttIxxm/RyGYS+XNiNqMb9U/1J
	Ce2O26fnvAgpXjp9sCn6UBnXgDu7v/QIl+7dvaz07hOmRNGRj+HdAryouiwOi4Lc
	pMHA60BKR2oMimNwsxoudByvlzfrDYhpuC2/yq4Nhhh9ed9A/8j+puvi3DHWED3a
	SDIUC6Sp1PucNgZlisLEfg99bv3TNN463cCd6VAmgDjeXA==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4fmmqybpyy-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Sun, 26 Jul 2026 20:36:23 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-51c01ff996dso20196011cf.2
        for <linux-phy@lists.infradead.org>; Sun, 26 Jul 2026 13:36:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1785098183; x=1785702983; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=SqkFlTAif5bgt5ylvluZMohKo/S/Ct196CfCN2FqXGM=;
        b=ND56XFebVW2zSmh7je5bE+preNvOFGQ2PamZQMt+G/4hcEfLqZyGuxHwdIRQ31jQms
         8ARNgoC8TUkQf8dkKSjOS6zYITiszNnYMdK6uOLyP3KGpxPUHeZ7EhYH3aPbR0Qvv04R
         4P3obAp2Ugb9bkCstQengfAlLjUOlvA8eoG5PhK6T5J2tWc5yLtoG6RsyTxws3B8SJDB
         nVe1Z+0HLYDPirOfM8hCZx3WOLkVMyYtbB06a+hDzDXaMvcRRkUB3r4MqgOmHz2ldMzZ
         dCWlNwwnrDTXBRBcKy14iY1VzQwyuG3Gvr94DBLtieSHcggeKn9E3Q1Tem3hwyPbBfLh
         Ztkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1785098183; x=1785702983;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=SqkFlTAif5bgt5ylvluZMohKo/S/Ct196CfCN2FqXGM=;
        b=LEnEXFSSHf/M0jP5IG0AMSRWnmXQ9kxJ9xdPSLgfgcV4jyhEYFg+irmdnjr3kmLdEm
         vkv+tPjnGEol1WJUiC2sfaFP/k7s7sloLv+T0AsdjtFvedsAs1izShkWWS/NO2QSBgjZ
         7gEN7GrwuxZc0NmW/eVAUgOqKNqiA0rQ3zUMMpRvrPxbyZ3YjuYY+oz44Fw3hm+BQGvC
         POIobNaSDTGEO7XtfECXEQZM9gAqrV3m6nn2WAX/WeZvGL1/8ILMNmIik/vnKzJ0onNb
         ZTiZGDx5WUGav4dYi6m3qnB4ykv6WgFafqjw2XOwTvMJ40CFTvdhL8I+lgxQOufoKTjS
         2Ujg==
X-Forwarded-Encrypted: i=1; AHgh+RoiNJ5ZgC9709Hj6F9bdLJVUDa0JCUArqw9lANRoTfwtLjHRnBUYZpO36fUdlcTZwEgK+UQaoRl3oM=@lists.infradead.org
X-Gm-Message-State: AOJu0YxFPmqn2vC/pPS5xNanmBgy4MIk7zorb6OOkKxyQiCZSzCEpMYt
	aeIRXpVaD3RLVECz9z/GgF3bOZRWAQ0gCeHdZnZT50rzCwOJy2qbDIiWPJfFlAch/c76ZVyGxUI
	4vy29sLoxUAIhsohBAoUykQItpT9pwIftKUCxd3kjUywACT+VEkjY/WqLLIV/TFZm6O28
X-Gm-Gg: AR+sD10EvMvJ51cW6H1ADARnJP7ngjyVsIF5s9e4aTdmvu3VDyc13aVwJRPjYopmD6Z
	UQQTbcAKhLRLu9HokNCrnAh61OvGxoYH1kEvbPK8UG1M5SqfEISEF3zfcMqZ7irvjv5m7e6nXC9
	xlVRAiY/DV8ZqsCyftAYW0rn510VBNDvXoDyKAofOuF+6cj9fCgI8XKszNiAESK3BpSPdw3BQx+
	/gQkrz+G1gWnIzNWV4WDBt6oLGzKA9oljPtCxrkekp9Cycda9qXHO2h58kY+mpXNOzwyYjI1vHA
	WRT+lFeoRP2FM+kg643Q8RMMC0+pKrsb5/I6afMoEe6nYBd7rSUrFoBCaFqQMi2TRQ3AX4wb8n+
	zldK0lOrl1a4Lp3h8gQyox1EO5P8pG1uqtIX7ro3NLamPSWqUl4rpJJmMLFTqZVIhxBf0WV/R68
	rDuZZKrg8BR4akHg==
X-Received: by 2002:a05:622a:1aa0:b0:51c:25da:903f with SMTP id d75a77b69052e-529a8712686mr69277021cf.59.1785098183168;
        Sun, 26 Jul 2026 13:36:23 -0700 (PDT)
X-Received: by 2002:a05:622a:1aa0:b0:51c:25da:903f with SMTP id d75a77b69052e-529a8712686mr69276851cf.59.1785098182768;
        Sun, 26 Jul 2026 13:36:22 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-39f221873c9sm9690911fa.11.2026.07.26.13.36.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 26 Jul 2026 13:36:20 -0700 (PDT)
Date: Sun, 26 Jul 2026 23:36:17 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Thinh Nguyen <Thinh.Nguyen@synopsys.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-usb@vger.kernel.org
Subject: Re: [PATCH v5 2/5] include: linux: phy: Add phy attribute "type" and
 associated helpers
Message-ID: <5zgabwyhxu65hacpr53cwktwe4npu2ndzgvt3uulja5lejnmi4@bj4uxp5wlb7l>
References: <20260723-eusb2-int-handling-v5-v5-0-f32ea6c1a318@oss.qualcomm.com>
 <20260723-eusb2-int-handling-v5-v5-2-f32ea6c1a318@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260723-eusb2-int-handling-v5-v5-2-f32ea6c1a318@oss.qualcomm.com>
X-Proofpoint-ORIG-GUID: iQLjN0ZVHe0YKkK6V3ZPvQ4IBASCX3oi
X-Authority-Analysis: v=2.4 cv=drbrzVg4 c=1 sm=1 tr=0 ts=6a666fc7 cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=RAioF0-LDSMA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=3WHJM1ZQz_JShphwDgj5:22 a=EUspDBNiAAAA:8
 a=6jJYoImRxmWk4JxjxYMA:9 a=CjuIK1q_8ugA:10 a=dawVfQjAaf238kedN5IG:22
X-Proofpoint-GUID: iQLjN0ZVHe0YKkK6V3ZPvQ4IBASCX3oi
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzI2MDIwOSBTYWx0ZWRfX2Uof5183b2SF
 LiQwbK3/RijwvAsczjT8Dq/3KMMIL+Bm772GE188bTv+JENffx6WQi368ncQW5JRkZy9MmBgRa3
 JUiCp9lLPM98VdBlu7FMiCDnnTnQ+KL2NBYatmqZdtfZFu8BB53kUiSJzfoy2kOrFYMPisqjhkK
 jRq1UwYChOtlFCSBuMZo/wm7Wm+Gkgva2TbVr/pCJge5f2JOE6b4ewCv00avNv41KsIwwf4l76i
 9z2eEuXcTMJPeQgFfj6IyvP/pG4NQxn7AKq0x3x9uwk2GJXkwRCd/QEKDEabPhGotskjycdc3HZ
 udQHEK0R6B0NlOrzx2ilAMxeZxbdkn8FaJORtYUPnT9YSXbEh/T9sqiYIpQoWoP76x02M/6qNfU
 Fu+5kvG0CPMeJ7WUf5ducGz0Iq8IaPh+cnNhxy20VS9mZsaa52FrQCBcaEbKW/CHggv0IZqV3WI
 QRj4Ep7ZUe5RB2ux3nA==
X-Proofpoint-Spam-Info: AW1haW4tMjYwNzI2MDIwOSBTYWx0ZWRfX+xAwvQlENW//
 lTeg2RyxfrEQy2yaIHA07ponb8jbkwdUwssavGu72EZip2y6Wi09ngDw3RvpwDllBO6Z65gtC74
 EvFMTqL00xDF4AEzacCRgflaYO8YrZ8=
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-07-26_06,2026-07-24_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 lowpriorityscore=0 impostorscore=0 malwarescore=0
 clxscore=1015 phishscore=0 spamscore=0 suspectscore=0 adultscore=0
 bulkscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2606150000
 definitions=main-2607260209
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260726_133625_320205_2ACCFE75 
X-CRM114-Status: GOOD (  17.73  )
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

On Thu, Jul 23, 2026 at 04:09:05PM +0530, Krishna Kurapati wrote:
> In cases like USB High-speed phys which can be either USB2 or EUSB2, it is
> required to know the type of phy (rather than the operating mode).

Why?

> Add
> support to cache the PHY_TYPE and add the following helpers:
> 
> - phy_set_type() for the phy drivers (like m31_eusb2 or snps-eusb2) to
> declare what type of PHY they are (in this case PHY_TYPE_EUSB2).

PHY type is usually coveyed through the PHY cells in DT. Why do you need
to set it from the driver?

> 
> - phy_get_type() for the consumers (like USB controllers) to query the
> type of phy connected to them.
> 
> Signed-off-by: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
> ---
>  include/linux/phy/phy.h | 27 +++++++++++++++++++++++++++
>  1 file changed, 27 insertions(+)
> 

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
