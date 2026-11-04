Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B1128606D830
	for <linux-phy@archiver.kernel.org>; Wed,  4 Nov 2026 09:08:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=uize0ZWg;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=cOyzIDyj;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=azpS5srE
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=dhKm5ErZ9WjwPk7lrXJdx5nZKS9p66SYwgAbX6cLiRw=; b=uize0ZWgJE/m4UoMZ4W96W9+M/
	aRDCYHdBrwvgsB41sbR4O4kwtoSPU+714H5p8fRewXgRWau+eKwV7UDwo/MZHfMekGOl6g1adl2lC
	fNYQ6k+8fsk63xMweKP6jIWs8IkF1I/3v/VWuMLFqHAjEvcgfWNC+zDztwkE8SDaHq6f2DGS0wEKm
	xSO4bLnqKr4b/k5/7A+V7HzZb17HDo+vk+DltYOqTPNfp3WoJ4q1iRHRfgBswYWSmdGHD+bO5gMuI
	EVLz/LLEYAPeP4FldDMPHoJTHr/GOYcnpIwCRwlsA1RDN+lu0bY77CzCpX2JTjsaNa3yZarOn4DjA
	ljZBUHUQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xOWyc-00000004ps9-1oxq;
	Wed, 04 Nov 2026 09:08:14 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xOWya-00000004pqw-0kBV
	for linux-phy@lists.infradead.org;
	Wed, 04 Nov 2026 09:08:13 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6A48KXZJ3875532
	for <linux-phy@lists.infradead.org>; Wed, 4 Nov 2026 09:08:11 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	D8me2QpoNUYpkzCrzP/COkjEOzARHLPsOFtTfm8ZtJ0=; b=cOyzIDyj0a2Iuht5
	k9JzBA0s6Lx3awvT38wo9fsLbOjYVLkvyKWAW2Cv/RaDkQ6JtpKMkrIa2eiYE/c7
	9+QeWk80lsvgrjUxqee5ZXrmUpSWEd2zHxXnlwGT58DswAuXoHdfV7LdiA5W4/7Z
	YI3ExzuPi1esPo/dvGwmDWZk5XsrhkgmOSJFNWYw1KFWu00JnB4CNlzL32cBYfCu
	2HLOguKmaXxqXSp88HqLcctetV/TBCyHOB/yWwHqwuZyAbn93xYyXgM5b7CSDwXj
	Xps25NLLOO3LOWyfztjJYvIJjtrk1Kkeag6zjTndhhgYxtoiOE3aRbw80HI9CowI
	0VQ7fg==
Received: from mail-ot1-f69.google.com (mail-ot1-f69.google.com [209.85.210.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hqwb0978m-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 04 Nov 2026 09:08:11 +0000 (GMT)
Received: by mail-ot1-f69.google.com with SMTP id 46e09a7af769-8468290b866so721463a34.1
        for <linux-phy@lists.infradead.org>; Wed, 04 Nov 2026 01:08:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1793783291; x=1794388091; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=D8me2QpoNUYpkzCrzP/COkjEOzARHLPsOFtTfm8ZtJ0=;
        b=azpS5srEhVNtGuypbKkoS1AWKGZrfQYiOAoOvAoLF+ul0R0xHCEWWdNRU4+SQnZKgk
         0XhL36AOWQV1Bj8AOKxLvE8AutsSKLHiwQ94EYvh2JyWA8SJ870wA4VgK98vKhJms17C
         oOJY6Sg6KjrejihamIkKx/DRDQA/Juf149RpLO4lrVTA8iG2H6WqUkEXqg6udpT5LClS
         66r1t4Kl/zD/Zi7MdM2pxcBh84IvWRsDMO+I3CLylaZiwrk752Qgc6vK6wRi3JIjyHOK
         lRemjzi5uQkCn8vG5MbUPaOG9AauPutPRGomhLj77k/n6Y3xQjyQQ/UCg0UCWuG00Omh
         Bs0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793783291; x=1794388091;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=D8me2QpoNUYpkzCrzP/COkjEOzARHLPsOFtTfm8ZtJ0=;
        b=UP84IUzTyQfOjSPJD6fqCNvWBG2i0naatLedJPkUaplVXGG9+I0RcCLAI7rbyaqOAP
         BDsZrqpsEyti3h8A+8QW1ltWhSD9IXnY7vd01WiwFCRxD0GjZMbu+yKMCoUS4/rPTzp5
         etGTatoj2mKO+BLdPuAa0kGGhaDYH8dS/QLG/QqT49a+jCbttaX8f2e1Ta/KcVAlgvQs
         4fW001BtrXB1TIxUOkGckOA+rND0FXChAQv6S059LJKOHVHCGoOOxJo9XFSprnkkFUzC
         ktmmFcyrlSf6p4qbbMxSw5NT1qUXSsKyRxVC40YO0YgUztofgbqPKCIndSQ+Qg0QKsod
         9dbQ==
X-Forwarded-Encrypted: i=1; AKwUvByXkuKSIKHXF928TIB0qw2pqzDJs7g1CsUkuqSwcp+4qt6DKWWd7m4ro0JmCr4hRLCV1z5Epltei5s=@lists.infradead.org
X-Gm-Message-State: APuU4Z+OtowakS9vp8RxyX1cz49f+/vYoMjncCK5z5LCA/6igPat8EAB
	ncq65ATNYjPE1TX+77foHzyhIBzmniQYkxtR8e/8UDFhbXuJwIzcMsbVFN0OId3lqoJybLe34XA
	9nnXB6TronMUt1X5uczPEFHuRrJvwB9txklKWGxdxsCVUxkldPVsVp/TO+EA40HG5PqSl
X-Gm-Gg: AYBFou3gWNpN6UfNBgP8VgHHQzlCgnJoZoQtk7pT0gyiP7YKdmPCL9cLhdeDzSsarDk
	AwwbutB7LCY8rx+B+0zSMwvejjOIzEXDAZzwUB5P8yf8nfLjUDLNDfCcHmZxFinFEhJYaZQRZAF
	t5ik//1RYHmF2KOJ8bqrKqcX2agLRpIqjxKDlP/NrqvTExDwz+kusTituHvGhZVFsMgwPsjluBo
	uLYxsczI4WR2PgWyVe9AmB51kt500P7MFK01RuS0uaxVi06+Yrkmq+hp39Jd9P1sRosvrrl3cy7
	bdfbMOhwkCgFQLURGDE5yG3SkZVXlLL2R4WNi8RWMCiKiY15kCrlndXLOZhwjpp7k8V3ig3l3Kz
	iTWbo5cnPfO8sVBITE6LNlFZWPhCq/ltdoCZ3Ywwr6Hon+AZu6s7PC1CUBIrE4s1nWtiwKw4WvY
	kMHYgQjj4Br+CM9sqEE9s=
X-Received: by 2002:a05:6830:2b0e:b0:821:c75e:5309 with SMTP id 46e09a7af769-85d3636e246mr12595625a34.7.1793783290861;
        Wed, 04 Nov 2026 01:08:10 -0800 (PST)
X-Received: by 2002:a05:6830:2b0e:b0:821:c75e:5309 with SMTP id 46e09a7af769-85d3636e246mr12595602a34.7.1793783290473;
        Wed, 04 Nov 2026 01:08:10 -0800 (PST)
Received: from hu-qianyu-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-85ef3d768c8sm1519846a34.8.2026.11.04.01.08.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Nov 2026 01:08:10 -0800 (PST)
From: Qiang Yu <qiang.yu@oss.qualcomm.com>
Date: Wed, 04 Nov 2026 01:08:01 -0800
Subject: [PATCH v4 2/3] phy: qcom: qmp-pcie: Add vdda-refgen supplies for
 Glymur
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-Id: <20261104-phyrefgen_1104-v4-2-ba508fc6ab40@oss.qualcomm.com>
References: <20261104-phyrefgen_1104-v4-0-ba508fc6ab40@oss.qualcomm.com>
In-Reply-To: <20261104-phyrefgen_1104-v4-0-ba508fc6ab40@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Abel Vesa <abelvesa@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Qiang Yu <qiang.yu@oss.qualcomm.com>,
        Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>,
        Abel Vesa <abel.vesa@oss.qualcomm.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1793783286; l=2038;
 i=qiang.yu@oss.qualcomm.com; s=20250513; h=from:subject:message-id;
 bh=X0zqKLQgxtFqsdr2c8NqWI9DTymrR5SFOBpbqURcmZU=;
 b=jOmVb1vGw8nEqcFE5bWnDz1WHLHxQTvffqHoM0iOlxKkPjMbu0qP+0COeDgjSm43OG0So7hmT
 x3ll492AqDnDr+4Py0zhLe3Smv3XmkxJ/2pgmb3yWL9VHEsYZvwRN7a
X-Developer-Key: i=qiang.yu@oss.qualcomm.com; a=ed25519;
 pk=Rr94t+fykoieF1ngg/bXxEfr5KoQxeXPtYxM8fBQTAI=
X-Proofpoint-Spam-Info: AW1haW4tMjYxMTA0MDAzNiBTYWx0ZWRfX3+NH1UQDqDJP
 4xFOjwf8wvUb/EV3p5d6Z4bDdQoO1uMUorlpLOC9H+WqKoUcPbW4muNoLu44JR2RybSTwssZOZG
 lLAyK7Gi0BYusWF3zo5ri3v62GW1hf0=
X-Authority-Analysis: v=2.4 cv=OfINnRTY c=1 sm=1 tr=0 ts=6aeaf5fb cx=c_pps
 a=z9lCQkyTxNhZyzAvolXo/A==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=zJRp6_cAMcgA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=DJpcGTmdVt4CTyJn9g5Z:22
 a=EUspDBNiAAAA:8 a=m2jQVEIWa0EwQwJFt7gA:9 a=QEXdDO2ut3YA:10
 a=EyFUmsFV_t8cxB2kMr4A:22
X-Proofpoint-GUID: SqicO_p0ub9qe014apRhv6FEHNS5rFVM
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMTA0MDAzNiBTYWx0ZWRfX5j0zbm0/4RDV
 jIdCmy8xEZp4SA6mL5FRWWqUQhxXLJvjuuLcSCVQI7HObZqaw0ZhGwni5EpfMd/8d26uFheDSps
 oXqztF++TW9EoiAis4OliwTla35iIwz4XGEiLv6B+FCteEV7+MuU18bzzL9YWVdHRl558E7CTlS
 vMSRbMQik0pBDOJEqr7tGWCKYfNH4cCOB3MIy2N2AVjO+01BAtSedQ89oFrU1d5OMu0UsbetsPM
 QpUAiZ9mYD50gBibgrJB6r4hnsfRldRCpXs7imxLN/jkkTkLL0XYoNEdgG3Rkxat/TrKD9NwVPp
 aKSRnjbrBs1OIO6mXNBOS6qJXeKRhe9fWBGyw15HdDwXfR3MTqFoJnv5jqjep6JATda4DoTiVMD
 YPjm7H/4u47Hk9wUilFG50qY6usCyYhnx0I6otBNz/+sP9DxO5GM38RNqZcJBNxqP4edzTy6TPZ
 Cd0iSfhyCnoQtGrUI5g==
X-Proofpoint-ORIG-GUID: SqicO_p0ub9qe014apRhv6FEHNS5rFVM
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-11-04_02,2026-11-03_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 spamscore=0 lowpriorityscore=0 adultscore=0 clxscore=1015
 phishscore=0 impostorscore=0 priorityscore=1501 bulkscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2610300000 definitions=main-2611040036
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261104_010812_223673_3ECED14C 
X-CRM114-Status: GOOD (  12.79  )
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

The refgen providing reference voltage for PCIe QMP PHY on Glymur requires
two power supplies independent from the PHY's core and qref rails. Add
support for vdda-refgen0p9 and vdda-refgen1p2 supplies with a dedicated
glymur_qmp_phy_vreg_l list.

Update both Gen5x4 and Gen4x2 configurations to use the new supply list.

Reviewed-by: Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>
Reviewed-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
Signed-off-by: Qiang Yu <qiang.yu@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 12 ++++++++----
 1 file changed, 8 insertions(+), 4 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
index 9cfabf474fd6..e226b65ec7c6 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
@@ -4106,6 +4106,10 @@ static const char * const sm8550_qmp_phy_vreg_l[] = {
 	"vdda-phy", "vdda-pll", "vdda-qref",
 };
 
+static const char * const glymur_qmp_phy_vreg_l[] = {
+	"vdda-phy", "vdda-pll", "vdda-refgen0p9", "vdda-refgen1p2",
+};
+
 /* list of resets */
 static const char * const ipq8074_pciephy_reset_l[] = {
 	"phy", "common",
@@ -5555,8 +5559,8 @@ static const struct qmp_phy_cfg glymur_qmp_gen5x4_pciephy_cfg = {
 
 	.reset_list		= sdm845_pciephy_reset_l,
 	.num_resets		= ARRAY_SIZE(sdm845_pciephy_reset_l),
-	.vreg_list		= qmp_phy_vreg_l,
-	.num_vregs		= ARRAY_SIZE(qmp_phy_vreg_l),
+	.vreg_list		= glymur_qmp_phy_vreg_l,
+	.num_vregs		= ARRAY_SIZE(glymur_qmp_phy_vreg_l),
 
 	.regs			= pciephy_v8_50_regs_layout,
 
@@ -5571,8 +5575,8 @@ static const struct qmp_phy_cfg glymur_qmp_gen4x2_pciephy_cfg = {
 
 	.reset_list		= sdm845_pciephy_reset_l,
 	.num_resets		= ARRAY_SIZE(sdm845_pciephy_reset_l),
-	.vreg_list		= qmp_phy_vreg_l,
-	.num_vregs		= ARRAY_SIZE(qmp_phy_vreg_l),
+	.vreg_list		= glymur_qmp_phy_vreg_l,
+	.num_vregs		= ARRAY_SIZE(glymur_qmp_phy_vreg_l),
 
 	.regs			= pciephy_v8_regs_layout,
 

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
