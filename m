Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 77EC3FB5181
	for <linux-phy@archiver.kernel.org>; Tue,  7 Apr 2026 02:03:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vTPy6qYaYmHzifMcTFLrx3CwhOyPLFfDkemjRzMrF74=; b=r+zXPFun3kqnyp
	7a10jXtvwvj3l3pxYoeMtjrkJX0lPzlIq0qHMOfceJOYSS7rNvmNmfOec8L/87jL4d6Z94UbCym+x
	yyNewh6H1cM5w2pVPNubj0e7tdXj6WlNWojjmELflnrYEPdUTcoqN0atiycidf1NgvttH4Gwdf2ab
	4I2r8c24tLtXEapr53Kx0wIacRqI4DDDe2z+iyX0UgObRH3qhb0XqNJGijIVx4kLNs+ZPVBj7q34V
	eXdDbyzbKS4YR+yqK3Id0oQ/4mRgbT83l2p8C1URM6QXgY+M3YWQnVhqCETuRwO1iEbpApmrs5ru4
	zGq42g9PFGhcRS3y8+Zw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w9vn5-00000005jgv-0N0P;
	Tue, 07 Apr 2026 02:03:43 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w9vn1-00000005jgZ-3oNP
	for linux-phy@lists.infradead.org;
	Tue, 07 Apr 2026 02:03:41 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 636LQL3G2550172
	for <linux-phy@lists.infradead.org>; Tue, 7 Apr 2026 02:03:39 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=sMZG1Wq6VOOWUWapU0zDNsI3
	1QW4fzpP6mGBXi9ancE=; b=aas/50kD9Af4yy/L2b8SvYAoVjfUh4YYfZD8Wxkx
	EYkVoiaYIXShuKhF1tW3Tb/URgg792fr78jZLB3qi4RCclT6mrsf4gAShdPZg6iQ
	IhvxqHOC2CsI94kljAk1yOCNmwE7KQ39VxBpmuE0BukRM2/A1fAXkiuVu0VHDFhd
	7h2lxM3My+SYWECtqZIJ+uqSzp7mVRvEYFdNNtnjhzr/rg3iBYKndWp8gNjgAaHB
	KNivW3eXLu90f+Qf7mrLcNwnxb+2VpWy5xiRfGX1VMCpTE/Yix1IYQKv0pmN9QPo
	XpbrnfZS5epSM6VdK7qrWlkF+Y0LqwvIqrMiVH83Ju1Svw==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4dcmre8k7e-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 07 Apr 2026 02:03:39 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-50d84b5f73bso31689691cf.0
        for <linux-phy@lists.infradead.org>; Mon, 06 Apr 2026 19:03:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1775527418; x=1776132218; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=sMZG1Wq6VOOWUWapU0zDNsI31QW4fzpP6mGBXi9ancE=;
        b=KvVm5yM8dEx3gaihcQ1B2ti6SKc6z9slyJ4HYTCFTGwfvGc2EA+GEKb/k+94fgdhj+
         LIy+e9RK1aHtuakCWUAyDg0dJq5nMqzgIo1hPDjNpZgdjEfkMCdi7CHTIszQ/rj9TWop
         V527cDiCIBLyEqUiwSykzIIHQP8X5dIgL0WKKQSWy1jNrRlu6nJ9y2xLAQqVreMBW1bM
         GkjEgD1XAhaIaFMg2kol87gDDrzl1mUj+REAPqYWc2vUL3CQdubmYYl0Q6NAS/DaqbUi
         dGXkN2kY9xZyjt4/YrjT010vbvwlCzIcbyp0GeWvIHqGok+3jHi928U/TUcpZuJ9PsAo
         huJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1775527418; x=1776132218;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=sMZG1Wq6VOOWUWapU0zDNsI31QW4fzpP6mGBXi9ancE=;
        b=mdAXJsPYQO1xirdXejINBTJtJGjnqK44CY5hUioNGneaAd/jcpUvIb9BcfmArjLr1x
         5YSWxAuY+yqQdrEn8Z6UWMAuGvuedH3hm0mfY1b2qiLMY4DIVorTKM1ZwVjuvKsKEWfi
         QTYMcgWnxcZto9Z67wl0LwxU8ybLpowJolat3jhKusx5dBFLbgjUS0C0nfIWL1UTx7p9
         IDrce5r4ash4fMLm4AXlf2Qbu8Cn9OcpaOD/AZYt0oBlgmrmDAtmHhiDUH/nd3Dk9fMo
         SWSbPMgGNX3pQ0N9U1NcUEBxT8Oxnh1HpcHZzlFK1HykIcgGFERbEquty4kFTijcvQw+
         X8ng==
X-Gm-Message-State: AOJu0Yz94M9/MsA6SH7k3ggpVqw1ajBQtuyTy1aR1a5ETqQYQ3ZhXVYL
	79V86SHUuPuV23M2D7LLbHwQ2H5YXYPNJBd8BHGLuQSd2NuG1x/pbB0//7C6OpXbUb0lsnOjXEc
	8wJKEGnyIrhpX0I8UHWhtOkNWOLq18DUzRBx4dyARXxKTjuNCc8+TX4F6fZX3heBcIwuv
X-Gm-Gg: AeBDieuVqTF3wTNwDlY12qaKbg2PW7w3XyHT/wjybQb7W3kQaDhOnoG29zzmf3lUdaU
	vn1/ymPbRJBVAiAaSD/dRfB0dgy2JgR0bH14O2dDqVDEY5j0EqZdg9m9WeQ6LMxLQ3A+JfPPIy9
	qFAYyx5YUtOzqSvXzUqEQOhroap8rCz4vs6pl0l7f4S39cvnem7J4umZjWw/KxZOf6AFNGKU/VM
	EVvxU/F4ZR0kylPUdbiWxZykuMP5V5kCtOvAGzXHH+uajA8NTdeFa8t2s3TcXxg51VCyXBSDl/x
	ItaDf3H43oGUoMB1ryCAiWFXoUlXkKdBh+gcf2ULhextutuRnNVR+iU7YFG3LXGeXMHwOgBa7oK
	Talz9pfyyFOK508XG1CeCHmEbrMxfEySq05tFbBWnClie7Vc/QA80y6pnzdhjaR7W/ptN/OUGAs
	aciR8l99f35ujh2tqq8cH53epXWgKRvBDe36I=
X-Received: by 2002:ac8:5904:0:b0:50d:9030:c7fa with SMTP id d75a77b69052e-50d9030c9f6mr97837141cf.39.1775527418365;
        Mon, 06 Apr 2026 19:03:38 -0700 (PDT)
X-Received: by 2002:ac8:5904:0:b0:50d:9030:c7fa with SMTP id d75a77b69052e-50d9030c9f6mr97836711cf.39.1775527417931;
        Mon, 06 Apr 2026 19:03:37 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-38cd1fdd274sm37329721fa.14.2026.04.06.19.03.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Apr 2026 19:03:35 -0700 (PDT)
Date: Tue, 7 Apr 2026 05:03:32 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Vladimir Oltean <vladimir.oltean@nxp.com>
Cc: linux-phy@lists.infradead.org, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jesszhan0024@gmail.com>, Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>
Subject: Re: [PATCH v6 phy-next 15/28] drm/msm/dp: remove debugging prints
 with internal struct phy state
Message-ID: <okmmblz53sdgjwduiszsyo5l2hcqnxm3xq5yojbi6uxp7kmojm@jaz2a34av7ww>
References: <20260327184706.1600329-1-vladimir.oltean@nxp.com>
 <20260327184706.1600329-16-vladimir.oltean@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260327184706.1600329-16-vladimir.oltean@nxp.com>
X-Authority-Analysis: v=2.4 cv=OKEXGyaB c=1 sm=1 tr=0 ts=69d465fb cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=A5OVakUREuEA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=DJpcGTmdVt4CTyJn9g5Z:22 a=8AirrxEcAAAA:8
 a=EUspDBNiAAAA:8 a=VwQbUJbxAAAA:8 a=pGLkceISAAAA:8 a=tVI0ZWmoAAAA:8
 a=3ogKHO_BN1K2bhpmqR8A:9 a=CjuIK1q_8ugA:10 a=a_PwQJl-kcHnX1M80qC6:22
 a=ST-jHhOKWsTCqRlWije3:22 a=-BPWgnxRz2uhmvdm1NTO:22
X-Proofpoint-GUID: HrFPwIatastofkX8DkyPJo0kSoOM8Z9-
X-Proofpoint-ORIG-GUID: HrFPwIatastofkX8DkyPJo0kSoOM8Z9-
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNDA3MDAxOCBTYWx0ZWRfX28Ge/YhvhRRU
 RQ8iP7Gcw3NZ0X9hecwxXAI0AhvZpkTViDNde/BLN2GvHFOy4L4Ep+waDwM8Lue+BqSwBz6AKgR
 D+gWQA2w+4ptJ1N847K+U0maS83AMh7f02QyJ/kaj+Y13mNiRP+ohqtYxRG3+Wb6l3F2i6XQJTh
 hkjQzJsgeehNTIkA6IM8PQJQIWDFPBnIAJ5oaWRFM5PkaDVlwXnkPtwlSsn25M2NsGYY3oTHLed
 XJhQ3OS4jzi24XHilmxdIjUG1ig/PBN28KhuIb8CUaISeIVoW7ckTqNMH6ciGt33jLxwYwrHSdQ
 cJzqzeAiS5hY1IzlUPb2JvekAcdyr1fIlKIG5RG8y2GViXe8cGWxKy89lVhcTt7sJt91Kue0M2Z
 4wzgdQ6O3bm5B3/jjOBmrkTQhcGbhRL7KjufSRywktas0zIkByNud5XEdQE6R0ayUvwGTUYTNIf
 JUUyvdsOve8V/FdbdGg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-04-07_01,2026-04-03_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 priorityscore=1501 spamscore=0 impostorscore=0 lowpriorityscore=0
 clxscore=1015 adultscore=0 malwarescore=0 suspectscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2604010000 definitions=main-2604070018
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260406_190339_965825_2720E411 
X-CRM114-Status: GOOD (  12.94  )
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

On Fri, Mar 27, 2026 at 08:46:53PM +0200, Vladimir Oltean wrote:
> These do not provide much value, and will become hard to maintain once
> the Generic PHY framework starts hiding the contents of struct phy from
> consumers.
> 
> Signed-off-by: Vladimir Oltean <vladimir.oltean@nxp.com>
> Acked-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> ---
> Cc: Rob Clark <robin.clark@oss.qualcomm.com>
> Cc: Dmitry Baryshkov <lumag@kernel.org>
> Cc: Abhinav Kumar <abhinav.kumar@linux.dev>
> Cc: Jessica Zhang <jesszhan0024@gmail.com>
> Cc: Sean Paul <sean@poorly.run>
> Cc: Marijn Suijten <marijn.suijten@somainline.org>
> Cc: David Airlie <airlied@gmail.com>
> Cc: Simona Vetter <simona@ffwll.ch>
> 
> v3->v6: none
> v2->v3: collect tag
> v1->v2: none
> ---
>  drivers/gpu/drm/msm/dp/dp_ctrl.c | 18 ------------------
>  1 file changed, 18 deletions(-)
> 

I picked up this patch for the msm-next.

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
