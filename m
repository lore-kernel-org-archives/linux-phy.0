Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6AE25CA5FC5
	for <linux-phy@archiver.kernel.org>; Thu,  1 Oct 2026 01:16:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Message-Id:MIME-Version:Subject:
	Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=WI46pxXNlwYwFbddBvIHhv5qLtuVQdgEoUGgHHIlrvU=; b=jNUuI0nI8NqZ2a
	+0lKylg/0jr8NIemEr+ZQ9bpEEJqpfB4HJySnsYTWwb3I+GwCZbcuNV+COCPBHm3WtTd+QqI/2NGo
	+SFSjNX2GFk/LyvQeKOVVClsZ01KrSd8vw24ZWrDqlo5VLb/Ee6jqs/VuCs3MnjHpDSmm9MudVnAi
	ChfuUWpbZX4TVjTsWwl6/2qYwtLiBkyC71QEnZDLoReqiBVl8t7C971ZWYoOBXyMmiER0jFsoV/Na
	JP8RZnlXIDLfZ/jxpNuAb4BCB8SWq+zSIdw1V8/wP5r7eoY4haUDuoQdPUGtqzc4a58yQdCx75+Y1
	UH66sNo72juXe+6JSnxQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xC5Pd-00000007Z2T-0VUG;
	Thu, 01 Oct 2026 01:16:41 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xC5Pa-00000007Z1Z-23eY
	for linux-phy@lists.infradead.org;
	Thu, 01 Oct 2026 01:16:39 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6910joIh1140889
	for <linux-phy@lists.infradead.org>; Thu, 1 Oct 2026 01:16:37 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=8LTwY7IbNj9bE+34TwGiIF
	xUUUMboXxjX5o58rh98Fg=; b=c9G1vDL003HrgYM8gEmL6SUiRKFm2A714lEBNV
	OJEDmdFIlPkZL2Zv0JJDX7imO17aDtQexMn2dCSsC8OFpDZ5BRM4tkD0XpGBSReN
	s/Ba5fu3GV2JQeOazEZUvRvO+nivSgvsbu/Scn478LwbN9q+2ZKzI73JQpgO9GqE
	NqW5hsyJxKNkbPbBIsK17yBO0yjhWnLoYYKynfe25drtd0oVP1qLhMFg+3l3iGrH
	zI5mmOKGBt4EYa1ZjsMjIg+OYncJW3Hcr8iWPfUuINlJssA0MFJCEtdqJeZv6Gtg
	RKJwCefomM2J6CiYq+uA9vKgST+YMkXayORlc5D5BtzVfmjQ==
Received: from mail-dy1-f200.google.com (mail-dy1-f200.google.com [74.125.82.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4h10bkbkja-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 01 Oct 2026 01:16:36 +0000 (GMT)
Received: by mail-dy1-f200.google.com with SMTP id 5a478bee46e88-33713e5e6daso8663517eec.0
        for <linux-phy@lists.infradead.org>; Wed, 30 Sep 2026 18:16:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1790817396; x=1791422196; darn=lists.infradead.org;
        h=cc:to:message-id:content-transfer-encoding:content-type
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to:content-type;
        bh=8LTwY7IbNj9bE+34TwGiIFxUUUMboXxjX5o58rh98Fg=;
        b=ic5/Sd5hupzdQQd6OgCSevvrKCMVMXUdfiEGQeoq97PVQJnS8yn/N8DulAk5HNGJSd
         1bzOEvzh9NvKg2iv+MqaKvxD4++o8rvbhWq3BlBGZWCdmNF4/BWvHk0/e4g+U162Fvyu
         yT8/TGgnTI/UgkUYTlJ7F3RLFgn7Vy1W1NUuJGRNqVCmwCJQt1+PfV4Fi8f3lYbq+9lO
         GBCGNEhsD/3sJI76cMBCHrWay/KZFja58OG6UdBheRu+Bwj5k53PyD8K7Dy83EKPJ9hn
         xj38EwGQXg2vgfweBj3z+a8lPY7REs8qM8s8OKFQTQyUI5735BwQiOBfk1SslzBgGvRk
         YBZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1790817396; x=1791422196;
        h=cc:to:message-id:content-transfer-encoding:content-type
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to:content-type;
        bh=8LTwY7IbNj9bE+34TwGiIFxUUUMboXxjX5o58rh98Fg=;
        b=egASl8hwsVRlB9fd0sFC4C5RtfU1Jk+Slab/EkK9jflhpFWnqDiSWFxulNhX4uV8Dm
         vbHQaN4uUwRoBNpoD2dCvABIOk0IdaSWmsxvnp69xowPmKa8H/Wuz4xAsKzdHP1m2M/y
         zz/Cr/Y3QRT3BphHFSRTvbH97nKiIOw3jUZcbiB59HgiFX95m+lFiflC6/jVRfLD4LVR
         x/LWuLF/jZEL6zrRRVPG9QXAPGIfyzqWmvSDEw9J/w4FYuRFAUBmOqxMvkmROyZeVecZ
         vxTOKgyvXOZh2ZGJi2DiN75Y0oEgBFfUOGUYeRAGVWjZUe/dEV02Cnq/5yGL2ZDcBvoi
         7baA==
X-Forwarded-Encrypted: i=1; AKwUvBw+X+G319Hw0RAos36S9dPww2tKXKfBE3LO6X1LOzH0DfwT7eRhXaLC7DzCqiIjA0UYM3bFU+B7+ms=@lists.infradead.org
X-Gm-Message-State: AFuF++lGlroVeyKufh0fb75+Ap62EpWMAqQdIdGea6uA9RMByG4LSrGl
	zqLZKlCsVRBaZFZ/JIfFC2MKwOUF4QkvzOgOXvS55HYl+WTafmTJDoQij/rAg2g9zfldMa8QuBK
	9z8XvJONGEPjGCkFrCsDVsNkGKMwaZPknmHhtZyjkWPDva997vRrfADQhSxJos4BKU0Dm
X-Gm-Gg: AYBFou0JBtQibPi6mdtjFHGRah+JfR+Ac/gVCVZWXo7m4Mibr6Uq/IIJFveg/5UKYpJ
	5HSRpczuMcl39s5pmpYJ/LXMsqLrdqnqBuxOM8AHACSB5aB9f5Es3VEEEWC8wDmwcnI3pYD+G3F
	dhFKgpZGhWQvzp1A9C0m4a5oT5pQCUdDkHzQHEWXuYpPW1yBQbFULGJjgOoI2dBJrjMIuhjjEhl
	8R66L9NO1NvAg/xHNt8YR5z1nkvug6KKcf774sweEsjR5PFdzs5FE4V4C7omyq+81+tdyt8b7pt
	2wFm+V/lmdexUkoOJqzcdqFsgZ+8JNqZKO33HbwivqgW7uTUTPDMqodme/w5/ohUtRFowyJwh3h
	Lq7N4EzJdwEaS72LaOLrSwYufM38NpPTonWhJctdJ+GXp85OdIAOm
X-Received: by 2002:a05:7022:3a89:b0:14d:b813:852d with SMTP id a92af1059eb24-14db822c86emr1313976c88.6.1790817395551;
        Wed, 30 Sep 2026 18:16:35 -0700 (PDT)
X-Received: by 2002:a05:7022:3a89:b0:14d:b813:852d with SMTP id a92af1059eb24-14db822c86emr1313954c88.6.1790817394799;
        Wed, 30 Sep 2026 18:16:34 -0700 (PDT)
Received: from hu-wcheng-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-34db3750765sm2190286eec.12.2026.09.30.18.16.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 30 Sep 2026 18:16:34 -0700 (PDT)
From: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
Date: Wed, 30 Sep 2026 18:16:31 -0700
Subject: [PATCH] phy: qualcomm: qmp-combo: Differentiate clocks related to
 the USB block
MIME-Version: 1.0
Message-Id: <20260930-qmp_phy_usb_clks_v1-v1-1-d4dccc9eb263@oss.qualcomm.com>
X-B4-Tracking: v=1; b=H4sIAG60vWoC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDIzMDS2MD3cLcgviCjMr40uKk+OSc7OL4MkNdI9MkS2NzEwMLsyQjJaDOgqL
 UtMwKsKnRsRB+cWlSVmpyCcgopdpaADC08D53AAAA
X-Change-ID: 20260930-qmp_phy_usb_clks_v1-25b9374086b2
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org, jason.pettit@oss.qualcomm.com,
        Wesley Cheng <wesley.cheng@oss.qualcomm.com>
X-Mailer: b4 0.15.2
X-Proofpoint-GUID: nkSS4HxhDu-sacfjrCzzocbvmP0JsMMx
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDAxMDAwNCBTYWx0ZWRfX4Kq/2eTxGUut
 2jkuWNKE9CLyFTmzQj7gq/xhk+cm03QvFpZzw4F001NBE/z2l2uo3H+8KlJSPvgFagbmAa1omn7
 6Nz34g7ZgxpP0oFxrFV581/8bP2KyCRYellSzCsMFFbhVrp2v85nxjQGrXzqueD/M760SbTYJk3
 6Nd5lwJ0dhK1FczERTgmcfeUD8Q6+98rqInVxfguzniEE+dtaONgtoCZx66zj0y3D6MxzWjZRw7
 8D4x1UMSmbd5oYhH6vVtS8FG9lsKiAU4vaT3jnuOKw4pNhDD1Zp2DefN0C5BqlRom0V78W5KESx
 E7fSBvIFKheRayS2ZanJMbbN6RhULrzpVkTtyTsHVmJVUat8bqoHTCUfe/DUBBxL89zmEQdrHkQ
 493jf2T5bCCM1x7GHXa6zQOYHuaplucoZeY+FiUaPGPZi/3vrf5yidgVjrBuYd+6T8kzuw+GmKo
 EuWcHpn+b7WUQzzGCtw==
X-Authority-Analysis: v=2.4 cv=MZn5KJ/f c=1 sm=1 tr=0 ts=6abdb474 cx=c_pps
 a=PfFC4Oe2JQzmKTvty2cRDw==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=gowsoOTTUOVcmtlkKump:22
 a=EUspDBNiAAAA:8 a=KCRQXf5DRPPkNQcuQH4A:9 a=QEXdDO2ut3YA:10
 a=6Ab_bkdmUrQuMsNx7PHu:22
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDAxMDAwNCBTYWx0ZWRfXzdSH8+cxyOhs
 KRCSW6PzrRo1R/PmmGn7bDzKUTOfhxIBxxnnOhYLf4KEukdRumHIsXrkWjhXVbDQlp/QV4O/pVx
 lrRvZfgWGXtmT1QTHmywboG3u4yxZ7I=
X-Proofpoint-ORIG-GUID: nkSS4HxhDu-sacfjrCzzocbvmP0JsMMx
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-10-01_01,2026-09-21_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 lowpriorityscore=0 spamscore=0 suspectscore=0
 priorityscore=1501 bulkscore=0 clxscore=1011 impostorscore=0 adultscore=0
 phishscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2609040000
 definitions=main-2610010004
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260930_181638_656158_C2EBB402 
X-CRM114-Status: GOOD (  18.21  )
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

The Qualcomm QMP combo PHY has a USB and Displayport block that is
sourced with different clocks.  In situations where the USB path is not
utilized, and only Displayport is active, unnecessary clocks are enabled
and not used.  Split the current clock list into USB specific clocks,
which will be enabled whenever the USB initialization routine is
executed.

In addition, move autonomous mode control specifically when USB is
active, as its primary purpose is to detect RX detection and LFPS
signals, which occurs only when USB is active.

Signed-off-by: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 56 ++++++++++++++++++++++++++-----
 1 file changed, 47 insertions(+), 9 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
index a4f130fc33e3..f14fb8ef9028 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
@@ -2607,6 +2607,8 @@ struct qmp_combo {
 	struct clk_bulk_data *clks;
 	struct clk *p2rr2p_pipe_clk;
 	int num_clks;
+	struct clk_bulk_data *usb_clks;
+	int num_usb_clks;
 	struct reset_control_bulk_data *resets;
 	struct regulator_bulk_data *vregs;
 
@@ -2678,7 +2680,11 @@ static inline void qphy_clrbits(void __iomem *base, u32 offset, u32 val)
 
 /* list of clocks required by phy */
 static const char * const qmp_combo_phy_clk_l[] = {
-	"aux", "cfg_ahb", "ref", "com_aux",
+	"cfg_ahb", "ref",
+};
+
+static const char * const qmp_combo_usb_phy_clk_l[] = {
+	"aux", "com_aux",
 };
 
 /* list of resets */
@@ -4403,13 +4409,20 @@ static int qmp_combo_usb_init(struct phy *phy)
 		return 0;
 	}
 
-	ret = qmp_combo_com_init(qmp, false);
+	ret = clk_bulk_prepare_enable(qmp->num_usb_clks, qmp->usb_clks);
 	if (ret)
 		return ret;
 
+	ret = qmp_combo_com_init(qmp, false);
+	if (ret) {
+		clk_bulk_disable_unprepare(qmp->num_usb_clks, qmp->usb_clks);
+		return ret;
+	}
+
 	ret = qmp_combo_usb_power_on(phy);
 	if (ret) {
 		qmp_combo_com_exit(qmp, false);
+		clk_bulk_disable_unprepare(qmp->num_usb_clks, qmp->usb_clks);
 		return ret;
 	}
 
@@ -4440,6 +4453,8 @@ static int qmp_combo_usb_exit(struct phy *phy)
 	if (ret)
 		return ret;
 
+	clk_bulk_disable_unprepare(qmp->num_usb_clks, qmp->usb_clks);
+
 	qmp->usb_init_count--;
 
 	return 0;
@@ -4670,7 +4685,10 @@ static int __maybe_unused qmp_combo_runtime_suspend(struct device *dev)
 		return 0;
 	}
 
-	qmp_combo_enable_autonomous_mode(qmp);
+	if (qmp->usb_init_count) {
+		qmp_combo_enable_autonomous_mode(qmp);
+		clk_bulk_disable_unprepare(qmp->num_usb_clks, qmp->usb_clks);
+	}
 
 	clk_disable_unprepare(qmp->pipe_clk);
 	clk_bulk_disable_unprepare(qmp->num_clks, qmp->clks);
@@ -4701,7 +4719,12 @@ static int __maybe_unused qmp_combo_runtime_resume(struct device *dev)
 		return ret;
 	}
 
-	qmp_combo_disable_autonomous_mode(qmp);
+	if (qmp->usb_init_count) {
+		ret = clk_bulk_prepare_enable(qmp->num_usb_clks, qmp->usb_clks);
+		if (ret)
+			return ret;
+		qmp_combo_disable_autonomous_mode(qmp);
+	}
 
 	return 0;
 }
@@ -4736,19 +4759,34 @@ static int qmp_combo_reset_init(struct qmp_combo *qmp)
 static int qmp_combo_clk_init(struct qmp_combo *qmp)
 {
 	struct device *dev = qmp->dev;
-	int num = ARRAY_SIZE(qmp_combo_phy_clk_l);
+	int num_clks = ARRAY_SIZE(qmp_combo_phy_clk_l);
+	int num_usb_clks = ARRAY_SIZE(qmp_combo_usb_phy_clk_l);
 	int i;
+	int ret;
 
-	qmp->clks = devm_kcalloc(dev, num, sizeof(*qmp->clks), GFP_KERNEL);
+	qmp->clks = devm_kcalloc(dev, num_clks, sizeof(*qmp->clks), GFP_KERNEL);
 	if (!qmp->clks)
 		return -ENOMEM;
 
-	for (i = 0; i < num; i++)
+	for (i = 0; i < num_clks; i++)
 		qmp->clks[i].id = qmp_combo_phy_clk_l[i];
 
-	qmp->num_clks = num;
+	qmp->num_clks = num_clks;
+
+	qmp->usb_clks = devm_kcalloc(dev, num_usb_clks, sizeof(*qmp->usb_clks), GFP_KERNEL);
+	if (!qmp->usb_clks)
+		return -ENOMEM;
+
+	for (i = 0; i < num_usb_clks; i++)
+		qmp->usb_clks[i].id = qmp_combo_usb_phy_clk_l[i];
+
+	qmp->num_usb_clks = num_usb_clks;
+
+	ret = devm_clk_bulk_get_optional(dev, num_clks, qmp->clks);
+	if (ret)
+		return ret;
 
-	return devm_clk_bulk_get_optional(dev, num, qmp->clks);
+	return devm_clk_bulk_get_optional(dev, num_usb_clks, qmp->usb_clks);
 }
 
 static void phy_clk_release_provider(void *res)

---
base-commit: c7f2322431cb6d108b18fb4154606b49e2bc50f7
change-id: 20260930-qmp_phy_usb_clks_v1-25b9374086b2

Best regards,
--  
Wesley Cheng <wesley.cheng@oss.qualcomm.com>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
