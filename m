Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 988D1C5DF7D
	for <linux-phy@archiver.kernel.org>; Tue, 18 Aug 2026 10:39:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=f9ZPiFlJ29czi0aQwdXUp1sQzOXfoYRAgI8o1G9AZhs=; b=CIk/igIbpJJr0W
	3uLEqhjO5PUhhz8TtrFXRW9xU6EKQ8yEo/j18ZPT161kiVBoCkM2y6KU0VMkwsoX8XZv8OELmC5hD
	LYupumOVreO2TM5lGrFzHqJVD3ncvs66eMlIYUCLWpN70zJBuKQJFDhnQU0iCt1wX3aIu3GK+/uB2
	i5aZZBVuFSuo6CNoy55AoKiqhZJkGIu7pgJ/HnNJQva8XUy5U3dILF2pPOzSYRiwyP3mle3l3iaPr
	7deBW/k1FJdF6+/wMoRbifQPyiJmHmVCJmCwBXad9c3hCJxYViDJPpO8tTCWy8llkE7CQTXZI7dGF
	YjgsWjdCF95rinWeKUcw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wwHDo-00000007lMr-1J2g;
	Tue, 18 Aug 2026 10:39:08 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wwHDm-00000007lMA-0g3w
	for linux-phy@lists.infradead.org;
	Tue, 18 Aug 2026 10:39:07 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 67IABIR82057044
	for <linux-phy@lists.infradead.org>; Tue, 18 Aug 2026 10:39:05 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	QVmUxPVCbmg7yj/NE5q4TGeDCNpmSHEyTY00RCbjGKQ=; b=YWOPQPWaEm1jv08h
	CKnGvBzjon0GIdq4bYTxLHNEWoDWTk/OsGdV/XsdpUDR+VYabd/E5wXx9Coc1CAJ
	4yjrmCSSCKMHJeegxbjBwFfZ7jHv3cfaXmMePmkOPJaPXblw1KNQbYGIhaQeU8f6
	aQOvw640NU5KqheISN0OjcLu3GKO+WZAMOoJzpIygSqIOW/E/vEWcrsWcFaWJEqW
	VefqWJLsN25U/aR21ZpSJfrfukoq6yevsqUOwuo1MdTxVlQzA+67h0CIcpYV0Q5W
	iy+8n4ApGZkD6zuiLqaImgCKiI7MDjPyqmNMo7koNfN4jrKp7F6c6NzNKotfKw1f
	62RW8w==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4g4frmsn3w-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 18 Aug 2026 10:39:05 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-9310484c005so3759285a.3
        for <linux-phy@lists.infradead.org>; Tue, 18 Aug 2026 03:39:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1787049545; x=1787654345; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=QVmUxPVCbmg7yj/NE5q4TGeDCNpmSHEyTY00RCbjGKQ=;
        b=e9F5g37MCdDnf+tUyQvKTaEVWNOAvoH2EKzwsc4YhvCP7WOjiRkN+IrVmbOM/gCxk0
         8RmTOBUGqUobcAfwjYIJgwVTcbesKKLjrr6dUiWq+F6Lop93b1GslOJOHIHqZv8e2weM
         YH01/MVPnvD4xTj9p2JEeXN3VfXNWBA4Yad/ldcT3LoiVU4dcD9vnOs0CUb/t8Tpe/0G
         Y21PgqKLgs2o8KquW1lNPSPjx71vB8cPPynGxaFshh29uIbUrbCvyGAvX/CirLwgP2pL
         2xxOxDJmYOhNa1WmO3aRmEDuMs9iv1raINIv55/GE+uwjCbaF8KCe6AgJep89GwvyAcF
         YWOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1787049545; x=1787654345;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=QVmUxPVCbmg7yj/NE5q4TGeDCNpmSHEyTY00RCbjGKQ=;
        b=Xoeb9Xuwmf45LcjD/FO/jqk0lHqKbLWHTFP2BVHBgp/6t1rLM1Ghbj5i+qCJs0LD7t
         ju/WzUuDbqzyKujm4/DDOrqyqdOhF/RoC8H9GudBAdg4Zg3KBeX8fGOEJ0Pf/szQTEHb
         FypX+K18NjLe45C/9xgWCyUP0JMgQ2aZMxdI8AUq20FRrmD6o8zl1Mzu03HGFrhUOT+z
         4re0ZCn8s1xLkTe275F9HKIe674gPm7FwllVrkBy9FUzOb0u4sE29Veukd9jvixbxYP4
         ByHClZie9J/2D+1Pe8+0HTIinxQZtmetr7ACfX4BV3iQE8zgg3CcQqE350brBYbJ3xwD
         aNXw==
X-Forwarded-Encrypted: i=1; AHgh+RonpA633rERqjbM4ftURfKoSASwYFt1cdtWjpe4cOWGeY+1TefAZ7lLlx7Ka+NmJe6z6+4iEIfkt+U=@lists.infradead.org
X-Gm-Message-State: AOJu0Yyxxbxy3wErrYry+ZccaMGNOZoe8MrpWKzWpS++lonF4xF200je
	6oAM7EJUqcOJRJ0yaequ3IPWfeWvBCaecy6wmrhoGk/wbV5tqtz6BY4ZOvfUTP73FZT3Oc2hCkG
	zPOHDaowz0OqJg07arrn+bMbZjrlZoi+ryAec6OYItnDm3301oXYpLZb/9TujDMvv+VQ2
X-Gm-Gg: AR+sD13jq+lxMv/dtS+MMpHdF7nETdccwmildSI9+tFHimRQmVaFGI4zhXBPTdFeBEl
	x0jDqDMw7YOTCVzbag0kRWxPBFH26rmx7CNXa+Xm5Szj+KXZ9BpVkeOe44CaBc7GUomENYLeUrO
	Hog2K25+hbq62OZ5sjE4URpsNvfvx2/Yzm+w64lvkjItAmeKLK3fuVXJCtsZ3Bz7682dV66BNds
	zUe6Zn+x2cvtO3KIyrVNhTr7Rn62V/c5v3g/LG+fOIGr3VN2faO8/8r0m+nsmsEeKKer44bt/au
	29KS/knoTB5yrDnawFlWrJQFLLXjV3lQYKpaOBUfY55+S0a0KIdu5Q9KKOXI9E7L3LwEtbnMFvQ
	QowxTHgy9M5o3IfZXLCNSMwjR
X-Received: by 2002:a05:620a:2a12:b0:933:9bf:cc73 with SMTP id af79cd13be357-936d2357528mr2423697085a.3.1787049544524;
        Tue, 18 Aug 2026 03:39:04 -0700 (PDT)
X-Received: by 2002:a05:620a:2a12:b0:933:9bf:cc73 with SMTP id af79cd13be357-936d2357528mr2423693685a.3.1787049544119;
        Tue, 18 Aug 2026 03:39:04 -0700 (PDT)
Received: from [192.168.120.193] ([178.235.128.140])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-c217fe6aa89sm166585566b.2.2026.08.18.03.39.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 18 Aug 2026 03:39:03 -0700 (PDT)
Message-ID: <9fab8686-d0fa-40df-a6d0-75349861d78a@oss.qualcomm.com>
Date: Tue, 18 Aug 2026 12:39:00 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: glymur eDP PHY (v8): link trains only at HBR3, all lower rates
 fail
To: Jesse Casco <jesse.casco@gmail.com>, Abel Vesa <abel.vesa@linaro.org>
Cc: Abel Vesa <abel.vesa@oss.qualcomm.com>,
        Yongxing Mou <yongxing.mou@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Clark <robin.clark@oss.qualcomm.com>,
        Abhinav Kumar <abhinav.kumar@linux.dev>, linux-phy@lists.infradead.org,
        linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        linux-kernel@vger.kernel.org
References: <20260808171321.133028-1-jesse.casco@gmail.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260808171321.133028-1-jesse.casco@gmail.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwODE4MDA3OCBTYWx0ZWRfX+YvPLlh74nnd
 043dejH1O6K6fdqJRiFHAuUjrwH5kQxrjPEOYpLNTJAUSnm7nFQJUpBfsH4WgAE9alKdkhoeNGa
 KdzNw0wud7bTeh+LuV23qzp1ivQInT0cj4LpgbDzO9/mu3XSWTiqCtAUcBmK2uJ1cGe8fPS8LEF
 PRU0LDFM4NLy11/ncXrKRmKeA9Si2mbReREdpxe/5oYlP9eyCByJvBOBbe+3PEZfUq2A6sAn/6f
 w6BkWzAbP5ZMF9utD+n6tZrBk3JWL8wGQiK0E52OiA0h6LTpofCalCueiTUoS5Flux1dqukjp/A
 amVCVDLK5KpQMxpzGyeAxodPNKI775XQsetgmL/SygK9DH8HvW+A8fr+sLWX0bWhxN9F5D6Ko5i
 /N5fKAR/a63TVXZZb3gvhnQcu+H3d7Hc/gZh94FmGImiup8odYcTq8aeln7BKZWKsbJwOp64YeW
 yQFRDCtx24W2m8SbyKQ==
X-Proofpoint-GUID: fhlQnWNyEC-o-EIy3vgpzp51PmOje4ru
X-Proofpoint-ORIG-GUID: fhlQnWNyEC-o-EIy3vgpzp51PmOje4ru
X-Authority-Analysis: v=2.4 cv=GtlyPE1C c=1 sm=1 tr=0 ts=6a843649 cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=PRfkaYvzSr8QmIIGAkY2Sg==:17
 a=IkcTkHD0fZMA:10 a=Sv0fKeRqtYgA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=eoimf2acIAo5FJnRuUoq:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=nkM7kGyF-zu4sKUpaxcA:9 a=QEXdDO2ut3YA:10
 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-Spam-Info: AW1haW4tMjYwODE4MDA3OCBTYWx0ZWRfX/6v5V7DHlmRF
 JnLvF+4FcS/2Qew3tg05rFk/1SFG9VcuzqKL8WZ6AbDUcogSeOeK2BwtLAROaUNOGKwt9tIU8Zn
 8Cjwk8tDphiE7a9DLy9baAzUfKY6M5U=
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-08-18_01,2026-08-12_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 malwarescore=0 impostorscore=0 lowpriorityscore=0 phishscore=0
 adultscore=0 bulkscore=0 clxscore=1015 spamscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2608180078
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260818_033906_213845_A28B8327 
X-CRM114-Status: GOOD (  11.26  )
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

On 8/8/26 7:13 PM, Jesse Casco wrote:
> Hi Abel,
> 
> On an ASUS Zenbook A16 (UX3607OA, Snapdragon X2 Elite Extreme) the internal
> eDP panel never comes up on mainline. It is the link rate: the v8 eDP PHY
> appears to bring up a usable link only at HBR3.
> 
> Tested on linux-next next-20260713, next-20260803 and next-20260807, where
> phy-qcom-edp.c is byte-identical -- so not a recent regression, and the May
> 2026 series (eDP low-vdiff LDO config, unified swing/pre-emphasis tables,
> eDP/DP mode switch) is present in the tree tested here. The sweep below is
> from next-20260803; the machine has since run next-20260807 as its daily
> driver, where HBR3 still trains every boot.

I mentioned in my submission that this series is required on top:

https://lore.kernel.org/linux-arm-msm/20260622-glymur-edp-phy-v1-0-814b45089ac9@oss.qualcomm.com/

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
