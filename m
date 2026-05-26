Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DA776CD5BB1
	for <linux-phy@archiver.kernel.org>; Tue, 26 May 2026 18:44:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NytZC1zo1vpuz3OWYruhHxTZc893QE0+bjAHO3oe0Xc=; b=1hDanndQQvHL+J
	RLiG22dIMNQeh5CLqygWXFXUYQrNz+qA0/T2ga2xgbYaeLBafrQa/y9/L7/qecmqEsfZHvb/YHzhT
	VCrCNmYpiJQ+7tvVMK/g3p3PIHrAs5y0nOolUUXvLOmg2iGb7oSPxuIiOo7IB1dVKS6zYLmhCoTAY
	5w4473KidlO3J59doKtnU05+0rvMVTnCgq6xaLotFVTF9IHnvguWjtL+SjOTZmBZ1KTenB4OvI0vO
	j+nQil29XHhlD6eCzyCaks0+ErI7FXL7kFvpXhkOZmU5CIISbE/1P6D6aOnrutP9HYJLtAUVIhCaV
	cAXkRpXQuzx8OhpZ6qfQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wRwlc-00000002s4l-2jMB;
	Tue, 26 May 2026 18:44:40 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wRwlY-00000002s3v-1rxF
	for linux-phy@lists.infradead.org;
	Tue, 26 May 2026 18:44:39 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 64QHCloM3314382
	for <linux-phy@lists.infradead.org>; Tue, 26 May 2026 18:44:36 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=OjYc9twIj7K
	xaKaSOCBEljXetjS6PpryUwHzkWxhVKo=; b=Bsq1qyYX+xFzR1iy3WfMF/sfaiz
	P+kn0W7vuOrvWy7U9r/C/IcUG9kE/wjaVXdxyt3zUC1vKDGk46Q053NXHPzdK5kd
	GZL1ms7zA+IO3CKu+vHvFxEDLl+3m2yKWalnOCkJ0ND5te0hXgI+KqwiKHFwpayx
	jfMwOUMA7Z/ujAcwgtTZA4ten9IgkVmucTetDpyeQ8JKDihxPeS8iQwRogJmeyTB
	YpjXM7DBbsWv1HtODGQdzQWC5xhaik7eULonOK02ahybIf0iXGGEbDuYymqFoA3T
	uyChMBlMcfATCpi75lU0+iI3j9K8oYVk4EX9LwQ71P/Lt2zQ8W1J37JYXvQ==
Received: from mail-pj1-f72.google.com (mail-pj1-f72.google.com [209.85.216.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4edfqk0bte-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 26 May 2026 18:44:35 +0000 (GMT)
Received: by mail-pj1-f72.google.com with SMTP id 98e67ed59e1d1-366037cd67aso2286418a91.3
        for <linux-phy@lists.infradead.org>; Tue, 26 May 2026 11:44:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1779821075; x=1780425875; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=OjYc9twIj7KxaKaSOCBEljXetjS6PpryUwHzkWxhVKo=;
        b=Pv7nGemzxXqsLOrh7lyFQvZ+QLQNI1FTkPKX3i/SlB6yEuqD7QUDEu0prOlQ5VP1HZ
         Yz8PmihFMcB+Uc4tQrbjiicrVqnS/4AqOqBqEpnKX7lPdvhgC86HlWrxFBTNY3Os1qbt
         GAmDYlM81sEgSEsSMx8G0Zy1SMUsNAp9NOodh4twY8KTk15w8YHLRIO/aQZd1VzfRYaa
         c7NmJcgNMRN+kgvydmQyPUEsVE4x3RuiBpjyTJ+5YtRked/qC8wkjshA50S9R80I7fEI
         9LFyj/GbniRsjxEQ6OeZ9r/dVzKwTpZSK89tq/ucPoNzHXbo9gNRWtvNtIN2FPf1k+do
         r3Uw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779821075; x=1780425875;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=OjYc9twIj7KxaKaSOCBEljXetjS6PpryUwHzkWxhVKo=;
        b=LMZknH+na9LBCOqAreVNKRl+lzVAIhy89PgVQjwAz/WNbJDdXQO5PKpgDYuNMirCV8
         9C/gStheHZosG/7m8K0goU8b70nwrOS/AIY4ESb3CRaScw/bYwhKFigMvbQAnFhcb4yu
         ftw2riZr2uTwnAHulRSW3zAkVK8TgUW4LBIFktPRyFuBCjFLWEGTO2A68wb20L6/W0Uw
         sj5OSbBtCF+N5YEk76o9nOqK5qrw1/Ddqj+6Q6KssyBJwM3aTMEeD7LPM1OpfnOFWZwu
         FBmIgIHmd6ab7GRhQe7x2Mx9vnr48vHwv+7N/9sC8fkW61pflIFex2rBOlywjFNJd3CT
         uFAw==
X-Forwarded-Encrypted: i=1; AFNElJ/f3PyskxypdU8qN3Xa1Nh8R5bihXi9PfBRb69ntYqaIjUwgENqnblYUEVfFLW7+mapT383lJ3vgTU=@lists.infradead.org
X-Gm-Message-State: AOJu0YwXFAgdsLVdYKkzEvCIU+qG6l4hZiT5lCYjafBnmWPJxC5mgN3z
	pm/k9fw0BKkjis7F2EnCfKaQl5KImFxR1LqaEJKwBHvo7YYbQ/O8Y5z7gdB8MPiOK3gJKYMOYtf
	4wBPQ/sPIm5hfusQBKhjg3ppY4uPqrw6bBwYPZVua5Z1JeYvBxAsT5T/Vp69w9qB3aLU=
X-Gm-Gg: Acq92OGwbKCy2E3t5yhYgqUfeVJ8XlRqL3H/HQi4RZq8q3ezP/DTdRrEP8kbEGmxKfV
	dAi2RxSgtEFVPaikaFAF+6Nts3VPjzxiNWDaoG6eCf2seqEVlatXPdNJnw3497+qKFHw4Ha+TYY
	XpP0KPLDnoyjn0aCDzR3hjiPH/4dw6hCT0dmCDokcK9OTvqsTDKZuESE0nlJANwBsZmMYjlkL3W
	ezrtrO5VNrV4wXGPDmjQC64m3s2RPXj9wEej1Az1Kb6Jk6Jl6/y4c/O3h7lmoKj4rOXRc3oT9DN
	kwDsH5Pj+x6bQsHVthbcdXCFZ4u5G+pwssOAAStmE5LeiRQrgevHB8dt0Ia/ktK+JDo5ihwT0hJ
	dI5oATGjlcowZue0jWYBCUtK5OYvX5DcYaAyN6FI99q3OmpvP28GdaQ==
X-Received: by 2002:a17:90b:4b91:b0:36a:5b60:553b with SMTP id 98e67ed59e1d1-36a678c789amr10254041a91.7.1779821075262;
        Tue, 26 May 2026 11:44:35 -0700 (PDT)
X-Received: by 2002:a17:90b:4b91:b0:36a:5b60:553b with SMTP id 98e67ed59e1d1-36a678c789amr10254018a91.7.1779821074763;
        Tue, 26 May 2026 11:44:34 -0700 (PDT)
Received: from hu-ppratap-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-36a721c7baasm16866628a91.9.2026.05.26.11.44.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 26 May 2026 11:44:34 -0700 (PDT)
From: Pratham Pratap <pratham.pratap@oss.qualcomm.com>
To: Neil Armstrong <neil.armstrong@linaro.org>, Vinod Koul <vkoul@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>,
        Johan Hovold <johan+linaro@kernel.org>,
        Loic Poulain <loic.poulain@oss.qualcomm.com>,
        Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Abel Vesa <abel.vesa@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>,
        Pratham Pratap <pratham.pratap@oss.qualcomm.com>
Subject: [PATCH v3 3/4] phy: qcom-qusb2: Add support for Shikra
Date: Wed, 27 May 2026 00:14:00 +0530
Message-Id: <20260526184401.3959717-4-pratham.pratap@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260526184401.3959717-1-pratham.pratap@oss.qualcomm.com>
References: <20260526184401.3959717-1-pratham.pratap@oss.qualcomm.com>
MIME-Version: 1.0
X-Authority-Analysis: v=2.4 cv=fqPsol4f c=1 sm=1 tr=0 ts=6a15ea14 cx=c_pps
 a=RP+M6JBNLl+fLTcSJhASfg==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=NGcC8JguVDcA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=DJpcGTmdVt4CTyJn9g5Z:22 a=EUspDBNiAAAA:8
 a=2jleMYo8EjVMK2M3yooA:9 a=iS9zxrgQBfv6-_F4QbHw:22
X-Proofpoint-ORIG-GUID: 9uuGpuZMeTM8OQnZcGGumFTUXfAC0F0o
X-Proofpoint-GUID: 9uuGpuZMeTM8OQnZcGGumFTUXfAC0F0o
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNTI2MDE2NCBTYWx0ZWRfX/hiyPm/KObIH
 gRPGkjlx/SxbXNAGjh9jHKyl7RABNPQTlg/5Wjd6iJolr27I6xWzDbHV35cwi6l3IiIjJQpLMp7
 M9rCDfaX5sNb7pDcFnK/InrFDkLomBYsFYxNRtpfFKE3nQVQ/idzWh1nHGKro5bu7vyiae+jkYf
 jfiY6HXtWGFN1+dRRKVd4qq/rH0EPRqLvkvyOUpCvldQXtOYmEuxTQdRqSIhzIkHDM07AJkjAsm
 1FjXSnwKTIKCr7DlTwuODu4Hxx4Z18X2ztZ5Ncg+5t+gJ2uitigSW+yzrYJ1Aj0DSwPcVaxBZBQ
 X5Q5ieMum1g+38DwbosnDc8x4523jwRPLaI8wNQoJc27o784COm7vlyoHM5MwvWdwP8y+oxKObv
 wOLSisc/+qZciyrc/wfX+RTxJkRV0E2z13Dg98q1TtBtF7aqpD1iOVcYprRapcK0nY44m4q2fMs
 T9P8yTMY/kzcgvkKZ4Q==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-05-26_04,2026-05-26_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 malwarescore=0 lowpriorityscore=0 suspectscore=0
 priorityscore=1501 phishscore=0 spamscore=0 adultscore=0 impostorscore=0
 bulkscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2605130000
 definitions=main-2605260164
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260526_114436_496931_DF6CCFCC 
X-CRM114-Status: GOOD (  12.83  )
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

From: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>

Add init sequence and phy configuration for Shikra.

Signed-off-by: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
Signed-off-by: Pratham Pratap <pratham.pratap@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-qusb2.c | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-qusb2.c b/drivers/phy/qualcomm/phy-qcom-qusb2.c
index eb93015be841..ab7437e7b751 100644
--- a/drivers/phy/qualcomm/phy-qcom-qusb2.c
+++ b/drivers/phy/qualcomm/phy-qcom-qusb2.c
@@ -381,6 +381,19 @@ static const struct qusb2_phy_cfg sdm660_phy_cfg = {
 	.autoresume_en	 = BIT(3),
 };
 
+static const struct qusb2_phy_cfg shikra_phy_cfg = {
+	.tbl            = qcs615_init_tbl,
+	.tbl_num        = ARRAY_SIZE(qcs615_init_tbl),
+	.regs           = ipq6018_regs_layout,
+
+	.has_pll_test	= true,
+	.se_clk_scheme_default = true,
+	.disable_ctrl   = CLAMP_N_EN | FREEZIO_N | POWER_DOWN,
+	.mask_core_ready = PLL_LOCKED,
+	.autoresume_en   = BIT(3),
+	.update_tune1_with_efuse = false,
+};
+
 static const struct qusb2_phy_cfg sm6115_phy_cfg = {
 	.tbl		= sm6115_init_tbl,
 	.tbl_num	= ARRAY_SIZE(sm6115_init_tbl),
@@ -958,6 +971,9 @@ static const struct of_device_id qusb2_phy_of_match_table[] = {
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
