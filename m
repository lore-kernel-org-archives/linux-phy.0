Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A0667EFCE4D
	for <linux-phy@archiver.kernel.org>; Thu,  5 Mar 2026 00:02:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=A994RJ54PkUADraSj2APVsmPf4i+4NweQwdXdTjmUiY=; b=p2SGSxJdhgkSCC
	xIqFoarq8/QymoeOLcqWSyipjZQyc/K2m8aAcGezEeFrKA1CTmWyVTCV2HPhA/Hm6LnjDyVrwYvvY
	DBBR0zJTjTz94rwwr7aEh+VSaJTXt1LSYm8Kx+osa9BWcK87vvu+nmikNUJPMsRGqnZ5if0MJFRoU
	WzPUZxhl/+Ka0Z+VNR4O1o/NsEPE+uTUA2VBrKKiGBdoEMwkcTyjpTQrhakO6+bIEx9h+ugcCt4tS
	efpJV/3NbaxqRxxnzxJOMK9z+mgdvbOwzbgDFYJRmblidYXb7mtbqukrirgX6zRM0vbldaO0QR8dX
	qRrk129fDBk8ciyvVweg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vxwAb-00000000gD4-1ZQH;
	Thu, 05 Mar 2026 00:02:25 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vxwAZ-00000000gCd-0UAo
	for linux-phy@lists.infradead.org;
	Thu, 05 Mar 2026 00:02:24 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 624HH6PA3837880
	for <linux-phy@lists.infradead.org>; Thu, 5 Mar 2026 00:02:22 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=udBFEipzOpdtZ5UiZIiKV/jq
	6S2C6jk+6aYuSwMf3n8=; b=C7wSwRQPMQu7rAgIcnxLRbAepD+I5qzSTVx5x2wf
	RBx4ThITdCwkTre4V//9Mld7obuIbwLaoYZwuUPbh+pa+LzTO9dHw3Xe5Cg1wZbw
	vApIES98+gnSYhQb5rQFJXBrcEH7DMedGThsRlSCckc2H5gdeE0u43k+MsGAjktK
	0ZQx0W2pI/Hmg/eb72SeUZEglVOE/GUv6CzUqBZv2qfJFg0kXYEBGwrRzkydvPFY
	KGf675bhrBnsZLsGKNTEhCD5/qZCSiMgep0h8QdntUR9Vo3tHfexpIokWFC6YY5y
	46OkhylQqQxdqPQaTEch62D+nxQDOFVZxwoAxgjwKCVvLw==
Received: from mail-vk1-f200.google.com (mail-vk1-f200.google.com [209.85.221.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cps0m1352-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 05 Mar 2026 00:02:22 +0000 (GMT)
Received: by mail-vk1-f200.google.com with SMTP id 71dfb90a1353d-56aa6d6bb5bso7542361e0c.1
        for <linux-phy@lists.infradead.org>; Wed, 04 Mar 2026 16:02:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772668942; x=1773273742; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=udBFEipzOpdtZ5UiZIiKV/jq6S2C6jk+6aYuSwMf3n8=;
        b=XjO+gKab7z1Yd4IJNX4RtuADQ4AsAlDQQlBrJNpZ3iwD5KWRzye32iw2WZDpOoKs2v
         DIeq2e6Cv7FeiENUUTZNe7okJXGp2Qre63qzy5pj19GZ7LO8oj4GBDp9MVsMTc3EdnUu
         IdPUdMtc3t2L1Gbok3Fgt344SwagvyP+qeEra1OYHDCwJHtvuBzvBuG7hY4lagjgoKuQ
         tDtOq3HUfx5imZ7XLxrJtmSefsum0D+zYoYQlXbpj+p2iDh/MC82UfGiq1+bU4BVpOom
         xwygbt9vzqjBRuVIVhxJMEAVDs8pAs7/7AtqUwlODQVieChNIzkN9XVb9FNag1Dbxlx6
         rMNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772668942; x=1773273742;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=udBFEipzOpdtZ5UiZIiKV/jq6S2C6jk+6aYuSwMf3n8=;
        b=e3AUp5qLX44wyWfM8d+XwNcDd+Xqsp2rfiHldpM9vV/jU59nNVbJoBCX0rMxxY0D2g
         BqKupYjOaYzQpfDqhy5ep94vkO2Mjfdj8uLdjVDEuVfSMuf/nGf3amGWc3oIqqNacxUd
         rqRMQ7goMFuzwXS7/NuCZC43s0InOijAxGgne9wI7OeDcvLthcPwbNkne/Q2Jnfe01I1
         Sy1hTQlGyUbTzr4MZjqN8SmGPN3oMdqqNMXmSoqg1OCjK9gdyCOxHLblWe9fdLLwpKCa
         5rKWdOel1qRMOKwuPi0DxupyiUJ98w8aWWlzjll86j8cGaGYRkgxmLBN95JtHWmlNszQ
         UR4Q==
X-Forwarded-Encrypted: i=1; AJvYcCX8NJIpRfqdYLKlxSzbbbjh27eDlH6oFpoIoGFIqEx8Wm0um5Lf2djjSRo+qIJ4YO+Y8gS+h1PjKEg=@lists.infradead.org
X-Gm-Message-State: AOJu0YwEH+J67BEGrKJFYhFPW528S9MqxNgfVyUSWEd6MvaOgiBwJokA
	PmN90dcFJ/9wx4L5FUT4Mdb8ZW6MVMNpfuLISzHX9/92LuUG/2sGENoCUIH6KkUkHLqY/w0Xiew
	Y/9TddPX29d4Dipi3EWx9pd2MsV3U7RzyQTcV7pkIkeRCEsNsZyiAjXdJcgkHCG4OB32d
X-Gm-Gg: ATEYQzygx+oIwYUqys6l5Y4UrO8lD0+9U3wIUQ2TzrmDvkq2yu55NqhVoVV1CuBGrxJ
	KXZRMiK97Ka59GSYYOvJj0D7er8zLZhGVqUwajsNwDOoko6s+pXh/eyqAtB19+8Zgsx46u3BgZc
	p9m+Woaj+7VRXqba93Faw/AsmnQRnUZuhECXAOw0cAPq1+eT+9s33oRhplmvvIdiqjzqxHmLj7b
	TB6vXQZN/SgCtWKRhzGXdPCHCCTbGu2gLeBWHqy2O5N8YIOloW5VQS51Lq3XSFunn/KdXcjyZuQ
	hErHZULPbtFACoqvGzki8Ha3hxqCsp7wiPZ8gSlPjCDDvPhy8N4rgJH3+LXbcJjU9TZrQdmJYjl
	UTVW8tYVn0a15LeCeiJJ45DwG6Ru3hkin/PeMO68cmpjgRN9J9YKemHYI76c3PICy97V6mUrp8w
	xTZZHVgvxwSdhCk88ZuWooW1zL/KYN+pXhMZs=
X-Received: by 2002:a05:6122:8b10:b0:566:fe6c:e1ba with SMTP id 71dfb90a1353d-56ae74d4d6amr1811525e0c.4.1772668941608;
        Wed, 04 Mar 2026 16:02:21 -0800 (PST)
X-Received: by 2002:a05:6122:8b10:b0:566:fe6c:e1ba with SMTP id 71dfb90a1353d-56ae74d4d6amr1811475e0c.4.1772668941102;
        Wed, 04 Mar 2026 16:02:21 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5a131b11e8fsm85095e87.54.2026.03.04.16.02.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Mar 2026 16:02:20 -0800 (PST)
Date: Thu, 5 Mar 2026 02:02:18 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Qiang Yu <qiang.yu@oss.qualcomm.com>
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
Message-ID: <u4abdgzrlfijwymnoneb6xa34l3y6fpenlbidvej5cgfz2dzkd@dk37ihalaast>
References: <20260304-glymur_gen5x8_phy-v1-0-849e9a72e125@oss.qualcomm.com>
 <20260304-glymur_gen5x8_phy-v1-5-849e9a72e125@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260304-glymur_gen5x8_phy-v1-5-849e9a72e125@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=e6wLiKp/ c=1 sm=1 tr=0 ts=69a8c80e cx=c_pps
 a=wuOIiItHwq1biOnFUQQHKA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=DJpcGTmdVt4CTyJn9g5Z:22 a=EUspDBNiAAAA:8
 a=BvQctOsZpKswBag4uPYA:9 a=CjuIK1q_8ugA:10 a=XD7yVLdPMpWraOa8Un9W:22
X-Proofpoint-ORIG-GUID: SWOW2YBexbsTezcvVuVKFuaSF_SwwOtv
X-Proofpoint-GUID: SWOW2YBexbsTezcvVuVKFuaSF_SwwOtv
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzA0MDE5OCBTYWx0ZWRfX+F1dctlaLycL
 MldBotQaXJlg8/VJZxrQsUFwYtjZec4Dnr1+edTrkHlezxMlp7NEpdmCYaHaCWQW8WfU7vFmVvU
 8RkrKMZmPwK6kJWvpr0MCeOU/PbpvtehL1CZMgXdsQnXwFSQTGCyCxheRLR6odtrhKCpcsoJmqM
 jXe8TatylXtZs7c0Al6kQK/PsMllijOkxchQP+1lPT7/ShUw/AcXhxG9Lv+TmKEWi6Kn4J7y2Pm
 rf/I9Y/HKW39tORjeoLC3l2MGyOk88VYh/oDjb3xcdPudKgYFii8XoaS2P+qeDDcyQe7PEvFYHQ
 uByOnDiYdqNgSJD+CDnYuNosf7FjJHXVhyIm+6Jd4XAjErjEeLY7T6D7YXy7M0ffmZe529uOyT/
 3gTUJfRp2Sx+GjudKthOiolRPfhA3TTsMJwS1PYkT1Wc5CQ/+Dv/duLQPhEGrBF4tbloenfedsI
 25HcZBV3eFpmKwN8A7Q==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-04_09,2026-03-04_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 bulkscore=0 phishscore=0 lowpriorityscore=0 clxscore=1015
 spamscore=0 adultscore=0 impostorscore=0 suspectscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603040198
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260304_160223_161061_0BF2F542 
X-CRM114-Status: GOOD (  15.03  )
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

On Wed, Mar 04, 2026 at 12:21:59AM -0800, Qiang Yu wrote:
> Describe PCIe3a controller and PHY. Also add required system resources
> like regulators, clocks, interrupts and registers configuration for PCIe3a.
> 
> Signed-off-by: Qiang Yu <qiang.yu@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/glymur.dtsi | 314 ++++++++++++++++++++++++++++++++++-
>  1 file changed, 313 insertions(+), 1 deletion(-)
> 
> +		pcie3a_phy: phy@f00000 {
> +			compatible = "qcom,glymur-qmp-gen5x8-pcie-phy";
> +			reg = <0 0x00f00000 0 0x10000>;
> +
> +			clocks = <&gcc GCC_PCIE_PHY_3A_AUX_CLK>,
> +				 <&gcc GCC_PCIE_3A_CFG_AHB_CLK>,
> +				 <&tcsr TCSR_PCIE_3_CLKREF_EN>,
> +				 <&gcc GCC_PCIE_3A_PHY_RCHNG_CLK>,
> +				 <&gcc GCC_PCIE_3A_PIPE_CLK>,
> +				 <&gcc GCC_PCIE_PHY_3B_AUX_CLK>;
> +			clock-names = "aux",
> +					"cfg_ahb",
> +					"ref",
> +					"rchng",

Please align on "

> +					"pipe",
> +					"phy_b_aux";
> +
> +			resets = <&gcc GCC_PCIE_3A_PHY_BCR>,
> +				 <&gcc GCC_PCIE_3A_NOCSR_COM_PHY_BCR>,
> +				 <&gcc GCC_PCIE_3B_PHY_BCR>,
> +				 <&gcc GCC_PCIE_3B_NOCSR_COM_PHY_BCR>;
> +			reset-names = "phy",
> +				      "phy_nocsr",
> +				      "phy_b",
> +				      "phy_b_nocsr";

Should we be supplying _b components by default? What about the
platforms which might use separate 3a and 3b?

> +
> +			assigned-clocks = <&gcc GCC_PCIE_3A_PHY_RCHNG_CLK>;
> +			assigned-clock-rates = <100000000>;
> +
> +			power-domains = <&gcc GCC_PCIE_3A_PHY_GDSC>,
> +					<&gcc GCC_PCIE_3B_PHY_GDSC>;
> +
> +			#clock-cells = <0>;
> +			clock-output-names = "pcie3a_pipe_clk";
> +
> +			#phy-cells = <0>;
> +
> +			status = "disabled";
> +		};
> +
>  		pcie4: pci@1bf0000 {
>  			device_type = "pci";
>  			compatible = "qcom,glymur-pcie", "qcom,pcie-x1e80100";
> 
> -- 
> 2.34.1
> 

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
