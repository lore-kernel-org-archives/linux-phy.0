Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 13FE4CFD624
	for <linux-phy@archiver.kernel.org>; Wed,  7 Jan 2026 12:35:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tnLrzC5ouBbhVfXWiMzY+5qAoFV9IJXsyznDmABhiSs=; b=WhzDnheu8kO534
	EKlxGnO5YXn7u48UlAtfSGGh54HNXUjQU0mClodSj+bZ7KCN6N6MnNbGFfaf6OFz7TyHWz/lF/576
	fLN1mwPSmtcxcYBToT5V+4tR3C1nl4pvIrTJGUqEp1t3P6Ku+CWVnYwXZdPTWYUrdgfRbe/LcurUW
	qPMxkMuGe2bC4V8uy6Nno++RkMTAOnJjXRhuH0Ms4dRxpxmthldTAwNzxGp5lLSu+xi209tSe6uWy
	lsjCG8G9rGIsfp7SyFVRQN3xFwQZODiSURURgrihasEb0Aax6d5p0ONNCrfxp2clogvWGfLEi8EAH
	hv9Du3H6b/OTXQMLUWWA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vdSlN-0000000EulD-3GzK;
	Wed, 07 Jan 2026 12:35:45 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vdSlK-0000000Euj5-2INx
	for linux-phy@lists.infradead.org;
	Wed, 07 Jan 2026 12:35:44 +0000
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60791VSu1979976
	for <linux-phy@lists.infradead.org>; Wed, 7 Jan 2026 12:35:41 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	bC0wC25dWX1u9h804y9npqlSPE9Pd9D9e+NxLaj/2I4=; b=mclLOmd+Va5hvkJq
	I73xotDuEPUPz/8m5HsSnCU2taxUQmDmbgWwX2kQiNnHkhINHy4wAu/OF8+lAHj6
	us43TEwIv7ZhVpfrB1Se+qnRMlQZl1iCbUaZR/3eHNGfAsFuqqpSUUS96cDuuUx+
	ZLlHwR0Brvrg+1PbspBuw8bdVWa/DHSW32cuEz8IGNlqzF4XHbJqoPX1SJXRRUXz
	Fjy0QqYySQOnlI2zDl6f1WCC9W4NtsUTogulzaqgBP6xP24vdlN5szN2LZZieHAj
	/muaIpc5NfmykX6B/YGgwvXn/3ST1QLhP6EFkIX0vw2Y573ssJ+AhZ0QWCs3/Olv
	PGFzGw==
Received: from mail-pf1-f200.google.com (mail-pf1-f200.google.com [209.85.210.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bhdavj1ss-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 07 Jan 2026 12:35:41 +0000 (GMT)
Received: by mail-pf1-f200.google.com with SMTP id d2e1a72fcca58-7b9c91b814cso4755546b3a.2
        for <linux-phy@lists.infradead.org>; Wed, 07 Jan 2026 04:35:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767789341; x=1768394141; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=bC0wC25dWX1u9h804y9npqlSPE9Pd9D9e+NxLaj/2I4=;
        b=FJfNafVQ42G8kptI2NGFJx313sxy5+AR3si2yhJ0v7Hcwk/+i6bau61Un0M3Zfa9pX
         Z6SxVi32hOhiTPNBZ+9xKKlqEG8fCyaQr+5xAFC1G4YyQmfnufp2SA46MJsR5WEGFh3m
         Cjtb87vzcV34ZOrx5B3wL4SPreOoPkLClEZdI36XUnhC0u+URgCDfci3p5l/91skFk5w
         OPRcJdmp70+dgDlyDaG3x7vnPUGtT7t2FWPIwgRfhsWzFi/+JrtvAbEwOxfNfiyA4MKE
         dcMuFiBq+3SxLCgjYNDHfK4LbO0+CU22L7xNdO/YRoTH/skZb32C43W2QJIXy0Y/2cQB
         oUEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767789341; x=1768394141;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=bC0wC25dWX1u9h804y9npqlSPE9Pd9D9e+NxLaj/2I4=;
        b=XQEe/wRa8Omeok4B/YZ/Ear7BjlT4kayWJVmIQveTxkNmQKnSXJINtX2UaHwtjdScd
         eY5Od4oJEVNYK8eqdX4Gk4CYeUXiCO9LGkbNGS8RsrOXK3COoHPg3+N1L+FXe5pXOHzP
         CaoEoV/0XolqSEAXMgaRa1mObHivuyFZYYV5FIJna+zSaMb1acLoHanRFRVOPjB5QYwA
         3x7Er0JJv8Uy7Pj+9ApytBABPZd0/1KHTJLN+rO28TWMGHgXK0m130S/LqMtwpiCUNgs
         6qev+6HdHG4O79wbTwwZC31qjyE8HsVA5VObhp0HYXo4C6LJYBOALfRD+P7edi7qzJLL
         SQvQ==
X-Forwarded-Encrypted: i=1; AJvYcCVgDEka4BaTf9HEyjEXw7KqUowy98NH5JzN5XDKULdMyGxC0S3VUL/ZJnnFd/P8rkhpfa2/H3jQUs8=@lists.infradead.org
X-Gm-Message-State: AOJu0Yxxu7RECa1J8xLSZhTLKPBJ6n/pDjFC1zuXnM+8X72im5tkozPT
	oNiHFeEo0jOZ5gu5g+lCMWeAyYDdDGE26vI1151hb9/amE5L7dAvZTfeN1MNAyQrupx/gTIp3iw
	vf/jc3WN5QFrjnxvv7mwDH8pbRkgUYTgQHly84Ukn3emL7Vca+GOBF/UMS29ILmZ9S4a5
X-Gm-Gg: AY/fxX76gLJxPSgXngNwAjwtjPyiHUZW3PFRI1+FLCgA+XVKJzMDfiPrr48HEFWJ4Vs
	I1p+ZJ/tvcFNhw+MJ9bvyyxuHUyw6m3uzqi6JoY2dqmR1pC//KcPjuksmv/kYom46mpAZTjVqyO
	QR3OaZn0OFnqG/fFQMJyE1TnStIgeqctsXWk7qZsoWMKz/ShipO/TrVnmvHFz/9SBKTi78cqOV1
	DbGFzWLPmY76yD6ojVeEkwcehDZzVE6GS/0+nDPVIPkTlYqgn950UeUMux+LDV936PUQDV9tO+b
	j45KN1xNVghd157JGdnN9E6taKaH8VbHpvEuiuBSdFvioh4BFsHS6gDgi2iBVia2Y7ia45COyDR
	lNBErB7o=
X-Received: by 2002:a05:6a00:348a:b0:800:902d:9fdb with SMTP id d2e1a72fcca58-81b7d861859mr2145554b3a.5.1767789339623;
        Wed, 07 Jan 2026 04:35:39 -0800 (PST)
X-Google-Smtp-Source: AGHT+IH93fKUDfasuP5q8gHkOnrMUzHklFoNL76RVcQSiBJyvyfD7E4zZeOiwuGWUMy40Gzp59Romg==
X-Received: by 2002:a05:6a00:348a:b0:800:902d:9fdb with SMTP id d2e1a72fcca58-81b7d861859mr2145512b3a.5.1767789338774;
        Wed, 07 Jan 2026 04:35:38 -0800 (PST)
Received: from [192.168.1.102] ([120.60.59.91])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-819c59e7c16sm4940286b3a.53.2026.01.07.04.35.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 07 Jan 2026 04:35:38 -0800 (PST)
From: Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>
X-Google-Original-From: Manivannan Sadhasivam <mani@kernel.org>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
        Ryder Lee <ryder.lee@mediatek.com>,
        Jianjun Wang <jianjun.wang@mediatek.com>,
        Bjorn Helgaas <bhelgaas@google.com>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Chunfeng Yun <chunfeng.yun@mediatek.com>,
        Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>, Lee Jones <lee@kernel.org>,
        Andrew Lunn <andrew+netdev@lunn.ch>,
        "David S. Miller" <davem@davemloft.net>,
        Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
        Paolo Abeni <pabeni@redhat.com>, Lorenzo Bianconi <lorenzo@kernel.org>,
        Felix Fietkau <nbd@nbd.name>, Sjoerd Simons <sjoerd@collabora.com>
Cc: kernel@collabora.com, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, linux-pci@vger.kernel.org,
        linux-phy@lists.infradead.org, netdev@vger.kernel.org,
        Daniel Golle <daniel@makrotopia.org>,
        Bryan Hinton <bryan@bryanhinton.com>,
        Conor Dooley <conor.dooley@microchip.com>
In-Reply-To: <20251223-openwrt-one-network-v5-0-7d1864ea3ad5@collabora.com>
References: <20251223-openwrt-one-network-v5-0-7d1864ea3ad5@collabora.com>
Subject: Re: (subset) [PATCH v5 0/8] arm64: dts: mediatek: Add Openwrt One
 AP functionality
Message-Id: <176778933103.573787.15149542478385360900.b4-ty@kernel.org>
Date: Wed, 07 Jan 2026 18:05:31 +0530
MIME-Version: 1.0
X-Mailer: b4 0.14.3
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTA3MDA5NSBTYWx0ZWRfX23VBmvIsdo0y
 8bcnigVaH6ifGuqf8+yFOAi6LpxA3dIrowzaMKUmMtIVveh1BaumjqP4xgtkspDfNZyQc7rdQhD
 hY71kg2xCJEZmpBScVBtdT5hKlgbJyXUWWGXcW/xulJu/uRv2aisW+lDU7Ez/ZC9P3uqJiDeQQi
 ruHc8bzDnTQfhQheBrF7kcANFspNuu0L+QVJQRno/qhUjxMwwHI+AIhgDT7t3h/bqsgXGEIqOVX
 ZsCDLAJi/A+3xuHl/Di0QO76Q143hZfsKIBQigAIRjncGQUrCKU5cPvk03dy+DOvP48c0ce4Pws
 DomfrovOBMIlDOmRBimZQBITOTf1HueqRMEIbU4scRobyO9+iK0ui/AMiOIo0zZoQxlnDAZE/pu
 HkqlGDRiknQKQb0hsfxPdeX6ngjukI1Z3ozN5m3nS7dgBJNpW+O1aBO0gVsNY3ac0Am9p6VGJbu
 uA88oiRvlpqLHiH3KVA==
X-Proofpoint-ORIG-GUID: TkLbsMSnrTX_exYIvoVjKSg3YPHnumSb
X-Authority-Analysis: v=2.4 cv=comWUl4i c=1 sm=1 tr=0 ts=695e531d cx=c_pps
 a=mDZGXZTwRPZaeRUbqKGCBw==:117 a=jZ9eb5YeB6VHmQ1DXVOWBw==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=VwQbUJbxAAAA:8 a=QX4gbG5DAAAA:8
 a=w7wmWQyBmLUzaIw334oA:9 a=QEXdDO2ut3YA:10 a=zc0IvFSfCIW2DFIPzwfm:22
 a=AbAUZ8qAyYyZVLSsDulk:22
X-Proofpoint-GUID: TkLbsMSnrTX_exYIvoVjKSg3YPHnumSb
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-07_01,2026-01-06_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 lowpriorityscore=0 adultscore=0 priorityscore=1501
 phishscore=0 malwarescore=0 bulkscore=0 clxscore=1015 spamscore=0
 suspectscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2601070095
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260107_043542_706906_4A007F15 
X-CRM114-Status: GOOD (  12.16  )
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


On Tue, 23 Dec 2025 13:37:50 +0100, Sjoerd Simons wrote:
> Significant changes in V5:
>   * Rebase against linux v6.19-rc2, dropping merged patches
>   * Drop note about disable pci_aspm in cover letter, not required anymore
> Significant changes in V4:
>   * Drop patches that were picked up
>   * Improve mediatek,net dt bindings:
>     - Move back to V2 version (widening global constraint, constraining
>       per compatible)
>     - Ensure all compatibles are constraint in the amount of WEDs (2 for
>       everything apart from mt7981). Specifically adding constraints for
>       mediatek,mt7622-eth and ralink,rt5350-eth
> Significant changes in V3:
>   * Drop patches that were picked up
>   * Re-order patches so changes that don't require dt binding changes
>     come first (Requested by Angelo)
>   * Specify drive power directly rather then using MTK_DRIVE_...
>   * Simply mediatek,net binding changes to avoid accidental changes to
>     other compatibles then mediatek,mt7981-eth
> Significant changes in V2:
>   * https://lore.kernel.org/lkml/20251016-openwrt-one-network-v1-0-de259719b6f2@collabora.com/
>   * Only introduce labels in mt7981b.dtsi when required
>   * Switch Airoha EN8811H phy irq to level rather then edge triggered
>   * Move uart0 pinctrl from board dts to soc dtsi
>   * Only overwrite constraints with non-default values in MT7981 bindings
>   * Make SPI NOR nvmem cell labels more meaningfull
>   * Seperate fixing and disable-by-default for the mt7981 in seperate
>     patches
> 
> [...]

Applied, thanks!

[1/8] dt-bindings: PCI: mediatek-gen3: Add MT7981 PCIe compatible
      commit: 407cc7ff3e99f6bca9b4ca2561d3f9e7192652fe

Best regards,
-- 
Manivannan Sadhasivam <mani@kernel.org>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
