Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EA68560A2621
	for <linux-phy@archiver.kernel.org>; Fri, 13 Nov 2026 05:34:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=Wm14ZXWV;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=f2aPvc79;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=K9g4RzgO
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=pvfNGrbef8zRMcDQuLVizN55+Q3aZKdZtpCLvSvEMt0=; b=Wm14ZXWVLahMSYdHuy0rlKwTkX
	dqfZI976mYG27VC0eeTtoqpMBt4VuoRYFOkFogJEQnNQo/3wMhYLuINtLVL8OLwOB8wOpgMRx2P0x
	1JNGMrKfwp5McQVf4ur2bSzqUr/VV8muedNgBj5+5BuLEElxO5c22SkAnPOQRsRs2CPPEseS2OIb1
	u/Doxcv+CXoaYpsRZie/9E6RrmjVP0mXFWvjbYPCuMmnsEp5SElyvOam0DYlLlWm2WCLGmHJWg0JI
	mC4TDx0fZHGl45MnVaqqk3fMwOfoDZy3xr77FnnFxYlFewqlT8FM39UeukxMT1ebynMovTG/3yeK/
	eJCwkNFQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRjvH-0000000BhJn-2gpA;
	Fri, 13 Nov 2026 05:34:03 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRjvE-0000000BhIB-32nx
	for linux-phy@lists.infradead.org;
	Fri, 13 Nov 2026 05:34:01 +0000
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6AD576Qb3717393
	for <linux-phy@lists.infradead.org>; Fri, 13 Nov 2026 05:34:00 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	hrrGUXvg5LDwt/d33DGTAK5iq0jDAdxvcOqzbPiJbqg=; b=f2aPvc79nLvTWKNM
	IxfETBKwhI6tCoNH/edqjV2tUBnIfCjrTaGER7Cp4ZoOgwRCK1ACqciq96qib9Fo
	5XQHMhQiKwWF+V47LNOJrNxEmUUo6d84ADe/PXSomfurk+OFNfxaw+nAbXe7yZGk
	WrVdUGqvlAa/oT0ITQF7VlMX+azY70OmSxeB2lx/A+CmumrR/euRtzEbwfx74fm/
	HDOweX5wr1TdxKg4L2Q2nDH+ZIDqdO0q9tl80n4Jyt7eH/AlWJey0PwG0+Of9aDY
	H5FKrn2a3TPEnj+ohfQB52/ywhxLb0tNBs87Pls2zZRxM9na1C9tedKgnphS6i3s
	CRGxjA==
Received: from mail-oa1-f69.google.com (mail-oa1-f69.google.com [209.85.160.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hwqufgwr5-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 13 Nov 2026 05:34:00 +0000 (GMT)
Received: by mail-oa1-f69.google.com with SMTP id 586e51a60fabf-49e5451d6a5so614319fac.1
        for <linux-phy@lists.infradead.org>; Thu, 12 Nov 2026 21:34:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1794548039; x=1795152839; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=hrrGUXvg5LDwt/d33DGTAK5iq0jDAdxvcOqzbPiJbqg=;
        b=K9g4RzgODij1uzISO3seUNPxaYlvr1jXh1bFkcMD38wp+QDvx09NUZ6AHYfRSfWJR/
         ex0r/TC89xctrWAu9BVXL8KhedK9HlsOvrinwb7q5jyqvPwJaLH2zEmGvmjH8z8MwIxc
         cCG0DZVv0BJaI/B7JhD1bDPehoRXB5PGKt66A5QNhmRXybnVj/aM9eTE/ftYVE50JMtK
         PMbKhE1gP5eruel7G4aRcjL5/Aeu+iwqXghNyhAFb9NCt3C/3XLtE3Raaq1vyhsz99wS
         iHRCiLW0utkO+6Btoj/g+SFEZYp9JWcYjOqtzA8kHwfKc+Bk4t5w/9TPfG+OsJfqRYRQ
         w9tw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794548039; x=1795152839;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=hrrGUXvg5LDwt/d33DGTAK5iq0jDAdxvcOqzbPiJbqg=;
        b=yF9qzssYw+bl+7jleDhxtawL3tsuL5Di8iHVBJieNnQHPcBRQI6NWO0AMBxKrPfcVA
         vcgEo/1QvLjbu6i4PWH8Q4rPXWGO0vxAU1bV4Ka6UHeOH6Lk7j2Sd8nGkhq96CytY1B5
         HNuJz68Nc8ld73e+L7xplVXIfSQUxEdf8+EaU208Z6NHfeauhueWHgJZswzRj+k4Lvu5
         sfcPuy8/2Hqq2Nod1+4aEe4XPDWOdpjyd2DRyoZ1G0ZK68E4meYIuiK+ssRk9tnXBI3h
         3aTIwePgS8S7OVNXAgqSzP0k3XPZlxlwAaSeoBua1gy8okwWoMYqxAPO3ZN16eWuUtjH
         vF0A==
X-Gm-Message-State: APuU4Z/Yu6aR+ItX5jSO7J/KpdzmLbKVeYsVbDy4OWeM2WlNCQBPem91
	IxCW06kfzijeCFqZrtQNUbCBFloZrhYVQdFujZTQ03xmSnWi+NUcMoa9Sl3/IhbPFF2Gs1/++yb
	0+iWgQtEK76pUpohdufYz202QeuyLogpTiNcTzZTFfoHKu5PETRTs4q29C7/11VecOB96WQlpjV
	0e2bA=
X-Gm-Gg: AYBFou2rYSbk5BKjIh+LJXHD+a8CE7emAEKs3eaPh8mjYfZ4Exg01Xpup3eUBohpJ+6
	xt6S4IPDI+eJd3J4ddvjfMrOVXJ72CaUTVClPTYomkmsz/yF8/fnYT2bmR3hmBgKs4IGAH6b0BT
	xHm0NOBfHPYQIV3nxzde15u5mOlcQq8q5aGVrhj6d3Z72WjmC+tkoZ8UEp0ZZ14Uyft3u0nGi8s
	rO4LFvnCKjtK6zcxUFgKEs4uFOAFeSlVKWrfdJRSk+u8wW+dz09BrUXfo2xfSI9zsQoMbLydNsH
	bNo4qUkfHiBcOBb4ezveSm3RlXXT5KJjoo64D4OXDQ2n6+OKVjZp1DKXLyzTSUTbQj2vWyeOnDI
	qSTFcsH6FZSQHqLen+Eqi84Tw5lirYb90ZhSA5yF1AaZCyJCQFEXMt0OhZV8Pf8SSH+twk8+iFH
	4qQTlqYwCONoe3AsP/t47Z9qUE28OLf/ViqCWTb3i76mduV+zMCY+sCMevtmdS
X-Received: by 2002:a05:6820:2228:b0:719:1627:6c0e with SMTP id 006d021491bc7-71ab4d06a4fmr994576eaf.5.1794548039451;
        Thu, 12 Nov 2026 21:33:59 -0800 (PST)
X-Received: by 2002:a05:6820:2228:b0:719:1627:6c0e with SMTP id 006d021491bc7-71ab4d06a4fmr994557eaf.5.1794548038963;
        Thu, 12 Nov 2026 21:33:58 -0800 (PST)
Received: from hu-hangxian-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-4afe22576bfsm803252fac.7.2026.11.12.21.33.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Nov 2026 21:33:58 -0800 (PST)
From: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
Date: Thu, 12 Nov 2026 21:33:35 -0800
Subject: [PATCH v25 03/15] phy: qcom-mipi-csi2: Add Kaanapali support
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-Id: <20261112-kaanapali-camss-v25-3-1d709f57f370@oss.qualcomm.com>
References: <20261112-kaanapali-camss-v25-0-1d709f57f370@oss.qualcomm.com>
In-Reply-To: <20261112-kaanapali-camss-v25-0-1d709f57f370@oss.qualcomm.com>
To: Bryan O'Donoghue <bod@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Loic Poulain <loic.poulain@oss.qualcomm.com>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Abel Vesa <abelvesa@kernel.org>
Cc: linux-phy@lists.infradead.org, linux-media@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        jeyaprakash.soundrapandian@oss.qualcomm.com,
        Vijay Kumar Tumati <vijay.tumati@oss.qualcomm.com>,
        Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>,
        Abel Vesa <abel.vesa@oss.qualcomm.com>
X-Mailer: b4 0.16.1-dev-17221
X-Proofpoint-GUID: 9g7OsCPQdBo4ZHhPgWDtgdsNltkg3s6j
X-Proofpoint-ORIG-GUID: 9g7OsCPQdBo4ZHhPgWDtgdsNltkg3s6j
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMTEzMDAyMSBTYWx0ZWRfX4uP6vLZD+XBW
 sVo/4OA92NdamOD/kor8sPXllLT7EvjXEczmAtjXNQEAoFX4Ex8e/LO5MYWY5lgjPMrvZpm6mOi
 yDe+r00EqQdvLSu7lIGlvO7NZ73IIh5VZYSG/k0pH9jKFsZc4CkLDnhcz/XAZ45PKTzcNlSurh3
 PZbdEZnybV4gA34NsKu/Ga5/6EIpMqG3zNDgaluONFXptVpTOk9+bAe8bJeeyMyLCioyvgMQE0x
 kktcppT35GAmIcKuKdhOok1a9msBWZN8aldmlAe3FSolgIB/iKugEwwmbXt6hZtsmKXz6jzBf0q
 6GjbK1zgOW65ybvDT96A6GBQpFrnEBdX9hzv7g63r+mtUmO5w3R6Mlanjus5dWdjxB5+pywAaJ9
 oUstwuMcPLDMuD5xVOhOA6qeDZo/u/WYrDq67OBTiqOKFcYIz5vsJ8h8fIkBCUUSneW7KfN6V81
 4aGMpv+Wl1K81p9JZ3A==
X-Authority-Analysis: v=2.4 cv=XZocX455 c=1 sm=1 tr=0 ts=6af6a148 cx=c_pps
 a=zPxD6eHSjdtQ/OcAcrOFGw==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=zJRp6_cAMcgA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=Um2Pa8k9VHT-vaBCBUpS:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=1e3Zegj4IIqRqDCgfwkA:9 a=QEXdDO2ut3YA:10
 a=y8BKWJGFn5sdPF1Y92-H:22
X-Proofpoint-Spam-Info: AW1haW4tMjYxMTEzMDAyMSBTYWx0ZWRfX+pc4pqPsWatD
 kb5kBTFJor2QXk9mNFoklJKgkSmfErGa1SfOR+WkDP6MWbpifttYpfcZQy4pH96UM8v85fMVhaQ
 V79VGZ1UKZMRG0l7m3CRdws535pQh7M=
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-11-13_02,2026-11-11_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 clxscore=1015 malwarescore=0 priorityscore=1501 spamscore=0
 lowpriorityscore=0 bulkscore=0 adultscore=0 phishscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2611040001 definitions=main-2611130021
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261112_213400_798677_2D6AF725 
X-CRM114-Status: GOOD (  16.19  )
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

Add the Kaanapali 3nm configuration for the standalone CSI2 DPHY
driver, including the Kaanapali common status offset and power domain.

Reviewed-by: Bryan O'Donoghue <bod@kernel.org>
Reviewed-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
Signed-off-by: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-mipi-csi2-3ph-dphy.c | 16 ++++++++++++++++
 drivers/phy/qualcomm/phy-qcom-mipi-csi2-core.c     |  1 +
 drivers/phy/qualcomm/phy-qcom-mipi-csi2.h          |  1 +
 3 files changed, 18 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-mipi-csi2-3ph-dphy.c b/drivers/phy/qualcomm/phy-qcom-mipi-csi2-3ph-dphy.c
index 8cd331cfb4b3..ed40934d67ea 100644
--- a/drivers/phy/qualcomm/phy-qcom-mipi-csi2-3ph-dphy.c
+++ b/drivers/phy/qualcomm/phy-qcom-mipi-csi2-3ph-dphy.c
@@ -374,6 +374,22 @@ static struct mipi_csi2_genpd x1e_genpds[] = {
 	{ .name = "mx", .scaled = true },
 };
 
+const struct mipi_csi2phy_soc_cfg mipi_csi2_dphy_3nm_kaanapali = {
+	.ops = &phy_qcom_mipi_csi2_ops_3ph_1_0,
+	.reg_info = {
+		.init_seq = lane_regs_x1e80100,
+		.lane_array_size = ARRAY_SIZE(lane_regs_x1e80100),
+		.common_regs_offset = 0x1000,
+		.common_status_offset = 0x138,
+	},
+	.supply_names = (const char **)x1e_supplies,
+	.num_supplies = ARRAY_SIZE(x1e_supplies),
+	.clk_names = (const char **)x1e_clks,
+	.num_clk = ARRAY_SIZE(x1e_clks),
+	.genpds = x1e_genpds,
+	.num_genpds = ARRAY_SIZE(x1e_genpds),
+};
+
 const struct mipi_csi2phy_soc_cfg mipi_csi2_dphy_4nm_x1e = {
 	.ops = &phy_qcom_mipi_csi2_ops_3ph_1_0,
 	.reg_info = {
diff --git a/drivers/phy/qualcomm/phy-qcom-mipi-csi2-core.c b/drivers/phy/qualcomm/phy-qcom-mipi-csi2-core.c
index e04bde03e278..165e3d026872 100644
--- a/drivers/phy/qualcomm/phy-qcom-mipi-csi2-core.c
+++ b/drivers/phy/qualcomm/phy-qcom-mipi-csi2-core.c
@@ -443,6 +443,7 @@ static int phy_qcom_mipi_csi2_probe(struct platform_device *pdev)
 }
 
 static const struct of_device_id phy_qcom_mipi_csi2_of_match_table[] = {
+	{ .compatible	= "qcom,kaanapali-csi2-phy", .data = &mipi_csi2_dphy_3nm_kaanapali },
 	{ .compatible	= "qcom,x1e80100-csi2-phy", .data = &mipi_csi2_dphy_4nm_x1e },
 	{ }
 };
diff --git a/drivers/phy/qualcomm/phy-qcom-mipi-csi2.h b/drivers/phy/qualcomm/phy-qcom-mipi-csi2.h
index d6366f809e51..832c8d048b77 100644
--- a/drivers/phy/qualcomm/phy-qcom-mipi-csi2.h
+++ b/drivers/phy/qualcomm/phy-qcom-mipi-csi2.h
@@ -93,6 +93,7 @@ struct mipi_csi2phy_device {
 	u32 hw_version;
 };
 
+extern const struct mipi_csi2phy_soc_cfg mipi_csi2_dphy_3nm_kaanapali;
 extern const struct mipi_csi2phy_soc_cfg mipi_csi2_dphy_4nm_x1e;
 
 #endif /* __PHY_QCOM_MIPI_CSI2_H__ */

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
