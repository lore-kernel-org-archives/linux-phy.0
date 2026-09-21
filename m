Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 585B6C982DE
	for <linux-phy@archiver.kernel.org>; Mon, 21 Sep 2026 06:30:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=e66DH1oj95HzZd0Jf8tje1LdulfcDq1BU7KkAwgbXDs=; b=yMJo2QesMM8gk9
	GzYtLFYQsXVk3lmUuf5xyVcEbKzFSFezeBzft5AH36dGwpVDYSYHPnFxdNUj+0d1iB/WpOiohct9n
	wnmuE4RWl6s7G/v8Hn2zSsJKvf+N0HCPZmILMsrYEaq/JHeZKkg8GKrLlZELh9TEWIp/E4tmh94gb
	vYt+t++LbJMAGY1cvNYJsKp/X/zLZQLNWq3WqMDlIktKk1mNr2OE4KFoNVipY58GEvXjVj5Tsk0NM
	CHAiVjy8H1DAa3yxHd+sGeqyx1Td5N07YE84mcd4EEJiYnkMmvDgItvO2Zfn9cC2GOyX2MUyKJ3C2
	b5lhcgHI1zxOPYIPV0Ng==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8XY1-000000011LG-2zku;
	Mon, 21 Sep 2026 06:30:41 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8XXz-000000011K9-3MaJ
	for linux-phy@lists.infradead.org;
	Mon, 21 Sep 2026 06:30:41 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 68L3Z2s0290535
	for <linux-phy@lists.infradead.org>; Mon, 21 Sep 2026 06:30:33 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=gfTLiSXODMZ38Zdtd8E6UO7a
	gf75SjCHxDaJtukqv3Q=; b=o7MeMR0KyxgFqFNtza/daLmBomdhbj4Sn+qtId8R
	K8dt79WyZ06RJi0zGfQyTyL1+Es4Ux/OQyQGbSBEvM2t1uKqPeBjroWkc9c4WggJ
	tUltikZUPcp7i1q5DH99c6fsXh7Mbo561P8CfV/L4qu/T6wYy0hRjVor00550oxM
	LPExgWtFAJYRcwl/dHMpuSMJSoKPV11Dw/mKB2HxFzYhPtUvwXezKV5Mkn+3gd4t
	TVNO3lbswcjMKfibQDBujtr+tnyb/VfPsbLcWQeIsclbKPrkhsX8pYe43+IcN25/
	L4fLmTgsd/zcUCLHpsUDXrsxKCYSKyCyBcJlSqa8awp/Jg==
Received: from mail-pg1-f200.google.com (mail-pg1-f200.google.com [209.85.215.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4gsjfun15r-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 21 Sep 2026 06:30:33 +0000 (GMT)
Received: by mail-pg1-f200.google.com with SMTP id 41be03b00d2f7-cb48f41343aso3305444a12.1
        for <linux-phy@lists.infradead.org>; Sun, 20 Sep 2026 23:30:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1789972228; x=1790577028; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=gfTLiSXODMZ38Zdtd8E6UO7agf75SjCHxDaJtukqv3Q=;
        b=RfS3Y4387A69Lz7867CIrln8Z7rBhhoUCk6LnJ8H/lashT+G6Ki0ePMbKBvw69IcQj
         m1HSieoMWzj5lds+NnzAGOfkrMFMsBHLAaALL47jhCVSwE8V+GA/NQQyHmegToz2ieoh
         SrurflCLr/SmGYPi8tSFTUGH0lUBtvQVblBIiXw/5d1TYIHARur2G3OPQuY0PzZa8mJl
         M8QC1OqwIeEj4ynVgUZgy4Rf7tNSGCxd+pVjpJS3C63BR1Y7qDVF+P3PRT/G0pO85xmU
         Dg2rLwmA1iurK2kILfQ8dIltaMcMKMxzviM9k8NU5ewL59A6rFwkVd+UKdFUvOJbpzbs
         6Gbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1789972228; x=1790577028;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=gfTLiSXODMZ38Zdtd8E6UO7agf75SjCHxDaJtukqv3Q=;
        b=U5bEFsx3/NR8IP1L3Kf3mBJHoh9KpK5XEZY2IHR8/Y+PY+gSP0gaLDwNU3neJB/e67
         0rpL9sujSmYFRt7uBK+bMVPW+XR1UAv4801BEbgOQgscURKecu/ipedaLOZ0h/X9UIU3
         tGNxXh8Z7Si6OBZNg5llnjWRoklVhB765MTMKTtfjd66HMwlFKBBPCTEc7oO66zewDZ1
         isEo7v6Vg+07Yz3dUfPIb2jP/gFl6yO/ZsH+ObbMvPhpFBrT/7Y11W/iPCCZ5Knk2LYU
         2vyxVbjeaTwfHRDS7DYu74L9HZb5mg6SjQg6RNSXZzB7Nn4xwCzPP7vBMOODqaynBxkI
         twmw==
X-Forwarded-Encrypted: i=1; AKwUvByvB4iywvcvYVhD7XDv+wizNMZ/6VbLQrOWgZR8oykvMVexbEI+vEmhPY3GyDeokMsGV98Oulk0c68=@lists.infradead.org
X-Gm-Message-State: AFuF++nCRHUH39AlV3mczjKOUNLwINMtXjkAimXpNHFwlrODKvKVVDO7
	nPytDZa0AqcFnlZPjbx9AOecw3sW0OhWuqybX4OC87RAxpcfhjPA/Fg+HMdldaHjaiaOyAndR8O
	Xf6xmZ70dbJUAPjSSn9TQuH+mcEHc0Gug0giOf4X14bomQVs8oZGOYdz048tbCiClabJM
X-Gm-Gg: AYBFou1XkOc/mMZO75MPak9P9ZLsTbGnk9gP0YZdBZJ6T3rD2eJEhsoLMQ8eCdFBV9R
	i3B6HB8XHnuSnMrUDpHefmsyv0YYZZIgvUAwCjbX/EQpD6KtWLYABmeV43TsLTIr8YOLjx3d3aZ
	ddLcOQSqBo+2yNPMRiRMr6kWVeOvezbCBYaRxhpbD1r+EHMz/ecLEYvSKd9PuMULrdXSORBBMmy
	fQ+XPwMtqT2aqJf6Zf5OE5lHv4n7pci3DydPkUBi+HQ9U2nYm0SxP7f5cQAUostNpiZnp2/5BPx
	C1k3X2IatXzoTiXPriCdfYqmLdotUOUIVAqF9QRjPt429V4cz8p5PWD63voEfVFuQuR4vo+CJXL
	sHGVUsUgvtQKgnuGGC42jqnv2yUtQGvVJzYLaVmSFuI+mIXs=
X-Received: by 2002:a17:90b:384f:b0:39e:455f:36fc with SMTP id 98e67ed59e1d1-39e455f3d97mr14697475a91.28.1789972227598;
        Sun, 20 Sep 2026 23:30:27 -0700 (PDT)
X-Received: by 2002:a17:90b:384f:b0:39e:455f:36fc with SMTP id 98e67ed59e1d1-39e455f3d97mr14697440a91.28.1789972226826;
        Sun, 20 Sep 2026 23:30:26 -0700 (PDT)
Received: from hu-qianyu-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-144df9ad683sm8871128c88.6.2026.09.20.23.30.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 20 Sep 2026 23:30:26 -0700 (PDT)
Date: Sun, 20 Sep 2026 23:30:24 -0700
From: Qiang Yu <qiang.yu@oss.qualcomm.com>
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
        Philipp Zabel <p.zabel@pengutronix.de>, shengchao.guo@oss.qualcomm.com,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-pci@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>
Subject: Re: [PATCH v4 0/6] Add PCIe support for Qualcomm Nord platform
Message-ID: <arDPABIQl9wKYVKa@hu-qianyu-lv.qualcomm.com>
References: <20260921-nord-v4-0-ed05c6e09240@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260921-nord-v4-0-ed05c6e09240@oss.qualcomm.com>
X-Proofpoint-Spam-Info: AW1haW4tMjYwOTIxMDA5MiBTYWx0ZWRfXzVHAUw00S2W7
 upjXbk3MWhR/WjOU4RO8oUDkgn+8YYBkZk9N+pM82CYRsDp53BcLdhkSg8u/OC7e4JT5WT61vmY
 2McB7dfG6wEp8wRLdAzE68sxanHNmFI=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwOTIxMDA5MiBTYWx0ZWRfXwSSKRudvnz7w
 OfPBuVs0e2JI3qUMAeJovAb1Vcc3Pp+kStYOdPVIuaxSVonnsgpnN8DYUVweKvZpw7W4YlGt5iC
 3e7Ovg6hNdvt0baEUyBXOcTJIqrp6RNJi/uptndayVA2Ee7IzMs1wehgKEibmGHfuU7F2L6eUMS
 nvti/MtUNyFYOyeYYdUzkbmnzn4ZR7dd1Oc1TTXfLab4bsufHhD2unEXUh4NzkgwRRJSou42/3y
 2pI44/ArNtIynaPm9Zycp7M2qDCMDdOhc3ixarxFETiRVtnBmcnjPf9me1DGxo1EIjtdcbWDyFa
 o/7qUuKWVj82PtG6bpeX78n1G+qymcG4i36qNA70p5r46HhPltc3n7naV9Q7fLnhmE1CmVhWnbj
 DUE878c9F4vIWkI1PnfdpnwtwnFh0IFQVQ72E/STzpc5NK8hTyA5HUWnbe4HDhnAA0Mi8tzLshM
 wo/M8gi6Wh5afQaJSTQ==
X-Proofpoint-ORIG-GUID: YOsWTDIjoORktgrRchSlc1fQFJI1mJgg
X-Proofpoint-GUID: YOsWTDIjoORktgrRchSlc1fQFJI1mJgg
X-Authority-Analysis: v=2.4 cv=QKv91QLL c=1 sm=1 tr=0 ts=6ab0cf09 cx=c_pps
 a=oF/VQ+ItUULfLr/lQ2/icg==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=kj9zAlcOel0A:10 a=VdqzKS8jKosA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=gowsoOTTUOVcmtlkKump:22
 a=EUspDBNiAAAA:8 a=Tp8Q_eIeZBUexgL1P5QA:9 a=CjuIK1q_8ugA:10
 a=3WC7DwWrALyhR5TkjVHa:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-09-21_02,2026-09-16_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 lowpriorityscore=0 clxscore=1015 priorityscore=1501
 impostorscore=0 malwarescore=0 spamscore=0 bulkscore=0 adultscore=0
 suspectscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2609040000
 definitions=main-2609210092
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260920_233039_957402_0EA8A5C5 
X-CRM114-Status: GOOD (  15.36  )
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

On Mon, Sep 21, 2026 at 11:07:08AM +0530, Krishna Chaitanya Chundru wrote:
> This series adds PCIe support for the Qualcomm Nord (SA8797P) platform.
> 
> Nord has a single Gen5-capable QMP PCIe PHY block split into four
> independently-clocked and independently-resettable ports (A/B/C/D).
> Firmware selects the active lane topology at boot via a TCSR
> configuration register, and the same PHY block can appear as a single
> x16 port, x8+x8, x8+x4+x4, or x8+x4+x2+x2 depending on that mode. This
> is similar in spirit to the Glymur multi-PHY support already posted,
> except Nord's PHY registers are programmed by Linux rather than by
> firmware, so this series adds the PLL, TXRXZ, PCS and PCS-lane init
> tables along with the power-up/power-down/soft-reset sequencing needed
> to bring each port up.
> 
> The series also documents and wires up the qcom,nord-pcie compatible
> (reusing the existing SA8775P PCIe controller binding), and adds a
> CORE_CLK_CGC_DIS/AUX_PWR_DET workaround required to avoid a timing
> convergence issue in the PCIe power domain.
> 
> Signed-off-by: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>

Tested on Glymur CRD and Glymur QCB, devices can be enumerated.

Tested-by: Qiang Yu <qiang.yu@oss.qualcomm.com>

- Qiang Yu

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
