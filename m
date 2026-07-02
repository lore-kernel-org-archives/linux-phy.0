Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3BC11C43458
	for <linux-phy@archiver.kernel.org>; Thu,  2 Jul 2026 11:40:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=o0BvWSAxyd+UK0nLIZPlRLLVfObvrQKi+nr/GZj3/9U=; b=ewC2nq8UMG7E1h
	VGwdTok0P1ri3ZyqOsjb9fHuft2hkqPUK5bOBGDgMY/vo/5F6Ya96xfIZRLvG3pxKsXvFOT2qs1ZA
	YIO9DicVMDW7ay4Y4u5ESW9nvPB6/lt1gczKbYu3bNXREbCP6pF755GqCnX22tlbMXf1dCl3D1UMO
	aN87kPknz9jm+pPz6leNzr5i/wCfR1G/cb0Pcac5hi+ApN16h/V9P+J2slq3wLsUMQrVACg92qp1z
	7nthHwP9JaCzjqGtMiCzDCDDTPuBIGOc3GHgy3eFTNBp57DxPXJlPyTvAviotruz+jji7NkVluI7b
	t9n4BjbI2J4l0ZLLHzxg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wfFmU-00000004LD1-0Pn9;
	Thu, 02 Jul 2026 11:40:34 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wfFmR-00000004LBh-1UHj
	for linux-phy@lists.infradead.org;
	Thu, 02 Jul 2026 11:40:32 +0000
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6627TsK83964225
	for <linux-phy@lists.infradead.org>; Thu, 2 Jul 2026 11:40:30 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	NIrrgt0h4u/XYVrX8w7YmBq4OVJYHoIKS3bZyeuiC5Y=; b=USCn2SKVpEpFe142
	SRlk17aHjfvPRyrZ7BTMDGfMAldC98/kEp1seUkNJCo4oBJuVHxQ3Nh5zVZ+sEdP
	aeiGemEHkUuDsQPTld6QBXtxrdlq0m2BCr8DHkzb/sxG2yf3RnJ2OHhGFEsViAI8
	nO7PiPA9BKW7jIbI2D1weEK7dwXGwJ5SfsobsufXwFk70/EJpaQW7to6W6zAQ14J
	Q4ur3ulsDzNpJfYQA8P9unzVQ4JIQOIamdg7DxXY8xNfbCXywAEHYNScOM+9ntHW
	Mc/BF03OQoAOmf4pJy+2dYCVS7GG2UEMOw86mb2ITlZegdKbflZosrq1MWWHq6Ia
	om/19g==
Received: from mail-vk1-f197.google.com (mail-vk1-f197.google.com [209.85.221.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4f5knc0y4y-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 02 Jul 2026 11:40:30 +0000 (GMT)
Received: by mail-vk1-f197.google.com with SMTP id 71dfb90a1353d-5ab036818efso610342e0c.2
        for <linux-phy@lists.infradead.org>; Thu, 02 Jul 2026 04:40:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1782992430; x=1783597230; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=NIrrgt0h4u/XYVrX8w7YmBq4OVJYHoIKS3bZyeuiC5Y=;
        b=ffglTF7hKvM0iPyKWs915j2V9/qy3WPor9VXtWOtUUesh9Vy4au3cudRgsTt1Wf+9E
         6M9LSrCpgAA6CDD8IRbdZ4Qr6B/iQFfgFyDbBnrRYrdmeMHB1BvgkHjH2yDfEoaitu7E
         48DFo1NOAjB6Cv9ZuYn82UlutNNRk9ZS7zQ9xCbQhVrCe3EnVdkcpXV7U5AkcuDenwbW
         WJydB5fowiM0a0DwAxHXYziRysfpp22DZQLWy3BabyG8/1vqf9sN56Uya7EgWvbkbtXK
         mdu/paWA/r5aKsLkLV7lbaEtXOjiuj3Y/Ar+vxnpmsNxWluQjzKYqrLK/9Znr/09Ysug
         VFPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782992430; x=1783597230;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=NIrrgt0h4u/XYVrX8w7YmBq4OVJYHoIKS3bZyeuiC5Y=;
        b=gCMJODzoRY1yBJAOTNh/UvSxLp4YvVY3kkZLbqreaejeo6yzVcGeIY/pc/9Lut4MVk
         fwpzUycjJ559ALxHR5cPivgkfGWv2nTwf8wOwpc8hyU1VWrdsAniGDKZBZRQRP4dQsg9
         KbZNo00nEI/aqKvzbbFEjiTqs3AOSRfIBdA6odKETCQ0JPDQ5XMUzu/sTUsyHqDoYaiQ
         3QyTlZ8+kAN1iNiNfHKv8EkPW2YtR8lZVL+cbU2QVlV7u8Q2PsepUICVEY7TskoFhlTi
         fPRb5GbbhdCQ32vl8p6JYUslVWQbPIwOLOhWkBehBgtWvaKEEK1s8z63oEUvEgmLH5pi
         3cVw==
X-Forwarded-Encrypted: i=1; AHgh+RrcSNTNDiRg67AeMRJi09131nfc8fwdPiZcGkKJ902N8OBlpNl7DRZDVbosF6p9NNpMzRBGpG3XtFU=@lists.infradead.org
X-Gm-Message-State: AOJu0Yyop3Z7viC+qN9pHKwIdGBWYqMm30GNFZ5CohRKBv4ovPkF61Vg
	DLKJSIrVxO2Rwa3MIGw2qjvdNGNJAixQPj1u8xE28McjXiP0SpuNUDlS/Da1iU3VkhHHDmJGPJ6
	NJ4Rn7emdGUcP6Mu8/mBmscTIsGS/g1HPZNR7gMweEpqf970foEBnAZOBDUTsNPN55oBA3OAq5R
	Cc
X-Gm-Gg: AfdE7cm72P94Gzpu4kbQWbkhxPteTyRpjFStjN2pxLdfUocAce9rG4eY4eYgjUppZFd
	CN6JHvb3EDtOewNtkq4ESE3JIKrUW9OuVDh8K7vg2KJvUhsBvnD+dbXLlacMoTa/ZfwvHAOQn/V
	xZ6BwkopZMKrbKJhl/u8gKMsWXrJKsSLUy+aEY7BttdKfDugu0H9hSSAklfJNFjKqSF7ctXUC8T
	fw1G7tyIhhuvPZKzEsUNk4i0M9idjFL9229JeQ3czICD1lZaKUoybIIKLBvINts0Yqi8li2eSET
	pCK04GEDM1r8YgWUx1zig1Xr83Y7eWrIZsYcWR5JkckTgO3d3wwS/Fu9RNBa+4lOTkB6zX5UJoX
	naXC7KXgUDUSbz1n25cnXdTdorSbvH9DM2nR2FabOOBgDUrUy/jG+97euXg+oVspPgfoirgdx3J
	SCF+giVNnXs+fq+weULa3vrCLQ
X-Received: by 2002:a05:6122:310b:b0:5bb:d01d:451 with SMTP id 71dfb90a1353d-5bddf66ed8emr2090814e0c.10.1782992429488;
        Thu, 02 Jul 2026 04:40:29 -0700 (PDT)
X-Received: by 2002:a05:6122:310b:b0:5bb:d01d:451 with SMTP id 71dfb90a1353d-5bddf66ed8emr2090806e0c.10.1782992429020;
        Thu, 02 Jul 2026 04:40:29 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5aec8991affsm626240e87.13.2026.07.02.04.40.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 02 Jul 2026 04:40:27 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Thu, 02 Jul 2026 14:40:25 +0300
Subject: [PATCH 1/2] phy: qcom-qusb2: don't unrelated bits if autoresume is
 not used
MIME-Version: 1.0
Message-Id: <20260702-fix-qusb2-v1-1-b5cf55621524@oss.qualcomm.com>
References: <20260702-fix-qusb2-v1-0-b5cf55621524@oss.qualcomm.com>
In-Reply-To: <20260702-fix-qusb2-v1-0-b5cf55621524@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Kathiravan T <quic_kathirav@quicinc.com>,
        Baruch Siach <baruch@tkos.co.il>, Dmitry Baryshkov <lumag@kernel.org>,
        Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1932;
 i=dmitry.baryshkov@oss.qualcomm.com; h=from:subject:message-id;
 bh=ECwyXGLyiKahd7C8k8+zQNRe/N/N8D3moPR8+kwZ4+U=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBqRk4pLMS8rCk2CpbTu78M9dn+SXUk/73cb4qR8
 85AfNYAsmyJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCakZOKQAKCRCLPIo+Aiko
 1QGsB/9BoakvHIdg29X089W/XXcy9aLwJ6sU6xehzCAkcf9smnZrXiOp41KRQuTWXEzEmWXUwe6
 RkiCbNfrshQbGxM/zVf8zslehqxkZMtydsw9qdMcVRtlq8Nb/fU3RorNhHMVRIb0CDQArcFSoLF
 R3KbrAOWEZOFqLZW5ttCmZg2/Thl+iOb3i3al8WUiS6ca1NA8sx5TNzc1zcdTNolAOMjDKWEU/w
 hpGlnruSHQLzlhsz6w9QXQW1P+ShHLc5YeW5JHp2Ap93m5jLCQOIFL4+wJ9qDxisRo6940sLNzg
 al+6xINox1dcY2ydcwydU5kX64rsYBSGshviwKW9sAztoid1
X-Developer-Key: i=dmitry.baryshkov@oss.qualcomm.com; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-Proofpoint-ORIG-GUID: -xplTBHWUl9U92DOjwv3zS93B8gf_xqJ
X-Authority-Analysis: v=2.4 cv=a4kAM0SF c=1 sm=1 tr=0 ts=6a464e2e cx=c_pps
 a=JIY1xp/sjQ9K5JH4t62bdg==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=RAioF0-LDSMA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=_glEPmIy2e8OvE2BGh3C:22 a=EUspDBNiAAAA:8
 a=FT4fCJ2990P9gJUHT4wA:9 a=QEXdDO2ut3YA:10 a=tNoRWFLymzeba-QzToBc:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzAyMDEyMSBTYWx0ZWRfXxANfa+Hf9jlY
 komdyfIE5yHD66LmWaEmb/R3a7isDNNb4hNHp/Us7IPN5Z3wV1jud4jYwizCo7QZdECRO7joEi4
 66kvTkMRQaHYuFfw65hA7AqIrk93GlhsMLdMnW2wbIS7x6aO20Tg/49fJEKqYN1YOs2S+8Vzigq
 PmZk2JqcZgshVxHKzcAvPxiB+QDoRc8FPgxkT5iqCAw8iuxMfSR50Rf9xB/WCLwOeoN/+XmrsEc
 v8ZR8vBputAv76f37+YiyK0pIIrmgAiJPYunDv4PSbdVuN7eFrGMoJbQbDQK0SH7RHZ1znTfEW9
 /DGHJXdfB8YwC3C+OLQtE0ZOHo8GojJNL0aHsxJS502B4glC9FdT36i2tv0gVa2bJQdZ0vXccSd
 jGJoZoCYEEzjI6b/ss/ZIHUY8aO/x08XFHW4X2d8UOF+r4yr2bQW8sYr+Iu934Eim3A8A+gv1Lq
 EDSiL+a5+2SCercOd9Q==
X-Proofpoint-Spam-Info: AW1haW4tMjYwNzAyMDEyMSBTYWx0ZWRfX+qedlvpoJiu0
 j0+S+34IifTIL7zr9B9KMtKZwhqzLrPBjE0Cc3sa/bGA0egjtU/LXd5YiqWrZlzpKUxjrW0FOKJ
 rMqRYZXtlJLz2YBR40vJkl2YM7+xEeM=
X-Proofpoint-GUID: -xplTBHWUl9U92DOjwv3zS93B8gf_xqJ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-07-02_01,2026-06-26_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 clxscore=1015 impostorscore=0 malwarescore=0 adultscore=0
 suspectscore=0 priorityscore=1501 bulkscore=0 spamscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2607020121
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260702_044031_520985_07781E92 
X-CRM114-Status: GOOD (  17.05  )
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

The IPQ6018 and QCS615 platforms don't need to toggle the autoresume
bit. However the driver ended up toggling a completely unrelated bit
(BIT 0 in the TEST1 register) instead of skipping the autoresume bit
programmign at all.

Update those two platforms to specify 0 mask for the autoresume_en and
skip programming if the mask is 0.

Fixes: 2cfbe6765b7a ("phy: qcom-qusb2: add QUSB2 support for IPQ6018")
Fixes: 8adbf20e0502 ("phy: qcom-qusb2: Add support for QCS615")
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-qusb2.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qusb2.c b/drivers/phy/qualcomm/phy-qcom-qusb2.c
index eb93015be841..1109c480843e 100644
--- a/drivers/phy/qualcomm/phy-qcom-qusb2.c
+++ b/drivers/phy/qualcomm/phy-qcom-qusb2.c
@@ -341,7 +341,7 @@ static const struct qusb2_phy_cfg ipq6018_phy_cfg = {
 	.disable_ctrl   = POWER_DOWN,
 	.mask_core_ready = PLL_LOCKED,
 	/* autoresume not used */
-	.autoresume_en   = BIT(0),
+	.autoresume_en   = 0,
 };
 
 static const struct qusb2_phy_cfg qcs615_phy_cfg = {
@@ -352,7 +352,7 @@ static const struct qusb2_phy_cfg qcs615_phy_cfg = {
 	.disable_ctrl   = (CLAMP_N_EN | FREEZIO_N | POWER_DOWN),
 	.mask_core_ready = PLL_LOCKED,
 	/* autoresume not used */
-	.autoresume_en   = BIT(0),
+	.autoresume_en   = 0,
 };
 
 static const struct qusb2_phy_cfg qusb2_v2_phy_cfg = {
@@ -677,7 +677,7 @@ static int __maybe_unused qusb2_phy_runtime_suspend(struct device *dev)
 	}
 
 	/* enable phy auto-resume only if device is connected on bus */
-	if (qphy->mode != PHY_MODE_INVALID) {
+	if (qphy->mode != PHY_MODE_INVALID && cfg->autoresume_en) {
 		qusb2_setbits(qphy->base, cfg->regs[QUSB2PHY_PORT_TEST1],
 			      cfg->autoresume_en);
 		/* Autoresume bit has to be toggled in order to enable it */

-- 
2.47.3


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
