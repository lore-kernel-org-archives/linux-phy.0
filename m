Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 70A6CCCD199
	for <linux-phy@archiver.kernel.org>; Fri, 17 Oct 2025 20:55:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=at2xl29zUsbuK+cepdcrA6IW6skGuAE4LJkuZ06Lo7U=; b=emG/JpsboEresR
	HdZD86mnSpbJkTBOLShc/VClDyoG9DRK/lC3XLGltmjaJJwY5Qt5VuHiWOM1W6ThpLRsQjP+KdDJT
	kUcQX37m3LI2rzQXkoNrbWF9KqyliW5/1+GLCr8E9rsK1nrdcjt+04NWLk02V6rXWh06BTQZ15slb
	0L2MJ6G5S8XsxnvWtbqtSq3/oBI5fRUyjkQv1LSRwcLTFptlDSugKPKlR4GcA5504Uzr/D+DzN64v
	WPRdiJ87G4IYBQL83r+NdHuw4FydVPCfSZMYdnSRHzklb05g0ntr4aDwtDlob36r1c6q0rAIPzM+i
	c7WLCbgfxd6+rP+On47Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v9rUC-000000090Mc-3vXo;
	Fri, 17 Oct 2025 20:55:40 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v9rUB-000000090MH-084C
	for linux-phy@lists.infradead.org;
	Fri, 17 Oct 2025 20:55:40 +0000
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59HJGYC1003686
	for <linux-phy@lists.infradead.org>; Fri, 17 Oct 2025 20:55:37 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=tBUBJv7YgdO5vYO/psTXoU3h
	cD8pEsOW1XkvnkBW7ww=; b=jHTgols0xXkD6A0AgZxtB+JghLy7pFoXfy/jSFFI
	XWl1v3vCgq6f6Xz0a/RulCIyirvF2UxjtB1ehociEHTu6hp2g5KgJxmmrss7pgp1
	ag2yz1fTFfIoZB9sFFKiVNN4KxOMDz3aiCnp/kDjZ+wy+cPOkeZGrPCWFMic7fzR
	3m0cufGnl1uz4I+WsOU351f4/SVzsN3Z/M1UfRU+RUFkcLaxn9Vf4/Ry4WxNvej+
	sZSKb97Vsf9YVulhZMYtMavWbW3xsuXLg/bo8o1i5DtmRoKBN9QCWLxze5woMbh0
	4eK69us1fMv9mNYPGe3PGyuIO1eH394YUVpJnyBvHZ6Tng==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49rw1aswm9-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 17 Oct 2025 20:55:37 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-88e7bfe5ba7so867288485a.2
        for <linux-phy@lists.infradead.org>; Fri, 17 Oct 2025 13:55:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760734536; x=1761339336;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=tBUBJv7YgdO5vYO/psTXoU3hcD8pEsOW1XkvnkBW7ww=;
        b=MvT07cBBVi7ku1NBzIwOeKf1GegyUU2sKLTZwRCZXftj9HOh0RluElQPFDVwNbCjZA
         +AIAQHl20u2XMI4gx7Ar1FalKteRODW2SbNahItUpiIq6jFp/3eHVASxbm0g6CZFNQue
         0eu63lmv8PwmBdAjZ9rSqOuTrbOBoPT7Z6hYS9e2hMg3OYM7LG1KW9we/xAZB8JVDlJE
         /iaPmxSn7SpJs2I4QlmhmRVFivdX4x4rfTnYGj691i6rlsMyz0WsWXrKaXuxpMFXNUNg
         wny9kHejVtkCyzpXKh8zmOhrCZmYTqpXM3qs5rORruWyfqeY17imITJx8BLvXRR4Oeq8
         Rd7A==
X-Forwarded-Encrypted: i=1; AJvYcCWOKFnKzT5Bi4uIvCTKqx/mDNFdQiVjmmCQ2IswHPw3A7iGlZ74v/2Qe7Le5Qk2CHQe8Kutppj/mn8=@lists.infradead.org
X-Gm-Message-State: AOJu0YycNHKkLj2m061rM6QU9Cv9uDKcgwF8JQCFXPqC82uxO1LWs1BC
	blo2eBVJlwrjdgLHVdmS/lLhRCQJC55bcUfCtazjKcQwt2zDJpRQ5avh+WbgU4lFgz/s7oqM1u4
	LxjZ/DD/UweDC2c2MCiwg3whp+5VDA3Y/FjYJ7LpPo5m9A8csCoVrQIxsHPfIUq4G0GJL
X-Gm-Gg: ASbGncv8QVC22AzBIJM3Y+q+Ffgo6BQj8GRdbkpiPzQ1AUry+8tBeqjTJSgddEEwu5E
	4RdBCpxQJ8YIo8IkBS0p/MUa1P9pH7AO4mrsSpj8Zef2rpKZ++s+mRsx9OYZkrmXAwkP5Bn2cXP
	S4QS0fDYKM3jg94VEa2jiPE/zHX6nM9ySeJ/iv/hOQJv+CjIvV+qRaVoMbyKDJVD/xFRey7nyDu
	EFPEEih9llEo7Ho7n2a2wTdmWfrcKoG5URfiQwLfthXV15AMLqoH5MfGd7uMK2FTEPt8f9YQ3jV
	EY+xHu4RvkwhbqtCQqI5374D6vvGIzXs2QDBQXhDvsnqnpqogPJRDCu2w4zOcHD3mktmZsepwZd
	DBmU9ma25c4t9aZFWuwBilxb4zaNQ3BW73iRwgdwUzYENhlgRJse5A6jvz5JfAtVPrXi8C23Smy
	rKQTpRXGIIVgU=
X-Received: by 2002:ac8:5f91:0:b0:4e8:91bb:2636 with SMTP id d75a77b69052e-4e89d3712cfmr69650091cf.52.1760734536016;
        Fri, 17 Oct 2025 13:55:36 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHWIYr4LhZulc9IbG/CVqJdzUA3qxE7l19KYbIdEcG//A7H2l6zjHkzk29nEiAzo0m1WKreKg==
X-Received: by 2002:ac8:5f91:0:b0:4e8:91bb:2636 with SMTP id d75a77b69052e-4e89d3712cfmr69649761cf.52.1760734535547;
        Fri, 17 Oct 2025 13:55:35 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-377a966e379sm1750451fa.55.2025.10.17.13.55.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 17 Oct 2025 13:55:34 -0700 (PDT)
Date: Fri, 17 Oct 2025 23:55:31 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH] phy: qcom: qmp-combo: Add polarity inversion support for
 SAR2130P
Message-ID: <ywovlyojskgv7hbkr5tjtmsiwkf7tmgzw4puy7zb54kvmt3mzw@zq5etee6pjwf>
References: <20251017203438.744197-1-krishna.kurapati@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20251017203438.744197-1-krishna.kurapati@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=K88v3iWI c=1 sm=1 tr=0 ts=68f2ad49 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8
 a=gZxxQWLh4rD7iasbu2EA:9 a=CjuIK1q_8ugA:10 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-GUID: GXXyKzA1fA2xCmEsej685HTu0d0aJiSR
X-Proofpoint-ORIG-GUID: GXXyKzA1fA2xCmEsej685HTu0d0aJiSR
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDEzMDAzNSBTYWx0ZWRfX195dCVTn/+DI
 sPw2wzwHnKKCpfNms/UeOES5rNxZEbvGPIwpn8WiYkcZ20THpst0kB/mCr3xqidlkm3cZJ0Oudn
 DgtYBIKh/uqdtW8GTLJmPDTeRr0rm7v8RVrgcpQko7wnUMzIprSG1T8MCScNqCdDTUqQ5GdYD/F
 uPYDq0rQWA7DygVfTyeKW2su2vShCRRahZlkkYwc+k8MWw+t11w2ls25/RUxoBGMuGmKRuk6R9T
 Kbw+17s7ZCYoRsZ14N7aGqTWXkRrq/+zansCdEQywZkTMUeSzjTxnTjzyScFPFK4CuTV7g26h0s
 8862qMTho8rY4dR391bAHXyIZU+7Zp33gjTnK69bWW4YAFg/86KZzHP1K69iT+4OG4IJ1NCmxyf
 WvsZ5N0WnT0SIc0wIdkFC5f4VoWoyQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-17_07,2025-10-13_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 spamscore=0 impostorscore=0 priorityscore=1501 phishscore=0
 adultscore=0 clxscore=1015 bulkscore=0 suspectscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510130035
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251017_135539_076049_8DD18550 
X-CRM114-Status: GOOD (  15.39  )
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

On Sat, Oct 18, 2025 at 02:04:38AM +0530, Krishna Kurapati wrote:
> On SAR2130P QXR Platform, the CC Lines are inverted and the lane
> programming is to be done reverse compared to other targets.
> 
> As per the HW specifics, Bit-2 of TYPEC_CTRL register indicates
> port select polarity. This bit is to be set for SAR2130P.
> 
> Signed-off-by: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 7 +++++++
>  1 file changed, 7 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>

I wasn't able to test USB 3 while I had the device, but this seems to be
correct.

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
