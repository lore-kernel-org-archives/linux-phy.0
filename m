Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4DF30C982DA
	for <linux-phy@archiver.kernel.org>; Mon, 21 Sep 2026 05:37:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fxMkx7OQpxucoplF75hhfQxycdr+CKDs0X1KsNQaRW8=; b=wom3iV78q17q6z
	t+HfSz4h7xgxKc1RXNkz2VdGVzApr7HjcQ0jrvV32GiZ6FF5RUj5o81sMjjnLukL/PNY1bo0A+3Kk
	5zoqmCNs8O/tk1KyQDSVocpZRtCVUSuqhtSWso2dLIoLFy/1kDOKP0ubb/KBIFzv7AdgzqGZL20VH
	JsjaADYIXChB+dNii4QNVDKhe1jXRNbJDa51jmNIFgU0yRetbTbB1z5ZwPGfBCGFbcSKhLr1+7/lx
	HtDoEVklb31cx+Ol5ZztOBN8YLa1jJ0wN9eXaPDT71Ht3Zuu1V3ssneVCTRkLq9guzGtrwA9pbZ2u
	0agSa8e3jIRX78ilNeDw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8Wix-00000000wR7-4Beh;
	Mon, 21 Sep 2026 05:37:56 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8Wiv-00000000wQV-3Uwr
	for linux-phy@lists.infradead.org;
	Mon, 21 Sep 2026 05:37:55 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 68L3YxcV3679835
	for <linux-phy@lists.infradead.org>; Mon, 21 Sep 2026 05:37:53 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	5Av0TFBF20NWmzoMNcaMLBPBsgOdZZrINkSuTUnz9OI=; b=ekF0aMg+zkvnvdMG
	OwXqHasoRqPjxKm61luu/3R+F2dYUCazTLkfq8N11gS3FciWOxTGTMgKMGO/4s5J
	baOKB7olL4B5ZpkH2zPqllLecLq82srrCY7d/0z6xydrpT1nBB08CgU99VIjcD8L
	0mvB3SrYBlIZ5WFp92FzHfXRzRMoKhTB4lBj+WzM7tmBUdxNABOrKFpm47c2LoVH
	asPlxQ3qBf2DC/EDdlR9Ae5LcKwD3+G34dgYjubrw97dcGBI+dAy1fmpgSiVH6X3
	lu+2nAeAOOsd6poDdNyQ0JDmq+jlZc02UtXTg0TvO4XLDx3yXqtj7bvEyoVEYiUK
	32PhlA==
Received: from mail-pj1-f71.google.com (mail-pj1-f71.google.com [209.85.216.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4gsk5emrxm-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 21 Sep 2026 05:37:53 +0000 (GMT)
Received: by mail-pj1-f71.google.com with SMTP id 98e67ed59e1d1-39e18af9f48so4029302a91.1
        for <linux-phy@lists.infradead.org>; Sun, 20 Sep 2026 22:37:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1789969072; x=1790573872; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=5Av0TFBF20NWmzoMNcaMLBPBsgOdZZrINkSuTUnz9OI=;
        b=bRYJnF8CMnTjzMoj/t4poQAWgZkN+Tx7IOuNA0n7A1bHMTh13fQC7drko96aeUxEx3
         H2Zp3ydc/Qv+Vx+IwXiLnQmPmsXZ0kmGRdVg8nGarKkTA5PLq2bqBB5SGqaGHB6ipYTv
         2PBDJT1i5CtBOqzNfMrTFMCSyFoc+CKrZy7TmEypLLGoNXHwdcnx3ZHXNoTzAegpP/gN
         bs1tBql3Xq/tsHudx+9PRAN8RDWKfWXxC0UBb00cDwJGMcxhU2Z44kRr9hpRBY9njXty
         eSHwovKU4KucU9hR2uj48wZeIGBEcuieHO2JA6MGqApXaYP8KVNbwnPbLO5uH1Fjsd0B
         0Khg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1789969072; x=1790573872;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=5Av0TFBF20NWmzoMNcaMLBPBsgOdZZrINkSuTUnz9OI=;
        b=JlbWlIOVFcrThzCgAT6yTc9/1uTaaQYr0/wDhhB4NK2FOrt+jv3Qrk2wFMRkDz/+KP
         pkkPe7rQARAiUxqCG18LZD7uvMwrV++kuguJjmu+hQrptLUlZCV9fDpXIFueONqeqdGF
         WR9JS/E5/4mCaAsR78w7p7n+GVHFfZUyKE7t5w3FVXAc1Bw6ktsDT/IK99QownR9xbJ7
         NVdN8EGGRbCZicksXwbOnF0NR0gJVon1/a4eoBReomTB7PngzKi12kEZh/Vf2FRcKCsG
         k6umBQDG3RYoDBcqk79HjKjcpHYl9D3nNGTX3YabnX54GzlCDBShm1fFVkH4mOnzm/rj
         79RA==
X-Forwarded-Encrypted: i=1; AKwUvByOEGfYzqR7+JiHA7VVil0ctAd8dBXn9EVotjfMYcgFo5+OHm+2eRRHhuv18s2NP3lqnMg5fD1cQHE=@lists.infradead.org
X-Gm-Message-State: AFuF++mOEoFNkqxRu2WAyxXFcZk6KbC57nkJlsZDEhfdBQJs6YuY+P+G
	D1H3HMvrZ27xCii5Ubp8clbEJVjXjrQswQ8aKgnXh3n3seY1HDc3mjraXD2WjIqgEabItrX1Gnl
	vNobxqtQf65cadaRc8JR9kg6aP7Xr2qTmCcsvI8q+EPrp0iVTqRu9M1IRgsNv39Ch8AwD
X-Gm-Gg: AYBFou1JnP27jLDNJLXF6d6azCrd3JTm4ghZDL3tTc7JBug3HpCSfeL6Qmd9N3tPlKV
	Kzk3epklX60qeQYXMUjvZZKkuUV/uoSjcWG3oeoTUnQbg/vcv94nrfPGaI3MlRBu+16nykY9KR9
	KEQYdpEqRN86T24pKoHtOqFb7twhqdb35pyNXWjW0B3LVIXVEI/NoqQX3y+/h41ub7poYEH0iiV
	TTqvtBMHk905Liit+NBb4CUl/LXTnMp1r1ubEhMKTDZoBdcUCEfTJ3ym/Trm/4TqZxk/vHLMofU
	VL/8ouSrIiHoorDRlhwwQSVnFP7sEDM/buIL4KEk6SPrUXzxXjtnpzAyzx7oOIlWOQN6eDWeOvY
	EuviFKWosp68UF2xZJqYnGUcMclkb6zCSSQ==
X-Received: by 2002:a17:90b:58e4:b0:39e:4c97:ce05 with SMTP id 98e67ed59e1d1-39e4c97ced5mr13018209a91.38.1789969072411;
        Sun, 20 Sep 2026 22:37:52 -0700 (PDT)
X-Received: by 2002:a17:90b:58e4:b0:39e:4c97:ce05 with SMTP id 98e67ed59e1d1-39e4c97ced5mr13018190a91.38.1789969071980;
        Sun, 20 Sep 2026 22:37:51 -0700 (PDT)
Received: from hu-krichai-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-144d55d45a6sm15054568c88.9.2026.09.20.22.37.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 20 Sep 2026 22:37:51 -0700 (PDT)
From: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
Date: Mon, 21 Sep 2026 11:07:13 +0530
Subject: [PATCH v4 5/6] phy: qcom: qmp-pcie: Refactor common multiphy
 handling
MIME-Version: 1.0
Message-Id: <20260921-nord-v4-5-ed05c6e09240@oss.qualcomm.com>
References: <20260921-nord-v4-0-ed05c6e09240@oss.qualcomm.com>
In-Reply-To: <20260921-nord-v4-0-ed05c6e09240@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Bjorn Helgaas <bhelgaas@google.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Maxime Chevallier <maxime.chevallier@bootlin.com>,
        Philipp Zabel <p.zabel@pengutronix.de>
Cc: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>,
        shengchao.guo@oss.qualcomm.com, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1789969033; l=8020;
 i=krishna.chundru@oss.qualcomm.com; s=20230907; h=from:subject:message-id;
 bh=B9hSgf5LIgHsicFYYXgD8Nn7K6/yMMHhWd+3lvIHSVI=;
 b=C4kgjcWkc3+ruopFUBvV9013Coya1P2YdFDKm2MJSBLEJ1iD/O+izbSqmrevGKOKGFW5n684M
 ASB8keqZ0SmBk7k4yzbdxUVjjhyWDpnl+SsbboEShPX4whlV3j4d5Rl
X-Developer-Key: i=krishna.chundru@oss.qualcomm.com; a=ed25519;
 pk=10CL2pdAKFyzyOHbfSWHCD0X0my7CXxj8gJScmn1FAg=
X-Proofpoint-GUID: JStwiCZWk-NsmO00JGkIMF52kcAY75QX
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwOTIxMDA3OCBTYWx0ZWRfX3AllGmsup+C1
 TGIwUMH2IVIoaRLrukfIhsWDLQejAfgb6+oqJTgzH2Nsyra/9v++RI5vdMgzryukh0tkxAVmmfE
 auG3aDZJcBulRI+iDYwk8F3fw87cGskFGLLxOodAgHqPhIbbrVxjIqccwaRib7lCndoiEAk9TR5
 AWuGsuPGCFGmv6ncGpXR8wfR7cJsBj3KdVzzMZGYtLYBxSSIpKK61zb7KWA8/ZhPC78+iqho+Gd
 q8u8sSZFmvr9Sqqhmt0MWeytHs+o+yeNury4gjVsFmvjXSbIcjpyR+ItMCTQ/ld1T/kT/qn2ioK
 sRxITTMgu3tpS1/JrDOXoQ42/AkrIiAr7gRt2FjD4VrVhtdN7Vzfoxk6HJt7EljaeO+x7k+2UFC
 s3LOEQ+nkGmpK7gYjImZD4L5snHRuytDqvOXdsKTd8Jq0ZjvN56r8uXqIIsPshkN4t1jItXVtlE
 qN2jo3h2D0JRLlwDYqg==
X-Authority-Analysis: v=2.4 cv=f8Ddl+yM c=1 sm=1 tr=0 ts=6ab0c2b1 cx=c_pps
 a=UNFcQwm+pnOIJct1K4W+Mw==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=VdqzKS8jKosA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_K5XuSEh1TEqbUxoQ0s3:22
 a=EUspDBNiAAAA:8 a=xSDsCvtJ24Ukv9SpSl0A:9 a=QEXdDO2ut3YA:10
 a=uKXjsCUrEbL0IQVhDsJ9:22
X-Proofpoint-Spam-Info: AW1haW4tMjYwOTIxMDA3OCBTYWx0ZWRfX68LHyAQZPV3/
 oAMg1OuGGbNLUwQdFd9K0tqCND7zaTLsw4PnoqlPg3yTe4mVaHJnxQ6jKKaTU4uPWLxqr7+q8Pu
 trxHj9PLeCptaYl5Zm/ViYFf5Y481do=
X-Proofpoint-ORIG-GUID: JStwiCZWk-NsmO00JGkIMF52kcAY75QX
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-09-21_02,2026-09-16_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 bulkscore=0 priorityscore=1501 phishscore=0 adultscore=0
 spamscore=0 clxscore=1015 suspectscore=0 malwarescore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2609040000 definitions=main-2609210078
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260920_223754_128173_61A8FEB2 
X-CRM114-Status: GOOD (  20.88  )
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

Reuse the existing port resource arrays for Glymur register regions,
power domains, and NOCSR resets instead of maintaining duplicate
Glymur-specific lists.

Attach each PHY instance's power domains to the device created for that
PHY. This ensures that the associated GDSCs are managed with the
lifetime of the individual PHY device rather than the parent multiphy
platform device.

Validate the clock-output-names property before using its count for
allocation, and use a generic module description.

Signed-off-by: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-qmp-pcie-multiphy.c | 102 ++++++++++------------
 1 file changed, 44 insertions(+), 58 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie-multiphy.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie-multiphy.c
index e93cba4369fb..befca9b78ce9 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie-multiphy.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie-multiphy.c
@@ -113,31 +113,19 @@ static const char * const glymur_vreg_l[] = {
 	"vdda-phy", "vdda-pll", "vdda-refgen0p9", "vdda-refgen1p2",
 };
 
-static const char * const glymur_pciephy_a_reg_l[] = {
+static const char * const pciephy_port_a_reg_l[] = {
 	"port_a",
 };
 
-static const char * const glymur_pciephy_b_reg_l[] = {
+static const char * const pciephy_port_b_reg_l[] = {
 	"port_b",
 };
 
-static const char * const glymur_pciephy_reg_l[] = {
+static const char * const pciephy_port_ab_reg_l[] = {
 	"port_a", "port_b",
 };
 
-static const char * const glymur_pciephy_a_pd_l[] = {
-	"port_a",
-};
-
-static const char * const glymur_pciephy_b_pd_l[] = {
-	"port_b",
-};
-
-static const char * const glymur_pciephy_pd_l[] = {
-	"port_a", "port_b",
-};
-
-static const char * const glymur_pciephy_a_nocsr_reset_l[] = {
+static const char * const pciephy_port_a_nocsr_reset_l[] = {
 	"port_a_nocsr",
 };
 
@@ -145,7 +133,7 @@ static const char * const glymur_pciephy_nocsr_reset_l[] = {
 	"port_a_nocsr", "port_b_nocsr",
 };
 
-static const char * const glymur_pciephy_b_nocsr_reset_l[] = {
+static const char * const pciephy_port_b_nocsr_reset_l[] = {
 	"port_b_nocsr",
 };
 
@@ -155,12 +143,12 @@ static const struct qmp_pcie_offsets glymur_pcie_offsets_v8_50 = {
 
 static const struct qmp_phy_cfg glymur_qmp_gen5x4_pciephy_a_cfg = {
 	.offsets		= &glymur_pcie_offsets_v8_50,
-	.reg_names		= glymur_pciephy_a_reg_l,
-	.num_regs		= ARRAY_SIZE(glymur_pciephy_a_reg_l),
-	.pd_names		= glymur_pciephy_a_pd_l,
-	.num_pds		= ARRAY_SIZE(glymur_pciephy_a_pd_l),
-	.nocsr_reset_list	= glymur_pciephy_a_nocsr_reset_l,
-	.num_nocsr_resets	= ARRAY_SIZE(glymur_pciephy_a_nocsr_reset_l),
+	.reg_names		= pciephy_port_a_reg_l,
+	.num_regs		= ARRAY_SIZE(pciephy_port_a_reg_l),
+	.pd_names		= pciephy_port_a_reg_l,
+	.num_pds		= ARRAY_SIZE(pciephy_port_a_reg_l),
+	.nocsr_reset_list	= pciephy_port_a_nocsr_reset_l,
+	.num_nocsr_resets	= ARRAY_SIZE(pciephy_port_a_nocsr_reset_l),
 	.vreg_list		= glymur_vreg_l,
 	.num_vregs		= ARRAY_SIZE(glymur_vreg_l),
 	.regs			= pciephy_v8_50_regs_layout,
@@ -173,12 +161,12 @@ static const struct qmp_phy_cfg glymur_qmp_gen5x4_pciephy_a_cfg = {
 
 static const struct qmp_phy_cfg glymur_qmp_gen5x4_pciephy_b_cfg = {
 	.offsets		= &glymur_pcie_offsets_v8_50,
-	.reg_names		= glymur_pciephy_b_reg_l,
-	.num_regs		= ARRAY_SIZE(glymur_pciephy_b_reg_l),
-	.pd_names		= glymur_pciephy_b_pd_l,
-	.num_pds		= ARRAY_SIZE(glymur_pciephy_b_pd_l),
-	.nocsr_reset_list	= glymur_pciephy_b_nocsr_reset_l,
-	.num_nocsr_resets	= ARRAY_SIZE(glymur_pciephy_b_nocsr_reset_l),
+	.reg_names		= pciephy_port_b_reg_l,
+	.num_regs		= ARRAY_SIZE(pciephy_port_b_reg_l),
+	.pd_names		= pciephy_port_b_reg_l,
+	.num_pds		= ARRAY_SIZE(pciephy_port_b_reg_l),
+	.nocsr_reset_list	= pciephy_port_b_nocsr_reset_l,
+	.num_nocsr_resets	= ARRAY_SIZE(pciephy_port_b_nocsr_reset_l),
 	.vreg_list		= glymur_vreg_l,
 	.num_vregs		= ARRAY_SIZE(glymur_vreg_l),
 	.regs			= pciephy_v8_50_regs_layout,
@@ -191,10 +179,10 @@ static const struct qmp_phy_cfg glymur_qmp_gen5x4_pciephy_b_cfg = {
 
 static const struct qmp_phy_cfg glymur_qmp_gen5x8_pciephy_cfg = {
 	.offsets		= &glymur_pcie_offsets_v8_50,
-	.reg_names		= glymur_pciephy_reg_l,
-	.num_regs		= ARRAY_SIZE(glymur_pciephy_reg_l),
-	.pd_names		= glymur_pciephy_pd_l,
-	.num_pds		= ARRAY_SIZE(glymur_pciephy_pd_l),
+	.reg_names		= pciephy_port_ab_reg_l,
+	.num_regs		= ARRAY_SIZE(pciephy_port_ab_reg_l),
+	.pd_names		= pciephy_port_ab_reg_l,
+	.num_pds		= ARRAY_SIZE(pciephy_port_ab_reg_l),
 	.nocsr_reset_list	= glymur_pciephy_nocsr_reset_l,
 	.num_nocsr_resets	= ARRAY_SIZE(glymur_pciephy_nocsr_reset_l),
 	.vreg_list		= glymur_vreg_l,
@@ -398,45 +386,39 @@ static const struct phy_ops qmp_pcie_phy_ops = {
 static void qmp_pcie_pd_detach(void *data)
 {
 	struct qmp_pcie *qmp = data;
-	const struct qmp_phy_cfg *cfg = qmp->cfg;
 	int i;
 
-	for (i = 0; i < cfg->num_pds; i++) {
+	for (i = 0; i < qmp->cfg->num_pds; i++) {
 		if (!IS_ERR_OR_NULL(qmp->pd_devs[i]))
 			dev_pm_domain_detach(qmp->pd_devs[i], true);
 	}
 }
 
-static int qmp_pcie_pd_init(struct qmp_pcie *qmp)
+static int qmp_pcie_pd_init(struct qmp_pcie *qmp, struct phy *phy)
 {
 	const struct qmp_phy_cfg *cfg = qmp->cfg;
-	struct device *dev = qmp->dev;
+	struct device *pd_dev = &phy->dev;
 	int i, ret;
 
 	if (!cfg->num_pds)
 		return 0;
 
-	qmp->pd_devs = devm_kcalloc(dev, cfg->num_pds, sizeof(*qmp->pd_devs),
+	qmp->pd_devs = devm_kcalloc(pd_dev, cfg->num_pds, sizeof(*qmp->pd_devs),
 				    GFP_KERNEL);
 	if (!qmp->pd_devs)
 		return -ENOMEM;
 
+	ret = devm_add_action_or_reset(pd_dev, qmp_pcie_pd_detach, qmp);
+	if (ret)
+		return ret;
+
 	for (i = 0; i < cfg->num_pds; i++) {
-		qmp->pd_devs[i] = dev_pm_domain_attach_by_name(dev,
-							       cfg->pd_names[i]);
-		if (IS_ERR_OR_NULL(qmp->pd_devs[i])) {
-			ret = PTR_ERR(qmp->pd_devs[i]) ? : -ENODATA;
-			goto err_detach;
-		}
+		qmp->pd_devs[i] = dev_pm_domain_attach_by_name(pd_dev, cfg->pd_names[i]);
+		if (IS_ERR_OR_NULL(qmp->pd_devs[i]))
+			return PTR_ERR_OR_ZERO(qmp->pd_devs[i]) ? : -ENODATA;
 	}
 
-	return devm_add_action_or_reset(dev, qmp_pcie_pd_detach, qmp);
-
-err_detach:
-	while (--i >= 0)
-		dev_pm_domain_detach(qmp->pd_devs[i], false);
-
-	return ret;
+	return 0;
 }
 
 static int qmp_pcie_vreg_init(struct qmp_pcie *qmp)
@@ -555,6 +537,8 @@ static int qmp_pcie_multiphy_register_clocks(struct device *dev,
 	int i, ret;
 
 	num_pipe_outputs = of_property_count_strings(np, "clock-output-names");
+	if (num_pipe_outputs < 0)
+		return num_pipe_outputs;
 
 	qmp_data->num_pipe_outputs = num_pipe_outputs;
 	qmp_data->pipe_out_clks = devm_kcalloc(dev, num_pipe_outputs,
@@ -630,6 +614,7 @@ static struct phy *qmp_pcie_multiphy_xlate(struct device *dev,
 static int qmp_pcie_probe_phy(struct qmp_pcie *qmp, struct device_node *np,
 			      struct phy **out_phy)
 {
+	struct phy *phy;
 	int ret;
 
 	ret = qmp_pcie_get_mmio(qmp);
@@ -648,15 +633,16 @@ static int qmp_pcie_probe_phy(struct qmp_pcie *qmp, struct device_node *np,
 	if (ret)
 		return ret;
 
-	ret = qmp_pcie_pd_init(qmp);
+	phy = devm_phy_create(qmp->dev, np, &qmp_pcie_phy_ops);
+	if (IS_ERR(phy))
+		return PTR_ERR(phy);
+
+	ret = qmp_pcie_pd_init(qmp, phy);
 	if (ret)
 		return ret;
 
-	*out_phy = devm_phy_create(qmp->dev, np, &qmp_pcie_phy_ops);
-	if (IS_ERR(*out_phy))
-		return PTR_ERR(*out_phy);
-
-	phy_set_drvdata(*out_phy, qmp);
+	phy_set_drvdata(phy, qmp);
+	*out_phy = phy;
 
 	return 0;
 }
@@ -739,5 +725,5 @@ static struct platform_driver qmp_pcie_multiphy_driver = {
 module_platform_driver(qmp_pcie_multiphy_driver);
 
 MODULE_AUTHOR("Qiang Yu <qiang.yu@oss.qualcomm.com>");
-MODULE_DESCRIPTION("Qualcomm QMP PCIe Multi-PHY driver for Glymur");
+MODULE_DESCRIPTION("Qualcomm QMP PCIe Multi-PHY driver");
 MODULE_LICENSE("GPL");

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
