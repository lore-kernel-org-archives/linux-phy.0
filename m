Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4F46210706D5
	for <linux-phy@archiver.kernel.org>; Sat, 14 Mar 2026 12:18:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AHqndBYgofkdv13hbbvKQcIhuapEmdGZqKMOGzaOFCI=; b=K5bac9qjfykpAv
	A+CrDDyYmys7PQn1pz2pW8sJBo7SNta+/nKULUG6OkCfLjQ+3yvYVokFD2XXSymlIIM84K/272Vtd
	Z25A5+Nnee/aWOFfWaQz24gkmFKUzF5/m+1iF64t/S+s6s//QmCV8uFQL64FgEqbXEsfOXO35eCZP
	ZZBAeRshRjlfYRhOomjiZKG0bvMt0ShLv0ZWcqybJOyWvY1nONBOfxoPVhZAarTni/G5bl2Jbnn6t
	NVITOkJWk9p/ka+SDuQoPUvMgBmp+8C8TH+l3corSOfNZPEZPtvlkXIodKwxM6elkwkNoJD/GDIHp
	M4/D/DMmEtBeBpQY10IQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w1NxK-00000001psw-3YCe;
	Sat, 14 Mar 2026 12:18:58 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w1NxH-00000001ps9-1Xl7
	for linux-phy@lists.infradead.org;
	Sat, 14 Mar 2026 12:18:56 +0000
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62E4lXaT2006983
	for <linux-phy@lists.infradead.org>; Sat, 14 Mar 2026 12:18:54 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=rjL0UUHtNTqtONAtn/OGRWnp
	lN9kMYG/3SiGmBzEtGk=; b=irVB2IcG3MtZ/if42m8TBemLjO9hx1+FGhNcAR5f
	YcM0KCzr5FgLdy768Eq//ULPCnmWn4Sjver3K5+LGbQJeiSGkgTM5tWypkRfmLLV
	BDpxJFzuK7WTUwHjAgrdpqmJrCNMQoNKXnpu906fL4nEG4f7XlSRZZsw0sGoQOln
	KiWf2Wv9ysAdxP4AFNoYg8z+XEl3hB9jZYavtAcwbZowbXBCgsx79Ur6Badlm1at
	cVHHSJtVIE0uyPj1zhTjPZytD6Ds1ue758UTqXhsGiEilmQ5r0YXmFG6t4egwzqb
	gY3XrLBbAAakN7nVTBKTOjFhxv6UCzPw9cw4Ek8L5KDL+g==
Received: from mail-dy1-f200.google.com (mail-dy1-f200.google.com [74.125.82.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cw0y7rmp2-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Sat, 14 Mar 2026 12:18:54 +0000 (GMT)
Received: by mail-dy1-f200.google.com with SMTP id 5a478bee46e88-2be9e7c2116so35451417eec.0
        for <linux-phy@lists.infradead.org>; Sat, 14 Mar 2026 05:18:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773490734; x=1774095534; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=rjL0UUHtNTqtONAtn/OGRWnplN9kMYG/3SiGmBzEtGk=;
        b=NU43Y3Tb8MqJNKYY4b1jvusxudxC6/GAz0ZMKLNPBoTW1ZaQpw6YpUu2EPV1SAj4il
         j41T/rSGNxsnlJAQX7ZL/ko6TLLH9TrImLIVLhK6FC00qgV1ELhwH0hV2kn0fyiqgbFJ
         aHWHDc5oN+B4Y/LRMRdvCxWrRSdVmFnERGR409jf1cmDhT1fYKFBHvGzDxXmyLFsYKf8
         JYd79ffU6ZnxCIE7ZLcAvBNA6gN5M2RWY/oAjcHLnotXSLbhJr04VW9JceGHlqgLK021
         /AwXN+7av5y6tmYUpj8Yvvfo9S8SRt7a7vwsHi/R1KPQCHdgrQhlUMJwWQEE7uo3GgzP
         zl8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773490734; x=1774095534;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=rjL0UUHtNTqtONAtn/OGRWnplN9kMYG/3SiGmBzEtGk=;
        b=Tx5EiuZboshKvS/PhIJvQjjcG8Zww3kantcfvtJCJ7yBIaePVAJKfRvZnnQpp9InsG
         UwhRNbHaiC+dIpKbP4Tgx4oHTFCkSCjhjTTyK63pKSYJgbBiG5gD3n/pf/2vguTkIWoY
         0LXF+ErRG+Rmc543LhN2MePtxhWxwbV40ULkC2nVfdh+NWbuCfbANeyq4ixLjUOXTJQw
         Li7kv/E1TrNKo1vOHYQ9zjrp2/mowTaYlh8NjC5/cl2LIauoYMIjvJw/ouMaGoZkwspm
         nz+SiX7qUksut220QZ2tfYbdJdlBA/xANYc35XrUi2iONU7Ua20cnxug9vX14WjUQW5N
         ltsA==
X-Forwarded-Encrypted: i=1; AJvYcCWVfn4f73OuC4gSh9y5fB5gEW9DtBwMlG4KeS9dtkIf4HiuUedycf+zkCxqNSGy2gyAcFpq4uiza0c=@lists.infradead.org
X-Gm-Message-State: AOJu0Ywr4F69xz+suNIBGaRyY7KRT+kDg5JIzKK4JTYW42IM3SUTz3Ni
	g4QEjhU6WC6XgWqpazmdmlP7neOVpa+WOVmg856tWK/t9o1aANBKcKr4WVxl30MzOQrSgn5bQQn
	poMlyR7ueyc73ucwWt5+3rk8ztPjG4dycoeCFaAyoitRddoEsLORdAdgdFZKgPeE1tQT4
X-Gm-Gg: ATEYQzxihWaufrtZL7jUyEhP6JsAJf0W6MC/+1qusr/HbKxLBanRl/h3qrCe/lvouJ8
	wF1ogH8EiorZu2CZ7qhtS2cceDMTeIxs6mdOn0L603SPd4mB6ZwFTqLPxntJwKTo+fXzPywSm6K
	BpUtU/OuhuO5Q3+tSZbXUC7yQgb1b4vMLnsdk23rRF4o9B6TxDptbC3Mp5eU8Visfqzfk8g+dWz
	o/FFjssxXpnyjEhfO+MRYH35I2b5ShzJCwRiDBMsfNf3bKeBwdbUbZ5fT5H4hdfgWOyCrhZYCtq
	HrQtnOI855j1w81U+J2u8Z7Sc6uSTALiFOOQFaDlBnY0LwHwMkRWa47aVT9FcdlFCyZPK+TJcvZ
	C1oqOYtWaI+cf/qpv3xK8BA/bRCzWLr7jauLkVqAehSxLtXMQWeMosH+hPC1SojPR
X-Received: by 2002:a05:7301:19a9:b0:2be:8650:b0fc with SMTP id 5a478bee46e88-2bea53daafemr3320861eec.5.1773490734085;
        Sat, 14 Mar 2026 05:18:54 -0700 (PDT)
X-Received: by 2002:a05:7301:19a9:b0:2be:8650:b0fc with SMTP id 5a478bee46e88-2bea53daafemr3320843eec.5.1773490733556;
        Sat, 14 Mar 2026 05:18:53 -0700 (PDT)
Received: from QCOM-aGQu4IUr3Y (i-global052.qualcomm.com. [199.106.103.52])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2beab526d3csm6422176eec.18.2026.03.14.05.18.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 14 Mar 2026 05:18:53 -0700 (PDT)
Date: Sat, 14 Mar 2026 20:18:47 +0800
From: Shawn Guo <shengchao.guo@oss.qualcomm.com>
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Abel Vesa <abelvesa@kernel.org>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Luca Weiss <luca.weiss@fairphone.com>, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org
Subject: Re: [PATCH 4/6] phy: qcom-qmp-usbc: Rename QCS615 DP PHY variables
 and functions
Message-ID: <abVSJ2-mMFf-rsw1@QCOM-aGQu4IUr3Y>
References: <20260314051325.198137-1-shengchao.guo@oss.qualcomm.com>
 <20260314051325.198137-5-shengchao.guo@oss.qualcomm.com>
 <ckj6c2rute5bzachye3tl6hs3fgw7wtafoldsdutkszxjc2vsp@nplvcpzqzwfn>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ckj6c2rute5bzachye3tl6hs3fgw7wtafoldsdutkszxjc2vsp@nplvcpzqzwfn>
X-Proofpoint-GUID: CXvcy3vNe_NBm4EK8JwIPoAZ6ECkLqqT
X-Proofpoint-ORIG-GUID: CXvcy3vNe_NBm4EK8JwIPoAZ6ECkLqqT
X-Authority-Analysis: v=2.4 cv=D9xK6/Rj c=1 sm=1 tr=0 ts=69b5522e cx=c_pps
 a=PfFC4Oe2JQzmKTvty2cRDw==:117 a=b9+bayejhc3NMeqCNyeLQQ==:17
 a=kj9zAlcOel0A:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=YMgV9FUhrdKAYTUUvYB2:22
 a=UXx_BxqW5X7b_lvge-cA:9 a=CjuIK1q_8ugA:10 a=6Ab_bkdmUrQuMsNx7PHu:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzE0MDA5NSBTYWx0ZWRfX0ocB9gx3ndjf
 lXGc3jbXmR2rqWLVs2sdqyI9ThtgTKjdK1wN3moSKKD4bq3v9AcU2k53eJRs7wiCqxynwoPOw36
 b/8PZfL/c9O/aaeRj/rQYbps68Q927AJaP9ze9k7qKc4KWpYvmTBDfC6QlHCPKxMEY6dV3Agoah
 XcaScPG173DLms3tO6YXQDOLDAwKKdV7JjFzTLLHHqoLOGYGlAAog5euRIdKJz5A7MP5rkOSmi1
 5JVMw6y/pS07dGJuXAgTvPag4cJ1RarXY6A5xBdXcbo94EO2a5ke/XNuG7icZAWBYQx1mr+MR5R
 mCgBkZkC1YQEAKsz2QZ/JIlMb0OHCsp41xc4AHWhLaQxcOseg2Fngdtrn3tGCPYZP426TC80QZg
 jZz2d3U4sf2K6ACCuKCaBGKlMY7YNRbMqTq7DRZr1A2HG1LZndIHupD3yFfemCwR1uehrvLdeT7
 vAHEHId2kFZuyL4EsDQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-14_04,2026-03-13_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 impostorscore=0 lowpriorityscore=0 spamscore=0 suspectscore=0
 clxscore=1015 bulkscore=0 priorityscore=1501 phishscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603140095
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260314_051855_423276_BC1AE837 
X-CRM114-Status: GOOD (  15.43  )
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

On Sat, Mar 14, 2026 at 11:14:56AM +0200, Dmitry Baryshkov wrote:
> On Sat, Mar 14, 2026 at 01:13:23PM +0800, Shawn Guo wrote:
> > Commit 81791c45c8e0 ("phy: qcom: qmp-usbc: Add QCS615 USB/DP PHY config
> > and DP mode support") chose to name  QCS615 DP PHY variables/functions
> > with qmp_v2 prefix, by assuming that QMP PHY registers are versioned
> > as a whole.  However, the reality is that the registers are versioned
> > in sub-modules like QSERDES COM and QSERDES TXRX respectively, e.g.
> > QCS615 DP PHY has registers of QSERDES COM v2 and QSERDES TXRX v3.
> > Thus it may cause confusion that qmp_v2_xxx table and functions access
> > QSERDES TXRX v3 registers.
> > 
> > Rename QCS615 DP PHY variables and functions to be prefixed by qcs615
> > instead of qmp_v2.  This better aligns with how the driver names USB3 PHY
> > variables for QCM2290 etc.
> 
> Well... I'm a bit reluctant with this one. The driver needs to support
> DP programming on three platforms: qcs615/sm6150, sdm660 and msm8998. As
> far as I can see, most of the DP setup between SDM660 and QCS615 is
> common. 

In that case, could we just reuse QCS615 DP tables/functions for SDM660,
just like QCM2290 USB3 tables being reused for QCS615 and SDM660?

Shawn

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
