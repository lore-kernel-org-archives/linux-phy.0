Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 779E660A2612
	for <linux-phy@archiver.kernel.org>; Wed, 28 Oct 2026 15:21:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=zXH3oRFT;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=mZbUf/nG;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=LHPZNTl9
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=DFtrWDDppu+v1TYybweoCxAVC5QoOwjH4BxFTXLUKw0=; b=zXH3oRFT/QFfb8E1LW3h7g9wkv
	U4YFBnGKlP5athAgpZRDN4wm3DtfVKIzaTvHBgolW5shSYpNgQScbTjEzX1MGQfn4j4wtdSy0jKYx
	n6PjnJNWopA5dDG9oug5+ebyVvzQvpzIqewtGyHn3PjT8xOt6a+8BUn74HzaPlPgV4bk/JMrAIP9E
	e84V93x1bDN+YWXO65zeuqiKHZtSydk0GPPXjMGdXsGirfd7m12hTAy4gaJmAXWoWuTKo3ICBE5EJ
	0+3UEp8o3RPohFksg6UNqDtu26eI6d6aL0x/7JQA5mWzGy0M3Fp5JvPXzNSYxQVxMN6PbPOtrC+Ov
	G+J2wYHg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xM5Sj-00000007Kqs-0xUm;
	Wed, 28 Oct 2026 15:21:13 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xM5Sg-00000007Kq8-2rgt
	for linux-phy@lists.infradead.org;
	Wed, 28 Oct 2026 15:21:11 +0000
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 69SFA34L1471774
	for <linux-phy@lists.infradead.org>; Wed, 28 Oct 2026 15:21:09 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	WC8KaNzexqILvj+nwYYKocvsByBerULznJgP9Q96RzY=; b=mZbUf/nGhN1KTNs0
	KQnai4oOh0VL32rWnYxOUmaLRkXEw+m3FYHCLQDAZSEt+hvET5E2g+3XXnZA2KCz
	gwHuF5DeEMIFuPacHKlzv0nUvABbChp13NgcHZlGEDK+km2uMP2IWeiCWb6b8war
	7K7KZQz8fzNf2JeUm3h4456A5s0rn4LWL91dbGS6t75Aj1qzTAaLc+S1HrPVKSWF
	SSkeaIkXpe+g05gQ7YPs4u8i3lkmYUBHojBhw945msyR47P0H3WrUnleL/isdRcQ
	+2tYJiJ8DFZA6guWvYIZYpaljJeIZO0aE7KWa0zto7O4v+4WJ08YEmZtsdVlYUH4
	IZmKxA==
Received: from mail-yx1-f72.google.com (mail-yx1-f72.google.com [74.125.224.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hkfehh46w-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 28 Oct 2026 15:21:09 +0000 (GMT)
Received: by mail-yx1-f72.google.com with SMTP id 956f58d0204a3-67686ccd1b6so44584d50.2
        for <linux-phy@lists.infradead.org>; Wed, 28 Oct 2026 08:21:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1793200869; x=1793805669; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=WC8KaNzexqILvj+nwYYKocvsByBerULznJgP9Q96RzY=;
        b=LHPZNTl9i9j5todm5SwSZOWvKdFbplqHrFz1oC2QhBLfvb91Q5iyKRwWzkMBYvhzKG
         ++YRxg5BQbFxq3szZ6dzML911K24OBMIs1r2OIhjpsAS0k+5wqqjm4cVBevKgtIwkWEG
         T3FKK/YwkFIZN8JX98tpql59OvXqp4O3h+h+KjkhE9Ff9IzPKzWCx8nMyOgwnI2ongTD
         PXxskFKf4XqmMmlBu4wc8WGQuUjhloNz6mBj1g90UUmQTjubMNoA3AEsIf8lUykVbUM6
         bb/6cKuk4tOJkv/8F/gPf/6d6myi/ej626IDIY2rgE/y+R+P5u42r8iQox47TrVSNrXx
         VVrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793200869; x=1793805669;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=WC8KaNzexqILvj+nwYYKocvsByBerULznJgP9Q96RzY=;
        b=FCt8/r1ovEZtK+NKzgPR5ZHm4RspJMyljGbvnCUcn1LOeLrF4LjR8MIvtuhXPLQxtZ
         884Bc7rwffm94cwmH5BLFiiSogh+8NM3QPC16hUder4bPyT22Fl+qzu4hMKgF2FTCMKG
         /EOHj4Kakc7oEkhuwW18L3+/pcfrLbEG6w+cJ2ow3s11FlG6h1RiIlVNxEitPbN/pPXb
         QAS+/yFz0zeCxTaNrbp7BTwyBMVaktJiSVKi4j2S2Y+8PGpDETlGjKC2lskS9gg0QP+9
         avp3XvJs7SR1xXxE7l9QdzP7noangTIOW0Xkycw9JlKVCbwNsynA2ea8kb1XXAzbTFxJ
         oB7Q==
X-Gm-Message-State: AFq9FYJv/G5CCuPHk+sRx5rgEBGwoi9byirtQpH0hqFb5eQpjBria42t
	dM/aqljiJbCGsQ6FHvufCBBdB+a28JxD2pmfRK7c60CTuc25N58F2dTmS3UCswtiLKULoiCIj9u
	unidrUWgpCTr+06i9V/XDGDuU8n2b8HnQ1Ok4bzTqGeqGhlKgAj9/uvyHgi8XDTWpLP3J
X-Gm-Gg: AYBFou1mp81fhKS1Dt7mX9xT5TS9cq52BxINTCgyGnwQ8w+scaH//8vfVbtge7sCijd
	8C8tr9QyBGV68XAkmP6AL6SA4B/BQdHNLPOBYI2d/zKLFUVjrjRY6uqrZ/qJgRdfli6dUtGA5Ad
	xzQsl7JLJENQY4Mk4EyD1nnBiMI904n6tb8vRxH9TZA85iErRv8OXeVa+VrYDyA6Cs2g9yR91UG
	LLUD/OyO//xlcg5d4ycpUzVmKJ+zEMRVZIKZV9XIOKcFuZX4lp9NBhQOWhfzRkuhdAzEpm+OY4M
	JBDRsZdFuB0rTyNtQFmcZkNe8IDMavMgk9o9Ctd97TwMphskzIql9/jCF2W9SZAx0pOWjY+EjjB
	x+dZBP9Ajymimc7QYWAmhwPj0fNuJFIBjbghK2hAxFsvFreO1ds1K8Vbf7OxGdyjcHIR/L2+ltu
	g61CUvaULI/+lNWCJGFUhg9WRIhl8tb1l5tcdVmj0rAOQ/mw3WtFUJXOiQmzbe
X-Received: by 2002:a05:690e:13ce:b0:679:8c43:a140 with SMTP id 956f58d0204a3-67a7bbf9a0cmr2290686d50.31.1793200868861;
        Wed, 28 Oct 2026 08:21:08 -0700 (PDT)
X-Received: by 2002:a05:690e:13ce:b0:679:8c43:a140 with SMTP id 956f58d0204a3-67a7bbf9a0cmr2290626d50.31.1793200868178;
        Wed, 28 Oct 2026 08:21:08 -0700 (PDT)
Received: from hu-hangxian-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 956f58d0204a3-67a803cdd1asm1107541d50.4.2026.10.28.08.20.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Oct 2026 08:20:58 -0700 (PDT)
From: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
Date: Wed, 28 Oct 2026 08:20:37 -0700
Subject: [PATCH v23 03/15] phy: qcom-mipi-csi2: Add Kaanapali support
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-Id: <20261028-kaanapali-camss-v23-3-95f250b18612@oss.qualcomm.com>
References: <20261028-kaanapali-camss-v23-0-95f250b18612@oss.qualcomm.com>
In-Reply-To: <20261028-kaanapali-camss-v23-0-95f250b18612@oss.qualcomm.com>
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
        Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
X-Mailer: b4 0.16.1-dev-17221
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDI4MDA2MSBTYWx0ZWRfX4Ucc49TJrBNB
 WRDPpc2IaUMyxnC95cdyXl4G5Fer/DjfLWpvKgxtHs+0mVW8bOTLTQomqL/phxQI1011XmA549z
 FFRyWtL4FhXtg5BJzKEGyA3pDEONPxr2pnbjtn+OZ03hW9SotHfz8m/ko+tTcU31z6DxaDNeFaG
 17ZTJChDRROqIbRxb6DEkGTtCWwMpEIFuySH5FpPkpvOwpyIPhV783WkpxXzG9PAvyi1rXXSO0O
 x/XpwuFzdEppWmitp1bJYNNx+KF8TPbnnJrKE9a1GGoYVHJOr18pVfwEYUUWkjSig/lAPwykVz8
 4aE5zbw7gvCl5Xhcu/SVLM/TNJYdXteZvbbWTcjbRlEL92Q72LkqYGrnz/wx2t4WUsRTO6PjZon
 +9D81hHr1OynSDg1595sHMTLPU6w8knGdFQVHVsM9AOQxmE+KOdC3aIYLZoBP35znnfZnnPkRxC
 K6zHsx+dZx4J6FX8vmA==
X-Authority-Analysis: v=2.4 cv=A/T5rKWG c=1 sm=1 tr=0 ts=6ae212e5 cx=c_pps
 a=VEzVgl358Dq0xwHDEbsOzA==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=rJkE3RaqiGZ5pbrm-msn:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=1e3Zegj4IIqRqDCgfwkA:9 a=QEXdDO2ut3YA:10
 a=uujmmnXaIg8lM0-o0HFK:22
X-Proofpoint-ORIG-GUID: 9bi0rAN1nGmtfU1JkFPAfvaZfblX2yRW
X-Proofpoint-GUID: 9bi0rAN1nGmtfU1JkFPAfvaZfblX2yRW
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDI4MDA2MSBTYWx0ZWRfX7gGPAUEvbm5g
 sHsanmoXFqV63KMxEd8Ao9MuYZAc74vV0T6riVTSqc4jS2+ZM9OGm9aNfgnux4bHaaxzHfZxreH
 za3Dvh7HwvkHglZvruWZtHk7YWvr8aA=
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-10-28_05,2026-10-21_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 bulkscore=0 impostorscore=0 suspectscore=0 lowpriorityscore=0
 priorityscore=1501 malwarescore=0 clxscore=1015 adultscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2610190000 definitions=main-2610280061
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261028_082110_847676_700A2B64 
X-CRM114-Status: GOOD (  15.11  )
X-Spam-Score: -1.5 (-)
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
Signed-off-by: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-mipi-csi2-3ph-dphy.c | 16 ++++++++++++++++
 drivers/phy/qualcomm/phy-qcom-mipi-csi2-core.c     |  1 +
 drivers/phy/qualcomm/phy-qcom-mipi-csi2.h          |  1 +
 3 files changed, 18 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-mipi-csi2-3ph-dphy.c b/drivers/phy/qualcomm/phy-qcom-mipi-csi2-3ph-dphy.c
index 8cd331cfb4b3..658a39463104 100644
--- a/drivers/phy/qualcomm/phy-qcom-mipi-csi2-3ph-dphy.c
+++ b/drivers/phy/qualcomm/phy-qcom-mipi-csi2-3ph-dphy.c
@@ -389,3 +389,19 @@ const struct mipi_csi2phy_soc_cfg mipi_csi2_dphy_4nm_x1e = {
 	.genpds = x1e_genpds,
 	.num_genpds = ARRAY_SIZE(x1e_genpds),
 };
+
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
diff --git a/drivers/phy/qualcomm/phy-qcom-mipi-csi2-core.c b/drivers/phy/qualcomm/phy-qcom-mipi-csi2-core.c
index c0a4fa20eaf0..aff9e66f0352 100644
--- a/drivers/phy/qualcomm/phy-qcom-mipi-csi2-core.c
+++ b/drivers/phy/qualcomm/phy-qcom-mipi-csi2-core.c
@@ -444,6 +444,7 @@ static int phy_qcom_mipi_csi2_probe(struct platform_device *pdev)
 
 static const struct of_device_id phy_qcom_mipi_csi2_of_match_table[] = {
 	{ .compatible	= "qcom,x1e80100-csi2-phy", .data = &mipi_csi2_dphy_4nm_x1e },
+	{ .compatible	= "qcom,kaanapali-csi2-phy", .data = &mipi_csi2_dphy_3nm_kaanapali },
 	{ }
 };
 MODULE_DEVICE_TABLE(of, phy_qcom_mipi_csi2_of_match_table);
diff --git a/drivers/phy/qualcomm/phy-qcom-mipi-csi2.h b/drivers/phy/qualcomm/phy-qcom-mipi-csi2.h
index d6366f809e51..2355a1db9b94 100644
--- a/drivers/phy/qualcomm/phy-qcom-mipi-csi2.h
+++ b/drivers/phy/qualcomm/phy-qcom-mipi-csi2.h
@@ -94,5 +94,6 @@ struct mipi_csi2phy_device {
 };
 
 extern const struct mipi_csi2phy_soc_cfg mipi_csi2_dphy_4nm_x1e;
+extern const struct mipi_csi2phy_soc_cfg mipi_csi2_dphy_3nm_kaanapali;
 
 #endif /* __PHY_QCOM_MIPI_CSI2_H__ */

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
