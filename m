Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B548FEF4EDE
	for <linux-phy@archiver.kernel.org>; Mon,  6 Apr 2026 12:39:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=U9E68FHcVHMYoMwVs1TXvqEKKaUYgI8llGIl3XdaPFU=; b=QYvY88NOAnzXBk
	pXbZSTF/V5mhyULKhLedAGdfVkup8rSRJxHy6nF+0664J4kqPDzEGu1cx/IT7V1d54vS9XGApKQic
	kDTMfXbIvPVD4nfETpssDWajVdySIoO+w6+x2kOg5bWLpfrWye8BlnM21iZad6dGMsbT4MoKJnEwr
	n9wPzCon6BV27Y61Z7BG56Y+ozh+rnZeviXqNQJjlz5Yn7dix8fXJS/KYHOyouNmvALEyomlNJ1Jk
	PI91ZBv4VlMrAfT6ODjQ9zdZThAl909np0507XcKZcpIB+y/2S7ycO3N2TvrBuBwT8ClsK3p+DQ4Y
	Prln+Vn0H49XClKVHcrQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w9jEt-000000057Es-0xnM;
	Mon, 06 Apr 2026 12:39:35 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w9jEp-000000057EU-2fih
	for linux-phy@lists.infradead.org;
	Mon, 06 Apr 2026 12:39:33 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6368bdxO2612102
	for <linux-phy@lists.infradead.org>; Mon, 6 Apr 2026 12:39:30 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=zuu/AoiEte6QHeVBrtxX+erw
	+OHYiGVQnUPmzLKXoMY=; b=QtOYCTc+fXjtoyNzRBSUpqQfhj3WyRC2oktmPNrI
	p0gIS7J0NIkROHwZZz36JU9sh9Sv7xuVBb/B9zSb1QJcYZ8e8ftwCQrY+1J4pl86
	i2FHtH+CjaPHJpGbwaFxevOHt4gx8MEof4xF4II8ctGJHnc+JqDyOsalHfRu7yOn
	70X/Ihmqhl50ahsUWzTfIwXdVvBvbed12IacGIbW5Wcyi1QtU9o9A2kOsJDTLe6c
	x4t7XXGg5rFP23kQFzIF805vThQJNrCRh5/ewZ7mPHvq3OTrYVxtclchr2AN4QmE
	wjAU5D1z7TWfm0RO3w8hK4TEgufBHbyjme3f2JT69kMYsg==
Received: from mail-pj1-f69.google.com (mail-pj1-f69.google.com [209.85.216.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4datv1d2kp-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 06 Apr 2026 12:39:30 +0000 (GMT)
Received: by mail-pj1-f69.google.com with SMTP id 98e67ed59e1d1-35c10a5b087so759812a91.0
        for <linux-phy@lists.infradead.org>; Mon, 06 Apr 2026 05:39:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1775479169; x=1776083969; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=zuu/AoiEte6QHeVBrtxX+erw+OHYiGVQnUPmzLKXoMY=;
        b=YSzlPz9ICEj6dPAVi8OVBJUcGU6xbt+kKjddDLMgg9CKzJzNW/D6db8g0aTmLh5n53
         MQdkgOzfydQLVmhI46ZFDcaReV5lNlws+htJaYHnwurTtwEFqQftRyUjvtF3xC9QndZJ
         OM3MDxvop1W78QayLDdAE86PherXSx/kWtBVxngcWsNkVPGEYohs1vFiKuZir3/vbxCY
         SUXB3dSXmcE0M63VYiYd2k7qEJueDmkqg+u5E88HEQtLqqvwT4S05y43r589Cf86kD+N
         OK2QxeBvWNeR1erWcouhwGddmzcUFWSXlBYrMAl04NWKc0u6lUa9+zBXfKMw1zIdWN+r
         TVuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1775479169; x=1776083969;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=zuu/AoiEte6QHeVBrtxX+erw+OHYiGVQnUPmzLKXoMY=;
        b=VLYJcY+RajgEiTNOMajweHwThbUCD89wiM/6pLQLcWtSvvcG1+e58Q12xujEd/KVFX
         cinvUrUdasAYkfzeHAwyf5TovMBmP1bQWLcx6PhTgy1SA1MrZ7dzFbSAj2NxYbZ0i+Hs
         b6EHWBta5SDA/DitD25YoXezyKc5UBD6EnmXdiVF2EHQBjfoNJ0DGcHdL5WP8ajVx1Et
         hqtkkJsCKwfR6K8QLahOBYoz2LGSfn91ZOdM3j5cjplwlniRI36BtH/H+taFkXbzf/8v
         7EwrM02+1iUfxTv2u3zTy2dg8NWgmllET3zc1QXjBgEfzqb/drxfnEVAyZIK3JHE4cnL
         d/kQ==
X-Forwarded-Encrypted: i=1; AJvYcCWiIp3ovNnyVBRgzCX0lJJ5xjlacWCSbcG4+FTOfwbCZBjlksYEJHWz/c79og3HTL+xg5rZ5u7p83w=@lists.infradead.org
X-Gm-Message-State: AOJu0Yw4KxND8KECjL+QFEDv1AStXBsYCPCTExK50gYw44YbprF4O/9W
	0QKd6Ekgfm/5Zwsv+YGzZohslKRDLFqlV3n3x538udTJwVVv9jFyGqI57qGYFt8VznwOmBqB6tY
	Lg3jRokoUE+x397dPCZmuvPLZ2aV8IakDTfVLYxXzh67rwbdxYBmO8HsK156e/QHQRZm95QqSqx
	2c
X-Gm-Gg: AeBDietYiPoRFqZ381iHFj9wjf5vjk6oYxSlh3eDKeAakSIuGjNsLJzWhRakvc0+Ct2
	GHBrRZkvOoGmmOf4b7GbuBdSdrF5x561+wpbEIfvgvUqfqVR8/YQsJP+45KO5o2gUBzJrJ0HEdh
	iUw3oSU+2fCaXorTT8YC2DSZA2GJMH4d6Gmxc/a8+Mo6Rms+C96/9zbJNuucRiYrRSznAYVmFNF
	zBap9DxVfYwXIXE5NmwCwjEQ3TX5EWC0/sJV3blrBdfe9fU34LbGcLQCmvenmvSdf4jTvVvSOhS
	YnRBgLKx97u2Hm8fhVXcImZD/0grSiz2zz+ksrAr6KHtEviisjXgabssmZwaDGq11v8Bhh1Eevd
	cKkkkB/U/5ODGwyApZmTP96o5Qz+3EdrTIPwHO/STR0vuWlvzGYTyO0EBZlKzem6UTg9RRhduBB
	zz4Ql1FY/90HtihIdX5dqP0wcxR8VaqyvolpHFdqCs1g==
X-Received: by 2002:a17:90b:48d0:b0:35d:92e4:c0a6 with SMTP id 98e67ed59e1d1-35de6a4ee40mr6959059a91.7.1775479169408;
        Mon, 06 Apr 2026 05:39:29 -0700 (PDT)
X-Received: by 2002:a17:90b:48d0:b0:35d:92e4:c0a6 with SMTP id 98e67ed59e1d1-35de6a4ee40mr6959035a91.7.1775479168901;
        Mon, 06 Apr 2026 05:39:28 -0700 (PDT)
Received: from hu-vishsain-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-35de697e327sm3712755a91.8.2026.04.06.05.39.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Apr 2026 05:39:28 -0700 (PDT)
Date: Mon, 6 Apr 2026 18:09:23 +0530
From: Vishnu Saini <vishnu.saini@oss.qualcomm.com>
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org, prahlad.valluru@oss.qualcomm.com
Subject: Re: [PATCH] phy: qcom: edp: Initialize swing_pre_emph_cfg for sc7280
Message-ID: <adOpe/sRD5Ojc+iT@hu-vishsain-blr.qualcomm.com>
References: <20260403-phy_for_next-v1-1-3d336b555019@oss.qualcomm.com>
 <lsqxzcdcwut5y3xog7bfo5erziffc53vqrikyso5oujscowta7@cx7juz5qph5w>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <lsqxzcdcwut5y3xog7bfo5erziffc53vqrikyso5oujscowta7@cx7juz5qph5w>
X-Proofpoint-GUID: rqNPm3f6Y5A4GCjksT6w3R5IK6II0HjH
X-Authority-Analysis: v=2.4 cv=GLEF0+NK c=1 sm=1 tr=0 ts=69d3a982 cx=c_pps
 a=vVfyC5vLCtgYJKYeQD43oA==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=kj9zAlcOel0A:10 a=A5OVakUREuEA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yOCtJkima9RkubShWh1s:22
 a=VwQbUJbxAAAA:8 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8 a=yfmGr3Zwk4HYnreM4cwA:9
 a=CjuIK1q_8ugA:10 a=rl5im9kqc5Lf4LNbBjHf:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-ORIG-GUID: rqNPm3f6Y5A4GCjksT6w3R5IK6II0HjH
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNDA2MDEyNCBTYWx0ZWRfXzCqlrvTHPhay
 eXDQtKJwJTHk/V6DqCGkGaNGu+KBj0MZXXlmzi8Lnap3xNaUmowIooTYRsPWytgc1WwT5FYW0cb
 J/y3wh40rpdkRk6lBbHz/fqWHuEWdJk2F3D/7PLTRmJdQ9yF1E4nNKCsSftqkV7uBUvZV5IHfS3
 FAlStj30A4RKyR04WRGkv+bsZM1Mj/+GEzaF5ry+Eb3VO1ee8TP1O0BCjs5i2Q9V0IPsgQ08CG3
 QRP8f9IGYt57fUrj72BF7WC9K32wLfeiV4xyHkmHP3mDM/IpCe/T7x0PuWO/dGkzdc+d3pwx/zz
 3/GpOtn04LjTDS+ajbXXOMq5zmnlh8xEhDuxOSvhgtzaC2sNzW0pnvMnTFG2cPYw6+OFjPD6I9n
 SWPDbuRE+GPtlW9j4C8FCPcOL/fTMUNuLyvwGvmSCHX2Tmgh0uotQ0Qr6L1ZWaFD1JXqRoVG9pH
 qNoEs4ZvpFszVM+bYkA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-04-06_03,2026-04-03_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 phishscore=0 spamscore=0 suspectscore=0 adultscore=0
 priorityscore=1501 clxscore=1015 lowpriorityscore=0 impostorscore=0
 bulkscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2603050001
 definitions=main-2604060124
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260406_053931_733638_B79D675B 
X-CRM114-Status: GOOD (  13.32  )
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

On Fri, Apr 03, 2026 at 10:49:16PM +0300, Dmitry Baryshkov wrote:
> On Fri, Apr 03, 2026 at 05:54:56PM +0530, Vishnu Saini wrote:
> > Aux timeout is observed on few monitors like Benq BL2420-T due to
> > missing swing_pre_emph_cfg.
> > 
> > Signed-off-by: Vishnu Saini <vishnu.saini@oss.qualcomm.com>
> > ---
> >  drivers/phy/qualcomm/phy-qcom-edp.c | 1 +
> >  1 file changed, 1 insertion(+)
> 
> Missing Fixes tag.

phy cfg is not initialized for sc7280 when it was added first time with:
https://lore.kernel.org/all/20220207161612.REPOST.v1.2.Iff75c0ea8499f0baf2aa5800f2c45c4128e2415a@changeid/ 
Shall i add this tag? 
Fixes: cc62512c1be3 ("phy: qcom: Add support for eDP PHY on sc7280")

Later phy cfgs added first time with below patches:
https://lore.kernel.org/r/20220810040745.3582985-5-bjorn.andersson@linaro.org
https://lore.kernel.org/r/20220810040745.3582985-6-bjorn.andersson@linaro.org

> -- 
> With best wishes
> Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
