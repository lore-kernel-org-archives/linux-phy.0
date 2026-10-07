Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4DAB7CA5FF1
	for <linux-phy@archiver.kernel.org>; Wed,  7 Oct 2026 07:43:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZAgdRFbjP3xKovLiXYc3ixpvGpcTGLAJc5R73va/tBk=; b=u733R1wNs1r2dJ
	su/AZVvTIomlJ5CzZJH/BQyCNMpFnfGFIZNMFwMYBweHTYv4oK7nKH/0la1aii5N2hn/pyGOSNC4y
	xA4mgDwRfKCaqgOKADFjcx8BAc+eJqJ2od6RsnPCPyvt9+tAjk+be7eXJtV8/AP36BEJycBGFutNF
	t7A1PCB0l9LfkNuqWKFrr+F3gkRspxDFldtV9pa1+COa3uEbU5jmaMOsTJ04UjQg7h+p3E4aCQOqj
	SfFvcUraq3vFNeJVdYeHCtbUMI4zThpqmB6LObssQLjRIsHd5jJUjLp8Zc0+Ghwo2GrJh7HgtTqZp
	xbJQY3eDQ43TM3eET4SQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xEMJT-00000001shS-2lbC;
	Wed, 07 Oct 2026 07:43:43 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xEMJQ-00000001sgi-3ZbX
	for linux-phy@lists.infradead.org;
	Wed, 07 Oct 2026 07:43:42 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6975OAVY1567533
	for <linux-phy@lists.infradead.org>; Wed, 7 Oct 2026 07:43:40 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=clJPVUXl0viASw+vzSccwoxb
	ts2uNZ+Y1lfR96jzEPs=; b=CKmrYUaUgtKQafmZ1Ex4PS9c1Q86XcXIu3H1czts
	o1V2PpiP3XImQAzXSGWBZfivErBqf6TrlkpRt5MrSNW4jFkCgV0BS9PVEmRbiXxu
	3C0cPvGmdZY+8XlE4wr7Vnsd/ZzDNvSlMflfAl5vUI/PjyZlTUJU8t4/CzWm0yR8
	zPWZw4600KfqNttxg8ndkLce88sig9Ob9Q3APe1lcahBERkV1yJIzGEeBFbEZR5g
	lGOV1Kcm3VmprCLJKyIYE4uJH/B9Lpv95FaXhm22NS5QOQYGQ+wBGlVobWjyHVaV
	P13XERN2/1VpPriD1YDC6A+oAkKnSfsjdDmg1FJw/ZezoA==
Received: from mail-ua1-f70.google.com (mail-ua1-f70.google.com [209.85.222.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4h5fw8rdnf-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 07 Oct 2026 07:43:39 +0000 (GMT)
Received: by mail-ua1-f70.google.com with SMTP id a1e0cc1a2514c-98087b0c5deso2753215241.2
        for <linux-phy@lists.infradead.org>; Wed, 07 Oct 2026 00:43:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1791359019; x=1791963819; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=clJPVUXl0viASw+vzSccwoxbts2uNZ+Y1lfR96jzEPs=;
        b=S0yme76PTChq6UHA/ySmqytxnfcbe/Y1G2/bJD7XM+T6RBGTMW3d8gQq0H077ltbT7
         gbhVPg10192B8/yNsn1CAY20a3RJEORq05phvybDiqON33FFX+MaF8G7jtVj99eYQSsL
         QzI+xObX7Lmm3bvDRkhf6KtokB3wtxmgfnLwG7NHeUEVw7I+cv8bvgMRnafq7STFqZke
         lg5YqqdpvPaO8Jx9B/V/EyYUDdQWHVc90iMl9nbgWXvlesfQO9E1S2RbjxFKfc74iowh
         wBt2wtPABiRfwH5Rj2QFbHVGoM4qxrV2NolwbcbvjMTM5GFZ0QbXHSUyMVCU2LUUOs/e
         0thQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1791359019; x=1791963819;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=clJPVUXl0viASw+vzSccwoxbts2uNZ+Y1lfR96jzEPs=;
        b=Sbelhndwx295u9dNGfSsrJeyp/f9VfqDgcFaeyBjdwmzwMB4mMa4OtxN94Iq0EDVGH
         NXBjy4QqUB2j0yUhjnG09GQiWtCPP6LOLEq3E1dQmT7vkJua4mx5WbHBbz/JNEq5AMpd
         jiMGpXFIZPYHwcaNe1hn8YTVuQbZ/bMCpIthw4GMEMVD12G7YZqiemxUwuPAe9QWmEG+
         obG1QY/olPa8LPxd4r4gdn+KazEs6WM2DhiKC0PxbvAKBe6GnbrPZil4eDamxuIbM4on
         htpcCCg1pUYyrBk/5iUAp/xnEaPaVrsXoDwAV4WHm406wQocmcVc8f879JMldDavTc9c
         RS3A==
X-Forwarded-Encrypted: i=1; AKwUvBxE/3ZmXJOF4F++ZSP9KUsOfGt1QuOAZ90BevQTw6wR9R+Qk+KHY0MuyZQpPuFdm47GZa0ziv+pzFU=@lists.infradead.org
X-Gm-Message-State: AFq9FYJ6AUriDxwSpHZwt/ymi1mw0D7gBlyk7sqy8UjuDXvThv6SeX1v
	c1vqSOfQ9LE+KUQBgDAX1Fk+93FQYtwrnrwMLjkg8dDuEPsr0tcOzfcogeNIAgTnbInpB9ecFoO
	JeZ3udxFuPPZjOv2Ot3Do4YLcMG/GeEqx8B9Ks73ScMyZlgDScJJXUz7tMPtffJFZ2KHB
X-Gm-Gg: AYBFou0Cn6JukCfdTFeUJ6cxr5ebiEkC/Rwz30/NZ84m2rvQGum8a2B1h09ZsPnTzT5
	2a9ovJVnoahF6vmUlLd87jkrtB5EuKukvdE+g/iRel6IYBLpBPBYV8Z9PjOIYn4kirhna0Vr0Q5
	wkDdIuwJ4ySWKM62EdkLG68/HbaDONfqSefWWWEBPHakyE1hbNskNNp9DaxUDNWzNDVoEcMRm9J
	D9IK+Wgrfe0XNayHHwbrZJtv1dGigKWdSkAyC5eFhz+QOdoLujQ/1/q8hIqSxHiQyzotjVv4e1i
	NCDIlTy7EakG9tLkvD83cfBR1FSnB+dhezjMdwKxja5dor8L0lqimIfq8+nPQUyq0TDbrRDmwR+
	/JwkE58EYFghkiiSVCy3WCgX9rcGKsbawzLAbdlPhCCZQe51JMIKX7A0Kqm9rwtksXUTJ3b65dS
	2feiNBu9jNIGEi
X-Received: by 2002:a05:6102:5109:b0:7c3:3f26:8785 with SMTP id ada2fe7eead31-7ca3891236fmr444223137.7.1791359018862;
        Wed, 07 Oct 2026 00:43:38 -0700 (PDT)
X-Received: by 2002:a05:6102:5109:b0:7c3:3f26:8785 with SMTP id ada2fe7eead31-7ca3891236fmr444204137.7.1791359018395;
        Wed, 07 Oct 2026 00:43:38 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-3a9a1d3370csm3856801fa.13.2026.10.07.00.43.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 07 Oct 2026 00:43:37 -0700 (PDT)
Date: Wed, 7 Oct 2026 10:43:33 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Pradeep P V K <pradeep.pragallapati@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Alim Akhtar <alim.akhtar@samsung.com>,
        Avri Altman <avri.altman@sandisk.com>,
        Bart Van Assche <bvanassche@acm.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        gopikrishna.garmidi@oss.qualcomm.com, jagadeesh.kona@oss.qualcomm.com,
        Abel Vesa <abel.vesa@oss.qualcomm.com>,
        Abel Vesa <abelvesa@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-scsi@vger.kernel.org,
        nitin.rawat@oss.qualcomm.com, sibi.sankar@oss.qualcomm.com,
        Taniya Das <taniya.das@oss.qualcomm.com>
Subject: Re: [PATCH v3 3/5] arm64: dts: qcom: glymur: Add UFS nodes
Message-ID: <a5p5gszuadvnvqcwffg6y55khdfhacwhegaxmmiwm72sfid6ex@cdwuo6sdmkgy>
References: <20261007-glymur_ufs_qcb_enablement-v3-0-84cf4f861415@oss.qualcomm.com>
 <20261007-glymur_ufs_qcb_enablement-v3-3-84cf4f861415@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20261007-glymur_ufs_qcb_enablement-v3-3-84cf4f861415@oss.qualcomm.com>
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDA3MDAzMCBTYWx0ZWRfX2cOcymwkGxw4
 17Phzn+Sso+q6CQhlkrCJEdtca+JO6FKedztN+6fWr1UyMOed+4WYcwl+RMX66wdHfkvac4JwPf
 E0PeP9tvnJUsR6gWXs5ZzhAGZEJJ2Yc=
X-Proofpoint-ORIG-GUID: rBVHwlIUgy_yIyaB9uUcBx50svv9SVBV
X-Proofpoint-GUID: rBVHwlIUgy_yIyaB9uUcBx50svv9SVBV
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDA3MDAzMCBTYWx0ZWRfX4vpRKW4modKd
 dLmuU1qagJrURALBQ/dqXNERGVVPmb+K6x9l/mLmXDXw6oEOW1g2GJhQR2fx/G+Ln9F9rE+JNyE
 h38N4FgVosWx9rXkyOMNFWX0VbJFN2iX99ZGVRdOCrq+Kis1xc+iHUdQxa3FUIlODtowcx0Nk6z
 4TPHMFbAsjBw8g7xsJSmzywoXuQPlu1UFtsIoWdw8+5gYWqY6lgd5MZd8Eojxgy4Mn4+SdJEyy0
 /F/U0iCzJFER7p9XM8tCkykvM2OPcvLKr9ULsR4E32cwzEGpb4dTCVamtJnR6kPUKuxTUIuIixN
 +3tuYzLUcah4cJjHB8JsTcJWbP2Z1eGkHJ7ThMhRIyumvVwVmsdiHUhk/UHRwlurnCNKOU/jIay
 D/5LKI2Knck4TT2YKJHTU5pL7EyHiW2cGrVwZI/XsJzzWi/Ewt4TV3u5O6IuegN/mp1d4zPReDP
 eqxWuJuaHlUOGxLWuog==
X-Authority-Analysis: v=2.4 cv=Af0kjHXG c=1 sm=1 tr=0 ts=6ac5f82b cx=c_pps
 a=R6oCqFB+Yf/t2GF8e0/dFg==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=DJpcGTmdVt4CTyJn9g5Z:22 a=EUspDBNiAAAA:8
 a=PwKYEXKgugi0Ob49dLQA:9 a=CjuIK1q_8ugA:10 a=TD8TdBvy0hsOASGTdmB-:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-10-07_02,2026-10-06_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 malwarescore=0 clxscore=1015 impostorscore=0 lowpriorityscore=0
 adultscore=0 priorityscore=1501 spamscore=0 suspectscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2609040000 definitions=main-2610070030
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261007_004340_897069_5C8AAD25 
X-CRM114-Status: GOOD (  15.82  )
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

On Wed, Oct 07, 2026 at 11:59:36AM +0530, Pradeep P V K wrote:
> Add UFS PHY and UFS host controller nodes for Glymur SoC.
> 
> Reviewed-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
> Signed-off-by: Pradeep P V K <pradeep.pragallapati@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/glymur.dtsi | 125 ++++++++++++++++++++++++++++++++++-
>  1 file changed, 122 insertions(+), 3 deletions(-)
> 
> @@ -4102,6 +4102,125 @@ rng: rng@10c3000 {
>  			reg = <0x0 0x010c3000 0x0 0x1000>;
>  		};
>  
> +		ufs_mem_phy: phy@1d80000 {
> +			compatible = "qcom,glymur-qmp-ufs-phy";
> +			reg = <0x0 0x01d80000 0x0 0x2000>;
> +
> +			clocks = <&rpmhcc RPMH_CXO_CLK>,
> +				 <&gcc GCC_UFS_PHY_PHY_AUX_CLK>,
> +				 /* UFS and PCIE4 share the same clkref */
> +				 <&tcsr TCSR_PCIE_4_CLKREF_EN>;
> +
> +			clock-names = "ref",
> +				      "ref_aux",
> +				      "qref";
> +
> +			resets = <&ufs_mem_hc 0>;
> +			reset-names = "ufsphy";

power-domains = <&gcc GCC_UFS_PHY_GDSC> ? Or is there
GCC_UFS_MEM_PHY_GDSC, which is simply not described in gcc?

If there are none, it should be reflected in the DT bindings, together
with the explanation in the commit message.

> +
> +			#clock-cells = <1>;
> +			#phy-cells = <0>;
> +
> +			status = "disabled";
> +		};
> +

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
