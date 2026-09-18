Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 078A0C982D9
	for <linux-phy@archiver.kernel.org>; Fri, 18 Sep 2026 10:40:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JTJrPYRZ4lBJ8AWoKvNkhkD2L05iheM8hCn5nH9h+jc=; b=whaIyB9rjVukaj
	YFvmpFrxT3OYYT9aELlRhb6byvxn6wklaW2Nlpz33NzzsFJRfuOcrkBQCLhZy2wVkTumf5rx4HyCV
	I7I4E8lDgXUtDAeIv14VLPzt7uY9We1JQ8q8B3kOiOnyhiNaGAf9YZ1lQ/CVM4rmN728AoH+R0Eqv
	f0rVJeFiHw2WCD3I39S9Aad6ml5FfQWl0DFwht6DNSkReAIryz5YkMPEpoyaCBtsQuulIGqFYEB/f
	PWliGedS4971xNeuuIEqmkHNWN3Wr5qyv8y7Uk5hGZciZBF71/wTckCkQ78RU7u4gUgByTWyGkXmd
	V4gBIb/7Pm25zI7yfA6w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x7W10-0000000E7B6-2mpl;
	Fri, 18 Sep 2026 10:40:22 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x7W0x-0000000E7A4-1KtS
	for linux-phy@lists.infradead.org;
	Fri, 18 Sep 2026 10:40:20 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 68I9ddn83801892
	for <linux-phy@lists.infradead.org>; Fri, 18 Sep 2026 10:40:18 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	1Nh+NmNFCLw6H1mKl79KS+XuOQAwflA4sy/wRgQsFUc=; b=a7F46PybGK8Uhcai
	UQLJWFVqFydV93V1SN/zkHjk6/oFEd16tQbG49/Yynw7rtrnJZsLgZK2+LsSGT0A
	GpSTQTLxdJjF6n8oCSSQTlPuhM3kbiaR5xPHYWeEgrarz5GQMgo3GsFDtHFKAl5f
	5Y9W5oVf+mhqFQlRhrYajwwmQ0B4n3zXWERYvAAPdAJhM6l4OXRtMFMl8yOiR6KN
	/5npVhNo5RxhS7IyEtf8KIKIPsdeIFsXGFUeMxL89S+7bz/DEr2xV2szZTqBOE3E
	NtNNZmiG0SYAkkSy/t8+i2ECa0q9V8cNOac3vqdX6WdkMQK4dnDksNUqxS7ZY2y6
	g8fA/w==
Received: from mail-pg1-f197.google.com (mail-pg1-f197.google.com [209.85.215.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4grq2ku4ug-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 18 Sep 2026 10:40:18 +0000 (GMT)
Received: by mail-pg1-f197.google.com with SMTP id 41be03b00d2f7-cc21bc2923fso585189a12.2
        for <linux-phy@lists.infradead.org>; Fri, 18 Sep 2026 03:40:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1789728017; x=1790332817; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=1Nh+NmNFCLw6H1mKl79KS+XuOQAwflA4sy/wRgQsFUc=;
        b=Ny2X+p2R6csZyUEzmJg/AwYaX/vudIlOsBTsjEqbNztvRQAwivvF2T+YcU9TweHjFo
         isg9a3Cu+qcpiA0qs175Gha4cAqBySMPq1nHQJNOyNdrTltuktU2xFTxIvHudxfZdgdk
         dGxNfMI+YIAqNqwxygd2DBIDKdrPQ4QWX2XFba9abMD9tYhqnkZOoPphwfjrA8oAZA88
         J/KhUbZcjwWjZrZ8+krtiSQppE7dMMuEQm8FWJN8c5R2nD0WqawkX/F/moE+HRzeCars
         vi2tjff2NcJoTgD6DvTblyj14inNd/WtXAV3x9/QSHxTQazpxFozWYaWrtlImw1uVBH8
         siZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1789728017; x=1790332817;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=1Nh+NmNFCLw6H1mKl79KS+XuOQAwflA4sy/wRgQsFUc=;
        b=gHuTlcPELwwCynLsoYBpoQB9Qf3FG+XHg0z145UVyMPlBICrz5Xq4Z1swQfm9CFoBs
         5ukS5pdOMKo0tsTAuHErhQjS3tipC51Bhywx5OveALMHUBBKxocQFHJiWGPEUbexFiY7
         5TGoW0rwOccCjc1SqENLeCycYX0WJ9uZDANxw/Z8Gazr2kl9NaF26dQKoIlOHUXzCZdS
         HyMQu0Rho2GGbrs6QdEdDaYDgc1ceKcHtZGmak8qREpVouCsDaPisYyixKjbTzIKJN74
         FBrUXfzniE4DcTlOlRMEfebFO76FCpEi0fpnE7A9Pqnm6h+wiR+6ZxuB2svkzVJSrOxB
         J8Xg==
X-Forwarded-Encrypted: i=1; AKwUvBx92siw0yzKJxYkF7quBfkl8Gy8gTTjOAPKdCNK1m7j8DSqaWhxpSAPb3Lrf+JRvJ42GeAC/nV4Utk=@lists.infradead.org
X-Gm-Message-State: AFuF++lyez0tHiW9GU52DmoUVxZ1pLlaIvpIXe916s2qyxzAuS91CNpD
	dfqetLxn01ND6vWh1Lw1gWPdgqr+l73GE5DFL301ISa+qZTjiK1rvV58A0rzJYqIbs71m1D63Wn
	qByga94Z7tDmXVYlBwxSK8Lk+Lf+qV5wpMKKMRje0PC0tx8asrp0jRKYMyPsi0Nw3VorE
X-Gm-Gg: AYBFou19uFSJt5CHr/x9kFy/ddKi3uG1l35wOtQPFxw4TG+RbUHB1qqm+OH9BIAqKGQ
	bFEgxBf2GwBjmgnEBAPTA/b20BzgDQhY0KSyXPRNKS1mJttzcc9bRVFegvzuJBbg1yPKY3qxT+9
	50/9S8sAdcQkpP1UyzK9fmx3y4rlbN1o/CoVKxZ7NxFJaelrvuxkmz2OJFFHvD3AkYtHUCRN9To
	vQsMaSBToY7wTGSwOAz+ZburCPFiStsl3IrH2JYZQWS7MSZ+EOWWmqLAjrsh/0c6Sa7u4vLQgdx
	+iJQF0GGc9gRkNAc+J/jYgRPb/nQ2Zm/YXEgKaoc/jLHJXVPEJHxDXqR3Lc1A7JI7u58irrBMYL
	LaaJy12WLiLARwZi9KN7uznkjPw==
X-Received: by 2002:a05:6a20:4306:b0:3d3:ad3c:49a7 with SMTP id adf61e73a8af0-3dd8c5161b8mr4390030637.21.1789728016906;
        Fri, 18 Sep 2026 03:40:16 -0700 (PDT)
X-Received: by 2002:a05:6a20:4306:b0:3d3:ad3c:49a7 with SMTP id adf61e73a8af0-3dd8c5161b8mr4389948637.21.1789728016410;
        Fri, 18 Sep 2026 03:40:16 -0700 (PDT)
Received: from [10.213.101.15] ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-33c286d98e7sm4020702eec.9.2026.09.18.03.40.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 18 Sep 2026 03:40:15 -0700 (PDT)
From: Pradeep P V K <pradeep.pragallapati@oss.qualcomm.com>
Date: Fri, 18 Sep 2026 16:09:11 +0530
Subject: [PATCH v2 5/5] phy: qcom-qmp-ufs: Add Glymur support
MIME-Version: 1.0
Message-Id: <20260918-glymur_ufs_qcb_enablement-v2-5-16619f7e36a6@oss.qualcomm.com>
References: <20260918-glymur_ufs_qcb_enablement-v2-0-16619f7e36a6@oss.qualcomm.com>
In-Reply-To: <20260918-glymur_ufs_qcb_enablement-v2-0-16619f7e36a6@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Alim Akhtar <alim.akhtar@samsung.com>,
        Avri Altman <avri.altman@sandisk.com>,
        Bart Van Assche <bvanassche@acm.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        gopikrishna.garmidi@oss.qualcomm.com, jagadeesh.kona@oss.qualcomm.com,
        Abel Vesa <abel.vesa@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-scsi@vger.kernel.org, nitin.rawat@oss.qualcomm.com,
        sibi.sankar@oss.qualcomm.com, Taniya Das <taniya.das@oss.qualcomm.com>,
        Pradeep P V K <pradeep.pragallapati@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1789727970; l=6280;
 i=pradeep.pragallapati@oss.qualcomm.com; s=20260911;
 h=from:subject:message-id; bh=vvboFhjhTvFie91LJaaJcuqWM/kZ5yCsf5rhMJlRAuE=;
 b=wX81ODLVtK0gR9Se07QBYj1Yf+XWlGZ1/jwnHoyT9vt6Bv1Kr4YJdyBwgXnHy0TlqllzlzpBo
 hOeTQgzNBC7CPMp2zWB7MUZ2EN9FsDAEJu/Hc0Nd07JoN3h+TNEZL/X
X-Developer-Key: i=pradeep.pragallapati@oss.qualcomm.com; a=ed25519;
 pk=uyRUsge8nQMwf3iW/e/o0U8z9nWLCMm1MGKxEftztic=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwOTE4MDE0OSBTYWx0ZWRfX/iH0lh1PNrvY
 PwKaoH3s7jcLPyPAbmhskDo5btU6VEoff8SyyRRqYnH0dt2Q7cDvaaIV98wRhYp7gqOxF2kN+Q/
 xctqo0gI8G8WAs0nVM0DzU4b21l3RS8SciOMD4iU6V+OluO76RntoEReGg+/iv0xyqJPsNKLnSm
 ALGZ3xmY70nMpEVi6M5gpuUyYE5fK2ckfzQ19NwP541bbjKT3TKpbD1f7ss89jRmnimSZyJ44QG
 wa8GIGu3/+V1zmkMmm/x7NWsthit8TP3LiDVTzV1O6CuLGwrsCdQA9XfSLPeqjJNxY4QFBWO7TI
 yIdMS2v+w9yblADsUqHtD0aGlhZC8gFUWWRSCu8tfWudc8gaeGcLV2NLftKqa+m9r8lRg0Jvyrh
 TY2QAdWshXAc7Cq0i2DICtzTROhn0JMN1GGafuCrBmS7pc2EgPBJiknkU4HnYNCSSjyByxut3n6
 //GDHG2hT4yheTSj7GA==
X-Proofpoint-GUID: vqvvKVl_X6OQ03fjySgJs7rpNGWMxxJK
X-Authority-Analysis: v=2.4 cv=bcD+w+PB c=1 sm=1 tr=0 ts=6aad1512 cx=c_pps
 a=rz3CxIlbcmazkYymdCej/Q==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=VdqzKS8jKosA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yx91gb_oNiZeI1HMLzn7:22
 a=EUspDBNiAAAA:8 a=EEZK_nQxm5Uv2-YDnh4A:9 a=QEXdDO2ut3YA:10
 a=bFCP_H2QrGi7Okbo017w:22
X-Proofpoint-Spam-Info: AW1haW4tMjYwOTE4MDE0OSBTYWx0ZWRfX++LNEnYTLY8a
 lGxN3317dvWrkcnu8EN+krlrFwLUBZLoU/yCZByPneoSC3MX850ZpxKnK2BBaN0kXRffGkeym5M
 fBik8BkoHpiUdeojbx69GxkdPWtdBJw=
X-Proofpoint-ORIG-GUID: vqvvKVl_X6OQ03fjySgJs7rpNGWMxxJK
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-09-18_03,2026-09-16_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 clxscore=1015 adultscore=0 suspectscore=0 priorityscore=1501
 bulkscore=0 phishscore=0 impostorscore=0 lowpriorityscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2609040000 definitions=main-2609180149
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260918_034019_502714_15FEC0A4 
X-CRM114-Status: GOOD (  14.45  )
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

Add the init sequence tables and config for the UFS QMP phy found in
the Glymur SoC.

Reviewed-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
Acked-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Signed-off-by: Pradeep P V K <pradeep.pragallapati@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-qmp-ufs.c | 99 +++++++++++++++++++++++++++++++++
 1 file changed, 99 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
index d4aca22c181e..ffef8801143a 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
@@ -93,6 +93,59 @@ static const unsigned int ufsphy_v7_regs_layout[QPHY_LAYOUT_SIZE] = {
 	[QPHY_PCS_POWER_DOWN_CONTROL]	= QPHY_V7_PCS_UFS_POWER_DOWN_CONTROL,
 };
 
+static const struct qmp_phy_init_tbl glymur_ufsphy_rx[] = {
+	QMP_PHY_INIT_CFG(QSERDES_UFS_V7_RX_UCDR_FO_GAIN_RATE2, 0x0c),
+	QMP_PHY_INIT_CFG(QSERDES_UFS_V7_RX_UCDR_FO_GAIN_RATE4, 0x0c),
+	QMP_PHY_INIT_CFG(QSERDES_UFS_V7_RX_UCDR_SO_GAIN_RATE4, 0x04),
+	QMP_PHY_INIT_CFG(QSERDES_UFS_V7_RX_EQ_OFFSET_ADAPTOR_CNTRL1, 0x14),
+	QMP_PHY_INIT_CFG(QSERDES_UFS_V7_RX_UCDR_PI_CONTROLS, 0x07),
+	QMP_PHY_INIT_CFG(QSERDES_UFS_V7_RX_OFFSET_ADAPTOR_CNTRL3, 0x0e),
+	QMP_PHY_INIT_CFG(QSERDES_UFS_V7_RX_UCDR_FASTLOCK_COUNT_HIGH_RATE4, 0x02),
+	QMP_PHY_INIT_CFG(QSERDES_UFS_V7_RX_UCDR_FASTLOCK_FO_GAIN_RATE4, 0x1c),
+	QMP_PHY_INIT_CFG(QSERDES_UFS_V7_RX_UCDR_FASTLOCK_SO_GAIN_RATE4, 0x06),
+	QMP_PHY_INIT_CFG(QSERDES_UFS_V7_RX_VGA_CAL_MAN_VAL, 0xce),
+	QMP_PHY_INIT_CFG(QSERDES_UFS_V7_RX_EQU_ADAPTOR_CNTRL4, 0x0f),
+	QMP_PHY_INIT_CFG(QSERDES_UFS_V7_RX_MODE_RATE_0_1_B0, 0xce),
+	QMP_PHY_INIT_CFG(QSERDES_UFS_V7_RX_MODE_RATE_0_1_B1, 0xce),
+	QMP_PHY_INIT_CFG(QSERDES_UFS_V7_RX_MODE_RATE_0_1_B2, 0x18),
+	QMP_PHY_INIT_CFG(QSERDES_UFS_V7_RX_MODE_RATE_0_1_B3, 0x1a),
+	QMP_PHY_INIT_CFG(QSERDES_UFS_V7_RX_MODE_RATE_0_1_B4, 0x0f),
+	QMP_PHY_INIT_CFG(QSERDES_UFS_V7_RX_MODE_RATE_0_1_B6, 0x60),
+	QMP_PHY_INIT_CFG(QSERDES_UFS_V7_RX_MODE_RATE_0_1_B7, 0x62),
+	QMP_PHY_INIT_CFG(QSERDES_UFS_V7_RX_MODE_RATE2_B3, 0x9a),
+	QMP_PHY_INIT_CFG(QSERDES_UFS_V7_RX_MODE_RATE2_B6, 0xe2),
+	QMP_PHY_INIT_CFG(QSERDES_UFS_V7_RX_MODE_RATE2_B7, 0x06),
+	QMP_PHY_INIT_CFG(QSERDES_UFS_V7_RX_MODE_RATE3_B0, 0x1b),
+	QMP_PHY_INIT_CFG(QSERDES_UFS_V7_RX_MODE_RATE3_B1, 0x1b),
+	QMP_PHY_INIT_CFG(QSERDES_UFS_V7_RX_MODE_RATE3_B2, 0x98),
+	QMP_PHY_INIT_CFG(QSERDES_UFS_V7_RX_MODE_RATE3_B3, 0x9b),
+	QMP_PHY_INIT_CFG(QSERDES_UFS_V7_RX_MODE_RATE3_B4, 0x2a),
+	QMP_PHY_INIT_CFG(QSERDES_UFS_V7_RX_MODE_RATE3_B5, 0x12),
+	QMP_PHY_INIT_CFG(QSERDES_UFS_V7_RX_MODE_RATE3_B7, 0x06),
+	QMP_PHY_INIT_CFG(QSERDES_UFS_V7_RX_MODE_RATE3_B8, 0x01),
+	QMP_PHY_INIT_CFG(QSERDES_UFS_V7_RX_MODE_RATE4_SA_B0, 0x93),
+	QMP_PHY_INIT_CFG(QSERDES_UFS_V7_RX_MODE_RATE4_SA_B1, 0x93),
+	QMP_PHY_INIT_CFG(QSERDES_UFS_V7_RX_MODE_RATE4_SA_B2, 0x60),
+	QMP_PHY_INIT_CFG(QSERDES_UFS_V7_RX_MODE_RATE4_SA_B3, 0x99),
+	QMP_PHY_INIT_CFG(QSERDES_UFS_V7_RX_MODE_RATE4_SA_B4, 0x5f),
+	QMP_PHY_INIT_CFG(QSERDES_UFS_V7_RX_MODE_RATE4_SA_B5, 0x92),
+	QMP_PHY_INIT_CFG(QSERDES_UFS_V7_RX_MODE_RATE4_SA_B6, 0xe3),
+	QMP_PHY_INIT_CFG(QSERDES_UFS_V7_RX_MODE_RATE4_SA_B7, 0x06),
+	QMP_PHY_INIT_CFG(QSERDES_UFS_V7_RX_MODE_RATE4_SB_B0, 0x24),
+	QMP_PHY_INIT_CFG(QSERDES_UFS_V7_RX_MODE_RATE4_SB_B1, 0x24),
+	QMP_PHY_INIT_CFG(QSERDES_UFS_V7_RX_MODE_RATE4_SB_B2, 0xe0),
+	QMP_PHY_INIT_CFG(QSERDES_UFS_V7_RX_MODE_RATE4_SB_B3, 0x99),
+	QMP_PHY_INIT_CFG(QSERDES_UFS_V7_RX_MODE_RATE4_SB_B4, 0x5f),
+	QMP_PHY_INIT_CFG(QSERDES_UFS_V7_RX_MODE_RATE4_SB_B5, 0x92),
+	QMP_PHY_INIT_CFG(QSERDES_UFS_V7_RX_MODE_RATE4_SB_B6, 0xfb),
+	QMP_PHY_INIT_CFG(QSERDES_UFS_V7_RX_MODE_RATE4_SB_B7, 0x06),
+	QMP_PHY_INIT_CFG(QSERDES_UFS_V7_RX_UCDR_SO_SATURATION, 0x1f),
+	QMP_PHY_INIT_CFG(QSERDES_UFS_V7_RX_UCDR_PI_CTRL1, 0x94),
+	QMP_PHY_INIT_CFG(QSERDES_UFS_V7_RX_TERM_BW_CTRL0, 0xfa),
+	QMP_PHY_INIT_CFG(QSERDES_UFS_V7_RX_DLL0_FTUNE_CTRL, 0x30),
+	QMP_PHY_INIT_CFG(QSERDES_UFS_V7_RX_SIGDET_CAL_TRIM, 0x77),
+};
+
 static const struct qmp_phy_init_tbl milos_ufsphy_serdes[] = {
 	QMP_PHY_INIT_CFG(QSERDES_V6_COM_SYSCLK_EN_SEL, 0xd9),
 	QMP_PHY_INIT_CFG(QSERDES_V6_COM_CMN_CONFIG_1, 0x16),
@@ -1236,6 +1289,11 @@ static inline void qphy_clrbits(void __iomem *base, u32 offset, u32 val)
 }
 
 /* Regulator bulk data with load values for specific configurations */
+static const struct regulator_bulk_data glymur_ufsphy_vreg_l[] = {
+	{ .supply = "vdda-phy", .init_load_uA = 217130 },
+	{ .supply = "vdda-pll", .init_load_uA = 18340 },
+};
+
 static const struct regulator_bulk_data milos_ufsphy_vreg_l[] = {
 	{ .supply = "vdda-phy", .init_load_uA = 140120 },
 	{ .supply = "vdda-pll", .init_load_uA = 18340 },
@@ -1348,6 +1406,44 @@ static const struct qmp_ufs_offsets qmp_ufs_offsets_v7 = {
 	.rx2		= 0x3000,
 };
 
+static const struct qmp_phy_cfg glymur_ufsphy_cfg = {
+	.lanes			= 2,
+
+	.offsets		= &qmp_ufs_offsets_v6,
+	.max_supported_gear	= UFS_HS_G5,
+
+	.tbls = {
+		.serdes		= sm8750_ufsphy_serdes,
+		.serdes_num	= ARRAY_SIZE(sm8750_ufsphy_serdes),
+		.tx		= sm8750_ufsphy_tx,
+		.tx_num		= ARRAY_SIZE(sm8750_ufsphy_tx),
+		.rx		= glymur_ufsphy_rx,
+		.rx_num		= ARRAY_SIZE(glymur_ufsphy_rx),
+		.pcs		= sm8750_ufsphy_pcs,
+		.pcs_num	= ARRAY_SIZE(sm8750_ufsphy_pcs),
+	},
+
+	.tbls_hs_b = {
+		.pcs		= sm8750_ufsphy_hs_b_pcs,
+		.pcs_num	= ARRAY_SIZE(sm8750_ufsphy_hs_b_pcs),
+	},
+
+	.tbls_hs_overlay[0] = {
+		.pcs		= sm8750_ufsphy_g4_pcs,
+		.pcs_num	= ARRAY_SIZE(sm8750_ufsphy_g4_pcs),
+		.max_gear	= UFS_HS_G4,
+	},
+	.tbls_hs_overlay[1] = {
+		.pcs		= sm8650_ufsphy_g5_pcs,
+		.pcs_num	= ARRAY_SIZE(sm8650_ufsphy_g5_pcs),
+		.max_gear	= UFS_HS_G5,
+	},
+
+	.vreg_list		= glymur_ufsphy_vreg_l,
+	.num_vregs		= ARRAY_SIZE(glymur_ufsphy_vreg_l),
+	.regs			= ufsphy_v6_regs_layout,
+};
+
 static const struct qmp_phy_cfg milos_ufsphy_cfg = {
 	.lanes			= 2,
 
@@ -2395,6 +2491,9 @@ static int qmp_ufs_probe(struct platform_device *pdev)
 
 static const struct of_device_id qmp_ufs_of_match_table[] = {
 	{
+		.compatible = "qcom,glymur-qmp-ufs-phy",
+		.data = &glymur_ufsphy_cfg,
+	}, {
 		.compatible = "qcom,hawi-qmp-ufs-phy",
 		.data = &hawi_ufsphy_cfg,
 	}, {

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
