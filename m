Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EDFE0D232FF
	for <linux-phy@archiver.kernel.org>; Fri,  9 Jan 2026 09:27:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2BLiHXbVtgsd7e+F5mIbceP9jELsY1u+ZL3TT84fjKA=; b=ec4/rMreVMCwQh
	/mlRKiea0TK0U9aS/45E1zznQL4I081STbjmBINQ4AJlPKrqmLEhe4CrwjegYmSpSIBpAfNasvDkN
	vBqVclwR8U9MCUcP4EJICIIwUAZzs3Y95INfQCHYWthmhY1nYxfJJK0gea1cn3DCXRmyltYHUkxNL
	JIo7tceoNeFCmGc19FctXczT4xVPEHPrFoMfAjeX56+cbHnDDpcIY+77h2/R7qwu5ZaSJQNfGXvNv
	PeyAY1DZfKchB7uXhoKgqLeIePKCrJRQ6PQ2i7kV50rJeY6PzuYdquKpZeeMAXKmYeqk1zXCnhOzk
	Bmj6sKnpshvM2MEnxzwA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ve8mR-000000020vG-2RTL;
	Fri, 09 Jan 2026 09:27:39 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ve8mP-000000020uY-0zeR
	for linux-phy@lists.infradead.org;
	Fri, 09 Jan 2026 09:27:38 +0000
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6091qRvf3324799
	for <linux-phy@lists.infradead.org>; Fri, 9 Jan 2026 09:27:36 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=H1ktSs/uwrTpDiJM0t5HeMJ+
	7p16aJIrmxg7OHwwy74=; b=gIiNC1mZ6d4PpBBZn0DBr9Sxeo6LV03u813oyIRN
	CWguTpgzAQ44GC8zTU35W9CYOv734H3zKH5yWwA7LbmqnZ6iwC/0xjlwaHdNCgs8
	auRC+f7jiZehM8B8pIlI2oApB2pDs5t/is6pUg5r5Mycxt81WStkQPT3DJQhy7dI
	9ggmtMdZVLw+bryBMVdJNn2aO4DchAPc45Rp2Un0bXIPP5hcumMymFi4eDsNSx0v
	tDNPBzXSr/XDIeEZSbZtnKFGIkyWy66sZd4xzVmk2zPpQcnpDFC7j3kDJ3vCehwU
	NJW655fZa/niq4r86ZHJWFbjtiXi2PB6ub4buNVzoH+fhQ==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bjrd6h85r-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 09 Jan 2026 09:27:36 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8b17194d321so612250985a.0
        for <linux-phy@lists.infradead.org>; Fri, 09 Jan 2026 01:27:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767950856; x=1768555656; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=H1ktSs/uwrTpDiJM0t5HeMJ+7p16aJIrmxg7OHwwy74=;
        b=gK4f7wfM9giR6Z9TsqoEAhstGjqeLcv5bREh9SDz+Vp/zvEBtezAEkTadQ5WMdaYWA
         zI0n5Flb+vgVT6ZR44kK/lpLFx+e/jXZLP5vaEkcueUWIm8+P/7xdm2kLwBBRnom6K38
         4wHqafZy6HWmAdrXk95fRI5A+Oqz955sc+mBeXsfUa8JXmoDKlIV1JlrsWNEVMH7PkJr
         m5zoZ7fIlrMgW7OaNSYqA1hun2/mMxnz9RdHf4KCVNVYBIX/2IqC2w8rCFfXZmTlFZ9U
         QIZsagCbTGY0XwptJwgPGwFfi03Wpak2ol0FP8Uz8ax9ACemWz0l3c1IkGHA6jSww2uW
         fx0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767950856; x=1768555656;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=H1ktSs/uwrTpDiJM0t5HeMJ+7p16aJIrmxg7OHwwy74=;
        b=Ws+PhufJac660708sikXcIl37dyhZrfHVe8tSpzOuLS0X1OlnJ6yKw1rmm+lJC3WyM
         xm/MavOfMD7EaxudXx7SxUkYEihonwz/JA3u2xDxnWzckbGOmQJTY7SwJIMZ5iQotO6k
         xPdtTnvH78MWQaH11xioT5p7ILzqR0d9rTcXTU+kusDOCMlj6NyIsbWLKUc6X8zQkJuR
         PKumNLYXDLbt2IsUWI+ysXJcKvftGA00TYZxiVs0tZyhWpWJP/AZ4XpUFAOVwImRm8R2
         gKoX1zwqmI+dc8gzxnhZ6sXuj0ebU+vagdei2cPE4GNBrcjXWfo+TL1eMWXM1DXK+gfe
         TYng==
X-Forwarded-Encrypted: i=1; AJvYcCX/yV9dEliOurWfuPHJHmVSFx1wXOedD3YMrWvP6sRKeD++5pA03Bij5UXsSgM48fpm8/5q7ojDRRY=@lists.infradead.org
X-Gm-Message-State: AOJu0YzbW/ZGOrkXGGJjtYurnZ315fYkqOsCRkPG5dDzVN8nzQ4fkmYv
	KE9rcZj5LlCxWERNgY5cBQrS/htEwdE7CS42NPrwpJgZB6118MiBztLTefmTySU3smE+nvYHvQw
	eaOVOaA9EIe5bI9UCRrQlKfCrPgSoyEXF6IahwSOe3mDjF2wzyydq9DHfbUTNnqsTUJ4t
X-Gm-Gg: AY/fxX6ZyPoHYLr5jXig1dVCxAePe1bKULl4rhS3m3XtKC4iSGI29RPYMqNnCi9Hsp+
	0a+M+54qzUSlkKZK2L97IqcHDdoPlCQX/R6r69Zy+GLW6UnwM7qryecsr0/5e4rTx6TNex3yGOB
	qGkD5AqlCdVzZL55/9znSMf1Vl3djClzS0Q+F4RsfmIbb2R7rApawx0W2mV58adkPwVpnZ+v4nb
	IL54srh5aK0y2Tpcj20Fzgr2Cooc73cRb2b7TN/LWsZCsw1U3ICx94HKyPO1/GrC6y8gKWI7WA5
	A3bMMNio7ArE/iDb8aDSODHBx8F3JpEqxQrV/3nYo4Y+nxrEUBYWmZCse0WquMSCBfxj9LibC/n
	hdlVLmUf0J5dk0xXNw1VC
X-Received: by 2002:a05:620a:4041:b0:850:b7ad:c978 with SMTP id af79cd13be357-8c3893cda61mr1141214685a.49.1767950855599;
        Fri, 09 Jan 2026 01:27:35 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGi0EY92vyW6vCCW3AV0ALdS0omt6piQMEeU34h8SSn0JLIoz3rOfb1xZJmZ8E8QOhe4oHmUw==
X-Received: by 2002:a05:620a:4041:b0:850:b7ad:c978 with SMTP id af79cd13be357-8c3893cda61mr1141212785a.49.1767950855045;
        Fri, 09 Jan 2026 01:27:35 -0800 (PST)
Received: from oss.qualcomm.com ([86.121.7.10])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47d7f410c86sm201154705e9.3.2026.01.09.01.27.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 09 Jan 2026 01:27:34 -0800 (PST)
Date: Fri, 9 Jan 2026 11:27:33 +0200
From: Abel Vesa <abel.vesa@oss.qualcomm.com>
To: Yongxing Mou <yongxing.mou@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH] drm/msm/dp: Correct LeMans/Monaco DP phy Swing/Emphasis
 setting
Message-ID: <43zigp42bvt5tgamkhu6bxcegdy7m5dxuyc2dtsw2n5zbrdgzm@nl7anaoogkkd>
References: <20260109-klm_dpphy-v1-1-a6b6abe382de@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260109-klm_dpphy-v1-1-a6b6abe382de@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTA5MDA2NSBTYWx0ZWRfX8r2rOYZBodpN
 iafaADjOjx7evjWZcZWMr3XlyvQO123N9QdnGVlL3zsRIzf3jxVQ8qLOccnTr200+n8H7HVgqTB
 KKtiuI37KTzDXwdT83yWqkUdG0RCe516ode8zAtEqd5Pjq7p/mND+EefhVMl30i2W6EXDaDgh3Q
 uO7YBdklkIEEhwkIUcH3e/X4Eaz+wnbmMcDjNJE5aZtUUMD37Knc4+v2rFvhruq6ZgqjV6eRHIG
 NfmEMKosRZRDf/pK4HoIZwwEiSryAUBjxUjAvLgip5y5KaILi56uyYN/MRrWeoUe7Qbjdy4Da5U
 msWB8q3seJu384DixruI/+UIaCR41mEqTUYIGaHsUQulZoNtrem3qAemIAsfHS7YDf6E6guaNzA
 yMxpG+aFwH1P6NgYawtwYi2LqA8xOVTZ2qzzlie4gKZKJc5PmK3U1yPCF4suxzvgMYCDou+QnVF
 6hSirZToE151nKKGWPQ==
X-Proofpoint-GUID: 0UeqGh2u8FGMeFB6aiz8OSSAYAS4P8KF
X-Proofpoint-ORIG-GUID: 0UeqGh2u8FGMeFB6aiz8OSSAYAS4P8KF
X-Authority-Analysis: v=2.4 cv=Xtf3+FF9 c=1 sm=1 tr=0 ts=6960ca08 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=hZ5Vz02otkLiOpJ15TJmsQ==:17
 a=kj9zAlcOel0A:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=ePONTUrQY_oyHk2hGNkA:9
 a=CjuIK1q_8ugA:10 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-09_02,2026-01-08_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 priorityscore=1501 lowpriorityscore=0 impostorscore=0
 malwarescore=0 adultscore=0 clxscore=1015 suspectscore=0 spamscore=0
 phishscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2601090065
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260109_012737_278954_7F03F8C5 
X-CRM114-Status: UNSURE (   9.87  )
X-CRM114-Notice: Please train this message.
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

On 26-01-09 16:30:21, Yongxing Mou wrote:
> Currently, the LeMans/Monaco DP PHY operates in DP mode rather than eDP
> mode. Per the PHY HPG, the Swing and Emphasis settings have been corrected
> to the appropriate DP-mode values.
> 
> Additionally, the HPG specifies that the LDO value should be set to 0 when
> in DP mode. These misconfigurations can lead to link training failures on
> certain dongles.
> 
> Signed-off-by: Yongxing Mou <yongxing.mou@oss.qualcomm.com>

Reviewed-by: Abel Vesa <abel.vesa@oss.qualcomm.com>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
