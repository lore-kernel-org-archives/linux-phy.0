Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1287BE9A048
	for <linux-phy@archiver.kernel.org>; Thu, 19 Feb 2026 11:12:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Message-Id:MIME-Version:Subject:
	Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=eJWHkFUkyGimIa5DBA4LO/P3WYiiQUj5FuyQrKqkmuY=; b=QU/1qZE/Tngis1
	AP8aSBbsz8V46/7qDplxbXVjqz9ySOmBwduk16R2s0QPbEjrp6zfmQSjFgB5GX+v5byCXbc1u8AIX
	3i8DCI0iHzcFMGJe5uCW3oQ7s2yfTjOwcrVhIeGvCiQVVtGAb+hO/7OJT8Nr3D9F6WpprHue9FObJ
	U6YGc7ac56hMqMnUoRMnJRmX60YkOoYHTsjgkuAX13q9MgneP09kvWgjZcTwQDALrHXKkeGvbkz8Y
	uIfbJqNKlnHGSgvb4HzndQvyPL5GTqX5dxHeoc8rabe9bLAGYuyOhJ0PJ4ch1g3Wz2+prpNC73t8f
	NRkx/nmGB9Pe6e3aU3wQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vt1wx-0000000BGLY-2k4x;
	Thu, 19 Feb 2026 11:12:03 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vt1wv-0000000BGLC-0R6p
	for linux-phy@lists.infradead.org;
	Thu, 19 Feb 2026 11:12:02 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61INP1cn1167951
	for <linux-phy@lists.infradead.org>; Thu, 19 Feb 2026 11:11:59 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=vOvNdYCVSmVkwGXEsNxSmL
	jxoujgZy923FLHo8wDNN8=; b=Aqpv5oaUyjdHA8YT96METkbU8yj35aopI7zRw6
	jBkftnIdd1qZnD2+IlgvxoDfcA1BPPcuyCHVfIz/WIRaXP+s0uECHK380CWhy0Z9
	Rx542b8z54/9SbbNEqO1pQqegi0owcFVoUXfB7W+a2nFwWqNP0HtYs4DF+02FdUB
	J3DDy99883M9ebjyJ76dEgjTVcep+rG+y6fFaqYlsELBn//ztKHH2mM6TP2clCrq
	DBNAKB94Y9WxcFmllRnZUrgcRH3vbId7u9EAiSwF0L0oizA4NR4NL3MOAjurxzSs
	8Q+nm35AFNS5DDlOUkIeibl3wezeD/r6a3ZvIvncrZjzUiYA==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cd3ahcqgf-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 19 Feb 2026 11:11:59 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8c70cff1da5so496752785a.2
        for <linux-phy@lists.infradead.org>; Thu, 19 Feb 2026 03:11:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771499518; x=1772104318; darn=lists.infradead.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=vOvNdYCVSmVkwGXEsNxSmLjxoujgZy923FLHo8wDNN8=;
        b=SfDdXo89buniWLdvxJ1ykvKn7xjWmZeGtcEyyjqaifXoKpXfI95a6DM/KXEfNzuxI/
         NroZmg5cpRwVKH/A0R4C+TZ/8YTTo7rAQ+Xve3Dqkh6keHDsnBz6FgqzJpfrt6KYQ01E
         cQrq603npqv5+hfGE+fbIddD3XCfjXJ3FXIB8vSqc4ZKAl3V/Sxh7sSPkNXtFyKGcmxM
         eQlAY8GLZLXAicVCR8MlEhhAHDT3TCuTNsdwbvSYMDEIRXfuMHDNdQ/+jHGAsWiMDy/Q
         012sDfEa5Fsk/dEUjhXokKSgIbLJ7Wb55VwvYZnz2NGw/sNdzEFo8VYEkqYSF0FDZ/Ry
         g4vg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771499518; x=1772104318;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=vOvNdYCVSmVkwGXEsNxSmLjxoujgZy923FLHo8wDNN8=;
        b=oxBIwrjUUrsPyiCAQ/nZX5FxGtZnsZqc1bdFoSq8UpSaiOl7pwyQNzTTt55Yl5USGV
         2dJegw6xTndqA20TkPUPuFbTcNoETi9rp0OqwNqZt8nWiglYDoPMkSCS5VQOK0qlOuQb
         C3/2vwslIv9suFxDRqmvb72ISK/3kvRki/9X46Ev9gC5pQXX7AfgwjR/DaoUIQByTnDM
         huVyH5xpPUganDKGH4vDrJqVT9cvj6vDsNfm+nkHNA7jcQOpL0ddDbY2eomqvQ2iJXhI
         hBaaq3/Opsh1XT571ppUpjwvWDL9GHN2usWE10kadbjGKyhw/SfpNtmvLIOdr8VuqlLY
         YSYw==
X-Forwarded-Encrypted: i=1; AJvYcCVYABLJiZtamHjS1mEMLdrQWLflvxqpGnIGTcfOfGGrF8uvp7nnOWFE5fOk13pbZ/9FvQpYFv3XvRE=@lists.infradead.org
X-Gm-Message-State: AOJu0YwsEG6oGw/w6Wvt08qUlN8O+XN480gzWATH/tPB8fJHa32JMuhp
	y6EeYkCgVfxUR+9AMEzebfR9CBEf1br/Bgpm8Gx9urK8OvjDMV8qaJFGsBtHNtw0ESdwbJY2EUw
	5HhMAoHODjXko1GipS/lUwmj28Xjk6FdZH7cpD32xabGi4OU7lDHrQqmUcQ01ZMgW5Ua5
X-Gm-Gg: AZuq6aIbksdkbvGGCQPPGNGuVt238F6FHy8J+4LsDbNpYAwpMudePEQ8I6LtVM2ABri
	Ij/CqYCLp3vQJ2rJQOhEFXL+i5O7klSTLkr1gGNgUjA0tv5jhSZRPU0LpCcu2zIt62Xb1BeTEZ9
	AFXNyrVKClbsdH92ZQkzrfZi4dBIEhXl+9AST9S7be9tbwMUuwN1OkqQRAtX2ZmLY9/cXfDG9w+
	VoV1lnpcddy+HlfKxwWV//oM7yXAk1I29vaUK9SI7ze++2UxhJOPLfYMl/5uy/2PuY5ewxkkHaa
	kGHj3skPTO9tgfRgj6J/CeCBFpL/q3Vun1ZFsF9+guX2iwe7RNm+XMoZiJhJ45hXL0ocWLjhsnh
	A0QWI1JYviMMuv9A3H69epuxFS4D00Q==
X-Received: by 2002:a05:620a:8bc1:b0:8cb:47b4:165f with SMTP id af79cd13be357-8cb47b4235amr1650125085a.14.1771499518408;
        Thu, 19 Feb 2026 03:11:58 -0800 (PST)
X-Received: by 2002:a05:620a:8bc1:b0:8cb:47b4:165f with SMTP id af79cd13be357-8cb47b4235amr1650122485a.14.1771499517898;
        Thu, 19 Feb 2026 03:11:57 -0800 (PST)
Received: from hackbox.lan ([86.121.162.109])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4835d92267bsm1003935615e9.0.2026.02.19.03.11.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Feb 2026 03:11:57 -0800 (PST)
From: Abel Vesa <abel.vesa@oss.qualcomm.com>
Date: Thu, 19 Feb 2026 13:11:48 +0200
Subject: [PATCH] phy: qcom: qmp-ufs: Fix SM8650 PCS table for Gear 4
MIME-Version: 1.0
Message-Id: <20260219-phy-qcom-qmp-ufs-fix-sm8650-pcs-g4-table-v1-1-f136505b57f6@oss.qualcomm.com>
X-B4-Tracking: v=1; b=H4sIAPPvlmkC/yXNywqDMBCF4VeRWXcgCVW0r1K6yGWiKY3GjBZFf
 Pem7fKDw38OYMqBGG7VAZnegcM0FshLBXbQY08YXDEooRqhZIdp2HG2U8Q5Jlw9ow8bcmybWmC
 yjP0VF21ehJ2T2nlZi9YbKLmUqUx/V/fH37yaJ9nl24fz/AAhDg4CjAAAAA==
X-Change-ID: 20260219-phy-qcom-qmp-ufs-fix-sm8650-pcs-g4-table-9d1adf1508fb
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org, stable@vger.kernel.org,
        Nitin Rawat <nitin.rawat@oss.qualcomm.com>,
        Abel Vesa <abel.vesa@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-47773
X-Developer-Signature: v=1; a=openpgp-sha256; l=2491;
 i=abel.vesa@oss.qualcomm.com; h=from:subject:message-id;
 bh=zbxY9b0ZlCq0UrOIJd6sjF+e77WKY8qgVD84bS+Ct8g=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBplu/2nLEANE/+RGxkee6qF82zBRu6o+t4/dBv9
 RHpgPiujVWJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCaZbv9gAKCRAbX0TJAJUV
 VikkD/9vK/KxNfCrXsqpjHZTVapOxrnG7w0vh7H64jya46zwEV8JS2fwNSqFZf8Xr4ulsRCeHcU
 7Ij8VIKnDJmf22Pggu+h2avvL56D6hm1c5r1IJl9Hqy33Qq+uMORKJKMTJbyBb18gfrGmz+7oTh
 IAt/IQfK7TfVERp1KX92Q1vt0C58d0+icEYiQyYA1qsXuodRTY5zlwzUUmhAtvehLGdAkq8Ydo1
 zGQ0bfxLTQ5A13k3+ahnMmOtpZdCXGnzRBaBVULQnoILyXz/1jFYOMyneBviuSN9HHgjllKR2ek
 yZ+Kej6CvnU4hnLohsgpDp5ujsinjsnZlnPHi3/lbYXrqFUDmaTDKb543ktDEM5dyNNdbQVDR/+
 GCbWDc+/eITAkGO4nm74mhjl6NZcCNJRjOZjCQ2Dak9KazU6+mGjbfj25XAzdnrtZSE91w1w676
 FGq5a03pDVnaGQ5IzyovPVn7h8uU2g2iKRvYvMBuY3gz7mVxGH0oMbkxdZi9Ebrqry5LYnVYaF2
 DDnUM2cXdT1aCehliJJJvlygkAbEKXOYiT1pchk1XYI6qN36lc03vYNf5cpMM5CqnKZPO1aKyaP
 YUZZiML8f4ct+7ci6nkvQs5Kr/4oxILREuGC+U/J4q3wl6s/UZeflPzX8H0UK2IwNkfeymPDpw9
 D91A7D4UkxxAS/A==
X-Developer-Key: i=abel.vesa@oss.qualcomm.com; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE
X-Authority-Analysis: v=2.4 cv=Zo3g6t7G c=1 sm=1 tr=0 ts=6996efff cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=oauzzCmhM186DRC0Y2yWPg==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=iZjorvmLyqBVRiOuJXwA:9 a=QEXdDO2ut3YA:10
 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjE5MDEwMiBTYWx0ZWRfX1Elp6UZEQTyS
 3ff5Z68BpBBRZl5fF4uaxtYabn+McElDCU+hDQcljZaP8Z3RJMUrUyhmt5MCErqu8vBePCwbSvM
 /07/cGmxgbV2SiwR/fL/5m8g05Ux0opXoVR8hvpwiIew1odzWwZ+xk6xR49AI8DC4kmy+C4aLAp
 S5YcfytaU8eSSVNB1UZP9M+puDCC6YwhDGH3maTVOz199HgUEs/mnroZWYEi6c1tFuX6+Q6FDiC
 j2WUNIaPa1QzG+VXtrECZje9Hx4mXVJ1+qLLGkS8VCw7+2YKB3myfwMEgnpJjgNpbv8IFyVpDQn
 iwDB68bFBDTw6mrgIMmg3jJglQ8y8G2GdMR7lmrjDaFYo541y4NSOr7mgSeW5ehEl1uDPMiJLaw
 /MUHvgTAkI6UAlXfdcjbDq7PY1r5/t/qdn3kki/zkPS1VfXnaG8sIFlPTBhHEFlQEzCtGuphZh8
 Slp3iBC6u2jDFGyh5lw==
X-Proofpoint-ORIG-GUID: bElMhhNUxZ58RCPskJU8yeIN3rkf3qza
X-Proofpoint-GUID: bElMhhNUxZ58RCPskJU8yeIN3rkf3qza
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-19_03,2026-02-18_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 spamscore=0 suspectscore=0 phishscore=0 clxscore=1015
 adultscore=0 impostorscore=0 lowpriorityscore=0 malwarescore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602190102
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260219_031201_181621_A9094645 
X-CRM114-Status: GOOD (  14.47  )
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

According to internal documentation, on SM8650, when the PHY is configured
in Gear 4, the QPHY_V6_PCS_UFS_PLL_CNTL register needs to have the same
value as for Gear 5.

At the moment, there is no board that comes with a UFS 3.x device, so
this issue doesn't show up, but with the new Eliza SoC, which uses the
same init sequence as SM8650, on the MTP board, the link startup fails
with the current Gear 4 PCS table.

So fix that by moving the entry into the PCS generic table instead,
while keeping the value from Gear 5 configuration.

Cc: stable@vger.kernel.org # v6.10
Fixes: b9251e64a96f ("phy: qcom: qmp-ufs: update SM8650 tables for Gear 4 & 5")
Suggested-by: Nitin Rawat <nitin.rawat@oss.qualcomm.com>
Signed-off-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-qmp-ufs.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
index df138a5442eb..771bc7c2ab50 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
@@ -990,6 +990,7 @@ static const struct qmp_phy_init_tbl sm8650_ufsphy_pcs[] = {
 	QMP_PHY_INIT_CFG(QPHY_V6_PCS_UFS_MULTI_LANE_CTRL1, 0x02),
 	QMP_PHY_INIT_CFG(QPHY_V6_PCS_UFS_TX_MID_TERM_CTRL1, 0x43),
 	QMP_PHY_INIT_CFG(QPHY_V6_PCS_UFS_PCS_CTRL1, 0xc1),
+	QMP_PHY_INIT_CFG(QPHY_V6_PCS_UFS_PLL_CNTL, 0x33),
 	QMP_PHY_INIT_CFG(QPHY_V6_PCS_UFS_TX_LARGE_AMP_DRV_LVL, 0x0f),
 	QMP_PHY_INIT_CFG(QPHY_V6_PCS_UFS_RX_SIGDET_CTRL2, 0x68),
 	QMP_PHY_INIT_CFG(QPHY_V6_PCS_UFS_TX_POST_EMP_LVL_S4, 0x0e),
@@ -999,13 +1000,11 @@ static const struct qmp_phy_init_tbl sm8650_ufsphy_pcs[] = {
 };
 
 static const struct qmp_phy_init_tbl sm8650_ufsphy_g4_pcs[] = {
-	QMP_PHY_INIT_CFG(QPHY_V6_PCS_UFS_PLL_CNTL, 0x13),
 	QMP_PHY_INIT_CFG(QPHY_V6_PCS_UFS_TX_HSGEAR_CAPABILITY, 0x04),
 	QMP_PHY_INIT_CFG(QPHY_V6_PCS_UFS_RX_HSGEAR_CAPABILITY, 0x04),
 };
 
 static const struct qmp_phy_init_tbl sm8650_ufsphy_g5_pcs[] = {
-	QMP_PHY_INIT_CFG(QPHY_V6_PCS_UFS_PLL_CNTL, 0x33),
 	QMP_PHY_INIT_CFG(QPHY_V6_PCS_UFS_TX_HSGEAR_CAPABILITY, 0x05),
 	QMP_PHY_INIT_CFG(QPHY_V6_PCS_UFS_RX_HSGEAR_CAPABILITY, 0x05),
 	QMP_PHY_INIT_CFG(QPHY_V6_PCS_UFS_RX_HS_G5_SYNC_LENGTH_CAPABILITY, 0x4d),

---
base-commit: 50f68cc7be0a2cbf54d8f6aaf17df32fb01acc3f
change-id: 20260219-phy-qcom-qmp-ufs-fix-sm8650-pcs-g4-table-9d1adf1508fb

Best regards,
--  
Abel Vesa <abel.vesa@oss.qualcomm.com>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
