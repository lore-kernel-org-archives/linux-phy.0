Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 74EACF433DC
	for <linux-phy@archiver.kernel.org>; Thu, 16 Apr 2026 02:58:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=T2dWp69HpLS9MvP8/VoxrZYR9+KmnMql0SFaPMkRRug=; b=MpeUANXV+zg/9P
	pMiDQrVDOP8VA+DDMZYaVbctKLa67UbNs3U61veMwocsOtmDpKDRFAvhcM5MhuD3a2x3J6GrcGQYE
	QCp++4gUN9wbRoJTOSixsiThB1Y7HhEJpdsRX5CXOgagZTOPdlkPWOa/FhEfbztmp2oX3zqTHoa2M
	FsuirYrnGRtDjUVQGWxM9oEbbCpaEJ8beKHRer7KnJfCMyh4WeIa8nlmM/yQz/7rD3Kg/UMQDU6HZ
	YUSmSpbZamQOdlFndkrmG+elKAoPnO+yfY5GCdUW8PAcTQ77XJkKsIfLM6hEJntjiBdBLqTDnvIv2
	yYC5YlC9VAj7VUdy6cTg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wDCvv-00000001taL-3hQp;
	Thu, 16 Apr 2026 02:58:23 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wDCvs-00000001tZx-2Z1d
	for linux-phy@lists.infradead.org;
	Thu, 16 Apr 2026 02:58:22 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 63FGEsjh506954
	for <linux-phy@lists.infradead.org>; Thu, 16 Apr 2026 02:58:17 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=h7Cz/mpEmwKn1eYZoiIeySQz
	A7Xab0QN0U/cYPnax80=; b=ZFAwbK2rsYnH8xFRLs/O7mlnJLtFy5AQpklL7HUx
	zzH8PhpKXscxBLpqKINiJ4IGQ5eLPf/5U8HKOYtDZvuTbeC67CPoE82dMrmDXXgq
	RIM9Cp+5VoiHXNDhC9/GV+MejXPRJtaXhsPEqw/5Eqj8CkFTPi2SyFsTpJLqSQoz
	YXjmvdIRQJ3d9hVSV5mlmrLgVm99quHVByM/OKQ0+I/BzBOs17YeOkr/chnVFblE
	E9exQ14ZWNFccUnTVZ8tbDokn7dv+7UMXWb+wEia2LsGovWAe3Hdo6y5fvLoDjF4
	s6D0XvigVQFaTJhmWRDtOjKc0ZknDjw/nnqOlHV1eQZR/g==
Received: from mail-dy1-f199.google.com (mail-dy1-f199.google.com [74.125.82.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4dje1e1qhh-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 16 Apr 2026 02:58:17 +0000 (GMT)
Received: by mail-dy1-f199.google.com with SMTP id 5a478bee46e88-2c0ba59a830so9639225eec.0
        for <linux-phy@lists.infradead.org>; Wed, 15 Apr 2026 19:58:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1776308297; x=1776913097; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=h7Cz/mpEmwKn1eYZoiIeySQzA7Xab0QN0U/cYPnax80=;
        b=LvSTm92RnqyfSDznbrZ2NXFJMtELnREVjziiZ5X+4lbGlbwb+10qyR20iCB1n05q2b
         EmTTg4gYhYw7kLI+l7hizSyF9UWjL2T32iniVBV0PHKl6X76mCesQaxkADlDgjUiVoB7
         fS5OIbCBzOeihsgKqyhN6YrBPlXxu7RbnTvitxMccWX9oCtfwL/bdTPqBuCQnZTsHP9J
         RLt1reEzP86RuFAT5p+Xxc4e7hqFEPl9ey76oZ8X8nmFXT9vOgo9Rv9tWJLi7dWc+ObR
         AR1/DI+1oDxzYORifDxpYXFmuTwv3xEE95lRklNAthp/kXF5wB1y2sj0zVqHKL3fJdEx
         +UhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1776308297; x=1776913097;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=h7Cz/mpEmwKn1eYZoiIeySQzA7Xab0QN0U/cYPnax80=;
        b=gNlF4m6q01CPUcYlfLRdUjte8+2y4NICJX/HtZqYa0peTox/HgCFel4zKy20ai8LWh
         1E1mwP/B4Lb7feHOn/Imu7YOA6i9jJfSPqpc2Ds9e8jvIIJ+2BLovfbzWyOQqt4PvPQh
         P6vypCg//z489GVRxBpxM6ijFqD6v2mq9LXDt3sUnKxF7H5t5+1ZzJu6aW8D6n/d19kU
         ZoYcAoA4Ug180wjVy8t7rMaQzs22789OEOc/huMU4Yb4j1Yf1TqnOrPsEjVFmXQvcLMO
         pakUuRPD1lVikKzYQBag9BXwxk18ETrHRURCz+08F3O5WJwaYZ1hCA4xc6topiA9Kxgv
         7wgw==
X-Forwarded-Encrypted: i=1; AFNElJ/P1yitKuiX8rWaI41ON2mZ/vexHO88oEc4vCkznvEVXp1FeEbnryqTQMvdZAE3ExQOuAiAUp594IU=@lists.infradead.org
X-Gm-Message-State: AOJu0YxXD4NuVeLmTWmZyKvgXIIvdN3qP1c5Yt7oLPv8eranAUpEkJ6R
	x3rGqFT68BS7A0lSbSxN1tmYk5bdKoDzlLQN022HLUFjR7oa8hVgFHvzUVFcBKilI22NM8wutPe
	CMxpIsy2IsWnhtNdOhYxHhNCIGMXJMa+yW/2vN7EHTDRtiebrnwgazUg56tMycWIhDoJW
X-Gm-Gg: AeBDievZN4CTRImW+G9ET1gf7Ax/bvzYq9ns3Mb423wrEUmZEuHniwW+nG43bj0g3HO
	4FKBiSmWiq5wfOKuB78bGA2iLnA+xqTD+yvqZHA2zZNAOSfu3SNFRccOxg62DBG1hSEFS7KEr1c
	Y6SkJNbSjlw9dPKP1kAyRgn8zd7XDSAhr3YPZM3ZFCBSgzgjzkuMJg/uW3Saub//NA8jDp72R5w
	EA1HtGCMLpPsiWXkBYWcTMTaD5XqsLSlJw8a9zaMCi5HCBQxodQNDwbLYzOeQvlbmRbN6UCRXS5
	+HtWRORz8ovXM61+lSjn+3eDsiOvycsuD6hRIv14/TZWQCPS4hZeOfJ16a7Veli8LgzqwWsWd/G
	pNF9IRZSK88PDXVE4VDTHDUO7RRxKdpjBJ2GI3951q15odH9FCFhXz1El38Sx/JfgWavnK5RIas
	44WQc=
X-Received: by 2002:a05:7300:e2cc:b0:2c1:7793:7bbb with SMTP id 5a478bee46e88-2d5898a59fdmr13847137eec.27.1776308296619;
        Wed, 15 Apr 2026 19:58:16 -0700 (PDT)
X-Received: by 2002:a05:7300:e2cc:b0:2c1:7793:7bbb with SMTP id 5a478bee46e88-2d5898a59fdmr13847117eec.27.1776308296024;
        Wed, 15 Apr 2026 19:58:16 -0700 (PDT)
Received: from hu-qianyu-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2de8c605851sm5522629eec.9.2026.04.15.19.58.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 Apr 2026 19:58:15 -0700 (PDT)
Date: Wed, 15 Apr 2026 19:58:13 -0700
From: Qiang Yu <qiang.yu@oss.qualcomm.com>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 1/5] dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy: Add
 support for glymur Gen5 x8 bifurcation mode
Message-ID: <aeBQRStG3imY0cOe@hu-qianyu-lv.qualcomm.com>
References: <20260412-glymur_gen5x8_phy_0413-v3-0-affcebc16b8b@oss.qualcomm.com>
 <20260412-glymur_gen5x8_phy_0413-v3-1-affcebc16b8b@oss.qualcomm.com>
 <20260415-wooden-prawn-of-lightning-dc1ddc@quoll>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260415-wooden-prawn-of-lightning-dc1ddc@quoll>
X-Authority-Analysis: v=2.4 cv=HZwkiCE8 c=1 sm=1 tr=0 ts=69e05049 cx=c_pps
 a=cFYjgdjTJScbgFmBucgdfQ==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=kj9zAlcOel0A:10 a=A5OVakUREuEA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=3WHJM1ZQz_JShphwDgj5:22
 a=EUspDBNiAAAA:8 a=73w2PV_BYJwXTn-nqSYA:9 a=CjuIK1q_8ugA:10
 a=scEy_gLbYbu1JhEsrz4S:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNDE2MDAyNSBTYWx0ZWRfX6QjbByraTbUc
 mDkNwHGMH6nJwb0gojh8IKjshm0Tg2Ysd2YNDBoWT5jyx4GfSIdvr/K13fZPzVVADPizjZnFdLm
 jY2myz396LHr3nSquqmvHqMhS2QSoNsmp6L7UBIgLkVaC9O/eHXsCJTj8E4lfu/ptGeLTSQCuXV
 JyllZLEbxqqDyBsqW2L2fHJQ7AplWH3BwcsNGRqeCOtzVIq30ENKgMQ2JBA8jaxtpydFDmBHzaY
 83IuxIBNBKo12AjW3CurUy0Qvw/2oU+VBMvGcV50NT6u6c/C0GCz2AUG4R//u9jVtsgTcXfTWSw
 bUH3R+Me6qc7kvipB47Xj5FB+HO3k+tsZFdcTsBQYB8zrcYOKTh8aYzi4s7MgLkP+GivTlW6UNO
 B12I0PXGYP7xXuZmcxMG+Iw/GQN0q3lI/M2wDrU3IFKjqZKwxmBmwI9ecUUf8iUZBwU10LAzeCV
 PA1sEifpSa2cxXXZPyw==
X-Proofpoint-ORIG-GUID: 86dj48Imw4zIoO-nD2s2IbGO-4SLNsRK
X-Proofpoint-GUID: 86dj48Imw4zIoO-nD2s2IbGO-4SLNsRK
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-04-16_01,2026-04-13_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 suspectscore=0 impostorscore=0 lowpriorityscore=0 bulkscore=0
 clxscore=1015 malwarescore=0 priorityscore=1501 spamscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2604070000 definitions=main-2604160025
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260415_195820_771925_B7A76D4A 
X-CRM114-Status: GOOD (  30.52  )
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

On Wed, Apr 15, 2026 at 09:50:28AM +0200, Krzysztof Kozlowski wrote:
> On Sun, Apr 12, 2026 at 11:25:56PM -0700, Qiang Yu wrote:
> > The Glymur SoC has pcie3a and pcie3b PHYs that can operate in two modes:
> > 
> > 1. Independent 4-lane mode: Each PHY operates as a separate PCIe Gen5
> >    4-lane interface, compatible with qcom,glymur-qmp-gen5x4-pcie-phy
> > 2. Bifurcation mode (8-lane): pcie3a phy acts as leader and pcie3b phy as
> >    follower to form a single 8-lane PCIe Gen5 interface
> > 
> > In bifurcation mode, the hardware design requires controlling additional
> > resources beyond the standard pcie3a PHY configuration:
> > 
> > - pcie3b's aux_clk (phy_b_aux)
> > - pcie3b's phy_gdsc power domain
> > - pcie3b's bcr/nocsr reset
> > 
> > Add qcom,glymur-qmp-gen5x8-pcie-phy compatible string to document this
> > 8-lane bifurcation configuration.
> 
> Do you describe PCI3A or PCI3B or something combined PCI3?

I describe a single x8 PHY with resources from both the pcie3a and pcie3b
PHY blocks for x8 operation.

> 
> > 
> > The phy_b_aux clock is used as the 6th clock instead of pipediv2,
> > requiring the clock-names enum to be extended to support both
> > [phy_b_aux, pipediv2] options at index 5. This follows the existing
> > pattern used for [rchng, refgen] clocks at index 3.
> > 
> > Signed-off-by: Qiang Yu <qiang.yu@oss.qualcomm.com>
> > ---
> >  .../bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml   | 53 ++++++++++++++++++----
> >  1 file changed, 45 insertions(+), 8 deletions(-)
> > 
> > diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
> > index 3a35120a77ec0ceb814a1cdcacff32fef32b4f7b..14eba5d705b1956c1bb00cc8c95171ed6488299b 100644
> > --- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
> > +++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
> > @@ -18,6 +18,7 @@ properties:
> >      enum:
> >        - qcom,glymur-qmp-gen4x2-pcie-phy
> >        - qcom,glymur-qmp-gen5x4-pcie-phy
> > +      - qcom,glymur-qmp-gen5x8-pcie-phy
> 
> That's the same device as 5x4, no? One device, one compatible and this
> suggests you will have three PCI phys in the DT - two 5x4 and one 5x8?
> 

It is not the same as the 5x4 PHY. In DT, we model three PHY nodes:
phy_3a (1x4), phy_3b (1x4), and a separate phy_1x8 node for x8 mode.

> 
> >        - qcom,kaanapali-qmp-gen3x2-pcie-phy
> >        - qcom,qcs615-qmp-gen3x1-pcie-phy
> >        - qcom,qcs8300-qmp-gen4x2-pcie-phy
> > @@ -68,20 +69,27 @@ properties:
> >        - const: ref
> >        - enum: [rchng, refgen]
> >        - const: pipe
> > -      - const: pipediv2
> > +      - enum: [phy_b_aux, pipediv2]
> >  
> >    power-domains:
> > -    maxItems: 1
> > +    minItems: 1
> > +    items:
> > +      - description: PCIe PHY power domain. For PHYs supporting
> > +          bifurcation mode, this is the leader PHY power domain.
> > +      - description: Additional PCIe PHY power domain for PHYs supporting
> > +          bifurcation mode, used by the follower PHY.
> >  
> >    resets:
> >      minItems: 1
> > -    maxItems: 2
> > +    maxItems: 4
> >  
> >    reset-names:
> >      minItems: 1
> >      items:
> >        - const: phy
> >        - const: phy_nocsr
> > +      - const: phy_b
> > +      - const: phy_b_nocsr
> 
> And now I doubt that all the changes here are for duplicated node.
>

All the changes here are for 1x8 PHY node.

> Maybe just the commit msg is confusing and instead of describing some
> node which combines two other phys just say what device is here being
> described.
>

Okay, I will focus on describing the required resources. Is the
description below clearer?

Glymur has two physical Gen5x4 PCIe PHY blocks: pcie3a phy and pcie3b phy.

Besides the independent 2x4 topology, Glymur also supports an x8 topology
that is described as a dedicated 1x8 PHY DT node. In this topology, the
x8 PHY uses resources from both PHY blocks: pcie3a (leader) and pcie3b
(follower) resources.

Add qcom,glymur-qmp-gen5x8-pcie-phy to describe this x8 PHY node and
document its extra required resources:
- pcie3b PHY aux clock (phy_b_aux)
- pcie3b PHY power domain
- pcie3b PHY BCR/NOCSR resets

The phy_b_aux clock is used as the 6th clock instead of pipediv2,
requiring the clock-names enum to be extended to support both
[phy_b_aux, pipediv2] options at index 5. This follows the existing
pattern used for [rchng, refgen] clocks at index 3.

- Qiang Yu

> Best regards,
> Krzysztof
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
