Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 12C2410F92EB
	for <linux-phy@archiver.kernel.org>; Tue, 31 Mar 2026 18:52:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GF7nPCbECozMNejovmqCFpGLcVhGAfbyAmcp50AIIaE=; b=vZ9vppSLr4L602
	rQvEUzpTXAvTlkduVUVGTffMyxwkYZktjjHsK0RVXf0CpGq8JsMClj3kEq3P08Pf57y2fsog058ad
	Ai8nmDE3RFXJkIrGc0rvTHHUyNZXDJOkaqU6fGqx84pZ5qzJg2u55+G3b7W0KV27KMqMmUEq/fzBL
	QKO13pc3rAL4EvCMBYjzq9R9pIkC/mMb9UdPqKibo/OzjiE6zzUhDEKsyYzNNMQiWJYlOzAGy+P27
	XJMcZtbE17x32P07COMMAbXbYomjkZBEQWP51+q3o6fDpTMU6Bt4EIrm+bzGkyzuasCtqZTOr0s7o
	qhy3ouj6B41mcXx4RAwA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w7eCP-0000000DRFL-2ZbX;
	Tue, 31 Mar 2026 18:52:25 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w7eCM-0000000DREy-1bta
	for linux-phy@lists.infradead.org;
	Tue, 31 Mar 2026 18:52:24 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62VGdJqx3882842
	for <linux-phy@lists.infradead.org>; Tue, 31 Mar 2026 18:52:20 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=dAdcP6P8LLZwwnnFtZC8SPsI
	gcRrnIo9fRrq3LWAiZg=; b=LmmjG2BzUb326+OuUIduTXexhUhYxYEl6HxVtTwj
	0a/WcI0b6uZE07APKRECekoiu/Ki09vNzSdYkXJIumfiO8CCuOgSYNUafAXYZ8Of
	zMGS8PDE75rpD5YYeo47tF4YgAi/r0gHgqsnJBY7ODPu1S5LYUtAo/d6eWZihcv0
	2wFaqtdfdRHVK1ippDu2iO2b1e8Ms9hBm+mw9Ez/A8kBeVAUUmYA4admDGGrLZ22
	Qr94r/cNMxGkDCuYOwgrEkHEbubwppou23FE/bCVywXyErVBSkuke68P5QrPwZyG
	k69ii72h4QyqXlOGm0lXnZzwT/drIYINogtaa6Gc1/w1gw==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4d89utb2g2-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 31 Mar 2026 18:52:20 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-50911c94db1so148213231cf.0
        for <linux-phy@lists.infradead.org>; Tue, 31 Mar 2026 11:52:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1774983140; x=1775587940; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=dAdcP6P8LLZwwnnFtZC8SPsIgcRrnIo9fRrq3LWAiZg=;
        b=QdaaM6wj0fqN+ZM6s2AXw1hTZR0PMRUKYSAZq5v5OkWSU5e6hUitOAxXPVjBzdXJFP
         ureU9eyXukHYHvweX1/ZSMlEfhKHXWro5uAz5s2vV6DD81NQSrWEg10KMVxwsvW9kP0x
         OMrrhkiYCL/+PW9S4AIg8nI52D6WRlTmFs3OW+Ns6Ex7h7N61NVP9JVwyQhVH+VcroU1
         rbG4x5KM1gUB+pq04DlA4vgmFGS7huQnIZF877fwKR7zf3BxX0uVx96odRdUu6WKk77r
         +udHYg9c9FiXAjX6q8RiaxLL6j5ZfH32YaJNY1GSjwbF3Y4xWjDe+ZRsTNb+J2EdT/L7
         QUUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1774983140; x=1775587940;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=dAdcP6P8LLZwwnnFtZC8SPsIgcRrnIo9fRrq3LWAiZg=;
        b=juJzJfxhf9M68ZxXzqV2L+brc9kGMD2h/1KENdo5owmPEDURAmsEn9k9oKZOUf8XZd
         NvQixMrUbyzXCWY/QkKxDXH8O9v+hkW+hrdrTzO4wqqgoLTkv0Gcy69HixCnTOrx9gMB
         hcwzNjjfhT7hNSOPbiBRzHvxXiGGUEs9owovKBQmgLsW9JBoFS206RG1oSPjjECjtT9x
         N0JbJsR1760cXKUXMVoyEjfXgnE0u0Eo33Y2G5RCykx3sTb3vK/8cjG26BbAU3xkytou
         +HdYupBai4P06fB0cvkXqdtwBuy86pnKwuD/WESDAgEH0mOQ81nfChqGEVdTD/GCZJOo
         KQ7Q==
X-Forwarded-Encrypted: i=1; AJvYcCU9DLzxLREFAnnRpr8vCDdbrAN78ZtYg48piRLICKc49xs+dqlFrAW7a4yy39Q3fNer7w5l2bhk0+0=@lists.infradead.org
X-Gm-Message-State: AOJu0Yzs5oDRJk2UoM5r36X6Vbtnt+gI1ovxaghSWDp2nhFs2vi8qzrC
	VbM9VbloXpFc1KmwntvIIpuCHZnPDxXbfF1dUCPj1Hir7NgjOs9TV9Zsy6Y404ATuph1ZQN68Tf
	/DABP+o1un9Bh/fyDSXEL2uSrY+2OoYxeKSoAlCHmrMVggv/nm3nT/k313G+Wg7Ua8kWT
X-Gm-Gg: ATEYQzymeJrZHEb4Gz12Clq7C5B/UACt8H0/FfBTJ9GDxpfr5lRaNElu5roC0YRl5UQ
	+mAHJC2+neX+81rqSUSYMiuq1Q0C5U1Wfg7uBy6KsxFaSwzos1jgln0oJjiN6gBG0oMFHjspjHq
	c+ns6tN7JAksCRNy8PRhKgO8n1INK2k20pIRvGLtxqi1Crz9Ho4D9KAv3w+mYfjZyR4mBfFHGcc
	7wyjM7c81WLhPIx7+CjUQ75SzSXX1isJVBH0tEsXSpvAoka6YxYjClSEYNENmkRMYvj7ZeX3i/+
	XLdCgmG41OFx10EwiqdzXVguNl+VX+fEecR5/y424bwtQGZFuHTYx28uz5CXSP4k4u7yYGH9Ptx
	dcf+5igTlV04G+G/dwWt9H5XMCxQRqtfN3CQh+nk12vfxAF1nTpfQlTl8Cf6o7BDItSpJUEqgcm
	77LMCXGwQfH+YvO+Q5tDh48eu1CeKYgRI4tl4=
X-Received: by 2002:a05:622a:8316:b0:50b:404a:746e with SMTP id d75a77b69052e-50d3bd576bcmr8848081cf.47.1774983139686;
        Tue, 31 Mar 2026 11:52:19 -0700 (PDT)
X-Received: by 2002:a05:622a:8316:b0:50b:404a:746e with SMTP id d75a77b69052e-50d3bd576bcmr8847801cf.47.1774983139241;
        Tue, 31 Mar 2026 11:52:19 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5a2c2233101sm84946e87.49.2026.03.31.11.52.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 31 Mar 2026 11:52:17 -0700 (PDT)
Date: Tue, 31 Mar 2026 21:52:14 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Shawn Guo <shengchao.guo@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Abel Vesa <abelvesa@kernel.org>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Luca Weiss <luca.weiss@fairphone.com>, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org
Subject: Re: [PATCH 4/6] phy: qcom-qmp-usbc: Rename QCS615 DP PHY variables
 and functions
Message-ID: <oqnpl5l35racn2nagd7twu26u3flrjoeo32d5vk7gv5dcr3utv@v5onmomf4su3>
References: <20260314051325.198137-1-shengchao.guo@oss.qualcomm.com>
 <20260314051325.198137-5-shengchao.guo@oss.qualcomm.com>
 <ckj6c2rute5bzachye3tl6hs3fgw7wtafoldsdutkszxjc2vsp@nplvcpzqzwfn>
 <abVSJ2-mMFf-rsw1@QCOM-aGQu4IUr3Y>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <abVSJ2-mMFf-rsw1@QCOM-aGQu4IUr3Y>
X-Proofpoint-ORIG-GUID: DpnRTR-djVsGA_qBKa2BC6cqSYeTgb6n
X-Authority-Analysis: v=2.4 cv=C5LkCAP+ c=1 sm=1 tr=0 ts=69cc17e4 cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=yx91gb_oNiZeI1HMLzn7:22 a=JfrnYn6hAAAA:8
 a=8bBNHPrwHrJWoedWoSsA:9 a=CjuIK1q_8ugA:10 a=kacYvNCVWA4VmyqE58fU:22
 a=1CNFftbPRP8L7MoqJWF3:22
X-Proofpoint-GUID: DpnRTR-djVsGA_qBKa2BC6cqSYeTgb6n
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzMxMDE4MSBTYWx0ZWRfX7Q9tEexAv6BG
 ZRsl0xui57gBmVY46vxLHPtmoVviY+x77gEKofhCqRlpMiICqpqa37U4MriHFshVK/9Ea0Qe/k7
 ZmzZSyw85J9Gca+uoOk2HTlFqiBNrGyw0K4bevdWdXSLYTaRxat10ExOjf463NCrk2gOnimVYZI
 EEwrt0vsQpFMcxU0qioxuNRkk+XQnBPmGp6IrEVs9AL75QBCidJ8/2mgmEOx08RQzsFNQ12hyGy
 6jfk0krDvLjPfZVh7G2SnpxtxZpqdyEG8f9h4rusQ4YIjUwcHiy+5rOBBMPqrzGCdctE4FHAjX+
 jKAV2Gpd5eqG8oeaHW4BI7tdfkXFbE7ZYepdMk4+boRRvoZdAQRG0odXxfew73GsW9OSqqAN9Re
 UK1tdp+opjt8hJACBzWoXpNGQzU4dJKEnTADPAhzyo3NG/GKwuwZs0hqhiBRurV55DQCOLBkCS9
 o56fzzLvN5zdxvmF6RA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-31_04,2026-03-31_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 impostorscore=0 clxscore=1015 malwarescore=0 bulkscore=0
 suspectscore=0 lowpriorityscore=0 adultscore=0 phishscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603310181
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260331_115222_549391_B297F7A2 
X-CRM114-Status: GOOD (  21.25  )
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

On Sat, Mar 14, 2026 at 08:18:47PM +0800, Shawn Guo wrote:
> On Sat, Mar 14, 2026 at 11:14:56AM +0200, Dmitry Baryshkov wrote:
> > On Sat, Mar 14, 2026 at 01:13:23PM +0800, Shawn Guo wrote:
> > > Commit 81791c45c8e0 ("phy: qcom: qmp-usbc: Add QCS615 USB/DP PHY config
> > > and DP mode support") chose to name  QCS615 DP PHY variables/functions
> > > with qmp_v2 prefix, by assuming that QMP PHY registers are versioned
> > > as a whole.  However, the reality is that the registers are versioned
> > > in sub-modules like QSERDES COM and QSERDES TXRX respectively, e.g.
> > > QCS615 DP PHY has registers of QSERDES COM v2 and QSERDES TXRX v3.
> > > Thus it may cause confusion that qmp_v2_xxx table and functions access
> > > QSERDES TXRX v3 registers.
> > > 
> > > Rename QCS615 DP PHY variables and functions to be prefixed by qcs615
> > > instead of qmp_v2.  This better aligns with how the driver names USB3 PHY
> > > variables for QCM2290 etc.
> > 
> > Well... I'm a bit reluctant with this one. The driver needs to support
> > DP programming on three platforms: qcs615/sm6150, sdm660 and msm8998. As
> > far as I can see, most of the DP setup between SDM660 and QCS615 is
> > common. 
> 
> In that case, could we just reuse QCS615 DP tables/functions for SDM660,
> just like QCM2290 USB3 tables being reused for QCS615 and SDM660?

I think so. DP on SDM660 is not supported currently, but it's mostly
because we don't have PMIC support.

> 
> Shawn
> 
> -- 
> linux-phy mailing list
> linux-phy@lists.infradead.org
> https://lists.infradead.org/mailman/listinfo/linux-phy

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
