Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 84701C43458
	for <linux-phy@archiver.kernel.org>; Mon, 29 Jun 2026 05:14:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=O48gTKztmLtpKpm25s5FbGiNKU1GwYOSKV/t8q6y+hs=; b=TJacQvg+ARP472
	++AznpDnXOmIsetqi4y4YVaWHub4i4gtsjnWbKiY17H2Jr5lIj6/YtIdouHRTl0ff7DdGrZcvAXod
	Z/IgH5PljnPjTdNkcjODq0wdXnmeZJs11NcJZ3cNHXBvQ4Q27vdVtqmOnn1+s4FljjiB40CxOFXtH
	z5mjDOWn1yjstvx30FLPcUanc8jcuYnjrIa0s8VernkbYQjaDt9vTfyu8MmaGNtxTWfs/wzWE1XJu
	65S+KKISsBiWBFC7wYIgb+QJbdIiqw+be0dZYk9MpjgP1BRtFoIAWU063zsLVYHPfynyYbENFP1j5
	g0xmc0/+lOdYhuRra55w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1we4KO-0000000DhHt-26o7;
	Mon, 29 Jun 2026 05:14:40 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1we4KL-0000000DhHW-0Pc3
	for linux-phy@lists.infradead.org;
	Mon, 29 Jun 2026 05:14:38 +0000
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 65T4NJ0p1780974
	for <linux-phy@lists.infradead.org>; Mon, 29 Jun 2026 05:14:35 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=KGKgPSlh8J3sY+dZLERPmW5B
	9cbOydBAljh4L69/H4Q=; b=IlKRsHAchYYvo2ZAuVBGHX4cm6fgx04dp2MsbjXn
	SfZyv+Rv3me8gl9wkDL1SyrIRTFG3URJ2j0GMku6djgxzb2iw8wU0TbIulHLpwAs
	YqyqruqFx+Dn4MgGCnTdQKnsSLiJMiaND5qm78t11idigFgq+UCyogVq2xYQbfpC
	B6c3ITb5oFqay0+m+ER4oDDzFOQZGD2uIrBkWIJyvT2YFBVH91RR/NagxikWbE2N
	BXU5aN4uWCMcx3EJ9cOkTVy66fbulTF0e35+0+9mzsbHfJhSc/8x1/zwbMExnc+h
	v+iP137R683Izy1v1ueyJj0TU8txB5E0uImrJvMCk8uGgQ==
Received: from mail-dl1-f70.google.com (mail-dl1-f70.google.com [74.125.82.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4f26u74maf-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 29 Jun 2026 05:14:35 +0000 (GMT)
Received: by mail-dl1-f70.google.com with SMTP id a92af1059eb24-139871a52c2so4119054c88.1
        for <linux-phy@lists.infradead.org>; Sun, 28 Jun 2026 22:14:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1782710075; x=1783314875; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=KGKgPSlh8J3sY+dZLERPmW5B9cbOydBAljh4L69/H4Q=;
        b=gdUqqiybPlFB6i72VXqStGZ4I/TO7i3OCHGfZu4QkJIq+9l4FTvIVImWKDgjGBxUJt
         XFHXvyhmdmp1JjQYp1PBCQUYh35cejtyZQMN7Ecd4jI7kRAvBAqcXLOfdxzDjNDJaSmo
         G81GTeT3Zvuc07GsdboQYBV3tcqRPBTnKOXN5dQUmRBVwYdatS9yXBnmtZnjYsYN9qki
         AM/D9rLhxwpa9HRR7dVQOwWbQ2BWaqHqd12mMOUuLjPs8GoYTmxxTc7wzpjrE2w5cYMs
         AwBAVJD2o9mqLq5blwvSZkNNpNSdZtoXJfBYOFr/Itl9b0KK9D8JN66lglgTGOYT7rPX
         x0lQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782710075; x=1783314875;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=KGKgPSlh8J3sY+dZLERPmW5B9cbOydBAljh4L69/H4Q=;
        b=RYQYDWe16fBb3Gwd5qqij7SNHwK9pB0FZqGWqPTUz4Zm5z0n/mJnvgmxAs7ciKhyUa
         ADziSC+zmSWrlAGfmMI1lWATdie569pZGehs0ya0Ylk+AM9eMtIhPfhZ+uieaYZ5h4eW
         MIj5PirLpcJEO767oLd3EwFxX4E9UwYklWfyihcsInC5vMuYewFRwYiHJgQq3SckbDVr
         WoE7mJjgL/Z8V4BkazXQfxATPHQ0OZt1wqcskivmgyYvLvTLIc3gf/N/7u1RcdInQETl
         C8p/mCT7/rtz8JJo/LaYafPs0Bsfk1KvFhePdJdH5sRDWhZbuQxCg+Pu57vxeqOo/Z8r
         824Q==
X-Forwarded-Encrypted: i=1; AFNElJ897O1BGOSUW9PO25D1OcMuMPWHL6t0RXiOvILX0RGC+/seXvEArEGOufOPvfTav8d69hwpIJDx7h4=@lists.infradead.org
X-Gm-Message-State: AOJu0Yy5NE5l+ZD+eFXEVwfhIKguQmw98RGeNS/B3+7f2nH9OYrm0V5t
	xctnuAXTwtoUHSNWMUbNzXHqM4xsVBEqg2VhpVVTyylT0bDPfuKXLNKS8j915mby9ifWbZTPc/Z
	+xQQl4WqMXK07WISRreschw9n2s9p+7bQjVCn+ou2BOHA9w9G996dLMMh3okWd6X0OTcQ
X-Gm-Gg: AfdE7cnyvghWbbUlU9O+x4xMyHagzNDkMt6F4G+puXM977LyDrui/j881v0XZEZlWaq
	B7Lz/HCMetjENy+cne7Ad44jqJ3RonZRUop13v00lpU8FW2XDLP12pYtgo09JkVwAO5srbESVWz
	zELJOKIhBKNFy5twHCsxr854LcUyUrfMiUbpxq/vak/sBwON5f2b1FO0hu1h2ItWHBytAL+548L
	Nw1FqUbQ/epUbc9sQSOKVgIdSry6+mRhpkCCWhcrB0HOc4t4kGKWe+f5x8qIhSnckQTYvEuT+Yq
	dmVHxItVLT7KuCej8OdFZyrlSk6BULUnSkbF+Wr/9bSzp2TUmFsN/OPQJzLHwDHTouEBIsChl2X
	QeAcGpiZnmZQLHIV/Wh28r3O/JU2fVACau16Esrf8EZHM7c+AIzUhiF+Q4g==
X-Received: by 2002:a05:7022:690:b0:138:4e1:4701 with SMTP id a92af1059eb24-139db9e612dmr12798848c88.7.1782710074570;
        Sun, 28 Jun 2026 22:14:34 -0700 (PDT)
X-Received: by 2002:a05:7022:690:b0:138:4e1:4701 with SMTP id a92af1059eb24-139db9e612dmr12798831c88.7.1782710074074;
        Sun, 28 Jun 2026 22:14:34 -0700 (PDT)
Received: from hu-qianyu-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-139d8f318f3sm45044012c88.2.2026.06.28.22.14.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 28 Jun 2026 22:14:33 -0700 (PDT)
Date: Sun, 28 Jun 2026 22:14:31 -0700
From: Qiang Yu <qiang.yu@oss.qualcomm.com>
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH RFC v4 1/9] dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy:
 Add glymur-qmp-gen5x8-pcie-phy compatible
Message-ID: <akH/N/ZwnSD5BkIj@hu-qianyu-lv.qualcomm.com>
References: <20260518-link_mode_0519-v4-0-269cd73cc5d1@oss.qualcomm.com>
 <20260518-link_mode_0519-v4-1-269cd73cc5d1@oss.qualcomm.com>
 <5dffdbe0-cbb9-429e-ba15-0afdf6f20fba@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <5dffdbe0-cbb9-429e-ba15-0afdf6f20fba@oss.qualcomm.com>
X-Proofpoint-Spam-Info: AW1haW4tMjYwNjI5MDA0MiBTYWx0ZWRfX42ClDohKr0DC
 qPVQIoFQwJ8qSd/D12C0NjrjD0jLNeTfnGxt44Ix/tb73yoFnVWXh26Re6CRMhnExVMiRlFca6v
 IWJ8Z/rEQdD/GljUyhu6qyeU/h3d7CU=
X-Authority-Analysis: v=2.4 cv=ftnsol4f c=1 sm=1 tr=0 ts=6a41ff3b cx=c_pps
 a=SvEPeNj+VMjHSW//kvnxuw==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=kj9zAlcOel0A:10 a=FelO9ux0wxsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=ZpdpYltYx_vBUK5n70dp:22
 a=EUspDBNiAAAA:8 a=-NWG6JK0s8FJMDO2LyAA:9 a=CjuIK1q_8ugA:10
 a=Kq8ClHjjuc5pcCNDwlU0:22
X-Proofpoint-GUID: jglCXXSqwp2uCx2fvPEn-icS-CGw5vOR
X-Proofpoint-ORIG-GUID: jglCXXSqwp2uCx2fvPEn-icS-CGw5vOR
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNjI5MDA0MiBTYWx0ZWRfXxE54azzmZHPL
 oUYI/6WaFzX0Wb/rUI6X8fw0rrUk9S4uDGgs9kXqt28hSO75TaMtGxw6+hDpDYMUlqyrP1wNrn5
 c8+UR1mVL5TcoOccat/Agzwb8Q5Dh3Crfp0FqeTWPxyGaPP11CdKCbnuFKdtEnd8LPaafJcCqh0
 hwaMD2NVV04cedSk/BClDviXSmX5SEuWLjMojkCJeVyHa2fXGl8npyF8OXv/WS5CjWtWh7r51hW
 UGA3jeglHa0K8JNbY7XoyQV/eCRH2fvVTvmEA4IuZAaG8qK5n9Wl3eK269ZrlKTNvwGDcr63eaa
 +GjzkS5/QBjH29DFk10PPd8va402Yyc6hCTMutfDhD/wqF0N4MRz5EXaI1MnD2weDyzGTlKcqVo
 CzVqJLK/vbrxCznbAEkl1EAKkEZgX1tK29LAwlOqFnJiMgcddNLCzixbUX8OYLChKJSNBOYvkJ4
 zxueAheS9szX09RtK5A==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-06-29_01,2026-06-26_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 malwarescore=0 suspectscore=0 lowpriorityscore=0 impostorscore=0
 priorityscore=1501 adultscore=0 bulkscore=0 clxscore=1015 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2606290042
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260628_221437_258360_5742FC1E 
X-CRM114-Status: GOOD (  21.92  )
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

On Tue, Jun 16, 2026 at 04:03:39PM +0200, Konrad Dybcio wrote:
> On 5/19/26 7:47 AM, Qiang Yu wrote:
> > The Glymur SoC uses a single PCIe Gen5 PHY hardware block for the
> > PCIe3a/PCIe3b controllers. This block supports two link modes:
> > 
> > 1. x4+x4: two 4-lane PHY instances are exposed
> > 2. x8: one 8-lane PHY instance is exposed
> > 
> > Add qcom,glymur-qmp-gen5x8-pcie-phy as a multi-mode PHY compatible and
> > document the new link-mode property, which selects the active link mode
> > via a TCSR syscon register.
> > 
> > Document the required clocks, resets, and power-domains for both PHY
> > instances active in x8 mode. Use #phy-cells = <1> for this compatible,
> > where the cell value is the PHY index within the active link mode.
> > 
> > Signed-off-by: Qiang Yu <qiang.yu@oss.qualcomm.com>
> > ---
> 
> [...]
> 
> > @@ -68,20 +69,29 @@ properties:
> >        - const: ref
> >        - enum: [rchng, refgen]
> >        - const: pipe
> > -      - const: pipediv2
> > +      - enum: [pipediv2, phy_b_aux]
> 
> I'm surprised to learn 3A doesnm'doesn't have a PIPE_DIV2 clk.. it does have
> a non-div2 one though.
> 
> Seems like it's specifically not the case on Hamoa and Makena, so perhaps
> it's better for maintainability if the Glymur list was separate
>
Do you mean splitting Glymur out into a separate YAML file for the PCIe3
PHY? I'll add a new file if that's preferred and Krzysztof is on board.

- Qiang Yu

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
