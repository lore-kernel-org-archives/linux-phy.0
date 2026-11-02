Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14AAF606A33C
	for <linux-phy@archiver.kernel.org>; Mon,  2 Nov 2026 21:39:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=AEauwBj/;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=oJ++aXop;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=JhBRQN7W
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Unsubscribe-Post:List-Owner;
	bh=hioROSwqAEw8wJPMiMTpFppKML1f6Lu+7MtDaLfCBtw=; b=AEauwBj/Yw3OH7UAamM21T8eG4
	WeM4Dqn9LOHiW0Inw2ko0GMerLtTQ1wu9uy+AebTxXo3zqxZ1MXwd7hNnq8+r2mbQtrAJcVOw8X9g
	ZnxLtfZ/c/PNHY+6GyH6foM5RB3W/mrPwXH5YYWiXFUix9iL+b9b2oYx2Q0i/DFSrdJZ4WlEfsEv2
	FuYmGl3bWJrxe2jR2ZnbhtZeELMkTgave1HmHS/KxUQ0CIkoCke2Yhuctb4sy8A3wGZI94j/IGeRK
	9+qAsXjNdM6EP5A6ch5IRc/7FlJ0YpdNsDZoQoRmBnniDxo2m7DESBU4RydgG+3P3HWAmvo86vGSl
	H+Vi+QtQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xNzkm-00000000UpS-2oay;
	Mon, 02 Nov 2026 21:39:44 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xNzkj-00000000Up5-21NO
	for linux-phy@lists.infradead.org;
	Mon, 02 Nov 2026 21:39:43 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6A2K6ZrF1325128
	for <linux-phy@lists.infradead.org>; Mon, 2 Nov 2026 21:39:40 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=PHBqgIS2a1m9GORwkqpCGvAXjRtw2HSeDsQ
	nUYOO8L0=; b=oJ++aXoppqWbvzDgovVL7Xy9qHXZaRCpJSpIxiQh750QP1mHBZI
	9BvkWad7l/BLVcBJu5uTMAuf+evP+qIkQJf+eMUeuRkW2VDwqSrTob2pD3bNkC00
	D1lwh/uC9Sj15vqpo9yxr3OOPmd+s3p8TocMsXWbuYq85YTrlO+lGAEmGnzoeGk0
	ZYmF0hRoAistcZzOjCaNHPXZEkJ4qrDiCFvD7G3i0YbgA0cacmj7kyNK8vPVusCQ
	NgevXYfOYgzu62ngtm0jWzGd+FPG+mGKA16mqqf9nRycIGHTCsH+//UfipZMTawe
	eYKBF4WkjdxDbiIKZ/0V+0wqvCYbdtGB2+Q==
Received: from mail-dl1-f71.google.com (mail-dl1-f71.google.com [74.125.82.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hpph1bb4f-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 02 Nov 2026 21:39:39 +0000 (GMT)
Received: by mail-dl1-f71.google.com with SMTP id a92af1059eb24-1b0d864826cso5540267c88.1
        for <linux-phy@lists.infradead.org>; Mon, 02 Nov 2026 13:39:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1793655579; x=1794260379; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=PHBqgIS2a1m9GORwkqpCGvAXjRtw2HSeDsQnUYOO8L0=;
        b=JhBRQN7WTkqaTM7/MvVvd1PKk9Fbl0C66lq69dgXQoBq1F0Gb0JRIBMAb8Z2gt02Mo
         9JJP+eh6fk6f17hK1LQtWggopWuJ+5JI8QNvWGfzSjW11qmkTtUqUvenOev+lX6GKjf8
         eE+CbW4kBmlGAUz2hGVOWGQDZK+0ISLZF1axAwDypKxuIV0jlfkGc13POua1TW11o4cN
         sivQhBHH4uFlTzeF40h0pxgJQ/O73FSe01Y6Elxj5oAZEeVBPxoyWnR3MHJWaDjk4fT9
         26afLB42WzXLUhgvUhrJ2bp8FxUWUxKwJ2dHEmUWKc8gMy3YUFbzpz0y+Myw8OMkyU3U
         Uy3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793655579; x=1794260379;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=PHBqgIS2a1m9GORwkqpCGvAXjRtw2HSeDsQnUYOO8L0=;
        b=AMwaqeISZe6SjbDkzrtwnj7WHmJ7RCnOcZXtZJv7cyi3MZDnqW7rXjMExMIi0eZPmh
         hLXGQmzdrMbvgLuLH2Du4euGDSr36Ysz/5wsIkT6iqsRFJK+j6YpGNIJMG2mZlwYzWCL
         ml8pffYvlKe22Uryvlk//AdSV3tTpuwr0DbbiQBnlMBVjnq0mzCitceVnCHal9zf9Zed
         mXTmIWtm5l8KphU5TWFvWatS/4fwH5Ue0sL5UULAZ9rRXpdSyI40+iv1HdPYzCN4YjzG
         EEoB4ruNjJjIulp6K+qboF7b/APCPTgz5p5WEUZmS+MXY7AUFsOd2QfjHDPvl2q4SBZH
         JTLA==
X-Forwarded-Encrypted: i=1; AKwUvBwk7uowP/KfRIeyIE68B/YQzWkTr9mez4z0lM6Wqqn2BP4xFS6nVYe+6EAmrgm5Ydwrc23+ti/G4BE=@lists.infradead.org
X-Gm-Message-State: AFq9FYJHb8J3NnA5wtl//z7Hwoho+NvMbSxqw79TNSYWF4nNdNyDXDX1
	43R6gSdQvgE3vTTmuqjC+uQPUQ6/49WDTKsDHUjhK9QhiF7yAv3/n9OedVHS2yrBPwLy0cjYD48
	c7cpGOe2Ra7rVsqTfxf1tVg9zggajfhqnfg0jopg0wQB5HRzOsedKbPEixG7Z7vtt//s+
X-Gm-Gg: AYBFou2gvbZALZbmImQSmK5TNn0Asb09wTO2J2t7G9oRtEfZLP+jPhXhUa0u7jTIfT3
	OKhf1LA1qM2bWSR56RQiev94QLxuxs0rC2rMacv4DboQDJ4vWF4dtn2iPpK+a+ZhGl/8f/vhIP/
	9yYPdeni43UvwvggF9AyiSSiiVsYdcBoehmhKZofNXTQMr4b2PznYBusYckJ0x7Aqg5pbKT7UvH
	2FvyjssWiUWtzR3wT6B2NNPQ6Xmt4zGzRnyo20k+kdBCqzKe7hspJhD6CO/xC/NiR4F6hav8OmD
	6+tKG6WUZliTVkJPCh0WuaozvBBTvfyqg+/5SOJndX4wf75vF7I6Ih9GZqwchNjkO4xigWdINg/
	F7MDoAV0g5ovE3XBx9G3GapqRULmmiTak5eWFcvyOKTISdqEoLcHGhJiyMvbNhdBTKd5jUEgIN+
	Aj/CymwUekobYyXf2iyR9JSe4I/oQ=
X-Received: by 2002:a05:7022:f50a:b0:149:50cb:2175 with SMTP id a92af1059eb24-1ac5cb1881bmr15551193c88.33.1793655578710;
        Mon, 02 Nov 2026 13:39:38 -0800 (PST)
X-Received: by 2002:a05:7022:f50a:b0:149:50cb:2175 with SMTP id a92af1059eb24-1ac5cb1881bmr15551155c88.33.1793655578052;
        Mon, 02 Nov 2026 13:39:38 -0800 (PST)
Received: from hu-aarunnan-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-36a42a61a0csm47056885eec.22.2026.11.02.13.39.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Nov 2026 13:39:37 -0800 (PST)
From: Anusha Arun Nandi <anusha.nandi@oss.qualcomm.com>
To: Bryan O'Donoghue <bod@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        gjorgji.rosikopulos@oss.qualcomm.com,
        hariram.purushothaman@oss.qualcomm.com, akapatra@quicinc.com,
        jigarkumar.zala@oss.qualcomm.com, linux-phy@lists.infradead.org,
        linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: [PATCH v3] phy: qcom-mipi-csi2: Add support for single power-domain SoCs
Date: Mon,  2 Nov 2026 13:39:36 -0800
Message-Id: <20261102213936.1251316-1-anusha.nandi@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-Proofpoint-GUID: -p1MT_GK_tv19il6RC8gM1fOVI0PEFmx
X-Authority-Analysis: v=2.4 cv=IruL47/g c=1 sm=1 tr=0 ts=6ae9031b cx=c_pps
 a=JYo30EpNSr/tUYqK9jHPoA==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=zJRp6_cAMcgA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=3WHJM1ZQz_JShphwDgj5:22 a=EUspDBNiAAAA:8
 a=szogs_k01QmFkf2JtiMA:9 a=Fk4IpSoW4aLDllm1B1p-:22
X-Proofpoint-ORIG-GUID: -p1MT_GK_tv19il6RC8gM1fOVI0PEFmx
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMTAyMDA4NiBTYWx0ZWRfX34P7x8omxRLe
 aZya/fDDq2lypjCZiOTCrtFQVqpefIyvebjpD4kfzm6i91Sg4QxYswQ10JKq5I+zOb+PdsR19ii
 DvZlkfHomlCl/PPWKrKsHc0qo1ahs6V0Puz7Lapc3Tanri3ez55u9MjRlUb1ewTCylU5LsEiYYq
 Cyr0fxosw/bMXPh4i6tmvwyaTADDDOvF3BDn91RiTUZU5tJlTpeHwJSThFCcRklUuaGcm5fsIig
 MgJfEAbHks7PK6mLVLlLkGn7dACsaDDrcl4Bb0iwHFq2G+2Rp3+o2c0SW7U61jRE9gWu+10PINp
 m0sTxpbIeA9nWuiKK7pc1P9hW/2VfIHriygdPcSfQeyUJcAPOB5qtLlly7zFKGpzW/P+qEgguDK
 Yl0W5+MsFrmM4dtPlWz5tOPFoejustaCUWJIX6guDQ0OF4RcOym6+B0n2gFQ08t65wrSr0N5cL0
 VO/tDeK68U1/IF3mwbA==
X-Proofpoint-Spam-Info: AW1haW4tMjYxMTAyMDA4NiBTYWx0ZWRfX3knABXRed8ft
 Htz0DDY5F6g6deh/XQKBCVzXJkNwlsRjNUdgWDR3pGQ/JPWBCeLk+OVK9B/ca6lZB67NrBkvkwg
 DINrpRwSZ+j0URA/Uy1rPFtgPxh46iM=
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-11-02_06,2026-11-02_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 adultscore=0 phishscore=0 lowpriorityscore=0 suspectscore=0
 spamscore=0 impostorscore=0 clxscore=1015 bulkscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2610300000 definitions=main-2611020086
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261102_133941_634269_5C9154A6 
X-CRM114-Status: GOOD (  21.71  )
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

devm_pm_domain_attach_list() returns the number of attached
power-domains on success, so a bare "ret < 0" check in probe() is not
enough to catch the case where it succeeds without actually attaching
any domains. phy_qcom_mipi_csi2_attach_pm_domains() now also checks for
that case directly and reports -ENODEV, keeping probe()'s own check
unchanged.

Reviewed-by: Jigarkumar Zala <jigarkumar.zala@oss.qualcomm.com>
Signed-off-by: Anusha Arun Nandi <anusha.nandi@oss.qualcomm.com>
---
 .../phy/qualcomm/phy-qcom-mipi-csi2-core.c    | 25 +++++++++++--------
 1 file changed, 15 insertions(+), 10 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-mipi-csi2-core.c b/drivers/phy/qualcomm/phy-qcom-mipi-csi2-core.c
index c0a4fa20eaf0..269232499fca 100644
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
 
@@ -231,7 +231,11 @@ static int phy_qcom_mipi_csi2_attach_pm_domains(struct mipi_csi2phy_device *csi2
 {
 	struct dev_pm_domain_attach_data pd_data = { 0 };
 	const char **pd_names;
-	int i;
+	int i, ret;
+
+	/* Single power-domain devices are already attached by the bus core. */
+	if (csi2phy->soc_cfg->num_genpds == 1)
+		return dev_pm_domain_attach(csi2phy->dev, 0);
 
 	pd_names = devm_kzalloc(csi2phy->dev,
 				sizeof(char *) * csi2phy->soc_cfg->num_genpds,
@@ -245,8 +249,12 @@ static int phy_qcom_mipi_csi2_attach_pm_domains(struct mipi_csi2phy_device *csi2
 	pd_data.pd_names = pd_names;
 	pd_data.num_pd_names = csi2phy->soc_cfg->num_genpds;
 
-	return devm_pm_domain_attach_list(csi2phy->dev, &pd_data,
-					  &csi2phy->pd_list);
+	ret = devm_pm_domain_attach_list(csi2phy->dev, &pd_data,
+					 &csi2phy->pd_list);
+	if (ret < 0)
+		return ret;
+
+	return 0;
 }
 
 static int phy_qcom_mipi_csi2_parse_routing(struct mipi_csi2phy_device *csi2phy)
@@ -369,11 +377,8 @@ static int phy_qcom_mipi_csi2_probe(struct platform_device *pdev)
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
