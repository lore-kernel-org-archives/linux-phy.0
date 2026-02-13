Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D4A38EF48C9
	for <linux-phy@archiver.kernel.org>; Fri, 13 Feb 2026 17:47:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6JqUjZlucm0Sxk4UJMgKiBuvtnN4DcBE0dpybNHlLog=; b=Rq5jJ3Jzmd4TR+
	BC+sBNlio4FjyLIf5kp9ELc7XGtjxxcUHh8V1G7xu5c3vxZnp+incDysFlOjz16NyvItx4NZ2YEeL
	7iqKxU29KMYV++QheoFAyRLchVHmkUs+VdTESqpjK7KjPYOnULgbTkNaxCeXE0KM6GA1qHJ1Q7JmO
	Lts0nc8qMdAO6Q0L/Mm6K9DyWJjbw9nV4NqEKwadwhL/NkDH7djSJAJRG5mg5q3DF0kTYgKTROzfC
	uyfo5IcMmu2f9Gv1pvCcauldxJTLkk+DRJRC7z8C/MCs4G45/aG7JGCmN5iftPjWoNW3H7cpl0WQY
	eGs13gvN7NJnCTEIQAtQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vqxGa-00000003lYs-1JYt;
	Fri, 13 Feb 2026 17:47:44 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vqxGX-00000003lYU-1WEM
	for linux-phy@lists.infradead.org;
	Fri, 13 Feb 2026 17:47:42 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61DGlqpD2733506
	for <linux-phy@lists.infradead.org>; Fri, 13 Feb 2026 17:47:40 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=xcyN0LOhlarLRnTNU59Z17Ws
	nFLX+UBuYZSBmOeD1gs=; b=PXy4vkHbxfrytM+G17jlpnsxr5rBvtluHmmSvBMg
	Aa/k8PMx/tDrtA/BDfz1MlePLDM0sxOMQfijY6CNla2LpiW6ux/pNSRIH5Ye4R2c
	Rj5fXPT3E8MzUaeD4urFRJwTtfYnIYgER0rsrRJd6X70Ax+v70T1twSFV7Kavrpz
	NufpxyRPPFU8Yde8dAC8wuvMV0ppA2ecT2sqHKe90yIr/FB3NQXqGBMm/AUsWCj6
	fpeuTTEHS6pQZyRX2PB0LmEqiJBQiBSEYA4xCwOc7tt/Pp5jVm30EMM6PuPWkTva
	nWoPb85a0caUKu3Fj3bx8V8pSrQ0lktIAI8Z9MhvrtFT2Q==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c9s6wujnn-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 13 Feb 2026 17:47:40 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8cb413d0002so358955585a.1
        for <linux-phy@lists.infradead.org>; Fri, 13 Feb 2026 09:47:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771004860; x=1771609660; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=xcyN0LOhlarLRnTNU59Z17WsnFLX+UBuYZSBmOeD1gs=;
        b=cve3sieRGD4fbQI3BP9qTmgbnZ0sb60R1aBXcX0Vtnxy27tExdwMUkrI1ZF8nlJKoZ
         f9Mxhkw9N9RyJhPdncqISmYblg0utXZwaeRIqYVBd6Ek2bg2jFw/5D53G42flxtXVo2A
         a+MooURrYvSTCcq/s/VekLQCizYPXZNhFNXgbIm0oJfJvuqqpZFWOQ32yVMrM+shf7fJ
         vmE+fG3hy5aRXP2j/zH24UTQV8sXVnQbBMxMIqj0e5svYIEVSMeIWuD5iB/zM8tpB43d
         YryWWr7Ent0kcwypiG+fQj3hJobswDjYScwsTPctJNVgpHezSNsvtG5L3kPi+l1kjh8x
         KdXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771004860; x=1771609660;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=xcyN0LOhlarLRnTNU59Z17WsnFLX+UBuYZSBmOeD1gs=;
        b=Rx8a8Ikp5hJHl6ca393oFpPqOdmTUZYstlGx02t2YmSl975Ob3bsAxD3467sS0o+NW
         472dMtfYUIhM2HGeVXrw1Oa60NcmvFxnNtSyF2dG+jrj+cc7YdIUceKe7W1h3OUUK1Lo
         v+Vy2cABs2qdk9cl7nFOh7aLFW15POH/ReJMECVtG/LYjdEX14aYXTdU9AEpdT9ECoX9
         UZL7AUHdIPFr+UzwOrUQSFTZvPHgQ3Cb0A6Gudjte8FHEjb90vPesOmDWXmdAsg7iaNL
         TzMv4VGOzV6U9fEI60BUITLO7r14EgMBcWS0VwLr1j4DtVVFWOGrEX9gsvnNSTKZvZQS
         mjhw==
X-Forwarded-Encrypted: i=1; AJvYcCUsOpIIDfAdOi/YxhB+VzGtT6kx2J/Y8xb8+/6GFCc9fLwhA+A3LXu9meKMoGZzMVnZC+KUDAUUpBQ=@lists.infradead.org
X-Gm-Message-State: AOJu0YxVWmzrc6SwchXSIPdihrOdqX0TNj4l9TU31wU0hs0PpC9+g4/h
	0q9HdTMRy+S7xCpB/Fg4Wafi109zyytkahYqG+4GLVTuIuTY0WasIyM6LRlUAeU5OXbU3oIKtLv
	bxoJACjxTRjBbC7WfM29e7NK0EDc2Zw9vC1YL6Kvyf9nLNxwebe5KTDz9r8C1/tW/D3KJ
X-Gm-Gg: AZuq6aIK4BoEcKEiZjBVUrTopMNhD11FZB0BDYzLObgc01FKkTYtSM3an2e611LKMlT
	veTQxKXVUVAMeoBuIhN7YnUBXuXP4/7BlwYhRN+tMjDAVvuieQRTiZI16lPZTcPUOMe92ZoI4pM
	XWhs6TTG/0iNJ1OSvUorOwXoCmgUCgUJqkVihuMEOQIh2MNqblFIOslaOty7B6Gp+RXrwoU6B2Z
	6r0Fgz6/8/nLLuusuj8hquiYVd+ewl3jkTj1Bw9awgOMOMIqvLnax0RTH+cQAziU6TCH7xz2oH/
	Pq8zRuwybWl8MwKBlgs7BDOxIq+do3mO3DcCtWEjeHWidBqQCo90TdUuRUQb/hSqj640IYkSBmF
	h/LkjSf/ShsS6J4yER7z/Rl0EFa3W/AVIi5oXkeqweqlLmLebdYW3xvqORz4OxdngbxSG+a1TNk
	mrDP1JBHAiRaz3euWt/tYk32ieY8QNjXB3PWs=
X-Received: by 2002:a05:620a:4690:b0:8cb:3143:64cc with SMTP id af79cd13be357-8cb4acb44e7mr115286785a.42.1771004859607;
        Fri, 13 Feb 2026 09:47:39 -0800 (PST)
X-Received: by 2002:a05:620a:4690:b0:8cb:3143:64cc with SMTP id af79cd13be357-8cb4acb44e7mr115284985a.42.1771004859119;
        Fri, 13 Feb 2026 09:47:39 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59e5f562f8fsm1675143e87.5.2026.02.13.09.47.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Feb 2026 09:47:38 -0800 (PST)
Date: Fri, 13 Feb 2026 19:47:36 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Qiang Yu <qiang.yu@oss.qualcomm.com>
Cc: Krzysztof Kozlowski <krzk@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/2] dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy: Add
 vdda-refgen supply for Glymur
Message-ID: <hcslao22elcihjw56ltu4yo54lotheqpikzsrq6tia33di4fs4@2ygrbwhcfx2a>
References: <20260208-refgen-v1-0-87ca84fd78b3@oss.qualcomm.com>
 <20260208-refgen-v1-1-87ca84fd78b3@oss.qualcomm.com>
 <20260209-magic-conscious-seahorse-b81c8b@quoll>
 <aY1Jx5J8x/OALk5M@hu-qianyu-lv.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <aY1Jx5J8x/OALk5M@hu-qianyu-lv.qualcomm.com>
X-Proofpoint-ORIG-GUID: fnwEjD0XQq-xdVJXouDbCFuhAtFw4ff3
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjEzMDEzNyBTYWx0ZWRfX/A6/DmaolmaK
 NLpS/JC+kPhpuqZhts7Ut8zRPEwUDWPqlo1qJnGumDpI8Xasv6OchGE3khzn7Pdocx7gJBKjHk7
 11QBgCgMwyVLIdnycFsIP4vp0KoUnKr75aZIV4ripUCQdfX3BokUfBW6fGgk7Cbov3IjESiR21F
 rBr46Hh5XExGqgpnF9J3SZq/3hdcK9E7gxtzKcuPL4ENJipCN5hjN7DSO2Eob0p/RpCBk/z5p0b
 7YG9q/JaNDrWLX1imgfjlTbajEYRGnMfBHi7udxhlV3JCzfHqUTP5OvvcJC8E2DV37mRcqvLe+J
 SlrWpROJXFCBhWJVXrtOm/a5+XIk/IiIfT+0swzdG5tQMyr4wlxbckcobRKdL3E/p+n+M8dw7PG
 WEmM7LT0VprixarGw4hKvD3XNNwSbClUjIVRSEynMeMrSqra9D6p9yzcqE8htgv6ASyPODzymCf
 p4p7/ItxyYsbbEInyWw==
X-Proofpoint-GUID: fnwEjD0XQq-xdVJXouDbCFuhAtFw4ff3
X-Authority-Analysis: v=2.4 cv=CLInnBrD c=1 sm=1 tr=0 ts=698f63bc cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22 a=4XAFBGz2Hh_vFV4knqAA:9
 a=CjuIK1q_8ugA:10 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-13_03,2026-02-13_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 adultscore=0 suspectscore=0 clxscore=1015 lowpriorityscore=0
 malwarescore=0 phishscore=0 priorityscore=1501 impostorscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602130137
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260213_094741_406570_D9DD62DC 
X-CRM114-Status: GOOD (  31.07  )
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

On Wed, Feb 11, 2026 at 07:32:23PM -0800, Qiang Yu wrote:
> On Mon, Feb 09, 2026 at 09:06:23AM +0100, Krzysztof Kozlowski wrote:
> > On Sun, Feb 08, 2026 at 08:49:39PM -0800, Qiang Yu wrote:
> > > The PCIe QMP PHYs on Glymur require stable reference voltage provided by
> > > refgen. The refgen itself requires two separate power supplies:
> > > vdda-refgen0p9 and vdda-refgen1p2.
> > > 
> > > Since there is no dedicated driver for REFGEN, add vdda-refgen0p9-supply
> > 
> > How does the driver matter for the bindings? If I add dedicated driver
> > for refgen, then I change the bindings?
> 
> Yeah, I know that dt-bindings should describe hardware, not software. But
> what I meant to say is that the refgen is different from qref which is
> controlled via TCSR registers and its LDOs are requested to vote in
> tcsrcc driver. The refgen doesn't required register setting and it doesn't
> have dedicated driver, so we vote its LDOs in phy driver. I will avoid
> this statement in next version.

I must admit, I could not find references to the refgen in any of Glymur
PCIe-related HPGs.

> 
> > 
> > There is qcom,sc8280xp-refgen-regulator so why there cannot be
> > qcom,x1e-refgen-regulator?
> 
> I think we can and it seems better because the refgen for pcie phy also
> supplies reference voltage to other modules like usb. But I checked the
> qcom-refgen-regulator.c, it contains some register settings and there is
> no LDOs voting. I'm not sure what does those register do, maybe Konrad
> can provide some backgroud.

Those regs provide voting for refgen, because on those platforms DSI
block doesn't have a hardware vote for refgen.

> But on Glymur, we only need to vote LDOs. So
> what if we use a fixed regulator in the device tree to represent refgen?
> We could set refgen0p9 and refgen1p2 as its input supplies, then the PCIe
> PHY would just need one refgen supply reference.
> 
> - Qiang Yu
> > 
> > 
> > > and vdda-refgen1p2-supply properties to the PCIe PHY dt-bindings. Use
> > > conditional schema to restrict these properties to only Glymur PCIe QMP
> > > PHYs.
> > 
> > Best regards,
> > Krzysztof
> > 

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
