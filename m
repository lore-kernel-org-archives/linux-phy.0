Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E75AA10D14A2
	for <linux-phy@archiver.kernel.org>; Mon, 30 Mar 2026 11:49:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lAjEAJL4ei5bzknT0EsuTbBErfjQH5fKDZIKGcfj3II=; b=rWKvJ8ipY2m2cb
	70qv2rBLpJuHuZXwKaPa1rYS9rqGMt8HXC4HEVFoaGQv9Hh0g5ueZSGonWX1Nsup4P/VY0LEHzUca
	WRh0MQ0QleoyEZAMaPSEGzij2RuAbzUnMWktHR61c30NyK5GIfhuxaGPFWSdGyoxmhJAnW2DEn3JK
	jd9ruqAQg2Us0khRUDDoSP7nLmf+dT+zMm6I+6iNZfch29Jmak38GFGqXFyJr4S30vl/5//kvdAzC
	yizSSpVL94r3fUHW9tcxgAkJiRinaWyAm3KTC5qF75qK646HfG712kaaUz90QE7eQkxn2kI0oq2Bp
	N8aT+jrxbLGNqC9DN0vg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w7B7S-0000000BBqN-1ihF;
	Mon, 30 Mar 2026 11:49:22 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w7B7P-0000000BBpy-3hwN
	for linux-phy@lists.infradead.org;
	Mon, 30 Mar 2026 11:49:21 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62UAGcui3173906
	for <linux-phy@lists.infradead.org>; Mon, 30 Mar 2026 11:49:18 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=hebXS8dFlHSczLktf6Y+/HKY
	041XZ7QQsM+NHoi8IeA=; b=PDM0g9Xys8JS9E0kCWkQkTc700SzDc1JTkxu5Qpz
	9ekcybnN9tccvtsIO8d0ZPQ88RvcHbMQD5T/H0GaX1VQ1i33spid+sGOqNbiG/5Z
	y8fvrTNtkORjQBKbOD0vuReX3mNc+mmsARDRAAz9SSt+jvkgfeIt6qwnLhkUBS+i
	LnXURhZi3291MV50+VsM7acoEohDXa7VO9N7WCGlev8exGag1jF5l4b9xN/9MQ0/
	J1U9+uyKDYk+cvHpRzMdfFsFubnLFfhJBA1iXDtJG3U96CrdyB6OZM3HiGxVvqRm
	4l4o+9TBVVAlAF0PuBBS82YU58tb7z+XPYQI+zFOMFdMpQ==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4d7q9h09g3-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 30 Mar 2026 11:49:17 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-50b34223670so80678261cf.0
        for <linux-phy@lists.infradead.org>; Mon, 30 Mar 2026 04:49:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1774871357; x=1775476157; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=hebXS8dFlHSczLktf6Y+/HKY041XZ7QQsM+NHoi8IeA=;
        b=Jq0qr37w1xx5xLcaJV7Ggf/lUJujiHbCV3KTWl6nOSHL1jw0b9A8Cjw5xEbIERtExi
         /Wn/cqakq17De3gLywvE7UCrTTQs1+RQUHGIfMbsqHunIxPfiUj4Rc1xhfj5lBAPvUR5
         WwqbaVSObui/MaVqUIc7xveVwVGboRzTK2WAQBBV7CQ5yIKIXUpvDdt9nHb8GuYl9qb+
         XzDWEs5VA6OCgtY2ajvah7RoewYCmlec4WoypuPTpoEAB/489PN2TzLNcmwwD8tMs49d
         RlS/wHwYW6Fq0GF8YyEMcPvFrL6cFwCVJE9Yq91Nshkn38Zmx6eOo2ixi780E0F2WZix
         ahKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1774871357; x=1775476157;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=hebXS8dFlHSczLktf6Y+/HKY041XZ7QQsM+NHoi8IeA=;
        b=Of2ZKe68WWqalxe8Ckvtgofq8EUQPhARY0nTherz0ZXRLDp8HUZ9//4apBwRsKjn/j
         rGFvPjYJMK3q6dCtP5CV8Vo5BwCqfldcVag3s8wZEsSSezGMQoz2FFj/c0ChrOuttbyb
         t/ihMUh13K40kCPjgkQY2CBH9PdMaMAqnwdOGAL28d/6BH23ioFKCaAB21V5SxRNdY4c
         7tuekDRRkMWQblx68Cugj2usabvlbKpHELyqFLIulBwRvpmylqOn8BKNLHbSKj7ahFMZ
         2dRur2hjZQwMjYZIUKdacqJoAFyZ3V+8KuHRTt6a3y2169m0YFvBCwTQNM+hTdStjwaY
         QWyg==
X-Forwarded-Encrypted: i=1; AJvYcCWLnm+oSUTP4QvMBFP8dPddFJfmX6c+8YP87Juuv5yjsUCj+WeUTY43cdsgn5lqWry7jCYm0cbBvnc=@lists.infradead.org
X-Gm-Message-State: AOJu0YxaQv95f602RW8PlIQkRCYGGEyNWGsMmno2sfvSMGiVouYsIHEX
	vKlUNTwh5Lef5IHvrUw3Fe30g9vg9RoNID3BgeF6r8VhwZ5q0fT0qFZFqeNytcihvyMdXXhz7k0
	A91wnfKpHQZQZA2zbONa7pxtEsNpjBp8UmGt6OW9hyIwcsy0p5FEE4wRHRp9vMv5GVBu6
X-Gm-Gg: ATEYQzwaKowDBbBo99lilYYqfmvzxgkiNqcPzulM+2BvUqhg5dVLJoIDbduZ+pJKNuY
	0VH165F6MyGrauGzMY/O486RHloPF8vWj/QA2+u+5KtbidOUPVeLOz28vzxigHvk9gXNvVWBcuT
	Hqg81Xl6OHAzhuKKwTmhoyNmyeshPNZc00/m/IhpsrrFHFKrkP0eZSfxoZmlPlkDoVq8fVALbtL
	ZruKkBT/aQ5YaXO6UPOz9T7isWm2yz5wu7Vbfvdu9Ty7NuSCvw5qVL9cU6sItK/vn+F0X6ydNtQ
	o1qMCJxnb+Y4lKMBJywYXPqLZTIKCwpiW7qz1SSe1fNrypS1lIkfxD/5pyBjjEL/nc8KK/Mbmj4
	ZUHqYPp/ob+ZAT7i4oaMqi8NW2V9PizVjbUCSGYXV40lGw7FOdSehm3LlzYpiE7J5BakxExLusJ
	dd9wRioV1NE6R66tsHEOtX/rVbcqu4WTj0h30=
X-Received: by 2002:a05:622a:295:b0:50b:4e65:95d3 with SMTP id d75a77b69052e-50ba398eabfmr172138671cf.65.1774871357272;
        Mon, 30 Mar 2026 04:49:17 -0700 (PDT)
X-Received: by 2002:a05:622a:295:b0:50b:4e65:95d3 with SMTP id d75a77b69052e-50ba398eabfmr172138191cf.65.1774871356694;
        Mon, 30 Mar 2026 04:49:16 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5a2b145642dsm1615209e87.65.2026.03.30.04.49.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 30 Mar 2026 04:49:15 -0700 (PDT)
Date: Mon, 30 Mar 2026 14:49:13 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: Bryan O'Donoghue <bod@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-media@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH v5 1/2] dt-bindings: phy: qcom: Add CSI2 C-PHY/DPHY schema
Message-ID: <gcu6qzsoff2fox3nbytegyikajn65ae4ekowcn7bs4x2k53vao@rykmxndzzhlu>
References: <7712fbdd-a225-49f0-aeb9-ebcbb9d5abac@oss.qualcomm.com>
 <da3ed78d-fb5e-4820-95d6-527d540cf03e@linaro.org>
 <1f38187a-9464-4aa9-b70a-03b767349d56@linaro.org>
 <c5278028-dfe9-4d09-970a-a25977967bdd@linaro.org>
 <016c03b8-27c3-41dc-a630-8e7095db1f88@linaro.org>
 <456ded59-d13e-4b61-975b-97ca48b5e771@linaro.org>
 <RAPaPhpxA39W0ykm-Cr1KaDiJKpRqdQTXUeEmt5mQn4lJBHEGaIS010ejjmhUYEBsHjzrTX41Ek9zLU2bae_YA==@protonmail.internalid>
 <76ea03d0-d41b-4880-a48c-06570eb089ed@linaro.org>
 <0101d8bc-1ae8-475e-bb9e-cc1e16db87ec@kernel.org>
 <6d5ebab6-3c4e-4a1c-9578-6e926cbd96de@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <6d5ebab6-3c4e-4a1c-9578-6e926cbd96de@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzMwMDA5MiBTYWx0ZWRfXwP2pf8YjeNQp
 kPNXBpfGlyGSkahX6/1MeGm94peVMCJgHE459Na6Qa2XCLzir/wP8/J1KhVhrs3kI3YoMCV6wPW
 rIcLm3RVqP1wDvCKbE54HM56mH5iIdy7aU60tjvmKO86JAS3KkwZ/+f9M6BszaGLJeFyags/4iE
 WZ1HHeC01awm/mA89EuEMqeYS+HATWemhpP80k9PzTGS9WYNzc4t7p2fQf7lM5GkyCBKUI4HsmR
 AHvUM/cJR4PQmI4b0oFvTwzsl9YvPQCJAXQuvREO5O8SUlgmK5AklLOYxqb5Y2hnC//McLMV9/Z
 RyE1l4B1nBsnSRXFlwIgq8SCZdNEYBlY43fEnuud3Km1DygALKImiCXq1dcSxDXxQyn9ZiZfkYM
 9j2CXwt9mlHldENhIoWywhJ0GlHDbtw+8RK85HY35oRlXxTNKGpWTyE4BZDn5428WRTxG7H3y86
 ljEic/X+vLcDse1D0DQ==
X-Authority-Analysis: v=2.4 cv=AZS83nXG c=1 sm=1 tr=0 ts=69ca633d cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=3WHJM1ZQz_JShphwDgj5:22 a=f9JiygmAj-6OnV0y8IgA:9
 a=CjuIK1q_8ugA:10 a=a_PwQJl-kcHnX1M80qC6:22
X-Proofpoint-GUID: eerhnVI0p46c2xyWBt0A_xrvvG9jUdXZ
X-Proofpoint-ORIG-GUID: eerhnVI0p46c2xyWBt0A_xrvvG9jUdXZ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-29_05,2026-03-28_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 phishscore=0 priorityscore=1501 clxscore=1015
 impostorscore=0 suspectscore=0 bulkscore=0 adultscore=0 malwarescore=0
 spamscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2603050001
 definitions=main-2603300092
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260330_044920_086503_CFB27C24 
X-CRM114-Status: GOOD (  27.59  )
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

On Mon, Mar 30, 2026 at 01:34:57PM +0200, Konrad Dybcio wrote:
> On 3/30/26 11:25 AM, Bryan O'Donoghue wrote:
> > On 30/03/2026 10:17, Neil Armstrong wrote:
> >> On 3/30/26 11:02, Bryan O'Donoghue wrote:
> >>> On 30/03/2026 08:49, Neil Armstrong wrote:
> >>>> On 3/27/26 18:42, Bryan O'Donoghue wrote:
> >>>>> On 27/03/2026 15:28, Neil Armstrong wrote:
> >>>>>>> To be frankly honest you can make an argument for it either way. However my honestly held position is analysing other upstream implementations connecting to the PHY means we can't make the PHY device a drivers/phy device - it would have to be a V4L2 device and then for me the question is why is that even required ?
> >>>>>>
> >>>>>> This is plain wrong, DT definition is different from software implementation, you can do whatever you want if you describe HW accurately.
> >>>>>
> >>>>> I'm not sure what point it is you are trying to make here. Are you trying to say drivers/phy is OK with you but you want an endpoint ? If so, please just say so.
> >>>>
> >>>> I'm against using the "phys = <>" property in the CAMSS to reference the PHYs, a "PHY" in the classic terminology is tied to a single consumer, and if it can be shared to multiple consumer you must model a mux or whatever in the middle.
> >>>
> >>> The CSIPHY-to-CSID routing is runtime-configurable and is already managed by the media controller framework.
> >>
> >> This is not compatible with the PHY bindings if you don't have a defined MUX device in the middle, it's wrong. You're hiding the muxing details in the CAMSS blob node.
> >>
> >>>
> >>> DT describes static hardware connections. The dynamic mux is a software concern, not a hardware description concern.
> >>
> >> DT must describe the possible interconnections between the nodes, if a PHY can be used by multiple hardware components, it must be described.
> > 
> > But right now the CAMSS block is described as a single block. There is no CSID device in the kernel _yet_.
> > 
> > When we break CSID into its own block then fine, lets have a debate about a mux then but right now the "nodes" are CAMSS[MONOLITH] <=> CSIPHY there is no DT CSID device to model this to.
> 
> Let's take a step back - since any CSIPHY can feed into any CSID (at runtime),
> the resulting nodes would either look like:
> 
> // hardcoded, m may != n
> csid_n: csid@1000000 {
> 	phys = <&csiphy_m>;
> };
> 
> or
> 
> // determined at runtime
> csid_n: csid@1000000 {
> 	phys = <&csiphy_0>,
> 	       [...]
> 	       <&csiphy_n-1>;
> };

I think the bigger problem is:

&csid_L: {
	phys = <&csiphy_M>;
};

&csid_N: {
	phys = <&csiphy_M>;
};

aka split mode.

> 
> or we could store them once, centrally, in the "CAMSS_TOP" node and
> pass handles around as necessary:
> 
> // camss "catalog/manager" driver/library provides CSIDn with PHYm
> camss: camss@10000000 {
> 	phys = <&csiphy_0>,
> 	       [...]
> 	       <&csiphy_n-1>;
> 
> 	csid_n: csid@1000 {
> 		// no PHY references
> 	};
> };
> 
> Konrad

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
