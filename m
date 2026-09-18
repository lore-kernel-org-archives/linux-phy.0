Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CD0C0C982D9
	for <linux-phy@archiver.kernel.org>; Fri, 18 Sep 2026 10:40:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pYtHpPBb+Zw52PIvXGEg3xrrgDJRtC4LL1DKJAPzS60=; b=rsxocvd0yzACHc
	Yqecv79pdliWEUrU700Q64L9c0SzIlGrB2v5V+XSNqtTMlveoa0eLRm6TVD7Fx2imRAMGy20k8i6Y
	Mdj1FNojOJigqoBFQpcMYusx/TxrWRsfWfmXioqHbVG6SZaYlcdN83Kv7l6bRMEW84YxfnK/GseOs
	el3pbnPX3An/HswP08oII73PhrakRVzIOlbh5ntYhGEFQxYm4BiCb7iM9z/1WHF2BEZ9E1UGVCN80
	5kOt/ZMjfOZMUgvLFsT4wiWYeDDsnd2UKHqY72cxE2Ut2uNjWKGsH24LUHCCgBnhnv9lUoQA5/9Cb
	et4tRzp/U6MzCNMliKcw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x7W0u-0000000E79U-250C;
	Fri, 18 Sep 2026 10:40:16 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x7W0t-0000000E78t-10wl
	for linux-phy@bombadil.infradead.org;
	Fri, 18 Sep 2026 10:40:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=WFPu2RI6hiDBD6/m0GKoUaVlJ12SxA5BFYsofXPkU+Q=; b=BsbkK5McmuRPgcOwBig5+yjKXp
	QTwDqF7eYbI12tAdosXDV3Zs3jmY7eCerlWTKWXFwnxoK3T38Yq2ehEhTmnBf97hvUpzhIu3z4Wkq
	s7+KAci3tH2tOgVD1dMmol1oe/lQCyJr794zEqk4+81tm7Dxv3KaHrjO174soQx/RHJ+hMpv3mchz
	b1skNUOTrwESHi0dyJuhwb5VfhCZtP4UILhv34/lvpQrral1PYlDLKq2urKIs5I+bfnPc6IkGj/wr
	z/2LcZ/GDmfEj0DLFlG6P9bp0FwVJJTKTpRg1gvQF8IOjwtpFPvn3LQTiK+ss455lm7ZB8jJYLY/W
	sopGTBoA==;
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by desiato.infradead.org with esmtps (Exim 4.99.2 #2 (Red Hat Linux))
	id 1x7W0q-00000009wVu-15JZ
	for linux-phy@lists.infradead.org;
	Fri, 18 Sep 2026 10:40:14 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 68I9ddve3801902
	for <linux-phy@lists.infradead.org>; Fri, 18 Sep 2026 10:40:10 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	WFPu2RI6hiDBD6/m0GKoUaVlJ12SxA5BFYsofXPkU+Q=; b=UF1ExfZNM8odd+dp
	iybtbJGMm3mS63gkUMW5jdU3EU0nHKFctcH6Xz+BsUqWXzjzRON5bm7lUTkjniPF
	g8c11R78qbzKtlZUffFhZIwddJs2DGtClSXFUrZRA6N+ABUDnRLF0Ye+zr4StahU
	cEKQzub940ny15PiaL41gFjNhFw1swNIpBMFIXsWtOw1FeYFTDozFYZyWer0ckpw
	AaifSiSAi/75s1yiYNBk+Dg3xUKlB8VOiDLb5BDdVsQx2U926U+IKKP1jwrnRL+c
	MInAMZ25YP1rqNqyqzPrNZE54PpzgM7OfgAR5McB8B5oSEHIVLK9nvW5R0Au3Brv
	Xqq3FA==
Received: from mail-pj1-f72.google.com (mail-pj1-f72.google.com [209.85.216.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4grq2ku4ty-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 18 Sep 2026 10:40:10 +0000 (GMT)
Received: by mail-pj1-f72.google.com with SMTP id 98e67ed59e1d1-38e54b6556aso911232a91.2
        for <linux-phy@lists.infradead.org>; Fri, 18 Sep 2026 03:40:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1789728009; x=1790332809; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=WFPu2RI6hiDBD6/m0GKoUaVlJ12SxA5BFYsofXPkU+Q=;
        b=j5v1Omlr7+f8MbCOyss9PtWx1USyjrIqZfBcEJR8Vx3vm1D3beVEKLNhtbwaqDu3yO
         E9Ma723tugLSPWactr87Qlv+TtN+57ejoF9dLbn8Pa2yVArkUj0pAtxqUsd8J/RXWEDl
         ak9NWFiYtR2gheR6hHYgi/Jt6geSoP/rxgZn3xzaVdL3df5+aX3RjDzagaIaVKF4i8Dm
         /FkjP+/MFm43U6jU22k+5d6U1UieSWeqzprP9zraemajO8DQRINcuoF+5/4g7TdnQ8AU
         CXLHml2NWPdFwIiQyqbJz8WFQk3dOy37H+yWRZBn64/5lMW6XVMYIqB9AFAsZDb2/fV3
         9FpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1789728009; x=1790332809;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=WFPu2RI6hiDBD6/m0GKoUaVlJ12SxA5BFYsofXPkU+Q=;
        b=Tg8qJDmPn9WZ8snvO5xas4BagbBIu7M5GDiAZnFUXrXl0MW6GlhcgK8DrYAmZwSqdN
         /zY7gKHwStElCRY3mUYp+OvNPGeCfHJDlZTOzgOPZWY5A/O7ae4xFt+roZb0shwaMh3B
         2TXWVyxrx6gSoHaXZemjNpujKsWV84rTcIcazme1ykgKEViEB5EOToypWkjPX0Xk2JBH
         UnqqsdYF2v70IwEQkcEt3+GdZHJrnz1ZCvw8ovmOFpnkyRvxuOmrViUN6ykImKDq54v3
         GgYDqADGfTtA0fPMdEchtlMPP0RNM8z5y6GqHtMv9iQzg7b+JNTSiFaapuQHBO8Oeyoh
         gKNQ==
X-Forwarded-Encrypted: i=1; AKwUvBwPXnGLNd7dO+IPqV37EspHKYrYfoUTb77iMjMXwBsXusLp5WSq4TjmH6IFANGUOpOV4bOCOdGwrKs=@lists.infradead.org
X-Gm-Message-State: AFuF++lnfjYck+mOajjZ+wVvouVP14T/oioYDWA8ilzCZeuXNGxZ0dUf
	7pvzj5FyHD1xl4GA5oo2ooCh/SRLFxL6p4C1OXCdbjEukEqeDeUlwFPVLDfZ1u9eT8jvVM4AU+K
	lujyhthudIIqTCRsLKrAq6iG095d7LuY6qbunt61geo19fZc/YS7YfY2K44E2lDmgaUVR
X-Gm-Gg: AYBFou07fWvnxsIDRZk6Bl60R5/HXyPl4onhUd51+0atecdbH7CrF+gpZdohpX9DrSX
	xwJuVxAavooh1kg6Kt8r2x2fHKIwUhtSe6vjei9+/tJNJTeNbhcNiyAGEOjBOjpZMr4yLIeKbSK
	1CpjezNpblhYSLZD4E4Gu/oDpUuTViBxhe39JsKp9QVvs1oBxTClwPqC8mS/Z6MczRdFyHi0GFi
	btaRfU3Dzc0TOjBC7OgKO9RHjsmuDfmx++mKMY+A8fo2QsPqjc2aBrjxZqVDcXgnDQRWY6eh+L2
	AbefS+J8x8luVOqi6mxGZ7x/ZmPtMQDWZHT6oSOF2pe7Z05FudT7mChGeqr7ZM22aaFc6G3eTnI
	B/C7ClZYPlWHbc8vBWRY5bA6LdQ==
X-Received: by 2002:a17:90b:2b43:b0:39e:1ff0:331b with SMTP id 98e67ed59e1d1-39e54d37ad0mr4977660a91.2.1789728009088;
        Fri, 18 Sep 2026 03:40:09 -0700 (PDT)
X-Received: by 2002:a17:90b:2b43:b0:39e:1ff0:331b with SMTP id 98e67ed59e1d1-39e54d37ad0mr4977586a91.2.1789728008619;
        Fri, 18 Sep 2026 03:40:08 -0700 (PDT)
Received: from [10.213.101.15] ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-33c286d98e7sm4020702eec.9.2026.09.18.03.40.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 18 Sep 2026 03:40:08 -0700 (PDT)
From: Pradeep P V K <pradeep.pragallapati@oss.qualcomm.com>
Date: Fri, 18 Sep 2026 16:09:10 +0530
Subject: [PATCH v2 4/5] arm64: dts: qcom: glymur-qcb: Enable UFS
MIME-Version: 1.0
Message-Id: <20260918-glymur_ufs_qcb_enablement-v2-4-16619f7e36a6@oss.qualcomm.com>
References: <20260918-glymur_ufs_qcb_enablement-v2-0-16619f7e36a6@oss.qualcomm.com>
In-Reply-To: <20260918-glymur_ufs_qcb_enablement-v2-0-16619f7e36a6@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Alim Akhtar <alim.akhtar@samsung.com>,
        Avri Altman <avri.altman@sandisk.com>,
        Bart Van Assche <bvanassche@acm.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        gopikrishna.garmidi@oss.qualcomm.com, jagadeesh.kona@oss.qualcomm.com,
        Abel Vesa <abel.vesa@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-scsi@vger.kernel.org, nitin.rawat@oss.qualcomm.com,
        sibi.sankar@oss.qualcomm.com, Taniya Das <taniya.das@oss.qualcomm.com>,
        Pradeep P V K <pradeep.pragallapati@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1789727970; l=973;
 i=pradeep.pragallapati@oss.qualcomm.com; s=20260911;
 h=from:subject:message-id; bh=I1mRwR7K7EnzLPFseGGbpmG4c+9ay/Pl6zNSd0sY/J4=;
 b=DfM4/laHLX4xA2mks5Zzb/g/4Wz3+mAzBmMZrZOblqmoTBlaIWSm4NNTAIkn7kzpKrmfwLqba
 W2aVf9BEHHNBGg51mkYE/u3/ijAPrIUhR5HVXUMZ1tEwXnoL5aCEHT3
X-Developer-Key: i=pradeep.pragallapati@oss.qualcomm.com; a=ed25519;
 pk=uyRUsge8nQMwf3iW/e/o0U8z9nWLCMm1MGKxEftztic=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwOTE4MDE0OSBTYWx0ZWRfX0t/ers3Mx8qj
 4Ve6EAQt0fdi/EeNLW1b4m4J4FxCOrPClDC1mdCWiZP+cTWKPqYqSVZkS3C5hTlmqkek1+Rgvhe
 YuAVlL3gcXc0SVCRc9JO7vG+QmA/EPiXzezoo/6Yri7EyIpH9UIQmCOrzJMBsRubsMDH+ccLTy8
 himKwDkG88tTBAWJoRxTjOf4Y/Wjz95JeX/dOp4WpFnbcGyL46RfFwuAQApkRXvrwSiHXqyYDAM
 ppQQYqCSJT3D//R5cOWUFyXQVgiduxE0FzOLuX4gIdK2sYUOA8xUSKrqL+ZaKnEuMOFZlT00o+T
 04Hc2chMI34s2PGmiPEHSAgcXNj+iRkoKWUcvOa64Hg39Mu9xtW/fwkj8ygJtr9upxNcvOiL9yW
 NgBcCnp3rDQeTTsVLD5uxhCh5rmagZLz0DAbZ926DH9SJxKeh3LsuTVQKehacgKN1INr+iKt0kp
 ZjZCvn3DRJbZvH/q9iA==
X-Proofpoint-GUID: UpmnZ2k-STyP0GxaOLEltsZbrSXu8wF7
X-Authority-Analysis: v=2.4 cv=bcD+w+PB c=1 sm=1 tr=0 ts=6aad150a cx=c_pps
 a=RP+M6JBNLl+fLTcSJhASfg==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=VdqzKS8jKosA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yx91gb_oNiZeI1HMLzn7:22
 a=EUspDBNiAAAA:8 a=cMKPt8sKVRzp0kMMbBYA:9 a=QEXdDO2ut3YA:10
 a=iS9zxrgQBfv6-_F4QbHw:22
X-Proofpoint-Spam-Info: AW1haW4tMjYwOTE4MDE0OSBTYWx0ZWRfX5XhMUyVDeoi7
 Myk5IO61/ZUd/rMcP7gyENIKo1bbXpwr74V2/+1v0C1FzHAjMf3X4nqk+Kaahk9/Se3cQf0w8nr
 rgSGMCneS5sJ5rAkz4rJI/ilygMLvtg=
X-Proofpoint-ORIG-GUID: UpmnZ2k-STyP0GxaOLEltsZbrSXu8wF7
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-09-18_03,2026-09-16_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 clxscore=1015 adultscore=0 suspectscore=0 priorityscore=1501
 bulkscore=0 phishscore=0 impostorscore=0 lowpriorityscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2609040000 definitions=main-2609180149
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260918_114012_666145_D973652A 
X-CRM114-Status: GOOD (  10.16  )
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

Enable UFS for glymur-qcb board.

Reviewed-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
Signed-off-by: Pradeep P V K <pradeep.pragallapati@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/glymur-qcb.dts | 18 ++++++++++++++++++
 1 file changed, 18 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/glymur-qcb.dts b/arch/arm64/boot/dts/qcom/glymur-qcb.dts
index 17d8ff3aed23..f17181bfeadb 100644
--- a/arch/arm64/boot/dts/qcom/glymur-qcb.dts
+++ b/arch/arm64/boot/dts/qcom/glymur-qcb.dts
@@ -697,3 +697,21 @@ bluetooth {
 		vddrfa1p8-supply = <&vreg_pmu_rfa_1p8>;
 	};
 };
+
+&ufs_mem_hc {
+	reset-gpios = <&tlmm 250 GPIO_ACTIVE_LOW>;
+
+	vcc-supply = <&vreg_l17b_e0_2p4>;
+	vcc-max-microamp = <1200000>;
+	vccq-supply = <&vreg_l12b_e0_1p14>;
+	vccq-max-microamp = <1200000>;
+
+	status = "okay";
+};
+
+&ufs_mem_phy {
+	vdda-phy-supply = <&vreg_l1c_e1_0p82>;
+	vdda-pll-supply = <&vreg_l4f_e1_1p08>;
+
+	status = "okay";
+};

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
