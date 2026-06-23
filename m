Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7003FCDB46F
	for <linux-phy@archiver.kernel.org>; Tue, 23 Jun 2026 13:05:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Lef9wNz1UWOI7P8yTIqiLSAKpfG8SgptnrJEU9YU2dI=; b=fgp7A3wCEzrwow
	hdAAeFakw1RSC8Fi0hDjAYQbC3xyvgVfpb8ysWCXE3mOf+NEyXSFZJRE8c7VuJn3Ln3YpW6iuekBQ
	J8g0jZsYpUXIkOif78RiYGorURHuXZCygMnprBZ8BwmanHW3o3+WoxuaTkSMnPeSRSw/GTx/F2G7B
	km2N3CkW+luuoXRFro+ZxpWKETczM2cM3AqAYXoiDGgnELooJ3XLzYNJm1DHpKgEz3qhPRKLsvi6I
	MgNUUTSbxZFUa03WpJPjjsYKQisGtFolJcRydSENbaYx6jE9EKedPL5w8xXHuhCqyJ55+ZrIIfQO2
	xO+9a6GDDiAn4ZEf+EpQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wc0oq-00000006JXY-0qk2;
	Tue, 23 Jun 2026 13:05:36 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wc0on-00000006JVe-2myt
	for linux-phy@lists.infradead.org;
	Tue, 23 Jun 2026 13:05:34 +0000
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 65NBXTCF3744677
	for <linux-phy@lists.infradead.org>; Tue, 23 Jun 2026 13:05:33 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	XZEilT/cbhc2S9bM/NCuST9uY/pwrLjDS8ZeCvp4RJE=; b=lkPCSvDvwwAjFhnY
	jt5EWZNvC/9R+0phaE1zmAlMjMdi4cjLcOrPa6jBbJPq+R77u0BjByaaSZJChktW
	fsOkLJ9CvREbPk15y7AZCg7hQcINjO0Ju+OL4FNy6L2o8pe2WnAHfnxNH+6X++i2
	gN2IpOd1mymebpctIWUX3zm128lhKT65AZOyI7A3Zi8ryasBBSPD9+uLCKa30DFl
	c2GWMYatKuRUVGLu840XQBdNT65ZPVSuB5v54n34A11Av3dDQ8Qy4qAUpqO1G+tg
	r51E3JqILq4XkjbgclbxqVgmo8BoRqf0MyeU/MzmEt5Xs4nGCSI9cz/e75O03DOv
	MzHSSw==
Received: from mail-yw1-f199.google.com (mail-yw1-f199.google.com [209.85.128.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4eypx390yq-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 23 Jun 2026 13:05:33 +0000 (GMT)
Received: by mail-yw1-f199.google.com with SMTP id 00721157ae682-7df25ce3000so121142447b3.1
        for <linux-phy@lists.infradead.org>; Tue, 23 Jun 2026 06:05:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1782219932; x=1782824732; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=XZEilT/cbhc2S9bM/NCuST9uY/pwrLjDS8ZeCvp4RJE=;
        b=dnyaedbCa2b0hn0V3hJh7yTqi1t8alJ0KzPMDzaCcUqNKR1qVSXiF5Fz3jYfTZGUmd
         qYB61g+nqtA6RaLs2GtwSxL9D5xMZHsDxlla6/nbA2Z/hGBs3KXaC75eYyIsd7QPh1OX
         9udrtgHTOZ8ffz3riqfT0HxHRuF5sA43yqC/4QjI4VxGPGtanqH7W8ommPksJWJJcq2n
         BvjbI45hOZUNCPrgX44JIwy82bjbPWWrZ1HqjnIa3etK31UyqTJsQWFqhgM0dINehnbM
         OhPCo7cwe5MWfi8UAwEEkwEUQKhxmWL08EMi1EptwXFSyqf9tM87VdCrYRoehWyFLUkp
         B5BQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782219932; x=1782824732;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=XZEilT/cbhc2S9bM/NCuST9uY/pwrLjDS8ZeCvp4RJE=;
        b=qpFCljk5TVWhZTtLIgff6PMWYj0KJAzwiYBppKCq0xtcuPjcQDDXNUOB2TJrZeOy4k
         yL6PtfcG+Bgshv3s7Bevzl2M0005S0eORRQts7rQbdtyhV5Ub0zgl509C/5+9nqH6FHQ
         Gy31Ehs8IkkLOTBeYpiaAAmUlZN8ACOLXdxQOLZTatqdubbt4rWd7lbRignY7S6LVSfi
         CdwjqhscnhRVZgXFM9+TCbfg255g30kQ7zgK0zY3uKLZTDmspw0ZfH5M7FIjpXFFgwI3
         lACJjlwzW3VeGfmJAJWpE/rsb7JdG4vG0fkqK83ibOqLx3nAO/zUfMiA/reWaIfb8kkZ
         2aWQ==
X-Forwarded-Encrypted: i=1; AHgh+Rpgw+RrsyF40Iad5o1BTRKdnE4vjgjdurjfYk5UBKRe5hzUd2ES5GmhK4uU8wGWLUbqlRVS30hEC5s=@lists.infradead.org
X-Gm-Message-State: AOJu0YyjbZdOgYfWX8eTKi65w7MKO+uVjGsZQpk2uyo6umfgZKQCtcls
	+8UKiXNde5IwUwRXPtq/Yv299JiQvUMfAapcCTouWzg3BvU+SXY56v3Xy1uTBmgti4O2wJjht3v
	tXR4YtjUPQxVglRMpqoZ05rKqTZ1omIZdlZVQNBysRUUKQ+DNno8NXvMJuET8lf9aFhTi
X-Gm-Gg: AfdE7clwQ9sFtzPGEYhMX7LdhVCvEi6AQXfg8spCktgwHjztcOlzFBeizsjICqmdzfr
	mMIIDC12+sxdWcvSacGndW45W86OR0PpB2Y/qk6MLtTqieafSvTOlgMA4WfJvISzimM4UzKVbgU
	m12ctabL4yuLUTQUyI/NqqX45H5JuQ3q4TeSuS+fC5nhg6BCqMgEGDyKyPd62uvWuertzCPa8JS
	g6Lzr0w40WzhStgC8xUvAiU1Nz7zRC/UDi/O/isCpkK4Beh393CrhDzPmf7csY3XL8xbiAH3DMm
	bKDGVwDJ/3AYfgljRXl6HaGVgkqcnC85m00a7gsfFRw6SllR+My0nDsg5H5gPUGNloeWsi2BTNC
	gqAl/UvlpueZdPva3TNycCI+HLg7LDkpLi9YRAUM9DmJMl1HkdPRvKmX1sA==
X-Received: by 2002:a05:690c:4805:b0:7fe:5866:a7b0 with SMTP id 00721157ae682-806df092f82mr22223197b3.52.1782219932109;
        Tue, 23 Jun 2026 06:05:32 -0700 (PDT)
X-Received: by 2002:a05:690c:4805:b0:7fe:5866:a7b0 with SMTP id 00721157ae682-806df092f82mr22222697b3.52.1782219931585;
        Tue, 23 Jun 2026 06:05:31 -0700 (PDT)
Received: from hu-qianyu-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 00721157ae682-8025ffc700bsm44091127b3.36.2026.06.23.06.05.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Jun 2026 06:05:31 -0700 (PDT)
From: Qiang Yu <qiang.yu@oss.qualcomm.com>
Date: Tue, 23 Jun 2026 06:05:19 -0700
Subject: [PATCH v2 3/3] arm64: dts: qcom: glymur-crd: Add refgen supplies
 for PCIe PHY on Glymur
MIME-Version: 1.0
Message-Id: <20260623-phy_refgen-v2-3-4d15983bf91d@oss.qualcomm.com>
References: <20260623-phy_refgen-v2-0-4d15983bf91d@oss.qualcomm.com>
In-Reply-To: <20260623-phy_refgen-v2-0-4d15983bf91d@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Qiang Yu <qiang.yu@oss.qualcomm.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1782219925; l=1649;
 i=qiang.yu@oss.qualcomm.com; s=20250513; h=from:subject:message-id;
 bh=smafLhLJEyw2iNEacE9cOrBfHQUswwkZ5s1LBtIJeG4=;
 b=7Kd81yogwU1NAopdtPSSktTw91Z1Pmg1LdcC+9LflG5ab8B2OnAr8wt4npVlhUOgeGMPsSudy
 AXdkXs5nTVnDIItXDiaW6058DsfoTbCYjh5w1Y8PbXmcDlRxIR8jCEX
X-Developer-Key: i=qiang.yu@oss.qualcomm.com; a=ed25519;
 pk=Rr94t+fykoieF1ngg/bXxEfr5KoQxeXPtYxM8fBQTAI=
X-Authority-Analysis: v=2.4 cv=EsfiaycA c=1 sm=1 tr=0 ts=6a3a849d cx=c_pps
 a=72HoHk1woDtn7btP4rdmlg==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=FelO9ux0wxsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=YMgV9FUhrdKAYTUUvYB2:22
 a=EUspDBNiAAAA:8 a=KHiVlrKLFnca6Sl0sUYA:9 a=QEXdDO2ut3YA:10
 a=kA6IBgd4cpdPkAWqgNAz:22
X-Proofpoint-ORIG-GUID: npXQsr21Q9WVZnbyS0Eqc-QmJinLTBtH
X-Proofpoint-GUID: npXQsr21Q9WVZnbyS0Eqc-QmJinLTBtH
X-Proofpoint-Spam-Info: AW1haW4tMjYwNjIzMDEwNyBTYWx0ZWRfX5PnVLg/B6+De
 t8aCdNP8Suc2Y0ZkybMCuT4Djunr8R/97+RHJL/OYih+NS5cwvSUCSapky7klfLP2JJXJFjREMr
 hZGfESehqTFHWp9rBN9uKe32+JUR8Y8=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNjIzMDEwNyBTYWx0ZWRfX4T1vlIOUAaH1
 BycU+sBsXX5Xim488+AbZqY2PK4wSo6VzxSaDeQ5nLa02n0oEiDjiQ1dxDvcPRemSt3Fjp4S20I
 8QcPIDgm0N1dFM9mqPUMNVhmW0Nbq5rWRqbrmVQKpXxoTThGu3ukmixeTwWXAm6qn6NkTCzWzZq
 nFkbp8KKfmyOljvntWZTvsaqENrIPqF6NTSqDVwB7ihWOTL/Wick8s9KZWO35QSUxu0Dbh4NEvJ
 c/7AuifwcDw784sWb/5wxvsjUDEFRzJrlHaZheq8lo0DD/X9d5KJkonRpU5Ojocf6enL0OVEOy4
 wWIfWh5Yw6rhJRqZ7ikIR5OlBu8Xg6EPf85BMQqs16iqJW8BEgIEYnKA5fse3b4SloQo/rz8zUU
 FGVmya8ObsLKqIdouhI7aBVUY+nITOUrm7I/Hyrg2QTpQsnMthoDvJalfzs5fSnqgH7ZoL0ojBT
 B73YpqxVH4rViBeWVqQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-06-23_03,2026-06-23_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 bulkscore=0 impostorscore=0 lowpriorityscore=0 malwarescore=0
 suspectscore=0 spamscore=0 adultscore=0 priorityscore=1501 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2606230107
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260623_060533_713249_3AF8F91C 
X-CRM114-Status: GOOD (  11.30  )
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

The PCIe PHYs on Glymur require a reference voltage provided by REFGEN,
which in turn is powered by two LDOs.

Since there is no devicetree node for REFGEN, add the vdda-refgen0p9 and
vdda-refgen1p2 supplies for each PCIe PHY node.

Signed-off-by: Qiang Yu <qiang.yu@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/glymur-crd.dtsi | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/glymur-crd.dtsi b/arch/arm64/boot/dts/qcom/glymur-crd.dtsi
index e784b538f42e..bdf7db3493bd 100644
--- a/arch/arm64/boot/dts/qcom/glymur-crd.dtsi
+++ b/arch/arm64/boot/dts/qcom/glymur-crd.dtsi
@@ -454,6 +454,8 @@ &pcie3b {
 &pcie3b_phy {
 	vdda-phy-supply = <&vreg_l3c_e1_0p89>;
 	vdda-pll-supply = <&vreg_l2c_e1_1p14>;
+	vdda-refgen0p9-supply = <&vreg_l1c_e1_0p82>;
+	vdda-refgen1p2-supply = <&vreg_l4f_e1_1p08>;
 };
 
 &pcie3b_port0 {
@@ -471,6 +473,8 @@ &pcie4 {
 &pcie4_phy {
 	vdda-phy-supply = <&vreg_l1c_e1_0p82>;
 	vdda-pll-supply = <&vreg_l4f_e1_1p08>;
+	vdda-refgen0p9-supply = <&vreg_l1c_e1_0p82>;
+	vdda-refgen1p2-supply = <&vreg_l4f_e1_1p08>;
 
 	status = "okay";
 };
@@ -507,6 +511,8 @@ &pcie5 {
 &pcie5_phy {
 	vdda-phy-supply = <&vreg_l2f_e0_0p82>;
 	vdda-pll-supply = <&vreg_l4h_e0_1p2>;
+	vdda-refgen0p9-supply = <&vreg_l2f_e0_0p82>;
+	vdda-refgen1p2-supply = <&vreg_l4h_e0_1p2>;
 
 	status = "okay";
 };
@@ -528,6 +534,8 @@ &pcie6 {
 &pcie6_phy {
 	vdda-phy-supply = <&vreg_l1c_e1_0p82>;
 	vdda-pll-supply = <&vreg_l4f_e1_1p08>;
+	vdda-refgen0p9-supply = <&vreg_l1c_e1_0p82>;
+	vdda-refgen1p2-supply = <&vreg_l4f_e1_1p08>;
 
 	status = "okay";
 };

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
