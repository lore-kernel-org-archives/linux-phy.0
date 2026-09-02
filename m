Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2ED6BC624D0
	for <linux-phy@archiver.kernel.org>; Wed,  2 Sep 2026 08:46:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AosMW8VhK1LkEQh8oJVO643UXPpAut7xospVk7l5iLo=; b=UFUXFwOnGhmfAv
	z9mk7sDz2fbK8+oHLRmeP8MewMhSzRSHn9jX6ZDDSgHyquGq/buxvtzUPIrS73UbHqFP4AoUVuDmp
	4cD366ty1C0dSDFNNJmaPSQJkUPoTLlzqDDdWeNulRf+8O8OZjkw5EEyAJqWfOXB5NjMJkg2lUVSl
	ecJluOazii+MvGGAaAiBAIBfXS4DRORUJaL2Uiw2G6Hg6KbR5Hu1DoUHraY9D81OTBm8sXDcozvw8
	KhcZSxC721VWLe58qDI51uALhptmMWqfA8UTnr4nERLVzWZaqt1Z1J9PghSrMdTJSBLbGcrabZTUt
	4PQDe8ORkPwksvZ6tx3g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x1gcP-0000000E8uH-3hWT;
	Wed, 02 Sep 2026 08:46:53 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x1gcN-0000000E8tk-2rt3
	for linux-phy@lists.infradead.org;
	Wed, 02 Sep 2026 08:46:53 +0000
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6826Wb9Z695612
	for <linux-phy@lists.infradead.org>; Wed, 2 Sep 2026 08:46:50 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	yWAwr1smx5G37cCcGObS8HBICH9bF7+jGSCJzShr35E=; b=Te7QxGIqeNWN0nZg
	ujfTMcuJSwyxPGFhWkUXvtcudiwoeVuA1XrXm9X6EloA9hx819tM1mw6Wxr2O2LG
	RdM5e5soQZTKO9DVl4+zY1u8JV2sU3S/c1SEEbm+E/GeyAkus6haAep0i2ZLXocj
	prTkwKqEjGo01Q8kfdsW+kP9R+jmFOS07MUdpqrMuXy97+7CDWVdvR3nnrv+uML9
	qkR96BXCf8/+IPXjhK2roUI4AtRj+GbihDDkqgwoAOFhKSuXuCpPV3wMQjGVykmj
	X/J53yQkvdxyzpz4IAt7VIj2S298BWyafnFxs1E/kFAWnrrjlY9TpNMbrf8H+KL1
	p6N1UA==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4geb5618w8-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 02 Sep 2026 08:46:50 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-93495488976so21185985a.3
        for <linux-phy@lists.infradead.org>; Wed, 02 Sep 2026 01:46:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1788338810; x=1788943610; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=yWAwr1smx5G37cCcGObS8HBICH9bF7+jGSCJzShr35E=;
        b=QUNdaNoP5YXLyzPVObw/aH+rFxy6vqgnh3bNudl+o9wAjzN3Wr7NXO9b5rMa0wQiQ2
         9P83hfvwXmX0xHqwUomdiwSYgZZ3RVxDGg0brW9CJofamgqf1jtsXf52keyP6oGDGO5n
         p5fS/z+6X/FOKkmhWaVKkCR2immqvJ5yi2NDjrlA8vjDon9d+iF6LrI+/SRUNmT9YhPA
         90MrmfjC9CeD3iRzjPC5NOe/M5qVKBs+BhGZ0zUnsmE4t65svNs6aHyB30dF3SpKC6W2
         r9ZUs8Fp6vYoNTIYQ4US21M7jntf+58wejTApOO19jFfNmK2oONKbbBSLKYld60xAKg0
         xGNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788338810; x=1788943610;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=yWAwr1smx5G37cCcGObS8HBICH9bF7+jGSCJzShr35E=;
        b=DLborbiEIhrIm1Qnb5W3uwqummJKbBmbwpbIrUyhEBn06bC1zkyPl5x0XggwuQSVWQ
         nMOuGvE40K/uddMjMsN0Z7ZToQl7ENMZnlVm56k6YGx77BxvbODUv6g32VJ7Mpi5Rjnj
         OrZfEOZuFJyYE9tl9Ag2TUuRrjM9BHe0sw+ADotaeaZoEejDm+rVjMoeP9309WSSuztT
         vD3B1whCYesxh1OTxCgz3xj0B8MgzIKDHa2PIxhh2+LcDk2/QXegL5FCj9ABV6hUEomv
         h8BXJArCHrUD5kwZtOXrf+o2S7PsDWpr1czVUJ6Nerb55RhE3UfeJBThVjq2MduZ69pG
         kFBg==
X-Forwarded-Encrypted: i=1; AHgh+Rpomu3XBG4L8CMFoqX94UhVwDAYHawpHmfAaPOC2aNamyy3t6+heZs5NnYWi/k3OcxiIUx7mG0L2Q8=@lists.infradead.org
X-Gm-Message-State: AFuF++npTlRvbwaOeU8TviC2EWR5yctefln+Sq/h/NTlBnKPBHNQ+XIT
	m2XGc7kVoXY3zqJtA6DE7abq7kYJG/2eow5z8rA+v3BphOnSuS+bO/UjChK6lL3uI9FNGq6nVgR
	G+2yWi2/Vf2KrOkFi81hxrfgWUOjSGj14dXGzsXNcP2DNpPkeeDKo4jYwOWGtuTYq1t0X
X-Gm-Gg: AR+sD103BvJxPkKiaQinaI44VjzWFxHzrR70zzffmD8jb7uhKTVmc73g52kKu/HKxFF
	xsmEqD0CzSlKAhGGX3lPyKb1XanTR2i8zPQJqcd/YOqgrvr27HLmSKIYu8bzM9JRQh53MLeNpGi
	UD0lGe8Hc2W7kj5Tng5c0y1X23IQ9g5rZ8IyVM6iCgBrb6XnJgqchV98C9zVTvLf8hiL41IjaFo
	N6hnM4sazHAEtlJ3aBb8h37KYiiM5FPyCfepgfsbnJrTEp0vAJKxwGJBXdHMgyBVmeUDG6H64JT
	S+LuRppUIBkgTMnETSz+KSr8rQfrI3672KZZHvLS/mv7V7iOCUCurh7pzaiBA8RtRmqsYsZ3fTf
	/EUDELF8dv2jbZyQrJkoPSg==
X-Received: by 2002:a05:620a:400b:b0:939:46cb:25df with SMTP id af79cd13be357-939611000a9mr217653785a.6.1788338809646;
        Wed, 02 Sep 2026 01:46:49 -0700 (PDT)
X-Received: by 2002:a05:620a:400b:b0:939:46cb:25df with SMTP id af79cd13be357-939611000a9mr217651485a.6.1788338809155;
        Wed, 02 Sep 2026 01:46:49 -0700 (PDT)
Received: from [192.168.202.12] ([178.235.128.140])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-c25cffc68a2sm92433266b.11.2026.09.02.01.46.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 02 Sep 2026 01:46:48 -0700 (PDT)
Message-ID: <e03f3b9e-e98f-4505-99d7-1bcafbc384b1@oss.qualcomm.com>
Date: Wed, 2 Sep 2026 10:46:45 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 0/5] PCI: qcom: Add PCIe support for Shikra SoC
To: Sushrut Shree Trivedi <sushrut.trivedi@oss.qualcomm.com>,
        Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Helgaas <bhelgaas@google.com>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>,
        Bartosz Golaszewski <brgl@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-pci@vger.kernel.org
References: <20260831-shikra-upstream-v2-0-406661d75afa@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260831-shikra-upstream-v2-0-406661d75afa@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwOTAyMDA3NiBTYWx0ZWRfX+cUUlxUheYP5
 966irix4yhgbxnfdVCwfLutf7Sqd1zHljDBSiNSkPS4dBXitiBIHKFjPlV4keZvcXi6Uznei6Qj
 FpVdKZczxv7811ja42Ok0+jH2uWlwgotTjPw9FWWqgBIrRcgoXupZO/tcVNFhjFcB9yEA3qqR4R
 Vmw4Maw0xBVI0Tb/CY0e/+MJ7j9TmRPfViCYFOkzA0dyRpIRrUBiXAhKEN3oBdg28tYIgAEZkfE
 6zW+BRt8sxtA4ZucK2FJidjgWXb8BoemLDJwIy4yv9RJkrwXfQ89H/QkDirOXHLGBiPviu3ZUOg
 ev2J9hqVtfhm7cIZvHc1uL/qFoPiCC4A6YwW3cnuVQxSBCjlkQFTORrzJChE5jI+fJHN9w/GJXw
 rbCfuzqv1MuhoZXJPWX/zVf3WN5RcM0AF33rN5U1JBgzXgdvqUecr7HkNFVMgGcRgPqLEVovRfi
 bPSqPAxC00kr0b/+l6w==
X-Proofpoint-GUID: iwQa3uoUADQqPvDW9k6HfOoykotbWYLt
X-Authority-Analysis: v=2.4 cv=D8N37PRj c=1 sm=1 tr=0 ts=6a97e27a cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=PRfkaYvzSr8QmIIGAkY2Sg==:17
 a=IkcTkHD0fZMA:10 a=VdqzKS8jKosA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=rJkE3RaqiGZ5pbrm-msn:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=x6ikuqDAs4aUxygX8wUA:9 a=QEXdDO2ut3YA:10
 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-ORIG-GUID: iwQa3uoUADQqPvDW9k6HfOoykotbWYLt
X-Proofpoint-Spam-Info: AW1haW4tMjYwOTAyMDA3NiBTYWx0ZWRfX1KFQi8bsjY65
 5nfB6JugsOTkFVYcLNjqmbmsVYeJoWFtytoEjeVSk6tmEjB6wEJ2t0RHqL7BE9iXk9vBr+4srjL
 QGBispLuwkeb2OVlb2y1hr/TsGWI2fY=
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-09-02_01,2026-09-01_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 lowpriorityscore=0 spamscore=0 phishscore=0 adultscore=0
 malwarescore=0 clxscore=1015 impostorscore=0 priorityscore=1501
 suspectscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2606150000
 definitions=main-2609020076
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260902_014651_844606_8DDBF26B 
X-CRM114-Status: GOOD (  16.95  )
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

On 8/31/26 9:26 AM, Sushrut Shree Trivedi wrote:
> Add PCIe support for Shikra target, by adding dt-bindings for phy,
> controller and corresponding phy & controller drivers/device-tree
> changes.
> 
> Shikra RC is connected to TC9563 PCIe switch on all three
> EVK variants: CQS, CQM and IQS. The individual downstream ports
> of TC9563 connect like below:
> 
> DSP1: M.2 B-Key for 5G Modem
> DSP2: M.2 M-Key for NVMe
> DSP3: Embedded ethernet device
> 
> Power and reset to M.2 B and M.2 M slot are controlled via
> TC9563 GPIO's. Since TC9563 GPIO driver from Alex is still
> under active review, current series only contains basic PCIe
> enablement for the controller / PHY. TC9563 enablement changes
> would be posted as a separate series once the GPIO driver is
> ready.
> 
> [1] https://lore.kernel.org/all/e2inl7k5gsjj6oomv2k5ximuzpb3gfiz66ufet3b4hvov7zqt4@qz4pifbos7yf/
> 
> Signed-off-by: Sushrut Shree Trivedi <sushrut.trivedi@oss.qualcomm.com>
> ---
> Changes in v2:
> - Remove TC9563 specific changes [Mani]
> - Fix commit descriptions/subjects [Bjorn Helgaas]
> - Fix PCIe controller dt-binding errors [Krzysztof Kozlowski / Mani]
> - Document PCIe Gen2 limitation in controller node & commit msg [Konrad Dybcio / Mani]
> - Add GCC_PCIE_SLEEP_CLK (which is actually PHY AUX CLK) in PCIe PHY
>   node.

You also silently adjusted the OPP levels in the DT patch:

< +                                     required-opps = <&rpmpd_opp_nom>;
---
> +                                     required-opps = <&rpmpd_opp_low_svs>;


is the lower one suitable?

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
