Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5EBBBCC6B03
	for <linux-phy@archiver.kernel.org>; Tue, 13 Oct 2026 10:17:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mPCOZf+rn7yRDlcPMyyHs4YNvDuXyWPlp1rCOFbwzdg=; b=Zr5FSKn3u1hX9/
	jsSv5LaE2SLotrxIBJaPTdkSAQQmOARyISjDJUZk9HbiJJNnedI3GyMSKizmYNzABjWGuYJjexoqr
	ap0cYIghZE/CwEEdZuL6z31d9tcjnMIChEmbzcT9YQ/SMEYyYSXmrouN4yfVAnK+yAKIhJ454fgzd
	E1rdpICgwFaLu5cqx7VPuOZEuUhVVDU9/5PDzkrj7R5gx9FTwz66BwyB+DzSoFqp8A25CuY8rYtrW
	aJN6pX/4uNerNx2UYNMU0kTw7C6O7suKa+Se17JjS76nxzsdo7hXymNawrBDxAOvp5omwPajZ3QBs
	iqTL6Np3MdHIQX6V7Beg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGZZQ-0000000CXXo-0Agn;
	Tue, 13 Oct 2026 10:17:20 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGZZM-0000000CXWu-3EsI
	for linux-phy@lists.infradead.org;
	Tue, 13 Oct 2026 10:17:18 +0000
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 69D8A2Ea302898
	for <linux-phy@lists.infradead.org>; Tue, 13 Oct 2026 10:17:15 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	w+gBaUzjZVMrpeVDlkni2Yf8Bw2QnTnJ/9RryeaIQlc=; b=V0nzuV3iCTBiPkJa
	cLYXulDlNNK5UvMrTUrNgFLbOxMvX42XrKZzFX+5QGAvBmpLYS47ysov6HTgQijX
	pPZYT7P3kxEoNPUDqtaxxPkMqXZgQeC6RkQFO25dc++jsPzopKl/7qLYaBJtyePY
	H0Sz5F8/vnaqd9TJ9FnicFvVykCa4ov0Wp5KAucnZhqLmPBq/u54zpdoVtbK8/ni
	PiUKV4eZV00GyrnigNVzArPqWZ8EVusijtMFrw076BxyrwGACWgPmf14zmlNjtXH
	Fj+FDvASKpMN4a1Gq3uypQxXpulO0kHPo4BGBNXTbV5ijLj3jwl2PCz3M1NagljL
	Qic2iQ==
Received: from mail-pj1-f69.google.com (mail-pj1-f69.google.com [209.85.216.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4h98sqab2n-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 13 Oct 2026 10:17:14 +0000 (GMT)
Received: by mail-pj1-f69.google.com with SMTP id 98e67ed59e1d1-3823dcc1647so2769106a91.3
        for <linux-phy@lists.infradead.org>; Tue, 13 Oct 2026 03:17:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1791886634; x=1792491434; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=w+gBaUzjZVMrpeVDlkni2Yf8Bw2QnTnJ/9RryeaIQlc=;
        b=KwtEmr2pzTuRRlT/8CGtdqXHH8YaSnIpm3uJhPDZOqh2RKdNR7IQ42knqWplTafvtU
         Xt/hN9fvZeQqQdVyYDJdqY76LOJKoEGo1v6gsJSrMPh26e5uPvuNVbiNGI86mOB15rKn
         CdW3/lIMBBDTaVN4ZYV5/r61qZ7gwn8zRmY2sn4EZh7W/ZGe7eRfOR+H+GgwCg+XyW/w
         73mzHSTTfscItr/mAMKOwYbuS8WQsrSuYHiJV9tS4g1QO6AO+hEwtx1GFlTX06giHBq6
         59XvSor2oE1C7vARjteHViMJ/AId70yK+oPPd1yxXmIlGUGSqZhXVIdtpSoZfa0i/mB8
         vt7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1791886634; x=1792491434;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=w+gBaUzjZVMrpeVDlkni2Yf8Bw2QnTnJ/9RryeaIQlc=;
        b=VWk9aIWImNt2+29W4LxGhQLqqPl90z5YwvjA5EihwJ5jqeX6unOIoj0R29J/fRMHYJ
         sfJeSFiShPmScCOly0HwlWE8ROIMrHZy2WhP0K6Lr4iV7wKkd2LmrgBoAHs3JLXe5tVG
         XEd4rWGcAug77QulPHszfNh+9WckpO/cKVIx54jUYm1x78GMXsiwZtAyDJW/qWl4RdeT
         xUHC8TKe1qS0PbyF7V1I8TOMqMNkdchXFKyl1CVwTJ4QImquUxzGgvCupu+7H01SyHna
         cxTWcmID8wTqEFY5zwi2MngKkH9zjvTkd35hqHCFBTwqR+aDXCC8Rgg9VFU3qT7yuMat
         /TMA==
X-Forwarded-Encrypted: i=1; AKwUvByRaK3EaxN0WrbKHWCkdLOQP0uOG+PWdyWDgay6/+rKu+d9kPkJ4hQTcxmL+8fhCEvHyiLuq56tQDc=@lists.infradead.org
X-Gm-Message-State: AFq9FYInhX8pIIwSA/b7foHCeAebCBTljElqhlnMasEbsVoJSM343BVl
	jmcg8tl9oxeCPUHUB2avJs2c+GMo/dblknAYoP2WB0O+BLynkjeiwZE6d1ylPy0UXg4sLzR+Sc/
	tUxkHc/eMFOlvpI/mc/h7/Spnr0MLXnif4bDi36reCNYr3r61DYHBy3ZjWNvIj6QfHjH2
X-Gm-Gg: AYBFou2gQlk4AOBUSM7HyG+90DIOu81EMVUzRv+IBjm7knUFlzijgTAkJOmU+xMu/He
	R0dNFl1hnGzDF9RJZyDWee5IbtArxB6clfIxi2YCkkQDVbHkdbkmq0195VlSzmQCno+oTPyUBKS
	IoLVJyfxJo+dhuwDbcDjeSLbsvfX3tw0rYRBiyDuHnfoyDHNGuApXMKiuvhozM57vzPBpFvD1iV
	iKpKjSEfWBVsCHHG0TOgZKZ8g4L1kUomBvL0EAJI/y5bbL6zrx+7FjUrhhh5jVE1PfhKZVTt23R
	XtBWrwC59L70AH5unDh/2SaM2t2ZfHeB5ELXKD8cPGclvraQqtcXTgwJNxd8C8f/ikr0zEGNvjK
	moaN/Dqa6qUperLzT/x+zZt4QJR+wXd0wxuHhXmbWDWlpJJM=
X-Received: by 2002:a17:90b:28ce:b0:3a0:809b:1972 with SMTP id 98e67ed59e1d1-3ab3a745e5bmr9610711a91.26.1791886633775;
        Tue, 13 Oct 2026 03:17:13 -0700 (PDT)
X-Received: by 2002:a17:90b:28ce:b0:3a0:809b:1972 with SMTP id 98e67ed59e1d1-3ab3a745e5bmr9610688a91.26.1791886633045;
        Tue, 13 Oct 2026 03:17:13 -0700 (PDT)
Received: from hu-qianyu-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-cd5dadd0986sm4186777a12.18.2026.10.13.03.17.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Oct 2026 03:17:12 -0700 (PDT)
From: Qiang Yu <qiang.yu@oss.qualcomm.com>
Date: Tue, 13 Oct 2026 03:16:46 -0700
Subject: [PATCH v3 2/3] phy: qcom: qmp-pcie: Add vdda-refgen supplies for
 Glymur
MIME-Version: 1.0
Message-Id: <20261013-phy_refgen_1012-v3-2-f28305289499@oss.qualcomm.com>
References: <20261013-phy_refgen_1012-v3-0-f28305289499@oss.qualcomm.com>
In-Reply-To: <20261013-phy_refgen_1012-v3-0-f28305289499@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Abel Vesa <abelvesa@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Qiang Yu <qiang.yu@oss.qualcomm.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1791886628; l=1908;
 i=qiang.yu@oss.qualcomm.com; s=20250513; h=from:subject:message-id;
 bh=0ADpLYpNVCDZL7nrJXO7P37xOu+fT5ppfN8VnN4oLWc=;
 b=BykP0ddZeN6ZlZ/7OdUSfD1JB8/NhxkH8PR7HzfTJWa5XKzn5bSJ1ef+5KWk8mAqALIhTWzJH
 kNDQmhPpYGRDWvH1w41Cqil9qfNYYGdcCM0aG0UlT7djZkcHqQiDEUR
X-Developer-Key: i=qiang.yu@oss.qualcomm.com; a=ed25519;
 pk=Rr94t+fykoieF1ngg/bXxEfr5KoQxeXPtYxM8fBQTAI=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDEzMDA0MCBTYWx0ZWRfXyMYxzmo4IGzu
 ob+ofvDRl5nWOP4NmMsv2JZCQkJkRhvpDQfdAXHPcA+bWrqHzvdrgRnyLgFddDngJHDjUebhpD4
 9s/V/N+tCR1ly+c1ZaoN3wt6sFAqvW6JRPJ2i4Ai/llbn62/EeFjSAycURjwB+Ijm1L7Bo5QYg/
 AX3Asxhqa1qUJTvTRRSDCJ7yjMBrd0a29Vh7wgcCGsCXQFRymIVCz62m8J9UA9vyds24zYyYlKR
 sdwCkLOxf/KlPq41rQVQYG3KhodNRHX4RyGOx8FAFBsWh0WR9C5QTYz09KEpHfd98DN7dJ/xB45
 3hpKFgGl/wy/8On3vf56K4ZUDboE5zRdfjhzmXz3+QoJHyjR/vT5rbEIG/yDuWcPd0C9FWSlUMA
 3fdM27bW1G9ZnZ1r6yP8Nn+AVomv9lFEgDo2B76LYy52Mbe1/3mpO6+BmLoxkRMbJgfm9Uc6pcN
 7BfJ7zQxD/NPyx0dqJQ==
X-Authority-Analysis: v=2.4 cv=JN+uIMKb c=1 sm=1 tr=0 ts=6ace052a cx=c_pps
 a=vVfyC5vLCtgYJKYeQD43oA==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_glEPmIy2e8OvE2BGh3C:22
 a=EUspDBNiAAAA:8 a=m2jQVEIWa0EwQwJFt7gA:9 a=QEXdDO2ut3YA:10
 a=rl5im9kqc5Lf4LNbBjHf:22
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDEzMDA0MCBTYWx0ZWRfX07cSZrY4qGEz
 hUZZHBjcm7VsRzpXQPqLfSWv9QItFMMPm76KQlwnpvnkrhUsqZWZzVcQ13QnyoxmlI+OoBvp+sG
 BXYwcCc6fKOajHBxLAZacOtQYX4hstk=
X-Proofpoint-ORIG-GUID: YQG7mJcOkIsrpKBaSFsmaxdXEXRrfSj4
X-Proofpoint-GUID: YQG7mJcOkIsrpKBaSFsmaxdXEXRrfSj4
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-10-13_01,2026-10-09_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 bulkscore=0 priorityscore=1501 adultscore=0 suspectscore=0
 phishscore=0 impostorscore=0 lowpriorityscore=0 clxscore=1015 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2610080000 definitions=main-2610130040
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261013_031716_936607_12A9AC60 
X-CRM114-Status: GOOD (  12.31  )
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
