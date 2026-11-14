Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F52E606A333
	for <linux-phy@archiver.kernel.org>; Sat, 14 Nov 2026 11:32:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=4eqbCkcr;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=mJvk41CI;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=UjjFZTdW
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=HPY9v9tUsyj794MbBvvsqFjnCX57JjYJ3skUQUyL/U4=; b=4eqbCkcrwoMUwEdcVSLaolcWT5
	5P+n0oHqaSJbKJgskLI+blTb8x14lbOvyjs/w/hOoGdTO+ESwt5U1OcAzm8qI+ex8yi9eX/ZdjxUI
	/m1+vUgyxXN1VoztOeXv1wvrqag/akzy2EfIh/Yqtm9stKuhZ7L3hN1MsC+BDjHfOb/U5pg4A3FPB
	6DWNlCiViM8HsTEZNMnj14SpHYjqa/ifKlh9HdnSj5+HyyIFxmVtEW77ZmLTn7lj3mVB961mdnbFK
	f+CZoeeymFQyXy36tAWbx6o59+u1G+2my7UApPJGU97JIvruBTIBVB/A2kxIc26Jl7ZByuxu+yb2R
	gjVzgP/A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xSBzD-0000000Fu0A-3X06;
	Sat, 14 Nov 2026 11:31:59 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xSBzB-0000000Ftzp-41F2
	for linux-phy@lists.infradead.org;
	Sat, 14 Nov 2026 11:31:59 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6AE9wUdm3717022
	for <linux-phy@lists.infradead.org>; Sat, 14 Nov 2026 11:31:57 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	v0jNKplJ/JN2Rsqva0YZR+0izIDDJlfUsWuCxqwL3Q0=; b=mJvk41CI30qQ2bFY
	Tz4LIpR3ys58Rxb8u0WK5k745GRSndK6jr+37Fn2bH5380U89TDALVfXtwrsg5KC
	SjK5qSA6naEH+DpHoSv0d1O1loUyWTbhdJHED6EVi3WsqJ6WNzx6gkGCjjP8Z09i
	za6QOLGuKFFftVKQiJ0fCcxIrKXa16ZHUM6JpDyTDdlcG03MqFOToS3iG5McgDlJ
	QR40ZtbHy3zSAw9h4wxJJV/QuOQDLk7WgH4Nz0RfpYV0RuxlfvunCKRv5mrZv1Yp
	A8Bc4ySDqzx9mrmZ1JbGkSLWGqmVWB9vjygXxqakRv43+hsoGO1v1d9q8ShfrAGa
	AAIntA==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hxhk20m6g-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Sat, 14 Nov 2026 11:31:56 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-5363fa3d3e4so38242731cf.0
        for <linux-phy@lists.infradead.org>; Sat, 14 Nov 2026 03:31:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1794655916; x=1795260716; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=v0jNKplJ/JN2Rsqva0YZR+0izIDDJlfUsWuCxqwL3Q0=;
        b=UjjFZTdW4TlGry5VZqI3Ml99aWWxUb9XLuEBc2Ipm3dPDIssH1oI33aP4l4gEIqGFW
         jctLQkf8Yta6j7c+vjezuXgzKxLPx1GvJLAKCVSjPZTLtn6KVeHUbZKUd8X9rVDu4+OE
         VKykaOYeiOoXmWozHGwo2cL3WiyetfRPTtrUSY4N9UFTycP8gyv/X0v+3/dMk9XrL8SI
         0spHNiLBJ08MJVD1dIlSRhXxcqGhuDHh5OkdJiz5hzhVjas9OCLtKDr9klfK+DcbpgvZ
         pKaqrdglERc4o89IS0OpEYeQtLPyaKNVRruV7auAfe47MUniD3LVPmThyEZqN3FEraUT
         6YAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794655916; x=1795260716;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=v0jNKplJ/JN2Rsqva0YZR+0izIDDJlfUsWuCxqwL3Q0=;
        b=O6FehQGILDmlDkX6ad9ZQoIJ/mRIzA1duTqkQxU1uPmjokzxpQAmEyyYf6/aQHAJa2
         ZHHDU3r4oNGn5sLtM6nAX2D9OQYP1/CZxgF5+70udRXn9dPAzxfgvsBbELlhABQHbyrz
         PqcnjBUbKn3d0BhCYYms2U4f2zy72xcwwhAIxFSXVvgnst6FcvhLfxhqaRMFeuWE9zjC
         3Br7MfF6r4zdCxTteaaipShiFGCHUgi+DImVw0Lx2JH2EGnXA2UI51XcQh4Heh1nptqj
         sBC/5FdZUpTgYMeBZFh9FzJvldqqk3LY4taMPx10WwhG9EPWX5/jves/eegDpld+2KFq
         SQvw==
X-Gm-Message-State: APuU4Z+g0UEipHBZUEPyNxPMbyEVHVgsh0xWrBAG2PA8L5na88g+bL9+
	3LzHf6kErGKBldr7ujNsIw8iWihc3NnsptwAiKGuKdUaucGWSQe1DpoVcPHdKu+KJL0JdGoKMhM
	EWKnoSISLMHuiX596vUqEc5hJneT9n2L5bXoVt/5IpTQF2VpnBslyVgByUvL3W7lKWI4W
X-Gm-Gg: AYBFou16Rz0ZP359UA+v1m3K5T1lCWHHx3Io4YFwzHE0RfIfRhA7A7j+Kutp7wgRr6l
	JbPr8NpamEu7lvnxmwvTEMKYnXWEihC0j4DmCCBEF9C8XVpErweWQn/wmwfSQhR789g8YIoWV90
	RKhHEZbKrlMaPRsV8crIIyRrUCPtsml/Ew7BvaevwcIJQqilMXxe80M7pNnYlSYtkxBElCEgjiU
	cyLlZ79+411OqouPRTb0IwOJCNtP4juolqW3Qgp0EogMLpGgtlGSqY+i0OOR9hHKQ/y3DNxdehp
	e322Z2h2uH2upHLznrM3yp+cB6EGwyS8vObtusJYz4dJadQWyNk4XmecMIJAqUG47a3ZPMyrxJp
	dU+PwsKCswrFdr39VSC2owtIePtAwY6STVFr+WHcPDxn5IRf0u3pd+dsApOXE0T3qVczXQVRrWx
	Oh7p4VUfc/BUYUStWk4AIKz8sXQyf0eHcy/IfVqz+g
X-Received: by 2002:a05:622a:17ce:b0:533:3d48:37ff with SMTP id d75a77b69052e-55ac8b9bab4mr74444621cf.49.1794655916226;
        Sat, 14 Nov 2026 03:31:56 -0800 (PST)
X-Received: by 2002:a05:622a:17ce:b0:533:3d48:37ff with SMTP id d75a77b69052e-55ac8b9bab4mr74444311cf.49.1794655915783;
        Sat, 14 Nov 2026 03:31:55 -0800 (PST)
Received: from WENMLIU-LAB01.ap.qualcomm.com (Global_NAT1_IAD_FW.qualcomm.com. [129.46.232.65])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-91f23d7ba48sm41389746d6.28.2026.11.14.03.31.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 14 Nov 2026 03:31:55 -0800 (PST)
From: Wenmeng Liu <wenmeng.liu@oss.qualcomm.com>
Date: Sat, 14 Nov 2026 19:29:31 +0800
Subject: [PATCH v7 14/23] arm64: dts: qcom: sm8750: Add CAMSS and CSIPHY
 block definitions
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-Id: <20261114-add-support-for-camss-on-sm8750-v7-14-8ff2a11835f6@oss.qualcomm.com>
References: <20261114-add-support-for-camss-on-sm8750-v7-0-8ff2a11835f6@oss.qualcomm.com>
In-Reply-To: <20261114-add-support-for-camss-on-sm8750-v7-0-8ff2a11835f6@oss.qualcomm.com>
To: Bryan O'Donoghue <bod@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Loic Poulain <loic.poulain@oss.qualcomm.com>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Robert Foss <rfoss@kernel.org>, Andi Shyti <andi.shyti@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Abel Vesa <abelvesa@kernel.org>, Frank Li <Frank.Li@nxp.com>
Cc: linux-phy@lists.infradead.org, linux-media@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-i2c@vger.kernel.org,
        Wenmeng Liu <wenmeng.liu@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1794655774; l=11296;
 i=wenmeng.liu@oss.qualcomm.com; s=20250925; h=from:subject:message-id;
 bh=mA12p6+0BaAaBmmoTCqr9HdeE3w7oVuYAMW32cshLe4=;
 b=a5SdZsNcCKdw+PEpuGD4Wj5B9w/ueeeN6cjjXMsVUaf1JwZV8IkoFV5IZQv/VqqCgR5YNszX1
 Y5Efn8vBM8CC92Xv3K4/vHJiU5WYO+x+O7CY9zsLk0NYHAfPCYKjnBh
X-Developer-Key: i=wenmeng.liu@oss.qualcomm.com; a=ed25519;
 pk=fQJjf9C3jGDjE1zj2kO3NQLTbQEaZObVcXAzx5WLPX0=
X-Proofpoint-ORIG-GUID: O-Nvj98PtrcW6_-t5F2Apwz2B7jOrqr1
X-Authority-Analysis: v=2.4 cv=QanzLcbv c=1 sm=1 tr=0 ts=6af846ac cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=C3Dk8TwHQYyIj7nOf9RCJw==:17
 a=IkcTkHD0fZMA:10 a=zJRp6_cAMcgA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=gowsoOTTUOVcmtlkKump:22
 a=EUspDBNiAAAA:8 a=1V0ga-s57FcybatlapcA:9 a=QEXdDO2ut3YA:10
 a=uxP6HrT_eTzRwkO_Te1X:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMTE0MDA0NSBTYWx0ZWRfX4c5Lr1uStWnT
 wxpx374Q8VUJKmDwV2MPRUe8TmeqQrS7Hbx9wFGXF0HF6pxOc0K21Ytwt39sDn1hst+S/6Z6HB1
 TNBZgvR+m1K4cctpjwzkE/VFAFgvLdSb6ibwzXHn17kA0/RGj+MiA6rJz9Gvp3yuE+BXLShw838
 Qaqf9qlkIEMg+WMdvY1JlVnE3QkXI+8eV9puJYKVBR1tHe4vpvQWz4Pu1bNEp6v1qU0FbgrC5Bk
 ukuCm+2SCfgOqfv457qjEy7AS7u3OkhPOEsic9OEMSopwZlO2MDI11H2H7XcsKzIC0Wd9gRMG/u
 9FUvPWKpEdb0rf30V0l6oA2EqPvJ0IOIv4wog3sMfvmvFA8UwhRJ/ywBTPXu4YK0dhtPRSFzsBg
 jhwovLPLs5bmi805bdQarob4bQ2S7o0rH3aMSiN+F+oquQOFTt6DfgXBbfJAUFuT9QBTb6iYTQC
 FLvz5G+1qo8a+DEQORw==
X-Proofpoint-Spam-Info: AW1haW4tMjYxMTE0MDA0NSBTYWx0ZWRfX2KJWOncS+GYf
 ntbBiqFPyxprzAv4savNO0iSJC/pYHfTg4tOsAFyvdAg2IlMp0YQvcDAeudoNZTKhCqmrvrtWny
 XuaWC54mkALgTisU9m3r3Y4DQ11g6I4=
X-Proofpoint-GUID: O-Nvj98PtrcW6_-t5F2Apwz2B7jOrqr1
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-11-14_03,2026-11-11_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 lowpriorityscore=0 clxscore=1015 malwarescore=0 impostorscore=0
 bulkscore=0 priorityscore=1501 suspectscore=0 spamscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2611040001 definitions=main-2611140045
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261114_033158_131479_6227D780 
X-CRM114-Status: GOOD (  11.08  )
X-Spam-Score: -2.8 (--)
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-16.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

From: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>

Describe the CAMSS and CSIPHY blocks on SM8750 so that camera pipelines
can be enabled by board device trees.

The camera subsystem contains:
- 6 x CSIPHY (CSI Physical Layer)
- 3 x TPG (Test Pattern Generator)
- 3 x CSID (CSI Decoder)
- 2 x CSID Lite
- 3 x VFE (Video Front End), 5 RDI per VFE
- 2 x VFE Lite, 4 RDI per VFE Lite

Signed-off-by: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
Signed-off-by: Wenmeng Liu <wenmeng.liu@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/sm8750.dtsi | 397 +++++++++++++++++++++++++++++++++++
 1 file changed, 397 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm8750.dtsi b/arch/arm64/boot/dts/qcom/sm8750.dtsi
index 401f9eceb38cb1a4a27f95bce08126e73ffe501b..e91f7f8377c0c37cd54e5e91585ef58a4f8a65a0 100644
--- a/arch/arm64/boot/dts/qcom/sm8750.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8750.dtsi
@@ -20,6 +20,7 @@
 #include <dt-bindings/interconnect/qcom,sm8750-rpmh.h>
 #include <dt-bindings/interrupt-controller/arm-gic.h>
 #include <dt-bindings/mailbox/qcom-ipcc.h>
+#include <dt-bindings/phy/phy.h>
 #include <dt-bindings/phy/phy-qcom-qmp.h>
 #include <dt-bindings/power/qcom,rpmhpd.h>
 #include <dt-bindings/soc/qcom,gpr.h>
@@ -3349,6 +3350,380 @@ videocc: clock-controller@aaf0000 {
 			#power-domain-cells = <1>;
 		};
 
+		camss: isp@ac04000 {
+			compatible = "qcom,sm8750-camss";
+
+			reg = <0x0 0x0ac04000 0x0 0x1000>,
+			      <0x0 0x0ad27000 0x0 0x2b00>,
+			      <0x0 0x0ad2a000 0x0 0x2b00>,
+			      <0x0 0x0ad2d000 0x0 0x2b00>,
+			      <0x0 0x0ad6d000 0x0 0xa00>,
+			      <0x0 0x0ad72000 0x0 0xa00>,
+			      <0x0 0x0ad8b000 0x0 0x400>,
+			      <0x0 0x0ad8c000 0x0 0x400>,
+			      <0x0 0x0ad8d000 0x0 0x400>,
+			      <0x0 0x0ac86000 0x0 0x10000>,
+			      <0x0 0x0ac96000 0x0 0x10000>,
+			      <0x0 0x0aca6000 0x0 0x10000>,
+			      <0x0 0x0ad6e000 0x0 0x3000>,
+			      <0x0 0x0ad73000 0x0 0x3000>;
+			reg-names = "top",
+				    "csid0",
+				    "csid1",
+				    "csid2",
+				    "csid_lite0",
+				    "csid_lite1",
+				    "tpg0",
+				    "tpg1",
+				    "tpg2",
+				    "vfe0",
+				    "vfe1",
+				    "vfe2",
+				    "vfe_lite0",
+				    "vfe_lite1";
+
+			clocks = <&camcc CAM_CC_CAMNOC_RT_AXI_CLK>,
+				 <&camcc CAM_CC_CAM_TOP_AHB_CLK>,
+				 <&camcc CAM_CC_CAM_TOP_FAST_AHB_CLK>,
+				 <&camcc CAM_CC_CAMNOC_RT_TFE_0_MAIN_CLK>,
+				 <&camcc CAM_CC_CAMNOC_RT_TFE_1_MAIN_CLK>,
+				 <&camcc CAM_CC_CAMNOC_RT_TFE_2_MAIN_CLK>,
+				 <&camcc CAM_CC_CAMNOC_RT_IFE_LITE_CLK>,
+				 <&camcc CAM_CC_CSID_CLK>,
+				 <&camcc CAM_CC_CSID_CSIPHY_RX_CLK>,
+				 <&gcc GCC_CAMERA_HF_AXI_CLK>,
+				 <&camcc CAM_CC_TFE_0_MAIN_CLK>,
+				 <&camcc CAM_CC_TFE_0_MAIN_FAST_AHB_CLK>,
+				 <&camcc CAM_CC_TFE_1_MAIN_CLK>,
+				 <&camcc CAM_CC_TFE_1_MAIN_FAST_AHB_CLK>,
+				 <&camcc CAM_CC_TFE_2_MAIN_CLK>,
+				 <&camcc CAM_CC_TFE_2_MAIN_FAST_AHB_CLK>,
+				 <&camcc CAM_CC_IFE_LITE_CLK>,
+				 <&camcc CAM_CC_IFE_LITE_AHB_CLK>,
+				 <&camcc CAM_CC_IFE_LITE_CPHY_RX_CLK>,
+				 <&camcc CAM_CC_IFE_LITE_CSID_CLK>,
+				 <&camcc CAM_CC_QDSS_DEBUG_XO_CLK>;
+			clock-names = "camnoc_rt_axi",
+				      "cpas_ahb",
+				      "cpas_fast_ahb",
+				      "cpas_vfe0",
+				      "cpas_vfe1",
+				      "cpas_vfe2",
+				      "cpas_vfe_lite",
+				      "csid",
+				      "csiphy_rx",
+				      "gcc_axi_hf",
+				      "vfe0",
+				      "vfe0_fast_ahb",
+				      "vfe1",
+				      "vfe1_fast_ahb",
+				      "vfe2",
+				      "vfe2_fast_ahb",
+				      "vfe_lite",
+				      "vfe_lite_ahb",
+				      "vfe_lite_cphy_rx",
+				      "vfe_lite_csid",
+				      "qdss_debug_xo";
+
+			interrupts = <GIC_SPI 601 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 603 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 431 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 605 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 376 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 433 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 436 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 457 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 606 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 377 IRQ_TYPE_EDGE_RISING>;
+			interrupt-names = "csid0",
+					  "csid1",
+					  "csid2",
+					  "csid_lite0",
+					  "csid_lite1",
+					  "vfe0",
+					  "vfe1",
+					  "vfe2",
+					  "vfe_lite0",
+					  "vfe_lite1";
+
+			interconnects = <&gem_noc MASTER_APPSS_PROC QCOM_ICC_TAG_ACTIVE_ONLY
+					 &config_noc SLAVE_CAMERA_CFG QCOM_ICC_TAG_ACTIVE_ONLY>,
+					<&mmss_noc MASTER_CAMNOC_HF QCOM_ICC_TAG_ALWAYS
+					 &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>;
+			interconnect-names = "ahb",
+					     "hf_mnoc";
+
+			iommus = <&apps_smmu 0x1c00 0x00>;
+
+			power-domains = <&camcc CAM_CC_TFE_0_GDSC>,
+					<&camcc CAM_CC_TFE_1_GDSC>,
+					<&camcc CAM_CC_TFE_2_GDSC>,
+					<&camcc CAM_CC_TITAN_TOP_GDSC>;
+			power-domain-names = "ife0",
+					     "ife1",
+					     "ife2",
+					     "top";
+
+			status = "disabled";
+
+			ports {
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				camss_csiphy0_in_port: port@0 {
+					reg = <0>;
+				};
+
+				camss_csiphy1_in_port: port@1 {
+					reg = <1>;
+				};
+
+				camss_csiphy2_in_port: port@2 {
+					reg = <2>;
+				};
+
+				camss_csiphy3_in_port: port@3 {
+					reg = <3>;
+				};
+
+				camss_csiphy4_in_port: port@4 {
+					reg = <4>;
+				};
+
+				camss_csiphy5_in_port: port@5 {
+					reg = <5>;
+				};
+			};
+		};
+
+		csiphy0: phy@ada9000 {
+			compatible = "qcom,sm8750-csi2-phy";
+			reg = <0x0 0x0ada9000 0x0 0x2000>;
+
+			clocks = <&camcc CAM_CC_CSIPHY0_CLK>,
+				 <&camcc CAM_CC_CSI0PHYTIMER_CLK>,
+				 <&camcc CAM_CC_CORE_AHB_CLK>;
+			clock-names = "core",
+				      "timer",
+				      "ahb";
+
+			interrupts = <GIC_SPI 477 IRQ_TYPE_EDGE_RISING>;
+
+			operating-points-v2 = <&csiphy_mxc_opp_table>;
+
+			power-domains = <&camcc CAM_CC_TITAN_TOP_GDSC>,
+					<&rpmhpd RPMHPD_MMCX>,
+					<&rpmhpd RPMHPD_MXC>;
+			power-domain-names = "top",
+					     "mmcx",
+					     "mx";
+
+			status = "disabled";
+
+			ports {
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				csiphy0_in_port: port@0 {
+					reg = <0>;
+				};
+
+				csiphy0_out_port: port@1 {
+					reg = <1>;
+				};
+			};
+		};
+
+		csiphy1: phy@adab000 {
+			compatible = "qcom,sm8750-csi2-phy";
+			reg = <0x0 0x0adab000 0x0 0x2000>;
+
+			clocks = <&camcc CAM_CC_CSIPHY1_CLK>,
+				 <&camcc CAM_CC_CSI1PHYTIMER_CLK>,
+				 <&camcc CAM_CC_CORE_AHB_CLK>;
+			clock-names = "core",
+				      "timer",
+				      "ahb";
+
+			interrupts = <GIC_SPI 478 IRQ_TYPE_EDGE_RISING>;
+
+			operating-points-v2 = <&csiphy_mxc_opp_table>;
+
+			power-domains = <&camcc CAM_CC_TITAN_TOP_GDSC>,
+					<&rpmhpd RPMHPD_MMCX>,
+					<&rpmhpd RPMHPD_MXC>;
+			power-domain-names = "top",
+					     "mmcx",
+					     "mx";
+
+			status = "disabled";
+
+			ports {
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				csiphy1_in_port: port@0 {
+					reg = <0>;
+				};
+
+				csiphy1_out_port: port@1 {
+					reg = <1>;
+				};
+			};
+		};
+
+		csiphy2: phy@adad000 {
+			compatible = "qcom,sm8750-csi2-phy";
+			reg = <0x0 0x0adad000 0x0 0x2000>;
+
+			clocks = <&camcc CAM_CC_CSIPHY2_CLK>,
+				 <&camcc CAM_CC_CSI2PHYTIMER_CLK>,
+				 <&camcc CAM_CC_CORE_AHB_CLK>;
+			clock-names = "core",
+				      "timer",
+				      "ahb";
+
+			interrupts = <GIC_SPI 479 IRQ_TYPE_EDGE_RISING>;
+
+			operating-points-v2 = <&csiphy_mxc_opp_table>;
+
+			power-domains = <&camcc CAM_CC_TITAN_TOP_GDSC>,
+					<&rpmhpd RPMHPD_MMCX>,
+					<&rpmhpd RPMHPD_MXC>;
+			power-domain-names = "top",
+					     "mmcx",
+					     "mx";
+
+			status = "disabled";
+
+			ports {
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				csiphy2_in_port: port@0 {
+					reg = <0>;
+				};
+
+				csiphy2_out_port: port@1 {
+					reg = <1>;
+				};
+			};
+		};
+
+		csiphy3: phy@adaf000 {
+			compatible = "qcom,sm8750-csi2-phy";
+			reg = <0x0 0x0adaf000 0x0 0x2000>;
+
+			clocks = <&camcc CAM_CC_CSIPHY3_CLK>,
+				 <&camcc CAM_CC_CSI3PHYTIMER_CLK>,
+				 <&camcc CAM_CC_CORE_AHB_CLK>;
+			clock-names = "core",
+				      "timer",
+				      "ahb";
+
+			interrupts = <GIC_SPI 448 IRQ_TYPE_EDGE_RISING>;
+
+			operating-points-v2 = <&csiphy_mxc_opp_table>;
+
+			power-domains = <&camcc CAM_CC_TITAN_TOP_GDSC>,
+					<&rpmhpd RPMHPD_MMCX>,
+					<&rpmhpd RPMHPD_MXC>;
+			power-domain-names = "top",
+					     "mmcx",
+					     "mx";
+
+			status = "disabled";
+
+			ports {
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				csiphy3_in_port: port@0 {
+					reg = <0>;
+				};
+
+				csiphy3_out_port: port@1 {
+					reg = <1>;
+				};
+			};
+		};
+
+		csiphy4: phy@adb1000 {
+			compatible = "qcom,sm8750-csi2-phy";
+			reg = <0x0 0x0adb1000 0x0 0x2000>;
+
+			clocks = <&camcc CAM_CC_CSIPHY4_CLK>,
+				 <&camcc CAM_CC_CSI4PHYTIMER_CLK>,
+				 <&camcc CAM_CC_CORE_AHB_CLK>;
+			clock-names = "core",
+				      "timer",
+				      "ahb";
+
+			interrupts = <GIC_SPI 122 IRQ_TYPE_EDGE_RISING>;
+
+			operating-points-v2 = <&csiphy_mxc_opp_table>;
+
+			power-domains = <&camcc CAM_CC_TITAN_TOP_GDSC>,
+					<&rpmhpd RPMHPD_MMCX>,
+					<&rpmhpd RPMHPD_MXC>;
+			power-domain-names = "top",
+					     "mmcx",
+					     "mx";
+
+			status = "disabled";
+
+			ports {
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				csiphy4_in_port: port@0 {
+					reg = <0>;
+				};
+
+				csiphy4_out_port: port@1 {
+					reg = <1>;
+				};
+			};
+		};
+
+		csiphy5: phy@adb3000 {
+			compatible = "qcom,sm8750-csi2-phy";
+			reg = <0x0 0x0adb3000 0x0 0x2000>;
+
+			clocks = <&camcc CAM_CC_CSIPHY5_CLK>,
+				 <&camcc CAM_CC_CSI5PHYTIMER_CLK>,
+				 <&camcc CAM_CC_CORE_AHB_CLK>;
+			clock-names = "core",
+				      "timer",
+				      "ahb";
+
+			interrupts = <GIC_SPI 89 IRQ_TYPE_EDGE_RISING>;
+
+			operating-points-v2 = <&csiphy_mxc_opp_table>;
+
+			power-domains = <&camcc CAM_CC_TITAN_TOP_GDSC>,
+					<&rpmhpd RPMHPD_MMCX>,
+					<&rpmhpd RPMHPD_MXC>;
+			power-domain-names = "top",
+					     "mmcx",
+					     "mx";
+
+			status = "disabled";
+
+			ports {
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				csiphy5_in_port: port@0 {
+					reg = <0>;
+				};
+
+				csiphy5_out_port: port@1 {
+					reg = <1>;
+				};
+			};
+		};
+
 		mdss: display-subsystem@ae00000 {
 			compatible = "qcom,sm8750-mdss";
 			reg = <0x0 0x0ae00000 0x0 0x1000>;
@@ -6535,6 +6910,28 @@ compute-cb@14 {
 		};
 	};
 
+	csiphy_mxc_opp_table: opp-table-mxc {
+		compatible = "operating-points-v2";
+
+		opp-266666667 {
+			opp-hz = /bits/ 64 <266666667>;
+			required-opps = <&rpmhpd_opp_low_svs_d1>,
+					<&rpmhpd_opp_low_svs_d1>;
+		};
+
+		opp-400000000 {
+			opp-hz = /bits/ 64 <400000000>;
+			required-opps = <&rpmhpd_opp_low_svs>,
+					<&rpmhpd_opp_low_svs>;
+		};
+
+		opp-480000000 {
+			opp-hz = /bits/ 64 <480000000>;
+			required-opps = <&rpmhpd_opp_svs>,
+					<&rpmhpd_opp_svs>;
+		};
+	};
+
 	thermal-zones {
 		aoss0-thermal {
 			thermal-sensors = <&tsens0 0>;

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
