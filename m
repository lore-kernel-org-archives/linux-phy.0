Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D03B3C4451B
	for <linux-phy@archiver.kernel.org>; Sat, 18 Jul 2026 01:04:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DgAf1Yeh9lqnzikvLyLaj7IT0tN8L551svkF91Og+ig=; b=pIWqXl/jZBo02l
	5REnHMEK4YeGN1zHOHBuBmXsBxVxVTsXllw/NSN6zMNXLGpu8hzUCCeTo1jgfR2MtU2XjOy3XkB6G
	dQh/2+y6deoE22dSkYqDUZo/jAPh6lf0B5hkuUlAzbcG5Ck/op6IrmeGgyu7bywSjcd+McaanGvSj
	OsZ0OejmaabXIfxBajmAiFj0TXGlrx3eu2Ofhvc28oVwZhs6S9pDew8KUyjxmLFexC3SqvCklezQA
	0E0n5A/D4Mz+HPZEvtG+MFdCdzpvo/nkyH7c7xtJ3RPpW9PrgQy+NB14tzaXCPV1TVv6igMQUGo5p
	oRegj2DSoHp+g/JytPHA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wktTy-00000003Tgo-3zR9;
	Sat, 18 Jul 2026 01:04:46 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wktTw-00000003TgP-2Qnb
	for linux-phy@lists.infradead.org;
	Sat, 18 Jul 2026 01:04:46 +0000
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 66HNELmR3023738
	for <linux-phy@lists.infradead.org>; Sat, 18 Jul 2026 01:04:42 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=rQLRlSB7PGWIgFFnVYd8T2nZ
	Olfy4NygBjlMFmkKEA0=; b=bRvPpj/Zqt7bPVpIhmwtZY+AmMaBPhkRFEIGJj1F
	FWXqHrwjAfLU2X7RqeQpxQCo+/4PUqHomjzwzcbovlUj8QVzhJIitso+LhSTX/OF
	SgSeuLDBeEIlWqsOJyNEl7JmK0bxinazW9NjddUt3ccEMW1jWPPhdfMMTcJi9KIu
	/w2/wwnmM4HaGfNzaEZ4hJSwhXgzroQLU+NDp4Igvv8bgZbPkeL1x1+dSJ38noZS
	MQATaGwwTQ/YhR8TwaJw+uvw0qxIjYpw8nHxYfryg+t0i7ZPg7DIVY28YiQYO+UK
	vtpx/kQf7bVMI0TmzK02bfhoLyjHY9//3nKbrItkg8kw0A==
Received: from mail-pg1-f199.google.com (mail-pg1-f199.google.com [209.85.215.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ffrp8sdh9-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Sat, 18 Jul 2026 01:04:42 +0000 (GMT)
Received: by mail-pg1-f199.google.com with SMTP id 41be03b00d2f7-cb5ea36f969so346487a12.2
        for <linux-phy@lists.infradead.org>; Fri, 17 Jul 2026 18:04:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1784336682; x=1784941482; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=rQLRlSB7PGWIgFFnVYd8T2nZOlfy4NygBjlMFmkKEA0=;
        b=Bt9LsFfxFEw9fXMg/BeGDu0Bew/TMSOfjftgSP0n2nInumNYzyFw2o/euMIGojkw9U
         FBuAiimhR0za5DY/lhK2RstPwY+o12lVbh3iUFOVhjSZcMH80OF3YK3b1GO0Ze32yKYj
         4TJCRpAwgN8KdBt2gn9Ez83DYYZw6RcXjTc/2ChZsX0SxF20hFR75PfzY0QNf2ohkAi9
         A00tw8yFBzFCR3WwlJQjJvcX088g5pNoiXDFrkLYGXBWPrljhkDKvECH4ajdX5OcaeSz
         gG7VaqqX1XYkvxUWPZn5uXd2qy/OEMqXxNvjPwgSo3wJuKPW/9zyJzULGOEkiGgXPbMX
         k5lA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784336682; x=1784941482;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=rQLRlSB7PGWIgFFnVYd8T2nZOlfy4NygBjlMFmkKEA0=;
        b=PzzjAh+EufdhAsTjCi3uWtVu/WcgxhWE7kiZSv4dlYlvKllixjqKxfJaUiy3Rcn1vW
         hREgX8UQZati90CMw5eWOp7VOmnRambwjh9uTMavTmIM9x2ar8JhyHztyeGBrYYqzBRU
         VVWjklvseZGPbbNlvVyujwgjKapHGvkCJVh4dz9WsK4gOXfw5sPiERko5kbME1otXOmA
         Zawco5EajxyZJurOpPUwqlhgmbKGQp46jhA4MHSQvtf2s6vMuydu+jx8oaw7h6xAS3gy
         6iZ6rD89OrOpnUdc8HNQSjKcGaMtWMQ+5chwwPWJMIHYmtC4+JJznZhLWdPUUmZFA3OY
         piBQ==
X-Forwarded-Encrypted: i=1; AHgh+RqMK2jiSMizGewtqlBMVmczHNO1UdZzfs2AlIbaRf97teEgdGUWz9CpElNP/rmFN3YL1gOeBjCa4gw=@lists.infradead.org
X-Gm-Message-State: AOJu0YxENsVmm1U63hip3HqJPCnwWaKOy5UcxJBYLeKaQulqQbtXIEEV
	M9hYLNUhQnl84Qx8BraTFO7bZdAgFWipDuGCCN/NixM0dyK+Z1CVmcButKnyxJYazUhVTRNEXga
	y0RdbDbmxqrHxT4GNpp7YNBC502TV1dtH61YzT6pFytR2DGAJY6x5sqgCYXPa9m32pq3X
X-Gm-Gg: AfdE7cl0hEUyKfootephQU7Twd9e9mQHfLNHx3RlDMmh9jO8PIZ20aZZCfZZCVeJPUn
	2Fv7w6CjScL421iboqGbLGXLg1p+c45d11oGrbjgkKK7tNzmuz/8DogwhTPKVhdiDTcKmngC5TS
	2i1CTxxTyYWjCfHIUPb7TIV3dOKrR4z2ptkFuT+iPA6w+4HPEYDEUy01HOra4hF/pTDTYA/Ym0e
	TG4zifIrBQbzLh7wKg2OL192pqEelXgAmO9MVyXHg0f82bzfDScCdiBtkp9YO6i7WQF6yOpJw5J
	z5uMGYnI8nKjGTa0SCmJCvs/0Di+JW0q8raJlEXM2udZuVRyWYR+Wz7LynhLcAqQqnrO/sNuRPh
	RyXfmpt3ndn7iVmSLPyfM3Pzk+F32438L2Z9mYa4jX9XNRxFhXxivC9dB
X-Received: by 2002:a17:90a:d605:b0:37f:9ce3:ca95 with SMTP id 98e67ed59e1d1-38e4b54436bmr5104029a91.30.1784336681734;
        Fri, 17 Jul 2026 18:04:41 -0700 (PDT)
X-Received: by 2002:a17:90a:d605:b0:37f:9ce3:ca95 with SMTP id 98e67ed59e1d1-38e4b54436bmr5103968a91.30.1784336681100;
        Fri, 17 Jul 2026 18:04:41 -0700 (PDT)
Received: from hu-mattleun-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-3142a1de301sm11476274eec.24.2026.07.17.18.04.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 17 Jul 2026 18:04:40 -0700 (PDT)
Date: Fri, 17 Jul 2026 18:04:37 -0700
From: Matthew Leung <matthew.leung@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Subject: Re: [PATCH v4 0/4] phy: qcom: qmp-pcie: Add PCIe PHY support for Hawi
Message-ID: <alrRJQF2JcThIh4k@hu-mattleun-lv.qualcomm.com>
References: <20260707-hawi-phy-pcie-v4-0-8d9cc6324947@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260707-hawi-phy-pcie-v4-0-8d9cc6324947@oss.qualcomm.com>
X-Proofpoint-Spam-Info: AW1haW4tMjYwNzE4MDAwNyBTYWx0ZWRfX/3vO+/kza0E3
 OSObajBEYENI65eFiIsvspMsBZOfjvDYn4P7ATPNu+TdYxH2J/qKpJueCWJPyp2JZ8AtHkIwcHJ
 TCnDfHCCiPPrINIz30L//NC5Dv4IT/U=
X-Proofpoint-ORIG-GUID: b7DIhJDVTKOYyrAy4DiAw6zjT3G19qRg
X-Proofpoint-GUID: b7DIhJDVTKOYyrAy4DiAw6zjT3G19qRg
X-Authority-Analysis: v=2.4 cv=fMYJG5ae c=1 sm=1 tr=0 ts=6a5ad12a cx=c_pps
 a=Oh5Dbbf/trHjhBongsHeRQ==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=kj9zAlcOel0A:10 a=RAioF0-LDSMA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=YMgV9FUhrdKAYTUUvYB2:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=bC-a23v3AAAA:8 a=KKAkSRfTAAAA:8
 a=JfrnYn6hAAAA:8 a=jj8kymYpkfAu7g8d2q8A:9 a=CjuIK1q_8ugA:10
 a=_Vgx9l1VpLgwpw_dHYaR:22 a=FO4_E8m0qiDe52t0p3_H:22 a=cvBusfyB2V15izCimMoJ:22
 a=1CNFftbPRP8L7MoqJWF3:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzE4MDAwNyBTYWx0ZWRfX7VE5fRo3zy9x
 2CL+jWLxRTyi/U3XxRzdBTg80Cg46nLyeT1LgFwJKv/L59RHbSCmhr3cNMA1yEmC3ym8mHTH/wX
 JYZ9Q0MXFEQ4oFKd2lL0pVPgjYhaoMxL2yaEZvzUMPZ2vnK3bP3r6GOTq8k6wmkruL1G9G8bD14
 IyJ3rVb3KnRBho6zTXASTTxaJW6TOAAXOQenLcPkEmCmmT3tYts/0JgkEOC/Pg+gkk3OWIpD2X9
 WhPx/jZre54ijibNAt7bptgolfpsQZmacm67maMuzrO5c+BSqPel/1k2+cpAXgA3pprshoTRnS7
 0nRK7kSVSaz2rpERYBcmYoKJ6vCHUp6svKjuY2679C2A5yC3dnCOpYGFVHXWrKaJkz/L2tMy84S
 nwctGuf+FiUp0q82iL9riWtCngUyBo6DaV3yrmYRq3cdawiaJsq4QFX1STh7XfuEMHF2leBahVq
 4MNPVamKIobA2zZLvOQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-07-17_07,2026-07-17_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 malwarescore=0 priorityscore=1501 suspectscore=0
 lowpriorityscore=0 bulkscore=0 spamscore=0 adultscore=0 clxscore=1015
 phishscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2606150000
 definitions=main-2607180007
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260717_180444_630152_C2442587 
X-CRM114-Status: GOOD (  22.74  )
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

Gentle ping. All patches have Reviewed-by tags. Please let me know if anything is needed.

On Tue, Jul 07, 2026 at 08:32:45PM +0000, Matthew Leung wrote:
> This series adds QMP PCIe PHY support for the Qualcomm Hawi SoC. The Hawi
> platform features two PCIe PHY configurations: Gen3 x2 and Gen4 x1.
> 
> The Gen3 x2 PHY uses v10 register definitions, while the Gen4 x1 PHY uses
> v10.60 register definitions.
> 
> The series adds:
> - device tree bindings
> - v10 register offset headers
> - v10.60 register offset headers
> - driver support with PHY initialization tables for both configurations
> 
> Overlap:
> The series has overlap with "phy: qcom: Introduce USB support for Hawi"
> by Ronak Raheja (see link [1]). Both patch series introduce a subset of
> v10 registers (this series for PCIe and Ronak's for USB). I have
> coordinated with Ronak regarding the overlap, and we can update the
> series to resolve any overlap based on the order of merging.
> 
> Link: https://lore.kernel.org/all/20260508213234.4643-1-ronak.raheja@oss.qualcomm.com/ [1]
> 
> Signed-off-by: Matthew Leung <matthew.leung@oss.qualcomm.com>
> ---
> Changes in v4:
> - Rebased onto v7.2-rc2
> - Link to v3: https://patch.msgid.link/20260618-hawi-phy-pcie-v3-0-3fa42ca45ea4@oss.qualcomm.com
> 
> Changes in v3:
> - Squashed v10 register offsets into a single change
> - Squashed v10.60 register offsets into a single change
> - Removed USB mentions from header comments; offsets are PCIe-specific
> - Reused the tx offset for the v10.60 combined txrx module instead of
>   introducing a separate txrx offset
> - Link to v2: https://patch.msgid.link/20260604-hawi-phy-pcie-v2-0-be908d3560db@oss.qualcomm.com
> 
> Changes in v2:
> - Rebased onto v7.1-rc6
> - Patch 1: no change (Reviewed-by carried forward)
> - Patch 9: rename QPHY_PCIE_V10_60_PCS_PCS_TX_RX_CONFIG to
>   QPHY_PCIE_V10_60_PCS_TX_RX_CONFIG to be consistent with the
>   naming convention used in previous pcs-pcie headers
> - Patch 10: update usage of renamed macro
> - Link to v1: https://patch.msgid.link/20260508-hawi-phy-pcie-v1-0-237b894353fc@oss.qualcomm.com
> 
> To: Vinod Koul <vkoul@kernel.org>
> To: Neil Armstrong <neil.armstrong@linaro.org>
> To: Rob Herring <robh@kernel.org>
> To: Krzysztof Kozlowski <krzk+dt@kernel.org>
> To: Conor Dooley <conor+dt@kernel.org>
> Cc: linux-arm-msm@vger.kernel.org
> Cc: linux-phy@lists.infradead.org
> Cc: devicetree@vger.kernel.org
> Cc: linux-kernel@vger.kernel.org
> 
> ---
> Matthew Leung (4):
>       dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy: Add Hawi compatibles
>       phy: qcom-qmp: Add v10 register offsets
>       phy: qcom-qmp: Add v10.60 register offsets
>       phy: qcom: qmp-pcie: Add QMP PCIe PHY support for Hawi
> 
>  .../bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml   |   6 +
>  drivers/phy/qualcomm/phy-qcom-qmp-pcie.c           | 375 +++++++++++++++++++++
>  drivers/phy/qualcomm/phy-qcom-qmp-pcs-pcie-v10.h   |  18 +
>  .../phy/qualcomm/phy-qcom-qmp-pcs-pcie-v10_60.h    |  26 ++
>  drivers/phy/qualcomm/phy-qcom-qmp-pcs-v10.h        |  22 ++
>  drivers/phy/qualcomm/phy-qcom-qmp-pcs-v10_60.h     |  23 ++
>  .../phy/qualcomm/phy-qcom-qmp-qserdes-com-v10.h    |  49 +++
>  .../phy/qualcomm/phy-qcom-qmp-qserdes-com-v10_60.h |  55 +++
>  .../phy/qualcomm/phy-qcom-qmp-qserdes-txrx-v10.h   |  47 +++
>  .../qualcomm/phy-qcom-qmp-qserdes-txrx-v10_60.h    | 109 ++++++
>  drivers/phy/qualcomm/phy-qcom-qmp.h                |  10 +
>  11 files changed, 740 insertions(+)
> ---
> base-commit: 8cdeaa50eae8dad34885515f62559ee83e7e8dda
> change-id: 20260506-hawi-phy-pcie-283933b4113e
> 
> Best regards,
> --  
> Matthew Leung <matthew.leung@oss.qualcomm.com>
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
