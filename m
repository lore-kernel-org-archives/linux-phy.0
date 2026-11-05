Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AA783606EE9F
	for <linux-phy@archiver.kernel.org>; Thu,  5 Nov 2026 23:51:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=sS31wRq4;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=NGHT/rcp;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=hdhWKyYU
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=BF3oHinndwPc9gaJBAIM+2eoFosaTZLyfL+cLEVEQG0=; b=sS31wRq4ctDpivEA737NroVx4V
	+G4TAJjbmqKOTR0moyibTbIjjOwIm4QktcygejNxLJDd1uGT9LzAS05QdLEpIjf97DB9kjPQX7GvP
	mVtstkdGGVZLlU7xb9yWkGiI3gWpGI50CpNuFEGwiemaSmeKcarUwP0Rjqsm/k3tBByrSO5GWwuze
	D1phqta1QQAF2qNCtCGunjOH6IPnhPBR/eo8Mt3rcHaIlmknNOgb1POzClHJBPn8SKRk34t7/GXAn
	nikaY8zL/kSyzk79fjbXbNup5gEK5UcZvdmcP9dXcg6F1JlUjQsTrvvXztxXFp6DY5zN4RtNfHO2J
	CQB5ihkA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xP7FD-0000000AtT1-1q0I;
	Thu, 05 Nov 2026 23:51:47 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xP7FA-0000000AtR6-2ceZ
	for linux-phy@lists.infradead.org;
	Thu, 05 Nov 2026 23:51:45 +0000
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6A5NeQIl3295461
	for <linux-phy@lists.infradead.org>; Thu, 5 Nov 2026 23:51:44 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=X2o9cUd2qHX
	ReA0bRiBPgQ74+T3hh2zLgXg2cSSw0KA=; b=NGHT/rcpt23284hfViWjRlWL6uM
	1vxHTZ9eg7iYKUR6DKr26vy1qAmkUs3It47omRulSZYSMap/vdTkxeSl2VKNsbzT
	cVkm9yL9rBXvmKxixzGT3iKczwzeLV3XNtV9vCKzIakmAarFclomC1pceykoicXe
	UfVLxl9rmkR0AzJ7a2ogAG/zMEGs+C15n5vC7YEbH0qAji0IwGQiRJ/hBGydaSAO
	8m0rC7yieMXsvugTVMDo+w+QI6M4yKnSy7iWGsqILRS6AuWuGZwGFW6E2w0MXNnv
	GjQqXq1rSFv3gjCgkUIO6YU1Ajso6gQdzkxJvt4QgqY78fcvNUIbsZEnzkw==
Received: from mail-dl1-f69.google.com (mail-dl1-f69.google.com [74.125.82.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hs3p9r134-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 05 Nov 2026 23:51:44 +0000 (GMT)
Received: by mail-dl1-f69.google.com with SMTP id a92af1059eb24-1a2b6fab7a6so64753c88.1
        for <linux-phy@lists.infradead.org>; Thu, 05 Nov 2026 15:51:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1793922703; x=1794527503; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=X2o9cUd2qHXReA0bRiBPgQ74+T3hh2zLgXg2cSSw0KA=;
        b=hdhWKyYUIofpD1W18ULP4zM0iCxi9XNhNG7+GjfU6TxVIntmwyC3zDPpwkvJruhgKL
         YsGn097i5HdnIsYPna3XolGx4txtoXJcIoDtfohdHQOF8EqhkfwnUOq+BgOhM4+QHlBg
         yBwrpodnbxttPVuSg6jnaKWDGH37erg+NPs30VgZKuGrDmgLANMTPxIX991VV8D0HQfV
         F45zDiDrhUALZguU7UPEjoQYwQQCdkmG0Y8h56hq59JOkanX+hcCBuZ2Zs9KdD9xy/6u
         P3JVmglU4dt9108fnRTgb8GRGO3vTSn6+HeFnZf2dTizynGW1C7y2twswtjCD9GHZfr4
         9Pqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793922703; x=1794527503;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=X2o9cUd2qHXReA0bRiBPgQ74+T3hh2zLgXg2cSSw0KA=;
        b=RNwwAv6I1fI4yfDLQHt9F8AuiYVii/hj0Lmah+oeJ7kjw6KGC3mMIQB6961J8FfKCO
         dD721jpzXDVRqjh8QwK8kJ7xKiKdGeH+/OLCHl5QP5RH0dkeqB4OEuF6HeAvnxWLTSKl
         xiGPMGAES1uEG/V+RwJ9DOofDRc5JDxb3MecKyLGlQwE72mBzm1j5b+i83ghJ7/wLazq
         /5rJFeffQio7IWcmuYXkDokSnQKXLjNhN7dIS9/b9kWnvwIHK/l3/W/v/1d/Piyeav/C
         qc2Jrp9B6IUh73GHZpZj+PIzgFv+Gr8uQ2Ufi/C3KYkX/jC8IQXLnZTpF72lYqZMUcrr
         n4CQ==
X-Forwarded-Encrypted: i=1; AKwUvBwoQGGMUbuXmtCkYy3oE0Iu6HSKTPEI+MDdC26zMSYLTftLv40uvEmifCzYY9fb677O5bBtv1kYrMY=@lists.infradead.org
X-Gm-Message-State: APuU4Z+6oG3jILbB0YNHKZo5WWiu/97lSTxRWqCkb7stVlKMSwEICh1v
	LoX1j44+DsPVp/myWamWUOm3aT/on7HKsdtS0a1iDZCG5Tvs70bvQvCL3+eDFxEc0OGpcRUX2js
	10qjgv70q0qnOLfe5pb82T6cx7VaF0Et/oSdla4pYEqz5pMyvPdqAzfJqZ1oDYWhiJkNl
X-Gm-Gg: AYBFou1ZhWmZi3Z327zjC6Bq3EXj7pc7CXrfPWRFg35XEOHj1xkEsHUD2KIcMiYwu3B
	vbZD0hkj4nA4NXttBFHksef3c0AnSU/T1qrdDo9Cm85YcnWMF+rxHAZZ61VLK1G0vBV2pCqQxpR
	XFzzfk33uiVm40xGqTziGIdlmn2YnxtrWnRuNyMrpjgu2lVpOAsnsPSZowvLXCSMmhfGnnIyqNM
	VLYaOM0kYsuyDjT1zaqW8060se57QboNZX9KiS3fSSE8sdiJLKMimq4bqNK65WtVGrvRuhBfqs9
	SM5sOyuzqVufnBCE/An2+kvArg8u7NIsecJML8TC8MkQ2aehIcBJtG1GwYXUjoGspfA9DAWEiUM
	V5rILK54xBMaV3sNy6FAXIWZfKRcE5k3it0W39nMlhh3hqzeBvy7N1T0q2eGinZAjFeZXOVSayC
	TvZMrf1J1Fo8cpDo88vzVDFG+9d/8=
X-Received: by 2002:a05:7022:3f0d:b0:156:d588:c881 with SMTP id a92af1059eb24-1b24f432240mr5489993c88.2.1793922702937;
        Thu, 05 Nov 2026 15:51:42 -0800 (PST)
X-Received: by 2002:a05:7022:3f0d:b0:156:d588:c881 with SMTP id a92af1059eb24-1b24f432240mr5489933c88.2.1793922702259;
        Thu, 05 Nov 2026 15:51:42 -0800 (PST)
Received: from hu-aarunnan-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-1b25e4a63f6sm389041c88.9.2026.11.05.15.51.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Nov 2026 15:51:41 -0800 (PST)
From: Anusha Arun Nandi <anusha.nandi@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Bryan O'Donoghue <bod@kernel.org>
Cc: gjorgji.rosikopulos@oss.qualcomm.com,
        hariram.purushothaman@oss.qualcomm.com, akapatra@quicinc.com,
        jigarkumar.zala@oss.qualcomm.com, linux-phy@lists.infradead.org,
        linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Subject: [PATCH v3 3/4] phy: qcom-mipi-csi2: Add sa8775p D-PHY support
Date: Thu,  5 Nov 2026 15:51:36 -0800
Message-Id: <20261105235137.2635442-4-anusha.nandi@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20261105235137.2635442-1-anusha.nandi@oss.qualcomm.com>
References: <20261105235137.2635442-1-anusha.nandi@oss.qualcomm.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-Proofpoint-Spam-Info: AW1haW4tMjYxMTA1MDA5NSBTYWx0ZWRfXwVjO7RWwEJFv
 ssvnCniGWjNChkGwMvg53dmX/OcSFzAoiGxo3xfReEFS/qIhYYPypkGMAwvhSUzRVy0aYdqIIM4
 Bv5wno3q3pgx/BMRBzFDH94MWkf84uM=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMTA1MDA5NSBTYWx0ZWRfX1sF7OHnl8mll
 8TFHoL1XyBzIkoUaEMq6VtP5Q40oQOLVCjY5SvIA/JFQJiHygHif2EoHQYAnbHj1+L0vquxob+8
 PFFnxaBnyNv8/2+Zev39l+y9TEwShEzrSXDek94Zo49Bv0YWAx88ERU4chOYTVlGE+6I0BuSjoA
 lsNs7+qBoat+XziyvV2f08jZwVq/+ThcLdPXd4jeknMPyVTGRg1DllnA7XAOi5uZJRNlQ85/3Od
 wgCkAqFs39mW701HxwZe4Aq+PBobV7uTajhYYsAV2mRAY+zqnpBLwk+qc21MlUUWzib+U3JEVnS
 8Dg78kldX/UvFL7I4WhExj5kaCg4kyYinvU8SETKtt3h7bFPDkENxpbyIUP2rLj2nY9XyOoz2z5
 Ih/lwwWpWoo48FPBx6UMOzkjFA6jdCoa43MBqfdIPZONHHUCyXlLkNA37GHgvyjqqRkW/XR0fRl
 W6JXFFSmagKYDRYuWOw==
X-Proofpoint-ORIG-GUID: lvXA75mdlP-jXZNGSyDTHeqV4z3MmRsU
X-Authority-Analysis: v=2.4 cv=f6Pdl+yM c=1 sm=1 tr=0 ts=6aed1690 cx=c_pps
 a=kVLUcbK0zfr7ocalXnG1qA==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=zJRp6_cAMcgA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=Um2Pa8k9VHT-vaBCBUpS:22 a=EUspDBNiAAAA:8
 a=NbtrdQoedUgDOuZm1b4A:9 a=vr4QvYf-bLy2KjpDp97w:22
X-Proofpoint-GUID: lvXA75mdlP-jXZNGSyDTHeqV4z3MmRsU
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-11-05_06,2026-11-04_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 lowpriorityscore=0 malwarescore=0 bulkscore=0 phishscore=0
 adultscore=0 spamscore=0 clxscore=1015 impostorscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2611040001 definitions=main-2611050095
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261105_155144_670284_F340BC42 
X-CRM114-Status: GOOD (  15.57  )
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

Add the SA8775P CSIPHY to the generic MIPI CSI2 PHY driver, 
bound to a new "qcom,sa8775p-csi2-phy" compatible
and reusing the existing D-PHY 2-phase hw ops
(phy_qcom_mipi_csi2_ops_3ph_1_0). The lane_regs_sa8775p[] init
sequence is the CSIPHY v1.3.0 2-phase 2.5Gbps 4-lane D-PHY register
set ported verbatim from the legacy in-tree camss-csiphy-3ph-1-0.c
table; common_regs_offset is 0x800.

SA8775P reuses the same "timer"/"core" clock names as x1e80100 (both
are hardcoded literals in the driver, not per-SoC configurable - no
SoC this driver supports uses different names). Like x1e80100, its
CSIPHY core clock is OPP-scaled against the sensor's link frequency
via the shared csiphy_opp_table in lemans.dtsi, matching the legacy
in-tree CSIPHY driver's own sa8775p_resources OPP wiring.

SA8775P's CSIPHY has a single power-domain, the Titan Top GDSC,
matching the legacy in-tree CAMSS driver's sa8775p_resources.pd_name
= "top" and the existing lemans.dtsi camss node. Like x1e80100's own
"top" domain, it is not OPP-scaled, only kept enabled.

QCS8300 shares this same CSIPHY D-PHY hardware and does not need its
own of_device_id entry: the qcom,csi2-phy.yaml binding declares
"qcom,sa8775p-csi2-phy" as QCS8300's fallback compatible, so QCS8300
CSIPHY nodes bind through the "qcom,sa8775p-csi2-phy" match entry
added here.

Reviewed-by: Jigarkumar Zala <jigarkumar.zala@oss.qualcomm.com>
Signed-off-by: Anusha Arun Nandi <anusha.nandi@oss.qualcomm.com>
---
 .../qualcomm/phy-qcom-mipi-csi2-3ph-dphy.c    | 108 +++++++++++++++++-
 .../phy/qualcomm/phy-qcom-mipi-csi2-core.c    |   1 +
 drivers/phy/qualcomm/phy-qcom-mipi-csi2.h     |   1 +
 3 files changed, 109 insertions(+), 1 deletion(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-mipi-csi2-3ph-dphy.c b/drivers/phy/qualcomm/phy-qcom-mipi-csi2-3ph-dphy.c
index 966d79c98f9b..52994cb721ec 100644
--- a/drivers/phy/qualcomm/phy-qcom-mipi-csi2-3ph-dphy.c
+++ b/drivers/phy/qualcomm/phy-qcom-mipi-csi2-3ph-dphy.c
@@ -317,7 +317,6 @@ static int phy_qcom_mipi_csi2_lanes_enable(struct mipi_csi2phy_device *csi2phy,
 	writel(val, csi2phy->base +
 	       CSIPHY_3PH_CMN_CSI_COMMON_CTRLn(regs->common_regs_offset, 7));
 
-	val = 0x00;
 	writel(val, csi2phy->base +
 	       CSIPHY_3PH_CMN_CSI_COMMON_CTRLn(regs->common_regs_offset, 0));
 
@@ -383,3 +382,110 @@ const struct mipi_csi2phy_soc_cfg mipi_csi2_dphy_4nm_x1e = {
 	.genpds = x1e_genpds,
 	.num_genpds = ARRAY_SIZE(x1e_genpds),
 };
+
+/* 5nm 2PH v1.3.0 2p5Gbps 4 lane DPHY mode */
+static const struct mipi_csi2phy_lane_regs lane_regs_sa8775p[] = {
+	{.reg_addr = 0x0724, .reg_data = 0x00, .param_type = CSIPHY_DEFAULT_PARAMS},
+	{.reg_addr = 0x0728, .reg_data = 0x04, .param_type = CSIPHY_DEFAULT_PARAMS},
+	{.reg_addr = 0x0700, .reg_data = 0x80, .param_type = CSIPHY_DEFAULT_PARAMS},
+	{.reg_addr = 0x070c, .reg_data = 0xff, .param_type = CSIPHY_DEFAULT_PARAMS},
+	{.reg_addr = 0x0738, .reg_data = 0x1f, .param_type = CSIPHY_DEFAULT_PARAMS},
+	{.reg_addr = 0x072c, .reg_data = 0x01, .param_type = CSIPHY_DEFAULT_PARAMS},
+	{.reg_addr = 0x0734, .reg_data = 0x0f, .param_type = CSIPHY_DEFAULT_PARAMS},
+	{.reg_addr = 0x0710, .reg_data = 0x52, .param_type = CSIPHY_DEFAULT_PARAMS},
+	{.reg_addr = 0x071c, .reg_data = 0x0a, .param_type = CSIPHY_DEFAULT_PARAMS},
+	{.reg_addr = 0x0714, .reg_data = 0x60, .param_type = CSIPHY_DEFAULT_PARAMS},
+	{.reg_addr = 0x073c, .reg_data = 0xb8, .param_type = CSIPHY_DEFAULT_PARAMS},
+	{.reg_addr = 0x0704, .reg_data = 0x0c, .param_type = CSIPHY_DEFAULT_PARAMS},
+	{.reg_addr = 0x0720, .reg_data = 0x00, .param_type = CSIPHY_DEFAULT_PARAMS},
+	{.reg_addr = 0x0708, .reg_data = 0x10, .param_type = CSIPHY_SETTLE_CNT_LOWER_BYTE},
+	{.reg_addr = 0x0024, .reg_data = 0x00, .param_type = CSIPHY_DEFAULT_PARAMS},
+	{.reg_addr = 0x0000, .reg_data = 0x8d, .param_type = CSIPHY_DEFAULT_PARAMS},
+	{.reg_addr = 0x0038, .reg_data = 0xfe, .param_type = CSIPHY_DEFAULT_PARAMS},
+	{.reg_addr = 0x002c, .reg_data = 0x01, .param_type = CSIPHY_DEFAULT_PARAMS},
+	{.reg_addr = 0x0034, .reg_data = 0x0f, .param_type = CSIPHY_DEFAULT_PARAMS},
+	{.reg_addr = 0x0010, .reg_data = 0x52, .param_type = CSIPHY_DEFAULT_PARAMS},
+	{.reg_addr = 0x001c, .reg_data = 0x0a, .param_type = CSIPHY_DEFAULT_PARAMS},
+	{.reg_addr = 0x0014, .reg_data = 0x60, .param_type = CSIPHY_DEFAULT_PARAMS},
+	{.reg_addr = 0x003c, .reg_data = 0xb8, .param_type = CSIPHY_DEFAULT_PARAMS},
+	{.reg_addr = 0x0004, .reg_data = 0x0c, .param_type = CSIPHY_DEFAULT_PARAMS},
+	{.reg_addr = 0x0020, .reg_data = 0x00, .param_type = CSIPHY_DEFAULT_PARAMS},
+	{.reg_addr = 0x0008, .reg_data = 0x10, .param_type = CSIPHY_SETTLE_CNT_LOWER_BYTE},
+	{.reg_addr = 0x0224, .reg_data = 0x00, .param_type = CSIPHY_DEFAULT_PARAMS},
+	{.reg_addr = 0x0200, .reg_data = 0x8d, .param_type = CSIPHY_DEFAULT_PARAMS},
+	{.reg_addr = 0x0238, .reg_data = 0xfe, .param_type = CSIPHY_DEFAULT_PARAMS},
+	{.reg_addr = 0x022c, .reg_data = 0x01, .param_type = CSIPHY_DEFAULT_PARAMS},
+	{.reg_addr = 0x0234, .reg_data = 0x0f, .param_type = CSIPHY_DEFAULT_PARAMS},
+	{.reg_addr = 0x0210, .reg_data = 0x52, .param_type = CSIPHY_DEFAULT_PARAMS},
+	{.reg_addr = 0x021c, .reg_data = 0x0a, .param_type = CSIPHY_DEFAULT_PARAMS},
+	{.reg_addr = 0x0214, .reg_data = 0x60, .param_type = CSIPHY_DEFAULT_PARAMS},
+	{.reg_addr = 0x023c, .reg_data = 0xb8, .param_type = CSIPHY_DEFAULT_PARAMS},
+	{.reg_addr = 0x0204, .reg_data = 0x0c, .param_type = CSIPHY_DEFAULT_PARAMS},
+	{.reg_addr = 0x0220, .reg_data = 0x00, .param_type = CSIPHY_DEFAULT_PARAMS},
+	{.reg_addr = 0x0208, .reg_data = 0x10, .param_type = CSIPHY_SETTLE_CNT_LOWER_BYTE},
+	{.reg_addr = 0x0424, .reg_data = 0x00, .param_type = CSIPHY_DEFAULT_PARAMS},
+	{.reg_addr = 0x0400, .reg_data = 0x8d, .param_type = CSIPHY_DEFAULT_PARAMS},
+	{.reg_addr = 0x0438, .reg_data = 0xfe, .param_type = CSIPHY_DEFAULT_PARAMS},
+	{.reg_addr = 0x042c, .reg_data = 0x01, .param_type = CSIPHY_DEFAULT_PARAMS},
+	{.reg_addr = 0x0434, .reg_data = 0x0f, .param_type = CSIPHY_DEFAULT_PARAMS},
+	{.reg_addr = 0x0410, .reg_data = 0x52, .param_type = CSIPHY_DEFAULT_PARAMS},
+	{.reg_addr = 0x041c, .reg_data = 0x0a, .param_type = CSIPHY_DEFAULT_PARAMS},
+	{.reg_addr = 0x0414, .reg_data = 0x60, .param_type = CSIPHY_DEFAULT_PARAMS},
+	{.reg_addr = 0x043c, .reg_data = 0xb8, .param_type = CSIPHY_DEFAULT_PARAMS},
+	{.reg_addr = 0x0404, .reg_data = 0x0c, .param_type = CSIPHY_DEFAULT_PARAMS},
+	{.reg_addr = 0x0420, .reg_data = 0x00, .param_type = CSIPHY_DEFAULT_PARAMS},
+	{.reg_addr = 0x0408, .reg_data = 0x10, .param_type = CSIPHY_SETTLE_CNT_LOWER_BYTE},
+	{.reg_addr = 0x0624, .reg_data = 0x00, .param_type = CSIPHY_DEFAULT_PARAMS},
+	{.reg_addr = 0x0600, .reg_data = 0x8d, .param_type = CSIPHY_DEFAULT_PARAMS},
+	{.reg_addr = 0x0638, .reg_data = 0xfe, .param_type = CSIPHY_DEFAULT_PARAMS},
+	{.reg_addr = 0x062c, .reg_data = 0x01, .param_type = CSIPHY_DEFAULT_PARAMS},
+	{.reg_addr = 0x0634, .reg_data = 0x0f, .param_type = CSIPHY_DEFAULT_PARAMS},
+	{.reg_addr = 0x0610, .reg_data = 0x52, .param_type = CSIPHY_DEFAULT_PARAMS},
+	{.reg_addr = 0x061c, .reg_data = 0x0a, .param_type = CSIPHY_DEFAULT_PARAMS},
+	{.reg_addr = 0x0614, .reg_data = 0x60, .param_type = CSIPHY_DEFAULT_PARAMS},
+	{.reg_addr = 0x063c, .reg_data = 0xb8, .param_type = CSIPHY_DEFAULT_PARAMS},
+	{.reg_addr = 0x0604, .reg_data = 0x0c, .param_type = CSIPHY_DEFAULT_PARAMS},
+	{.reg_addr = 0x0620, .reg_data = 0x00, .param_type = CSIPHY_DEFAULT_PARAMS},
+	{.reg_addr = 0x0608, .reg_data = 0x10, .param_type = CSIPHY_SETTLE_CNT_LOWER_BYTE},
+	{.reg_addr = 0x005c, .reg_data = 0x00, .param_type = CSIPHY_SKEW_CAL},
+	{.reg_addr = 0x0060, .reg_data = 0xfd, .param_type = CSIPHY_SKEW_CAL},
+	{.reg_addr = 0x0064, .reg_data = 0x7f, .param_type = CSIPHY_SKEW_CAL},
+	{.reg_addr = 0x025c, .reg_data = 0x00, .param_type = CSIPHY_SKEW_CAL},
+	{.reg_addr = 0x0260, .reg_data = 0xfd, .param_type = CSIPHY_SKEW_CAL},
+	{.reg_addr = 0x0264, .reg_data = 0x7f, .param_type = CSIPHY_SKEW_CAL},
+	{.reg_addr = 0x045c, .reg_data = 0x00, .param_type = CSIPHY_SKEW_CAL},
+	{.reg_addr = 0x0460, .reg_data = 0xfd, .param_type = CSIPHY_SKEW_CAL},
+	{.reg_addr = 0x0464, .reg_data = 0x7f, .param_type = CSIPHY_SKEW_CAL},
+	{.reg_addr = 0x065c, .reg_data = 0x00, .param_type = CSIPHY_SKEW_CAL},
+	{.reg_addr = 0x0660, .reg_data = 0xfd, .param_type = CSIPHY_SKEW_CAL},
+	{.reg_addr = 0x0664, .reg_data = 0x7f, .param_type = CSIPHY_SKEW_CAL},
+};
+
+static const char * const sa8775p_clks[] = {
+	"core",
+	"timer",
+};
+
+static const char * const sa8775p_supplies[] = {
+	"vdda-hs",
+	"vdda-lp",
+};
+
+static const struct mipi_csi2_genpd sa8775p_genpds[] = {
+	{ .name = "top", .scaled = false },
+};
+
+const struct mipi_csi2phy_soc_cfg mipi_csi2_dphy_sa8775p = {
+	.ops = &phy_qcom_mipi_csi2_ops_3ph_1_0,
+	.reg_info = {
+		.init_seq = lane_regs_sa8775p,
+		.lane_array_size = ARRAY_SIZE(lane_regs_sa8775p),
+		.common_regs_offset = 0x800,
+	},
+	.supply_names = (const char **)sa8775p_supplies,
+	.num_supplies = ARRAY_SIZE(sa8775p_supplies),
+	.clk_names = (const char **)sa8775p_clks,
+	.num_clk = ARRAY_SIZE(sa8775p_clks),
+	.genpds = sa8775p_genpds,
+	.num_genpds = ARRAY_SIZE(sa8775p_genpds),
+};
diff --git a/drivers/phy/qualcomm/phy-qcom-mipi-csi2-core.c b/drivers/phy/qualcomm/phy-qcom-mipi-csi2-core.c
index 8bebc943a771..d0e08d4bbea5 100644
--- a/drivers/phy/qualcomm/phy-qcom-mipi-csi2-core.c
+++ b/drivers/phy/qualcomm/phy-qcom-mipi-csi2-core.c
@@ -454,6 +454,7 @@ static int phy_qcom_mipi_csi2_probe(struct platform_device *pdev)
 }
 
 static const struct of_device_id phy_qcom_mipi_csi2_of_match_table[] = {
+	{ .compatible	= "qcom,sa8775p-csi2-phy", .data = &mipi_csi2_dphy_sa8775p },
 	{ .compatible	= "qcom,x1e80100-csi2-phy", .data = &mipi_csi2_dphy_4nm_x1e },
 	{ }
 };
diff --git a/drivers/phy/qualcomm/phy-qcom-mipi-csi2.h b/drivers/phy/qualcomm/phy-qcom-mipi-csi2.h
index 6cf9e5b956f7..f092366a0436 100644
--- a/drivers/phy/qualcomm/phy-qcom-mipi-csi2.h
+++ b/drivers/phy/qualcomm/phy-qcom-mipi-csi2.h
@@ -96,5 +96,6 @@ struct mipi_csi2phy_device {
 };
 
 extern const struct mipi_csi2phy_soc_cfg mipi_csi2_dphy_4nm_x1e;
+extern const struct mipi_csi2phy_soc_cfg mipi_csi2_dphy_sa8775p;
 
 #endif /* __PHY_QCOM_MIPI_CSI2_H__ */
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
