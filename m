Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 77E2EC3601E
	for <linux-phy@archiver.kernel.org>; Thu, 10 Apr 2025 03:23:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+aOi+f9l9nQ8WSqWEVh0KlmtM/9WZmIqt0OkpKsZA2E=; b=1MqHPVYia4UmFk
	485wEZlASfnJShrpndPLbeTA1AocGUz0wzbEvLJaSPqVuiCYsgxZNlBZMiDTg+wn9R2A7eH6jWD03
	7suwoN4xpuJtOv9doOir0kAd2vc0BbSzcp2C3upfPUEBriSFC3xyKoe3b0KFUKTVodH/A3ElUfBCG
	x4GvEwdsBgTl/aAEsil5QHZaLwQUi1G715nH1D2mUAh2+ayEKfc4Jyg1s1Mjs8ccaEER294jsQRes
	QE518FgA7GIv7QksCpftGdepw2KFfUOybe3MHYNh0fGpkSa8QM1mCbMGeMheJph67N7zv846pEJey
	4ndI/8uVNosXAl9/Za4w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u2iW1-000000097Hg-0Haz;
	Thu, 10 Apr 2025 03:23:45 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u2iUX-0000000977V-3yZV
	for linux-phy@lists.infradead.org;
	Thu, 10 Apr 2025 03:22:15 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 539HE1qx011629
	for <linux-phy@lists.infradead.org>; Thu, 10 Apr 2025 03:22:13 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=81XbHVpgrvitz6FNaWdfiNUW
	5qqRcwftat7ZNunOoP0=; b=Hm+4Hm9+MxW1KtDwMhT/6OhbK7mrnDOmv1NvwcGw
	B2fQ+wp+yeeLWv9RWE01AP5Z9o+cBIaC+w1lgrhx7utiaqo+Y8OoIoUPmUFLyV47
	/rJxZVUtWvcWvY4A1/uGe5XoVhcgdRl42VTStAxpK/DOyh1g6C/pWzJz1aCtOdQY
	u/aa1P+ev25knKzNp792iKQD8qxKEXTQnn0JSf9rMmhcoo+YXqrSwga0R5yf0Uce
	+mDtpimJDOQDCyhaeOIRb6QkCcyhydEEPY29eTGrgzxd1K2zY3vWEmeT27wRwWq4
	2PoqrztysW1lb4fgV719dQ4FrPuNXht/f5i4RkTFxmol2A==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45twftn9wg-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 10 Apr 2025 03:22:13 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-6e91d8a7183so5239576d6.0
        for <linux-phy@lists.infradead.org>; Wed, 09 Apr 2025 20:22:13 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744255332; x=1744860132;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=81XbHVpgrvitz6FNaWdfiNUW5qqRcwftat7ZNunOoP0=;
        b=bgUU1ylV1/G34CNQF+qyP0/6rtBm60lz/uKYk0qkm5tu/Jk8Z9d8l8fxUC0zEC3VJ5
         bnTvri69Yj5lidN+2NqUNDb2x4yJDL/OYZ2xyFr1/+T70m2+Kwz6uwgsYR2NHZ6krudd
         N2RJG5K9TOgEW+jgbvwS/7nDmW9LD75gJ8R2xFfIDAtj5yGrBZahX4Jbib3eTiL3PN57
         txuBgK9ezjvScOeT3gwbZMzJzobgf6l/+E84K4oJQqktkC0AV07f7rhIMTkiAB5xylnd
         jmW/XofxcuOVRd2l6fxW1Zf8F0Uf4wdZLELsvDtS7f39n2NMq26cW6O/CSA9VbazEYL+
         33CQ==
X-Forwarded-Encrypted: i=1; AJvYcCUkpTHwJ5OTWotn3KM0a9GEw1qO40kggPriFrqU7fRA4rlNZ9sGSMkTpWc6R1CXkJhbnRj/ydcgAOs=@lists.infradead.org
X-Gm-Message-State: AOJu0YwIqwpXnKvGYs7X6vGMGyxVK70Puw6ELnMFR0FjLfzfidgbpMCR
	uHwA/cYF4aSH6vnDaojJaOTElPUDFvtPteTu3BiCfk4Aapyaa3Dg60gU+6h+RMjHa9eMfOT+Zrd
	Jt2pYGjogIRcKeUNwoGp9YXCPO8YvpP3MB2VrFqdyPT8bih/XUVdrC0Kk+X/nMtZ6
X-Gm-Gg: ASbGncs+GWkELxh2m8Ls+qGSO63FnG7gQZSijYZ4LzCh+sR7t4LdNqyaxK4Yrw7FRbh
	VkMj8iiApiFLtRYtgOjhqVAJ+u0N783C8qoRM0fgcVu8GtD/drVdgYcsa6wFG9tSKTEuzBjwRvN
	2ZQlLRl5OzaTg5Dway2gAEBpgwuH6nnRJVOT53M8aMWfYG16iWlAJ/oshUS4xOIAcI33j+bqfPC
	vKzHjHnOJOz6FkpdiNU+YMv5qWv0GWMa8Sj8ympcC9nfOyygreydWKAOswoDEBlSe+1spab9EUB
	IwTPgIyK4VxVXCNhkqz14qZ4gPWw6/cys3FRTj/UuoJ7qp/grbpKSoGlU3hT9HiFhluLH5TWlKg
	=
X-Received: by 2002:a05:6214:2121:b0:6d3:fa03:23f1 with SMTP id 6a1803df08f44-6f0e5a3ed53mr16849946d6.13.1744255332171;
        Wed, 09 Apr 2025 20:22:12 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHbM59zItmQio/3OiVDMhDZ3DGNC7CjNZAzhW3qfvOXOAZa1pf3Fb3OxUrU3srWDJ8Jd3T2Yg==
X-Received: by 2002:a05:6214:2121:b0:6d3:fa03:23f1 with SMTP id 6a1803df08f44-6f0e5a3ed53mr16849756d6.13.1744255331836;
        Wed, 09 Apr 2025 20:22:11 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54d3d510076sm26342e87.175.2025.04.09.20.22.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 09 Apr 2025 20:22:09 -0700 (PDT)
Date: Thu, 10 Apr 2025 06:22:06 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Melody Olvera <melody.olvera@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>
Subject: Re: [PATCH v4 00/10] phy: qcom: Introduce USB support for SM8750
Message-ID: <okpaydjmwdnrjb7olilkzfp2l3aw7pik27ac45sc4joasq4ioc@eonquhbz2sxh>
References: <20250409-sm8750_usb_master-v4-0-6ec621c98be6@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250409-sm8750_usb_master-v4-0-6ec621c98be6@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=B5+50PtM c=1 sm=1 tr=0 ts=67f73965 cx=c_pps a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10 a=XR8D0OoHHMoA:10 a=VwQbUJbxAAAA:8 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8 a=f-ECfMwH9_x_JKpxBE4A:9 a=CjuIK1q_8ugA:10
 a=pJ04lnu7RYOZP9TFuWaZ:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: 2T5aW1tPuYofzrtKvgC24cdj3ep31JqD
X-Proofpoint-ORIG-GUID: 2T5aW1tPuYofzrtKvgC24cdj3ep31JqD
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-04-09_06,2025-04-08_04,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxlogscore=999
 suspectscore=0 malwarescore=0 bulkscore=0 phishscore=0 spamscore=0
 priorityscore=1501 adultscore=0 impostorscore=0 lowpriorityscore=0
 mlxscore=0 clxscore=1015 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2504100023
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250409_202213_992185_4598C7B2 
X-CRM114-Status: GOOD (  23.48  )
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

On Wed, Apr 09, 2025 at 10:48:11AM -0700, Melody Olvera wrote:
> Add support for the PHYs and controllers used for USB on SM8750 SoCs.
> 
> ---
> Changes in v4:
> - Made some fixups to the M31 eUSB2 driver

Which fixups?

> - Moved TCSR refclk_en to the QMP PHY DT node
> - Link to v3: https://lore.kernel.org/r/20250324-sm8750_usb_master-v3-0-13e096dc88fd@quicinc.com
> 
> Changes in v3:
> - Split platform DTs into separate commits.
> - Fixed up M31 eUSB2 PHY driver with feedback received.
> - Reordered DT properties based on feedback.
> - Rewrote commit message for enabling EUSB driver.
> - Link to v2: https://lore.kernel.org/r/20250304-sm8750_usb_master-v2-0-a698a2e68e06@quicinc.com
> 
> Changes in v2:
> - Added new QMP PHY register definitions for v8 based QMP phys.
> - Made changes to clean up some code in the M31 eUSB2 PHY driver based
> on feedback received.
> - Added bulk regulator operations in M31 eUSB2 PHY, to ensure that
> both the vdd and vdda12 regulators are properly voted for.
> - Removed external references to other dt bindings in M31 example for
> the DT bindings change.
> - Split DT patches between SoC and plaform changes, as well as the
> PHY subsystem Kconfig changes when introducing the M31 eUSB2 PHY.
> - Added orientation switch and port definitions in the DT changes.EDITME: describe what is new in this series revision.
> - Link to v1: https://lore.kernel.org/r/20250113-sm8750_usb_master-v1-0-09afe1dc2524@quicinc.com
> 
> ---
> Melody Olvera (1):
>       arm64: defconfig: Add M31 eUSB2 PHY config for SM8750
> 
> Wesley Cheng (9):
>       dt-bindings: phy: qcom,sc8280xp-qmp-usb43dp-phy: Add SM8750 to QMP PHY
>       dt-bindings: phy: Add the M31 based eUSB2 PHY bindings
>       dt-bindings: usb: qcom,dwc3: Add SM8750 compatible
>       phy: qcom: qmp-combo: Add new PHY sequences for SM8750
>       phy: qcom: Update description for QCOM based eUSB2 repeater
>       phy: qcom: Add M31 based eUSB2 PHY driver
>       arm64: dts: qcom: sm8750: Add USB support to SM8750 SoCs
>       arm64: dts: qcom: sm8750: Add USB support for SM8750 MTP platform
>       arm64: dts: qcom: sm8750: Add USB support for SM8750 QRD platform
> 
>  .../bindings/phy/qcom,m31-eusb2-phy.yaml           |  79 +++++
>  .../phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml         |   2 +
>  .../devicetree/bindings/usb/qcom,dwc3.yaml         |   3 +
>  arch/arm64/boot/dts/qcom/sm8750-mtp.dts            |  24 ++
>  arch/arm64/boot/dts/qcom/sm8750-qrd.dts            |  24 ++
>  arch/arm64/boot/dts/qcom/sm8750.dtsi               | 164 +++++++++++
>  arch/arm64/configs/defconfig                       |   1 +
>  drivers/phy/qualcomm/Kconfig                       |  16 +-
>  drivers/phy/qualcomm/Makefile                      |   1 +
>  drivers/phy/qualcomm/phy-qcom-m31-eusb2.c          | 325 +++++++++++++++++++++
>  drivers/phy/qualcomm/phy-qcom-qmp-combo.c          | 223 +++++++++++++-
>  drivers/phy/qualcomm/phy-qcom-qmp-pcs-usb-v8.h     |  38 +++
>  drivers/phy/qualcomm/phy-qcom-qmp-pcs-v8.h         |  32 ++
>  drivers/phy/qualcomm/phy-qcom-qmp-qserdes-com-v8.h |  64 ++++
>  .../phy/qualcomm/phy-qcom-qmp-qserdes-txrx-v8.h    |  68 +++++
>  drivers/phy/qualcomm/phy-qcom-qmp.h                |   5 +
>  16 files changed, 1065 insertions(+), 4 deletions(-)
> ---
> base-commit: 46086739de22d72319e37c37a134d32db52e1c5c
> change-id: 20241223-sm8750_usb_master-f27aed7f6d40
> 
> Best regards,
> -- 
> Melody Olvera <melody.olvera@oss.qualcomm.com>
> 

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
