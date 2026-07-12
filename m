Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4A010C43458
	for <linux-phy@archiver.kernel.org>; Sun, 12 Jul 2026 15:29:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6V55JjQbiRd3nk0oCW65piH5WK/6S4SzUUXjwJzegLY=; b=ft19sg/tPXMIQ5
	fCCg8eBBv4/5ne+n+BqU7CbD1ml+4vFaNs+yFgjxJbplIjTruSEyNt5WOTk2lkeL3TPRj9Y6WhG5z
	LHkBpUYT2gEmwk35Q0sHEioKiLOuP7BAOoS+23bTEbdNXjC1bI2ZXFO/WMgudjgAMeGXW5AMDAcYd
	Tgjmw8TaxZqL9R/FmHG8LpnHNWNUL1LRujf3Spj72j3JBur58SdPBwku+9ersBBlqN8P+HtQd6yxH
	P2Xgb8VI8pvMDgmcA6wf4IYzXhErAoSW11ixSIvV+UjwI3BAPsQGLYzMYXqDd+wbqbhv389imAAvQ
	gZimfjemDCwiFWXfR/iQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wiw76-00000007ZV2-0Grq;
	Sun, 12 Jul 2026 15:29:04 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wiw72-00000007ZUS-3nc0
	for linux-phy@lists.infradead.org;
	Sun, 12 Jul 2026 15:29:02 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 66CDZhgQ2749836
	for <linux-phy@lists.infradead.org>; Sun, 12 Jul 2026 15:29:00 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Wtn8qmkEProTeRWQ3sXxWz0hSrss8hVGxBGi5v6Q/jk=; b=kKSXnsFDtObkYdm+
	u6R+eevvx5u76k83II0GHLKEVWrgbKCAfjRcJdNl2n4oNaUBb5rkip562ZptkkxP
	rb6jSQ/EMUBZmxifFVSfWj96Zf6/5r8ddDmE0f1CWtUEs6e40UBWZPJx4MNhJ9SP
	Tiei5J1fqNRFgn8U7265+HLNEbpAMuWU+X/tagl4k+bV603Rz3bSmagVUhEeBk+2
	GFjTOlN4RqMBl1YTo5qnaT6Z10Hi4gpv4FQZDazjl1NYyP0Wm64gvVV0TJGAwdSa
	kZ538emDMtAlXZ9bQ/Qp4a38yyEB3QJC7CbdYJLTJo6UDiGJj54onchKR6snONo/
	uXxGtA==
Received: from mail-pg1-f199.google.com (mail-pg1-f199.google.com [209.85.215.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4fbecgk268-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Sun, 12 Jul 2026 15:28:59 +0000 (GMT)
Received: by mail-pg1-f199.google.com with SMTP id 41be03b00d2f7-c9151bf6ce7so2804085a12.3
        for <linux-phy@lists.infradead.org>; Sun, 12 Jul 2026 08:28:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1783870139; x=1784474939; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=Wtn8qmkEProTeRWQ3sXxWz0hSrss8hVGxBGi5v6Q/jk=;
        b=jFd90S7kZy949jSCOm576QKP61/xEM0RzSbygFnbOYnFR3k0kiQ7LjOPfckrqWYr9i
         jBDKe5NsubtA8TrBGLtAMsxRM54Hg32HfeOGS82jeSY9HWUrBDpFuBcjyrhmD+p6bGl8
         dDgFmH3Sql6gIH0X4nyYgR+YwpXClWcxycZ/1OmBdIsy9Fa0HhghyolYTnRPMgbutB5S
         ARdBhc5S81sGobkq/VqEdtr1AN7pmjC45QXKrnW5N/flj0nSHJSwEeKVJFYlVBGRsXBq
         qsGIaTjrFJYw3fRBWDJDZJ0KiO0lxl3QbT75AtB9WfUMVIuHjJ0Nz/EqEq+kwLxBkeAq
         N31w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783870139; x=1784474939;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=Wtn8qmkEProTeRWQ3sXxWz0hSrss8hVGxBGi5v6Q/jk=;
        b=ROW1dWs5Ilztk/2R+CJbLbzdiRutzbF83+yndy5znfwq2ZGj3OWzSX/apSkGPLYO01
         S/a87SKIsD6esdZxSwr/ljIjBL+49ta1qPxwFMGnBDxoPfThVcUj+TMTMN4otxordr47
         T+97KuFPww7yt6u6GkWYn0jf17kLww5BKviPg3mv/HRtfkiJAvsVEjWu2xw0L/zhy9bd
         hYEJDqy9rTHeJjedVtH4YFAIK0PAi7CWCzbIKOoRtm4RNR1lOZrA+K0dGZy/14v4dQdK
         woUU8vHr//NeGTdI34e4Vpe116bCjRlhNdxOrbKgCw5F+sFr3OKl2W9rVE8hP0iuNDPw
         6axQ==
X-Forwarded-Encrypted: i=1; AHgh+RpxBmGwqPtv2pcpIAnfhSkmYMN8oDiDNIXsgGCqQHZt9Ht9lx5+DMKetnySE0IzRD/PC2mlkglQuoI=@lists.infradead.org
X-Gm-Message-State: AOJu0YyFtTqKipjD/KIs2TRaiSUbifIFL8rjovf7kXWwGJTs8xc72+s4
	vVhJjYYPd3/VV6UG6mtS9Fdf91a6vXjTGbrrlFc/6GDWD69TwyQ9wY5abmME7vL/Z19SRY9cRpF
	4bosr1E65fsWP3SCbpe47vcvrPJFnDeJJnJFeW0WQdaMWzV/1cl8SISf4Kva2fxLJHQum
X-Gm-Gg: AfdE7clQw5wSpnDroAxFMcEzvxpTR1Jzo5RoEpQCXxY0BY79eo0r0i3RCMB45nK0NDG
	a+M0EcNl/eHmgYUKfPLPQb3hlsklH58c8QIGPKVmoo7Ex3AnMt6jJOA0a4ut/7vGeEnA0PVUF1L
	m8a3a4c3hTPBN4QrtEReHlGv6gxzbb8hNQvnFeZgDv6rAU5cqegs0lgn07A632eUrPe/WlpJcXZ
	uqg3Gca8W6/Ehc2YQBBnufqXB5AqbUsscqJMCJvhEwfMgAOAdikVB5C2e5uH3sc+F81GhTMVR+a
	R8sEx3ufVy1PLh2tSsfsNEvDORr+bjWl+7hvN+/U25cqmjrlqswGtD//MOiSGUtxHieMH88vu4F
	E9xR9RBMfgkLtFay1FLIOj3hCNdWhU1aVyjkMbv7ZPsy1EZCiYPQKg3pJG18SzPHi/QW48zH+bV
	W3cnck
X-Received: by 2002:a17:90b:5384:b0:389:8f6c:4d58 with SMTP id 98e67ed59e1d1-38dc777c40cmr6139274a91.34.1783870138993;
        Sun, 12 Jul 2026 08:28:58 -0700 (PDT)
X-Received: by 2002:a17:90b:5384:b0:389:8f6c:4d58 with SMTP id 98e67ed59e1d1-38dc777c40cmr6139253a91.34.1783870138591;
        Sun, 12 Jul 2026 08:28:58 -0700 (PDT)
Received: from hu-kriskura-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-311935fd091sm41458776eec.24.2026.07.12.08.28.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 12 Jul 2026 08:28:58 -0700 (PDT)
From: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
Date: Sun, 12 Jul 2026 20:58:36 +0530
Subject: [PATCH v6 3/4] phy: qcom-qusb2: Add support for Shikra
MIME-Version: 1.0
Message-Id: <20260712-usb-shikra-phy-v6-v6-3-1b3e51bf1541@oss.qualcomm.com>
References: <20260712-usb-shikra-phy-v6-v6-0-1b3e51bf1541@oss.qualcomm.com>
In-Reply-To: <20260712-usb-shikra-phy-v6-v6-0-1b3e51bf1541@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>,
        Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1783870119; l=1543;
 i=krishna.kurapati@oss.qualcomm.com; s=20260707; h=from:subject:message-id;
 bh=vndsUeRg4LFLcX149F4anKCLh9nHIAwuVq42HyJm6zU=;
 b=jHE8QHzT6nM/WSa/aeR2TU70HNXWXZZMQfTZ199KDr4Fdirt2KXdhHM6bqaUFFHRR4nIgfaBC
 cBXSG52FqNsAeM1ugNetBk2A5Xzd7X7SJMID/vK8B0f0Iu2z+oVVqz9
X-Developer-Key: i=krishna.kurapati@oss.qualcomm.com; a=ed25519;
 pk=6PmiuwGCdov3wRO+bdmRlRxRtmJyDKz3ED57LLPVgds=
X-Proofpoint-Spam-Info: AW1haW4tMjYwNzEyMDE2NSBTYWx0ZWRfXy1zDL43DUl3Y
 Y73lydI/A94ix5BgM/KWLBrOBpaPLyuCuoy8FCqdChkZqP36AmEJTFpCuqj2Fkm1eH3088b0hMw
 qmsNuF7PUsIWY60O73wN/PuZq7ibEZ0=
X-Proofpoint-ORIG-GUID: ifEC8nnn9kWU05vlyCGigFRkcQwgCHTS
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzEyMDE2NSBTYWx0ZWRfXzgxWwzWcKvIR
 npvD5mSFKkffEfr83z/BjLjJdqxPUZMTPuS4umeJb6M18fgHaHvCvhvps2U9ubQ/EMxE1CXcozc
 cDtmrbL5JjKXkpfnX+xDFc3jbB1my5xeYocYA1N1x9sX/W4tD4bYk8RNAYr4/rCTJQE48G/nVtV
 qBQQeD1a2RwY4lMQkFbu1W/hjyqvJKnsp/XWTV0IjtKyBu6VmOQhgUm8feIHMncaujqHlQqnzC6
 D/4s8GmPeDVhQVo38wSF+rlf7V1bS6ps3GSh0h4n46K8GKoGNNoqvOP3vxm/ipkhOSOB06JCdU+
 j7h+0i1nmQHFfzhVZ4V5NXPcBGoLtg7L+71Ppc4UHcaygcS8PdIN8WpLxtabNciVCXT8YRNeS8q
 Q3sjMpIIQyuJ7fOvFYJ7pkTjRS6/BRFMcumD73LHqfrnp+T4YiOxTsxdAjA8QPHXk4Xnnjnn2zM
 Qdh4VMF8pjzRUS6tveg==
X-Proofpoint-GUID: ifEC8nnn9kWU05vlyCGigFRkcQwgCHTS
X-Authority-Analysis: v=2.4 cv=KM9qylFo c=1 sm=1 tr=0 ts=6a53b2bb cx=c_pps
 a=Oh5Dbbf/trHjhBongsHeRQ==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=RAioF0-LDSMA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=3WHJM1ZQz_JShphwDgj5:22
 a=EUspDBNiAAAA:8 a=Pub0nXbp0FV3ozl__XAA:9 a=QEXdDO2ut3YA:10
 a=_Vgx9l1VpLgwpw_dHYaR:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-07-12_05,2026-07-10_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 phishscore=0 malwarescore=0 bulkscore=0 lowpriorityscore=0
 clxscore=1015 impostorscore=0 adultscore=0 priorityscore=1501 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2607120165
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260712_082901_339656_0950EB83 
X-CRM114-Status: GOOD (  12.89  )
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

Add init sequence and phy configuration for Shikra. Since the init
sequence is same as that of QCS615, reuse the existing init table in
Shikra.

Signed-off-by: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-qusb2.c | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-qusb2.c b/drivers/phy/qualcomm/phy-qcom-qusb2.c
index b22b3c6adfd3..101c0820023d 100644
--- a/drivers/phy/qualcomm/phy-qcom-qusb2.c
+++ b/drivers/phy/qualcomm/phy-qcom-qusb2.c
@@ -377,6 +377,17 @@ static const struct qusb2_phy_cfg sdm660_phy_cfg = {
 	.mask_core_ready = PLL_LOCKED,
 };
 
+static const struct qusb2_phy_cfg shikra_phy_cfg = {
+	.tbl            = qcs615_init_tbl,
+	.tbl_num        = ARRAY_SIZE(qcs615_init_tbl),
+	.regs           = msm8996_regs_layout,
+
+	.has_pll_test	= true,
+	.se_clk_scheme_default = true,
+	.disable_ctrl   = CLAMP_N_EN | FREEZIO_N | POWER_DOWN,
+	.mask_core_ready = PLL_LOCKED,
+};
+
 static const struct qusb2_phy_cfg sm6115_phy_cfg = {
 	.tbl		= sm6115_init_tbl,
 	.tbl_num	= ARRAY_SIZE(sm6115_init_tbl),
@@ -953,6 +964,9 @@ static const struct of_device_id qusb2_phy_of_match_table[] = {
 	}, {
 		.compatible	= "qcom,sdm660-qusb2-phy",
 		.data		= &sdm660_phy_cfg,
+	}, {
+		.compatible	= "qcom,shikra-qusb2-phy",
+		.data		= &shikra_phy_cfg,
 	}, {
 		.compatible	= "qcom,sm4250-qusb2-phy",
 		.data		= &sm6115_phy_cfg,

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
