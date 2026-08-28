Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E123EC61DD9
	for <linux-phy@archiver.kernel.org>; Fri, 28 Aug 2026 14:06:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=u0IJ6FGfFXx3kz2z2/juI54/xEgz27tz+uY+TlKgmT8=; b=aBrnT/ufe0Rx2d
	g4B+5Y2xJZkb8YLrUPrKgmc/rK8QGOtfFFUZBeaB/A/gbDUWHbLn/KehHPKxgRjwVqJOMQ1EtOuop
	wARt8VGBZ/g9dg0ie1r1bdKxigMxY+rMHV572Fw/bhc3uov09wqBM4hOlXWam4FqY9WtSjMWWDwtf
	QZwWzJEBFV0T0wFf9HFF3fMddgvu5QA2FD1tAUzuyT4Gl9XOktfQ37UiHXctTvdC1jMj5LFLZK19Y
	ZqF4qh56nwKx0XOZMtHgvClVQ/HmsmN5bRL+HAVNHZmivbK21strEVs/BT2EwSpzFTVrQ3N+zLP+M
	dOd0qRucai7TRO5ss2wQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wzxDZ-00000005wck-3jTd;
	Fri, 28 Aug 2026 14:06:08 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wzxDW-00000005wbP-3xy5
	for linux-phy@lists.infradead.org;
	Fri, 28 Aug 2026 14:06:04 +0000
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 67SDkojS2970069
	for <linux-phy@lists.infradead.org>; Fri, 28 Aug 2026 14:06:02 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	yBqLcLJpcQf9IwGh9XzxarcrFL0njgSazFzqQcBJXIY=; b=KG8n+NSbm3/ekFTi
	XjDzSOSlIkJrCWMl4mnUnpeFcYwMi9lljyPaxuXBPdfvTGHagV0RJ+DcuIVX0k/7
	EqTykGQaBvFXlz5uTR8Cq7vNrgoulzie1AD66XMgTvs7qesn1fj2FIYya8QOrk4X
	Cl3yJJoRPl+JYHi67Mg24kJCOC2djAZ4JeedpPIdRcv3yZH+tiY6sBCHNSPpRc1t
	ERQGva2lUPer40/Nvn+BXaXRwCGMwaZwufXGUh4bWwLrilGPAdK05V3ogGS40c3h
	6UQi3C9tvuP8IagEKMnm8vaU4JzLVtQLosZOp7lf4T6CplXlX/Z0+2Uh564K5xeC
	FDxVAA==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4gb3hs248t-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 28 Aug 2026 14:06:01 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-52ee59064d2so17967431cf.1
        for <linux-phy@lists.infradead.org>; Fri, 28 Aug 2026 07:06:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1787925961; x=1788530761; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=yBqLcLJpcQf9IwGh9XzxarcrFL0njgSazFzqQcBJXIY=;
        b=c/tZNPtUDWMgnMPHegOudL9L9WYvRIyjX1jxuyIOLixVCZCM9Eh96uGlHlydwz3veM
         J8gZKVaRWSexloqNXhmKMqykWO87f6mcdVPe8coB/XLWpjm0ooIUXGVBHiuSB1hrwE3x
         /y6+FYVtQdPIvSlSW3vlKwT0bJKNL5+chytia4dbg4atrehdhg23wgWIoFMlIf/KXYxq
         HqxRc4z7vHRLgGQ20cCsCn6m8qvk+qax2Er4UyXThb0081BHvXsUJiJYK/cVowRXH4o3
         5Wevs3B8E0FFHJABrzcNAgFwe7ax3fkXHOfbm1KS8meUn5fpRLg9gRFS6M2UkiVNJFEa
         XH5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1787925961; x=1788530761;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=yBqLcLJpcQf9IwGh9XzxarcrFL0njgSazFzqQcBJXIY=;
        b=loyIWxQqwEzDYcvIgo/Rtf6KgEg9It+jGjsWRa3RgM7juUYt/nLZUuHOAU5lVyKu5C
         2fBBSTv3LP+AH9pa2e0+Z9+ghdEUTK0BmkUnzV16CwBcsedDUTZpt2sPRC3Q1rrXxM4E
         XDORK8DE8J0DQ75LYQDtSN+sCTg5fcZ+vCMVshZ8L1v0fmEL/CXEbrWOGlRnfygJ9q4D
         d2OerFFz327pR5pZVUsjZFNcIWK9gmXWMfKutmX4K4Ar7EFpMPMsxAH9TnLeVjqQQ75j
         BZXh53YpL+47J7cws/zKpBeSVpCjuElF36KMrng2mgUw7gzfabiXMOtQTdXsLv1mzCyv
         dFuA==
X-Forwarded-Encrypted: i=1; AHgh+RrJTuW4prpTKPQtxXplkKV/qXvzUUJ4aOrhcw7VnovqwkYmnuRjCiiXb74bI6CeJHPJjCzI5CWiFW0=@lists.infradead.org
X-Gm-Message-State: AFuF++kmjQPaPu+skZzmVSoz+Otu7wlXz569ggqXnWe92mzQVB/aCseg
	bXCyEZ/gNoyq4qLiXboOj+zRWZizftMjIs+Z2uwlc22JbO+PCd1CInkcirhNrGjFj4asEbReNfY
	NH07kuwA8BuF1AjGpUF3BXH7Zk/0jsPt5GwXf5rB6PIdVMa4IqW0rIOfK3sLej3zTxxMrM31fU1
	mh
X-Gm-Gg: AR+sD12q4Aop7BV//OdtqA5pfXy4Any031p/d2Ho0FHUFLPXpDE2ER1Fn0JmoLnkVTv
	SPsQHqe/2dUHah84PQVYfbpgTsjydVHROvb+AjZc1npW5j6mGfgVzdBFL9r75OxuTnka2Lf4k3b
	wPvneNuMf7MsrUExm+Dv5btptJwP4SGw7YOuK0wSBcl+mNpq3uKUafil4iatfJFPlU2mYHSJ2xX
	CuWMf16lERKhlSyHTM7cjXICpivdYNO2Lxu6M81FoWzG6biWrKTVJh4Kj9ObOgagyVuuSZxZrj5
	mBdcwkhF2QgkwuRzTgbR8/2ZTwUzGYNqEdpqWzZax+03bUfE3L6n9cn6muvC+RKKI7eccvk5U5k
	IUiQYQlOexWOWwt5KraN9HUE=
X-Received: by 2002:a05:622a:93:b0:52e:125b:9444 with SMTP id d75a77b69052e-52fa1d2d479mr171378161cf.17.1787925961111;
        Fri, 28 Aug 2026 07:06:01 -0700 (PDT)
X-Received: by 2002:a05:622a:93:b0:52e:125b:9444 with SMTP id d75a77b69052e-52fa1d2d479mr171377151cf.17.1787925960540;
        Fri, 28 Aug 2026 07:06:00 -0700 (PDT)
Received: from [127.0.1.1] ([178.197.219.214])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-482fbb20122sm3908633f8f.20.2026.08.28.07.05.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 28 Aug 2026 07:05:59 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Date: Fri, 28 Aug 2026 16:05:10 +0200
Subject: [PATCH RFC/DO NOT MERGE 12/12] arm64: dts: qcom: eliza-evk: Add
 native HDMI
MIME-Version: 1.0
Message-Id: <20260828-drm-msm-hdmi-eliza-v1-12-67843277de17@oss.qualcomm.com>
References: <20260828-drm-msm-hdmi-eliza-v1-0-67843277de17@oss.qualcomm.com>
In-Reply-To: <20260828-drm-msm-hdmi-eliza-v1-0-67843277de17@oss.qualcomm.com>
To: Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jesszhan0024@gmail.com>, Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, Krzysztof Kozlowski <krzk@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>,
        linux-phy@lists.infradead.org
X-Mailer: b4 0.16.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=3179;
 i=krzysztof.kozlowski@oss.qualcomm.com; h=from:subject:message-id;
 bh=u1bSkl1k9t9/uMluWadh6rXCGD8ZdDQlv9GwIeJhvIs=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBqkZWiqk9i/2WoIbJ17LnGMdKK+fQvUgAh6sj06
 ktkn1cAIaSJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCapGVogAKCRDBN2bmhouD
 12rLD/9OWEuFU/08pzSSIz37CyxP2BNBpkm6TcXV3cyOKweH89yiNHt116VRkSOjcw7v6UYh9ge
 cIPuWlOkOey4qczsNFyZW96/Q3hmWjYG52AW79+69OjEazJ3KQXtBNBtaUxquA82mw5LZGyQZB0
 JDbVhW+qarI504Ybb1+kk/ufWZzN893ewD8PxoGemngHPkAMjhydTGm/GNnODoWjZGIs3WqhM+W
 U2o6NgIbPMw6kA0eRQ3/Mb/XQCcCUlnf9nSefmCke2zFMg0UThx8vUG7t9zoWQOBVGSKnl3pS6G
 SFSZzA9bEk1iZtugWsZusVkFuanC7YhEYVaY8kCWBEiZtqekfqeIFiZs10dlcZUPuJOqP+ERJWc
 QheXQpG56d6fIQ6LaYUppo/CcQlNf4L61F7dOIdC6ZylIyPvEImq/lk0bhJujYonMoaLcxWfzNU
 ZA8Yje2oSnGX7CdedakIVS85i1CgqGggN7MpT6Eg/W0FY7vee3RtasdYwRhhTEVNlIpftZL6x80
 TovlB4MP7qb4+Eba8s5YD7gVF9KzuQRUCJjxLlgrzCzvraDnolpGoU5NzsXq51TRve80I/RksMz
 BvqG2ORce0tgbblhAsvS1yTYIcu9JnNiVdMjuwlcSYbVFGbTLeG70Kvt0rpzneMYErx+PnntueH
 BfCH6tgo8jqWA3w==
X-Developer-Key: i=krzysztof.kozlowski@oss.qualcomm.com; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
X-Authority-Analysis: v=2.4 cv=XKYAjwhE c=1 sm=1 tr=0 ts=6a9195c9 cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=+bKQE0WJfmhK2875HamI0Q==:17
 a=IkcTkHD0fZMA:10 a=Sv0fKeRqtYgA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=ZpdpYltYx_vBUK5n70dp:22
 a=EUspDBNiAAAA:8 a=O_mqdUvEFfx1mi-XM6MA:9 a=QEXdDO2ut3YA:10
 a=uxP6HrT_eTzRwkO_Te1X:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwODI4MDEyMiBTYWx0ZWRfX+JiFTx1VvYHG
 pyo2o14lZRhvGwayVCUOQErQpImf3KKvAVmplzw2MUO9nGo7sx7xmNeDNbc2nt/IaudAxx2jhk1
 7ZH+VW3LM6GktLKlIwYNkcgz42U8HavxT3/5XGqp7/c0dku0dra4Zcl8xKL0dvqBhwq27gpe9Rf
 hz8cDQpy5OLoro38pkWUFnFs9a+VlZiX3xYtezGVg4HpfkWXF38lJWDidLwbU+KsQ65fDpfKlf0
 yKYpn0xXgTRYGSArShvfu2n80IAPijcHZjOPMpu4nNO1O4bO/Qzz0JJaKCvFzrqDfHBBDBaVGwD
 6oDUlDWshfc74K64hWBqtnbK/K86aj4Yur6zVHa3qzaf8GX42SWeKmR5wjjR8eKOnlLdpxzYNFr
 sHZNSubZH6nA4a7vVH3mCCx5ylVx5CRs4yUPEzzRFDz0c7OWsM51UNcLFR5dbV7aH3SvOTEa4Cr
 JLC/Ra1ukOq13ERSGOQ==
X-Proofpoint-Spam-Info: AW1haW4tMjYwODI4MDEyMiBTYWx0ZWRfXwo+9e0m5Zl0Z
 wf1ZphQYSkSpZkLF6qXIHgSC1D6W2h+YYP6yhpdDYzHXWpfNBjzlQZhuVGcCLK/D09Fa0GUC6F+
 xAoA6rJng7HD/Sjm3gI7cjXsdiOg6Ac=
X-Proofpoint-GUID: owBYDk7A8Xh81uHFYFksAxar73FPbBvK
X-Proofpoint-ORIG-GUID: owBYDk7A8Xh81uHFYFksAxar73FPbBvK
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-08-28_04,2026-08-27_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 lowpriorityscore=0 clxscore=1015 priorityscore=1501
 bulkscore=0 adultscore=0 phishscore=0 suspectscore=0 impostorscore=0
 spamscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2606150000
 definitions=main-2608280122
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260828_070603_111289_FEDB769A 
X-CRM114-Status: GOOD (  11.41  )
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

Eliza EVK comes with two HDMI outputs: native eARC and via Lontium
DSI2HDMI converter.  Add the first one, with the 5V power supply.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/eliza-evk.dtsi | 103 ++++++++++++++++++++++++++++++++
 1 file changed, 103 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/eliza-evk.dtsi b/arch/arm64/boot/dts/qcom/eliza-evk.dtsi
index 2fc945658300..533d52ecaacb 100644
--- a/arch/arm64/boot/dts/qcom/eliza-evk.dtsi
+++ b/arch/arm64/boot/dts/qcom/eliza-evk.dtsi
@@ -12,6 +12,29 @@ chosen {
 		stdout-path = "serial0:115200n8";
 	};
 
+	hdmi_5p0_reg: regulator-hdmi-5v0 {
+		compatible = "regulator-fixed";
+		regulator-name = "hdmi_5p0";
+
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		gpio = <&tlmm 184 GPIO_ACTIVE_HIGH>;
+		enable-active-high;
+		pinctrl-0 = <&hdmi_5p0_state>;
+		pinctrl-names = "default";
+	};
+
+	hdmi-0-connector {
+		compatible = "hdmi-connector";
+		type = "a";
+
+		port {
+			hdmi_0_connector_in: endpoint {
+				remote-endpoint = <&mdss_hdmi_out>;
+			};
+		};
+	};
+
 	pmic-glink {
 		compatible = "qcom,eliza-pmic-glink",
 			     "qcom,sm8550-pmic-glink",
@@ -51,6 +74,34 @@ pmic_glink_ss_in: endpoint {
 	};
 };
 
+&mdss {
+	status = "okay";
+};
+
+&mdss_hdmi {
+	pinctrl-0 = <&hdmi_ddc_default>,
+		    <&hdmi_cec_active>,
+		    <&hdmi_hpd_active>;
+	pinctrl-1 = <&hdmi_ddc_default>,
+		    <&hdmi_cec_sleep>,
+		    <&hdmi_hpd_sleep>;
+	pinctrl-names = "default", "sleep";
+
+	core-vcc-supply = <&vreg_l2b>;
+	core-vdda-supply = <&vreg_l4b>;
+	vddio-supply = <&hdmi_5p0_reg>;
+
+	status = "okay";
+};
+
+&mdss_hdmi_out {
+	remote-endpoint = <&hdmi_0_connector_in>;
+};
+
+&mdss_hdmi_phy {
+	status = "okay";
+};
+
 &pm7550ba_eusb2_repeater {
 	vdd18-supply = <&vreg_l7b>;
 	vdd3-supply = <&vreg_l17b>;
@@ -70,11 +121,63 @@ &sdhc_2 {
 };
 
 &tlmm {
+	hdmi_ddc_default: hdmi-ddc-state {
+		hdmi-ddc-scl-pins {
+			pins = "gpio6";
+			function = "hdmi_ddc_scl";
+			drive-strength = <2>;
+			bias-pull-up;
+		};
+
+		hdmi-ddc-sda-pins {
+			pins = "gpio7";
+			function = "hdmi_ddc_sda";
+			drive-strength = <2>;
+			bias-pull-up;
+		};
+	};
+
+	hdmi_cec_active: hdmi-cec-active-state {
+		pins = "gpio46";
+		function = "hdmi_tx_cec";
+		drive-strength = <16>;
+		bias-pull-up;
+	};
+
+	hdmi_cec_sleep: hdmi-cec-sleep-state {
+		pins = "gpio46";
+		function = "hdmi_tx_cec";
+		drive-strength = <2>;
+		bias-pull-up;
+	};
+
+	hdmi_hpd_active: hdmi-hpd-active-state {
+		pins = "gpio47";
+		function = "hdmi_hot_plug";
+		drive-strength = <16>;
+		bias-pull-down;
+	};
+
+	hdmi_hpd_sleep: hdmi-hpd-sleep-state {
+		pins = "gpio47";
+		function = "hdmi_hot_plug";
+		drive-strength = <2>;
+		bias-pull-down;
+	};
+
 	sd_cd: sd-cd-state {
 		pins = "gpio58";
 		function = "gpio";
 		bias-pull-up;
 	};
+
+	hdmi_5p0_state: hdmi-5p0-state {
+		pins = "gpio184";
+		function = "gpio";
+		drive-strength = <8>;
+		bias-disable;
+		output-low;
+	};
 };
 
 &uart13 {

-- 
2.53.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
