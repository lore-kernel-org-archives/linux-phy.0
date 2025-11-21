Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 63920CFA753
	for <linux-phy@archiver.kernel.org>; Fri, 21 Nov 2025 09:11:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4Nvq2yfVpzTs4LI5uvQrcB4n2bzxQVMj0l9sDvYlBGs=; b=CnXQPrmuzqVZ3F
	hM37yvQKUWmOS1Z5iDa+B3FM9q91ScF5+XGSC373y6EdStyZHMgiCzV5FzRtsLMNJOJ8qc8bERjEe
	LJas0ekMsHMdM7yHjmEvd8V4mXF8zGlyN7DRlULOH6JE6WsQyFdNTR5kMFSfkq8p20TJkno+OV/ch
	XcwXWoVmSOW/nJ5nR2+UKu0iKY0L12VtAfTy21dwolwZtodaNrFrF//e1FiQs5kTKurbhtJAzSjr/
	2O2n/v7y3mtcA8WmkBfLmJ/Dmh6JKcC737bWIeU5v0/ore3pVpkS44m0zCsF1vYwM1/yi0ydkqwFL
	2ytol4ETyz5ylpMGZXfg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vMNAz-0000000882k-06BS;
	Fri, 21 Nov 2025 09:11:33 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vMNAw-0000000881x-3Afr
	for linux-phy@lists.infradead.org;
	Fri, 21 Nov 2025 09:11:32 +0000
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AL8rZDh3675924
	for <linux-phy@lists.infradead.org>; Fri, 21 Nov 2025 09:11:29 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=6D3P9Xp8JseIZLmbs45NXi2R
	k2AineqfCx/Cyn3YGso=; b=ReKJV3xuD4Y2yy+KHRfKCHXxiUQ9IBCIMS8GIoUD
	NTwAsP0HMoBnIIoi4dF31MQvQN+O5X6fxwB5w33O+9BQgtHFTdml6i36/w53zhfj
	5ggn4Uf9L8B/o7i29+YLJVtH6BaiRiJDA6+li0kkwUJVsCOD76KIMjXEtVvwNZON
	yVRXSrkAdWKGguVG/H3RiQkgpY0EO0e9Org4tuqlD8/67UhjIeHDHefZlGnfwTPU
	m69uMQwGomB5Jl7plkQf+aBmJVhqlORjV1Dx4V7KeCnKx8YZ0xctRTn5FFz81z+G
	D4MPXfYsGeExWLbLlq0sFsxn9MBeRJEhnzEqoPAoh4mB1g==
Received: from mail-oi1-f198.google.com (mail-oi1-f198.google.com [209.85.167.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ajmyj84eq-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 21 Nov 2025 09:11:29 +0000 (GMT)
Received: by mail-oi1-f198.google.com with SMTP id 5614622812f47-450be8a012cso3039661b6e.0
        for <linux-phy@lists.infradead.org>; Fri, 21 Nov 2025 01:11:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1763716289; x=1764321089; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=6D3P9Xp8JseIZLmbs45NXi2Rk2AineqfCx/Cyn3YGso=;
        b=fBHTEcPok4ED5oQQCQCau1DvMQ72ObNFKgSVzmCag7dA2iUpOttuRdc1chjt2KV7QN
         fYYHrgg3qrSF8W+bbJNm+0xqMAQFfQQsJMCF9zJ0BErEibwG1YZFMFhzMVfrhWwFRRlR
         Au17MdaMEZer0uWsLHFquppXuxcYwAnUZBIHMFn/zW5j4g036NPM6ke+ecBmCIl8gpcC
         I9+d5NThfilshCoDP3Wo0EJWVr41XahjYeeU+vT6agOVWRleImLGW6/oMv6KIuhmmhNL
         67ypDloM6MMpXuh0SR4NkdSNS5wbPLCpBM8Gpk4AmhFgxMfmQjX3drlegse9Tkr4ml//
         mJQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763716289; x=1764321089;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=6D3P9Xp8JseIZLmbs45NXi2Rk2AineqfCx/Cyn3YGso=;
        b=cH5P74W1+jY2o4Ml179oZgtGYMJbyFyD+jTVz2GgJftSOYWdFA1bbETizZppDPU9Tu
         X4AbU6vTx+nT6owbbF3a1cyPNJyXz58BVb2kY+UNDjwQxBRFzArsDgmRcgfltZxF2gzI
         E0K7Mt77nXQuNOgdr2gRN5qzyTWFiFI3zoSvqgVI8LaxBbO8i2zFRs+fRHRNxOyMRW8u
         L/mTDhtqG9bTYfDM9PkAmiw2Jfy2U37GQhsohq65y0yTNtnu00qzNnGkBJ3qBBWEjerq
         nVgycHyDNlfob0hYru7FSnRh0jZeesU9MWXiaWxXUx1ABR7MejpQY9sABLYfVIqR6Ays
         xNyQ==
X-Forwarded-Encrypted: i=1; AJvYcCX+NyqLIC1xqTNLZyI9i4XG3D2phl0+BnBnvESNSwq8SF6kzyL7sv7DzM53KCu0I0Igz1NFle9AbyM=@lists.infradead.org
X-Gm-Message-State: AOJu0YzE485rU97O0d8EdBREESK3tTxePojph8LrlU9gQBJEXHblklaW
	wFpzvhpQ5ZM/s/LJyyY1MJVYYTsXbpxSl1EvPKHb2bdT+/ogXG/MSYT+8RHzLyq3JAzcbn1lUdH
	X6fco9fut71U1QP9bwbraOI2E23xTQsPBmDA3X8B2KXAU3YHnZDQDqrRjAXwC52irjmb/
X-Gm-Gg: ASbGnctkStYgKWrrICJL0gstQZT8fAgjUjnSJo3Kw7ZvP7BlJciEHQyM3HOw/n9tDMS
	XQ7yo/qnhyThjUbvXisdOQfAMVW7goM0fucXMH79ajF4ELPh60amZQiIirpmtiwQ7oNYed8MUXt
	/POqCfe6YITjr4oHZ1nhkRxo7W0meU/1RVKlmWG5P5Ll3M9QULKdWd/npLGWFj7ormZQ2+fTvC+
	2421mK6M1FPQw73L+boAMKk9t4U/UynRFMQafa3v3kGJNo4+1I+lX100GCKcsrSziyJidS1ub38
	Li4QIkk9Iq7f10QW56FUpD/dZJTogMGR5RC8MTavStk5WJnzb4Mlb2rcdxIuNTNksYfwtvb8kX0
	kv9I6PTT7L8+O8tBYz0Ofybb76KTWGijzDrvKsVWInRT0RXPhVnqqFxm6
X-Received: by 2002:a05:6808:f8d:b0:44f:6a32:535e with SMTP id 5614622812f47-451159c88a9mr469055b6e.10.1763716288847;
        Fri, 21 Nov 2025 01:11:28 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFb0TmlottiXLv2BMTXYKf/C86WOZfRODfkKwZY0hWSZqYWzSXPghuwnxyKD/Ob6abZmspcXg==
X-Received: by 2002:a05:6808:f8d:b0:44f:6a32:535e with SMTP id 5614622812f47-451159c88a9mr469046b6e.10.1763716288487;
        Fri, 21 Nov 2025 01:11:28 -0800 (PST)
Received: from hu-qianyu-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-450ffe2d425sm1473631b6e.4.2025.11.21.01.11.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 21 Nov 2025 01:11:27 -0800 (PST)
Date: Fri, 21 Nov 2025 01:11:25 -0800
From: Qiang Yu <qiang.yu@oss.qualcomm.com>
To: Manivannan Sadhasivam <mani@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Prudhvi Yarlagadda <quic_pyarlaga@quicinc.com>,
        Wenbin Yao <wenbin.yao@oss.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Subject: Re: [PATCH v6 0/3] Add support for Glymur PCIe Gen5 x4
Message-ID: <aSAsvfRrDxSLI2v9@hu-qianyu-lv.qualcomm.com>
References: <20251103-glymur-pcie-upstream-v6-0-18a5e0a538dc@oss.qualcomm.com>
 <aRyoo2Ve_hjgc84M@vaman>
 <aR7xkSWWLoGX1HYn@hu-qianyu-lv.qualcomm.com>
 <hoxawvhmxyht2pf53xiw5wratcmivc7d3g2w4u5lzhkvnjm2ua@yba3t26of36c>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <hoxawvhmxyht2pf53xiw5wratcmivc7d3g2w4u5lzhkvnjm2ua@yba3t26of36c>
X-Authority-Analysis: v=2.4 cv=ELgLElZC c=1 sm=1 tr=0 ts=69202cc1 cx=c_pps
 a=4ztaESFFfuz8Af0l9swBwA==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=kj9zAlcOel0A:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=VwQbUJbxAAAA:8 a=KKAkSRfTAAAA:8
 a=DD3sGXivSqi05yfKeKUA:9 a=CjuIK1q_8ugA:10 a=TPnrazJqx2CeVZ-ItzZ-:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTIxMDA2OSBTYWx0ZWRfX1m5pS+uDWFxX
 Km7ZE9rx52LfiVNsV/eIE9hFR8i3eiNhfUvvE+hkVi1hWzx7/pfRE2l4XkRMZdiaAJtBLZruvSr
 GKLyEqUInUJrqyW1ZImpABfTQUg8wyooXpQ2qgwjnAMLLVXK2TXSLRt16AVmVXSB96JCJg96VPd
 EBHjJn2QE0n8fQyqrDKZDuFl6hjZgMjnFYEzv8clIu0wUqFzEM/tHjjnfZ5X6Mo1scTaWmxZWkN
 1nXODynOrpiT04sDzRtZ+VTYyXS8MYgWvOp0e6L6doeVcqqPBcsNQvfI3jKH618V2ObnbpTetNu
 hpiMtVOu5x2friq/9ZaO5lIrQMiQKsZ99WdM3okPrKBdhfTWTEVsqIsK8MFPZ//ZoWS0E63PPHA
 6PvXeKRDGknDhiLLyLJvqIs9dLtXtQ==
X-Proofpoint-GUID: ptx61qYV2p_KgL5tKONtmntS4icDcO72
X-Proofpoint-ORIG-GUID: ptx61qYV2p_KgL5tKONtmntS4icDcO72
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-21_02,2025-11-20_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 malwarescore=0 clxscore=1015 priorityscore=1501 bulkscore=0
 phishscore=0 spamscore=0 impostorscore=0 adultscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511210069
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251121_011130_952636_2ED06275 
X-CRM114-Status: GOOD (  22.44  )
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

On Thu, Nov 20, 2025 at 04:50:12PM +0530, Manivannan Sadhasivam wrote:
> On Thu, Nov 20, 2025 at 02:46:41AM -0800, Qiang Yu wrote:
> > On Tue, Nov 18, 2025 at 10:40:59PM +0530, Vinod Koul wrote:
> > > On 03-11-25, 23:56, Qiang Yu wrote:
> > > > Glymur is the next generation compute SoC of Qualcomm. This patch series
> > > > aims to add support for the fourth, fifth and sixth PCIe instance on it.
> > > > The fifth PCIe instance on Glymur has a Gen5 4-lane PHY and fourth, fifth
> > > > and sixth PCIe instance have a Gen5 2-lane PHY.
> > > > 
> > > > The device tree changes and whatever driver patches that are not part of
> > > > this patch series will be posted separately after official announcement of
> > > > the SOC.
> > > 
> > > Please rebase on phy/next, this does not apply for me
> > 
> > Hi Vinod
> > 
> > This patch serie depends on
> > https://lore.kernel.org/all/20251017045919.34599-2-krzysztof.kozlowski@linaro.org/
> > 
> 
> Why was this dependency not mentioned in the cover letter?

I mentioned it in the change history, but it was not very obvious. I will
note this and explicitly mention dependencies in the cover letter body in
other patches.

- Qiang Yu

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
