Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 91486C61DD3
	for <linux-phy@archiver.kernel.org>; Tue,  1 Sep 2026 09:51:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Dw4tPhZ3r1niT/OZM8BHU/iUNHHGbrQQkKW8AfkoAqk=; b=Or6ddlIUXGv4lW
	olkGSYxxpOUjH4SkQI8fE9e/h0syGME7Ch2Xo0gvg7hkroTfUsyg+ax0ONGpmRw9j7QTxz+VfWju5
	B0AMpVlu9nqQ//whojwyINot/NKIAACIU5NQ44nLLC79PxVu4hQU+co8dbl3rayKIOzz/uJulBkpY
	jDD+F5fSCSOGehYOZS34jLmoRLKd8prG8Gbhrj8bWOQeqe87vVE2N6WlqtGrSn4UG55/b+R+a54nK
	v3wQt5oddr639aZq2l14zH9w147HhQsIjB9t/fpgWFWTlT7p+cKvXXDkUPC2cztykErOBSWkTIn86
	hpcYe9m9VnjQVOSGTmLg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x1L9K-0000000BTbM-1EWF;
	Tue, 01 Sep 2026 09:51:26 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x1L9H-0000000BTaK-1yER
	for linux-phy@lists.infradead.org;
	Tue, 01 Sep 2026 09:51:24 +0000
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 68179QLP1811491
	for <linux-phy@lists.infradead.org>; Tue, 1 Sep 2026 09:51:22 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=mtqWHtuTVnw
	9seSmxnafqm6ClpcflDXdGN4SeAvMOJs=; b=V+drau0bLqvt0G5kCd0l3IURuGh
	Y6WtBcFldiI+HJCor924vxppPpWslXIqZABzN+lfYiKTcghIpnCF8f1MvLfG2zaR
	b5ycASXx2p0oyvGNrLMFgj5yEdLKcpNP+LZKuknhrEhPZmSwmlAPf5fIVtuo8BXb
	+FIrlVNm/qum/08SovESR9K9wJR+CaVV1V1HRSvLLRAuRRofCif/mPzuZ3sKELp5
	Fs11CFPbcUCWkekhPiNv/3W+Y4MrFnabumMAG0Y/J0AMgaQmCSFCribZ0NoYIvpX
	NH7QUfP1a/PiQUU4Wb+OFZ/0b/wo9IhDrzn40vDTFPebmWq1pYtiFWIcJzA==
Received: from mail-pj1-f70.google.com (mail-pj1-f70.google.com [209.85.216.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4gdd4dv6cy-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 01 Sep 2026 09:51:22 +0000 (GMT)
Received: by mail-pj1-f70.google.com with SMTP id 98e67ed59e1d1-398dc3d8f0fso980590a91.0
        for <linux-phy@lists.infradead.org>; Tue, 01 Sep 2026 02:51:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1788256281; x=1788861081; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=mtqWHtuTVnw9seSmxnafqm6ClpcflDXdGN4SeAvMOJs=;
        b=BDFSOAARyGgbaLiYhR5Z2mqIEKFilQ1N9dEQM6LyQwtWhP70CXVknUB/vJIF9EUZ4e
         +2r3mEluAe10DI0W0Yg95Z35nTRsaTTBjwIsBnZXcxoYz+rkSmfdikkOJvKvql3C+d8y
         e/glOOg9la20qVyidJP1jSomdCxKjUwyEQF1kaPN2GlKTbGRkx0s1ous3OAPr4O2UmDR
         Ax1C9lEV0RCz2ZpCc6anyZGE2n1uOxkFm5o8f+6sp971zol/b49RH9wBGxpCx1fSJKeD
         sGqJN974XUaBqzrNYEsA1Mzm3fy6dI44Vo2wcQuTsQCn1aqSFnkK0S0WCCxDYV68vMMM
         jT6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788256281; x=1788861081;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=mtqWHtuTVnw9seSmxnafqm6ClpcflDXdGN4SeAvMOJs=;
        b=Wpd6JrdMwkhLGVIKTR3rx2m5skJxt+anjLe0zMJT7y1i1PTOsLcfdDvUeLyuntyZjA
         z8o13enKj4SvHGtsYaY+2OLgfvyRfX5vjqZEAbtbt0gwetgBkaUJhXrfQPtf9h9GatH+
         WwLUsiCeQUcR0D98YHPcqKexpldqm+DyQwLk+lzehtr8eZy/wY9aWNxi9AyZ8Of5/swC
         Hlj2Fxx+9sVUiSpbqmSG1im45jfMNecbaeFG6/vbw9pDoNEsMlhLqiSbxriADkpM3oWI
         8wO4lKso0UWn6HENy9QILMVTeUEExRhXrj+lb0t0xCEDX/RPYaXAc2ozifP3/mO+FGaM
         DARQ==
X-Forwarded-Encrypted: i=1; AKwUvBzU8h/pc1/Bx5IOio6a6ltb44PCH7waV8TViX3Ufw1vQZoZu1HGbo0QBbLGVE9/SRMYEI3Rxst6cxk=@lists.infradead.org
X-Gm-Message-State: AFuF++m90frysResydK6Mf8EgqoD8hSz03nozGpH0ARakUYMEMjbJPN1
	Gr6u8scEMnO9p2YhB5C2LiKADWRA97cOR3OS0Mo9hFgwE+vz1qhT3qlZ6MlF2MY+qmy36WG/RgP
	/CIUhMZRrpUJmTZ1EW8ehrvTzj3zwWDiicWt5m7KSbtrbkcKq1SWpDvPjAhF2M7NgWOxL
X-Gm-Gg: AR+sD12qGCfCh3wfuBJJLGrR5rmQLCY0Nr9NoGQ6NVSEcZEtotL93GfeGkcs11Np1/g
	arXyGOpFcm19UrqdHsbb2oxE0yq/8xkVi09rIBSrZ5Sg83zyvplOQvUwke2Hvd1p6kmkHdl3csN
	f2cyuT4+pi/TIp59BqUVnoV2hLMmyaMZ0s25ML6QeRn6cEOK79z8n/sZ/nKUrd4ItYzepJ1Gzjj
	vFlzILR3GD0f9YF4FNVBLVbVNYb1pn2tBTDWpoiOHkHEe8oQRvH5Q0mA4lQhoarnp4Vh7mre+AR
	PLDv6AkcrnUj6mnSF5p3ke+1RRVQkT7Ok+94VZth8wnu/MOBK1SgmMJWl7xRDJBm6eQNMPLChsw
	UITlv2IVw/wJLHd6/i8TB7eSxTBRWF/FfPPN621x3k27vrzgYedjkSLxLbvYq
X-Received: by 2002:a17:903:1ac7:b0:2d8:d4d2:d137 with SMTP id d9443c01a7336-2d95284f383mr41119785ad.19.1788256281580;
        Tue, 01 Sep 2026 02:51:21 -0700 (PDT)
X-Received: by 2002:a17:903:1ac7:b0:2d8:d4d2:d137 with SMTP id d9443c01a7336-2d95284f383mr41119425ad.19.1788256281101;
        Tue, 01 Sep 2026 02:51:21 -0700 (PDT)
Received: from QCOM-aGQu4IUr3Y.qualcomm.com (i-global052.qualcomm.com. [199.106.103.52])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-3286fa37fa5sm40641466eec.29.2026.09.01.02.51.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 01 Sep 2026 02:51:20 -0700 (PDT)
From: Shawn Guo <shengchao.guo@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Abel Vesa <abelvesa@kernel.org>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Bartosz Golaszewski <brgl@kernel.org>,
        Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>,
        Shawn Guo <shengchao.guo@oss.qualcomm.com>
Subject: [PATCH 1/4] dt-bindings: phy: qcom,snps-eusb2-phy: Make resets optional
Date: Tue,  1 Sep 2026 17:50:52 +0800
Message-ID: <20260901095055.42229-2-shengchao.guo@oss.qualcomm.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260901095055.42229-1-shengchao.guo@oss.qualcomm.com>
References: <20260901095055.42229-1-shengchao.guo@oss.qualcomm.com>
MIME-Version: 1.0
X-Authority-Analysis: v=2.4 cv=b9qCJNGx c=1 sm=1 tr=0 ts=6a96a01a cx=c_pps
 a=0uOsjrqzRL749jD1oC5vDA==:117 a=b9+bayejhc3NMeqCNyeLQQ==:17
 a=VdqzKS8jKosA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=rJkE3RaqiGZ5pbrm-msn:22 a=EUspDBNiAAAA:8
 a=J30188syTye5AiLRMCUA:9 a=mQ_c8vxmzFEMiUWkPHU9:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwOTAxMDA4NyBTYWx0ZWRfXw2DphLGbA9oY
 OEdwdaL46jD/a+alurz2RyNnJ1pi3gRBBrMAOEU25fENWQsOJLlxUAjWEGGOB0o+2ELNSce/8JP
 3RMojCudp4bi8cpb/jMAvgXq+0SnVIN8GgTEJaE/41C99t4V9w/HzWFmoHILMUuS2mnUbSJvXBU
 bBh+uHrKuUVEi3P16C7DWqFy6HXvOPiPlCuEccXeaWBIPojTashK0z3IHTLkPVqW4nbblwjg22m
 UGS5ad/vFD16QKP+IumfG3heRucW/Qs9uKl3E724uyxjTep41MD/z0RLycOnt2JIFTa/CgiIalj
 GfEyCbXDkA99rlPvLbK7lkNwo4+IoghdfFopK941ByuCNuNl1eoyQgQs1bF4FKoaIGsU1aMce/W
 V/C6e1Z/9u1ypVb4OuxSnkNkD6M+/BRUu5v3C7JpVa9NiusMQJsA4DxtPJn3XVE52dYDSLJ0rCs
 DS+g60xP4nTF6KmV3ag==
X-Proofpoint-GUID: peK6UNRLSYTAGhyCx-zo_GjkOPr4CmiS
X-Proofpoint-Spam-Info: AW1haW4tMjYwOTAxMDA4NyBTYWx0ZWRfXwhdlctwTZ2OY
 OTMjgPMP/GlzbX4OiUdTcVmsDAxKVi1SMh3J7uzQmscsH3QXmuql6M7+wDA0P9Y7cyX1v3rWQPV
 F5uADTMhs9FC4D1jzq9nO0UP000ccrc=
X-Proofpoint-ORIG-GUID: peK6UNRLSYTAGhyCx-zo_GjkOPr4CmiS
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-09-01_02,2026-08-31_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 bulkscore=0 phishscore=0 clxscore=1015 impostorscore=0
 spamscore=0 priorityscore=1501 adultscore=0 suspectscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2609010087
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260901_025123_625993_35DED067 
X-CRM114-Status: GOOD (  14.10  )
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

From: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>

Not every instance of this PHY has a block reset of its own. On Nord
SoC there are three eUSB2 PHYs but only two QUSB2PHY block resets:
the HS-only USB20 tile has no dedicated PHY reset and is instead reset as
a whole through the controller's own USB20_PRIM_BCR. Requiring 'resets'
makes that instance impossible to describe, since the controller and the
PHY cannot both claim the single block reset exclusively.

The driver has always treated the reset as optional - it uses
devm_reset_control_get_optional_exclusive() - and the sibling
samsung,exynos2200-eusb2-phy binding, which is served by the same driver,
does not require it either. Drop it from the required list.

Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>
Signed-off-by: Shawn Guo <shengchao.guo@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/phy/qcom,snps-eusb2-phy.yaml | 1 -
 1 file changed, 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-phy.yaml
index 096f6b546632..2140482c8e3b 100644
--- a/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-phy.yaml
@@ -64,7 +64,6 @@ required:
   - clock-names
   - vdd-supply
   - vdda12-supply
-  - resets
 
 additionalProperties: false
 
-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
