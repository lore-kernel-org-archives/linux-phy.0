Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C29FAC43458
	for <linux-phy@archiver.kernel.org>; Mon,  6 Jul 2026 18:22:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VhzY9MCV+iRkBlmt78A3PzNJ8+hzOWPSSNSvHmwD+bE=; b=1rVQFygzo1gO2X
	ymmfA4kAlncB8eNZfeyAdNNvEXHWBe/b9TLTrfG6Dr9yLvfMq00pM/KOk84zoWTaVJSAGoFfEmiA5
	1zE2QvubARvhRG21iQ4qGjVaijdpgHTOZaH5nJUx7WpWESF6ln8PAdmRbe4KqviRB4lZYzlDtGciu
	IuYaeOR31WyKBc89g2AEQ7USRjSm37ZZZPQblS3cOTV+RwcazkU1HMg7CUKVYSHCkfXif/0xo61ER
	wPHdhb5DRuwkEp3RXReb3WOGpO3nlqtO6R790eXVbuEM55fvhwflZ6nctzd/hWfWlMfS1S32oYtis
	n/sU6huTzoiKt5M7GsJg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wgnxS-0000000DKYi-2H1J;
	Mon, 06 Jul 2026 18:22:18 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wgnxM-0000000DKW6-3eVI
	for linux-phy@lists.infradead.org;
	Mon, 06 Jul 2026 18:22:15 +0000
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 666FFBqW990319
	for <linux-phy@lists.infradead.org>; Mon, 6 Jul 2026 18:22:12 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=v+oE012GSbNPmRWX2SIsV0+R
	GluI//ijk3Ve8PNTH7A=; b=ICNziEBhOwA3ThKdqAlrIYdxEyCtsuwQxSSe4066
	ghoWAku41y/5nokuhHf+oBQP/RpdRhK9lZZE/3sxGgXIw9LmaEnkyJTuY1jBcJ2S
	7VmAgRXMWxsEBAiJLi89Y3uXwkKh+c+LXabxO7jjUmp37skdEt0IR05a/1+2f+tT
	9NqScHRx77IWj03FrLHvBSe8YbOuQk5WzzHLQD4IrFGYPdcHzDcsGT2FxytZ+fZG
	vskpbEP2/yT6z+OmZt/beWQLRIMSlFcew3PRnKM60tMs3Pdgi8xmIox0820yQHlo
	B9NkXIubsaj2gfPpSc01mCbfRAnHJXR0w6DBjJOCrT55uw==
Received: from mail-ua1-f72.google.com (mail-ua1-f72.google.com [209.85.222.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4f8a3gtbm9-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 06 Jul 2026 18:22:12 +0000 (GMT)
Received: by mail-ua1-f72.google.com with SMTP id a1e0cc1a2514c-966a617821aso1385291241.3
        for <linux-phy@lists.infradead.org>; Mon, 06 Jul 2026 11:22:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1783362131; x=1783966931; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=v+oE012GSbNPmRWX2SIsV0+RGluI//ijk3Ve8PNTH7A=;
        b=b0ztEXWWR5k4tvBBce6Lh3mN98WQSjm8SKhvKxoLdxVQvFSivm4J3OlEPCqiJjF6my
         Drn8NLSTIfApZjiGfucEt8uwpJlCbHM7Ji4B4G1ep0TJke30P8TwTN7BvnsTr3JUPnHD
         Cgzlh5kSPcLXEEFK0TdkPeZsrFWfhM9jscZSNiAC9Ju+vM4Q4xWswxqvX7HsgiKiSdYH
         TCT3eQbDtcrC4w4adxRTi8rYDCLrp1T5smzYVdL5lEEk5g8WNy5ngQfOAKmY4c2fVHXD
         psSZN6iJbeegbosqyBRauhrYa90C+7Nb6KZBMp2oyCpqpalhBZb37VnU+qFaVfz5MP0M
         2KUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783362131; x=1783966931;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=v+oE012GSbNPmRWX2SIsV0+RGluI//ijk3Ve8PNTH7A=;
        b=l1gYJT4ilk3AtET0xxhV0+QgeFshGjO0CD7N5CNn1JLz6s8rmQEuzFmldXUyk4vSyl
         snVbFMeKUDPZMTHvv9Eq2kWvJYw/zDFW6uIxrhcGBojlDstsFLCHXEIHGuOktr2RUqSU
         lYeyVg5shEJqfNh0mtQCMWH9vefOLxx7znTeIsIpAeWZSdqtq8mjGHn+hxxxAsQtzKq9
         CLU2BjvZ6Sx4AN/agtEYznPJLsYmrTmB2rNfzY9WOdGAEuxDKbp9muEL0/JzXJy8FczB
         Bz+1rbhu1KCtjU2QfAkX4EhV0tTtIXoswPFrXFUa2xzWS3/+ty3UA37S3pIJaASx0J1w
         Plfw==
X-Forwarded-Encrypted: i=1; AHgh+RoEhF7R+XAnzhIn2jBHMhVZkHdUYckVhA6TehDKEiyq7a73KheTSrLL1n+d2fs+dZlJi5KXzckPN5U=@lists.infradead.org
X-Gm-Message-State: AOJu0Yxns+moypFdKOdQbsLxRIlx2N6Qm9Yq4kYDlNBxkKLc3x/qpR81
	i/IKQNB4VOxw8aAaDepkfWygSitg1PTbra91JTUORm5nzdkWNnU3v9+jO7TPqK0V+puKSIjj9bY
	6KEN05k+al7UCs/ahc+vnvoM8pgL8FiGB3n3MILKulrcMEP1PsGqSue2/yywUmkVBdQIO
X-Gm-Gg: AfdE7cndVmTyORRKjBJ4bn0UpxRux/J+Nf7QENcCBL1LwvLydN9GvjG68ciQlgcn/tc
	KMGIUnCJIdBr7AMMnolVwEZPtizWNxYBZ7ln5lCx7E42iAzfgVD6tw9swLqYtuxGW1VH56tcobh
	cBUS0TPqgDVS+tMzaqqlr9ganhVrX2qcPANMmVrRirhZLpiWK6dACjz3i7uvz9bCk1fa6wiZVzp
	GqlnLDXXN6kLrsXf8fKx9LFYLoID2vBrfG5/Jj4mv4Ee03IRYljp+IKSQBFDTirU23xESxSYdTO
	JBjFbtY1C9ulnh8XPpJPrh8ubWYi0e9Q3pI8G5D3XTKjKqF75xtqloQ1j7x3cLoIrUUijvQkSvK
	xYgP0Z/bMjDLNyY4uko1pVZNAE+yz8+g2GUFswoG+46NGNrjv2AlvLZmrTCNq+VRRoUElhxQsUm
	A2/i0mFhcRH0kaq0lE1czZyn6p
X-Received: by 2002:a05:6122:4d07:b0:5bd:aba5:3830 with SMTP id 71dfb90a1353d-5be89537d9emr895722e0c.0.1783362131391;
        Mon, 06 Jul 2026 11:22:11 -0700 (PDT)
X-Received: by 2002:a05:6122:4d07:b0:5bd:aba5:3830 with SMTP id 71dfb90a1353d-5be89537d9emr895694e0c.0.1783362130681;
        Mon, 06 Jul 2026 11:22:10 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5aed136f8b0sm3065981e87.4.2026.07.06.11.22.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Jul 2026 11:22:08 -0700 (PDT)
Date: Mon, 6 Jul 2026 21:22:06 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: esteuwu@proton.me
Cc: Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>, Brian Masney <bmasney@redhat.com>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Rob Clark <robin.clark@oss.qualcomm.com>,
        Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>,
        "Joerg Roedel (AMD)" <joro@8bytes.org>, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        iommu@lists.linux.dev, linux-arm-kernel@lists.infradead.org,
        linux-phy@lists.infradead.org
Subject: Re: [PATCH 1/8] clk: qcom: dispcc-sm8450: Fix mdss clocks
Message-ID: <wgaujvwp45q4gfm76py2xbxobz5zc4hotnfxwldeysn7go6t6r@ufcuw7khhadg>
References: <20260622-sm8450-qol-v1-0-37e2ee8df9da@proton.me>
 <20260622-sm8450-qol-v1-1-37e2ee8df9da@proton.me>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260622-sm8450-qol-v1-1-37e2ee8df9da@proton.me>
X-Proofpoint-GUID: TRxLkwo9-8Hz87MiW27xHgw_-AdzQJsk
X-Proofpoint-ORIG-GUID: TRxLkwo9-8Hz87MiW27xHgw_-AdzQJsk
X-Authority-Analysis: v=2.4 cv=CPYamxrD c=1 sm=1 tr=0 ts=6a4bf254 cx=c_pps
 a=ULNsgckmlI/WJG3HAyAuOQ==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=RAioF0-LDSMA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=Um2Pa8k9VHT-vaBCBUpS:22 a=Rl_UxCnVGJdxiaxNqnMA:9
 a=CjuIK1q_8ugA:10 a=1WsBpfsz9X-RYQiigVTh:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzA2MDE4NSBTYWx0ZWRfXwUky93eByuWG
 qp3SAxMufhl9YQlZhpgMGjl56F6ySmfVhBhibltqPA21O+dZgk6tVe0HrNV6svU4QAS956q9f8T
 shuwQsrMi4MDfV82I6q4rWoayk7PQI0gc0MvYFbLqyOqPKuXYheF/aKVCT2RY8YTSrSoD3kPU/U
 g6UhGNCWYJoeYFGzP5aXYIrLSXzlwjqqmFzle4kUPC5P9Mwk1goxrWCCFgJqSSaPQCI+XPqtSoZ
 nb5UvN6KU89dCyGqB1KDBsxabuzJ4UFH9gQF9tJ8xPIclun5QZQymOacJc3OTKmhM7GBTxx6hPk
 tF+Q/0hOU55MiOGNiJE2xH6nU85mkWFuexmjVwE63jTgThENDnqVJYCjd7Btt/r+/1m6fgWtpCb
 AIXdZGV6/90kqedNucMP7MUMhfpBSsGrZtG0PJ9Dy3JL64BYLFaI8QbZR8+GQLcCs6OttM5LFtm
 G1J4G0y2E0/aE3URT9g==
X-Proofpoint-Spam-Info: AW1haW4tMjYwNzA2MDE4NSBTYWx0ZWRfX/d6y+AyB3A44
 4VAhyY5ertmmMD68vNnCEikABa4K08MF6f3fhONFzl9S2eRvS1mTIKFQcpcewuK9wopT0r0sNAI
 vlb310iemEqMddY8vq3Lv1dxMOX0SX0=
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-07-06_02,2026-07-06_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 adultscore=0 clxscore=1015 priorityscore=1501 suspectscore=0
 malwarescore=0 phishscore=0 bulkscore=0 lowpriorityscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2607060185
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260706_112212_909524_0AAA7DD3 
X-CRM114-Status: GOOD (  14.88  )
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

On Mon, Jun 22, 2026 at 08:54:22PM -0400, Esteban Urrutia via B4 Relay wrote:
> From: Esteban Urrutia <esteuwu@proton.me>
> 
> Both of these changes allow the framebuffer to show upon boot and let
> the mdss driver take over afterwards.
> Before, none of these actions were possible. Only mdss takeover was
> possible, but screen had to be turned off first.
> 
> OLE configuration may have been a misinterpretation... that's not
> something that's done on the downstream driver.

As far as I can see, SM8475 uses lucid_ole for PLL0 / PLL1.
So, no, this part is correct.

> 
> Changing disp_cc_mdss_mdp_clk_src from clk_rcg2_shared_ops to
> clk_rcg2_shared_no_init_park_ops fixes this warning as well:
> 

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
