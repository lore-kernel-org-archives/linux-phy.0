Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DA231CD4F3C
	for <linux-phy@archiver.kernel.org>; Tue, 19 May 2026 05:47:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gNC/9qqvH68bO/kZg7rhkFCxU3nLdaWlscFJizTuMek=; b=JKAqt7mZXEFmDs
	vcpzkpzcUj89fJAPSs2iyAiqlAjRe8741uiuiXFKFVN50ONdETXvzbyw3QUC9yTm4hsUbqzjSezSy
	g84LYeFdoeoPPmduMkuYDbjMsobJPJnLJkV8ixfXtPTVYRuhASq/+UYoKyRgUj3hEUPl0qDEpc2b/
	rMNwkdqJwpYyNpqMcGQycVo23PVUrsrlf2J6TkpYd549wX7F2gLSJQgz9jqVhRls+ZDNEQEZUQry8
	nHlwy2djOlsSQMepeGcNBpjwCi2DcY0DUx0BTzLnse+NlyjJinSQRE/+JI+CZlE/WpataKGdjWwEW
	jnN8jlBW6yIoB8PcfB0A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPDIi-00000000EQD-2HeA;
	Tue, 19 May 2026 05:47:32 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPDIe-00000000EME-10ON
	for linux-phy@lists.infradead.org;
	Tue, 19 May 2026 05:47:30 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 64J1IONq2975772
	for <linux-phy@lists.infradead.org>; Tue, 19 May 2026 05:47:28 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	ytn8hC+NMMnLU7PiLjFRS9m0hFgHKNq4bt/poY0T1tM=; b=Rt//YA81zM+mrLYi
	jU2KPCTCo3kLls912E+1OpCYhDqtb/zzUb77KReevcvVtq7JRi7xR2o3ZRTEZl0Z
	DkO+c3cFs0hPl/JNm+f61Y6OTYj1qxiRnTvhPN9RiI5AlaWaMuq6kMHno7FnXx5E
	jaT+V4jaYdiLdGWpambl9Hm1qbWk0VgsYee3RjEdfJj2Mu4fYzcdgNCJ9pfssbU7
	CRiVhk33qWpNwW0RQ0QB6LWeniPuI5De+OLNTtnTSzslauBAbsPFaGqemYJnxRHA
	MqUln9ExXHVjvXHtnVv61N+1BiKgWg2BFarFWk5enb58IRi3T3Yv9o7MYaOe+S7D
	vf1trw==
Received: from mail-dy1-f199.google.com (mail-dy1-f199.google.com [74.125.82.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4e84v4ask4-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 19 May 2026 05:47:27 +0000 (GMT)
Received: by mail-dy1-f199.google.com with SMTP id 5a478bee46e88-2c16233ee11so4319750eec.1
        for <linux-phy@lists.infradead.org>; Mon, 18 May 2026 22:47:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1779169647; x=1779774447; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ytn8hC+NMMnLU7PiLjFRS9m0hFgHKNq4bt/poY0T1tM=;
        b=Qk3H5tgvbP4qazm+rfxXTCSx5gFzVdfX77mGm3kloYllrLAXiuMEq5LVn1XxbYyNlZ
         nBVnw1Gc+LxLl84h6anyz1tBgLHoLo+T43lDEYT2d/OekwHs76fA4OvF2/liLP1Qeohu
         l/e1UYsBtv7JZ2AfaJuGzObyncvrfyD/+SQ5+x490ydg07zFtP7gb5eYsHwtHQbnmicG
         7W44vOrW1O0sXbJ/vr3CEYIo6Yv0K+IM0+CEp6MSVWHhn6GHKcJNbxiCLfEXAlGNgp1t
         tMepS44McYMTMmPzXv+CR0bTM8lLG25N8AoVnKTAdaKlLcg9PVp+xptqgphaqQfLUiYl
         HkoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779169647; x=1779774447;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=ytn8hC+NMMnLU7PiLjFRS9m0hFgHKNq4bt/poY0T1tM=;
        b=paKCL7V/jquRqDuBszV0Vh6R3vwFPgQzSFRVkWVqw1fRaTrW3SbxjYaB/SDH0e5QfM
         n952Ig05hlOL3qMBsMJCWod1Wb7npCaqpxpQR/4kr47Cx2LRHloaKDO3clnWKHgl6aQ5
         r3dqVdu0gkslF4xhHOqjFfqcI5niLwjAnHXkdcJPslkN369TyTu5f9GLdVfnmQAuMzIE
         9/zC7T/8tkzId5mPbvw/+u+P752Rl2PksoVHceL5IfONaGiP2gi7bC7f1eIaw2+q/eeg
         iTJd77bT5O68MpLyo5Fbgu8dEwtK1Y5u7uFXPq7HxGj7rWwRVEDLT7fpiTk7BN1Eouv6
         DFDQ==
X-Forwarded-Encrypted: i=1; AFNElJ8u7D/TuqAGVX0PwT9vWsaWzt9nRtKzoN0XWYDtyXg7UPNrQUguAoMRkZFffFChuT++liss53toI1M=@lists.infradead.org
X-Gm-Message-State: AOJu0Yy4H+nYjF65hhv2jdr0EeKDDK2iuW/JpZt13DRGtU49ZDlej4aW
	ej1Pzm6bupCnP432BtuEZ4NzgWAwEoghDOMw9x62hlh4vNjlbcwEMg+SohUj08UM0Gfx6yK+loX
	10We/SWwV4yy5m8tGQeOcwoWu/cuQlvL5L7Wsupz3/SoSIgYxr3AlIVo5Te/GUe4wXJl+
X-Gm-Gg: Acq92OFmOTRQH20yl06oTuTMOgMbQch7pkEq0+SfW/3ORi9X3J41e+ZQZhzSUriB8Ef
	llCMZTUeLfbwWZBGojpYaVk237o9DoU47ghDO9Hp+t16k+38W4DKPeAUUZDBBr+fwe6aXRRZgCK
	RhgVfg3F7y1I4B1nlHpATGlCCClPW9O/mMavZl8QeX5Cqfukc1+CVE0j4pM2CcCWgPahNYXhxhz
	vMNo+epWMyGHJfEFP1Jb4jxuqlThabgkbJ9FR8epXzdN3E5jFWqadoSx6QcU8e1Dp3fAWi9dFNy
	VrFdeH+mpey3FSzzEpVIBAXwAeArqRsWVDSoTsbAUKSBpJ0vzB1EMHlobZVhJaRxi20DmDwHMaI
	H0pHaBKjilFx5X8CnzZqxBmq1BjuPw0G3CNIV5+P0Vm7Ii+v8Gj4PHlr716m7HMt5INsd
X-Received: by 2002:a05:7300:e7a2:b0:2ea:b85c:153d with SMTP id 5a478bee46e88-303986948camr7474786eec.27.1779169647120;
        Mon, 18 May 2026 22:47:27 -0700 (PDT)
X-Received: by 2002:a05:7300:e7a2:b0:2ea:b85c:153d with SMTP id 5a478bee46e88-303986948camr7474764eec.27.1779169646587;
        Mon, 18 May 2026 22:47:26 -0700 (PDT)
Received: from hu-qianyu-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-302944ffdf0sm16288683eec.8.2026.05.18.22.47.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 18 May 2026 22:47:26 -0700 (PDT)
From: Qiang Yu <qiang.yu@oss.qualcomm.com>
Date: Mon, 18 May 2026 22:47:17 -0700
Subject: [PATCH RFC v4 6/9] phy: qcom: qmp-pcie: Add clock and reset lists
 for secondary PHY selector
MIME-Version: 1.0
Message-Id: <20260518-link_mode_0519-v4-6-269cd73cc5d1@oss.qualcomm.com>
References: <20260518-link_mode_0519-v4-0-269cd73cc5d1@oss.qualcomm.com>
In-Reply-To: <20260518-link_mode_0519-v4-0-269cd73cc5d1@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: Qiang Yu <qiang.yu@oss.qualcomm.com>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1779169640; l=4489;
 i=qiang.yu@oss.qualcomm.com; s=20250513; h=from:subject:message-id;
 bh=6l47wGwpcdS+i8z+96tTAR26f2jAl5baUJvJx2wGmVk=;
 b=tI+M9vo4rfmkJHBISreYDBHdrX+sGAXFh9++C+YnE/xQL8MIXjFsLioMqHH2TrO7750kRU3Nu
 H8j3v/bQPN/CNxaRDMTldfJKYU89Zz4ECL8idv4ADT7LCrZmQHTaRFf
X-Developer-Key: i=qiang.yu@oss.qualcomm.com; a=ed25519;
 pk=Rr94t+fykoieF1ngg/bXxEfr5KoQxeXPtYxM8fBQTAI=
X-Authority-Analysis: v=2.4 cv=VJPtWdPX c=1 sm=1 tr=0 ts=6a0bf96f cx=c_pps
 a=cFYjgdjTJScbgFmBucgdfQ==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=NGcC8JguVDcA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=DJpcGTmdVt4CTyJn9g5Z:22
 a=EUspDBNiAAAA:8 a=ee-eAjM40MESQSg1XYEA:9 a=QEXdDO2ut3YA:10
 a=scEy_gLbYbu1JhEsrz4S:22
X-Proofpoint-ORIG-GUID: z2wt_OfN35KrECjv6fMLctRUEHl9lB7f
X-Proofpoint-GUID: z2wt_OfN35KrECjv6fMLctRUEHl9lB7f
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNTE5MDA1MyBTYWx0ZWRfX5dh+1GLnm6Gj
 0vVS1lAvXNA8yzbC3TGpWv2gMr7sq2WeTbNUKf8OMdAzXB73e5zhSk78weNKSYVZQp/3w9GSU6j
 yfrVaJduQeEibNKtJHQQDBcnUswxM8tyaMEmxBE2GTel4GQnQQyLYTFZYNoPu3xzNZ2eGOFrMLz
 rqfMBsRETP3ZmLessl01RAF+gkIw8Vrqx0Tvu27UsD/J8dpyMsgVMJAKakEpQ3VbJHQCQSwrm6x
 zps9qMPD4i8aJGAz2LHEmcLR2RwrKYFvac5gahHp2vxag1OLVhT03NnfvfQLedt2sDHOD8xakxC
 yssPcDeTY9l0/wiZc7ilA9uzmlq6Pe9NiwR6VF3UGCOMfIZitCACTrL9mQyQe/pltIqYz5HcSON
 Or+zbF7dIiROtUk3rVkxwigLzW4MlRhu/bpyH9uYl/9UHwsazox9aFBIDLkYTZ0wrnQHmoeDSsU
 EHBzzuEPPKtKRX04mDA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-05-19_02,2026-05-18_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 impostorscore=0 adultscore=0 malwarescore=0 bulkscore=0
 spamscore=0 suspectscore=0 lowpriorityscore=0 clxscore=1015 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2605130000 definitions=main-2605190053
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260518_224728_292512_32E9D839 
X-CRM114-Status: GOOD (  18.01  )
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

PHY instances sharing a single DT node each need their own clocks and
resets. The current driver uses a single hardcoded clock list with no
way to select per-instance resources. Add the infrastructure needed
before wiring up multi-PHY probe.

qmp_pciephy_secondary_clk_l[] and qmp_pcie_get_clk_list(id) are added
to select the appropriate clock list by PHY selector index.
qmp_pcie_num_clks() replaces the hard-coded ARRAY_SIZE(qmp_pciephy_clk_l)
in qmp_pcie_init(), qmp_pcie_exit(), and qmp_pcie_clk_init().

struct qmp_pcie::phy is replaced with an id field so each instance can
identify its index within a multi-PHY provider.

Signed-off-by: Qiang Yu <qiang.yu@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 49 ++++++++++++++++++++++++++------
 1 file changed, 40 insertions(+), 9 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
index 6332f15f78ca..b100302be12a 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
@@ -3335,7 +3335,7 @@ struct qmp_pcie {
 	struct reset_control_bulk_data *nocsr_reset;
 	struct regulator_bulk_data *vregs;
 
-	struct phy *phy;
+	u32 id;
 	int mode;
 
 	struct clk_fixed_rate pipe_clk_fixed;
@@ -3379,6 +3379,24 @@ static const char * const qmp_pciephy_clk_l[] = {
 	"aux", "cfg_ahb", "ref", "refgen", "rchng", "phy_aux",
 };
 
+static const char * const qmp_pciephy_secondary_clk_l[] = {
+	"ref", "phy_b_aux", "cfg_ahb_b", "rchng_b",
+};
+
+static int qmp_pcie_get_clk_list(u32 id, const char * const **clk_list)
+{
+	switch (id) {
+	case QMP_PHY_SELECTOR_0:
+		*clk_list = qmp_pciephy_clk_l;
+		return ARRAY_SIZE(qmp_pciephy_clk_l);
+	case QMP_PHY_SELECTOR_1:
+		*clk_list = qmp_pciephy_secondary_clk_l;
+		return ARRAY_SIZE(qmp_pciephy_secondary_clk_l);
+	default:
+		return -EINVAL;
+	}
+}
+
 /* list of regulators */
 static const char * const qmp_phy_vreg_l[] = {
 	"vdda-phy", "vdda-pll",
@@ -4781,6 +4799,13 @@ static void qmp_pcie_init_registers(struct qmp_pcie *qmp, const struct qmp_phy_c
 	qmp_configure(qmp->dev, ln_shrd, tbls->ln_shrd, tbls->ln_shrd_num);
 }
 
+static int qmp_pcie_num_clks(const struct qmp_pcie *qmp)
+{
+	const char * const *clk_list;
+
+	return qmp_pcie_get_clk_list(qmp->id, &clk_list);
+}
+
 static int qmp_pcie_init(struct phy *phy)
 {
 	struct qmp_pcie *qmp = phy_get_drvdata(phy);
@@ -4840,7 +4865,7 @@ static int qmp_pcie_init(struct phy *phy)
 		}
 	}
 
-	ret = clk_bulk_prepare_enable(ARRAY_SIZE(qmp_pciephy_clk_l), qmp->clks);
+	ret = clk_bulk_prepare_enable(qmp_pcie_num_clks(qmp), qmp->clks);
 	if (ret)
 		goto err_assert_reset;
 
@@ -4865,7 +4890,7 @@ static int qmp_pcie_exit(struct phy *phy)
 	else
 		reset_control_bulk_assert(cfg->num_resets, qmp->resets);
 
-	clk_bulk_disable_unprepare(ARRAY_SIZE(qmp_pciephy_clk_l), qmp->clks);
+	clk_bulk_disable_unprepare(qmp_pcie_num_clks(qmp), qmp->clks);
 
 	regulator_bulk_disable(cfg->num_vregs, qmp->vregs);
 
@@ -5079,16 +5104,21 @@ static int qmp_pcie_reset_init(struct qmp_pcie *qmp)
 
 static int qmp_pcie_clk_init(struct qmp_pcie *qmp)
 {
+	const char * const *clk_list;
 	struct device *dev = qmp->dev;
-	int num = ARRAY_SIZE(qmp_pciephy_clk_l);
+	int num;
 	int i;
 
+	num = qmp_pcie_get_clk_list(qmp->id, &clk_list);
+	if (num < 0)
+		return num;
+
 	qmp->clks = devm_kcalloc(dev, num, sizeof(*qmp->clks), GFP_KERNEL);
 	if (!qmp->clks)
 		return -ENOMEM;
 
 	for (i = 0; i < num; i++)
-		qmp->clks[i].id = qmp_pciephy_clk_l[i];
+		qmp->clks[i].id = clk_list[i];
 
 	return devm_clk_bulk_get_optional(dev, num, qmp->clks);
 }
@@ -5414,6 +5444,7 @@ static int qmp_pcie_probe(struct platform_device *pdev)
 	struct phy_provider *phy_provider;
 	struct device_node *np;
 	struct qmp_pcie *qmp;
+	struct phy *phy;
 	int ret;
 
 	qmp = devm_kzalloc(dev, sizeof(*qmp), GFP_KERNEL);
@@ -5468,14 +5499,14 @@ static int qmp_pcie_probe(struct platform_device *pdev)
 
 	qmp->mode = PHY_MODE_PCIE_RC;
 
-	qmp->phy = devm_phy_create(dev, np, &qmp_pcie_phy_ops);
-	if (IS_ERR(qmp->phy)) {
-		ret = PTR_ERR(qmp->phy);
+	phy = devm_phy_create(dev, np, &qmp_pcie_phy_ops);
+	if (IS_ERR(phy)) {
+		ret = PTR_ERR(phy);
 		dev_err(dev, "failed to create PHY: %d\n", ret);
 		goto err_node_put;
 	}
 
-	phy_set_drvdata(qmp->phy, qmp);
+	phy_set_drvdata(phy, qmp);
 
 	of_node_put(np);
 

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
