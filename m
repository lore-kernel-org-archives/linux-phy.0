Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D786606A330
	for <linux-phy@archiver.kernel.org>; Wed, 11 Nov 2026 14:06:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=DB69eerW;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=DGfjdUv4;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=hWwieYS2
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=a6yN7qEIoTslJtMlFBrync+Z3IySoiLZ/Gitzm/qmgc=; b=DB69eerW81BKNWFFnPCuv8faPs
	y5pTYiAU0o4f/4wr8H23/0uzdAImX/nRO0MaDVMu+r6rpsIyvxJcYQKZXqEGiI/gIbGNWPUE9Fkzj
	2700+qcL0XfuiopKEatUkM42EJdqNTdjOfx9zrqXYqjhkZAer02xxnCrvoW041dK+XTijmQ0/qIst
	0c5kPDAbQw76QWNqdxKQVxSLxnEl2V7dyr9GHwxxqJY2zABrYI2c/qDrg/cwZESHpG+FBbomuehsQ
	OtuWOZIWjysXayJnqXqPbrZi/OoCO2w6EXCxO7zI6oWThUBltj9D65xuHkCHBkoY+yMHFC9TGRLcC
	eGtm41yg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xR8yR-00000006ukV-0iKd;
	Wed, 11 Nov 2026 14:06:51 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xR8yP-00000006ujx-0AnO
	for linux-phy@lists.infradead.org;
	Wed, 11 Nov 2026 14:06:50 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6ABCZ3wP3292085
	for <linux-phy@lists.infradead.org>; Wed, 11 Nov 2026 14:06:48 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=VNI21V2lgtz8Hzxic3v5KFi0
	FrkQQXKocGAVFanNboI=; b=DGfjdUv4+0wwjmeFWoYwb2ro+r/udE3aAA/oqPIw
	ZKWbQgx2p9MmF/XtqTK8XexmCYHJOR7R/XRdRSTqGcu0HBlrXXXpt3/Nd5VS6/kO
	lso3tYXcgIEoYmwFeRDrpKM+UQlHiFM1zwieAElsE+Vv5Rc4IwnfgZZpxUtudSin
	lBcwKuyvjdygaE4mj4rCSyRdR345eGIajAF21QoB8T4C/Kce8aLTEjUnxDmJWlqz
	WW+3dMRg+8ADOF57x7GKIkKYuspxTxafAMVTkWNATRAyS5cen7N/CbJdz6xOeoKF
	1Uihh/sP0TXwyTHX6d6U899uXiR5q5j8kX/SRUFNbU6uMQ==
Received: from mail-ua1-f72.google.com (mail-ua1-f72.google.com [209.85.222.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hvdnp2sqc-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 11 Nov 2026 14:06:48 +0000 (GMT)
Received: by mail-ua1-f72.google.com with SMTP id a1e0cc1a2514c-9806756ea40so2439050241.1
        for <linux-phy@lists.infradead.org>; Wed, 11 Nov 2026 06:06:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1794406004; x=1795010804; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=VNI21V2lgtz8Hzxic3v5KFi0FrkQQXKocGAVFanNboI=;
        b=hWwieYS2eCtAQEp0/CyOnjEpK1kZR/yfk34z6t84zejcJvAxDY9g89nCNamQmmRl2Q
         lQm0i9L48z28v4s7t15tAT9L7egQ2LG5V6Uo8rB77WvZ7x3SBPNNa9vT6/Xweo12asaU
         dVt+dnyIz68vMguv2SJTPVNzofu/5MLEjgD2+FWBd21RmHbtiheDYz+0t+l7LmYmCoiv
         DAoirTTiUV94/h4vuQ26FMCXC/buQEBZAH5o1/ENNwDkHsi7zlmbgIxgI34BPbK/qZb+
         Iy9zJNnH6xqKWRrbzmjvR6z4ar9MTknKhaGbHeE2fnkTE89vWbM5XG4FYAd83zMV4NRJ
         xR1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794406004; x=1795010804;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=VNI21V2lgtz8Hzxic3v5KFi0FrkQQXKocGAVFanNboI=;
        b=SxP5VSndpobOcGk53B+PuZyb0OJEXZVAI1411tLIwBYiTKsDIOwDidduMbeiNwtpjy
         C6zSRA/2XFvwcoHc7U522ny9Y/jNTl+vjR+H+qVzJ+OqfoyhiJOjZ8hD9WWAob4q0/xW
         pzdk3WtzYUf0Izd4nGtaJKaLADyWSQwja0E7XjswnxRd/ud3k9RYMLwmMYc9paah9pmK
         ITWN+gIvTIrJlYm4E9pO5nqTLZKegxvYNFFHZHowZ9sMWISNjRENRK4MZVo4q4+oxrsT
         i/jtgsXS+xrkWVS909nXP0Aiu/SyY71oX8dQl3Z/g39ZfgeTOl2ISZJNxAyuD1ZNRRRd
         ePuQ==
X-Forwarded-Encrypted: i=1; AL+hErE81mT9zUI/Uk0F1+JWlSPzDArkj99oDqbUnqhyO/lhcabhBct8u6pN9YOC7LhsHOZoz/5hu68gcp4=@lists.infradead.org
X-Gm-Message-State: APuU4Z+hULDl0KX9F4IHc9R6wt1WHqezvcNpAJCAAFCuuv2PhoTUS9nE
	jajSTZtmYZFownHQu6NhIG+TfOa6L2ZA/60gWqisqaXd6nbv0tDfFJi/BtZY4CJKfuN1OxcNtUn
	rBGaRCXPWglXm2o+yQMX8/MHvUg2ybxB+e/IgPGQUNcKRx9p9+87BdBsaohAcY/mN5OMq
X-Gm-Gg: AYBFou1AueC8SD3czcBJk7SfDkVYfS4MFR2s1tW73DDfJMhunAXCeCL3uo2R64g6++P
	t6gBNW9vZf4/0Toee50mMy/JPD31wl/PAo3CgcjfigqrcqJvH3BdJ28Y5Ui1YDzYx53aq+IYpFS
	ax/28zyDDUATW7fgY1Lva4/YxV81f9r2CxFnX9lsvP9PG4MeBGJ1w9vXCFvoBxFUWwIGRUYK/I+
	Kv0xzK8aeYvcuTDhvr1CYZi5XH/V/7L/5qXQMb9BpGibLm8UH7xpy8b4CEknnsSCEX4SEgdYuhu
	FjugbQUZeRtoLKzTaZxQVyDYgmhRKq1iZll1U9Gp46uurUaUg4CNAFYzl+VCEu5iyJYv7T9ZJq6
	HSon2uhZVesg3fYF5ZOoQhy9diSvucRZOEdAlkuLhZU+7PTI/J/D0evviIPYdnCPVe6huYlO0qW
	RzIA2N0A9AYs7dsPDiTbY5ZanaxYEcqFfjZVM3j7aeXsMSG+KSvA6nTXXTkWih2w==
X-Received: by 2002:a05:6122:179b:b0:5ea:d10f:2394 with SMTP id 71dfb90a1353d-5ee1c40c764mr813245e0c.10.1794406004260;
        Wed, 11 Nov 2026 06:06:44 -0800 (PST)
X-Received: by 2002:a05:6122:179b:b0:5ea:d10f:2394 with SMTP id 71dfb90a1353d-5ee1c40c764mr813200e0c.10.1794406003823;
        Wed, 11 Nov 2026 06:06:43 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5c159702ae0sm815407e87.20.2026.11.11.06.06.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Nov 2026 06:06:42 -0800 (PST)
Date: Wed, 11 Nov 2026 16:06:39 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: naidu nama <naidu.nama@oss.qualcomm.com>
Cc: vkoul@kernel.org, neil.armstrong@linaro.org, mani@kernel.org,
        robin.clark@oss.qualcomm.com, lumag@kernel.org,
        abhinav.kumar@linux.dev, jesszhan0024@gmail.com, sean@poorly.run,
        marijn.suijten@somainline.org, irlied@gmail.com, simona@ffwll.ch,
        Saurabh Anand <saurabh.anand@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
        quic_riteshk@quicinc.com, quic_vproddut@quicinc.com,
        quic_mkuntuma@quicinc.com, mahadevan.p@oss.qualcomm.com
Subject: Re: [PATCH v2 2/3] drm/msm/dp: Remove redundant force_link_train flag
Message-ID: <gfzdwaeouexratptiktpzodi44x6ztsfttqajzr5wxtrluyqjx@axwlv5jlakcc>
References: <20261111104434.2222182-1-naidu.nama@oss.qualcomm.com>
 <20261111104434.2222182-3-naidu.nama@oss.qualcomm.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20261111104434.2222182-3-naidu.nama@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMTExMDA1NiBTYWx0ZWRfX1+4vFXhQ1saB
 SUQsGimjGKkdu3ymAhaYBkhblfmiTYbFoJLWlpySrb0cg6D0fJ9W11HNamZSQhm5H5zkQW/yp80
 VrT5HWGdS+thEZTulFZSzmJunczKXrw9RfRoOzBNZ+cJk5eIuvuyATHjhGnxZgxlctD/0+YKd3k
 xJfBC81fXmSFfApJefp4K/nokmmcKiIP/p5gwjuVXZ2A6n9jFnJYaTRxwml/QnQgWuAf5W62K4J
 suqyzmAnyWXYIZYdalcHe/2ivhu4V9EzOIxRxcqQPNBZhkUZCgOzBQYjWz5sL8Blj8vffW33Cu/
 GEq4NbX5/xAk4qo8McGOgYQLVM9v1gZotu+Q9rGeay/ltRUht8G40soR/KpGBhw/oYxOhViQzDA
 RbZH3DooKB+G9+0pv7JUwg6AR3t4xOq4+iGj8e45PJBxWMXC2til8/g3GpT9p8+0HUNjRUgsI8b
 Vjz7TCAMiV6YGD71wnw==
X-Proofpoint-GUID: nWQw-Ukzj2NyKLQv5AEDxGsCrXH78QqC
X-Proofpoint-ORIG-GUID: nWQw-Ukzj2NyKLQv5AEDxGsCrXH78QqC
X-Authority-Analysis: v=2.4 cv=NK1AaE6g c=1 sm=1 tr=0 ts=6af47678 cx=c_pps
 a=ULNsgckmlI/WJG3HAyAuOQ==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=zJRp6_cAMcgA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=eoimf2acIAo5FJnRuUoq:22 a=EUspDBNiAAAA:8
 a=uVK0n7524QBmBBgzDoUA:9 a=CjuIK1q_8ugA:10 a=1WsBpfsz9X-RYQiigVTh:22
X-Proofpoint-Spam-Info: AW1haW4tMjYxMTExMDA1NiBTYWx0ZWRfX28XUes6ZwudP
 GcVBgJxciYllDQ93dx/saQMd1P13e/5evBSfVPnx3bnZtpFUPPJRx8sW9ADk/kFq2YSmz6zl3c1
 TXIS8EgqVN5HblehzDBvNLDw1CuFbV8=
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-11-11_02,2026-11-11_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 spamscore=0 clxscore=1015 suspectscore=0 lowpriorityscore=0
 adultscore=0 malwarescore=0 priorityscore=1501 impostorscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2611040001 definitions=main-2611110056
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261111_060649_085863_A219B52F 
X-CRM114-Status: GOOD (  14.78  )
X-Spam-Score: -2.8 (--)
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-13.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

On Wed, Nov 11, 2026 at 04:13:54PM +0530, naidu nama wrote:
> From: Saurabh Anand <saurabh.anand@oss.qualcomm.com>
> 
> force_link_train is always false when passed to
> msm_dp_ctrl_prepare_stream_on(): the initial link is trained by
> msm_dp_ctrl_on_link(), and the flag is cleared before stream preparation.
> For active streams, it is never set.
> 
> Remove the dead flag and parameter. Stream preparation still retrains
> when channel equalization is incomplete.
> 
> Signed-off-by: Saurabh Anand <saurabh.anand@oss.qualcomm.com>
> ---
>  drivers/gpu/drm/msm/dp/dp_ctrl.c    | 5 ++---
>  drivers/gpu/drm/msm/dp/dp_ctrl.h    | 3 +--
>  drivers/gpu/drm/msm/dp/dp_display.c | 4 +---
>  3 files changed, 4 insertions(+), 8 deletions(-)

The same SoB comment.

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
