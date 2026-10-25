Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BA5160A6F57
	for <linux-phy@archiver.kernel.org>; Sun, 25 Oct 2026 03:17:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=mllTNU3u;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=K0NxnS4q;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=KwD2v/Sx
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=DFtrWDDppu+v1TYybweoCxAVC5QoOwjH4BxFTXLUKw0=; b=mllTNU3uLNJbUlu4Z79CDgTESR
	lP2WLAx4yxSBcRNf+OmCGfeMyTYwyNSnayNZFZmGL93lzC8dsrSJj6qcD86H7A5QlvLBa11/SL7QF
	7hkdI93PRLypuBbIE1NlHaD0xUVVH+nr/3XRzIS/ckHB5eeef5VTMAkT1NwHSn8gZPwbi/kD74FZ9
	Gxei/jPBTn54qIFjlAyGAEwULyGgO2gn5ULxTuAhZzwVTuzTXVLyu6/Qavld6yABubi0LIKpBKFUG
	yKJemHSbRya0plhNxJh66IDYA9GlpZ7XFg85pI8n3B5umN+AwBh7P6vNlPaj8/3XXihE3f1PcS4X5
	IwkH1syg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xKojp-00000000gm2-35hC;
	Sun, 25 Oct 2026 03:17:37 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xKojl-00000000ghu-0Ija
	for linux-phy@lists.infradead.org;
	Sun, 25 Oct 2026 03:17:35 +0000
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 69P17A6x3586377
	for <linux-phy@lists.infradead.org>; Sun, 25 Oct 2026 03:17:32 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	WC8KaNzexqILvj+nwYYKocvsByBerULznJgP9Q96RzY=; b=K0NxnS4qiKGsicvn
	gO/yo4GACPhn7eiaXAZFRGJ0TsREzYjJjpoG64CL1T0/LaoQBHoIzO5Obhxefqpw
	vmrdlnjPWNIp/QCGMnCzjGTZknvlKhVWo0mjVcoPG3BjpzOkAAMKTgz8woSsRUt8
	HnUwve/FbAPGpJCBm1n60mepHHZfrgSlUy76VUtVkvqKOo7wyTqGlmN5DHu3w809
	4pC6P10vaoqAl2SQ8eL+Hk996k1gMLJwbWu80m910H1JwaThoYbYseu6uD0T0eI9
	NjJ20kKpHoey+5dR1eioX6kaU5tmtcuuLpxE5lzeOffbLrYiJS8IOfrVRg17+9+k
	eIY6zw==
Received: from mail-dy1-f200.google.com (mail-dy1-f200.google.com [74.125.82.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hgkp6jdu9-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Sun, 25 Oct 2026 03:17:32 +0000 (GMT)
Received: by mail-dy1-f200.google.com with SMTP id 5a478bee46e88-3552883bd19so7350469eec.1
        for <linux-phy@lists.infradead.org>; Sat, 24 Oct 2026 20:17:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1792898251; x=1793503051; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=WC8KaNzexqILvj+nwYYKocvsByBerULznJgP9Q96RzY=;
        b=KwD2v/SxohtLzN89fmYv8DtAn1DcjzeK+eggJA1+RBfpeN6CrA0vbRNBlKHX52kho8
         uIasAPeSVpJgSrdca5uDYi2sOH6BhcozcHqPyg+mAKDWVCUGEtkTojchv9WodRT7Ro0G
         Gg5wHNKEudFxnI1JOb/IpD7SzCknnb82fFg8NQk5L9ZDcRZ2SiqYWoDD289Nfzwbvc9U
         on5HTjYCaU7TYPa6QLQjRWkJ6xq4R6jSRH0bOuaXo0MjErnbxH5Le/SJp2SM9QjSIQjb
         aEeF+rW7HcsxEsYA/7olD2ad4P0lILp2wMRcjVnTkTGXMhReqziRkC8PYQdF5sjOR2Q0
         sETg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792898251; x=1793503051;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=WC8KaNzexqILvj+nwYYKocvsByBerULznJgP9Q96RzY=;
        b=u2kxVRnfPpBtbga0nso5CXIGmZyKtcWs2IQ7ycQA3vpWwDzf9h8fnH1Pc126hvTeeL
         nnZ4S1qOP1B8lDL3EWl/4yxC/HBuo5J/t721D2+9VzAx+XpnBfnrQIlssXKG8pWt66Vk
         MRSSMzlEBrkot5W9NzESTRU8NRbE10lAiK2aMjP/LoCcgMeFgTnw8JSMFvfWJtIePbUc
         7L7u0c8QZqPiUoJySI00aSrYUTJoR7cj5dXjQiFfncF4CEL/qzK1qTipoM2q8LhYXBK/
         7uUQd87yhPpvT7eYvsh6a9UIFtI9L8PCedzLejxslm9FLGO75UGknc9+LDkvSIylZHKo
         IWVA==
X-Gm-Message-State: AFq9FYIgRaIdctCRbDmsp5wOLW4NSGqGiqs/kZHDW/16XYByl4MDQ/8C
	TRNzVIxWlujGnZU7prhyUYj2NfBssplTiqWkpF2a9lN3YjunTIMQzimsVKptx8xA2hGe/DeRKGH
	BQYsIZaLB2WhF6BoudNFI7lk6O6PMw46TGeJHW+BMy0BCAdWhrnfVzegIlhhjOstUTDE/
X-Gm-Gg: AYBFou39xrpsJjgRQc1TyhW93Z2d79I8drYPpUFDambEh7u5VDA5rnrhF4Tk8tC+7rt
	3oronQvTro0EhDmuxRWP5ixjn1JzE3aV0CsaIz97YOqH+/Ki5bmHg9Myg3EbSjO3GEbjT5hUeaM
	kH6bwKnJkjiFCsW0MisdoKVvjxN/ocI4g3ru33rM4tHANt0Y1qxx2ZVvFJmwWYYeKxpu3MPYvVu
	nbSCIgBwlLyainIGgA2vDPQ4QkWPmNLF1nVZYVbSIOh0+OA7NgG5VI9mR0S/FoIrz0gRarGJ4tU
	yoLZnqcqioEdAS95sR9WJdsLJK3ZEadjI7ytE2q61Hg+bNPPOYmO0Pb78FrNeC6y6FqzGfw9OM6
	AUk7EjrYIx2SQTORKQubU5tYw8e9iyGU7RYZvyyQ86kxXCgGxmUwxN13Cb0sbnWC+eXPwgjq8nc
	QzO4Pqbqgn1Q==
X-Received: by 2002:a05:693c:66cf:20b0:369:f18f:34ab with SMTP id 5a478bee46e88-369f18f376amr2491893eec.11.1792898250970;
        Sat, 24 Oct 2026 20:17:30 -0700 (PDT)
X-Received: by 2002:a05:693c:66cf:20b0:369:f18f:34ab with SMTP id 5a478bee46e88-369f18f376amr2491774eec.11.1792898247987;
        Sat, 24 Oct 2026 20:17:27 -0700 (PDT)
Received: from hu-hangxian-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-369e8ec50bcsm24133054eec.23.2026.10.24.20.17.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 24 Oct 2026 20:17:27 -0700 (PDT)
From: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
Date: Sat, 24 Oct 2026 20:17:22 -0700
Subject: [PATCH v22 03/14] phy: qcom-mipi-csi2: Add Kaanapali support
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-Id: <20261024-kaanapali-camss-v22-3-7da3ea49c8a1@oss.qualcomm.com>
References: <20261024-kaanapali-camss-v22-0-7da3ea49c8a1@oss.qualcomm.com>
In-Reply-To: <20261024-kaanapali-camss-v22-0-7da3ea49c8a1@oss.qualcomm.com>
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
X-Proofpoint-ORIG-GUID: vnsH2hGOYC4h8DikJyZaC1pqbk7PTOxE
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDI1MDAxMiBTYWx0ZWRfX0dpHMwwu+H1j
 9+mLDm/h8GSSzDT+3kvyRv38tAZ0TmMWawThQh+X7lD7vKIVuoc+Dz7BleLy5BDPYfzPS5WpOLT
 XWHGBuwH1RD4AvYfmdhFwH/h7Kmyvl0=
X-Proofpoint-GUID: vnsH2hGOYC4h8DikJyZaC1pqbk7PTOxE
X-Authority-Analysis: v=2.4 cv=bq/Zl0ai c=1 sm=1 tr=0 ts=6add74cc cx=c_pps
 a=PfFC4Oe2JQzmKTvty2cRDw==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_glEPmIy2e8OvE2BGh3C:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=1e3Zegj4IIqRqDCgfwkA:9 a=QEXdDO2ut3YA:10
 a=6Ab_bkdmUrQuMsNx7PHu:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDI1MDAxMiBTYWx0ZWRfX/GdED7kONIoa
 v4DqEwQVMZs38laOOWam2dda0avtpxpG1bWGSG7IX34k9Zw0cmyJufxDQPToIXrO69+1szoFpWW
 NY/pqzKQgXocYvoy2U3lB0Y4fDIAdAnZ+n4JWStY8DteNqjdWLjVHMZJjzX2icLEo42GZ5aIkRp
 E4+/SFsYFPIUiwZQ9sFI+waPWNLOvIG+6K0oMR2IsZxTjUp2gBUIiar0cA8nTXUrPL5ED4+Bylh
 8Kk2byB8CUOH71SqMHOt24ObXVrL60pO27gMzpDnYtvNlbgqQjWVk2beqkOxqwzq5kkgU0PSmBN
 vKYlntuqXl3oAJTHApkR+F17R/CyQI4d7GfyUwiaIYairWnAR2kfIDybrRw2RZ/ErM0FKDIB3m3
 b2Ja5cGT/NdJokNAkcEB6L4i0kHJCNCzGrMbfurkM/tT81sDFZYlsAUHeR2NoXd6QN4jYnmxCcQ
 R0WN3YFu6qegn+d990A==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-10-25_01,2026-10-21_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 malwarescore=0 bulkscore=0 impostorscore=0 spamscore=0
 suspectscore=0 clxscore=1015 lowpriorityscore=0 priorityscore=1501
 phishscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2610190000
 definitions=main-2610250012
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261024_201733_237366_5E20D8DD 
X-CRM114-Status: GOOD (  15.06  )
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
X-Spam-Status: No, score=-17.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
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
