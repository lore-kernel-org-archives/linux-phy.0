Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25D04606A329
	for <linux-phy@archiver.kernel.org>; Wed, 28 Oct 2026 05:20:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=3awrsl79;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=OHvogaIH;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=dAUX5K6J
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Unsubscribe-Post:List-Owner;
	bh=INg25Nn0WUGHzt/RsYGpYezrjxa/ZSd8W6ymK3QyMNo=; b=3awrsl799Fp3C847tN4+C8Gk3w
	8sdsm3PYMDJ1AfUHgk9TGNlQtp0MOXARTaLn0CRBswagYHoR2I3S4hUDBad0+OH6zQAEnP534uXZu
	hYLRy2lYsS1sSeG7qW/12ruZc6Exl2aJRqGmc40fvRWHuomA7bmzvsLosiEDGoiS4zB351Ko4Xjj0
	jWvadF1cA3fr8cKOlAREiHUVomIR1ua5dboohDmwyB47/GYlEt6qkw9Ytdo+O0h7lGqtWQ9eJgHZW
	ZgGyD8FKyOpb0gd+PQsfZrAO86efexkFVCQiYh67IycOfayExdlHw+9Go90igpAko0G9vc8qcVY4I
	a6jQR8iw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLw5n-00000006MyW-33Lm;
	Wed, 28 Oct 2026 05:20:55 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLw5k-00000006My7-3xNR
	for linux-phy@lists.infradead.org;
	Wed, 28 Oct 2026 05:20:54 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 69S4Pdnl3749793
	for <linux-phy@lists.infradead.org>; Wed, 28 Oct 2026 05:20:51 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=/0frRwCS3FVZ6tSdiAeOlvTfG6xRS/ohcF2
	WejFiR7c=; b=OHvogaIH/L1RHMTOXYkphNDO0/nomLFtdBvhAuuSP16rRlLciQn
	1HHWZ3D8nXTlnw29YwkO9P66HCRJ1AH/DaE2KSs4Bw2RKLhL1EEZkmh64nOaIkuD
	IcM27NFGQQuT0VtNEzjQR5m2rRVOme4d45zIVerHeMu6RhlTpjCbg7qsR+jbl3lK
	oWJg9QrsUjMrPTRTC8IVTXjZmIpi/KIcKFJT8Lwy6c9vUGOIRRnCaOR6p4TbsBbT
	ZTObuv4ZMukoGI73GbQTgcILXV+AzGlPHHlfnlIBht8iM4nPvle+tV1/vA0M92Wo
	klqoCTc2xEueCkMkLv83fxbc4bvoe8OF4iw==
Received: from mail-ot1-f70.google.com (mail-ot1-f70.google.com [209.85.210.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hjy6g2kj0-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 28 Oct 2026 05:20:51 +0000 (GMT)
Received: by mail-ot1-f70.google.com with SMTP id 46e09a7af769-8255327a28fso732594a34.0
        for <linux-phy@lists.infradead.org>; Tue, 27 Oct 2026 22:20:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1793164850; x=1793769650; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=/0frRwCS3FVZ6tSdiAeOlvTfG6xRS/ohcF2WejFiR7c=;
        b=dAUX5K6Jb43gaSpVnT8lC90tO0ULhHN1dPmiryOeoA2HRk8Zj3l3tpXBF2XB5h0l8H
         HWRkscWlaElkM5hN2H8qRYjw5bXATGSAItzr0+ke5bx24DgMCa4HeWdDNHmHYVYVxsB5
         fLNsce6FwPSGtLl8LRkZrZw2pG6yeeo22sY34+SCxq7/BrYzqoUb7uo597t5yg4458Af
         Phgph2hbKV1PPhU3mxBP0kvfH0qdpiGzKf51qYFYS+DqkGVH/+9RuUxVL1fS0OB8l989
         3N6K0xW7vBBZu3bYqJj81v/PpuS29gnZNXjyGLb6EmSznGqwncbPTXs4boh7aPJOd3X0
         9uEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793164850; x=1793769650;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=/0frRwCS3FVZ6tSdiAeOlvTfG6xRS/ohcF2WejFiR7c=;
        b=REwlM3nHToJVhlxSSmqUkIszfDSwPvye6gBPMEh0CDhXO+mOA+B4k8YdYzC03TRaFE
         Xb2DQEj43Q67YHYh/+3/9cmv1OtgbUarFDpvXKl57x4ip+dzR1dp3BMJsqUJEokyriT5
         GDAxqywc1e+qbv007XlhgSe8s2ANRGG1OmNjoTuHKPoEIbfG81sRK186KXnJXRaK2SlY
         2PyNqcAlTbrfOjiLkwGsmT3Mw6SGGD/xYp2UkDW9pOh6JvfrVERe2QHAVaN5IHWQn4cK
         r3c1cwyHhDI9lgyVOC+BI6cvdR5/tW33cYhIiXeJv7cPh4VILUIL0fWFaXLh4a/4/mSO
         4UFQ==
X-Forwarded-Encrypted: i=1; AKwUvBwEVx9ifhrYmbLLGSqYz5pbnKcwe891fjuLqHOE7HaOJmcgqn/uKmwgVE5Vbf+bQ+9psSb1h74Sgo0=@lists.infradead.org
X-Gm-Message-State: AFq9FYJ7RJFn2lAlUAWFyPUb2aGSG+0RpU3A/Uzn+kaWJRKGGuuUC2yV
	mK9fqOsxf929I/BD+OuzWvyA56Yy+p6lAcgOgAp93APiUs4IWewpyE9qWA8qiHHri8jt1UrnnG1
	AlIvSMs5pe1SL5AXG64nO9qOJ8p0GtQ08aUX8QZxv9e75iTVo1WkUjf1+iKtSxVzQn96U
X-Gm-Gg: AYBFou1qcWLgueJcmpqd1/FXoGHh0Gkx5LB0fqnJ3HjxbPJ1pwwHpitNQfo1OEJGEYO
	t7g6A/z60G1RCVueg3MTcQItcM/H7WF6E5VCxNoYIALk8xB6LRQePzF4IxDjndxwrVMhriMIseZ
	dGoar8uxwC7HkTGV+JxuiVRgBz1jDH+ey6hZe0mIq4O18kJwaJJd7cXUhN0Nv6KXy0NY7nH5Up6
	hJhcY+V0LtKRidlUVm6FLYEyXEsAk7KB5P+BukABY1HN2gSDCtRxR3z3NUom3n2QzCs9zq6bgHq
	RHwFeNZLKncGYVTPuvNSEoPSuc5SNXOCgco2uWapgD+D+UXntFta2ouhmhw2LzKojT0Esd8jADB
	2HOuAs68XzdT/BTSRubXLtQnSfXCbCyW4NZNv2ELO5BwNDQsCx6xBCbPBvmIy2r1X/eJ0k/QJiY
	XYNovPE9bu2bGfTN0TITawURTZvX4=
X-Received: by 2002:a05:6820:1508:b0:6c9:80d9:5f5 with SMTP id 006d021491bc7-713f1c562c1mr725674eaf.54.1793164850180;
        Tue, 27 Oct 2026 22:20:50 -0700 (PDT)
X-Received: by 2002:a05:6820:1508:b0:6c9:80d9:5f5 with SMTP id 006d021491bc7-713f1c562c1mr725665eaf.54.1793164849713;
        Tue, 27 Oct 2026 22:20:49 -0700 (PDT)
Received: from hu-aarunnan-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 006d021491bc7-7142bb765a3sm653720eaf.4.2026.10.27.22.20.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Oct 2026 22:20:49 -0700 (PDT)
From: Anusha Arun Nandi <anusha.nandi@oss.qualcomm.com>
To: Bryan O'Donoghue <bod@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        gjorgji.rosikopulos@oss.qualcomm.com,
        hariram.purushothaman@oss.qualcomm.com, akapatra@quicinc.com,
        jigarkumar.zala@oss.qualcomm.com, linux-phy@lists.infradead.org,
        linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: [PATCH v2] phy: qcom-mipi-csi2: Add support for single power-domain SoCs
Date: Tue, 27 Oct 2026 22:20:47 -0700
Message-Id: <20261028052047.2738893-1-anusha.nandi@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDI4MDAyMSBTYWx0ZWRfX5ygtXHVyWglK
 6EwwBy5WQh17lDOzF1fHXzcYjgLGBdm9DvMFG9VS+I3TJp/nSScI4QKjntkG6cKj6wsQAIGyQtn
 jg8rKzomHbOh9Lj2C+/p/p2heNzL+6DV/ve4KRS9dJtfTVdgwEKw1lipeLEtH9qyVqtuJWwo+pL
 10mCe6ee5gab20XDSkEGggIqzYwPkiaNkefs3o6xIWYWrRYxYF09wBXx0or3i1BrIGj+mxdukXl
 YZbn7PnY/KkOhwpZ1UR0IVplLjKCXBU18Pzr0Vpx+zfuNvHQHTVYpV0gZtwrlUezMEJXC5XFbXw
 gJ6dEzdZqUX7nFqIN9BqBpg3XrcRiCw5tRdTJ5kwwlP2xqK29tZ87zWBv8aGqbV6ZxmL5ONRAYj
 ZCFVvwsEiafhHC5LKhanynxht8QqzlY1whNlSCOQQ3KVwcZuPARHCqg9+3qOzxe5w/pqEbY0eAZ
 bCVaDafZ8u4rvwVFZog==
X-Proofpoint-GUID: m_Mgsde6QMC3zRT5PccMXqO69P-9pZ5M
X-Proofpoint-ORIG-GUID: m_Mgsde6QMC3zRT5PccMXqO69P-9pZ5M
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDI4MDAyMSBTYWx0ZWRfX1FuTIwgNecXI
 7p5DG/X20rvWaJlnGursOyfukXOtj2DtHKld/z045XFP4vNmWuUEx9OLwnUn9qpWjuFpsF9M/NE
 zB5g5s0JrTNHgpZbEdc/fjtq89SWA+A=
X-Authority-Analysis: v=2.4 cv=dKgzC+Zb c=1 sm=1 tr=0 ts=6ae18633 cx=c_pps
 a=7uPEO8VhqeOX8vTJ3z8K6Q==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=_K5XuSEh1TEqbUxoQ0s3:22 a=EUspDBNiAAAA:8
 a=uorg23y0nfgcnAkg4s0A:9 a=EXS-LbY8YePsIyqnH6vw:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-10-28_02,2026-10-21_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 lowpriorityscore=0 bulkscore=0 adultscore=0 spamscore=0
 suspectscore=0 priorityscore=1501 clxscore=1015 impostorscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2610190000 definitions=main-2610280021
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261027_222053_021938_EA605C49 
X-CRM114-Status: GOOD (  19.47  )
X-Spam-Score: -2.8 (--)
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-16.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

sa8775p, qcs8300 and sc7280 each list exactly one power-domain ("top")
on the CSI2 PHY node. For a device with a single power-domain phandle,
the generic platform-bus code (platform_probe() ->
dev_pm_domain_attach()) auto-attaches it via genpd_dev_pm_attach()
before the driver's own probe() runs. phy_qcom_mipi_csi2_probe() then
unconditionally calls devm_pm_domain_attach_list(), which fails with
-EEXIST because dev->pm_domain is already set, and the driver treats
that as fatal:

  1. qcom-mipi-csi2-phy ace6000.phy: error -EEXIST: Failed to attach
  power-domain list
  2. qcom-mipi-csi2-phy ace6000.phy: probe with driver qcom-mipi-csi2-phy
  failed with error -17

x1e80100 is unaffected: it lists three power-domains, so the generic
code does not auto-attach any of them (auto-attach only applies to
single-power-domain devices); the driver's explicit attach is the
only one that runs.

For the single power-domain case, call dev_pm_domain_attach() instead
of devm_pm_domain_attach_list(): it returns early when dev->pm_domain
is already set, so csi2phy->pd_list is left NULL rather than built up
by hand. The three call sites that walk pd_list for genpd
performance-state scaling now guard against a NULL pd_list, which is
harmless since scaling is unused (scaled = false) on every SoC that has
a single "top" domain.

Signed-off-by: Anusha Arun Nandi <anusha.nandi@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-mipi-csi2-core.c | 15 ++++++++-------
 1 file changed, 8 insertions(+), 7 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-mipi-csi2-core.c b/drivers/phy/qualcomm/phy-qcom-mipi-csi2-core.c
index c0a4fa20eaf0..ac25e1e5f1c3 100644
--- a/drivers/phy/qualcomm/phy-qcom-mipi-csi2-core.c
+++ b/drivers/phy/qualcomm/phy-qcom-mipi-csi2-core.c
@@ -43,7 +43,7 @@ phy_qcom_mipi_csi2_set_clock_rates(struct mipi_csi2phy_device *csi2phy,
 	}
 
 	pstate = 0;
-	for (i = 0; i < csi2phy->pd_list->num_pds; i++) {
+	for (i = 0; csi2phy->pd_list && i < csi2phy->pd_list->num_pds; i++) {
 		unsigned int perf;
 
 		if (!csi2phy->soc_cfg->genpds[i].scaled)
@@ -174,7 +174,7 @@ static int phy_qcom_mipi_csi2_power_on(struct phy *phy)
 unset_rate:
 	dev_pm_opp_set_rate(csi2phy->dev, 0);
 
-	for (i = 0; i < csi2phy->pd_list->num_pds; i++) {
+	for (i = 0; csi2phy->pd_list && i < csi2phy->pd_list->num_pds; i++) {
 		if (!csi2phy->soc_cfg->genpds[i].scaled)
 			continue;
 
@@ -204,7 +204,7 @@ static int phy_qcom_mipi_csi2_power_off(struct phy *phy)
 
 	dev_pm_opp_set_rate(csi2phy->dev, 0);
 
-	for (i = 0; i < csi2phy->pd_list->num_pds; i++) {
+	for (i = 0; csi2phy->pd_list && i < csi2phy->pd_list->num_pds; i++) {
 		if (!csi2phy->soc_cfg->genpds[i].scaled)
 			continue;
 
@@ -233,6 +233,10 @@ static int phy_qcom_mipi_csi2_attach_pm_domains(struct mipi_csi2phy_device *csi2
 	const char **pd_names;
 	int i;
 
+	/* Single power-domain devices are already attached by the bus core. */
+	if (csi2phy->soc_cfg->num_genpds == 1)
+		return dev_pm_domain_attach(csi2phy->dev, 0);
+
 	pd_names = devm_kzalloc(csi2phy->dev,
 				sizeof(char *) * csi2phy->soc_cfg->num_genpds,
 				GFP_KERNEL);
@@ -369,11 +373,8 @@ static int phy_qcom_mipi_csi2_probe(struct platform_device *pdev)
 		return ret;
 
 	ret = phy_qcom_mipi_csi2_attach_pm_domains(csi2phy);
-	if (ret < 0 || csi2phy->pd_list == NULL) {
-		if (ret == 0)
-			ret = -ENODEV;
+	if (ret < 0)
 		return dev_err_probe(dev, ret, "Failed to attach power-domain list\n");
-	}
 
 	ret = devm_pm_runtime_enable(dev);
 	if (ret < 0)
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
