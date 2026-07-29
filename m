Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C76D7C54F51
	for <linux-phy@archiver.kernel.org>; Wed, 29 Jul 2026 09:11:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bQn5uKQ6n0P48v33rDfb+lbpi2k33iJMYQFsM+Jz+TI=; b=vRARG/mrUNUsxY
	aoDZxX608IZAFFnu4DYvNklzc6xYJgKUra54o/sfWbqRybU5mhDeqaHPWh4fkThs9pk8oq16rwz7r
	IDxCBv+g1XL56ayqtKFJMQBftfRM0z7VuhDuLS3Qtjfs52pEE4BrLQZg/tfc3kYMur7zEFS/2rs1y
	raoF7Hgu8tDt4rdWtKJzZh9MLL9BkqYLSF2DLkVPBouTgnU4XNThN8feqJHf0cy7M4JysQTDox/CY
	RYT7Il3wNpLFORKJOaZzdbn2vWo8Hjx1YrsfuxlYqNtTHstHXVV+1g83dVGaqdDi0lmxOAKm98Q5V
	hp6xWqZZOVRvRYE2lzfw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wp0Jn-00000007KPQ-1Hqe;
	Wed, 29 Jul 2026 09:11:15 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wp0Jk-00000007KP2-0fhC
	for linux-phy@lists.infradead.org;
	Wed, 29 Jul 2026 09:11:13 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 66T7fWVY1054070
	for <linux-phy@lists.infradead.org>; Wed, 29 Jul 2026 09:11:10 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=wXnburUlupRiHpSJ4CDRreFD
	5mzaQY+gxtna4BDSfRo=; b=olgukxVmAsWZ02LcXQwlyT8bYAehDVFa3R7kbCpe
	DakOUQidq6ip4mUR00onnJBM4zWYIk5wcpYS1Iw4gQjhjvgu5ndOyN7NMeEUVXji
	B4Mqf8T4+ZSuwcQQlfOcEXCYLcZtP+HyHLNrx93ael2OvAhZVYr9lG1lMlj6Yylj
	VtSRZ8ia63bA5kpjFI5ZbmKSfSt26FQvf/7un5Cm2vxsR+3ANwMdX6sUXGCKe1Ir
	6aBcJO9ZBNaaOhxueO4fjxX2x4qD6nQqqaDFBOSDMvuX00rqJLtKs9AF8nV1R2W/
	pw/uISdOUS2rbhY/+Gsi2YyWBQhAo+8TY7O7aBGMGhW97w==
Received: from mail-pj1-f70.google.com (mail-pj1-f70.google.com [209.85.216.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4fqa3014cq-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 29 Jul 2026 09:11:10 +0000 (GMT)
Received: by mail-pj1-f70.google.com with SMTP id 98e67ed59e1d1-388b404eaa4so1055205a91.0
        for <linux-phy@lists.infradead.org>; Wed, 29 Jul 2026 02:11:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1785316270; x=1785921070; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=wXnburUlupRiHpSJ4CDRreFD5mzaQY+gxtna4BDSfRo=;
        b=L1QYUvkyLOlwr73Bj4jWHGYzbtiTuGfR9XOctxmepDfn9bNLnbOrqMFa6EAU3rToIn
         UNqkRIyhOQx0o4f8BT1f5HwHpdF512pmqi1iVOatYdJUdiM46h7dj6pcrz9Qk4DRkv1v
         ORsoJWT13SrOgPHDZkQagPRsQdxLoZjIIZi+uab748nBC0wDt+swzKpnLHNL4G4imli6
         2q3nh/TxD5O+qeEDK7EpkyJurSApk+N6D3kxU6UwT+UeDkSjp1BTTpceB/jfw/EONnvp
         +eCCp99UdTqdlV1ZxnRcvsnP0xQVf1Rp+t4F8tk8oUxbvtpW2QCK5Hwbivrp8Z5cXcxC
         Ou4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1785316270; x=1785921070;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=wXnburUlupRiHpSJ4CDRreFD5mzaQY+gxtna4BDSfRo=;
        b=Of2AYehmxQm9PFxCZunb6j5ov1Rfz/7ScpAOpzjOsMIWoFmBglDkQ4m41zsXmPqrBe
         moEMpCrWomB+xF/1SeyHQr7xlgYVLZ88IJ3Nksdcx6aYPNRTohfneuQ1T+DHpjzb8QBD
         GC+DOLooja7hP+EJocM8XIefCOxRFLyhuoyEI/jHJ3LHi2yhrUvgFCZBK4e4Ol0Zwax+
         JI4tgD/0//lx9yBNEpjvw/FbynjO8t15nhDL5TlSIAmteizc5jHhrTGeAJz4jpS6qQl1
         oorjvU61MM4mEHqn9FNJylVdsmKARZcn6BD4r2ALfdhJzgSB67ou8yGxpmjWH9wBHayL
         Et+w==
X-Forwarded-Encrypted: i=1; AHgh+RrIJCVq50WPiYtKQ5j6zBEcG2yrpqBOH3ij6ti2717GW6WKJc037OSp/qYqoFRIXivSPTKMr3F6W94=@lists.infradead.org
X-Gm-Message-State: AOJu0YzgGvgGwPCnFGwtwvYpygxPvq2aa07lUBGLxPz34cWcZv85eRdY
	VULgtwdYUH0QmlPw8WO0xT/UiEOgujziM/dgRRl9xWJxo49HVzj3+5muMcwNLJmRLsTAy4AaCO2
	iIC+A80otNGU8xkxODEzIuxm4C3A6tm7Y1qfN9/xQjFcNp9/pzhzfwrdgV88a0qrmGbGZ
X-Gm-Gg: AR+sD120Ll3Kvgp15gZZG32fnF0CGeeseUun7FBWHwoFwHoh8T3CnLAH4RYjJNvU3mR
	aJlz5muTyUzLwhaEoZUJrvHSiK73odGhDP2jch3XtjlCUBynWeZvLUirsX4STptfiDkDCzp676h
	yEIFoXcTFi+ZHh4qAkM52cNoBoZNDStQ1O50wjbV71v/Raf+jlwTHdFxBq7qJu1iuZQ2xOQ+zzt
	rsLHBSMkfOTqrVKlH4UWq3iEiDwt7nP64BSuvOjMo78oTdPuHcqy+xjGe2PXciG9HUHHQbuF8m9
	dAokJTkpNMPvW5URIsGWqH8xtf0oTv3w6S3aVgKjEQg6SeUHWZzgVZ2ClKvtU6ocHC7TCRZ2g6c
	Vy4Rj8IItsQ5+VI/JCCVqGJ037s9Q1R7JwSyf2l3xn+OSzKs=
X-Received: by 2002:a17:90b:17cb:b0:37f:9ce2:348f with SMTP id 98e67ed59e1d1-38f6a5430c5mr5909557a91.32.1785316269606;
        Wed, 29 Jul 2026 02:11:09 -0700 (PDT)
X-Received: by 2002:a17:90b:17cb:b0:37f:9ce2:348f with SMTP id 98e67ed59e1d1-38f6a5430c5mr5909528a91.32.1785316269144;
        Wed, 29 Jul 2026 02:11:09 -0700 (PDT)
Received: from hu-qianyu-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-38f7f0edc1csm1058184a91.3.2026.07.29.02.11.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 29 Jul 2026 02:11:08 -0700 (PDT)
Date: Wed, 29 Jul 2026 02:11:06 -0700
From: Qiang Yu <qiang.yu@oss.qualcomm.com>
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH v7 4/6] arm64: dts: qcom: glymur-crd: Add PHY supplies
 for pcie3_phy
Message-ID: <amnDqhTpMffP9M1w@hu-qianyu-lv.qualcomm.com>
References: <20260724-glymur_linkmode_0724-v7-0-65c8469c6b65@oss.qualcomm.com>
 <20260724-glymur_linkmode_0724-v7-4-65c8469c6b65@oss.qualcomm.com>
 <74907d0a-cf14-43b6-bcfb-8c283926a820@oss.qualcomm.com>
 <ammhm1mnHhn2okgJ@hu-qianyu-lv.qualcomm.com>
 <2091d5bf-8c76-479b-98fd-fc75b3adf644@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <2091d5bf-8c76-479b-98fd-fc75b3adf644@oss.qualcomm.com>
X-Proofpoint-GUID: UFVFhOQcR4HXAcllJLI3qEEQHVWVxB2c
X-Authority-Analysis: v=2.4 cv=EME2FVZC c=1 sm=1 tr=0 ts=6a69c3ae cx=c_pps
 a=0uOsjrqzRL749jD1oC5vDA==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=kj9zAlcOel0A:10 a=RAioF0-LDSMA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yx91gb_oNiZeI1HMLzn7:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=iYY4eBxCTIKzZHblZ3kA:9 a=CjuIK1q_8ugA:10
 a=mQ_c8vxmzFEMiUWkPHU9:22
X-Proofpoint-Spam-Info: AW1haW4tMjYwNzI5MDA3NCBTYWx0ZWRfX0E9JSLwN1aCV
 fECHxjHQ8/kGV+lfeJeAskSIGwS6nAtlKJ5KKVX2HcwT/eYOlC6kwL8IiNDrULduPfeLLuVNLJG
 u2t+SSCQBL30Auj32LA8FUhOz//7P18=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzI5MDA3NCBTYWx0ZWRfX/rF/2QKMLgCV
 9oRVVNk+u09jOHiVbd5TbqqQxPF44gbfRo2oU2oD2Tp6iOQeTWF6Rz9rwmlUC3VFi1vD1B5Ebz3
 qK4BKX3jovvn4zTBq/KtF7ubHUzLfiFMnk2vOHvmCmBp/LBp7VVVtd4AkXaM1yhaZg9Pv5VqjYK
 2Y++5ury+BP9J54VLMGxcDcpxH9hj8rX4EIAZTVU7pA8muMyKO91dH+yJse3T7gHtqziFC11uGb
 8vfmzmq2T/MB+5Yk0AzaX7FNls+IiOvjYCwdIU8aTua5/W7Li6ZNystRsnAfBQAspvx1kUFJrBt
 Dx5L6KQED9wFda3RMSpGPDURjJHT5rJvacDn7rpbXC9fR+1BreicKh1BEw8xnu4rBEaTCAcDwpV
 JwdFbNsFKgZB/4XJSd1wb4+JogphZP4LXcWDk8TbC/wOf9pyR+3atx2YUdevbe78LdsH1/m8Ujj
 gxIFbVq/GFbD70+9FxA==
X-Proofpoint-ORIG-GUID: UFVFhOQcR4HXAcllJLI3qEEQHVWVxB2c
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-07-29_03,2026-07-28_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 malwarescore=0 spamscore=0 adultscore=0 lowpriorityscore=0
 phishscore=0 bulkscore=0 clxscore=1015 impostorscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2607290074
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260729_021112_317935_519F4C82 
X-CRM114-Status: GOOD (  23.10  )
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

On Wed, Jul 29, 2026 at 10:30:27AM +0200, Konrad Dybcio wrote:
> On 7/29/26 8:45 AM, Qiang Yu wrote:
> > On Mon, Jul 27, 2026 at 04:47:15PM +0200, Konrad Dybcio wrote:
> >> On 7/24/26 12:01 PM, Qiang Yu wrote:
> >>> CRD wires the shared Gen5x8 PCIe PHY's regulator supplies through
> >>> board-specific PMIC rails. Add the vdda-phy, vdda-pll, and
> >>> vdda-refgen0p9/1p2 supplies for &pcie3_phy.
> >>>
> >>> Signed-off-by: Qiang Yu <qiang.yu@oss.qualcomm.com>
> >>> ---
> >>>  arch/arm64/boot/dts/qcom/glymur-crd.dts | 8 ++++++++
> >>>  1 file changed, 8 insertions(+)
> >>>
> >>> diff --git a/arch/arm64/boot/dts/qcom/glymur-crd.dts b/arch/arm64/boot/dts/qcom/glymur-crd.dts
> >>> index 6125617de82a..0aae613a33ad 100644
> >>> --- a/arch/arm64/boot/dts/qcom/glymur-crd.dts
> >>> +++ b/arch/arm64/boot/dts/qcom/glymur-crd.dts
> >>> @@ -28,3 +28,11 @@ &mdss_dp1 {
> >>>  &mdss_dp1_out {
> >>>  	link-frequencies = /bits/ 64 <1620000000 2700000000 5400000000 8100000000>;
> >>>  };
> >>> +
> >>> +&pcie3_phy {
> >>> +	vdda-phy-supply = <&vreg_l3c_e1_0p89>;
> >>> +	vdda-pll-supply = <&vreg_l2c_e1_1p14>;
> >>> +
> >>> +	vdda-refgen0p9-supply = <&vreg_l1c_e1_0p82>;
> >>> +	vdda-refgen1p2-supply = <&vreg_l4f_e1_1p08>;
> >>
> >> I'm guessing you also meant to enable it here
> > 
> > No, we need to keep it as disabled because pcie3b is not enabled by
> > default on glymur crd.
> > 
> > See the fake pcie3b_phy be dropped, it is disabled
> > https://lore.kernel.org/all/20260420133616.88740-2-krzysztof.kozlowski@oss.qualcomm.com/
> 
> I think there are SKUs with dual-NVMe that use it

But the pcie3b controller node is also disabled, should I enable it in
this series?

- Qiang Yu

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
