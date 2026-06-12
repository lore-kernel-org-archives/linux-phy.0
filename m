Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1AFEDCD98C7
	for <linux-phy@archiver.kernel.org>; Fri, 12 Jun 2026 00:38:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Hh5ZpHN8MiGPikc4QrjygXoBcbvEIdTqGPiZc8QOIKk=; b=138AzD1emC4K0A
	ZZH66TYgkVoJdW1KHO1bh5iK8jxa6XRGYaRwQSW8FLpaDUM3LZrES16lNn87DWGMQr0EnzwA600ic
	t9XYBkZ8E7v6/nHds7c26z+GZ5asyD8Zv1wtQ+3koR0zu1mMPcbV2j41wqmWWsfCKZmGIcH6kz8n9
	Y/OHHvoPIrwrphcJK/cuuoHUDnNiCvulIfUSb/cLaEwAZRRbXRBSvsu1JSSIWqq3RmMcx1EZ9COKJ
	Vk81W68sm4vcXBCjftrwpIDwSrVKkAvH0C38L57yXtKXBGuahB6a+w7NJ09ne50vYN+GfZgUEjAwQ
	jjBPvMPCdMP22FBF0GOg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXpuK-0000000ADxj-3xl0;
	Fri, 12 Jun 2026 00:38:00 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXpuI-0000000ADxE-2Mfq
	for linux-phy@lists.infradead.org;
	Fri, 12 Jun 2026 00:37:59 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 65BMVKSJ1920882
	for <linux-phy@lists.infradead.org>; Fri, 12 Jun 2026 00:37:56 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=nQPjr36R0KS8hFdJ7HPSGHpY
	gXxnFZo7pMmgrnwmFuo=; b=VCmmIV4BLF8HY/vWbNEV6J+0AVqn10FwRTWIo+mm
	HPSKgfgWVz3+hJ2eTEUYbB31bDPe78d+vftTYa61YEBW01t6Dd0fGYLeH0tLov6A
	8CaumGG/UMGQ2vnm6Xq+UGE0j4MGab2UH5WauEkbsi7kuyp/48n55G/ux+2Xw8gs
	jvb5p3M3MmYdMBwzmj3rLxCEgpXVA69Uu2oqaaJ7HmXUh7Cgzid7NWQu4Y4dAPdt
	m6xj7tSNfjJKVw2I3PalXlG2EMWfAfMu3LCETcYTZC5Y37ni+dfO7wuMDAmWs/+o
	yUw2ogUHEUDr4gjdwMW+yvYkWNv/WW3FCXHyp6VYDanO9g==
Received: from mail-dy1-f197.google.com (mail-dy1-f197.google.com [74.125.82.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4er1cbhjhe-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 12 Jun 2026 00:37:56 +0000 (GMT)
Received: by mail-dy1-f197.google.com with SMTP id 5a478bee46e88-3080bb0267dso1011161eec.1
        for <linux-phy@lists.infradead.org>; Thu, 11 Jun 2026 17:37:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1781224675; x=1781829475; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=nQPjr36R0KS8hFdJ7HPSGHpYgXxnFZo7pMmgrnwmFuo=;
        b=PsmSoICZErVuwlHtZQJL+YbZKBor1/8OCM6P2yyjvKvLgtdN65Qamtj94BoISmn5c8
         h+Rl5GFbDmLFMkf5V0Rh/aGdglIQNY64dIMcZvR0hU8QFDqTaX0UwSQ5lq2YoktT05la
         MfWxJmG29P9awfNvbHSWMqE4PrcLLwfepKm8kOjH8GNN7sn7qzL/0zZ2MSUP9qwXyQUo
         Li2x83D6cuSEN4VofTCn7/C9MZmo2d97Gw27ptLG7o90d3lbkpYWmDXpLfnDLTzsFjaN
         juqXSH/5dtFRu6MQ8s9e4qVDU1A8PD4K57V4SSuszWEqSP+zv2IgvQdDclFyh0cbQ3c1
         z9Nw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781224675; x=1781829475;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=nQPjr36R0KS8hFdJ7HPSGHpYgXxnFZo7pMmgrnwmFuo=;
        b=rYK3cvWvQP1rxmpWpq42BD83owVlBy1ZIg4V636aLiOZUy0k8W7+nFL9j9kj3LpO19
         q7zuyckBJs1AxMXsKNXWcPUGP/Wfryc507453DPaQWrwDG3vTF5PKVgizIrpgkebOdlQ
         o9FgZ3avliv8CWzUeSp246q8V1XhiF1RGcF7vCkXeOg4QoMpYzdG3ODfyzXCEzaDuuvK
         kvK/Y5xp0x5fhwmYs+YpSRhQhUrxhgioa4gtgxfRXhL2/P04Ix6zcrG2KtNbpn1yCLOs
         tDg+d+r/FT0q9vusR0Q6Gpi7OW4zr5Krt0k+/7/wIpHZnq/gOOv2l/foYgCE6yo/il3g
         kr6g==
X-Forwarded-Encrypted: i=1; AFNElJ+5Oh12eF/5PCjT8yiHOi4dHqA6dZc9IK7Feu7juX3erkrnr1yiRXf7O6iekyfocgMVnXNLXrYXt4Q=@lists.infradead.org
X-Gm-Message-State: AOJu0Yw9zTy0Yw4zG3RGhhG9g8zt2p70jq6l2BrhQfaYX0LZyK8xrXhY
	iLnn4GXgrPnt6wDrbWCVGoy/AEGYx8V8rhaoYYPmUsndpAF2t8PIduCD6hnaO6Y6103gf/tel5/
	D3i4yIXT1IxELSD5D7g236QTHYEfzOIzAEfr/AcfI3IHZKYKTcltFJtV4axW9Ario84cY
X-Gm-Gg: Acq92OEW25fB1gkenZotKb0YwD2e1bnX9WstV5whu3c3RnXtUDrtrXKOZkqEX2nyp2o
	UgrxL8koTy66Mk1MadBR3ui3zN+2LQNNZVFRYQrIKAdQvppil2TGOrikO1LA8EIesMTrjZgMu47
	9tDyPEPXK19GsXQ0nyZPEJzBh2h8ou/EfbXroLB2ijB+l6t57xlaAuE9GIMQoW4wge3JU76lOLf
	mpxyw2rUgMu8E9dfJ8IZ1DGBB3RHm8tO/VBEkCrY6l9vG1v2Bb+12kFDiUeRBBTFC6FcQe7FUVB
	XSdbUTYIa2iJhVmmWWjgat9TpKlnsr56W/4fZHQIVcOyCgquYiC6juR9U1grdeZfasZ1Pg1OnWU
	CwdWVbdKx9pXdum7qdoNvez2MUkZ7dsCPrW8PQ9sQfvnBnjX2EDFdOH5cZURuvuK/crqgV5oV6I
	5C/Q==
X-Received: by 2002:a05:7300:3202:b0:304:630d:e4ec with SMTP id 5a478bee46e88-308200c90a3mr404691eec.28.1781224675131;
        Thu, 11 Jun 2026 17:37:55 -0700 (PDT)
X-Received: by 2002:a05:7300:3202:b0:304:630d:e4ec with SMTP id 5a478bee46e88-308200c90a3mr404643eec.28.1781224674095;
        Thu, 11 Jun 2026 17:37:54 -0700 (PDT)
Received: from hu-mattleun-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-3081e48e412sm1125354eec.4.2026.06.11.17.37.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 Jun 2026 17:37:53 -0700 (PDT)
Date: Thu, 11 Jun 2026 17:37:51 -0700
From: Matthew Leung <matthew.leung@oss.qualcomm.com>
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 10/10] phy: qcom: qmp-pcie: Add QMP PCIe PHY support
 for Hawi
Message-ID: <aitU35BP+hnMlOx0@hu-mattleun-lv.qualcomm.com>
References: <20260604-hawi-phy-pcie-v2-0-be908d3560db@oss.qualcomm.com>
 <20260604-hawi-phy-pcie-v2-10-be908d3560db@oss.qualcomm.com>
 <h6fbnsqg3gcobkc6chzehy2ew5hczidzqulr3xh6d6u5kazjhd@ygsd26b3neyo>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <h6fbnsqg3gcobkc6chzehy2ew5hczidzqulr3xh6d6u5kazjhd@ygsd26b3neyo>
X-Proofpoint-GUID: NM7HLc3rsW49w1KelNq9iHADJktjMMC1
X-Proofpoint-ORIG-GUID: NM7HLc3rsW49w1KelNq9iHADJktjMMC1
X-Proofpoint-Spam-Info: AW1haW4tMjYwNjEyMDAwMyBTYWx0ZWRfXzIY7YexG/LTB
 6fU4SToeaT+TbY34zXjXgqsODyJMKthVcu1X1ZZxyLC8/fKVbJ1kMFSC9guJKMt02VaeB00KC1/
 dZimJuS9x06YS/GXS/sbIO19U/t2nW4=
X-Authority-Analysis: v=2.4 cv=S57pBosP c=1 sm=1 tr=0 ts=6a2b54e4 cx=c_pps
 a=Uww141gWH0fZj/3QKPojxA==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=kj9zAlcOel0A:10 a=FelO9ux0wxsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=3WHJM1ZQz_JShphwDgj5:22
 a=EUspDBNiAAAA:8 a=3XJrFejPlp7lr11Lrn8A:9 a=CjuIK1q_8ugA:10
 a=PxkB5W3o20Ba91AHUih5:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNjEyMDAwMyBTYWx0ZWRfXyUswwPkbwCM0
 5n2PzexpLyoChgcKScuL0fUuf895T8rpfTDp2Xx8sAYggEw3PUMYDDiipbWWX05JvN3lNVeSN5I
 6NbpJ+t7D6ay7cjgVVjb+9Fq2fYE6YdirwQgw/TDpZsKsKRDUlr8lAJbyp6MEjrsDZXqLe2XxJ8
 VtYdQ/hzUWriBH7N/fSolIljqKYRdsBsGyYCnKZ9z9VtRnu/PiAyFFhOnRUlGX+tINfvTh6rmie
 nNJonlLT1PLzyhgvFSav3wbRuIEFtDa8k8mj6y7IPsdhBoj15nUUoPIPaEkjMC9SheY25M3FtjT
 QUPD4cJFatkBaDOtQ7B6O1au5F7JHXEzvbcpBE3gugRdwDreto7Dor61V3HILYijRmbB4+b2uaK
 wsHMFG7c3kVPy3vMwjiyoaB4Mtk5KQYWvasBCoHMUwwqYlb9nuHgxA7Hwd6tcxE16rMHFqBMBLc
 IaxLPXaIMYoCFa/PCfQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-06-11_05,2026-06-11_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 impostorscore=0 adultscore=0 phishscore=0 bulkscore=0
 lowpriorityscore=0 priorityscore=1501 malwarescore=0 clxscore=1015
 suspectscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2606040000
 definitions=main-2606120003
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260611_173758_725908_860B174D 
X-CRM114-Status: GOOD (  17.15  )
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

On Mon, Jun 08, 2026 at 12:29:54AM +0300, Dmitry Baryshkov wrote:
> On Thu, Jun 04, 2026 at 01:33:04AM +0000, Matthew Leung wrote:
> > Add the QMP PCIe PHY support for the Gen3 x2 and Gen4 x1 PHY found on
> > the Hawi platform.
> > 
> > Signed-off-by: Matthew Leung <matthew.leung@oss.qualcomm.com>
> > ---
> >  drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 380 +++++++++++++++++++++++++++++++
> >  1 file changed, 380 insertions(+)
> > 
> >  	u16 rx2;
> >  	u16 txz;
> >  	u16 rxz;
> > +	u16 txrx;
> 
> Can we do what we did for QHP and reuse tx instead of introducing a
> separate txrx offset and data pointer, etc.

I see what you're saying. Yes, that method should work here as well. I
will update in the next version.

> 
> >  	u16 txrxz;
> >  	u16 ln_shrd;
> >  };
> 
> -- 
> With best wishes
> Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
