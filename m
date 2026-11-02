Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 923C0606A33E
	for <linux-phy@archiver.kernel.org>; Mon,  2 Nov 2026 10:42:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=Gt+eDvqN;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=MVAXJiAc;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=YBLbLGlx
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=k3ft7jVpkwhNJhmF2GQowGGAVdsp7+DTolxUcjN7moQ=; b=Gt+eDvqNmbL8qVPStCB9rKk/pS
	yaH4Gncz+5SxqN3ROFw9U8YbbD0We0zqqZKmYf7Dl/vfzdGyWJcdDBo20ib7pLD/CWdws7spLM0B8
	3fhYvCuHo9giFFLx+UzpFHOlKt0YPa958ZGxYhKqV48fOYfKuqkONLK014ZGTUDNqNn21Wk0DQUJ7
	STAkItoMYL6tatwexFqW/i/1Lv+1ld5T3KC2xjhualwkNtA/QCAMA47rcBI7uUTYwfiEqFJ/8Z4D0
	RTeatPV7lLa0ayQRGMHMSITVVsy3LCmV3zndH8oQDEsIkucIXLopcoJKQdIUTZB7vc1OTeoV3OzFA
	jyRSqoJA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xNpUd-0000000GCMU-1TUr;
	Mon, 02 Nov 2026 10:42:23 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xNpUb-0000000GCL5-24Gn
	for linux-phy@lists.infradead.org;
	Mon, 02 Nov 2026 10:42:22 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6A29AMXw1821130
	for <linux-phy@lists.infradead.org>; Mon, 2 Nov 2026 10:42:21 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	H8f8Mh3ZgS0m37ODmPprXsCON9gwMJBXEWv6on2qRfE=; b=MVAXJiAcHKx346Z4
	gBF0ZYkZ8zmOHZmk8isiNBTpjqUf7N0j6ghGgwJK4/h80EI1ufdVtSY+qksON/5s
	VIGqu/risGfQ6EaJppiE6fVkC1mmexuD4yqANEQyT6335irJ8GLrN7PSZQ2XgReF
	7LQ51ZHI4W9llbgNTIzzthBnYLUjz02jRgGO9LM+jw95d4eCJ0qkQGw6NY+7WioL
	NjnRzfOSVop/b+1xp+clr8jzj82K0aV5Zv+k4WAZTLJVlcsn9gvJK8eSHZJOMApO
	QTzJxYyVg1WyGaXKhm0lB8DkmGf8B/wIZVXFPRoY3B3vGpwsrzNsmY1cZgrkO4P4
	y1rJQw==
Received: from mail-oi1-f197.google.com (mail-oi1-f197.google.com [209.85.167.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hpky4h8ue-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 02 Nov 2026 10:42:20 +0000 (GMT)
Received: by mail-oi1-f197.google.com with SMTP id 5614622812f47-4eb0b989f0eso4092340b6e.0
        for <linux-phy@lists.infradead.org>; Mon, 02 Nov 2026 02:42:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1793616140; x=1794220940; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=H8f8Mh3ZgS0m37ODmPprXsCON9gwMJBXEWv6on2qRfE=;
        b=YBLbLGlx5DYWjGsG/q3wRPRRqsSRD7hsPzYX1ixTAp8SICzMbkaJSIYmhIPGuFLrE/
         OivVDSpsKZyhRrUMQjUSgvjSjrWCuulYperteg8B1j6SdI0AdKfRekBXR1k/hrI7fEjq
         ei1ZoUPuX7oFhBBYjnfMTbfDklinn0BIQRz+s98O7oYj5awd1c9Fw7p+pKPtCvzjXkQx
         DWwtri93YXQxbcM2FZU01HLsKwAQhda8O9ozggu+IdfnbBFPzggNhSL/++zD0DCKCsMZ
         n2cYtJpAoIESQxcrbcUdsGk8f/52T1F5o/u5F30XDpzk6uHj2+Ktkv0YUmjdYS24nyJY
         Lh4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793616140; x=1794220940;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=H8f8Mh3ZgS0m37ODmPprXsCON9gwMJBXEWv6on2qRfE=;
        b=SMmt/V8XGP3qAOFQ2JAnC3bfDjpU8uAYQKLnqYTt4RlsG2wEi7V+cKAMb9yIj4Ld6t
         efhRtHKwlu6/Ij1zBUpTaJGduaNIdemtmSf7Jl7k4zO4eoXJ9XehG+phc2Z6jKrLR3Y7
         H6ANwG+gT8YEaPac403Vw2uWJLgaDT0UGbwMMRbBwrr8FriEEPsLyIIzg2MaesJct6zl
         ANo1BZw7X3Nbpr4bE/E0CMHz7z61DP9P3tpe6VqM9hoAifMqxDpr9BBNL+n87tmxwi1t
         7bvmdMgV5PKkSWyxG13AfdLND7RiR9Hh6OGYvPngWhTr9JUBub+h95CdDX1EBb8aHluu
         Mc6A==
X-Gm-Message-State: AFq9FYJoAcwGY30mHhyBdoncOWPi4tfcNUfbMk4tyeW5j2XXHN1zx6US
	2kQuiwmtkd+Y0aOJyPgZGqxK/9UUSKduq9/MGgyuqf1/b10o/zcQDW+C9rh+zq6AcCZvth+0TcE
	bQJBp3e/eEu5wGJ/JrHM692LGQyP3e60x9NqbjpZJ7xwNx1IumOB2tRrPs3xjmOlekUCk
X-Gm-Gg: AYBFou1zIK0nsxLWrxfxufNfqrZdu6JOd0uAWyG5D0tTVv4LOzdEuaf4abQTVTJS6Sp
	wV2Hw6jAsIknT/ruevKgEhD/36aTpkNE0J+xRjCPpoLlWMChLRxS18budWX4jKklgNMBc03N+/r
	MNeSrsDVJXEQTaZwpdKFf1iZPca3cX2rRkm8cD9DD3mUiM1g/XZ3M6haghKyLWWXm9exBindb6R
	69zIX7gzSLMG0IjbwONzCe+vFl2WiQUzhUOfGWHexrMw5ufHPR6kKjNs+kCsJJYO9m9kZql5Xaa
	yJaGQ80Ahthfq6iuWN4FW8OqVJrwS2QgJjpbx8wRY03MKRoM14lVxBlDj/UDrv/Jwbh3QhXN+MH
	4q9WFG3TKRfDXicAJm+AWsxn+SzpD/YYDHtyzSeL7t/YG0QEHJszO16mTdoyPilq2aqNLp9AUQo
	/nmA5fHyHLQVgvezuUfKnx5hiNl1hUpZFcdQExe5OzsJJyMTC4wcS9ZedocPU=
X-Received: by 2002:a05:6808:120a:b0:4a3:cea7:4ab6 with SMTP id 5614622812f47-5640de48fc8mr4536099b6e.10.1793616140146;
        Mon, 02 Nov 2026 02:42:20 -0800 (PST)
X-Received: by 2002:a05:6808:120a:b0:4a3:cea7:4ab6 with SMTP id 5614622812f47-5640de48fc8mr4536083b6e.10.1793616139644;
        Mon, 02 Nov 2026 02:42:19 -0800 (PST)
Received: from hu-hangxian-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-5640fe0fc77sm7447171b6e.12.2026.11.02.02.42.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Nov 2026 02:42:19 -0800 (PST)
From: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
Date: Mon, 02 Nov 2026 02:42:10 -0800
Subject: [PATCH v24 02/15] phy: qcom-mipi-csi2: Parametrise the common
 status register offset
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-Id: <20261102-kaanapali-camss-v24-2-d6b8f3f6f66f@oss.qualcomm.com>
References: <20261102-kaanapali-camss-v24-0-d6b8f3f6f66f@oss.qualcomm.com>
In-Reply-To: <20261102-kaanapali-camss-v24-0-d6b8f3f6f66f@oss.qualcomm.com>
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
X-Proofpoint-ORIG-GUID: MrPgVo3c_b0uCYxgL0_l28rBa7w627sk
X-Proofpoint-GUID: MrPgVo3c_b0uCYxgL0_l28rBa7w627sk
X-Proofpoint-Spam-Info: AW1haW4tMjYxMTAyMDA0MiBTYWx0ZWRfXw00lDYt0VcgK
 Fhcswh7oqKXpuoW/jvR/y64Q8Dtd4fGqzsLn5p6mndyd36v7nCFkPh/MyTmSappdBGc5F5RZt++
 +Wk82lExxLi1sr1HA1zuc+3G6Pm+q+8=
X-Authority-Analysis: v=2.4 cv=QoHLTlyd c=1 sm=1 tr=0 ts=6ae8690d cx=c_pps
 a=WJcna6AvsNCxL/DJwPP1KA==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=zJRp6_cAMcgA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=DJpcGTmdVt4CTyJn9g5Z:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=P6Xs4Y00w1yHQXPR5eoA:9 a=QEXdDO2ut3YA:10
 a=_Y9Zt4tPzoBS9L09Snn2:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMTAyMDA0MiBTYWx0ZWRfXwhlVMEUsgVKc
 CDAw5QElLP/AvJEjtLWsxoaBRkD+1vaWZd1mWiQQXAgPuaAaUCtTWAtL7VmLaG8iu5gVI8bLsQ4
 Hv08C0Ri8o98cz6lHnoafY7ZNSBKrNl1sJ+lCtTr2pAuxrRc3Cl/kPl4fbnbwWPCDGrzuJcgcuR
 F3cGRyhOih6Qtnqv0Hs1zv41k8cxvkWrgYUt9FCyRy4tR9QSHs1G4qdBsBlbZYUwnHKgFK2FkWN
 siht9bt0DlvqO5Kw/mp93cDvzj4HLSvbY63Qg5lifH8nAQRq8+QvKS6R38LT5sVPE8tB5dVsNIv
 iynecMGPLKJpH4E9qq4LyHRofRIPwBs6tSUWgEaedRnH9MVb+bRqvbobK0bZO0OegPXUE6LB6tE
 gSM2uqWZUOs+VpIXlSj52EjcNyW4CCsJFSUFaG1rjHD+cjI3UaYnBDESm1WwjZGGr3PXrHiVmqR
 wfxHcJkizIWBKfroNDQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-11-02_03,2026-10-21_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 lowpriorityscore=0 adultscore=0 spamscore=0 bulkscore=0
 suspectscore=0 impostorscore=0 clxscore=1015 priorityscore=1501 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2610300000 definitions=main-2611020042
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261102_024221_563732_0C5CA6C5 
X-CRM114-Status: GOOD (  15.37  )
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

The CSI2 PHY common status registers are not at a fixed offset from the
common register block across SoCs: x1e80100 uses 0xb0 while other 3PH
v2.4.0 parts differ.

Replace the hard-coded 0xb0 in CSIPHY_3PH_CMN_CSI_COMMON_STATUSn() with
a per-SoC common_status_offset field in struct mipi_csi2phy_device_regs,
initialising x1e80100 to 0xb0 so behaviour is unchanged. This is a
no-functional-change preparation for describing other SoC offsets.

Reviewed-by: Bryan O'Donoghue <bod@kernel.org>
Reviewed-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
Signed-off-by: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-mipi-csi2-3ph-dphy.c | 16 +++++++++++-----
 drivers/phy/qualcomm/phy-qcom-mipi-csi2.h          |  1 +
 2 files changed, 12 insertions(+), 5 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-mipi-csi2-3ph-dphy.c b/drivers/phy/qualcomm/phy-qcom-mipi-csi2-3ph-dphy.c
index 966d79c98f9b..8cd331cfb4b3 100644
--- a/drivers/phy/qualcomm/phy-qcom-mipi-csi2-3ph-dphy.c
+++ b/drivers/phy/qualcomm/phy-qcom-mipi-csi2-3ph-dphy.c
@@ -19,7 +19,8 @@
 #define CSIPHY_3PH_CMN_CSI_COMMON_CTRL6_COMMON_PWRDN_B	BIT(0)
 #define CSIPHY_3PH_CMN_CSI_COMMON_CTRL6_SHOW_REV_ID	BIT(1)
 #define CSIPHY_3PH_CMN_CSI_COMMON_CTRL10_IRQ_CLEAR_CMD	BIT(0)
-#define CSIPHY_3PH_CMN_CSI_COMMON_STATUSn(offset, n)	((offset) + 0xb0 + 0x4 * (n))
+#define CSIPHY_3PH_CMN_CSI_COMMON_STATUSn(offset, common_status_offset, n) \
+	((offset) + (common_status_offset) + 0x4 * (n))
 
 #define CSIPHY_2PH_LN_CSI_2PHASE_CTRL9n(n)		((0x200 * (n)) + 0x24)
 
@@ -176,19 +177,23 @@ static void phy_qcom_mipi_csi2_hw_version_read(struct mipi_csi2phy_device *csi2p
 	       CSIPHY_3PH_CMN_CSI_COMMON_CTRLn(regs->common_regs_offset, 6));
 
 	tmp = readl_relaxed(csi2phy->base +
-			    CSIPHY_3PH_CMN_CSI_COMMON_STATUSn(regs->common_regs_offset, 12));
+			    CSIPHY_3PH_CMN_CSI_COMMON_STATUSn(regs->common_regs_offset,
+							      regs->common_status_offset, 12));
 	csi2phy->hw_version = tmp;
 
 	tmp = readl_relaxed(csi2phy->base +
-			    CSIPHY_3PH_CMN_CSI_COMMON_STATUSn(regs->common_regs_offset, 13));
+			    CSIPHY_3PH_CMN_CSI_COMMON_STATUSn(regs->common_regs_offset,
+							      regs->common_status_offset, 13));
 	csi2phy->hw_version |= (tmp << 8) & 0xFF00;
 
 	tmp = readl_relaxed(csi2phy->base +
-			    CSIPHY_3PH_CMN_CSI_COMMON_STATUSn(regs->common_regs_offset, 14));
+			    CSIPHY_3PH_CMN_CSI_COMMON_STATUSn(regs->common_regs_offset,
+							      regs->common_status_offset, 14));
 	csi2phy->hw_version |= (tmp << 16) & 0xFF0000;
 
 	tmp = readl_relaxed(csi2phy->base +
-			    CSIPHY_3PH_CMN_CSI_COMMON_STATUSn(regs->common_regs_offset, 15));
+			    CSIPHY_3PH_CMN_CSI_COMMON_STATUSn(regs->common_regs_offset,
+							      regs->common_status_offset, 15));
 	csi2phy->hw_version |= (tmp << 24) & 0xFF000000;
 
 	dev_dbg_once(csi2phy->dev, "CSIPHY 3PH HW Version = 0x%08x\n", csi2phy->hw_version);
@@ -375,6 +380,7 @@ const struct mipi_csi2phy_soc_cfg mipi_csi2_dphy_4nm_x1e = {
 		.init_seq = lane_regs_x1e80100,
 		.lane_array_size = ARRAY_SIZE(lane_regs_x1e80100),
 		.common_regs_offset = 0x1000,
+		.common_status_offset = 0xb0,
 	},
 	.supply_names = (const char **)x1e_supplies,
 	.num_supplies = ARRAY_SIZE(x1e_supplies),
diff --git a/drivers/phy/qualcomm/phy-qcom-mipi-csi2.h b/drivers/phy/qualcomm/phy-qcom-mipi-csi2.h
index 7e55ae007370..d6366f809e51 100644
--- a/drivers/phy/qualcomm/phy-qcom-mipi-csi2.h
+++ b/drivers/phy/qualcomm/phy-qcom-mipi-csi2.h
@@ -51,6 +51,7 @@ struct mipi_csi2phy_device_regs {
 	const struct mipi_csi2phy_lane_regs *init_seq;
 	const int lane_array_size;
 	const u32 common_regs_offset;
+	const u32 common_status_offset;
 };
 
 struct mipi_csi2_genpd {

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
