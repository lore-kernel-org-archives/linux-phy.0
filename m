Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B2B86EEF325
	for <linux-phy@archiver.kernel.org>; Thu,  5 Mar 2026 08:40:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ej30gFzJbY3HVQNy2sEf71PvY6gpHXpwGxJj8E8Nh/A=; b=fJoSnw+iWIBnWl
	9JMp8x/g4hTVO8OYIYwAwIMOWaUJjqBT05fLAyNFprHc1yO5O9It94SpBvhKNCkf4RqQTwY7ArphR
	kFXrCmveUaVmT49RyU/4AIZXIFYlWYthLmFiJlH18knIBx+bDd14JoKyLpQLBPa/YUQ/xPvx5mNTL
	Dc5NG/5FT/0TPuHqAD6QXUsHop6pKAyWHyZBexzB73MbFJUvwx8yPXtUyd0D9kOM+9eYIN1t/bG7c
	IV9dTF753SpbjciVGvfD8z4LR2EjqUkSc36bhkyMivMx52iWKuIJGltWkZ8vF9dY+JSpkduyYAlMN
	4jmkqH8fb7DsoTzZeXJw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vy4GH-00000001Dvu-1ebw;
	Thu, 05 Mar 2026 08:40:49 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vy4GE-00000001Dv8-3Mho
	for linux-phy@lists.infradead.org;
	Thu, 05 Mar 2026 08:40:48 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6251CDVG3473524
	for <linux-phy@lists.infradead.org>; Thu, 5 Mar 2026 08:40:45 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=eMfCcUyY2UMWF+U4/TQnvNQb
	6IM9B8sI0EP+RllkSJA=; b=YDWZt0UmsxIduQCZf9HoT7VIufl/Xt26OFGirRP5
	jUn55SXNrr9emyD/1NP/Lus1XDEqXej18tzr+EY096EpKJNMjWn39zN6MEaxK/EW
	HWxrktD7dylv9FYOz+ytuzH3O+JDpIBZ7YouT6Ad0LN1FthJB6qsJ/IExRwz72i+
	gGEKiA0NUc4KsTXD4EWZ57+6wVG/gCLDCNSzjOqW2ymzhnm11gSNb56rM8lGJJV7
	CcL6h9cLU9fsOupAqfwPVihXT9vkrkaD+CFfaVXN3ggukHN+FcpJxsnB7cooR6X4
	hQtj6gAbGl30RNSpmPnT5bsL2mVPkNg6HscpxJn2CY61xg==
Received: from mail-dy1-f198.google.com (mail-dy1-f198.google.com [74.125.82.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cpj183y68-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 05 Mar 2026 08:40:45 +0000 (GMT)
Received: by mail-dy1-f198.google.com with SMTP id 5a478bee46e88-2be1a486968so61050674eec.0
        for <linux-phy@lists.infradead.org>; Thu, 05 Mar 2026 00:40:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772700044; x=1773304844; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=eMfCcUyY2UMWF+U4/TQnvNQb6IM9B8sI0EP+RllkSJA=;
        b=R4PW3O18zY3wtNk1cqrs8cZSXWncuNqu0wv9xFbN0uReRPvKfYN+pHwoDhSEk5zMAg
         8wPaYZnvboj4VuD0sDckuKTeLotlaj5AJvfRXLA8YYLgJKgfh12Dfw89+Us2nit11TEI
         THeg8VBY1rBn1bSPlx1I3hriUGh5x5ESRg/D8i8PtUiV5d22X1l5E3dw8ZW2uQpV8zyX
         LF9fpvJQRrK6auKYnbv/TEwSMWvUld0G5hdDvPFvcvMfqjQ41Ku3HbcqpUYZIJ6INx74
         x4fJXEVaS77NgQia8tKJ28iHOJVIyGTllNLmN1ATMKZxyo/Gc0JTKm+igREXbABf1sv4
         T0hQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772700045; x=1773304845;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=eMfCcUyY2UMWF+U4/TQnvNQb6IM9B8sI0EP+RllkSJA=;
        b=vmWeVplJEdd/Du5sYMGKw0/tf/RauM4QasuWf8TJ7wDtn94ABQxWoCe+s1MOsvWt5L
         8bRocpJVuQd4GrrAvP4PljdGFPkYqW5OrlPGvksHTjiz5EoDnyDMr4PbaioGanpueYwc
         3n9ndw7YcGDJNP+S4fNwvAbfW/YYO0qZwJVvFUEotAWjjnb7P/JUxyLBV9Oy1QF0ZE9v
         3hYMibEKi1XWFvN91kczXdI2lQSYdByWMQnS79nxTMQOwySC92PNAIquDpGJZmFzDaHv
         3AmgoT7Ub7jCeLQ8x3cTTs7cg+9d+VO0pvBHmjTl0deGc8dZ9UM5WZbpsaB44dmZ+88/
         Wcmg==
X-Forwarded-Encrypted: i=1; AJvYcCVq01WCDiH7Nz3D3q62o6qd8SphHJoDx2fbPVTVE9EpU3QHZN1zC9rQ8hNMCakFPA+a0VOiqiUbZJU=@lists.infradead.org
X-Gm-Message-State: AOJu0YxtS34ZTqZXowzQlmsa6Wq6k9TcyoDa8PBbOt7S/bwuSacoCvrR
	j2KS8KUaMMVsoFPS335IqK8MjGWcHUgl6snilnfvW+zCwC7tkjzgztc8r3Knn5v+9BSVTn6tNXr
	R4rGuDbJva/7a+5/rpMyLeVpmR8nA23rN/caG2c95S55dA4PzR08+9mZvkcE22GY9Obgy
X-Gm-Gg: ATEYQzzv2gPPX9WnDYwxJ2npqaydGO6J4BmRWn8WblBZwEnFc+Sps5cCr/euUvTch21
	kdnV6/RrA57x5cRz/BKbq0Sek5xguxR3unbtAhvALMyzPQTuHy8iKBHkrwXclthlJiQ0pj3Tqfv
	qIQzTMGVZ0uw9dxnScXJ5PXWFbw+5CY9rU5DRmEt2EQ7+HFWmoFRmzdi1AUU1+LzwLrcXRMyO1Y
	AgFXq8C5K6G9NlUpSl7GKE0Kw+TJRk4DG9YlAI0rfT8S4nhmE556CHuYu/Zra7R1V6/bGMaHTfm
	t8CuKEEvjI2sEtYnuCZfTrsCuEygrUKiWuJL0waG1qTeIzMHV5JeplZE6GZhilE+QrhDQC/aJPb
	IHHNjFSdIJij1xqoGQZnNhp6ji3lQxOO1D2YroBjMfCuxmeOLoRU2/L00TpgFrSURZABq
X-Received: by 2002:a05:7300:a483:b0:2be:2b8d:3987 with SMTP id 5a478bee46e88-2be3108dbd7mr2241980eec.22.1772700044526;
        Thu, 05 Mar 2026 00:40:44 -0800 (PST)
X-Received: by 2002:a05:7300:a483:b0:2be:2b8d:3987 with SMTP id 5a478bee46e88-2be3108dbd7mr2241972eec.22.1772700043963;
        Thu, 05 Mar 2026 00:40:43 -0800 (PST)
Received: from hu-qianyu-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2be2c9c67dbsm3371059eec.19.2026.03.05.00.40.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Mar 2026 00:40:43 -0800 (PST)
Date: Thu, 5 Mar 2026 00:40:42 -0800
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
Subject: Re: [PATCH 5/5] arch: arm64: dts: qcom: Add support for PCIe3a
Message-ID: <aalBitirfu/rHhIK@hu-qianyu-lv.qualcomm.com>
References: <20260304-glymur_gen5x8_phy-v1-0-849e9a72e125@oss.qualcomm.com>
 <20260304-glymur_gen5x8_phy-v1-5-849e9a72e125@oss.qualcomm.com>
 <u4abdgzrlfijwymnoneb6xa34l3y6fpenlbidvej5cgfz2dzkd@dk37ihalaast>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <u4abdgzrlfijwymnoneb6xa34l3y6fpenlbidvej5cgfz2dzkd@dk37ihalaast>
X-Proofpoint-GUID: Mi24yTkCUQm1lDL9g3sIlhKoG2xIn-Ms
X-Proofpoint-ORIG-GUID: Mi24yTkCUQm1lDL9g3sIlhKoG2xIn-Ms
X-Authority-Analysis: v=2.4 cv=Ed7FgfmC c=1 sm=1 tr=0 ts=69a9418d cx=c_pps
 a=wEP8DlPgTf/vqF+yE6f9lg==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=kj9zAlcOel0A:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=3WHJM1ZQz_JShphwDgj5:22
 a=EUspDBNiAAAA:8 a=6aSL9Ysz0BH7CvPNE-sA:9 a=CjuIK1q_8ugA:10
 a=bBxd6f-gb0O0v-kibOvt:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzA1MDA2OCBTYWx0ZWRfX6NTkTlNhl/cZ
 +SASOC5FMJkGrOq4ttSLdYh/nhs7cmHSyvSuLSwfl/uio41EFnnP8nZHo+R5ikIxJbcM0yr0ZUG
 OgyF+1isoXtwwt+c5rkSCnATRcFo0R2uB4gHLvLhBpOD4O8nOMz2F3PGv4w0a/7MapQLEHvtMvx
 taYqD7jNM9E5wclLWaBoWc2sgz51l98GQh6Q8eoTrB5ubJmrIMaHd7OJzIVS++8qrG7AiU2tEyM
 urLHtoXoEs0q5DU0akL1ItsBP3WP23fhTRmILn7mPaSaduae2+uNt+jlG4/EvWgKyzjD/xG5tdf
 6gNAhff4y38PAjzdHoE9MNIiaWdqKCefZaPRfxt6cpX0OKwnELn/w/9CL3UdU/zYHrZQNVdsZli
 5kQKL/SUw25dHFK6Fv/APGHGs9N5+F5bx65DzJq3PPAH0/0ZP+ZOh1uWtCkDA4Y5K8Rbhuq45nB
 Rctmw1GvtjgvbBgA2aA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-05_02,2026-03-04_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 suspectscore=0 spamscore=0 adultscore=0 lowpriorityscore=0
 clxscore=1015 malwarescore=0 impostorscore=0 priorityscore=1501 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603050068
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260305_004046_961940_F33A64D6 
X-CRM114-Status: GOOD (  17.69  )
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

On Thu, Mar 05, 2026 at 02:02:18AM +0200, Dmitry Baryshkov wrote:
> On Wed, Mar 04, 2026 at 12:21:59AM -0800, Qiang Yu wrote:
> > Describe PCIe3a controller and PHY. Also add required system resources
> > like regulators, clocks, interrupts and registers configuration for PCIe3a.
> > 
> > Signed-off-by: Qiang Yu <qiang.yu@oss.qualcomm.com>
> > ---
> >  arch/arm64/boot/dts/qcom/glymur.dtsi | 314 ++++++++++++++++++++++++++++++++++-
> >  1 file changed, 313 insertions(+), 1 deletion(-)
> > 
> > +		pcie3a_phy: phy@f00000 {
> > +			compatible = "qcom,glymur-qmp-gen5x8-pcie-phy";
> > +			reg = <0 0x00f00000 0 0x10000>;
> > +
> > +			clocks = <&gcc GCC_PCIE_PHY_3A_AUX_CLK>,
> > +				 <&gcc GCC_PCIE_3A_CFG_AHB_CLK>,
> > +				 <&tcsr TCSR_PCIE_3_CLKREF_EN>,
> > +				 <&gcc GCC_PCIE_3A_PHY_RCHNG_CLK>,
> > +				 <&gcc GCC_PCIE_3A_PIPE_CLK>,
> > +				 <&gcc GCC_PCIE_PHY_3B_AUX_CLK>;
> > +			clock-names = "aux",
> > +					"cfg_ahb",
> > +					"ref",
> > +					"rchng",
> 
> Please align on "

Okay, will align on " in next version.

> 
> > +					"pipe",
> > +					"phy_b_aux";
> > +
> > +			resets = <&gcc GCC_PCIE_3A_PHY_BCR>,
> > +				 <&gcc GCC_PCIE_3A_NOCSR_COM_PHY_BCR>,
> > +				 <&gcc GCC_PCIE_3B_PHY_BCR>,
> > +				 <&gcc GCC_PCIE_3B_NOCSR_COM_PHY_BCR>;
> > +			reset-names = "phy",
> > +				      "phy_nocsr",
> > +				      "phy_b",
> > +				      "phy_b_nocsr";
> 
> Should we be supplying _b components by default? What about the
> platforms which might use separate 3a and 3b?

We can override compatible, resets, and clks in board.dts.

- Qiang Yu
> 
> > +
> > +			assigned-clocks = <&gcc GCC_PCIE_3A_PHY_RCHNG_CLK>;
> > +			assigned-clock-rates = <100000000>;
> > +
> > +			power-domains = <&gcc GCC_PCIE_3A_PHY_GDSC>,
> > +					<&gcc GCC_PCIE_3B_PHY_GDSC>;
> > +
> > +			#clock-cells = <0>;
> > +			clock-output-names = "pcie3a_pipe_clk";
> > +
> > +			#phy-cells = <0>;
> > +
> > +			status = "disabled";
> > +		};
> > +
> >  		pcie4: pci@1bf0000 {
> >  			device_type = "pci";
> >  			compatible = "qcom,glymur-pcie", "qcom,pcie-x1e80100";
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
