Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D8032CCA46C
	for <linux-phy@archiver.kernel.org>; Fri, 16 Oct 2026 23:55:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kGfdnxTbqtC1zd3q8qjbtX2QBK1njIL3uOPwgtKTpBY=; b=WSc1b91ce2ZIQt
	W+Hxqc54PmmcS2gm1YgZS9d+rI5dxJM3upTddU6AhDgnXw3eFJZvPJoFgsPtrHraWEjwfqdFooOaj
	K0L/C86144rptpNjoAUK0RcqPd2DGvfYZpRIRIaXhMiCAVozCG2bUdWJi3voM7jRTH+DZ5vWO1JQm
	Y+j/eFuW01qumRhUlP/Tp4XZqzN6JkBvLXY0SMmHHaljPQfAmi468lLNmSknqC6UcZZm9NJGDtZ61
	2oo71WBcjsykwyoZGM6ide0N9aRD7dFQkudEhpmBlxVSwgVoCcBh0FfPfJXQqQUkvb1P3NlsyGrr3
	/7faQyLMaz1kSIB82mhw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHrlh-00000004DhR-2BK4;
	Fri, 16 Oct 2026 23:55:21 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHrlZ-00000004DdA-3uUf
	for linux-phy@lists.infradead.org;
	Fri, 16 Oct 2026 23:55:16 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 69GNFSnE3083229
	for <linux-phy@lists.infradead.org>; Fri, 16 Oct 2026 23:55:06 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=qedLgstS3gt
	vnc8k0/THvcA4SPaoe9apJzndlL1Fd8Q=; b=R6tCCfI6INMnbSklELJE70qfOPY
	/4ANoeEhAN3uBss9uTpg+DlG+NJTzVxxDWNuI4YiFLNnp/I7w0mGyhea4X5BNIeO
	rJZNLpJ/308HpITn8wBST7eR1BrRSUlPp754rxeiSISho0JTl7osN7tdex8V1Eo9
	46tVMA3akcgNXfJJp7Cxxzpobnuz8Y2fdWp2rOXfNDJMeXRyamyNQLlyM9Ph2yy4
	0pWCHtLF2zXBWQwTvwy/x46vG9baoCeAOd2n/m+ei2D8hGLvls3JwRFvLuVRHYZB
	Yy0usMJqiyqQlWHnI2NYfeWxKdjX9EyGRYU+vghikxVANiTQWjcrJCLflAw==
Received: from mail-dl1-f72.google.com (mail-dl1-f72.google.com [74.125.82.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hbjmfamxt-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 16 Oct 2026 23:55:06 +0000 (GMT)
Received: by mail-dl1-f72.google.com with SMTP id a92af1059eb24-139b62317d0so1333111c88.0
        for <linux-phy@lists.infradead.org>; Fri, 16 Oct 2026 16:55:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1792194906; x=1792799706; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=qedLgstS3gtvnc8k0/THvcA4SPaoe9apJzndlL1Fd8Q=;
        b=VzN+OBTfwhI+s7/0h0vCCVVu6kzhz/Faf6eP303FMzjA2OwnfZ9n2dKH/jOu5ifEMX
         W3ADeA65DA3mzYjcDujZniYrJKauIz86eYzVA5IM12dCoidsh+zispxY6AsvFRSA6jeL
         YFPUyw87jEaJshP5Zc0mXyqLYyFmucbE1jtkrT5ogzVwR9z5jC0vhKpbsK7Xfc7rHdgF
         udIUHXV38ZKo3l5Uf2FhpcFSASIuL1m1RKpuiF3JJiFpPxE6AhhDgIkRVleEX1CG0jY5
         rFQM9eSTt00ri38YdYmBhU/hZhgb/BhMGV8REluoXbHT2X8X2wye8/h/TADLMvUJW8oL
         aurg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792194906; x=1792799706;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=qedLgstS3gtvnc8k0/THvcA4SPaoe9apJzndlL1Fd8Q=;
        b=khX6c95c/oAlsuab/PZa+63pRE4RxtCxsoG53a+lpBC/EB18ouApfiNUMrqTSwp5SW
         UjDe0Chn7BydDMVBGI2m8LdgzioSukDbbr5ppMe9XqR3iVbtJGLt249jYZfZSk3zrEp/
         T9LT6ks5/WSa9CDsX6yvecWyW15fDGZISKP5dLpZZDokZz4M4/8YQmupoSEjS7TPTfx/
         rcwhhc3dx9Ua9kVTOQV1gvR3TTQF7/Z69BQLM6HEg4pQp30UAnEWGbSFcC3ZVjGhEVe8
         GgriWjNip7n7EopmeFodOMtgXT0n5o3P9Z0VkkOuKtYgJIGvy/AVU7bxbzJ1+gcP6lZ+
         ug+w==
X-Forwarded-Encrypted: i=1; AKwUvBy5hKPt41alFS1GxRWQItE8yghMOX8C81+DG5kV8Mh3oxemNJPFwhmWffvz4fdFnXsU+11zu0jLXJE=@lists.infradead.org
X-Gm-Message-State: AFq9FYIu00g/hAIiTPx9OF/7gIS9D8NGIYaSQfsZxrXYBbe1tnBzYxkv
	Wxy6AH2aWyby3Jn9iw9jWkWmabXihZcKTFArxhiM3E5qIeD9ZLi2dG96duf29Whb6c/bodxOsJd
	KADUVPtEZLISnx4DZaouY+AZy8aEm3A3uv7mnBILKimfR/QmRTiopRDh8SxE1M8nBiTr7
X-Gm-Gg: AYBFou3jra/xpPYaSYofLIhm2MPKg8A7vt2VlxJf0NbV17YVEAW8qicxVyjvlsR82nV
	4bs5Iiei6kMGDLC8nAB8GglNGkx8wlaGq87Iz/SI/lFSKy9eCbWR+WDndLNH/MvdsKJb7PMDsYV
	FJ5jUk0+/Q1AX7cp3I5mM44roNjQ0z8lWRwMkyVh0SqM63F+6q9SK778LQkhZf1qmwWjvxl0BPd
	guOwOLT2+W9zXwv0TN0RQOPKHFSi90pnQQukTCvd9lgmpSbNAhijGzpCAaz9BYXFtYZdpaV/JnD
	tYDw+gGySqZ7TvwtDK+zKbtHFsSZXLX5cgWcm4tuG5zGEB+pwmz7u1rs/tFF0wvZ3w6HKW4p7hN
	G6h9JACmdOwR+TQXWx12PgSlQIoUayhI6Ok3L7Dz95kLLiZvLBGAuKA==
X-Received: by 2002:a05:701b:208e:b0:168:6ad8:e8b0 with SMTP id a92af1059eb24-185120a831bmr1673764c88.14.1792194905552;
        Fri, 16 Oct 2026 16:55:05 -0700 (PDT)
X-Received: by 2002:a05:701b:208e:b0:168:6ad8:e8b0 with SMTP id a92af1059eb24-185120a831bmr1673738c88.14.1792194904917;
        Fri, 16 Oct 2026 16:55:04 -0700 (PDT)
Received: from hu-aarunnan-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-183190aa7bbsm8556183c88.5.2026.10.16.16.55.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 16 Oct 2026 16:55:04 -0700 (PDT)
From: Anusha Arun Nandi <anusha.nandi@oss.qualcomm.com>
To: bod@kernel.org, vkoul@kernel.org, kishon@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, neil.armstrong@linaro.org,
        mani@kernel.org
Cc: gjorgji.rosikopulos@oss.qualcomm.com,
        hariram.purushothaman@oss.qualcomm.com, akapatra@quicinc.com,
        jigarkumar.zala@oss.qualcomm.com, loic.poulain@oss.qualcomm.com,
        vladimir.zapolskiy@linaro.org, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, linux-media@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH 1/7] phy: qcom-mipi-csi2: fix -EEXIST probe failure on single power-domain SoCs
Date: Fri, 16 Oct 2026 16:54:56 -0700
Message-Id: <20261016235502.2274268-2-anusha.nandi@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20261016235502.2274268-1-anusha.nandi@oss.qualcomm.com>
References: <20261016235502.2274268-1-anusha.nandi@oss.qualcomm.com>
MIME-Version: 1.0
X-Proofpoint-GUID: sf7JPN_Oh3EYAsZUiqyE44kjSWUZV_Wj
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDE2MDA5NSBTYWx0ZWRfX7J6LieGLYgKH
 bj4gRP7Y/NuTKimNOlVnq6o3QdudJJpN19l/NClA9lH8VxfNGrNBrK8dmTUpMESca7Vlb4Nm/px
 Vsyyyj5zZULElH+vAn4mShbMoZQLpmc=
X-Authority-Analysis: v=2.4 cv=SrAFe/O0 c=1 sm=1 tr=0 ts=6ad2b95a cx=c_pps
 a=bS7HVuBVfinNPG3f6cIo3Q==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=_K5XuSEh1TEqbUxoQ0s3:22 a=EUspDBNiAAAA:8
 a=uorg23y0nfgcnAkg4s0A:9 a=vBUdepa8ALXHeOFLBtFW:22
X-Proofpoint-ORIG-GUID: sf7JPN_Oh3EYAsZUiqyE44kjSWUZV_Wj
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDE2MDA5NSBTYWx0ZWRfXz9aIm6YSJAaD
 nPAS6G1Ef0T2FfHFcIFGwJmykUDD2ujYuQLh+VcR14JrOkj1fx/SJNeza+G/TpIsL2R/s2K92O4
 Lx7ngi03P0DewqF3rUVB6bZxrUerq9sW1HexIVZ8pgRcqkhg2kU5VRakMJAmyTYV/q3HO8EI4iP
 46q2alAXKS7vnhiQWE7zGTMRv9C28VappmogDO0TH+xvzdTE8TpUaZXJNqJgJMg/iDrO75EyuB9
 aKsBRjdSKRd6SC4TDTi7KuDupbIlCEuD/lJ3KY2yd1Olh7xkf3k15dJKf0/4bbDyqaMdJo4ENZB
 OldvL4fgMuXsQFljdM3okU+dO6w3SHyBw5Enkr6ktK8IPQTYGlHlzREuyEhYDQJ+5vYkBdBdmaH
 6Z0haxcVpdzBTPBYd4x+8P6pNaCG5SX9z/yNHZgNdNcx/xkhBxj14EqRGsZpl4O2RbYMz8RJzSn
 vN+CxQPCbsJ61cYlliA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-10-16_04,2026-10-14_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 suspectscore=0 bulkscore=0 spamscore=0 phishscore=0
 clxscore=1011 malwarescore=0 priorityscore=1501 adultscore=0
 lowpriorityscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2610080000
 definitions=main-2610160095
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261016_165513_990942_F4475EA8 
X-CRM114-Status: GOOD (  20.38  )
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

sa8775p, qcs8300 and sc7280 each list exactly one power-domain ("top")
on the CSI2 PHY node. For a device with a single power-domain phandle,
the generic platform-bus code (platform_probe() ->
dev_pm_domain_attach()) auto-attaches it via genpd_dev_pm_attach()
before the driver's own probe() runs. phy_qcom_mipi_csi2_probe() then
unconditionally calls devm_pm_domain_attach_list(), which fails with
-EEXIST because dev->pm_domain is already set, and the driver treats
that as fatal:

  qcom-mipi-csi2-phy ace6000.phy: error -EEXIST: Failed to attach
  power-domain list
  qcom-mipi-csi2-phy ace6000.phy: probe with driver qcom-mipi-csi2-phy
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
 .../phy/qualcomm/phy-qcom-mipi-csi2-core.c    | 24 +++++++++++++------
 1 file changed, 17 insertions(+), 7 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-mipi-csi2-core.c b/drivers/phy/qualcomm/phy-qcom-mipi-csi2-core.c
index c0a4fa20eaf0..00285be9dd64 100644
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
 
@@ -233,6 +233,19 @@ static int phy_qcom_mipi_csi2_attach_pm_domains(struct mipi_csi2phy_device *csi2
 	const char **pd_names;
 	int i;
 
+	/*
+	 * A device with a single power-domain entry in the devicetree is
+	 * already attached by the generic platform-bus code before probe()
+	 * runs (genpd_dev_pm_attach()), so calling devm_pm_domain_attach_list()
+	 * here would fail with -EEXIST. dev_pm_domain_attach() returns early
+	 * in that case (dev->pm_domain already set) instead of leaving
+	 * csi2phy->pd_list unset; this is fine since pd_list is only used for
+	 * performance-state scaling, which is unused ("scaled = false") on
+	 * every SoC that has a single "top" power-domain.
+	 */
+	if (csi2phy->soc_cfg->num_genpds == 1)
+		return dev_pm_domain_attach(csi2phy->dev, 0);
+
 	pd_names = devm_kzalloc(csi2phy->dev,
 				sizeof(char *) * csi2phy->soc_cfg->num_genpds,
 				GFP_KERNEL);
@@ -369,11 +382,8 @@ static int phy_qcom_mipi_csi2_probe(struct platform_device *pdev)
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
