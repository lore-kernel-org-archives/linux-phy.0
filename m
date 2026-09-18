Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C9D69C982D9
	for <linux-phy@archiver.kernel.org>; Fri, 18 Sep 2026 10:40:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QVkuGS9GtGYEPnNp2MN0eeBe+/3rebMV9N74ueDM83c=; b=O5ayMXPVKc1aej
	TKMJaHpM+KWn40g0Bmwkx6l9Vq9YiAl4swg3V8Sj44J5w7hLPTvzEr3zAund7wnBa9Z8kAe47KqPv
	zdI5TjzzFEFYSoGYMdHLIoWU2wzIGZ56T4X3pxKb204xoaJv6hXN1PQnTUD+om+gxf0I61kLg18rf
	ZqD6mEnMijCCr1bI0K3HlhLvCG7siMCAoJpj2KmkTUvexjSeHUghkGvGuj2rBW+npEjb10G2tnK2p
	1dmPli9tDWlCf/O8lwNnFqygyBo/GoxY/x8WddQ8w7aVkpKZpH4/caO6xiPtliISA8SzNmDy2M2X1
	B54089gYeIlfgy7MS/OQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x7W0o-0000000E77e-1i0R;
	Fri, 18 Sep 2026 10:40:10 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x7W0m-0000000E77D-2yQ0
	for linux-phy@bombadil.infradead.org;
	Fri, 18 Sep 2026 10:40:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=91y9vS6cgne0toKjGomx+H9dmRQBOGswYip+3K3Ykrs=; b=SnZs+FtkQLwk8h+mpv3Pr9Z5kz
	rHAhWDgnjn+IaFXvZ7YHsJlyTGokg6Ph4T14hiTSZUsLtG+vTTswLTIYRge0fgavnPwx/iRh34eP/
	f3vYP+23Tjwkxuev1RaOVG/5DsceYl8byYbrTLABhNq5ynYDjJftOTHZgh1xRMYYnoFXqGS5GesPf
	TbSX+0HvRFP8VVizKKTSA/EdZufZpbJ7CtbM2HsysLhkaqJQofllMSaLtwPWraCVH1XUxldBedPuP
	RGW0ADVmnBnyEqn9SZUp9Xbjv6Ghl88veHUkrCJAcyrzQMyyVFL3prDAV/HoDUzTMzqNooqsdd2UP
	sy/T+ZPQ==;
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by desiato.infradead.org with esmtps (Exim 4.99.2 #2 (Red Hat Linux))
	id 1x7W0j-00000009wVT-3PrF
	for linux-phy@lists.infradead.org;
	Fri, 18 Sep 2026 10:40:07 +0000
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 68I9dWNs3747042
	for <linux-phy@lists.infradead.org>; Fri, 18 Sep 2026 10:40:02 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	91y9vS6cgne0toKjGomx+H9dmRQBOGswYip+3K3Ykrs=; b=cAMqhrx1jOolxKVX
	07KZYV/p+7qUx9y0NAUrpMAL3xcsATX9AOv0qAWm4k8XnPcZT5WuhSkMc2qruWg6
	s6Gg/5nZm5XyThU8NB9Z+SSh3QgMMz4HaH7XnrOqWWYum/oELPe4MVb9Wm+Pz3af
	LK7lif5FHAUTGdxg5ooRZVtGaRaSoLlSQ6TKJeFSoC+47mA/M8R2Tr9nG3dkQXLH
	soB4T5OaFRC4JuuwTMmiM60ap7D2qrou9UDmrKLWeL2rzaEqo2te21iSughBcrDd
	IAwICjuBu5losUlS5O2Ie8kwQXLrr7y3ZaxHzvjQ3/WJBMW4c1FwS4i+cNOCtqMl
	nQ3vMw==
Received: from mail-pg1-f197.google.com (mail-pg1-f197.google.com [209.85.215.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4grmv5kqsr-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 18 Sep 2026 10:40:01 +0000 (GMT)
Received: by mail-pg1-f197.google.com with SMTP id 41be03b00d2f7-cc489e7a701so841168a12.2
        for <linux-phy@lists.infradead.org>; Fri, 18 Sep 2026 03:40:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1789728001; x=1790332801; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=91y9vS6cgne0toKjGomx+H9dmRQBOGswYip+3K3Ykrs=;
        b=Hpd4auFKUXDz8jh7ZKY0wbaRKMFxICbogfrzRzvvbh+5mslD7cKUDSDYC8lNJBYij+
         X8TuNuPgVGI4HN6/kkNW0Prv8xCLAtvBjp+/QKyV4U2JpsYnAMl17keG1+kF8nvNL+Pj
         a7+S5HiL+3cvzXVv8VXS/AzxwIGsBJgPwUbxHnGi+98omwZp1G1Ut+C1r3E0eh7lZnTB
         8muW6RXhGjTZrrm97HWVlJ4iSIT5j+hexvriVtVli4FB5M+80/ZPIZgyF08cvhxSR/co
         CWX5jsI+CKtSHp9VwKsOPqV/VVsYaRbGIpjJl5kz/VsdhBOVs0ZKFhToEHqp0d0QH5q+
         roWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1789728001; x=1790332801;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=91y9vS6cgne0toKjGomx+H9dmRQBOGswYip+3K3Ykrs=;
        b=JcpgHB/ypcjtVVMxUbTZOfnc7XQeqnsemhBZh+4YsmQ0YKWyzLt48rWdl3eEB/s+Ri
         l5NGrvEDgNHO/oS05eW/LWK7ULWrgz+yuEwsg7E/h3aMx3JpV62gF0nY7yZiCAlRWK9r
         1p2Dwp/DVO0v4IWLTBsgUSl4CJ6aYYNtjjjcSFdqJf6PRBMm9AHgA24EMtZBgSpuji49
         aT3l5i4Uc33pgQdSRbskAGOpx0InqPym5bcdarF2Nig3YxakVJA9SRAdHK3w9jB48AA+
         hRvMpi4hLZhyXr6APHkl6xSHmMQq41WLb8LpfQRTv/mnA1ro9ssHUmDkxINofhm4dxnb
         sDkA==
X-Forwarded-Encrypted: i=1; AKwUvBzUjyaix0YIWu2Yoj33fTkWkVtmkQNGqPJZ5gN6LV2PqGpfGbPecUqIACNYFse0MsmUD+C1O8v6NPE=@lists.infradead.org
X-Gm-Message-State: AFuF++khkEB4OUC3dzyndKlG7LkobWZOdLXjTKVpuIng2Wf4utVuWFKQ
	HqiW8lFEAjTNcf8ky7rqSfzeHM5kfcejKyu8U2yeVgCOjVrFXFH0z/Ec3gAkIk/YHr9JEiqGief
	GMBLdtJaVGlDKiyitm5L6FUNxY4xhwhKZmJ1DTOhEaFPP/ybJAOzp3GNHqMLfQNngFDTe
X-Gm-Gg: AYBFou18ve42eGAoonXhxwwDqukd6WXRm0FFAGU1j33mc4q1+tVR5RAmneliCWM1F/J
	VUsuQk1KvE2dzIU+QYwVBWB/qkEMUfGhHX9mWAnY3a43NFMe7vK+mVNvLMuqOcfPN/EYAszmrQT
	iFSuucGnFcR4DQBTTLB+DQrNVJKy8ITbk0ShyAtX1QKBcKjrceqWh9NRAbXRaaCppwhp9gWDKg2
	cxgZw7GtrqwXyZCE5xfKVPDBLhLqdV88k4wEaQ+U5kMkqkRayOzfmrtAZUKgCV0cQ0wNAlxoI4T
	rkJu8NffU8AaipWCkQiWkbp1arqCehdVLqS2kgiOVDp3geek6Oo3qBT0kNFWBui1T2DjATufWFc
	nt73KA8bkfgZNf7vb2v/QWhVRFw==
X-Received: by 2002:a05:6a21:9090:b0:3c3:b57b:627d with SMTP id adf61e73a8af0-3dd8c33a760mr4745912637.12.1789728001269;
        Fri, 18 Sep 2026 03:40:01 -0700 (PDT)
X-Received: by 2002:a05:6a21:9090:b0:3c3:b57b:627d with SMTP id adf61e73a8af0-3dd8c33a760mr4745861637.12.1789728000859;
        Fri, 18 Sep 2026 03:40:00 -0700 (PDT)
Received: from [10.213.101.15] ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-33c286d98e7sm4020702eec.9.2026.09.18.03.39.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 18 Sep 2026 03:40:00 -0700 (PDT)
From: Pradeep P V K <pradeep.pragallapati@oss.qualcomm.com>
Date: Fri, 18 Sep 2026 16:09:09 +0530
Subject: [PATCH v2 3/5] arm64: dts: qcom: glymur: Add UFS nodes
MIME-Version: 1.0
Message-Id: <20260918-glymur_ufs_qcb_enablement-v2-3-16619f7e36a6@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1789727970; l=4407;
 i=pradeep.pragallapati@oss.qualcomm.com; s=20260911;
 h=from:subject:message-id; bh=X17ccHw+VbWj+Okmiex6XkU3F9Uxf+xlyknIrjgj49I=;
 b=eywfFGAb6dF7PysyGpiAKhEapuU/T6TygMc11WtLD7/nM4ti9htvj/EaHbnO1upJZ0lCjwTD1
 +YN1LA1d/x/BnHWAACNGlV2vDZTKWCatDkCYRpZxsTajzPGAHQ9XTfW
X-Developer-Key: i=pradeep.pragallapati@oss.qualcomm.com; a=ed25519;
 pk=uyRUsge8nQMwf3iW/e/o0U8z9nWLCMm1MGKxEftztic=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwOTE4MDE0OSBTYWx0ZWRfX4ga/LuNCudoS
 QS0l5HozRdmJtORIQWXNzswHLTTpt7KU+4ANUP2TkN1szWV3Oo0/RNAcvxQLZT3zJqaJVJgp9fL
 KcG88kT/I5tVZlRcmzs0wksVTrUr6wptLssDw75e7PER5UJ+keFqIIWNvSMUWdCR6SM+NAKlb7F
 4b4kgT+K7imMmuK/kpX3YEv17XQOxVvppdjvNPejgy/kju3APmmsIi25+pPy0INL+cBZsRiBKmT
 hIpVFcCI/r33PsDujyvf16VrBk9q/bXY7qmDmE2CAti/CeOWKbPBiumny9LrEvIwlsJX923UkbC
 8FB3cGpv3D1S/zQmEhVMbN7JW3yGPNNTHZleM8xq5Bg+T74NA6RRlTceDHkFk+QzXdvUh1iM+oK
 REnmQDXEi5PELDNRm/KTkgB/rjpkLswHt+yBidIQ6K2iFhEk4VO+FDRnIvki7eu/fJA/oS7fx2q
 m/gUozi+43Ny+KWIyZw==
X-Authority-Analysis: v=2.4 cv=E+5YNqdl c=1 sm=1 tr=0 ts=6aad1501 cx=c_pps
 a=rz3CxIlbcmazkYymdCej/Q==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=VdqzKS8jKosA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=YMgV9FUhrdKAYTUUvYB2:22
 a=EUspDBNiAAAA:8 a=7sHo3vQ6stv6frjssEUA:9 a=JqOrBNmfTE-P4NNt:21
 a=QEXdDO2ut3YA:10 a=bFCP_H2QrGi7Okbo017w:22
X-Proofpoint-ORIG-GUID: VjhJPTcDIjvWCp_YzZ6fGHKiXOkm1M-x
X-Proofpoint-GUID: VjhJPTcDIjvWCp_YzZ6fGHKiXOkm1M-x
X-Proofpoint-Spam-Info: AW1haW4tMjYwOTE4MDE0OSBTYWx0ZWRfX3ilXMEl2QvG4
 lKNHnHkIohytrIJelRB27xYMsBRNz2pwCaA6utZaxvcZM0E7gsqzWsMAIGH9IXOxicbJwEFuyQW
 56IBc8r7Oz5w8eCHH5OAkI60lC+FMQk=
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-09-18_03,2026-09-16_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 malwarescore=0 priorityscore=1501 clxscore=1015
 impostorscore=0 spamscore=0 phishscore=0 adultscore=0 bulkscore=0
 suspectscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2609040000
 definitions=main-2609180149
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260918_114006_244416_12970AF1 
X-CRM114-Status: GOOD (  12.47  )
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

Add UFS PHY and UFS host controller nodes for Glymur SoC.

Reviewed-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
Signed-off-by: Pradeep P V K <pradeep.pragallapati@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/glymur.dtsi | 125 ++++++++++++++++++++++++++++++++++-
 1 file changed, 122 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/glymur.dtsi b/arch/arm64/boot/dts/qcom/glymur.dtsi
index 624a9edd602c..b1d91903b0dc 100644
--- a/arch/arm64/boot/dts/qcom/glymur.dtsi
+++ b/arch/arm64/boot/dts/qcom/glymur.dtsi
@@ -812,9 +812,9 @@ gcc: clock-controller@100000 {
 				 <0>,				/* QUSB4 1 PHY RX 1 */
 				 <0>,				/* QUSB4 2 PHY RX 0 */
 				 <0>,				/* QUSB4 2 PHY RX 1 */
-				 <0>,				/* UFS PHY RX Symbol 0 */
-				 <0>,				/* UFS PHY RX Symbol 1 */
-				 <0>,				/* UFS PHY TX Symbol 0 */
+				 <&ufs_mem_phy 0>,
+				 <&ufs_mem_phy 1>,
+				 <&ufs_mem_phy 2>,
 				 <&usb_0_qmpphy QMP_USB43DP_USB3_PIPE_CLK>,
 				 <&usb_1_qmpphy QMP_USB43DP_USB3_PIPE_CLK>,
 				 <&usb_2_qmpphy QMP_USB43DP_USB3_PIPE_CLK>,
@@ -4103,6 +4103,125 @@ rng: rng@10c3000 {
 			reg = <0x0 0x010c3000 0x0 0x1000>;
 		};
 
+		ufs_mem_phy: phy@1d80000 {
+			compatible = "qcom,glymur-qmp-ufs-phy";
+			reg = <0x0 0x01d80000 0x0 0x2000>;
+
+			clocks = <&rpmhcc RPMH_CXO_CLK>,
+				 <&gcc GCC_UFS_PHY_PHY_AUX_CLK>,
+				 /* UFS and PCIE4 share the same clkref */
+				 <&tcsr TCSR_PCIE_4_CLKREF_EN>;
+
+			clock-names = "ref",
+				      "ref_aux",
+				      "qref";
+
+			resets = <&ufs_mem_hc 0>;
+			reset-names = "ufsphy";
+
+			#clock-cells = <1>;
+			#phy-cells = <0>;
+
+			status = "disabled";
+		};
+
+		ufs_mem_hc: ufshc@1d84000 {
+			compatible = "qcom,glymur-ufshc",
+				     "qcom,ufshc",
+				     "jedec,ufs-2.0";
+			reg = <0x0 0x01d84000 0x0 0x3000>,
+			      <0x0 0x01da0000 0x0 0x15000>;
+			reg-names = "std",
+				    "mcq";
+
+			interrupts = <GIC_SPI 265 IRQ_TYPE_LEVEL_HIGH>;
+
+			clocks = <&gcc GCC_UFS_PHY_AXI_CLK>,
+				 <&gcc GCC_AGGRE_UFS_PHY_AXI_CLK>,
+				 <&gcc GCC_UFS_PHY_AHB_CLK>,
+				 <&gcc GCC_UFS_PHY_UNIPRO_CORE_CLK>,
+				 <&rpmhcc RPMH_LN_BB_CLK3>,
+				 <&gcc GCC_UFS_PHY_TX_SYMBOL_0_CLK>,
+				 <&gcc GCC_UFS_PHY_RX_SYMBOL_0_CLK>,
+				 <&gcc GCC_UFS_PHY_RX_SYMBOL_1_CLK>;
+			clock-names = "core_clk",
+				      "bus_aggr_clk",
+				      "iface_clk",
+				      "core_clk_unipro",
+				      "ref_clk",
+				      "tx_lane0_sync_clk",
+				      "rx_lane0_sync_clk",
+				      "rx_lane1_sync_clk";
+
+			operating-points-v2 = <&ufs_opp_table>;
+
+			resets = <&gcc GCC_UFS_PHY_BCR>;
+			reset-names = "rst";
+
+			interconnects = <&aggre2_noc MASTER_UFS_MEM QCOM_ICC_TAG_ALWAYS
+					 &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>,
+					<&hsc_noc MASTER_APPSS_PROC QCOM_ICC_TAG_ACTIVE_ONLY
+					 &config_noc SLAVE_UFS_MEM_CFG QCOM_ICC_TAG_ACTIVE_ONLY>;
+			interconnect-names = "ufs-ddr",
+					     "cpu-ufs";
+
+			power-domains = <&gcc GCC_UFS_PHY_GDSC>;
+			required-opps = <&rpmhpd_opp_nom>;
+
+			iommus = <&apps_smmu 0x460 0>;
+			dma-coherent;
+
+			msi-parent = <&gic_its 0x460>;
+			lanes-per-direction = <2>;
+
+			phys = <&ufs_mem_phy>;
+			phy-names = "ufsphy";
+
+			#reset-cells = <1>;
+
+			status = "disabled";
+
+			ufs_opp_table: opp-table {
+				compatible = "operating-points-v2";
+
+				opp-100000000 {
+					opp-hz = /bits/ 64 <100000000>,
+						 /bits/ 64 <0>,
+						 /bits/ 64 <0>,
+						 /bits/ 64 <100000000>,
+						 /bits/ 64 <0>,
+						 /bits/ 64 <0>,
+						 /bits/ 64 <0>,
+						 /bits/ 64 <0>;
+					required-opps = <&rpmhpd_opp_low_svs>;
+				};
+
+				opp-201500000 {
+					opp-hz = /bits/ 64 <201500000>,
+						 /bits/ 64 <0>,
+						 /bits/ 64 <0>,
+						 /bits/ 64 <201500000>,
+						 /bits/ 64 <0>,
+						 /bits/ 64 <0>,
+						 /bits/ 64 <0>,
+						 /bits/ 64 <0>;
+					required-opps = <&rpmhpd_opp_svs_l1>;
+				};
+
+				opp-403000000 {
+					opp-hz = /bits/ 64 <403000000>,
+						 /bits/ 64 <0>,
+						 /bits/ 64 <0>,
+						 /bits/ 64 <403000000>,
+						 /bits/ 64 <0>,
+						 /bits/ 64 <0>,
+						 /bits/ 64 <0>,
+						 /bits/ 64 <0>;
+					required-opps = <&rpmhpd_opp_nom>;
+				};
+			};
+		};
+
 		cryptobam: dma-controller@1dc4000 {
 			compatible = "qcom,bam-v1.7.4", "qcom,bam-v1.7.0";
 			reg = <0x0 0x01dc4000 0x0 0x28000>;

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
