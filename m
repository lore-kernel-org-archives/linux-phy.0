Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6BC19CDB47C
	for <linux-phy@archiver.kernel.org>; Tue, 23 Jun 2026 13:05:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IxgArqOXSuLxLyNrDjUKHZs3Ly6JLpmuFLgh6nCSLdI=; b=uDk1AM8bh5S0HG
	4XhgJCn5aEtoqZr/VKFM7DTWSD9X01jqi6PP1gdBFNPZ4TAg9UvwxD/FJBJOe3GBX484dUDbb0iLl
	zvL6uBtLAw8C82s9lHfks0SVt5f3+nZKyCJcBKXpEelBL98a8Zfs6D2S+Fql0c0VLp2Q/25OzDwWL
	hT8FE0qMFHemQOTRqFeWhk4DpXMqPUSheZf9dzFXmuFzNXecVuPKtAdP1hOXodraFtEh3E87PR2Zy
	jecGl72oOpNEJW6mXJL40xQDkDow7mF9P4me+f50b4H/FjUTXGAhmfNfvmiPLaeWWoBlBlsGkOhYJ
	Uh5FRUFXvZ7Ks+DkjhYw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wc0op-00000006JWv-0ZKr;
	Tue, 23 Jun 2026 13:05:35 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wc0om-00000006JUs-0bd3
	for linux-phy@lists.infradead.org;
	Tue, 23 Jun 2026 13:05:33 +0000
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 65NBXj3g3745293
	for <linux-phy@lists.infradead.org>; Tue, 23 Jun 2026 13:05:31 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	MqqWgWbsqz81pypmzJZH/tJYdEYApnGUfE9Tgwj7tuc=; b=iaAhBswqoYiwV/Yw
	d8c+1pmd/DVTubskKIa52iaZwp26rXvtA85b/7unmWqJ/mnAhvHCidvZFtQFp/5l
	KYURbqhfxFzr1YV6NKEhiXgJNwk2XpR8jRfJ7+N1j2yB7bMicmFn23dNEVCr4yOI
	JVqjhcC4/kbEwShg/04VGat80o3s5NW38BVMDURXp9E+XblNjDKLxs9ZuUHLFF9q
	lJWWnbLlhgzaS5UUUc3zpz1HoZ+QlRYAfvpzXRCVfDxC9MPvQqLTQVajym8VdqzY
	ji/cffhzLvxT1yaMU7P1XaJVWUOm2toQkY0nfdG9dnHCw+bCNcoLYYOLr1x3/pOx
	Lw4JWA==
Received: from mail-yw1-f198.google.com (mail-yw1-f198.google.com [209.85.128.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4eypx390yk-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 23 Jun 2026 13:05:31 +0000 (GMT)
Received: by mail-yw1-f198.google.com with SMTP id 00721157ae682-8067fa066bcso16814607b3.1
        for <linux-phy@lists.infradead.org>; Tue, 23 Jun 2026 06:05:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1782219931; x=1782824731; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=MqqWgWbsqz81pypmzJZH/tJYdEYApnGUfE9Tgwj7tuc=;
        b=c1gfey9ontQ1c4MxNX7qiOwOpCfuqq2EfDsOcWJRqHqVj+6EwT4tclkmrzbc4jtvRI
         /V//H+NlaZbzAVAiqASyPFaj7KFlWlLb1yqosQ4aJTeBAnlp5LTsUTswqQ2zuQTuSIT0
         46L3bg6K8VD5u8tosmnj06gV30b0V5p9+fiqJ/rTrAanhUWKCM+C+A0rsi4jvEwAkG8D
         Qb7OJRbxfdXcoufL7/sqto/2hYsMop0n7vP+7YI7ChqIpYwyACc8OZZzBVX/+0S9uvDM
         QXuoc4PlKtvrzIZdOVf3mwyy5+bqJP+Goa0WKcb/nTR2OEelE2109IZt4if1cES83Ozg
         m51w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782219931; x=1782824731;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=MqqWgWbsqz81pypmzJZH/tJYdEYApnGUfE9Tgwj7tuc=;
        b=H+tLwriz/NWBQ70Ajs26vqoP3sKpJrC++wzRZa5Lu9TXRKjyaDJnQRCUxiRXnEQq8U
         xqtD8fAORyzTVIyhocTLyNNjyqKPElpoRxWpy0pnlNW+6gQiPwybLX0/c3N3+HTLDG7H
         OKXAS3PYW4RC08vUgc/gqClcFWxLm8nCykiWU2KNP9jFPilSFJG2+x4GS0xIm61jbKt6
         uyPkAZkGf0J96YkDHyzZjM7qRY/4txegd5bQNxUpIJC7fZcOCOgh4/Kq23aF6rlts5Av
         tQOn/KCRo0HsNnga34g3hDCiYHun6kAc5A8blR/k03+gVpVQMYoyV64fCzSx3sDe8mkh
         edEg==
X-Forwarded-Encrypted: i=1; AHgh+RrUPmtlJWMo2+0n2XkqURJCFfrdioaNO7SGERUI5z9h2E8ZRG71oEqrZu5okKhD24KRkmUECRuHVbQ=@lists.infradead.org
X-Gm-Message-State: AOJu0Yyc63EODj3oGT/XMsrvotJwMk4+gW4D6WNs6LNKz0DXvht1HGOM
	D2DJEBDGijLXTsj3tFgscXoDSPjLbZ0YvRDcWWKu65+vICOhpiiK9ZNQkD3AL3+ZbQW1awXK8Id
	khLs/rtANZR96P0L+wxUQ2fbOYU3WFNi60osIVGIFUr2Bnnuoxgpgn5EYZy4GR0WjEyol
X-Gm-Gg: AfdE7cl6xkH77BRQGlKGq4KTnETD09O+unJbDYQCpOV0EejscEZsZbe/YOIBZMZt5/T
	FazSPrMajalV51fRZRfFh4J+fu8dH2cwKZ5ymB6Sb/iu2gNQAEyPZrRpfGtQrTF4auCZR4ItG4t
	SstHPeNV1bbAfZ65xhaeSzF+2+/hfrVJcyv1LOIYhNaZ04sBq7/baCohDKizXxOvnndOwaiAx7X
	/YF8+H3DTyB7sy2ymFgvziC+1bEDCfP2ZYT7OhkWBB+0im2/O4Za3Z6sH40ONqs1bidQpsJQmb7
	fhocEWVAOk2vK/GJznvPs572pVLz0Dn2zt6jf3UT0Av3mdwx0nPXpiLPQvP4Od2e6YzLaacq7Fb
	QzyeEDK2uGibo9dDe9BHcnpGDxIyO8G7AD7SdKqoFC7W3abBhBRMO7VqZhQ==
X-Received: by 2002:a05:690c:ec2:b0:7b6:7df9:33f6 with SMTP id 00721157ae682-80670e47f1dmr40183837b3.2.1782219930650;
        Tue, 23 Jun 2026 06:05:30 -0700 (PDT)
X-Received: by 2002:a05:690c:ec2:b0:7b6:7df9:33f6 with SMTP id 00721157ae682-80670e47f1dmr40183137b3.2.1782219930078;
        Tue, 23 Jun 2026 06:05:30 -0700 (PDT)
Received: from hu-qianyu-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 00721157ae682-8025ffc700bsm44091127b3.36.2026.06.23.06.05.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Jun 2026 06:05:29 -0700 (PDT)
From: Qiang Yu <qiang.yu@oss.qualcomm.com>
Date: Tue, 23 Jun 2026 06:05:18 -0700
Subject: [PATCH v2 2/3] phy: qcom: qmp-pcie: Add vdda-refgen supplies for
 Glymur
MIME-Version: 1.0
Message-Id: <20260623-phy_refgen-v2-2-4d15983bf91d@oss.qualcomm.com>
References: <20260623-phy_refgen-v2-0-4d15983bf91d@oss.qualcomm.com>
In-Reply-To: <20260623-phy_refgen-v2-0-4d15983bf91d@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Qiang Yu <qiang.yu@oss.qualcomm.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1782219925; l=1908;
 i=qiang.yu@oss.qualcomm.com; s=20250513; h=from:subject:message-id;
 bh=sb3Uq6ABumgwjZWgmUAldF69UC0Cn8aYOQo27nojvoQ=;
 b=lccl7A4IcciL4lCF44EqI5hyhq94HvqgY9ftKfLfzIZ0mHnucEkAgZ+GqhMJK9q3M8A/GlLk/
 z+ZdNTNpUopB/fYRJbsUZXijtJpSXV9Qk6RUmak86gaNsU7K5SFHPDv
X-Developer-Key: i=qiang.yu@oss.qualcomm.com; a=ed25519;
 pk=Rr94t+fykoieF1ngg/bXxEfr5KoQxeXPtYxM8fBQTAI=
X-Authority-Analysis: v=2.4 cv=EsfiaycA c=1 sm=1 tr=0 ts=6a3a849b cx=c_pps
 a=g1v0Z557R90hA0UpD/5Yag==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=FelO9ux0wxsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=YMgV9FUhrdKAYTUUvYB2:22
 a=EUspDBNiAAAA:8 a=m2jQVEIWa0EwQwJFt7gA:9 a=QEXdDO2ut3YA:10
 a=MFSWADHSvvjO3QEy5MdX:22
X-Proofpoint-ORIG-GUID: 2Yuv7cCAfxOcg5v7N9afX1Cs4UqnXRsu
X-Proofpoint-GUID: 2Yuv7cCAfxOcg5v7N9afX1Cs4UqnXRsu
X-Proofpoint-Spam-Info: AW1haW4tMjYwNjIzMDEwNyBTYWx0ZWRfX7gJ3QOUN/QVT
 XIY0TTVJWnf1hwDkHcw4Tyyr5STzmp9q3uUm3+mYGFTae0lQswS4HiRGpNXTisvjgJTriqrWCgd
 bpqj8NLAggvLLjE/x0/Q79MhhYC/bbQ=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNjIzMDEwNyBTYWx0ZWRfX3338Jv7WS00B
 ccQreecBuunMKLTQhpx39u3aZRWJB7EZ4t7abIiGAWIUcIhbmL06TtJwZNwTf0KFdXrhklvqgk/
 3nRWf1/ZVvo80i/46O17aRqq/9Y5y6DY8jvgTgoCNc8Q+aG1Xc4+BACEwP2RjOwqcCKOGLAsZIH
 HbyEN66F7L5E8jKPNG3gykuuh4wLZF/YOAE9D0n1uD1fh3T9OSJ0+EgMLerxLPZb66dogi66lEC
 Jsw7Tx71MnD22S7pTbanCoCVGxA1nUI2QS4yIIw06J08Fai1gNuHs+K9mD/CkJDaaqlXmWkBO/o
 4cC2vcF5s/lvyf1twRwb1pAB8qKXd4fDVht891jmbeJVoYimWU+5Jg6r0nMkC5MLDufiYVosjob
 CGv2sa1I8T/nb/jr4buIFGo8AyJxdpogSWCNe4HKLnp+joAaU8oGz2qZPIH1zNRnkoBFp1irTGd
 CkZGZTVyy0Oi57zJjxA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-06-23_03,2026-06-23_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 bulkscore=0 impostorscore=0 lowpriorityscore=0 malwarescore=0
 suspectscore=0 spamscore=0 adultscore=0 priorityscore=1501 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2606230107
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260623_060532_190019_087B3AF8 
X-CRM114-Status: GOOD (  12.29  )
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

The refgen providing reference voltage for PCIe QMP PHY on Glymur requires
two power supplies independent from the PHY's core and qref rails. Add
support for vdda-refgen0p9 and vdda-refgen1p2 supplies with a dedicated
glymur_qmp_phy_vreg_l list.

Update both Gen5x4 and Gen4x2 configurations to use the new supply list.

Signed-off-by: Qiang Yu <qiang.yu@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 12 ++++++++----
 1 file changed, 8 insertions(+), 4 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
index d3effad7a074..08bc89ce80e1 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
@@ -3488,6 +3488,10 @@ static const char * const sm8550_qmp_phy_vreg_l[] = {
 	"vdda-phy", "vdda-pll", "vdda-qref",
 };
 
+static const char * const glymur_qmp_phy_vreg_l[] = {
+	"vdda-phy", "vdda-pll", "vdda-refgen0p9", "vdda-refgen1p2",
+};
+
 /* list of resets */
 static const char * const ipq8074_pciephy_reset_l[] = {
 	"phy", "common",
@@ -4756,8 +4760,8 @@ static const struct qmp_phy_cfg glymur_qmp_gen5x4_pciephy_cfg = {
 
 	.reset_list		= sdm845_pciephy_reset_l,
 	.num_resets		= ARRAY_SIZE(sdm845_pciephy_reset_l),
-	.vreg_list		= qmp_phy_vreg_l,
-	.num_vregs		= ARRAY_SIZE(qmp_phy_vreg_l),
+	.vreg_list		= glymur_qmp_phy_vreg_l,
+	.num_vregs		= ARRAY_SIZE(glymur_qmp_phy_vreg_l),
 
 	.regs			= pciephy_v8_50_regs_layout,
 
@@ -4772,8 +4776,8 @@ static const struct qmp_phy_cfg glymur_qmp_gen4x2_pciephy_cfg = {
 
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
