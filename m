Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 083D6C88E64
	for <linux-phy@archiver.kernel.org>; Sun, 13 Sep 2026 23:31:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=m3XBphPfOa0hoixvGna1dG1ZvCueDmoTIMm9JV/1tK4=; b=NAL1iC402rHUP2
	NHsFx2NOr4MxHn1asMg06mZGPatbwnrxLU9RIXXWyMEMiVCvtW/9gQkBhb75ocHn3pjL0hhpJXTRs
	7Ogr3/3pK6PSl0Hj14jDKLxk/5jbC6NcR1dHrAgaqsRidx/YuD/j17GehAvYIv+fY5mFybxtbvxnl
	KLdX+7qEsreFfh72kRFoZzrS+5YOjNIiciqVx9TZYg0ol7UBO6kY+cSi00WZ4ydTr4cHsuu/TM1V8
	79LPHJSuwc91LUOT2itjiK5KS6KHOfJnocLIixfTrw13QFrDfeyRx1JGApCkAAxPAmnyvLCU6WP6Z
	mNh5Vmer73LcqR4dhtww==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x5tfA-000000026ES-2mfX;
	Sun, 13 Sep 2026 23:31:08 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x5tf8-000000026E2-2oYw
	for linux-phy@lists.infradead.org;
	Sun, 13 Sep 2026 23:31:07 +0000
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 68DK02og2527793
	for <linux-phy@lists.infradead.org>; Sun, 13 Sep 2026 23:31:05 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=DNWkY13/F7vQQirOcn7RyLrj
	8L/7ZC6/5Neaz+9VVak=; b=h6Z0H9HcHEhQBaja6fkvXBbrNNPS9rFg+FpgaM6/
	faehEqp0/cj9WrrcglZi+FVs6s3GYk0m6/+uh1ySJ07HvMB9MEqfit0uNbrdX2Hj
	FbpF6MJp6HX2y24ZL5YMGg3eCdleotfk3u/QpjwLSqfKthfQG5Cc5a4V00a/APr5
	xFe7nQLUoPu6uX+UH21axp829CT3l3M5Jgs4LFdDd5wDqRSc4ozYOz4qxaAplHAr
	EPGPTpEnRSk2ynvKstsuPuhFxntWtXu+P+89BLO1YYZfaijKFL5XD1Mt02aOHfbJ
	6usUxLdxxWYJaRBX9IvzbRjiuNZplDAoZ/CLJbOPe5xw8w==
Received: from mail-vk1-f197.google.com (mail-vk1-f197.google.com [209.85.221.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4gmy9dcas8-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Sun, 13 Sep 2026 23:31:05 +0000 (GMT)
Received: by mail-vk1-f197.google.com with SMTP id 71dfb90a1353d-5c6725e7891so1221799e0c.0
        for <linux-phy@lists.infradead.org>; Sun, 13 Sep 2026 16:31:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1789342264; x=1789947064; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=DNWkY13/F7vQQirOcn7RyLrj8L/7ZC6/5Neaz+9VVak=;
        b=BBn78ks3tqA+wu6P50xY8g+IfXx8MYoisbanKdFw2aOW4ia0jCYjNXqjbWLCGiPPZL
         utomw4fTjW6i3Sij8hQd6Fq0Co2jKZGBxmUWYGtuS2TiDGsVkUrqEKd8w+jC+PKeA7rw
         UU7552bksjJBs8k8VqCywLR1i0QBOHeOhcDLgL8CSh3Io8GjrVJF5T+JBRLlL/96F9J6
         t96pAXmODZniBp+hFhfhIKtBWyKKc8gW+uSyT6bk0a63XHlVvywh2uDCYcEvXhGsovZw
         4yoJV+WPDhGX9J+XPHVneAGlLSo01z/6vEUhkAg++hZ9K7lohXLhKdS3Psj0s+GU8N7H
         tcIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1789342264; x=1789947064;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=DNWkY13/F7vQQirOcn7RyLrj8L/7ZC6/5Neaz+9VVak=;
        b=CnO/RG37oNio52ARDwxPibFP1TXZDNhcef9nOdRZz4nAP0W2K14zRKnIeeUP8oKkNY
         ISParJNDahX1v08KJvpmj50zlfhdQXALeHtgd9M2YvtWybNJDT7MTrjS7xiLBrGfHBIO
         WiLEDftj4zLqkgVsdA4DqrofXJAcaWW7cNNanpctXXQRNGnm5QrIRvwR7tHccUXHfpIs
         2QvqLOg4YsTqRuK6Fev3QVnuVNUC4oRte49sKZocJSMXspUgCyWqWaXFjLlno39OQWIF
         pgfro2xC8z0QgERkAqN01MpLAIwXjENiEEfGPmhv34vHIzXOVgOF6WOHefHxMuoqNeer
         AjFQ==
X-Forwarded-Encrypted: i=1; AKwUvBxHM/i35VwtiMBzBjBQ+XA3wpSuKVDFywucVW1lJRITYTb6T7XRQGYTBDxfSpiKRiJyQKJ4TPQ9qiw=@lists.infradead.org
X-Gm-Message-State: AFuF++m4v6Brie1yxoKh5jogOusCCveyJtqrd1xYNgc2TshgOBQ/j+B4
	53mHlJpwyzawpI6QXXgicFTfS+ZhAwh/owRZMHKajIUl/xD9uIRy+z/Yi3Vlu/iCEKnaVcYUh+S
	WTHUa55jhq0zdRxbBi3jOCMpj6k9YGRXgSqb95AaEVF0KDgQk8znbxpfsgHzdlNbzQLK9
X-Gm-Gg: AYBFou1reR8gkNkj+lLkq01qgB2BTLPenKkRqHhTYH0g04hlcIbDj/QTc2Pjx8SZAUh
	3PbkRvGO78pknBirTu/bn4PzRcHnO1WflMVNB7WNuluUo6WCdBPdENK3UJjdcVk88W/RyF0nFaH
	sw1nXNP8hCFwrP1ywNPSKViqIFu17Z9bsMaTo5rafx1eBbiHNgRYzO5E0oTX7YajBpclj9Spzox
	gFbjImQLXF6/WJcemXSllIQfGSyBq/iwHxFKu1J1A7lPVk1h8rZyvmqppvfcJK7I9dVzE5Zb5+I
	WJ7ElU/hy62qwyIQp+4ecialdBBHSAj+oOogDD8mqLzFD2fswZAr1AkljaBrSHx8kt6+fEmmpu9
	zQBNE7DNc8OkoErtc4v3YxKf89+xsOmSiZa3I2RPccEUMu53LplpowTkOMKJPheDBRtDoDcRYV4
	ntI5lumdvm4o/a
X-Received: by 2002:a05:6102:32cd:b0:79a:47f7:6cfb with SMTP id ada2fe7eead31-79b5c700894mr1557137.12.1789342264421;
        Sun, 13 Sep 2026 16:31:04 -0700 (PDT)
X-Received: by 2002:a05:6102:32cd:b0:79a:47f7:6cfb with SMTP id ada2fe7eead31-79b5c700894mr1537137.12.1789342263937;
        Sun, 13 Sep 2026 16:31:03 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5b8a0456f85sm2019892e87.29.2026.09.13.16.31.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 13 Sep 2026 16:31:01 -0700 (PDT)
Date: Mon, 14 Sep 2026 02:30:59 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Nabige Aala <nabige.aala@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jesszhan0024@gmail.com>, Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Kuogee Hsieh <quic_khsieh@quicinc.com>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org,
        Ritesh Kumar <ritesh.kumar@oss.qualcomm.com>,
        Mahadevan P <mahadevan.p@oss.qualcomm.com>
Subject: Re: [PATCH 02/17] dt-bindings: display/msm: dp-controller: Document
 Nord DP
Message-ID: <pxrdizcozxstimw6qortyrhyqdeicgdir5stjqxridexmeehes@wytomwupuxnq>
References: <20260911-nord-drv-dt-v1-0-e25c073cf1b6@oss.qualcomm.com>
 <20260911-nord-drv-dt-v1-2-e25c073cf1b6@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260911-nord-drv-dt-v1-2-e25c073cf1b6@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwOTEzMDMzNyBTYWx0ZWRfXx9oU08a05DTL
 WQAlAaTrKsDUQVFAoopne4G87RNptPEWdMNgPAC4Imml01Ag9Lcke59mAi1F+6BNM6qP/fDiiSe
 VHW5a7nO+HFTUN/Ix4m1+HqJRtVr+pp6WLlcvWkgdAHkdu5dvDj59mDi8AkT2i4CBVMYJ8+qaqE
 lO3zK+kmPNf6zuOuHzSbgh6/CXiJFLihw+aj6OuapCBprMyB7Oax1LvHwB0/Hoo+rwsNSKLL83H
 ELD6c+y16lnVWRrAducWBjeIkAlt7GVavVKD/YfBsF3wmxPYuiePSO9vU6lyooZPIicE7NCaujz
 Tdnjq7D84+TC1+Es2z4Jqk5I8X65ZmwgRzcvwBaOxzxRBzEc1T/tZA22gSjhMSGHjmNbxEE60GE
 InshC2rWFC+Ge8I+ANkuSnIlMnut3JmpbNeC/hv6m4/zsLjVvkxdUfmGO1hVtecxH7Y1Hk2MRn6
 Q9KAxkefRLCTNqcnswQ==
X-Proofpoint-Spam-Info: AW1haW4tMjYwOTEzMDMzNyBTYWx0ZWRfXzBwCGoNR3Q+V
 dPG1X8x1vu1sMS2yuQzpXW84FZYDwX8uh07A65wbarohwqGQxzZUH8GB2anv9nOX1cvKuQsKS7Z
 41VBZyQUUTUCbhpbgJc/WCUErjLrF6U=
X-Proofpoint-GUID: EFo2FMFhWIkoLPUML1HrRgVANw9UL-1q
X-Authority-Analysis: v=2.4 cv=OeUNnRTY c=1 sm=1 tr=0 ts=6aa73239 cx=c_pps
 a=JIY1xp/sjQ9K5JH4t62bdg==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=VdqzKS8jKosA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=ZpdpYltYx_vBUK5n70dp:22 a=EUspDBNiAAAA:8
 a=07SeQkCZaLl9qT1boBYA:9 a=CjuIK1q_8ugA:10 a=tNoRWFLymzeba-QzToBc:22
X-Proofpoint-ORIG-GUID: EFo2FMFhWIkoLPUML1HrRgVANw9UL-1q
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-09-13_07,2026-09-11_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 malwarescore=0 phishscore=0 bulkscore=0 spamscore=0
 priorityscore=1501 suspectscore=0 impostorscore=0 adultscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2609040000 definitions=main-2609130337
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260913_163106_848322_1FB5F601 
X-CRM114-Status: GOOD (  18.57  )
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

On Fri, Sep 11, 2026 at 09:06:33PM +0530, Nabige Aala wrote:
> From: Mahadevan P <mahadevan.p@oss.qualcomm.com>
> 
> Add the compatible for the DisplayPort controller found on the
> Qualcomm Nord SoC.
> 
> Signed-off-by: Mahadevan P <mahadevan.p@oss.qualcomm.com>
> Signed-off-by: Nabige Aala <nabige.aala@oss.qualcomm.com>
> ---
>  Documentation/devicetree/bindings/display/msm/dp-controller.yaml | 1 +
>  1 file changed, 1 insertion(+)

Incomplete bindings. Check the conditions in the second part of the file

> 
> diff --git a/Documentation/devicetree/bindings/display/msm/dp-controller.yaml b/Documentation/devicetree/bindings/display/msm/dp-controller.yaml
> index 094a6383bb77..8d980acb1a16 100644
> --- a/Documentation/devicetree/bindings/display/msm/dp-controller.yaml
> +++ b/Documentation/devicetree/bindings/display/msm/dp-controller.yaml
> @@ -19,6 +19,7 @@ properties:
>      oneOf:
>        - enum:
>            - qcom,glymur-dp
> +          - qcom,nord-dp
>            - qcom,sa8775p-dp
>            - qcom,sc7180-dp
>            - qcom,sc7280-dp
> 
> -- 
> 2.34.1
> 

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
