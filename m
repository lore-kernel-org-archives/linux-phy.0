Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4C172C43458
	for <linux-phy@archiver.kernel.org>; Tue, 30 Jun 2026 16:25:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+XNXAwlA5jRQKC1OxXJj3Rtdf8YAn1fIHQCKG8tlO3M=; b=n1/Hqc4YKFqqTm
	wrW/YmhQP8fmIGHY7ABwQ4dVXDwHdcszJVSz6i0zp1ex0lR6AEYluL946wzg0Znr9isb2w5TyxO4a
	NUOVWSvnfSL09NHnwS3v0o2t1+AVQqWILC2+YQ+z2K5KQSLUW2Q6EcfzgBeKM0IysWjf9UVIaViE5
	mCvyxTitqD2RwgUzBQi8/89m5a5ghPAQMA0ULPbvihuOfh7k/Y9sAnMjnOICyWhbrYoNCdec7PvZ3
	hCBBq6dBabrZgz/NceKPW7hYwDx2F9CaBSNjHEWxcNR/+B8cWjNsLQ+jZSzVmVYSk9LZnR0fV9H7D
	VCRLgqS5N3VdBFw9lY/A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1webH0-0000000HT7R-302c;
	Tue, 30 Jun 2026 16:25:22 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1webGw-0000000HT73-3ZtE
	for linux-phy@lists.infradead.org;
	Tue, 30 Jun 2026 16:25:20 +0000
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 65UG44Av2482162
	for <linux-phy@lists.infradead.org>; Tue, 30 Jun 2026 16:25:17 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=7JztesSv1vX86J3T/3JDiPpZ
	RdmAAa2v8q5Kg0ahOoE=; b=mAlJ/J0reKFE93bZc17lfsgMcVn/nf0DbOQdsz3b
	OIqUvd0rxnkq+DCrLEMHOYdWnVDTuDulHsAqfUnB/ppPstFoLGSUzDCgUBlDjpZI
	9FQXHvj6pOkWcGvL/qsWT0qYQtWAVGw4Hv/qR0tVdL875FTpll+V5fU5ZxkqRzPz
	ohNSmWdZS6VfcPyGtFfRja5q0a54G3dpk/dUtDYL0jzOxKT87Ctng5HLefWs7zBR
	/TDm2MUXtX907ovOfOrVP+YHl4QBBV0Fk82JYL2F3q1DEGN/PVcMAUICTU/ldLTf
	QnVIIIKaPXbQzfR6yK+zSkltegC81laLaByXbiH3vMixbg==
Received: from mail-dl1-f70.google.com (mail-dl1-f70.google.com [74.125.82.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4f4h0ar4gn-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 30 Jun 2026 16:25:17 +0000 (GMT)
Received: by mail-dl1-f70.google.com with SMTP id a92af1059eb24-138acbc0e69so21561256c88.0
        for <linux-phy@lists.infradead.org>; Tue, 30 Jun 2026 09:25:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1782836716; x=1783441516; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=7JztesSv1vX86J3T/3JDiPpZRdmAAa2v8q5Kg0ahOoE=;
        b=OhPuuWfKozW3OH+TfDc3hRQgHHoZPDoDFnkUc78EWi6SatFOsJytomPsgB3/0I+9PC
         kFpy4Por2LLo7MJ0HrFtdr7fCKuzlEuhmx3UsoYKdO1fu66jpQ5tVSkg6qOrcY0bA2To
         rV/kuq4QSui9HZxXnSoO94t8hi2J4g3DugvGMWjN9eThTXFetRtZErDWfwbJXFkZPSVO
         iGZIjUvxsJ0eeJTZKLYAkiH10GbKcKk7zkZ4J6FjKG0FUz11gItTbuEG1PdTaW38x+1+
         wab764e6IjMQTyagsDqNxIIdxi6ldWh6r8k4QV2jmBP1KUHFy20POPhlD6aO7BDDXYxs
         sBGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782836716; x=1783441516;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=7JztesSv1vX86J3T/3JDiPpZRdmAAa2v8q5Kg0ahOoE=;
        b=g3w3xrbW6lFNAYJFhzSK/VKOkJ/cy+Hux2qImfUAriBN61xRaYrJaTMZKuktLARxkV
         KSeUDamuB/d1wFmcKkTlLBeDCnoQ6wBwsnt4MRHzNEv4HzJHqC2RQc4SgWtJDIGCLKDg
         Uk41jiKs7a0zahdcKrnW/Ggd5ymrUMVHMzCDaXCJIcOivzyRiYfWUfi4tdvR8kkF03qu
         GuOO46BqNODHQ+I5/N8IpzWsr91VgFAFK8/lzAPkaaopCwd3stjL2d7j6O2scMqDrUNG
         czLtXvEZaaOHQ0DwLmHcCwWhiHUZ/TDVomlyYUP8jpYuYtcyRfE/bUpLV360ANtRFN3O
         k++g==
X-Forwarded-Encrypted: i=1; AFNElJ8LPD4HjszTYvGM1Bjmp26S2aILsfMFUCL4b3u/T7ajLYNHgTS2ifePjfDhepDwTkZ1VN9rv62f3Gw=@lists.infradead.org
X-Gm-Message-State: AOJu0YztUIo4AsazGZQPmZYtvOQqwRsj8CYRmpSciK4S/3eV9gOzomCx
	VKZE3JbFGhmjWanZ7uZVRaNYw8pQiCJrXCAUugR/t2PlEv9yvVVVth34HBYtIQXFfRIIp32aoTh
	uknGvolFk6oIEHxL0Zm9yqMROlvDmkU8/JZrprWdn4bfWwnEw/LAPz+bpQ5rWROEJ1xSe
X-Gm-Gg: AfdE7ckjHq349AdoZdCeJDR1/6qDDGUSp/nXniCvmd50yqD/d+d1EeqJUyr6z2109Pf
	fRmMRy0a416CbDqXIGx/dwrMTzAw7sq0apDeMDZ6y9RvuOiuvjbhUwNZe7jPkRHYaxaU1PonOCd
	tR81O7deS3UoydfpU6ncrk5dzYdRtMq5AHYXD0a0NSfyOg4pRTlx9SQ5e7c/DoWfqYqAlleHCkl
	HKozXmdzHyo+pquG5tL6PhZV/6FXCQNi17Taa33fkLxIOvpRkWWe03OxeDy5A4bIHIQrhnMh2C6
	BS4sh2dFe/9cFPUN1i+2s3UXr6GDgnP8+04+o4YHDXZTcujJQiJ6YQ6pLLNAYmM2iGuDTDvCvTs
	B+bAP5WnBk2Tiy5C0Jw1YWeaoVBPpe1wWqP1akiIr+vDYWsztp7OJ4axQyJkKPbo+6ow=
X-Received: by 2002:a05:7022:23aa:b0:13a:363:ff6c with SMTP id a92af1059eb24-13b2a1acac8mr2861676c88.24.1782836716130;
        Tue, 30 Jun 2026 09:25:16 -0700 (PDT)
X-Received: by 2002:a05:7022:23aa:b0:13a:363:ff6c with SMTP id a92af1059eb24-13b2a1acac8mr2861617c88.24.1782836715418;
        Tue, 30 Jun 2026 09:25:15 -0700 (PDT)
Received: from hu-mattleun-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-13b2ab2dc1fsm8426555c88.6.2026.06.30.09.25.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Jun 2026 09:25:14 -0700 (PDT)
Date: Tue, 30 Jun 2026 09:25:12 -0700
From: Matthew Leung <matthew.leung@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Subject: Re: [PATCH v3 0/4] phy: qcom: qmp-pcie: Add PCIe PHY support for Hawi
Message-ID: <akPt6Na523IZXYX/@hu-mattleun-lv.qualcomm.com>
References: <20260618-hawi-phy-pcie-v3-0-3fa42ca45ea4@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260618-hawi-phy-pcie-v3-0-3fa42ca45ea4@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=OuF/DS/t c=1 sm=1 tr=0 ts=6a43eded cx=c_pps
 a=SvEPeNj+VMjHSW//kvnxuw==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=kj9zAlcOel0A:10 a=FelO9ux0wxsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_glEPmIy2e8OvE2BGh3C:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=bC-a23v3AAAA:8 a=KKAkSRfTAAAA:8
 a=JfrnYn6hAAAA:8 a=jj8kymYpkfAu7g8d2q8A:9 a=CjuIK1q_8ugA:10
 a=Kq8ClHjjuc5pcCNDwlU0:22 a=FO4_E8m0qiDe52t0p3_H:22 a=cvBusfyB2V15izCimMoJ:22
 a=1CNFftbPRP8L7MoqJWF3:22
X-Proofpoint-ORIG-GUID: RVCphsOW7Xju-0rl_oXCvgRmmZzP5RJX
X-Proofpoint-Spam-Info: AW1haW4tMjYwNjMwMDE1NiBTYWx0ZWRfX/WENGa4yHGBw
 BlSqu5d7dwnHePGORbwBMgIWeed7arNohKYWJF01rGWt/ICpDQgrSlTT41x6wYSugI9wwWotJwG
 ZKe43WY/dMsKitZj2RW1eQXRoNOxSTE=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNjMwMDE1NiBTYWx0ZWRfX2ytwgm41z+2P
 qEBLEU8Q5RmTvNP9XJvnoHGcC46khOqSPnAPDaw95KadIGhtYLL1CTIOZo7oPgQ4m00l2gKC2C0
 mtlPCfPHJ+xl1O2Thj2BQ4c1D0iekltmQ0B/wVCv5bhwJ/z6s0na55rrJNlhqt72MASkPh4/qgr
 lMWlB992x0FG4wjYW3t7Im+gl7vn9AchUcb911bzO7fYiPzxhQVmTa4iG7jc3hazBdzS/0ASeIq
 U8j+/kjuVfjBIAB7axPfTd6zVY20w0o5qwayILZ/KSLfhABAnsK1OfYpG1+u4ppgrIc7bJ/ukt4
 q3uE1Q/S6kaoSZ/zkbsbozj1TgMWdt3MrFG0VOazLI0810gMrvgJxjr/E01AFLAjectYIN2VcX4
 O0iIhCuTz2Tjffnorkk/zHnuwfrUhUVzn8ESuGZ47KeOYu9DD+fMChaMlIAVv0oI3huDpXcJ0YB
 yDVciMtSwqpFPf3lcDA==
X-Proofpoint-GUID: RVCphsOW7Xju-0rl_oXCvgRmmZzP5RJX
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-06-30_04,2026-06-26_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 suspectscore=0 spamscore=0 lowpriorityscore=0 bulkscore=0
 impostorscore=0 clxscore=1015 adultscore=0 priorityscore=1501 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2606300156
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260630_092519_040304_9539F618 
X-CRM114-Status: GOOD (  23.90  )
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

Hello,

Gentle ping for this patch series.

Best regards,
Matthew Leung

On Thu, Jun 18, 2026 at 09:54:35PM +0000, Matthew Leung wrote:
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
> base-commit: 8cd9520d35a6c38db6567e97dd93b1f11f185dc6
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
