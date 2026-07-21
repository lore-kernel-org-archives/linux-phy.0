Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 092E7C4452D
	for <linux-phy@archiver.kernel.org>; Tue, 21 Jul 2026 22:53:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6J4eqXHnxY6cklf2w20ZC7ClrVu9Vp+T8TTjoiNyTt8=; b=g/1wH47WNrd4qS
	GyrMz50Fr+6/wh/eZNVV43/5yPHLgyVr7e/wlC3lp+CW4Xme/DgXT96GNmsyUMm2os+8o2oRyLR4d
	Wnw3ZPtb6/3D4MXGHiulkTr6qIvVx57V7jJg1o6OMJA7jOwtpKfyb0MmcS+EmbHzf5+YGzoRKHAqM
	u4xWzFbVwuky7+9J/kBvpLxuXknfUP74cC8fMGxEu7J5NBgLoTppUpkb63MG4K5gRp03w4jhzEVh5
	lfLIRLam/9O/L5HaVQczpe1UmGCGxnd4zNz5aBhwrgOk24Bt1gKiDNr2T+Wm/PF3dLbfimGeCYi4n
	etro/B6W7pAhWiAZZTsw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wmJLT-0000000AXI3-2RgQ;
	Tue, 21 Jul 2026 22:53:51 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wmJLR-0000000AXHg-2RF6
	for linux-phy@lists.infradead.org;
	Tue, 21 Jul 2026 22:53:50 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 66LMZIuq2934421
	for <linux-phy@lists.infradead.org>; Tue, 21 Jul 2026 22:53:48 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=Mo5JOHCdyujbRKvDz9XZRfjh
	a+Z4tfZA1s4uWqbxDko=; b=TmJh7sO0lGVISpcBmTjicWZWg9ZypS6ZdD1NdWp4
	SOAh9jqcjoakNevBm8c7yCGxLXw4l4W0Cj2lMCJ/cNRu7/4VZLPkioMgEiumfi8U
	PWiYHq3z8/hzIdGmqJlhml8pzd39f8Ey2xvWJ4W4MaLREMhPcbILncq4t/+xR2v6
	i3Oc7SrqjhN0h2WOWU/4aCLMHe+GIQz8NG2wEYoI5Re3VwEUzG56VDajAyduSyGj
	e0kOCLTiiFOKcfHEO426YySHMt6xyCZgbwNPC8YkMvAKtXsp0cmKbmWig0Dt5dJY
	XfOQjxC3+pkHMk/wKpP9cCSV4s6PuSWwkhtKPafy5+YOyg==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4fj9aeajtp-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 21 Jul 2026 22:53:48 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-51c0408254aso122307741cf.0
        for <linux-phy@lists.infradead.org>; Tue, 21 Jul 2026 15:53:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1784674428; x=1785279228; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=Mo5JOHCdyujbRKvDz9XZRfjha+Z4tfZA1s4uWqbxDko=;
        b=MLIlAGZUwO1XVxk8hYQU0fLBW+L9sljQt++mKWBC7YoQGqnKlvbetF7aPEdtG7yRTU
         V+tNnRVp92rIRvtR1lzjJEo5jCnqxZ4i/sKA5oARH/qUZsUdJlF19GBx6HJFwYDqrQGS
         b9Hw8uL1zSesljxDfdqDsjbyQYUVZBE7PAqyyNd2KlQkMPJXUNFMq4RlpLBEf5aq1MZD
         ZGHxccBIYWxrvdiCwV5+ne1mWRLBFRJIjPSTo7FMtQwJvrscULoJOhbVNsHPnhFOugwD
         mF9RwZGRN7Lz0UsRmOan458f5bTEJq1f/zyvKFbihLp5GK7jv4bOM6XevBLs22D92lV3
         nF1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784674428; x=1785279228;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=Mo5JOHCdyujbRKvDz9XZRfjha+Z4tfZA1s4uWqbxDko=;
        b=fDTOtK2nk4T0ZKMmpI02OMbSjbY8K8QcsR4wLSEmpcTM4vwXrljr/1BrHm+tYZ6RMw
         hfcBlF+7BIQFa3ddJT61wb6/Sbs56wZ2Yc3s17UmjpdBEHADz3BGgZrAV0iJ9hfexU+s
         twfz8cYp2nZUVe+SolvPCHWK5sIP90EkpzjmDs+plFivBlsRtZrLb0L0GmUDmDGDoMPq
         7s4NICp3rhAGwCdulpN3YUezRsSzjuf4zUlT/Q7/B3UIdUYPsUGqVVHGIZ4wVzBFQ1Qk
         p+ReKvB03MttLALpLe2VbXeCuQbaz6TSYnwjr6tX103r/wcSCd4zaRx51BHtEz26MDWO
         5KDQ==
X-Forwarded-Encrypted: i=1; AHgh+Rqqz4CHa9dUl2Ou2gWja06xuLXp6PddbldCueyXbZ+ifTuRH/CA2YvAK+7JJlO1iDTmItJoanFbv8k=@lists.infradead.org
X-Gm-Message-State: AOJu0Yz/j9MKR3NmylLraFiTTGdraEGnz71mc0cVx7iGgncgCevpcWr/
	fKnvn3bDPLgapD8XutrGYZ3U6FOd5d5jcM90bAiU8gf6uQ35pkQILT/iFyaRtnzF8aEfigAXque
	6MF7+3lCxqXicilarrcH1AastE+K7Ph+Fl6MeQNakcd2zC1M9aR3Gk1C63uc5QECXgMCh
X-Gm-Gg: AR+sD13fYSty4KmIQLUh4flB0hYZbnx87ZpRCaFknRUTLsvAExKBfH7Ohwxl9QCc5Gb
	a/2dsrW9Trsa55ISW7n4k5gxl3Bf8/AjpZnPPcj6U04EE48UbW3w7VsQQkFoNyqCshTg7NcHzgh
	6plEo91miYOD7AyW+Vac+lg6Krqh0zFytrSy7kQ9qHgckZQt7ylWtak1DJI1Z5dIs760wujUjX3
	XNPtedPMtTU3M6zLxf7EYhFvufJEPfv3VAlsOs464VS9dMNBOILu1Bhfy5664wcoCIuqSo39mkX
	Mo5N0ua4HkQCrEY3mYFaoZeRvf9stQcezrzJcfU/uBwREfKe/NXZqQdsPfG8wwqzMzHS/gCX5Tx
	TTVRXlysCu8hctgue8l/S5MLCEuCY23L+KFaUvP8NIgyujKBRK1ajMPNe3auoDrv3g2Iwacz3BR
	av3JoDqUEy6AnhJQ==
X-Received: by 2002:a05:622a:408c:b0:527:7122:3f2f with SMTP id d75a77b69052e-527a8b482bbmr18157431cf.31.1784674427817;
        Tue, 21 Jul 2026 15:53:47 -0700 (PDT)
X-Received: by 2002:a05:622a:408c:b0:527:7122:3f2f with SMTP id d75a77b69052e-527a8b482bbmr18157221cf.31.1784674427399;
        Tue, 21 Jul 2026 15:53:47 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5b2a9b9b006sm151389e87.23.2026.07.21.15.53.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 21 Jul 2026 15:53:44 -0700 (PDT)
Date: Wed, 22 Jul 2026 01:53:43 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Esteban Urrutia <esteuwu@proton.me>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, phone-devel@vger.kernel.org
Subject: Re: [PATCH v2 3/3] phy: qcom: qmp-pcie: Add support for SM8475
 Gen3x1 PCIe0 port
Message-ID: <ipdehqlooopyymdvh4ngojgams5r4yut2ojlchf6e63xvnt4tk@7xmndg3cishf>
References: <20260715-sm8475-bup-pcie-v2-0-48bd91a19abf@proton.me>
 <20260715-sm8475-bup-pcie-v2-3-48bd91a19abf@proton.me>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260715-sm8475-bup-pcie-v2-3-48bd91a19abf@proton.me>
X-Proofpoint-ORIG-GUID: _kzMGQgW0Ac0PXP784Nba3bMxBlcKJOG
X-Proofpoint-Spam-Info: AW1haW4tMjYwNzIxMDIzNiBTYWx0ZWRfX95eXdAq0vlzr
 YHTku+UD+4kD0QF2IeaBnjyjCEAKDTOnDLd7lEfzCtZBIozTJUL7yQYS+wzuNpENC8pfGEZmgeF
 DNJuchbQFhASUDAjh2dOIVLFY3guZ48=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzIxMDIzNiBTYWx0ZWRfX24MYvwU1ufx4
 zbeGYv36DXVrGmVxyMGgCQaxHYVWtzUVZrrMHWXRw6eTSIYN2ArennixOJhMUphSu3+oavOZYuS
 R3U5+R1lY77s8+evNLZfZyzu93Vl4So+O/2eML+pvEHKXCikra1M4gm84Qxgt/J1RbocFyBXY+I
 vXolabPbaGU8FzAHPNpCTB/u+L9j9cL7sNmZopObGmqOQXFA0qs44rLrkrOzVssfbWWvv+Em1Th
 F7A7ja+1Ibb81KuXMUoEo5Y62iQ6pf2J5PM3inWg82Tcn2tLngTMWKPYBltylp4uA7cOQLx67lR
 QH6bnoSIA4EVPtxG1z5HdtPyJlYCG5N4IAdRX7UxPF1Q12xBQWNk1xqN74oWhRLQgFDc41ULOlB
 I9T/AJh8DSmZmyP4CXZgqZYrYxucDZZqZg8QiYw+WMGtI7OehKxQfbI/vTs8W81Z1+bgq4gqwoF
 +7VmPBcsIdfwkOdQscA==
X-Proofpoint-GUID: _kzMGQgW0Ac0PXP784Nba3bMxBlcKJOG
X-Authority-Analysis: v=2.4 cv=Cr6PtH4D c=1 sm=1 tr=0 ts=6a5ff87c cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=RAioF0-LDSMA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=yx91gb_oNiZeI1HMLzn7:22 a=EUspDBNiAAAA:8
 a=pBVXu9Zvf4h7QG-lshEA:9 a=CjuIK1q_8ugA:10 a=dawVfQjAaf238kedN5IG:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-07-21_04,2026-07-21_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 malwarescore=0 adultscore=0 impostorscore=0
 lowpriorityscore=0 spamscore=0 phishscore=0 clxscore=1015 suspectscore=0
 bulkscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2606150000
 definitions=main-2607210236
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260721_155349_771300_6CCC7EFD 
X-CRM114-Status: GOOD (  13.94  )
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

On Wed, Jul 15, 2026 at 02:37:48AM -0400, Esteban Urrutia wrote:
> This gets the port working. Tested with WCN6856 WLAN capabilities.
> Serdes, RX and PCS Misc tables had to be added, while TX and PCS tables
> were reused from SM8550, and PCS Lane1 was reused from SAR2130P.
> 
> Signed-off-by: Esteban Urrutia <esteuwu@proton.me>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 108 +++++++++++++++++++++++++++++++
>  1 file changed, 108 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
