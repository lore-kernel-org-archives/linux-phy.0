Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B7222CDB46F
	for <linux-phy@archiver.kernel.org>; Tue, 23 Jun 2026 11:37:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=o2oji5I+lGkCSTJQfdpzGk0pcpkkh55O1h4rtK+OexA=; b=lB1KS5m8oM0VUc
	ah5YC6PdVsUenKd/rE/GVp7ejQT2erMZwSY/e3NrLVM7jeOOmASAQnC7+hfsPA0UyGQmguKDK9FgZ
	s6UAcVTLu8XSICY4TsYNL+kWDSAXmzXRDqoLGSRqR0ZrUOl3CgmE7IjKxMgUE0yEGuOj/IInmSjvO
	Jn7Ot+3AnM/nuhD9BJTdRyD2875uwOz0R4hrxHpllMtAp/ZFb/SN6CnppywxqMEpN7GDo0GPfetGv
	UvtBqsp/BFrlAMCh83ymvgPFThY7dJ4MDEcjpknKH2zVGVHvJEUVLj4Y08FVe8GLue3lbiOLWZdAE
	Di4Vt2L+UZ7P47cFACzw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wbzRC-00000006Brn-11uk;
	Tue, 23 Jun 2026 11:37:06 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wbzR8-00000006Bqf-3veT
	for linux-phy@lists.infradead.org;
	Tue, 23 Jun 2026 11:37:04 +0000
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 65NBa3ZF134717
	for <linux-phy@lists.infradead.org>; Tue, 23 Jun 2026 11:37:01 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	MXNsvpmExzEXM1J7XKQU25avjaUjuFbYf81y6omDQEg=; b=OetdD04sMT8BXOHl
	P0ZfY0xGtL2vRhpknWkdpuLX31ixTvC6kpV0E7VQdx0gj/pE8GCrCnomrMVSoU1+
	L2bCcW3nQ+aUWuIXihofuZXtk6g13KrVR2/2baRhAnB8pdxL1JML37cHNUuDwsL9
	5MVe6YTHbtX2udMawnrW7aZgXiGhpEAyN2hDgmAJLUOFX6tzvK3dZK2DqvRnWAbA
	ndKWhmmmPYlyDqb7nmieAixUTjlWqAOE0oPFv8GUUkOsTpEFyBJ6bbgzJ1gvoniI
	XyL5R7akeITlahYsjQv8hfHbBlRRM23j5kPYYklFHNfS/zERxNBB56rvyaxkX1YF
	GewvCw==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4eyr320ava-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 23 Jun 2026 11:37:01 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-51a15cef334so6265831cf.3
        for <linux-phy@lists.infradead.org>; Tue, 23 Jun 2026 04:37:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1782214621; x=1782819421; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=MXNsvpmExzEXM1J7XKQU25avjaUjuFbYf81y6omDQEg=;
        b=ay08LTlsyqysfoEh8PugBx5ta05JVj/hS28Q4Xpg3JKqmTNvyWsxUuECUK30aUOC1w
         8jhZgt1WPi4FZg9OgXLhCwBaOf6YNigTyhNn9OThJ6VJmxB3l+KwfKaMmzXJ1olynT2/
         n1t+TcqX6FD3d/EcMmk63lCs1YJPDDGp6qkIQXTqqR2SeSxSGid5agKg9kTOWV8Aicmu
         hGWDPrFTXXLGqrSG8FnFe9tOGUuP/SXOtfp4eEvBu+YBjSFeNXBXdhQb5aX8v+aypkuG
         RIZsES4pgk9OBRH45mxu9OtgzzlUldtGLHXH1FD6AmVh8081ADVj5NnqHN96dpjwhDQV
         DBlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782214621; x=1782819421;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=MXNsvpmExzEXM1J7XKQU25avjaUjuFbYf81y6omDQEg=;
        b=Exag9utoruNkkDpjWBnqoJziojdE+U1Jg+JayZHdz8/321cwMAYofQ/e3bvhxVsRu+
         HIDhZz4S5HrpKr4ezWtxQwcQFlLTiFgxzct9Ly+2YrWIKgGEHmKWEd8qR53RZvXDWeBl
         8grTkD5nKeI8em71HcFJ0kRUgqK7iW0xMdL/9xmyz9ExGprc7XJAKwFFyoA9G5XbM28J
         Mh+5H66WDt7McImIAF4S4W5v9rgWwM+zq4sUYHJZF2RKNLBF4EJDZK43p8kw2aHpZja3
         sPahPRZKBceTsjh+rYuYlYHP4DTQzTxMn51YRQgM4FCQTFSFdK+eQtI2aHTifdM5gUBK
         Uh7A==
X-Forwarded-Encrypted: i=1; AFNElJ/EyRQaKo08jtbw1norM93oZbQf2iR1AC2t54XoLsKPeaP8/wP3pKF18rOvjU6EwEFATOrFmFU/6+s=@lists.infradead.org
X-Gm-Message-State: AOJu0YzvZqo4ZQbYznjQg8ugGBh8X2nCxfwdL4Pl/7MtjW6vBI8gBAEO
	asaEm6iYM0KMIQxfBH5KnaCKbhGbNA9l6okWS2AaDmY6P9ItwaaLv8TFYedydSupAvc0kArSDt4
	npI1zf5Z+fUfd2Ax/xaZ8/coC20su5cL0dg9aPJs+uB2/nzL0e/ahNy1+CLwouO3hKYbA
X-Gm-Gg: AfdE7ckBDbpw9GaCKRwcX/Tqg6DoI7sG95FnJSni2dxEOW7F5Kkm6T4QqqxRH5mF9KN
	HDm75f+jzrjEoWgSc/if1W3MTEfTSQmCKayE/5JLKKhV9YBwx3NLCPZ85tYCoEy7xUMswIrVdy/
	JEEVolB0WJeE08HoLm/5s3MEuIldR+mNR4fdxniKUcMUb8ntkLJY/7Ake6FHMbZg2AlCbA8W0Wm
	M6BTPn6/7o2oObCNBN6kkPAZNvJXVAuxuunDJjEu0JyfRHaxof5/QfvaiLaUO+itKK9n9YZj0Jp
	eiqFnpas9LQ+F89X99QmtWM8rjsgo0tiFvnAZbnBk9uCiCgOifJ6yxGyQLA8f/SIxj66uJ2Q8L6
	R4NpFbcrFn6CdwxNt3FTtZuxXpgWbFGEXDKk=
X-Received: by 2002:ac8:7d49:0:b0:517:5e32:f3ac with SMTP id d75a77b69052e-51a4f380d0dmr47487251cf.0.1782214620867;
        Tue, 23 Jun 2026 04:37:00 -0700 (PDT)
X-Received: by 2002:ac8:7d49:0:b0:517:5e32:f3ac with SMTP id d75a77b69052e-51a4f380d0dmr47486981cf.0.1782214620409;
        Tue, 23 Jun 2026 04:37:00 -0700 (PDT)
Received: from [192.168.120.170] ([178.235.128.140])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6977be498e4sm4536670a12.20.2026.06.23.04.36.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 23 Jun 2026 04:36:58 -0700 (PDT)
Message-ID: <4635a665-f605-4647-810d-c9d83a271a86@oss.qualcomm.com>
Date: Tue, 23 Jun 2026 13:36:55 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 7/8] phy: qcom: qmp-combo: Correct pre-emphasis table for
 QMP v4 DP PHYs
To: esteuwu@proton.me, Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd
 <sboyd@kernel.org>, Brian Masney <bmasney@redhat.com>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Rob Clark <robin.clark@oss.qualcomm.com>,
        Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>,
        "Joerg Roedel (AMD)" <joro@8bytes.org>, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        iommu@lists.linux.dev, linux-arm-kernel@lists.infradead.org,
        linux-phy@lists.infradead.org
References: <20260622-sm8450-qol-v1-0-37e2ee8df9da@proton.me>
 <20260622-sm8450-qol-v1-7-37e2ee8df9da@proton.me>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260622-sm8450-qol-v1-7-37e2ee8df9da@proton.me>
X-Proofpoint-Spam-Info: AW1haW4tMjYwNjIzMDA5NCBTYWx0ZWRfX11a/CvradzPA
 LYyOoUCAgQkF6vPahmpHawbQNFokIZgqggj+Psu7FJcry9J29TApAC6pKNj6CvGQkAhaC1wxyHG
 SUN3f7w5zo9rimIhnEV1x3X92EsmS+s=
X-Proofpoint-ORIG-GUID: VsMvNgjtI5rVH7fR3811u97Z3DfIcUUR
X-Authority-Analysis: v=2.4 cv=HrxG3UTS c=1 sm=1 tr=0 ts=6a3a6fdd cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=PRfkaYvzSr8QmIIGAkY2Sg==:17
 a=IkcTkHD0fZMA:10 a=FelO9ux0wxsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_glEPmIy2e8OvE2BGh3C:22
 a=N-WSo6sfiX0bQk_JYPcA:9 a=QEXdDO2ut3YA:10 a=a_PwQJl-kcHnX1M80qC6:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNjIzMDA5NCBTYWx0ZWRfX3WnSKXLVBkOC
 6AtJ9d8C+I+01ECmNYeh1+1rz0JtUdFLvp4d70VoUfoQXzfi40cuEYIDSdvXw6p7zab+TGT5QBD
 pOtr1mjHIYNt22n0IYjOJv+qk8NmhlWkmreIwLPmO1qAw5GeflmkwAxBPDC2o5e1sA47/xfXy89
 nn989L+5ucgJaZ/o3ieKEm2AM0Amz+0LIAZ0Ytl/uHDwrkdvKOmh/LRj+nGQAur7nNANA4fQOeh
 tQsTqd2EOlxzeIG6LUXp47dLPJzGvYUQ7kCvxU/tSG9ezJAa2nqiOpx5EhtZY8WPscidlT10V1k
 YZoShXa4gzqapg5WG/2blIeC0Arkc+UjZtTHnG/UxnYD5VTzhHwGSvqrvjqfAqHLQykItEPCS8I
 Lq1tykwgTY6rw5qxmdA5daWjHBai4Z4b8Y6PGiKLYEATY6z51ctT4VfgVmIPUELSq+3mBoHO3p+
 CzeCfH9i/Vu44JQYedg==
X-Proofpoint-GUID: VsMvNgjtI5rVH7fR3811u97Z3DfIcUUR
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-06-23_03,2026-06-23_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 spamscore=0 phishscore=0 priorityscore=1501 malwarescore=0
 adultscore=0 bulkscore=0 impostorscore=0 clxscore=1015 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2606230094
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260623_043703_100953_F78B141F 
X-CRM114-Status: GOOD (  18.05  )
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

On 6/23/26 2:54 AM, Esteban Urrutia via B4 Relay wrote:
> From: Esteban Urrutia <esteuwu@proton.me>
> 
> Comparing sm8350 and sm8450 tables, this seems to be typo.
> 
> Signed-off-by: Esteban Urrutia <esteuwu@proton.me>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
> index 9bd666ac2c49..5b278fd54a16 100644
> --- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
> @@ -2108,7 +2108,7 @@ static const u8 qmp_dp_v4_pre_emphasis_hbr3_hbr2[4][4] = {
>  static const u8 qmp_dp_v4_pre_emphasis_hbr_rbr[4][4] = {
>  	{ 0x00, 0x0d, 0x14, 0x1a },
>  	{ 0x00, 0x0e, 0x15, 0xff },
> -	{ 0x00, 0x0d, 0xff, 0xff },
> +	{ 0x00, 0x0e, 0xff, 0xff },
>  	{ 0x03, 0xff, 0xff, 0xff }

It seems like 8350/8450 should be using what this driver calls
v5 tables, with this fixup:

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
index cdcfad2e86b1..63a4f2127e3c 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
@@ -2134,7 +2134,7 @@ static const u8 qmp_dp_v5_voltage_swing_hbr3_hbr2[4][4] = {
 };
 
 static const u8 qmp_dp_v5_pre_emphasis_hbr_rbr[4][4] = {
-       { 0x20, 0x2d, 0x34, 0x3a },
+       { 0x20, 0x2e, 0x35, 0x3b },
        { 0x20, 0x2e, 0x35, 0xff },
        { 0x20, 0x2e, 0xff, 0xff },
        { 0x24, 0xff, 0xff, 0xff }


+Dmitry please confirm

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
