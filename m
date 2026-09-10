Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A401BC79F9F
	for <linux-phy@archiver.kernel.org>; Thu, 10 Sep 2026 06:48:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NIQpFOZKgqWWavnYj0KTsDUSc9nW1PBRgeG5TAE0iEg=; b=Ev7tLihqnUYiTK
	WW7EXR3dwVu0JbrmW4M6LWbfxwxOstYDP0X39OiGRCtBzaCugAmsz0SLJT9e7n3RqNvOxsT/aWuV7
	L85IE+GkE59hJPBNjmAhpihMZ73EV5ZZfSHuMdx31gOOm3RsXBYKc+AzmedcDHp2YFunmGK45/aDV
	gaS1FjpIjgRZkOQbxNJfjWk67cpqa6fnRtwUFMw/UUlmUb6qfem5m+XHjVhY6fnsnJU8zO06x2WSe
	gyTV9GhhtTYgGORgf/XNNNRKfrvVIe7bpLejegOt8L3OxoWbvV3xQYWA+cIwiJQxkxhE7EDE/dhZW
	dphHjcszaa9P5BN1GzRQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x4Ya3-0000000DZB2-16d8;
	Thu, 10 Sep 2026 06:48:19 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x4Ya0-0000000DZAH-3aaK
	for linux-phy@lists.infradead.org;
	Thu, 10 Sep 2026 06:48:18 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 68A5GxGB520569
	for <linux-phy@lists.infradead.org>; Thu, 10 Sep 2026 06:48:16 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=mvvRWLQy9D9Ms1FXD+eDgTSA
	ed6FXm3bAYuAa8sMroM=; b=R2abuqHUbLMV3Wno4oDzY4fc54qu8N2STmCSvSG5
	nFInWaQ9NXOAUCB/53zkPYwe/su6S2FrpvRki969Qei5sFOnGAH6u8rnQ/NS9nF7
	8tPrMD/5WKwRK0iXZebxquaEiXeKIFawu8Lgu1m62PiV1DxuuN5mWkc1WusrcG3N
	sMhJSxwHPwQA1NE8ebA5+iefmYGAvnrTdVCcAonY115HL5VxxVKbMyfqqa0d8n7e
	kQVly/qbV4xrEyAJSlIjlJ6DGkUemT6OOHD8/Vrmlf+yozrJ8TS3pbdTL8WNReEq
	4RQ7US2Ib7RllZ1+9kcW90wvFasTl0pNKECp2rLVQYFuJA==
Received: from mail-pj1-f72.google.com (mail-pj1-f72.google.com [209.85.216.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4gkcygjfsk-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 10 Sep 2026 06:48:15 +0000 (GMT)
Received: by mail-pj1-f72.google.com with SMTP id 98e67ed59e1d1-38f57e31b6eso3814174a91.1
        for <linux-phy@lists.infradead.org>; Wed, 09 Sep 2026 23:48:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1789022895; x=1789627695; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=mvvRWLQy9D9Ms1FXD+eDgTSAed6FXm3bAYuAa8sMroM=;
        b=DdjTIv4Y6r6oDpdo7yZpvKVlLm9IX7WnkFWjE121ui1+QuS6PVzRiZPo6XtgGEwrMh
         J3CcbUnzpqqGRrxez7H9YfQ7EGcHeLocb/jj1qe6b5eFEqUzr40vBdKAaC3dddcFJNXa
         Rtv8E4MkeRTMx7KsihahYKD1sT5TdfDW3zT1HLczHfedWFuUEETCaD3mRBctJvRn9NxO
         JLGM9NJ5nrhezu3QQMxNt7X+zZOeqcRK/yw8NepAK1pGaAs2nQwHqzeBhp5vfAfc8bae
         jhwOOf2kbHLPPxhodEhC2smIgMBSCrpfu7YA0/4M8mrb21Zq5zCki2w1/B97q/B5nNsp
         k4xA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1789022895; x=1789627695;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=mvvRWLQy9D9Ms1FXD+eDgTSAed6FXm3bAYuAa8sMroM=;
        b=pqurnJvkrffEu1c6w5dm0y6JHyyMPwyTU5DZfoS7aLV4kOMrA2N2o+DlUjDiOl75rK
         pGNQsCJFvH2kZtUNKinhV3Anrc620iC26WbQUAU+03FL2/VsB9JBNXAN/FMoxZebxKrC
         f9sKYYynCS69Yb+MkUYhE0A3SlSoMONyIdDDGCqYk5Dzd5pFYsO7gt2QL7fqJ6lxduNC
         6PovJ2xAq8dTRya1Of4m2MDtANenUN31PROjxP8EJirzIMRzCup57raN6nva4CCOBW8x
         vMQdOPScOXVDHn0Zd7smYNfuT3kyRuq+IUVWZMh/jxHWvVB0SFCxFS2BzBDtC6iRVqKt
         TvkA==
X-Forwarded-Encrypted: i=1; AKwUvBzbsKqJ3elWKBwqRDC/y4JoYHIATDN6bRlM/C2tuI7HSbbLPhvrU+mS62VnM44gw1RuCk0GmHritBI=@lists.infradead.org
X-Gm-Message-State: AFuF++kBhEDupY0WX5wOFlp/7tISu67YT2IJddtEsooHCTIPioHn0Yz4
	0ex7Om/+n/tEXEw9z7nTJ9vyJyndrI98zroawfkt5GTzzncCreTR0gBqTk+3rOzgUtDvYVLHB/y
	MOKLnTHaEyYU6d+NkotG5jJ4ivVVxkQ/R6/oPPBuJXLugoIqgwA57jCDSR9Fy2w+V4LoF
X-Gm-Gg: AYBFou3PLV2dywBdXj62Lf+5YO8jAJm+yU0FgAuOaB641JPUluCoSBG0JyPxz6LOEHC
	xJhx2i5XONRONJN0YQvckbbeTZMiH+PzPiFhCbi3iSDMYz8oHFwIaiLuRVLruCJMDgED7G+aVBJ
	0Eb+lqGl2fVJ5adOatq0sCbhI/wTZvexUBQBrt0pNsYr5ff50t24esjm9r0y97Rj0toF1SmSu37
	kiArbdVnETKastFA1/YpOj4rKTPWx2r1FmL8WLJAPUs/hldz4ews2DJyXS2xnt6iDz60CwzWSI1
	b++7t1G7ndMU8Va86r44/iXOGhI3XnyHaeqRIDa4I+UOlpy4MvoR9BrY8d5HwUOwwx+FzhXDH4O
	yc36bn4ViIIwp63d5hPFoXvazoHy1jq0nVdlpMsPV9Sw=
X-Received: by 2002:a17:90b:580e:b0:385:393e:7124 with SMTP id 98e67ed59e1d1-39b261cfd97mr56212297a91.14.1789022894620;
        Wed, 09 Sep 2026 23:48:14 -0700 (PDT)
X-Received: by 2002:a17:90b:580e:b0:385:393e:7124 with SMTP id 98e67ed59e1d1-39b261cfd97mr56212222a91.14.1789022894101;
        Wed, 09 Sep 2026 23:48:14 -0700 (PDT)
Received: from QCOM-aGQu4IUr3Y (i-global052.qualcomm.com. [199.106.103.52])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-3339ac24d7esm77812195eec.15.2026.09.09.23.48.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 09 Sep 2026 23:48:13 -0700 (PDT)
Date: Thu, 10 Sep 2026 14:48:06 +0800
From: Shawn Guo <shengchao.guo@oss.qualcomm.com>
To: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Bjorn Helgaas <bhelgaas@google.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Maxime Chevallier <maxime.chevallier@bootlin.com>,
        Philipp Zabel <p.zabel@pengutronix.de>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
        Qiang Yu <qiang.yu@oss.qualcomm.com>
Subject: Re: [PATCH v3 4/5] phy: qcom: qmp: Move
 qphy_setbits/clrbits/checkbits to common header
Message-ID: <aqJSpqRmq5721Unb@QCOM-aGQu4IUr3Y>
References: <20260909-nord-v3-0-b0a82721c547@oss.qualcomm.com>
 <20260909-nord-v3-4-b0a82721c547@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260909-nord-v3-4-b0a82721c547@oss.qualcomm.com>
X-Proofpoint-Spam-Info: AW1haW4tMjYwOTEwMDA3MSBTYWx0ZWRfX2c3Hh0J/uTSb
 YTOxuXbLHImqEaURhJuLh6xNLW1CM4i6UQLsHj1z9UWAuVLglgOe5wmBsRTtfGk7bHUpxUG99Su
 X/psvW2jlzytNZbq5pYjEqbkuWPFtus=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwOTEwMDA3MSBTYWx0ZWRfX9C1DA/qv9TzF
 owcBfdtq6fZTiTPKnqy415a3Zx+hCccSOFlO3B3BI9csbjjNYk+SznGpfar+ll9nrUUhWshuxUy
 v5iAwBCdyIEP/U3CDkPa5MfnHI5/Q6ubXF8znedl60+2G+4VwHH7wL+Q+WysbVbTkNLQYXmGPQT
 HW1q1fO6Pxwc2txgMpK0nuXXAoJjQ3djvWg/0NNWwmO2EqM8y7JcYbhbV2+LDrHAW18ruEwa8kR
 3JEvhIWKfMX1RjjTO6N7ub4QrovBPtSQM/AAUak/NklP/zKGDaic+gf8Q1q5zcxVLcpSOQebnlx
 HL4JW/3nCG1EkWfAIhXUlC49Z2Jr6vU1LkBIIwI57QYiZiv7ebgw4g9c+xwnVX0H5HMvN8eW14y
 PmBhRSlu5mPLVwQZB68cu2u7PT+MVprb/msENULKjvHmSQZB/QzeAbonLX/k7KNTQ4o1PrX/KYm
 aRbPcgC6GB/OLSgfcPg==
X-Proofpoint-ORIG-GUID: QjX8nJtV8K3I6nSMswzhKplTMQOUiDcs
X-Proofpoint-GUID: QjX8nJtV8K3I6nSMswzhKplTMQOUiDcs
X-Authority-Analysis: v=2.4 cv=Z/F5j3RA c=1 sm=1 tr=0 ts=6aa252af cx=c_pps
 a=RP+M6JBNLl+fLTcSJhASfg==:117 a=b9+bayejhc3NMeqCNyeLQQ==:17
 a=kj9zAlcOel0A:10 a=VdqzKS8jKosA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=3WHJM1ZQz_JShphwDgj5:22
 a=EUspDBNiAAAA:8 a=Y4sVft1UDeOkrP7wHAgA:9 a=CjuIK1q_8ugA:10
 a=iS9zxrgQBfv6-_F4QbHw:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-09-10_02,2026-09-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 suspectscore=0 clxscore=1015 priorityscore=1501
 impostorscore=0 bulkscore=0 spamscore=0 lowpriorityscore=0 adultscore=0
 phishscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2609040000
 definitions=main-2609100071
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260909_234817_012056_2FD3098B 
X-CRM114-Status: GOOD (  11.77  )
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

On Wed, Sep 09, 2026 at 05:18:19PM +0530, Krishna Chaitanya Chundru wrote:
> qphy_setbits(), qphy_clrbits() and qphy_checkbits() were duplicated
> verbatim across phy-qcom-qmp-pcie.c, phy-qcom-qmp-pcie-msm8996.c,
> phy-qcom-qmp-ufs.c, phy-qcom-qmp-usb.c, phy-qcom-qmp-usbc.c and
> phy-qcom-qmp-combo.c. Move them to the shared phy-qcom-qmp-common.h,
> which all of these drivers already include, and drop the local copies.
> 
> This also makes the helpers available to phy-qcom-qmp-pcie-multiphy.c
> without introducing yet another copy.
> 
> Suggested-by: Qiang Yu <qiang.yu@oss.qualcomm.com>
> Signed-off-by: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>

Reviewed-by: Shawn Guo <shengchao.guo@oss.qualcomm.com>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
