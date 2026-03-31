Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 57859FF60FB
	for <linux-phy@archiver.kernel.org>; Tue, 31 Mar 2026 09:59:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dtSP6ulmiqX2iq4JUhfKQGbBYAGOCgTT8FxCdwrHaHM=; b=GwDUxXw4S1ZKNh
	ADFO2e+NQAxwBvAaC9XEq44Pb32MWYMvib15moQIClz7iKZyi+0qODUEypX1N4S1HDBI5TTAGIBpR
	E9QtcW1M+tVASR+aZiULrHMa//YHGfaSyBZQF3TVpug6WRPIYTcZ6xEWxN+kZNcZXiAM8IdaZeQBO
	wFNs2CnjwjYFdqrlbvM/AFKvHgzw4A3qSaw1FpmyahA2FN7d0uNAx/LdEXG6Av2AoFloyaLXWcAS8
	NdX67MFT9nUUpjBQ49+GDudvpRnGYu7pB86x1KuCf3mCOfm0Q3e/4FV8h0NgHJQoREPsivPnkeuiq
	8TB8q8a4M++iEXB+TAHw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w7VsW-0000000Cj8I-337J;
	Tue, 31 Mar 2026 09:59:20 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w7VsU-0000000Cj7w-2vCQ
	for linux-phy@lists.infradead.org;
	Tue, 31 Mar 2026 09:59:19 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62V5XcqF1842632
	for <linux-phy@lists.infradead.org>; Tue, 31 Mar 2026 09:59:16 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=tYVdhzyN/PgBq2nHkZ289xfo
	K00phIoatD6dXYcn2sM=; b=N2fZHeKfG5auWv2C0vp9w8f1qmx9IzwqdS/6uh0U
	OBBdLq2V+cjwOLuCLrXIJGPDKXjzCpeAh8335To92rTc+o39RmEYuto2GO8hIpwh
	LyoLlWWhOGtrR0VfQL5Cvaojb0HoUO0e7KWBb5Kp8CyJIc1/Q34RXME3Fq5PBVmj
	HQYD4XKV7KAaN4fwbZtojCXpEBSaCilTJa3+MX/ZHUtH5UAZUv6CCYllnreIrP49
	lRAsjEB14XVj5h1gj6govHOzbR4U8noRvNLn1wbs/H76gPdqTbQ2HfIzkamj+fje
	KmYsRogvClMEVCs214bSueHvuRGUDHi+Mw1wRjHHggU6TA==
Received: from mail-dl1-f69.google.com (mail-dl1-f69.google.com [74.125.82.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4d80rsjgd9-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 31 Mar 2026 09:59:16 +0000 (GMT)
Received: by mail-dl1-f69.google.com with SMTP id a92af1059eb24-12721cd1a2aso2302133c88.1
        for <linux-phy@lists.infradead.org>; Tue, 31 Mar 2026 02:59:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1774951156; x=1775555956; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=tYVdhzyN/PgBq2nHkZ289xfoK00phIoatD6dXYcn2sM=;
        b=ACSuJSitYcoHvZS6XXYYGD1bNT+LoelFHxCAGrY4LaYEBi07lQKZ/5F/6Ir9Y1Ex2u
         DDBpYyAFQgp/BkWtOZ6Eb0lsS+ZQpvMMucyTtG93MQRuzERDqE+E/uq9/9SwCPz1qnw2
         PrnB3ZE0wPby813OqQmXBvY5NZchze/np732YJJAGoq6pzncAn8irxRZT0lXujC3UrHp
         MaiFz8iqvD+iD14hKduUf6mAHgScc9gxlKsDl2NyDbMITFjhxvXxzr9ujFhqjAqdPqfB
         FsL8EUTL6XapWVIFI+unONqQqQyLSaIWrPv9oVgZCHYo7ZjvbexRRvS08TFzrt7YWYMy
         TXQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1774951156; x=1775555956;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=tYVdhzyN/PgBq2nHkZ289xfoK00phIoatD6dXYcn2sM=;
        b=cUPmX+y552gNNu7Kku3BdNcWurOc2UpkhouzhmS8XE1xJFh0yobnMJNIl7WZnTA7Q2
         qoPpgn29bgnXh08GtZytbUWXAONdkJ0roOv5DMbWDsQTjYgvIreKyXmVMdl5li0x2FMT
         sfnG62M7LTVjbYmbr298nVYGpinT31K1sJhJQnbGdP6iNdZInj/k8GLCg4PMaN8HOGYQ
         dSV2+fx60FfAJCVWLFCJSK8PszPKf9/XijD8de9T1UV8+78BPbsJWskTEDyIox8cTxHj
         66SUTmaGkIiIELPdZVQx00f4ovxHtLuMqXzek6xUlRzaLLAvXzCpfDOFyzkUtIHsAehy
         i1Yg==
X-Forwarded-Encrypted: i=1; AJvYcCXsrELOVkI3aquHx5NyvIKsaItrElt3pVYInxXviYOAT+8VRiWv3/TGnAUK9ndW2bOZw82k3tgvtRE=@lists.infradead.org
X-Gm-Message-State: AOJu0YwEypELQN0NV1PtBJcN8nMWEwq5LL3htPI1RF/EWNXvYRP0xwR9
	tJRK0vDwUTmYexI03AZ1yQGm/APEu1u8RoZbBz9Kx0xLkjNOvwTwvLgZ8ZYKtyMhnTNo+EXbQNL
	8Z9m0+fZdul4qDWKieIXMZYFVuD2H4wT7Yzs77ZiWpW6yyLyBjHI0rYnuQsIxryvUPf3Q
X-Gm-Gg: ATEYQzySl04XMA3Rykg+uUTBsaZWgeGkUsSnQGgPRyGXfajZP+EEs5Qys0QKTFomFKn
	AmIlPM9KImlzwnLVpRGwlAY5E2jbhORqRlo5AdwAihnp7c1+AF3nosVrzQMonMIThknIwNCaIvD
	dfzEA40A8sko+U90tough01KyoIbhoYswP3V4ZbGUw9P7eYL43McZtOFeROsuDanS6WitVdFAAa
	+dKx3n5AZHRdbsRjNCnkMWpwiRAU43qoTukXc6oZmikYbYlX+w1FnlwRU7fiDApBquFVArpCqIi
	5bF7E1G8bMWKPGOX9EGlziIq7Medk/5oyKEu4UIvsjJ8IDnneruQ/mT4FP9yVFB7ALxaPhB2IHb
	KEK5oYNBdTrlXfJJZiUBdkSmzUq7+DVyfn4OCPqpUEpU357AHjqBl65b8yDlf2t+SUCI5
X-Received: by 2002:a05:7022:914:b0:11d:f440:b743 with SMTP id a92af1059eb24-12ab28451acmr9612934c88.7.1774951155513;
        Tue, 31 Mar 2026 02:59:15 -0700 (PDT)
X-Received: by 2002:a05:7022:914:b0:11d:f440:b743 with SMTP id a92af1059eb24-12ab28451acmr9612897c88.7.1774951154745;
        Tue, 31 Mar 2026 02:59:14 -0700 (PDT)
Received: from hu-qianyu-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-12aba581027sm15063809c88.4.2026.03.31.02.59.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 31 Mar 2026 02:59:14 -0700 (PDT)
Date: Tue, 31 Mar 2026 02:59:12 -0700
From: Qiang Yu <qiang.yu@oss.qualcomm.com>
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 4/5] phy: qcom: qmp-pcie: Add Gen5 8-lanes mode for
 Glymur
Message-ID: <acua8Me0zo3v/CBi@hu-qianyu-lv.qualcomm.com>
References: <20260323-glymur_gen5x8_phy_0323-v2-0-ce0fc07f0e52@oss.qualcomm.com>
 <20260323-glymur_gen5x8_phy_0323-v2-4-ce0fc07f0e52@oss.qualcomm.com>
 <x3ts7to7c4qnorloahe7cgup3uekn4wolmmorqa3b3bjfslqfn@eijnzdp2ops3>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <x3ts7to7c4qnorloahe7cgup3uekn4wolmmorqa3b3bjfslqfn@eijnzdp2ops3>
X-Proofpoint-GUID: Rt-Q4LaD1c0mu7VQRKLhP-3Ee8_Wuifp
X-Authority-Analysis: v=2.4 cv=VInQXtPX c=1 sm=1 tr=0 ts=69cb9af4 cx=c_pps
 a=kVLUcbK0zfr7ocalXnG1qA==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=kj9zAlcOel0A:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=gowsoOTTUOVcmtlkKump:22
 a=EUspDBNiAAAA:8 a=56H2F1Fm8OXBRpAn5E4A:9 a=CjuIK1q_8ugA:10
 a=vr4QvYf-bLy2KjpDp97w:22
X-Proofpoint-ORIG-GUID: Rt-Q4LaD1c0mu7VQRKLhP-3Ee8_Wuifp
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzMxMDA5NSBTYWx0ZWRfX7eIDg4lGGVmu
 mIMwMnmSz7NSZLQBq2rgBhj0QnvohYwuuQMvU2gmlonJPs7nHXLOlIIsHPMU0gHp6u9HQJi+ReN
 YC6HSbGFKtwGtD1W4xvXe5dqDx+MKyH6jd7Sz4CIqvfXB/dJPve4i62sXDAfXpyeRryn74QhznX
 u4wkJ8TCL+mPGMK5xTZm61ubzhHgwdUIosVaNJ3MWKRxkqUpYXr7a2Q22+FYO7bo+pMpIy3dqaI
 xhHmBwgA1YgHxJ74giEnmEPjXEiXSrBK1iomOEO18uFgAZZqdaEl2jI62PGWpFALlLy8bYTL+nw
 dHu0CZ9kjsOjVTd/gab3aoEe0bbSDTyWU2IHCm7cUX//G0JmZ+6Xw57KERabLlWgTHCWJyx0Zns
 t9zIGVkr4/+jsjoUc4kXa/3Duv3FPUKKpWoKBXHkS44NE42VqMhwnVmjjXB4cIsc+G6ol6CMwpD
 dAiRDEL5joKRM5yc3fg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-31_02,2026-03-28_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 malwarescore=0 clxscore=1015 priorityscore=1501 spamscore=0
 impostorscore=0 lowpriorityscore=0 phishscore=0 bulkscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603310095
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260331_025918_879719_AA650D2D 
X-CRM114-Status: GOOD (  22.86  )
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

On Tue, Mar 24, 2026 at 11:23:19PM +0200, Dmitry Baryshkov wrote:
> On Mon, Mar 23, 2026 at 12:15:31AM -0700, Qiang Yu wrote:
> > The third PCIe controller on Glymur SoC supports 8-lane operation via
> > bifurcation of two PHYs (each requires separate power domian, resets and
> > aux clk).
> > 
> > Add dedicated reset/no_csr reset list ("phy_b", "phy_b_nocsr") and
> > clock ("phy_b_aux") required for 8-lane operation. Introduce new
> > glymur_qmp_gen5x8_pciephy_cfg configuration to enable PCIe Gen5 x8 mode.
> > 
> > Signed-off-by: Qiang Yu <qiang.yu@oss.qualcomm.com>
> > ---
> >  drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 30 +++++++++++++++++++++++++++++-
> >  1 file changed, 29 insertions(+), 1 deletion(-)
> > 
> > @@ -4705,6 +4713,23 @@ static const struct qmp_phy_cfg glymur_qmp_gen4x2_pciephy_cfg = {
> >  	.phy_status		= PHYSTATUS_4_20,
> >  };
> >  
> > +static const struct qmp_phy_cfg glymur_qmp_gen5x8_pciephy_cfg = {
> > +	.lanes = 8,
> > +
> > +	.offsets		= &qmp_pcie_offsets_v8_50,
> > +
> > +	.reset_list		= glymur_pciephy_reset_l,
> > +	.num_resets		= ARRAY_SIZE(glymur_pciephy_reset_l),
> > +	.nocsr_reset_list	= glymur_pciephy_nocsr_reset_l,
> > +	.num_nocsr_resets	= ARRAY_SIZE(glymur_pciephy_nocsr_reset_l),
> 
> Just for my understanding. If it was not the NOCSR case and had to
> program the registers, would we have needed to program anything in the
> PCIe3B space?

The PCIe3B PHY registers need to be programmed.
But we don't need to do it explicitly because there are also broadcast
registers: writing to these registers will automatically write the same
offset and value to both PHY ports simultaneously.

- Qiang Yu
> 
> > +	.vreg_list		= qmp_phy_vreg_l,
> > +	.num_vregs		= ARRAY_SIZE(qmp_phy_vreg_l),
> > +
> > +	.regs			= pciephy_v8_50_regs_layout,
> > +
> > +	.phy_status		= PHYSTATUS_4_20,
> > +};
> > +
> >  static void qmp_pcie_init_port_b(struct qmp_pcie *qmp, const struct qmp_phy_cfg_tbls *tbls)
> >  {
> >  	const struct qmp_phy_cfg *cfg = qmp->cfg;
> > @@ -5483,6 +5508,9 @@ static const struct of_device_id qmp_pcie_of_match_table[] = {
> >  	}, {
> >  		.compatible = "qcom,glymur-qmp-gen5x4-pcie-phy",
> >  		.data = &glymur_qmp_gen5x4_pciephy_cfg,
> > +	}, {
> > +		.compatible = "qcom,glymur-qmp-gen5x8-pcie-phy",
> > +		.data = &glymur_qmp_gen5x8_pciephy_cfg,
> >  	}, {
> >  		.compatible = "qcom,ipq6018-qmp-pcie-phy",
> >  		.data = &ipq6018_pciephy_cfg,
> > 
> > -- 
> > 2.34.1
> > 
> 
> -- 
> With best wishes
> Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
