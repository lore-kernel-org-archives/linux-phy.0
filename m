Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62E2B60A3829
	for <linux-phy@archiver.kernel.org>; Sun, 25 Oct 2026 03:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=hUv00+tY;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=KMfuPY9b;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=SDB7JyoI
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=43f61KNHnllsbjhxfzjhUVmJWTwk7ByfN8Q7/it8IX8=; b=hUv00+tYeu4Hr9PttvG1P7dU3J
	kHyPsCQXSyT+xxgfeW4hVGQIW7wyGm6WowCWuJwbx1kn3Nw46dSzr/5xxVLpum6HQERlpuAi0Eqyn
	FQnAgux5jvWRdv8lVPUdGFoRe9XtOn99RhODiFB8d+0czz9PMsoigNG/Am2dP+xvA1Xu7HAqhOlwj
	/Hpu1PVow4Opp4tlLH4JWRWj8w8cm1b7byqIhfiEeVqq7Q9Y+9bU06plI01IVvP652SmztY81/XqP
	Ur6eH+f+FkwSUYaFV9B/1+EHdDAD3KvQ+f8HpGvNkZcve8Ybl5PxFh2lhGgBsZpTJHQJX6aWho51O
	VWi7S/wQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xKojk-00000000ghm-0YwV;
	Sun, 25 Oct 2026 03:17:32 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xKoji-00000000ggr-0n9Q
	for linux-phy@lists.infradead.org;
	Sun, 25 Oct 2026 03:17:31 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 69P17Vdf1588116
	for <linux-phy@lists.infradead.org>; Sun, 25 Oct 2026 03:17:28 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Ef+Na+GsihrxdoSAJed3PDwEa1uv3hQJy1tnM3Tzqs4=; b=KMfuPY9buqvS37J+
	W4zpIW4o6235zZ9+7zfRs7ZNI9Vw5JIAhwtfiMAUJUX9e9GRjvtJIO3td6XK57H1
	sYJYeulbgMP8vUt+8Pwubjyhy7R9YIqlz8tseXBPqZz0QFk8gMi1ZcoZOc/h7XED
	h9+ywnb18Achc6oPO/nMWugLSLWQYONYcsifckTXc4U423X0lVBWIOcwH2oVOHLn
	7IV1hD7vFQ4KiMPrKZM9WnJ0WF8wvjg0UzWiTM1o5onxa9I9bBNc+CaooHQmNmc8
	uKeV4cZCuejyw9LMVns42aOzQKTZ9I8Jja0BGvvQiEgNVR3VGX++5zRrwbOtk39p
	nw8iqA==
Received: from mail-dy1-f198.google.com (mail-dy1-f198.google.com [74.125.82.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hgnuka5ce-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Sun, 25 Oct 2026 03:17:28 +0000 (GMT)
Received: by mail-dy1-f198.google.com with SMTP id 5a478bee46e88-35c5aef2a74so9408353eec.0
        for <linux-phy@lists.infradead.org>; Sat, 24 Oct 2026 20:17:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1792898248; x=1793503048; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=Ef+Na+GsihrxdoSAJed3PDwEa1uv3hQJy1tnM3Tzqs4=;
        b=SDB7JyoIxRZy344wgW26p3gpkiLtGL7QEXQZU9IOmVCOhOaFuIlWotqOGSmWqL2Y2D
         h0TTxuSgecGDBo3YVfhY8ZN3vBWcJdaxiNb7+8KJdxII5o/wHbXPJLheOLOQAGb1Qcdh
         pSJgejgbw0ThjLesVgtcfleSHCiBPiN36rsjxYdW+TyC8e13TxqLLBMf15jhyw3f1fWE
         LS8dhtAOj2NsIJe2TBzZpLrzgm+ydC5mYg9KzLkJKE1okvhpAKH2eWgPzQiVIfBCNbWz
         6DzP3hCMGFj+GAjMSMBm23AmPVsxOXdoQjAqkaPBNBJVXDVlh1b6DIIrBWgT6jgSL5JB
         pN3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792898248; x=1793503048;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=Ef+Na+GsihrxdoSAJed3PDwEa1uv3hQJy1tnM3Tzqs4=;
        b=Ww0+sk0nsPidALeNMNABycNhUgA5HGHZW626hDGEiEeTjz9jTMm3ZByv6H+ix21FpJ
         2abdvvmAWHjVy5RNE2bDW0a4xjMr9HBlVanSbMFhTnxcmjTR0tJFbWwX1+9qn2jaluVu
         iaNhFyBBtr2pqQ7l/Rv8vWNDlVYGRJMHz1BPH070QkkHl2c+O75JFr7tijUtf92QoTOy
         HKhbVbhnv2bZfmFJJfS8cLttv2+T3tUxHaO55DsvvCzS88MirP2Fyo+fQMXE6XQars/X
         wpNS40a6OcipbK2BHB2Bq5kYp9utIm7E1obmo6ukRoS8H6pxALX7bKVkf3EpslV0JoOP
         Sbaw==
X-Gm-Message-State: AFq9FYKDPKR7Po9E+KKprJcBklf6xes0WQw3/z2QWpRbrpnW+LW4qpp4
	LifGIW54y3JWphNPR2S2wh/YJz9ZLdHsMPw+ZZhWNcaYjYPxThmn3Ccw1COTNzhjuUzg6ItDtyu
	qcVC66VojbOObQtpDgBUqO/tTc/zkRnS5elkOR6ivnHfcEc0kG8r4dsLdRPGdm+1eXkRM
X-Gm-Gg: AYBFou0UnflnwQrZ4cN4tshy4tBBe7urkhsa2eWexqNKl9E1hk5mYU3xFp5oV4EIQVf
	/WfXaQg0NS2a8ZPhaB07wzAMTyU4b1P1/17IGcwNVpOuv063IN6IXeZTRpYNYWoX2SLz7jfDXSk
	ZT4Qd5ANC+X27uBrTOXbLUu9nFJlEmNZY+8gFg4HrbZdF5H3cpEjSXVWfwlOOsHcPM6wuzLZNbV
	dfTm28knEUUZKOEOrr5zMGtP/MLEznIF3kshwKk+Iu9WWnowVKMR5jtWzCgA0D5cD6UNAusmPR6
	rNLMzzGS37YEkGZ21uf0OB4UHQKFf6wAHT2ijtu+9WxCYGG8hlEAqsWA4oGxdIL8M8MCqGpl4O3
	ih5sm2zjOblkxEKaO0SF40qWG1y3wV7T6h8y7h9w2STuOxr2A74PA7dtr+HE/KN7JWaz2SAXzxe
	/yfpJdUFZCYQ==
X-Received: by 2002:a05:693c:88d2:10b0:369:f0de:259f with SMTP id 5a478bee46e88-369f0de264emr2953215eec.35.1792898247484;
        Sat, 24 Oct 2026 20:17:27 -0700 (PDT)
X-Received: by 2002:a05:693c:88d2:10b0:369:f0de:259f with SMTP id 5a478bee46e88-369f0de264emr2953170eec.35.1792898246942;
        Sat, 24 Oct 2026 20:17:26 -0700 (PDT)
Received: from hu-hangxian-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-369e8ec50bcsm24133054eec.23.2026.10.24.20.17.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 24 Oct 2026 20:17:26 -0700 (PDT)
From: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
Date: Sat, 24 Oct 2026 20:17:21 -0700
Subject: [PATCH v22 02/14] phy: qcom-mipi-csi2: Parametrise the common
 status register offset
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-Id: <20261024-kaanapali-camss-v22-2-7da3ea49c8a1@oss.qualcomm.com>
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
X-Authority-Analysis: v=2.4 cv=Z8Z5j3RA c=1 sm=1 tr=0 ts=6add74c8 cx=c_pps
 a=wEP8DlPgTf/vqF+yE6f9lg==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=DJpcGTmdVt4CTyJn9g5Z:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=P6Xs4Y00w1yHQXPR5eoA:9 a=QEXdDO2ut3YA:10
 a=bBxd6f-gb0O0v-kibOvt:22
X-Proofpoint-ORIG-GUID: c_di0z3k60WppjsICfmiErepXcAwSRMi
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDI1MDAxMiBTYWx0ZWRfX2XIN3L2JtK4K
 A0u2ccxQorXYaUtAwwknSv1glvTTBrXMSst21Jr7e5Y8hGrxDpEa8XaVUKjmSoWHQ+leljesZlX
 +UlmmSZtTgxcunr0xghesMSfRbKffRjR3c7IWn6DVFrLfpg3inKggAnGrSu53HKWTPMBbZo1xhx
 uidQxTkNH8MaxNefihU4OeQTtKsMVuVhZz5jI9DDZjLv+5zGC0Iz4sZ22vmePgLF02H+RWcceXn
 UI3Z4onTry0dIeiwdcwbp7HDEuD6JllTP15F+mLKiThczTcFvyyc8mqJl9oCgvejmLGN7ZwjidG
 VD/bpE6LeKDmiixZaNzdQbzjccEUB9AAVde4V9LfWjv5L9NhK4x598G8QbH6DipYoFnhk/ZrM/f
 /Wmg9TIPpE64wR/HL0kjKvjfialwV7ZYJzhFNgTPKq8o7t8Yg76o4o7cYgndG6rCh3su1pX8Lfn
 2n/CveblnPQLpeY44xg==
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDI1MDAxMiBTYWx0ZWRfXy1CawtpdhE6X
 XRHm7tgkegRwcglE70TRWrX3WmOxm2HPEzgcBbj+pdbq4kQrXSYACIYHYm24Flj2dPHYRHtFoJL
 btPyIVrDizTmqIBMC5rYSlnKi/ciRk4=
X-Proofpoint-GUID: c_di0z3k60WppjsICfmiErepXcAwSRMi
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-10-25_01,2026-10-21_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0
 impostorscore=0 lowpriorityscore=0 clxscore=1015 malwarescore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2610190000 definitions=main-2610250012
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261024_201730_266122_2DF8BFC2 
X-CRM114-Status: GOOD (  14.93  )
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

The CSI2 PHY common status registers are not at a fixed offset from the
common register block across SoCs: x1e80100 uses 0xb0 while other 3PH
v2.4.0 parts differ.

Replace the hard-coded 0xb0 in CSIPHY_3PH_CMN_CSI_COMMON_STATUSn() with
a per-SoC common_status_offset field in struct mipi_csi2phy_device_regs,
initialising x1e80100 to 0xb0 so behaviour is unchanged. This is a
no-functional-change preparation for describing other SoC offsets.

Reviewed-by: Bryan O'Donoghue <bod@kernel.org>
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
