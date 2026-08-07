Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 81364C5AC7A
	for <linux-phy@archiver.kernel.org>; Fri,  7 Aug 2026 09:51:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EZdKLVeHDYSL1+jNW32SfKt3KHy4LfuAuzS/tL7gvsI=; b=dp5Wd8Iq7udSRJ
	czXzVhY3asXozVVRnq/8LIgeQvbYAsUMigkM0y5aiHyeAPbdZW5kL412hoRmmkEbXsrQmYAv2S76T
	qUa3cQ7xrTYLg9Qykuk/VlE6kBukCNQv25ulC6s5q70D/OtczAxZi+qyYEe7n42QEdVejOUfmsjhl
	lTlnekDnabw81UEnZ1TfMiM9eJYnxEjN0/WssmJTLvgdKTiG7msh6IYKYEpaOFX+wSiJzEoAX91iZ
	8Uni+iFZ9Gv3i/ccQ4AwkhLXqjy/z8zfD1/qIuQ235waDdf32dWWhetvKv2znF/CdANhtwfs1aUI8
	LZX+7UR7DQeUn0cbn9qA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wsHEh-00000007YYR-0hS2;
	Fri, 07 Aug 2026 09:51:31 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wsHEd-00000007YVW-1MTr
	for linux-phy@lists.infradead.org;
	Fri, 07 Aug 2026 09:51:28 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6779YE2c262401
	for <linux-phy@lists.infradead.org>; Fri, 7 Aug 2026 09:51:27 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	nmhTlsH9IlSEOdBu8T9ac4bE+ZN/wrQucNg8DtCyyyI=; b=V0V3jUV5Wgr+52zP
	ed54POrbscVsZyD9gsOxScA0a/lqUbRML9GFbl0XHnRO4D5gl3plhCjQTwEFaGcV
	GY/yWozJaViIVhwvc4hXqv9PE2oV3g8xyRuK93CJS8hWTVg7RyORDLTAxZpkgOxH
	nz7Ee6ZoVC6SVqN+EpUjODwkLD30SM/8msveSPisL5+IWn+09m5te5SqnBtcCnQn
	4BZ9FPUU0QtVOUXoeBbLW6AQKtvIyNmNnCg8CEq3wgWk25WWxpVt8vqaa7Wtol9U
	HEm2XIw/1ONQIn6SCRU9n+niZtL/ZGigt8ZWc58lZrkmSFb8I3MtY2tQ3XNijaPS
	Dp+osQ==
Received: from mail-pf1-f198.google.com (mail-pf1-f198.google.com [209.85.210.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4fwcujg1x9-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 07 Aug 2026 09:51:26 +0000 (GMT)
Received: by mail-pf1-f198.google.com with SMTP id d2e1a72fcca58-8484f26852dso3639311b3a.1
        for <linux-phy@lists.infradead.org>; Fri, 07 Aug 2026 02:51:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1786096286; x=1786701086; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=nmhTlsH9IlSEOdBu8T9ac4bE+ZN/wrQucNg8DtCyyyI=;
        b=IplYfSKK5qC3nl5lyYAf79wom6dF4jwtOInxbX4uxPCmekUYudJxlIqL70M8jjiC+j
         +DVCL5g895gb8Y4ZfJvx27yjUKVVjVsNU4pBGwai+BzutO/nZnAou3tkd57Hir+GvKq2
         BPs+YLz/s6Efn2s5DOo1tJCCo+cOQgvBGvgdGFGdRTPcDIvSsZwG+WH0GZwdX19KLlSa
         3lepf+F+TEsC/lpkpQiZX3SuvMBC2P4nSPi3PFfcoLSIheZ0hN9Uckg1jCSwvJ1LFIKU
         LePtJVqwzdBsz8PF7HhVZ35wvzs5kRLUPjSItSWGtytXncKanUjtRgbRE8seux14p4YK
         YuGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1786096286; x=1786701086;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=nmhTlsH9IlSEOdBu8T9ac4bE+ZN/wrQucNg8DtCyyyI=;
        b=W7471NuYXAsF0WZ7Eprw1HlEoAG2cUDv+x+oNy3jqz5jf/v0e6+CXRxmFHPZ51cgyZ
         5I5SZQCz1dQF+tCJOcX4861Y1UAaq87noLuRFd69r91vH9pa/5/O3YCJCMXoN7w0d+1a
         uCSEh9GN/D+jWysJJ8C4Pr7o54cucUkG3KzPdTGHL4XFvR+Vz7P77WCIFgHsnk77slYB
         9FKFNXMKK8B10WknvkIp7H3OTgmdG5DrsBBDbB8W3fX5KNFM2CIacSTat2xdASxBOF0C
         WR9sMSKYXrSAalXWqZYBGYlpSMLTCcMCzPYO4p08sxEax6bRmCfvbGlxvXIJQeB1Hqs7
         6BxQ==
X-Forwarded-Encrypted: i=1; AHgh+RraTLJbY0RAeatdJlsPZKhH4iSlvr42T4pG2k3RRLQfHdAxiZp2zTEHkVERYD1/jbgE8kC49XPA2lY=@lists.infradead.org
X-Gm-Message-State: AOJu0YxvKXewxVnj7IH3Prt23wgQoMUXT4Q57TimNTXPBO23S/z+ATYv
	KJCMcPsnTu1uvVw6YTW36wJyvc1TiJbS4OOZu2699t6cosW0YGy4RqHQNrT0IrhcdeeJ7awcpJ5
	+qEvcf0xS1agRe7YWl2P0vH3sVtKKXMKFPB8HinOQyV0gqIZP9dPq1YhVKJxwYcT/QtX0Op3nLH
	OP
X-Gm-Gg: AR+sD13r0yBupPTc5pV7mNvkECGWosUj9aZHhiPi/9Y0TMtPoBFYPt7ECsHSAY6e/BU
	v/gq/6KmEBxO6WKv9O2Kwc8NQioRAeoYlwV74nqwnrEas7u2/7nC/Xq0znIPUOnD4thbcpK7Yb0
	moMQaZM2CqYnJdzsiH04xX0CdJlsu8n7Xjl6wPoYWcFsGSnylX4MeXQOJemJcM31SVGPfHXDfui
	mjID8RLAp07mlQSY9semaShGRWoegG9X/w3nQ6RMFyvnSmgR/W2UQ1pFsAVj5SALeSB7JL1Acvv
	aX1JZ9tEaxaI+iGK9dMmd/x8AKbRg97YTGHqD06msTlM7DvFPOl7L0i+k4OTdgz0x5ulPhOYzVQ
	/JUN5u5P6H9eTrgRM8lOT7hnBDCGyq3kXLsNw6u61wQ5leDU=
X-Received: by 2002:a05:6a00:10cd:b0:848:8445:6956 with SMTP id d2e1a72fcca58-84f4fe9f90emr8430222b3a.18.1786096286237;
        Fri, 07 Aug 2026 02:51:26 -0700 (PDT)
X-Received: by 2002:a05:6a00:10cd:b0:848:8445:6956 with SMTP id d2e1a72fcca58-84f4fe9f90emr8430189b3a.18.1786096285823;
        Fri, 07 Aug 2026 02:51:25 -0700 (PDT)
Received: from hu-qianyu-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-84f5a3cad9dsm743785b3a.23.2026.08.07.02.51.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 07 Aug 2026 02:51:25 -0700 (PDT)
From: Qiang Yu <qiang.yu@oss.qualcomm.com>
Date: Fri, 07 Aug 2026 02:51:13 -0700
Subject: [PATCH v9 4/6] arm64: dts: qcom: glymur-crd: Add PHY supplies for
 pcie3_phy
MIME-Version: 1.0
Message-Id: <20260807-glymur_linkmode_0807-v9-4-dd1c7e236e29@oss.qualcomm.com>
References: <20260807-glymur_linkmode_0807-v9-0-dd1c7e236e29@oss.qualcomm.com>
In-Reply-To: <20260807-glymur_linkmode_0807-v9-0-dd1c7e236e29@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: Qiang Yu <qiang.yu@oss.qualcomm.com>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Abel Vesa <abel.vesa@oss.qualcomm.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1786096278; l=1201;
 i=qiang.yu@oss.qualcomm.com; s=20250513; h=from:subject:message-id;
 bh=xfSeMIln++UVhRK65VIx8sgrep0LonxwAM+JGGCbE8s=;
 b=xbyLKWpl51FuOlCPGi+JKtVv0RFxgfKtfffeutIKs+gFwmCplAjYi7HAoqDBksiX+56T4UV1+
 qanA3BWmJW0BwDHTgzCogepMUUgzb+EqZIk3RwtycHjuJglV5UPWyxB
X-Developer-Key: i=qiang.yu@oss.qualcomm.com; a=ed25519;
 pk=Rr94t+fykoieF1ngg/bXxEfr5KoQxeXPtYxM8fBQTAI=
X-Proofpoint-Spam-Info: AW1haW4tMjYwODA3MDA3NCBTYWx0ZWRfX88FlTRBiteKc
 iZFcoYTUiz10kX3MN5hHvtVu0VJJBk6QlpCmFDQqOlI9VcMP3N3L7QlXLbHqIdLB6UCBjkouMQc
 xxzI9lcQWOVph/j6gNgm5N+K2pK+Dg0=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwODA3MDA3NCBTYWx0ZWRfXxVO+/qBhxRH3
 ExeU+97+wJGRSnCzwbTyNeP+BR10q8o+BSUYrGHJedKmGx5jcVT8+ms2NOK33h911PYSBa32tOx
 YM/nNqbgO90tXorvo+h2pj0wjwXdgiuZoOD9rERn46lpo27Mde8XH6JOuedLE7P//T6GV1upp8K
 QzFvhnPZvMRISKaYQA02Ao4xSJucSJYSDPckj3H5SeUFAmhwvpDAfhNKbrIUcFWX3r0YhKOLWvE
 mOTmJz60etRww8ehCvCsml1id4LxGMfwIrL13jZ8HqTfaWG3/5S3+sJZlx1hkvBodKW86schz4I
 5CvKANVwxbzfqv7WaEX3YxQVDEmNmzYOO7FnFw+3C/QwxS9n42wqY++qCCqtSUe37mbDVJ6y0Be
 1f910Bbgcitps01s3+Q7lIC6tQPAkpjRlgg35ap8kLuapojlhb9+I8kWKB9PZDFRSsUPetiReUk
 R8UDeknbEuAP/kj5U2Q==
X-Proofpoint-ORIG-GUID: CJo1lzKmOhzI7SPiLA8Oo32_hWjnAb0e
X-Proofpoint-GUID: CJo1lzKmOhzI7SPiLA8Oo32_hWjnAb0e
X-Authority-Analysis: v=2.4 cv=Wssb99fv c=1 sm=1 tr=0 ts=6a75aa9e cx=c_pps
 a=m5Vt/hrsBiPMCU0y4gIsQw==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=Sv0fKeRqtYgA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_K5XuSEh1TEqbUxoQ0s3:22
 a=EUspDBNiAAAA:8 a=QdOup1CusybIpKGx1HsA:9 a=QEXdDO2ut3YA:10
 a=IoOABgeZipijB_acs4fv:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-08-07_01,2026-08-06_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 adultscore=0 priorityscore=1501 phishscore=0 bulkscore=0
 impostorscore=0 suspectscore=0 lowpriorityscore=0 malwarescore=0
 clxscore=1015 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2606150000
 definitions=main-2608070074
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260807_025127_369887_CF3D695B 
X-CRM114-Status: UNSURE (   9.35  )
X-CRM114-Notice: Please train this message.
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

CRD wires the shared Gen5x8 PCIe PHY's regulator supplies through
board-specific PMIC rails. Add the vdda-phy, vdda-pll, and
vdda-refgen0p9/1p2 supplies for &pcie3_phy.

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Reviewed-by: Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>
Reviewed-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
Signed-off-by: Qiang Yu <qiang.yu@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/glymur-crd.dts | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/glymur-crd.dts b/arch/arm64/boot/dts/qcom/glymur-crd.dts
index 44766a73b0d1..b8e3fedcdea8 100644
--- a/arch/arm64/boot/dts/qcom/glymur-crd.dts
+++ b/arch/arm64/boot/dts/qcom/glymur-crd.dts
@@ -29,6 +29,14 @@ &mdss_dp1_out {
 	link-frequencies = /bits/ 64 <1620000000 2700000000 5400000000 8100000000>;
 };
 
+&pcie3_phy {
+	vdda-phy-supply = <&vreg_l3c_e1_0p89>;
+	vdda-pll-supply = <&vreg_l2c_e1_1p14>;
+
+	vdda-refgen0p9-supply = <&vreg_l1c_e1_0p82>;
+	vdda-refgen1p2-supply = <&vreg_l4f_e1_1p08>;
+};
+
 &tcsr {
 	vdda-qrefrpt0-0p9-supply = <&vreg_l2f_e1_0p83>;
 	vdda-qrefrpt1-0p9-supply = <&vreg_l2f_e1_0p83>;

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
