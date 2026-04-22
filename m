Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 332F1F94CCB
	for <linux-phy@archiver.kernel.org>; Wed, 22 Apr 2026 06:02:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5JW4D/2SSC9w6f097gZ4r6wfTjrLczCeh4Uuo6zjK5M=; b=xk/QzyvtCmLd0S
	ZrxsvYKYPI/VDrN5tBpmESgBLUyNlKSK8/U0HG7PajuLxdjVfvF4TOefSQWwpKPMY/h3ehfRmUwO2
	6ggOqOMxWnQ8xUW6iEMJHy3nGlmyvmYoCt/0YGVxlHsJem7Qt1DI9cQT12ISzyUSKwhbRtXkD0FEF
	Z9o4nh4y9vLUo7B3KQtQXxi8Lt/5ok2rT9tl8JAxUVP16wqQuqM6p9eTPreuek7ZzwUxe2GaD3x7O
	g8tSbNDJnZfmNS3cG948kql1ps/Hy0ibW0YBdz3KU1nPH+KCLXd3r+kh/B/VOLOUeBAVvqeuyR3Dn
	DsBlyR9BK23d3XARAz4w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wFQfM-00000009dqA-44Zb;
	Wed, 22 Apr 2026 06:02:28 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wFQfL-00000009dpM-1EBS
	for linux-phy@lists.infradead.org;
	Wed, 22 Apr 2026 06:02:28 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 63M4o2wO2000986
	for <linux-phy@lists.infradead.org>; Wed, 22 Apr 2026 06:02:27 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	oksW48YDo/iJ7Obeo6EtxigAsB0wziIFhIjb8FZ7kqs=; b=hXrY9D/BdUWacfgT
	lAncsQpG6pm4D1QJz37+XohnMpufauuwpGBslZVI0gZ3pb+4S2JyO3BhC1TVbFWx
	BQZuZPTzoyx+0CqzrZDRt8q33pAV0CDuc74iS4JK03Hj/E84L6GVBE0RZfSbUwCA
	pLOaKpOlCi6Gq4rpSO2TzVOJyiK8RNXKPPtMsxTl5sErdV/7r/bzBTH0t7uh5bJJ
	m1ke1xiz4hJTa5wWbdbtzGETVIrQPHNX2Ipwsb4QxpBxyg187e4GYIbtr6nQx4Xc
	XhLAJhyYIazpQZGvitfv/ovnR+noEXCPg+wl5BO3CY4jIxagDNqVlfAEtFs7lxeh
	vSUNyQ==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4dpenf9wvn-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 22 Apr 2026 06:02:26 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8eb55e55362so594141385a.2
        for <linux-phy@lists.infradead.org>; Tue, 21 Apr 2026 23:02:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1776837745; x=1777442545; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=oksW48YDo/iJ7Obeo6EtxigAsB0wziIFhIjb8FZ7kqs=;
        b=IVd9ZgNkdy2eAxkJyxZ7iE6b8T5D6zYmhrcaXlm+4WfcCgRdMIeGlzssVh9/M/h0Qi
         WIe6WxrP2XmxEdTOamPaJALqCNDR/9PHpo+GWWz84MIwoLzhcc9pu6uG2DwDfTFyOk0M
         5y+YNdQW5VAcOC5JdUtrNJovGt1lHkeM43o4p6Pc4+5Jc7GJhBL+VumsHSE/tiIJkNss
         dQR8TknQYmmPHTdDlyltz8gI6zXi7XpiTmOCyTizm2ZlpFRzfPQvVFS7LoBn+9ETRzZH
         51SGoLqD6X5nBC9dlf1Rxou/PIbBXJW41q4dvaP641X0xVFy9qmbXp8TCuD/8LFmNpkh
         H2fw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1776837745; x=1777442545;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=oksW48YDo/iJ7Obeo6EtxigAsB0wziIFhIjb8FZ7kqs=;
        b=oBIp+DC09peceZHOz78c7WFJj3BuKOpJ7+9P/VP02IxkGjRMR5/PDx4MGkLINZ0ell
         4LQIkRP77Qcv/G1YUAiyGz6S2oXKM+nr8vq3GgLPe/NN2Hz/eUIUMBBF3UKlePyTM9IU
         JNqFiBfne72bY4yBfBny2iaS/1sT2avphCb73ekBaCTEgJ/6Y5xavSpwEcdz6Yq7FsNj
         1IqHyrG/X2iBo9n0277s9+oeK4rNuok5QfESOLGreEewxOV19yqAYPcBbKWJbcRY0TE9
         esf58W7uDDcJncdGj147RBXmQx7QYAiGhWpFemzd/SqHA9jsh7Oc9r0IZieuWhux6TFk
         BN4w==
X-Forwarded-Encrypted: i=1; AFNElJ8RfhsydAAgXSSYysr6FisRfIPOlmf72Y8+AZ9Iq8h1EX205usunYpFtqY5NZXzUEeXWmf1SBH6np4=@lists.infradead.org
X-Gm-Message-State: AOJu0Yywcr4/fJS9pa8XCi3R7O3ia7y+vaZmtNgDNVNEHSFrGXFBSms4
	uxoqsOSPe8n0lRCSpigzLkrwK4MWjttNvw3v1g2sDcMojO+4GcmuzagcQt10V+vM0H3YyHdMvJW
	v/nkfBiLO+9uOBujO59mDKhGb25jiNkskC+38NRMj4UWwVUseu5pxT2pu/cN8b9D5tIUV
X-Gm-Gg: AeBDietIf46KnHrm5xkV+xQyKiUl6oFapc2tLi/UQahWFNBEi3bsMivrsGfl4coixQz
	YFnNSqEAVQcR8Dbk4Dlrqo/DstFS+WC2TaunWJT2o71giU8L94CZ3KiE1/hW2bl+L3X/iXsP/F6
	8uQUHqL1KOfhLsh9aANae3ywvX8sYGVaXM90wRzzdolxGJ7Xs3sin7XyrHsCL8vV7rQio0pDzgL
	OV5Ov5oXgXYHUFlwxD0Gmw2KgDbei9kbaqU/lj1Ytx97DPxyQbUHNeVufyAdC4hiKm3uwwjPU+v
	ia+L3I7AHlCayEMKHTCLvppEyJmaVcbX1Pjtyr+G86PQ1FZQCDzMbUybyTqvOqiYSncLjihyeDR
	2hpbtGKtCiqGGkXmDbXS0kRvxVvuz0emRHbj24cjd22gSWr5rJWtx8lay4IddtJ/9Z1YFaAqNuV
	kFBUBuwm2p9QOwEDZYEA==
X-Received: by 2002:a05:620a:4692:b0:8cf:c272:9721 with SMTP id af79cd13be357-8e78f5410efmr2967742085a.6.1776837745570;
        Tue, 21 Apr 2026 23:02:25 -0700 (PDT)
X-Received: by 2002:a05:620a:4692:b0:8cf:c272:9721 with SMTP id af79cd13be357-8e78f5410efmr2967737785a.6.1776837745122;
        Tue, 21 Apr 2026 23:02:25 -0700 (PDT)
Received: from yongmou2.ap.qualcomm.com (Global_NAT1_IAD_FW.qualcomm.com. [129.46.232.65])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-8ef12122800sm237379985a.18.2026.04.21.23.02.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 21 Apr 2026 23:02:24 -0700 (PDT)
From: Yongxing Mou <yongxing.mou@oss.qualcomm.com>
Date: Wed, 22 Apr 2026 14:01:54 +0800
Subject: [PATCH v4 4/5] phy: qcom: edp: Fix AUX_CFG8 programming for DP
 mode
MIME-Version: 1.0
Message-Id: <20260422-edp_phy-v4-4-c38bef2d027b@oss.qualcomm.com>
References: <20260422-edp_phy-v4-0-c38bef2d027b@oss.qualcomm.com>
In-Reply-To: <20260422-edp_phy-v4-0-c38bef2d027b@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Stephen Boyd <swboyd@chromium.org>,
        Bjorn Andersson <andersson@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org,
        Yongxing Mou <yongxing.mou@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1776837726; l=1139;
 i=yongxing.mou@oss.qualcomm.com; s=20250910; h=from:subject:message-id;
 bh=dDzNaYsr5nzoWKAK9D87YGVdpSmCzuwg6wOFxCDEjk8=;
 b=zmjWpZaS2g1oSD8spsHnsfW317rDFGb6Syhi6JbVYwE/8xqIXTp3QUk0CKXlinXZ4Wy1FSRln
 RFwGiaDMbVGDrpIcUHwKXy6zsH5oXsrQpkPuRx9qKqyCkuNQ1p341a1
X-Developer-Key: i=yongxing.mou@oss.qualcomm.com; a=ed25519;
 pk=rAy5J1eP+V7OXqH5FJ7ngMCtUrnHhut30ZTldOj52UM=
X-Proofpoint-ORIG-GUID: mozabU3bdzPbqW3bOE9EqWofqvgBlHQ7
X-Authority-Analysis: v=2.4 cv=fozsol4f c=1 sm=1 tr=0 ts=69e86472 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=C3Dk8TwHQYyIj7nOf9RCJw==:17
 a=IkcTkHD0fZMA:10 a=A5OVakUREuEA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=eoimf2acIAo5FJnRuUoq:22
 a=EUspDBNiAAAA:8 a=9LehzppxRyMkSVFlbAYA:9 a=QEXdDO2ut3YA:10
 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNDIyMDA1NiBTYWx0ZWRfX5/DB+Hshuvcq
 0+aIn/k36qFpf07w1Q/4woGatxR6O/c+s1Ll1Vp8+kaU8/5EsMX2Ux8c3TY/ak4VSNOFBl0fPcG
 3w6rxQK/kk9tONl4tUKZB4D0fWs/czIqYm0rK4qZTO8Lg0imCFJJzzOuU0vqS3LYEgKg7rOFK+I
 WuCLd2ilw2TjC7GGyab6If6WARo6kqyzK85acOHtORZKvq8GBVnxgENAQxLFJ9PqU7A8VxP1tOU
 rP4rK+1O2gCZH3/n5A39gctJozgITWrB3a/CEAJAqpugZAJYFNIf2kOotE4FOAyoLp6ZBF5V0wN
 xdVxaPCFw0Ph7Sa5zfLOyC/+P1MgdXPgFXuFVrwrdPYSuQqDnppa3ZxHHNTrlPYfYKbmwidJhZz
 tZ6WyQ5SRXI1tR15SBD1zypn62BMhIThTqQjLI2FtHsbKh5RnRvdLA1GYllOa7Y1jkHeZsoorLu
 kVje47j3acwuMgJPmbA==
X-Proofpoint-GUID: mozabU3bdzPbqW3bOE9EqWofqvgBlHQ7
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-04-21_03,2026-04-21_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 malwarescore=0 clxscore=1015 adultscore=0 impostorscore=0
 spamscore=0 priorityscore=1501 suspectscore=0 phishscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2604200000 definitions=main-2604220056
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260421_230227_339545_4665001B 
X-CRM114-Status: GOOD (  13.38  )
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

AUX_CFG8 depends on whether the PHY is operating in eDP or DP mode, not
the selected swing/pre-emphasis table. All supported platforms already
have the proper tables, so remove the unnecessary check.

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Signed-off-by: Yongxing Mou <yongxing.mou@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-edp.c | 7 +------
 1 file changed, 1 insertion(+), 6 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-edp.c b/drivers/phy/qualcomm/phy-qcom-edp.c
index 7ac2f502c7a0..bbd45f709a4b 100644
--- a/drivers/phy/qualcomm/phy-qcom-edp.c
+++ b/drivers/phy/qualcomm/phy-qcom-edp.c
@@ -312,12 +312,7 @@ static int qcom_edp_phy_init(struct phy *phy)
 	       DP_PHY_PD_CTL_PLL_PWRDN | DP_PHY_PD_CTL_DP_CLAMP_EN,
 	       edp->edp + DP_PHY_PD_CTL);
 
-	/*
-	 * TODO: Re-work the conditions around setting the cfg8 value
-	 * when more information becomes available about why this is
-	 * even needed.
-	 */
-	if (edp->cfg->dp_swing_pre_emph_cfg && !edp->is_edp)
+	if (!edp->is_edp)
 		aux_cfg[8] = 0xb7;
 
 	writel(0xfc, edp->edp + DP_PHY_MODE);

-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
