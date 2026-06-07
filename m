Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D2BB8CD8C90
	for <linux-phy@archiver.kernel.org>; Sun,  7 Jun 2026 21:25:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OPiGNYBnTJksnL8cMEnisZnk1oVunAvP3uQdakVP7Pc=; b=VwBXjwcyhgtT8d
	UAmiaTCxnZy5HplMzU1cR3ZtoK6LM6h9JkyyuFx0On93mAUCKEsKehN6UW2f+2SJH8UBJEyM1ShmL
	Cs/JRabOTMFB/TJFhgg0cQVjZkb09XvbuWX3i2xb16b6ubEPi9JfzPIsgRq+0P5tDT0rxQdeZNreA
	HNyZOOdUBV1en3wU1cK2iR9nT+Jzi3eNT1FhcPUiw0B9nxfBI8jndEFx4TXi1LvrSnU7WX0wBIhrE
	QzSV4ZxtgzXPOqopjdLjFe+WJilychIQQKyTlg8DP177gMZb+KOUqGCn2nSUYYMF4XT/ysyYKTON2
	m6fmY62/i9zUZvEJUs5A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wWKzb-00000002VCC-0B34;
	Sun, 07 Jun 2026 21:25:15 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wWKzX-00000002VBl-35d7
	for linux-phy@lists.infradead.org;
	Sun, 07 Jun 2026 21:25:13 +0000
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 657ElMGQ888283
	for <linux-phy@lists.infradead.org>; Sun, 7 Jun 2026 21:25:10 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=ozNLs3FUHY1eJZG59vKhqJiZ
	Z3qQ6l8PY0jEa/SkSdo=; b=dGL3uKVuzuQIgPMrisOPESGgRTZ5gaziUgrAbWJl
	L9IgzWqN+i99OQHGvHbP8VJ8qkUa0+iJ6jHSPMmJUeZJpET6v1GeemKXA8hagB2v
	MjuEFm9ibp9N0Wc5uvVYWKIy8pkuTb9bROEODNlWTOQx95GeiRovo+seaNrSGti9
	SgL8vzAE0ttswpGRoU2BrQobYqvaIn6SI98NqkCgY99anYLYmTvy8dzv997akvxY
	cimLlxwhIFKDkCT2v3ikAOfD56KyRN2gokVDkhpX3kP6p1utDepdhwXB2hnj0NBV
	6q5vytgW4PHQx3k7Kg+5REb+bzq6YqjpbWB7sQ97UPV8Rw==
Received: from mail-vk1-f199.google.com (mail-vk1-f199.google.com [209.85.221.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4emaj4w4d3-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Sun, 07 Jun 2026 21:25:09 +0000 (GMT)
Received: by mail-vk1-f199.google.com with SMTP id 71dfb90a1353d-59f0ad4461eso6373816e0c.2
        for <linux-phy@lists.infradead.org>; Sun, 07 Jun 2026 14:25:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1780867509; x=1781472309; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=ozNLs3FUHY1eJZG59vKhqJiZZ3qQ6l8PY0jEa/SkSdo=;
        b=b0dC7CZD7w43hb+OYqnMR7JEoPwifVMT4o74zCmig7nTVmGFMCm+X5u1VFOl6UESFA
         IqO3Y3bD98m3ZhbaeUgVm2sw9Op0XWedcTT5LJniCycnDCCl7Dn0yyUXPUP8uQKzR3I3
         vHIwa1gin8nPdiza1tJj8B7uSMdHKvbkTij99jMtc/U2qTaxb5Z156TiykqpOXDvoPUQ
         7gqQdBllx4InkP5OwrzJQg3XU5Zpr0EgQfnh05MkMQKWBWltmu3YXLZnV8nKegStE5Gw
         lnH3GqAsfd6gRudiFq4owR8j+aeDibmo3fQItjbAJNKzM4EQvfZb1zhtzstPJ3y7uLjm
         tINQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780867509; x=1781472309;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ozNLs3FUHY1eJZG59vKhqJiZZ3qQ6l8PY0jEa/SkSdo=;
        b=ehF32u00PhIjPI00LDDBEHn7iFNO0BcA7wWbY6L7E7vI4dieY1Qr6D/Fyv+3S8cQBQ
         Ojd7p5oAwqkmK+Y3TZaJc8U8fY6yKSZUto7x20oFlgWoLfoenfLJEa2e9NHLuiQckuLe
         6z6W8UCiQDpnGJuAHyYDqAxUWFUFbIFRvtwKihvoWJSmNteIVhdkA3boB7XxzCcq6A88
         NxwBkhAinxsMuBrnSrRpmoBK37rD9iE8mXJvQ7MHvcOMUwwTnh/4uIZV2WWxi+E1zg/X
         cazOTh5iPJywnxoIXoLp2yEqTP5Ake63DqCBHCJ1yDyptr3vl1wqhdW+g0eRsNB+1/Ra
         jsNQ==
X-Forwarded-Encrypted: i=1; AFNElJ+kXL6mKRdxWL3Enr70vLm6WAMprlwsiLCEDo59sxmK7i5pku3DPPNhx1vou++2ookDsYCOU/HyW7w=@lists.infradead.org
X-Gm-Message-State: AOJu0YwOoIxNK+frXvlE/cavLsV6/NaHxqMieTytynaGq2x02Eo0Pl0j
	DXcXtyjOVA4Upm0DJxDjOZKvPGL8pny6Zra8Tf+0RhoTHgUpG4EZSTIK1+DgcF79QWZyK9euho0
	Wr1xk33sCsCS3KZzIDASXlVWYB383bnQRiYTA1qF56BafMfI9O4qqkEXMDD25rrYwA/lh
X-Gm-Gg: Acq92OEJqbCFPBJtqLG7IlGJFIVM7PekPgsELSQcPjwrCaBxqafTTzgLtmSY4QgbyON
	TQgggioRfsUE8oHh0Be2tsYLgDolifZEW97PPnGXZnr/JBiwQNIMQ/liyetkbnHda1zO1fKl+CK
	kB6CojpChtOvWcjzPBqxAUl77Q8XGrqVZCswzIQxlc11Qp/4ISAa0PkefJG/t8utFuX+8poDCAi
	vuo7ZfK+aOtgnUnj3ESz2xB7kyK+hJEZxYyCRE0pmpvmvAOnKKuZpuy/+FiNNAn5ExuJWRUdCvA
	cmw0aq4hKlEQoFR58M3/+WqDAc8zRI34G8F8rZvE1ZymR885XL1EPJJ2/WI9H8xbV5SDF4hehNA
	9XU7dsfXoZVwyq6Wu9M/9lBJk3iBQJwsL7ja9DDP5KMRIsACgngaoVv8R+yDgWMzkMzQ9vDkNRO
	E/4uObUTX5AVff4skmhdTiAww7ldOYOd8+NEbdYzuc3pypag==
X-Received: by 2002:a05:6102:cc8:b0:62f:3abe:907f with SMTP id ada2fe7eead31-6feed1adbffmr7232868137.4.1780867509191;
        Sun, 07 Jun 2026 14:25:09 -0700 (PDT)
X-Received: by 2002:a05:6102:cc8:b0:62f:3abe:907f with SMTP id ada2fe7eead31-6feed1adbffmr7232858137.4.1780867508806;
        Sun, 07 Jun 2026 14:25:08 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5aa7b9868afsm3353904e87.59.2026.06.07.14.25.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 07 Jun 2026 14:25:06 -0700 (PDT)
Date: Mon, 8 Jun 2026 00:25:03 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Matthew Leung <matthew.leung@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Subject: Re: [PATCH v2 00/10] phy: qcom: qmp-pcie: Add PCIe PHY support for
 Hawi
Message-ID: <egojnbup5igcre6ccegojsdrvtokwfoccqhwmfxkoy5ukvuxvj@ailtbrgrgocs>
References: <20260604-hawi-phy-pcie-v2-0-be908d3560db@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260604-hawi-phy-pcie-v2-0-be908d3560db@oss.qualcomm.com>
X-Proofpoint-ORIG-GUID: EjEuaOTAvILRf9gjAj96Jzpro5K3eW3R
X-Proofpoint-GUID: EjEuaOTAvILRf9gjAj96Jzpro5K3eW3R
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNjA3MDIxNiBTYWx0ZWRfX/718pBvmJ7pc
 h9AceorYVDJ6HnuNQPlKBL8U+NDuiqP+6C+ty8RwKMzgOBW3vl8TaVA5TTnAccqgj75M6E4Rp8l
 mJ0Sf5Bgcn3qbvbYx23tYGIFCG/cCnbx9FS4sfdFjz7kqktSoVK0b1+s4FxD+PH/Owg8OX3kNVA
 hhd/eEgHdeS7uA9wEdmxsZbfV2cWwjXXKitVpP0JJLTNiK9DrVvCeWVYoeRLgcb0K+qrX9ZBduc
 ASLnYYGNYTekBy5gCv90XJ9dIlQpX+AuqC5SyXyGCXu652ZbJtPKI6FJmKLdOKf3QyWS6zwsSzQ
 unSrCub5XJgr2fa9Vv6aU3Mv1VHonch+uK9s306/YwbqVPLp2MRGAtSa3pSokrvL/HqsWkp7L++
 DK70+ACnqs6p2At/nojNqIHXX22Xl4huOJ1njge3bb90SjZ9mEN8kIDcabLPTvPEoWiN43yjWin
 qYQ+rzwKq4QlklYlr6g==
X-Authority-Analysis: v=2.4 cv=TLh1jVla c=1 sm=1 tr=0 ts=6a25e1b5 cx=c_pps
 a=+D9SDfe9YZWTjADjLiQY5g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=FelO9ux0wxsA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=_glEPmIy2e8OvE2BGh3C:22 a=VwQbUJbxAAAA:8
 a=EUspDBNiAAAA:8 a=bC-a23v3AAAA:8 a=JfrnYn6hAAAA:8 a=KKAkSRfTAAAA:8
 a=ju8jlmDeA_GJ2jklb9wA:9 a=CjuIK1q_8ugA:10 a=vmgOmaN-Xu0dpDh8OwbV:22
 a=FO4_E8m0qiDe52t0p3_H:22 a=1CNFftbPRP8L7MoqJWF3:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-06-07_04,2026-06-05_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 suspectscore=0 spamscore=0 adultscore=0 clxscore=1015
 phishscore=0 malwarescore=0 impostorscore=0 bulkscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2605210000 definitions=main-2606070216
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260607_142511_901652_4B5EF5EC 
X-CRM114-Status: GOOD (  23.70  )
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

On Thu, Jun 04, 2026 at 01:32:54AM +0000, Matthew Leung wrote:
> This series adds QMP PCIe PHY support for the Qualcomm Hawi SoC. The Hawi
> platform features two PCIe PHY configurations: Gen3 x2 and Gen4 x1.
> 
> The Gen3 x2 PHY uses v10 register definitions, while the Gen4 x1 PHY uses
> v10.60 register definitions.
> 
> The series adds:
> - device tree bindings (patch 1)
> - v10 register offset headers (patches 2-5)
> - v10.60 register offset headers (patches 6-9)
> - driver support with PHY initialization tables for both configurations
>   (patch 10)
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
> Matthew Leung (10):
>       dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy: Add Hawi compatibles
>       phy: qcom-qmp: qserdes-com: Add v10 register offsets
>       phy: qcom-qmp: qserdes-txrx: Add v10 register offsets
>       phy: qcom-qmp: pcs: Add v10 register offsets
>       phy: qcom-qmp: pcs-pcie: Add v10 register offsets

Squash these 4 patches.

>       phy: qcom-qmp: qserdes-com: Add v10.60 register offsets
>       phy: qcom-qmp: qserdes-txrx: Add v10.60 register offsets
>       phy: qcom-qmp: pcs: Add v10.60 register offsets
>       phy: qcom-qmp: pcs-pcie: Add v10.60 register offsets

And these 4

>       phy: qcom: qmp-pcie: Add QMP PCIe PHY support for Hawi
> 
>  .../bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml   |   6 +
>  drivers/phy/qualcomm/phy-qcom-qmp-pcie.c           | 382 +++++++++++++++++++++
>  drivers/phy/qualcomm/phy-qcom-qmp-pcs-pcie-v10.h   |  18 +
>  .../phy/qualcomm/phy-qcom-qmp-pcs-pcie-v10_60.h    |  26 ++
>  drivers/phy/qualcomm/phy-qcom-qmp-pcs-v10.h        |  22 ++
>  drivers/phy/qualcomm/phy-qcom-qmp-pcs-v10_60.h     |  23 ++
>  .../phy/qualcomm/phy-qcom-qmp-qserdes-com-v10.h    |  49 +++
>  .../phy/qualcomm/phy-qcom-qmp-qserdes-com-v10_60.h |  55 +++
>  .../phy/qualcomm/phy-qcom-qmp-qserdes-txrx-v10.h   |  47 +++
>  .../qualcomm/phy-qcom-qmp-qserdes-txrx-v10_60.h    | 109 ++++++
>  drivers/phy/qualcomm/phy-qcom-qmp.h                |  10 +
>  11 files changed, 747 insertions(+)
> ---
> base-commit: e43ffb69e0438cddd72aaa30898b4dc446f664f8
> change-id: 20260506-hawi-phy-pcie-283933b4113e
> 
> Best regards,
> --  
> Matthew Leung <matthew.leung@oss.qualcomm.com>
> 
> 
> -- 
> linux-phy mailing list
> linux-phy@lists.infradead.org
> https://lists.infradead.org/mailman/listinfo/linux-phy

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
