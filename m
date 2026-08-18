Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2FEE2C5DF7E
	for <linux-phy@archiver.kernel.org>; Tue, 18 Aug 2026 12:33:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OwVfhkefFyktDq2e0PJV/n1Q383YCQrejvpikg0ZcXs=; b=cFIWLgE7tC52jX
	Sslz4JfgAtBWMwLL2wxixBc9Smc88DM5xR5xALZWyRWAe5L2/a/1Mh6DyyJsXIzfDrUadk/SKfE/x
	tYDnTCJI+voo50VPstDGSzvKMUFTn1CB7TrLFpNMQvGnLah6BgtI8NXjzpVfGmH5yGft+zUkgJ87Q
	pegz8H+ItaEyWtRVD/ItcVNRT9x2PbWOEnb98ogXoyL2S+GLXhsFy5iAdHZ5rJqlbLR2GZzh+FXN8
	vz/ZuppQq1AgV44beRv8C0v1rfwtnwSX/VYs2qmdpG1ayVvz7t58bc8zAYo3wT+1U3AzLoqB11hHE
	01DTg/CdW6Av9QB/HxcQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wwJ0c-00000007vrt-2xCJ;
	Tue, 18 Aug 2026 12:33:38 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wwJ0a-00000007vrD-2dmJ
	for linux-phy@lists.infradead.org;
	Tue, 18 Aug 2026 12:33:37 +0000
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 67IABQIo919309
	for <linux-phy@lists.infradead.org>; Tue, 18 Aug 2026 12:33:35 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	14IBaCEa49pzmaKpgnV8Y/NwAMvT4ZjHjKK8MDfV4F0=; b=oYzKq5jz5u6QBv0i
	x+jcqaN6NaAJkS91y9mzw3XCZAvCe5wTQcD2nTZpRQigJe/6gJqV2MvLo35YuGyj
	DEBKQrX+Dpj1tx8OxpZNHSg7vnVKP6e0AlWWYvFzGb4Fmj71YN+cAo9NeuZcCNYM
	BPyQW1F5zMP96xJ9IfJ5kRkMIsPaJ68JOlxOq3LVZ9KyXWY3b8WICVNKrZfVA9hb
	HLfzwEV61SgoIiZbQQDqalKXwHN+rE6I9vp22mTM+aKbWCUxK/daQ5Tfc8MhU9Vs
	+DMyuAAFA9FYHREvB3kEVrSBeICVjVVi/6CaehgF6qAXhCKT8FISdwr2YWcA+yS4
	dl3bDw==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4g4nb18hn8-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 18 Aug 2026 12:33:35 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-51c07313be5so5798891cf.2
        for <linux-phy@lists.infradead.org>; Tue, 18 Aug 2026 05:33:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1787056415; x=1787661215; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=14IBaCEa49pzmaKpgnV8Y/NwAMvT4ZjHjKK8MDfV4F0=;
        b=IZRj1ZHrRX1d5Mir7SiAZLPgeAgafG2KXt5y3r9UnFUGOp9OfMADnzEZ41IDVL/mCA
         ZXo1b5kWD4xAtQ5hA/eUfYt7awkUnkORGqm+2tXvwRGsPjtiHhuoQffVwyA0MP/pbKWS
         yNBFVTY6p58bsVZV6oF+v3/yYu0lzsj+FOIektlemomMTKNz5t9Y+Kilrqxkkgsonw0J
         5il97Y5/LCPn89GxDJWVOdqsWWdKirRaoEAmnfrXUH69Z8EIrX/gRwzy53UeS7eYwRYr
         dz4raPQfalNoUzDKa45kjufaaYFEtJIExwE6dDTHahztrnI5fSfRbvi5Nm+PXvctOmKq
         76KA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1787056415; x=1787661215;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=14IBaCEa49pzmaKpgnV8Y/NwAMvT4ZjHjKK8MDfV4F0=;
        b=jDByRMEFC0NINqAR1qscafXECK3dw1t6LqclrNsnUcPCBHApR3ooVbKe8fIu74KjAm
         EoRYobrhvJdFydPjmBZ2qbhframhEO3+Ma/8esvFryqyxjfWf4KYtsZ7HNO0/xLxoXqt
         gG9kmt3Si6I3gWk6kMFfxjg8Ibh3Azn/q6Iq2vChZGaLu8WRPpwlt7ujF455PmhycbAC
         112qfVG2IxjNa2WqHmRxVgFXcz7alaUkFwZPdYEdEdfojP4qMN7yRPOrfhu121CMp8xm
         TYpSJ2csL9NiYQSG/GZJNs8FbPwhkzwMlj1CKpLTMFCfsPqODMVlN5qIO4mTnVoIVZkL
         03Ug==
X-Forwarded-Encrypted: i=1; AHgh+RrvPfLq2U/Lnw6BYM/ZAeFTfeQs7FabkdmsWkAikYSVENlmnUNxdE73B8gH0kNp2bpf8nPbQ5BU9OI=@lists.infradead.org
X-Gm-Message-State: AOJu0Yw+J7r1u1j7q6XEb/33E1YxFGfPMp8rGaKZxFUn9L3sxpiVVvsT
	FdVQXxfnwxs6KX5akQ2yzktJXHMMJ7JypLrBcEzDfpj3aevMPDGV9XM9QkLZ3Eer+XCRjLFMXd6
	oZn5CeBrS14CaHR9WfuFSVqhcK0y1dPzFO+ogO5yXFGA1Hf6fbi3BxmfcQvFbSP9SC7Lg
X-Gm-Gg: AR+sD12m5mdLNHyAWTVJZWw4hwcwG+1hUojC6iBp3GERhiFZ4LtlwZwG45pNx0L1aoI
	FN8BDpvDMYUKbbxya5AUAWQDSM6E1CKgFpq9Ua+iB2VxLM8yTi6aKchLiDIFlsnMOU8ivSfWW2l
	w9H7friv2+mlmDnswWlV5U7MVNia1aLEAiHaaWLUl32q1fCmtVyoXjrfkBD1pQuyNDGRVkuelzL
	oZFSVagbAZJFXUMD3xJnz7GS+XaCVT7X4JboF3u4jNY6PPREXpwGfXyAmS9vAMxMKkfsUPvJYxi
	FJNYD+0Aa0U0qoycZriDoPLrSqvZQmO7FU8RLv+Zkw+GiXxJo7P2NTL833414ikzWgWgXg3jmUX
	v6piOlVoU3CAWWX5F1cuP2XtY
X-Received: by 2002:a05:622a:1a86:b0:52d:9db2:7924 with SMTP id d75a77b69052e-52d9db28d13mr159453291cf.1.1787056414848;
        Tue, 18 Aug 2026 05:33:34 -0700 (PDT)
X-Received: by 2002:a05:622a:1a86:b0:52d:9db2:7924 with SMTP id d75a77b69052e-52d9db28d13mr159452511cf.1.1787056414300;
        Tue, 18 Aug 2026 05:33:34 -0700 (PDT)
Received: from [192.168.120.193] ([178.235.128.140])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-c2185bc793bsm146675366b.57.2026.08.18.05.33.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 18 Aug 2026 05:33:33 -0700 (PDT)
Message-ID: <7f4995f3-585d-4789-a30e-c1dbd0a05ff3@oss.qualcomm.com>
Date: Tue, 18 Aug 2026 14:33:30 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v9 6/6] arm64: dts: qcom: mahua-crd: Add PHY supplies for
 pcie3b_phy
To: Qiang Yu <qiang.yu@oss.qualcomm.com>, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20260807-glymur_linkmode_0807-v9-0-dd1c7e236e29@oss.qualcomm.com>
 <20260807-glymur_linkmode_0807-v9-6-dd1c7e236e29@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260807-glymur_linkmode_0807-v9-6-dd1c7e236e29@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwODE4MDA5MiBTYWx0ZWRfX8UI57T3tR+Yv
 1Uj2iFkOw6FXdjOPNpziDXS3BBQN4nvIPmelGuN18VxFm1UVxb2+EYVxQUedaAwIZndiC9Lgs/1
 oZNNv5sFyusnojc4Gtl5MWrnTCHfKT9+vrWT5bWEnGc7ZybEfvj8gFpkCKq4zPgOahJAmw0OL1D
 +9q4QgE7FojaDVgIHXYHiWQgphPquPoGOWvIXFfkCMxaOrkpUfJAhnMHUMeBcpaa0jxuApk5Gh1
 YkJty6PoWXBJPCCDn3XEAV3HqMd+8B4g/LKQa/l4EEowI3mmC5clyXWdNr7hk6CCN3bpu7p+nSz
 ETbzytB6DFgDYL18i9VfjiUFiXUF0XfrdvxWyxnhyKLWjrIt9pqEN3eBj9V75hcv3xAZT57KAhA
 KK8dFFpeJ58jgbNOOYFmYQ5EENPHXxB36u9KX9MHZbi6CfTXl7qBpXKQEb97fPGRlheJd918Hy/
 8KbpfqNOeVxwmvwlP9Q==
X-Proofpoint-GUID: U0AET22XnKIYjmtImw8pcs-Ib47ke8NB
X-Authority-Analysis: v=2.4 cv=Ze4t8MVA c=1 sm=1 tr=0 ts=6a84511f cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=PRfkaYvzSr8QmIIGAkY2Sg==:17
 a=IkcTkHD0fZMA:10 a=Sv0fKeRqtYgA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=rJkE3RaqiGZ5pbrm-msn:22
 a=EUspDBNiAAAA:8 a=B6dnFezVkazQL_yb00wA:9 a=QEXdDO2ut3YA:10
 a=a_PwQJl-kcHnX1M80qC6:22
X-Proofpoint-ORIG-GUID: U0AET22XnKIYjmtImw8pcs-Ib47ke8NB
X-Proofpoint-Spam-Info: AW1haW4tMjYwODE4MDA5MiBTYWx0ZWRfX4dH3rmgwos+r
 F15pxKnyY8vuE2B2GqK9saH4ty+bh3dcJfsmXNi6Wd2+Mw+gWvsXpCIK9mqRoKf/RHySG0u+Zl6
 oYv4NfFbtH8mrKICvLuawdqlWYNm7m8=
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-08-18_01,2026-08-12_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 bulkscore=0 clxscore=1015 phishscore=0 impostorscore=0
 adultscore=0 suspectscore=0 malwarescore=0 lowpriorityscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2608180092
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260818_053336_793565_C81DE3F8 
X-CRM114-Status: UNSURE (   8.31  )
X-CRM114-Notice: Please train this message.
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

On 8/7/26 11:51 AM, Qiang Yu wrote:
> Mahua CRD wires the dedicated PCIe3b PHY's regulator supplies through
> board-specific PMIC rails. Add the vdda-phy and vdda-pll supplies for
> &pcie3b_phy.
> 
> Reviewed-by: Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>
> Signed-off-by: Qiang Yu <qiang.yu@oss.qualcomm.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
