Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 23F25EDEBFA
	for <linux-phy@archiver.kernel.org>; Tue,  3 Mar 2026 22:31:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uRGPtqQbYA9FXy7yU072dyP+AjfFKBo61vDTBupB19s=; b=WNt7t6og85k5jQ
	wz7ROosi9w0GPWGjZf2ZOXVNKmL3xjgE3PWF98eMUjtSufsfBaV+1NQkqE7sUqUnHxGdDKYD0LSWU
	VClAlxpLZiiejdVcs94Bm/18Zz5jx1deLz7NKmrLJjB87sESKqw+H+Cv10lsjrcBK1GDuSGSy/1bf
	OhYjJRUcAohTFJgh5z/jmpJ/XKZV2DjQd+h10boMWH4fjqX52BOqv21Vbow61J9GGBqiaeTNJ0kyP
	FnVP+m0BCHGZc6VkZ1/cU8KTiPV05OsWmd4uMNo9ZQ815slUI3vUtuIPIP3u4Elx1PSXZZS4h4COL
	PceaHwasK1pNESfR+3kQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vxYHC-0000000G2im-2gMv;
	Tue, 03 Mar 2026 22:31:38 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vxYH9-0000000G2iS-1k8g
	for linux-phy@lists.infradead.org;
	Tue, 03 Mar 2026 22:31:36 +0000
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 623HBObP2786922
	for <linux-phy@lists.infradead.org>; Tue, 3 Mar 2026 22:31:34 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=g5c0yPOmKPUzXOupNhKzfg/+
	Xjp8RH1qLTT5YyM/9ZM=; b=EOUoVTzJDgTno/EIu/Q8cP+nuBggf29M8LrS8gi3
	iVZcK5xWBh/XkZ49h/9yTGszdDQSsiQrc1nCxirFb5Rd5afY+0PC+2n8PhFd/r+a
	D/ZijR2x8zVDIc6UOCoNrHesVemPnKMVg2SvARfUHWYEwy1ZQ0889dcjpbzIt1Mr
	GR1MUR4D3KhKje1Ssx6JKzNkhoBV0K17MLPRUX/MJH7Aazg3nfEECl8SnoCbJd7c
	YSmvrz2b2aufxWWO/66HAp6I70T56cZ4kKSoEhqdrrgtadrGd59EACuYHPjbHAjY
	GsVKZ9vkruD2G7NYqLiVJjU1GxVQLtAJTfnvdDDicPI2mw==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cp3tvh2r8-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 03 Mar 2026 22:31:34 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-5069ba5af5bso394556151cf.2
        for <linux-phy@lists.infradead.org>; Tue, 03 Mar 2026 14:31:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772577093; x=1773181893; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=g5c0yPOmKPUzXOupNhKzfg/+Xjp8RH1qLTT5YyM/9ZM=;
        b=UehO96NJ2jSAKOVQe5Rh6OFJzeS01dDHqbHlLDDy3s0YuPzXe3ZMgvJO0ipoaSTpic
         j+lTlqoKK3lFq1SDNMDgogAWXQsWQkgV1GX5r5LuqkFXZhxcK32DkURVBzWGl9C6wt9D
         BF+n8UcxwGepB07YiJNdasWCIf2keND7P2O1YroizJFiVo/AbkMCSucNyIl8H9hjbbvo
         Xc/zNJDeu4h0EgcZSBAXP2AkVoHmFDW21lLr8Bb4a7IPoUjN0EzdZ4MYVV79s+4EqK55
         Fj3XOzf8cUaBPAGhrTNDOKPgZEyeJJbU3Da+hZ1xq7Y6RRR2gzOL6UyUGkY/BWihAEhf
         xzGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772577093; x=1773181893;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=g5c0yPOmKPUzXOupNhKzfg/+Xjp8RH1qLTT5YyM/9ZM=;
        b=tftpC3fNhwKJ+2yIoLdPoeZPDWcKZqxp0rOWMU3m+UmAN0R7pyrk2PLr5U5skzS2qp
         wi+0gL6dqNIVgVe6Qq0dv0dzBzy7LYPLWWiP1L2tenD80oO5/VsPlxb/O2FEjttOlECu
         rkFlLZFyfJmlNZ45EDNhsGQ2i26o+Ur5+cme+oTKGTnhwFMbd07vbseXNkS18pdEQV3s
         GAzw4grYoWZqnZVy2jGK6a4yWQWJgd3fFHbsZQI1DZgcNvChB05xy/0chEUIZm4Mn1Cr
         T0+HCROO/OtkUIo9zhDAYvojdCIHYRqWr23q1SQzGuv4g9dnV/EEtNkUm6ETRFR0j3de
         ZIwA==
X-Forwarded-Encrypted: i=1; AJvYcCXD5/Shl7WMQD5u5Y/KdxxyLf2Z3jzgWoQoPHKDtoRMM3lXz9M7Vr/H3GGG30Sv3CxDh/7Cswchhkc=@lists.infradead.org
X-Gm-Message-State: AOJu0Yybe0qW/H5ti/gBT3manePbaVb95F1xFV6G1fZY7fSNXP8G8qgn
	eXYBz1BWKQh6LDO3rrA1TWzTxMaulKf1tvF4Ee5rMluO9YJmcu9NMAX2wuRgCQls7Xr2adrzfMF
	q/p51UyD07dZ4acZd0r0UdRDKw87DolSz1lpXuq/FE4Uuel7pUuyYeX9jVtFaEiID5cX5
X-Gm-Gg: ATEYQzy9TxFTltkoILhNns7Iq1Y40Ou4SHLpSFDMUlGkf+ClbDmSIRRgwqQNRAwYpcM
	AaXLIEG7SyJZ4BW5xJ45M4PHLncjrJjrJY1Pf43DDnkyOK7YLVcAdLILGIbNYCJUaAwMe5pDzEt
	yW1CUZowG74SBuhR39rs3pVoKmhY32penvmzkqzTPpHHq3RM6mHFIi2vxi1cEwJNmc7yycLSb85
	MBifgqF6kiZhdHV8m8s/B+Npd8oHVoiMi5prqfrdtP2QWbtyuLJ3R3n6NzqyYjLriAh+Kz8Nvvr
	xEI2MuzyFExJs9B1PxBlsi+N10PE9uOw5Mgf7x9LUHMI6SGTnNaL5JHOrmztod1tZtyJzYOWafb
	Nzwe8QCYx9kflPOgk9g7Pd26SxqWHFcbipBD4ygsLkLzyKUS8+GIcHMOTdOC7FRUq2Yg//O4+4g
	9vFL/jxzKP3n5q7aZj1TYP+DM8HNnEilr4lCI=
X-Received: by 2002:ac8:5a8c:0:b0:502:f26f:1388 with SMTP id d75a77b69052e-507528beb5dmr247648811cf.65.1772577093326;
        Tue, 03 Mar 2026 14:31:33 -0800 (PST)
X-Received: by 2002:ac8:5a8c:0:b0:502:f26f:1388 with SMTP id d75a77b69052e-507528beb5dmr247648361cf.65.1772577092827;
        Tue, 03 Mar 2026 14:31:32 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5a1235822d0sm837948e87.23.2026.03.03.14.31.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Mar 2026 14:31:31 -0800 (PST)
Date: Wed, 4 Mar 2026 00:31:30 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Vijay Kumar Tumati <vijay.tumati@oss.qualcomm.com>
Cc: Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Bryan O'Donoghue <bod@kernel.org>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-media@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 1/2] dt-bindings: phy: qcom: Add CSI2 C-PHY/DPHY schema
Message-ID: <yhatx2iuoofvsqpu5da7ohpyvzhc2y7uq3bhuhfuv6pkfpqrnz@75xei3bawzza>
References: <20260226-x1e-csi2-phy-v3-0-11e608759410@linaro.org>
 <20260226-x1e-csi2-phy-v3-1-11e608759410@linaro.org>
 <c85fe457-c140-441c-93ed-342dce32e604@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <c85fe457-c140-441c-93ed-342dce32e604@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzAzMDE4NSBTYWx0ZWRfX85LznvOgQ5O1
 9j9aZuYE0N3XkaY4eZUCkFm8v4hxrM78q4Vo668yrpEgD+P61orLwo1xp0rLhucX2eKmuQvIpkd
 ckaDNeZCWN3Cbl3cLFINg0B9LGSxHHkamWbCKb1mOBv2sWJ0vVIxWhF8n5pOF9LM3FfoEveH1+l
 Zfr7wd452Q15/b3Ua519UH/PCpiTENR7zUaiFFADFtmnDwgYlFjbDZ/jAkYad6w0hX5QZyTeZb9
 lQBVVPh75kHkDLc2ukn4mVqXOju4ugPNADu0bsrsv8ubr4aBhaqd6cMYADevfyiEIUcPdXQ5uCi
 ff3tpH6GWxduKX/5qqYnJx5w/yW/jO1OqxE6nHfk8r60BZLuGm45vchO7hCrRTaNuYvr0esFEYg
 3szvjzex6dae7YLajXLIG91CmxHH1WkUQU740YEt77F3Mjw/MFkN5WpkVbaFKfSwydtvO+O9ux+
 opHB6M8bPztH8poO9Sg==
X-Authority-Analysis: v=2.4 cv=VYv6/Vp9 c=1 sm=1 tr=0 ts=69a76146 cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=YMgV9FUhrdKAYTUUvYB2:22 a=oDyGrVB8f0aMB-Xt79gA:9
 a=CjuIK1q_8ugA:10 a=zZCYzV9kfG8A:10 a=kacYvNCVWA4VmyqE58fU:22
X-Proofpoint-GUID: mpwl73HK-u9BquGXzngeZvWqWgwGkQ05
X-Proofpoint-ORIG-GUID: mpwl73HK-u9BquGXzngeZvWqWgwGkQ05
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-03_03,2026-03-03_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 lowpriorityscore=0 suspectscore=0 bulkscore=0 adultscore=0
 spamscore=0 phishscore=0 priorityscore=1501 impostorscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603030185
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260303_143135_479856_38ADCDAD 
X-CRM114-Status: GOOD (  16.98  )
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

On Mon, Mar 02, 2026 at 05:51:24PM -0800, Vijay Kumar Tumati wrote:
> Hi Bryan,
> 
> On 2/26/2026 4:34 AM, Bryan O'Donoghue wrote:
> > +        power-domains = <&camcc CAM_CC_TITAN_TOP_GDSC>;
> As we are cleaning up the PHY device nodes, we should consider fixing the
> power domains as well. Although TOP GDSC is defined as a power domain, it is
> not the power source for the PHY devices. Rather, it is the MMCX, MXC and
> optionally MXA based on the architecture (Refer to 'Voltage rail' column for
> PHY clocks in IPCAT). There is no
> parent-child relationship between the TOP GDSC and these in the clock driver
> and it was just working as the required power rails are getting enabled
> by/for other MM devices.

Which domains are required to access CSI PHY registers?

> > +
> > +        vdda-0p8-supply = <&vreg_l2c_0p8>;
> > +        vdda-1p2-supply = <&vreg_l1c_1p2>;
> > +    };
> > +

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
