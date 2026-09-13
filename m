Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6AB29C88E64
	for <linux-phy@archiver.kernel.org>; Sun, 13 Sep 2026 23:51:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GrmMJ367td8CDHApYE4Df83yrSKuGtF6wsvBu6FAdI8=; b=qGvGljnYv/xoPj
	EaNP7V8jaMb+UXuGA/YnvGUjS7P9zdYtFdW31Mm1M4F9fswJBZEiOm3j/5iVj68ANCZjb1OMCoW39
	1qCDTghwZ4dUFZ51UZD0RlzA2+JQIU4im/aYKGe8iOqdhHmaWPlvxMmh4vcKZqKSa4PHXfx9i0pSo
	FjuF6GFnhOxf+9wbL2Bw2VOQIbrJzS1Jpooh0GIUawJCdev+kjaziJUf6j20L5HoME7NsX5sldcgl
	IyxL6GzHQGpcIPItI3NB+zO9+uTr0UY2iD1HJzZsNS/eGZ+Prd051FZZwKDf8tCobZkjiQZB21pzB
	vkhZk3vlZhbYFU5GBulQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x5tyR-000000026sN-04G0;
	Sun, 13 Sep 2026 23:51:03 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x5tyP-000000026s0-0A6C
	for linux-phy@lists.infradead.org;
	Sun, 13 Sep 2026 23:51:02 +0000
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 68DNYuIa2358949
	for <linux-phy@lists.infradead.org>; Sun, 13 Sep 2026 23:51:00 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=WdFMlmauPwxaVbgf2YMHJgMA
	PrT9/NnB7w9Jx4opmZw=; b=LzPkO/LTASUrCu8bMp3vKWoq0UZutRrM5M8jGYJP
	A8NZ1JwKpiYq+CvFymCSgTfoD4TrZXJ//ZeknSxXaGDfgrvmGOEhBH842JdlkS+0
	rTuYHXLq/JKCHi0M/MS2JVdmwcsyBxJfrBnhAGHiZeidDlEMmfFlbZsIloEKN3Xs
	Uxh2fA+uegD4dQdzT8iIMVdQSrfcyLD+5ZAKWSeoaFa8xwUwRBwwivYTTrbc+j7t
	cYJHVL/hHgXyRCII7aymQtsJ/41TG7D083/kVSGIcgu1zOJXP/mbnyBhhTLdHcaG
	ct6l1vUuYDBJ2k3mVKbfLL7DPVliAxuxwWyRCrgr4of5fw==
Received: from mail-ua1-f72.google.com (mail-ua1-f72.google.com [209.85.222.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4gn018m80c-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Sun, 13 Sep 2026 23:51:00 +0000 (GMT)
Received: by mail-ua1-f72.google.com with SMTP id a1e0cc1a2514c-9806756ea40so2423079241.1
        for <linux-phy@lists.infradead.org>; Sun, 13 Sep 2026 16:50:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1789343459; x=1789948259; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=WdFMlmauPwxaVbgf2YMHJgMAPrT9/NnB7w9Jx4opmZw=;
        b=Is9N9KHB4gVpVEfxF3fBzayUS7R1PxItJ9UeDa9l9l97KLkUQvz1TW/iB+DlRTfO0w
         Ff99BuWhGYpSiJvNlGCq+PhBzAgOXuGE+aBJbEKrv4820rk7WdyPb+rqFIr4efssR/2U
         MA2LhJAOTWtDZzwCWZI0khNs4DRukL0hm14uSiz9gaqxLjpx3p4uh1XLLkdzCzn+lSh4
         XAN3f23+3f7/C7cvNt8jGhSXMoBEzKoHx5L7qje1a5W2424l/W3/uIciI51Di/3ETehR
         SKBAG8plt58AXV7HSODpFavgNm57HP3ToEwPvZe5iFX+Kx2Xgxnucr9tC4esou2ozJQB
         4QLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1789343459; x=1789948259;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=WdFMlmauPwxaVbgf2YMHJgMAPrT9/NnB7w9Jx4opmZw=;
        b=QkGpt1ey+S3wgBx7UoBw2jGIsrBuOhp5YLMadKNTqhr3807dkvU+u6igzB02cYdGIJ
         1kY//c3kVbDi5Lfa4QrQU+3OBVnzQepDCs3c8uwfPgLNBggoVLAaArhfw25WWzga7ymQ
         FfbVLZBRMtmeITvy5NvZoJwXeLUKg4ndL0qq03tR1SdiO4B2XbkGKGVJ6NfP2u2favfp
         oSyjgX7o6f8qjsyMuiFMWXmavqeKwhgop01vRA+HALKVALrlc3P9Xtww7bcXBJKd6uOD
         jhJkcvXYzWdk+RhqYGVTW6XYtt59ww8HPP/+jHcyXRtkt2EUGEl+KEHsXgglgwLmvywa
         wF2A==
X-Forwarded-Encrypted: i=1; AKwUvBxBHreebEnpj8ELsubP6ZsZJOFWKOVAIhrhPuGUWFo+xjpleahGFHSjC0yrTvOrOTC9Ku8q1JOCFBk=@lists.infradead.org
X-Gm-Message-State: AFuF++nityfyxXouGU4acsTvgdAfE6O58H4ypPGM+goHe6e7SEMfSmGI
	2NZD3Fs1h1L3lPwW9/PawcHo9GtsJIuX9Ix7U/6bgOrLdvS3RcrR3Yg2aOxgxgVTVN0fwr+DnLl
	+1pVIzEOH9DXiYpkNxdrBxd1fbeTg22e2Q/G44fzGfqvgH1nadnTe3OaanwI9Rvkbr4KTBBVjlC
	yw
X-Gm-Gg: AYBFou3XxDhfVlU+icy27XILbHDFvCwE6tMaY8xwT1T2KMRxrQ95jGIB5fCDYWLJx0o
	IZlnegLpTaOuJbKmamphJOTy8S6dn0jZrvErmsMVCgnmGpL5BQUMOz+1vDlYSWIKJ0sX0czTdzn
	Fm1wNdtQ8470ThNACYn65Lv/Lko/CCjq7/6fxE5hEjnR9NCZbO3+wFswNXIJEtNKn6TjAXsxTMP
	MIqAXFVErNeIkil6CRek6JaIHaKTFX+jIQyY1+p60MiWBe7noUqQsj3ajjx9dycEx05767L53Ej
	0xFNEbKGGoe9J3QgFPWRvGrP0e5SxA9/A5NvL2oudfRwqhBNOMboBA2/BnJdMH4/dE/aWP34QMi
	kikv/LJMIDObjAvhyChC+URf43P7780R7OCEpwxpI66CHCxb9tcOlf/MaynqRN3U9MDfBoVZqfM
	6V4Rq6ALBXetM8
X-Received: by 2002:a05:6102:5f07:b0:786:c86c:4f5e with SMTP id ada2fe7eead31-79b579afe80mr41610137.3.1789343459133;
        Sun, 13 Sep 2026 16:50:59 -0700 (PDT)
X-Received: by 2002:a05:6102:5f07:b0:786:c86c:4f5e with SMTP id ada2fe7eead31-79b579afe80mr41592137.3.1789343458764;
        Sun, 13 Sep 2026 16:50:58 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5b8a0456c06sm2080930e87.28.2026.09.13.16.50.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 13 Sep 2026 16:50:56 -0700 (PDT)
Date: Mon, 14 Sep 2026 02:50:53 +0300
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
Subject: Re: [PATCH 06/17] drm/msm/dp: Add support for DP controllers on Nord
Message-ID: <pzcoffvcnailaqogewwys2zf7aizlxwzwz7scpixngc5ootds3@fjxeopzxa53p>
References: <20260911-nord-drv-dt-v1-0-e25c073cf1b6@oss.qualcomm.com>
 <20260911-nord-drv-dt-v1-6-e25c073cf1b6@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260911-nord-drv-dt-v1-6-e25c073cf1b6@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=c4g+0h9l c=1 sm=1 tr=0 ts=6aa736e4 cx=c_pps
 a=ULNsgckmlI/WJG3HAyAuOQ==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=VdqzKS8jKosA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=YMgV9FUhrdKAYTUUvYB2:22 a=EUspDBNiAAAA:8
 a=m5hMcXIjv9hwPX1ZnFIA:9 a=CjuIK1q_8ugA:10 a=1WsBpfsz9X-RYQiigVTh:22
X-Proofpoint-Spam-Info: AW1haW4tMjYwOTEzMDM0MiBTYWx0ZWRfX5uM0i5FYTg/8
 QIsD6FDdpuUXdNbr8qXHDBu3HKxWselZgfFkCkvZjX/T2GWlDM0e90c7EDpxK0hGB/mqRFQp+z1
 +GFGXhBIKYFKy8o4wA4lNdbuoVl9MEg=
X-Proofpoint-GUID: w5wEWEfZIy9AHooeRy5t3AGH53yd-s1D
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwOTEzMDM0MiBTYWx0ZWRfXyYQ7Q6XsIV7a
 lu3xljUg5RsBIX4FGAazj7oV4pwa2vUg2YuEyemgoZY4PyCYIlRXs/nnXotTZpJWQzWDBXIeLZx
 vXzLxOAYNAW4ziAnpbgOaOKI8cq8pNHVNLMXLC/Msen2ncFlBCM5GH6lg7aKZiJKKPSTnfnVgiy
 y2XvRKXNCScQpVACQm/grtjyKXemivCu7a6L/NW3GlvTX4MurIJzWEnCW0qmx5H47C4ID0qXTUu
 rpJc5REsYgT7aNbdhr0WWBmjUAHPJ35RsvVPR8tuYiwevFFA4kvOy4mnmO9AwtYjrub4iEwjbCi
 QLK5xfZE7UyLIzUl67SSLL0P9Womg3WIiW/h9ul1JmUjraHerSXOCParEoocKhFAZwqrjGCA6RT
 5nQ4yYuD0pNhtZBY/1EQNP2+5aehDFffNGiiqLUHQF2gifOF0v1HOz3iYtNxVNc4bUgKb5363fm
 7eDFTtCQqq1E0oNX1FA==
X-Proofpoint-ORIG-GUID: w5wEWEfZIy9AHooeRy5t3AGH53yd-s1D
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-09-13_07,2026-09-13_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 spamscore=0 adultscore=0 bulkscore=0 impostorscore=0
 malwarescore=0 phishscore=0 suspectscore=0 priorityscore=1501
 lowpriorityscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2609040000
 definitions=main-2609130342
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260913_165101_093216_12DDCAA1 
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

On Fri, Sep 11, 2026 at 09:06:37PM +0530, Nabige Aala wrote:
> From: Mahadevan P <mahadevan.p@oss.qualcomm.com>
> 
> Add the DP controller description and compatible for the Qualcomm Nord
> SoC, which provides two independent DP controllers, both wide-bus
> capable.
> 
> Signed-off-by: Mahadevan P <mahadevan.p@oss.qualcomm.com>
> Signed-off-by: Nabige Aala <nabige.aala@oss.qualcomm.com>
> ---
>  drivers/gpu/drm/msm/dp/dp_display.c | 7 +++++++
>  1 file changed, 7 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
