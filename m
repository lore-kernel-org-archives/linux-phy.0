Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 294FCE8538E
	for <linux-phy@archiver.kernel.org>; Fri,  3 Apr 2026 19:49:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QmaSgA9yUaAxO5GUaxqihozeIdCjltQCOQ4ZSiQLlTM=; b=Yf5OY4c3QBYz+E
	hL9xdm7FipULj0AYddZKFRWOb8bnFuttQhA3/bx7jTr9qcHutBFBv1pZfiUo3UtPHYugWF2f5NDxx
	FEMQsx39qweAYM847qOdmCfcy0qr/pvZBDCHRC9hhCyuVYrF2AQPhGwBzG157Bzh2m+piQUF4WWne
	fTqVTLpWAeTLCtq6mlchIOAkor4GQdQTNzo07zoC2rEocf05oBOoSwYI91wUkM4eUnyvNn8PPQVSx
	x7HFWtFuU5RcdPooAjXUHvJop42xxToFvWZ690NNyogIcTzE2jaTV+2ZipG0U5XOPporejBQiDb3F
	YNQiBkYJffBtty/MFLfQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w8kWA-00000002Vo7-38wi;
	Fri, 03 Apr 2026 19:49:22 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w8kW8-00000002Vnk-2kzz
	for linux-phy@lists.infradead.org;
	Fri, 03 Apr 2026 19:49:21 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 633Jm3Y9918103
	for <linux-phy@lists.infradead.org>; Fri, 3 Apr 2026 19:49:20 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=FnbzQ0+kPBsD3j5Ea+HpiYmN
	FMg1/HEChynq2UZ0saI=; b=ljFU+ElmXmVvJ9ZmxmqtOunH16XVS/hYVpNYPbYY
	LhP8P548bYwDUIbFlopctEtQIVsSucXm6GLcZ/IsUaE7PJqeAXbc+Vy4grD2FGvg
	1GYFz/jM9/IUGHt/6DrQmNCVHOOTh/s1HyREuKZdyt6Yx+C+jy+FVZy3ET3ZS6Qx
	W9rtJRjLMMwbuDLhrZ4KpNR0IlfzTCELZVq/VJ+o5QGmGHNrngSbuf0CWfm+KlN2
	H6IdPkh2nicTFVNjZQ3Fv9eEpY+zMhjX5Soy+ZSlgVDLAyX3+mE6o4zlPiOXeny0
	DBd0/ezhQYilvaRoMLwiFQT/e1aAI0vQ7N74wsz2u+jtfg==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4dam16004b-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 03 Apr 2026 19:49:20 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-50b4987c698so48467061cf.0
        for <linux-phy@lists.infradead.org>; Fri, 03 Apr 2026 12:49:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1775245759; x=1775850559; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=FnbzQ0+kPBsD3j5Ea+HpiYmNFMg1/HEChynq2UZ0saI=;
        b=dzxzOXWiZbEOrfNhsmydsG5yBr5CsuHstYj5fTsG41h7dcijWNu/Z32drVYavJZ21T
         9eFe4wt0i6ZyCZ3QQZbM1PCFIwad1hpiBA+hIDDOmAYNxH2Ap9G40NfV/H5GvJYtXSON
         UpWixiiJQWaStQMr32SmxT8ZMk2aHcaXKd0MXfOTYMDQf/tqW2dKbIOQDbEqt0wAL9C/
         zqIqOxcsSa4EEfjn/gDT790f3woYxB3G7EpcZDfZZAeNjKuxJEJOfXekBJihAyXeJjPk
         AZftCR2AECmrd3cj/fHm6GynLhvv4KkMWGVmgqnB9LTRHLT4k7sXpz/jGnuPYYPTewIV
         bJLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1775245759; x=1775850559;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=FnbzQ0+kPBsD3j5Ea+HpiYmNFMg1/HEChynq2UZ0saI=;
        b=d9MHfYAvDOxoDgnfqxOtPYi6HJmgSmAugNiLmHcoBdSLqRV9g3ZFXiX1TySXrwBu6l
         naV1C4BXNegW7YTlrUAUub4J3422VKlh+CYDDgbun+9CLqxh6vCz8lPoORwoULF737az
         IihuORcOuY2IxNWh31W8KTRR7+R3DVKa32xr89pyAJ2vbGZK9ciR7Vaz11/Jam+l5iZh
         0OOwGfmlHR3ORANRhx93eDlU0bxzdwYwSZVmDRVDH2/6wi8TGiHDw1quESlb7xrQHECB
         5AQvNOADIdCtIe7XDw2SXM45cnYAXSrUWN/R8YvxZUmmLI1NGwiYWP4dlOPlgc69laXT
         r+yg==
X-Forwarded-Encrypted: i=1; AJvYcCVogcmwGcCG2Cy0Aypwabz37imHLG/ZOLMDKyApI6fm2FXgYH7I6yC0CwwP45Axo6ujZ8Kku14uDYw=@lists.infradead.org
X-Gm-Message-State: AOJu0YzntnhF7t75CelOjmL55eYHB15/WlWLgozjFh3U9XpHkROseyol
	qIj2O9KPb8+uqwkhSYicZIuHNls2vKi+Aq9GEa2ZSEaiJ5niXsljwjVBzaiT3Ii0tm/TKU8H6X6
	HY5cHUrboMlSLYL/471RHqHs4h3idO+FVIz+aQpol1sb9i3/EWykQga9pmMwB7i5Xwfw5
X-Gm-Gg: ATEYQzxLYPUnCrUsnmd4FlY0gd6Hh9VzNkfBf0RCkgd2HUtRVLYUlD3GgaKAIo0KMur
	sG4HIBl3H2858rWdoYdARwf3UisA+IBYyD6DGfYeQEEv/WJOEtDX6CTF1FyCMwZTkBjDgXsUG2A
	CKPJjK5A5Sk0EECH5rNveUrWnrfpAeKxdJ+pPN7p+gFikRgfEBPX6/OAVURPsolaAJdwSXpDPMN
	Nfqi5nAmwi9riv5OX9Iim6U3Avzc4gNgGQXBAIG0pnRAeZCFOPmZugfAdEsclKNrfEI3ENeMJRn
	91daZRnHYCqLPwTLtNq1MOJdcp4inMk+WYqA8p58pqdmE0HGPDvtxK4A+bmPoe0yl8NFg/ec5mO
	aTpMXr0ZlgkxzsUs1K8u0U1R0GK3Igi36kyXP1CmMMEJi2G4GScddwc+jZSEKcnkTeL4OT7IjIc
	pA0zzW8VHrQfFNH8nN5c+BSqUS5De7Ra7fb+0=
X-Received: by 2002:a05:622a:1312:b0:50b:4a3c:8917 with SMTP id d75a77b69052e-50d4fc1856fmr92019011cf.24.1775245759231;
        Fri, 03 Apr 2026 12:49:19 -0700 (PDT)
X-Received: by 2002:a05:622a:1312:b0:50b:4a3c:8917 with SMTP id d75a77b69052e-50d4fc1856fmr92018721cf.24.1775245758810;
        Fri, 03 Apr 2026 12:49:18 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5a2c6c9ccffsm1627486e87.22.2026.04.03.12.49.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 03 Apr 2026 12:49:17 -0700 (PDT)
Date: Fri, 3 Apr 2026 22:49:16 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Vishnu Saini <vishnu.saini@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org, prahlad.valluru@oss.qualcomm.com
Subject: Re: [PATCH] phy: qcom: edp: Initialize swing_pre_emph_cfg for sc7280
Message-ID: <lsqxzcdcwut5y3xog7bfo5erziffc53vqrikyso5oujscowta7@cx7juz5qph5w>
References: <20260403-phy_for_next-v1-1-3d336b555019@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260403-phy_for_next-v1-1-3d336b555019@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=Kr5AGGWN c=1 sm=1 tr=0 ts=69d019c0 cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=A5OVakUREuEA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=yOCtJkima9RkubShWh1s:22 a=EUspDBNiAAAA:8
 a=e65Mx4sqn2E3a9r97x0A:9 a=CjuIK1q_8ugA:10 a=a_PwQJl-kcHnX1M80qC6:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNDAzMDE3NiBTYWx0ZWRfXyDDxYdUFj8eG
 n05ybE5RscQMziFEpBAyekiUBl4Wn1MnUz/3f+5Bfw320Q3FG0IuQky3W6kRwGOk3ljReSdqszH
 vbPB/ylu7GcBSRjxSR1hnDk4v9zZ2I3zmOf8Jk2moltG5xipEyQXgGN3QtDTS/bDNpgOlUGRmPF
 yjs04pPC1EUjxB7XuVUJu30hNMgweWbhJjzIxQYM6lcCtfRzYceQIInFMY6RklxqJIO+JX0P/zs
 aP99OMZMc7AumOqB7klvIx6fd5YiwyRVRWQSuDb9sQWACV45y/UFYDXErtUv8IUq+YeKSL1gZNj
 h5qxKnOLJsV5YNGU1z3sf/0A2/2zJEcXDsYq+xFSAQLbo+0/VVEBOWVcewYIK6EgI6Y2k76kWQy
 BL6XTSo1LvuBype6+u1ZuHpuJRqyBJveMdvtlOTzldijdRaJ1s3NAsPygZhbyNw73pvCDp8pb++
 tz/14kkO0lnqxyB/nRA==
X-Proofpoint-GUID: l94hJ75b6-zfGHHvK-WGPUxX02VXoD0g
X-Proofpoint-ORIG-GUID: l94hJ75b6-zfGHHvK-WGPUxX02VXoD0g
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-04-03_05,2026-04-03_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 bulkscore=0 priorityscore=1501 suspectscore=0 impostorscore=0
 clxscore=1015 adultscore=0 spamscore=0 lowpriorityscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2604030176
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260403_124920_733164_1B5D185A 
X-CRM114-Status: GOOD (  10.64  )
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

On Fri, Apr 03, 2026 at 05:54:56PM +0530, Vishnu Saini wrote:
> Aux timeout is observed on few monitors like Benq BL2420-T due to
> missing swing_pre_emph_cfg.
> 
> Signed-off-by: Vishnu Saini <vishnu.saini@oss.qualcomm.com>
> ---
>  drivers/phy/qualcomm/phy-qcom-edp.c | 1 +
>  1 file changed, 1 insertion(+)

Missing Fixes tag.

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
