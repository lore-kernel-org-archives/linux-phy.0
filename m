Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 859E7606A31E
	for <linux-phy@archiver.kernel.org>; Wed, 28 Oct 2026 05:10:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=d3NdAk9Y;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=T5AEDCL9;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=abaADgCd
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Unsubscribe-Post:List-Owner;
	bh=95b/6p6CFGGpEa3R8rBYoGdC8sqeePHD4ryZdrAAJm4=; b=d3NdAk9YwVRLEDfKJv2GOLv37A
	N3zJXMW7fYCd7v8EFXpznylRn83TeJW/1RfrhmeMrfUdMO8zSw4cyXRIghe8Qs8y6mxW+AfZj+m80
	+angccS6ueP2ZdSjCEunfe+zfllKy2JIhPEvZ/AiFCvz9tuePrE8EJfMXkLMutWQgO+wQcL7DIsAR
	gk1+9HC9silbKpaMvaBGZKDiZg/Vf5gmAffLhcu8qBVr4ioffWCf7k30oREXrAkt8meYA657PovFt
	D3H1isqMDcSSsOyVi5SixSrDeM1rxK3S6X0NFOPEB4F7qW/qWeS43tAYdHazQ+wsEPPKrW3FebXh7
	qOBYq54w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLvvN-00000006Lvr-0XtP;
	Wed, 28 Oct 2026 05:10:09 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLvvK-00000006LvL-2Iib
	for linux-phy@lists.infradead.org;
	Wed, 28 Oct 2026 05:10:08 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 69S4Pf8E3209241
	for <linux-phy@lists.infradead.org>; Wed, 28 Oct 2026 05:10:04 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=e5W6PLruHf5ReVXisrJnJK3zbKxib4hojUP
	eC8YB9yg=; b=T5AEDCL9mjhVY8bYsqtWdIFYc+kh1OrWEAG6OvdR6gzaZLK0BaF
	DDrAYsSYdPAaIP8D9YE97RmKoExz52lul6kbIWXsAW/56tl554kzFVpiIHR0hl6y
	+JChosL+MyI/Z0P75bnnVFPVsQsBNaCNk37r0EdmwJY0Hd2UJl8xGpZdH1rNNrZ+
	NUb6ufob3H+eOorb6RfL9CvVwYnpPX4bMJL8qJVfdCMx2TC9r4FuIhsZVDVnsRTn
	ZqIrntEUqc/Ovi1oW9mVGAiwRkXFrKBZcZT++kmtV0tcsHB+ROK7zBomfOO9fI0F
	0fDT3a4SVXcERFtzfZVCo3Fo+kQi/YzDuuw==
Received: from mail-oo1-f70.google.com (mail-oo1-f70.google.com [209.85.161.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hjux9bj1x-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 28 Oct 2026 05:10:03 +0000 (GMT)
Received: by mail-oo1-f70.google.com with SMTP id 006d021491bc7-6dfe0f03baeso890462eaf.1
        for <linux-phy@lists.infradead.org>; Tue, 27 Oct 2026 22:10:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1793164203; x=1793769003; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=e5W6PLruHf5ReVXisrJnJK3zbKxib4hojUPeC8YB9yg=;
        b=abaADgCdlHf93dqM/pVdVbAPwg0ocDFF6E1QRMvaqLPAXiyo8t2fvFEhOz8DfnaA6f
         KAvR0h0mZIcyUMO6fVhu/fVW01omSqTl2l+VY7MJHD0i2IPpbgqVaAbKMVD438JVMpss
         I+bQgMITnLdPmELYIgd1ny5zVoJsGtOep34Ix+4CU6HEugaGDj37wk/JJd7jS5E7utq1
         T/bKsYhoTGowJ4h2HQdNLocbz7EjQIEBw0NUTsAkCT6UkuUv040xacNrz1nP4oNur39O
         PVBYUDQvYEGI9zgB6Vc7YW9jrXiFL+hkjdAKOQLrD9UFeZl3zGMbGRrvEneoNril8c+7
         Qu6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793164203; x=1793769003;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=e5W6PLruHf5ReVXisrJnJK3zbKxib4hojUPeC8YB9yg=;
        b=NxtVP0JphDixS1y2WZsLCzYCXVTxLzEVkV5s6ywLAvmbwlJKy0GPQcSP95DL3nM4FN
         70fDFeDNkOa8sEk+4Am4nLstVJK8053jgjmbvFTmzqoqIStLXEASYReSQSq2AeEO/rRF
         K/eyP2Xd2NEafRTkvp3She/ivRPOAzfAwKj26TK9j/xxOzQ1+6PFHkZ9wY4qfHiTjBM2
         Mxm01jqamNxiSLlofy4g+23xb8gYG21mUYvPWOmhj4eRjuOTATCw3HBJVfjVViWaC1D5
         v3Dr28+mHNYyKK62r6YIyKoWKQsxasSkbvFw+0Iw+V29xVi7y/Jj04YWgALDXgnvWXHk
         RY3w==
X-Forwarded-Encrypted: i=1; AKwUvBwHfWFoaIr/h1FH7akHbG6OYtFBFAgM8dVHyXMz4BLb9tZjvOv1tWP8/9gPjMrEtfhFoHR5C008fd8=@lists.infradead.org
X-Gm-Message-State: AFq9FYKx6j3vyhrxFDBTiht8C4LXjIitabLjoNSDr1fVM4bRdFEjJSLT
	tOVVrhK5tHSOHdOB5eZiXHMlKIO/yoaT3b71NtgtFfXMFoUV8zb2k94B01sH8RZKxcTn3p/28wQ
	Mg5YyV+7fRRM4m1wH72nqeIYeIbqy9HdxARhL3zi5zYk27DsEIvnu9D3QpIQnVpW3YPym
X-Gm-Gg: AYBFou0qvKMR2saUyGvDUpOrPGO3zjV3KTKnSOK29SIYD3c0flT68LT4/DC6CsDAhnI
	QsxGMs00j/OlKEdZMIrN9UNYstE2tMu8mbZZq2sZPBuDIWn+N71BsS/oz1/YYt6vX2JjztufoEY
	VNcT0RzrJzqDzFiHbxx9tGEUFf4OSSEa30JjPM30ORok7Qw9PS6R6WypkGJ7z19Yl+cKjjSCVcr
	rNo5Wx/p9aA/+wmetavSNvJrPy25sByD++aO6OKR0JahUJkE+i2wfnas5o6RFuogJ6bR2E/G0tT
	gRAA9v4JHMvcyOIp8+1RsZnIeyUukBy1hkpHb1HI0ZoYTRxoK6xjIkc2i+6hYYykPenvfwBciiN
	JqBRACL4aVoADLVOmq/RjrzSSalzA1cgy/DbH7WwKKvY4EteqbexRUdGZO16OngjuvB3paQQ5Xj
	j9UCR5oUti0SnCWs7tRI7cynFOL+xf
X-Received: by 2002:a05:6820:55d7:20b0:6e0:e81:e5e8 with SMTP id 006d021491bc7-713edca6cffmr498242eaf.34.1793164203244;
        Tue, 27 Oct 2026 22:10:03 -0700 (PDT)
X-Received: by 2002:a05:6820:55d7:20b0:6e0:e81:e5e8 with SMTP id 006d021491bc7-713edca6cffmr498230eaf.34.1793164202777;
        Tue, 27 Oct 2026 22:10:02 -0700 (PDT)
Received: from hu-aarunnan-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-85b1f436687sm650864a34.8.2026.10.27.22.10.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Oct 2026 22:10:02 -0700 (PDT)
From: Anusha Arun Nandi <anusha.nandi@oss.qualcomm.com>
To: kernel@oss.qualcomm.com, Bryan O'Donoghue <bod@kernel.org>
Cc: gjorgji.rosikopulos@oss.qualcomm.com,
        hariram.purushothaman@oss.qualcomm.com, akapatra@quicinc.com,
        jigarkumar.zala@oss.qualcomm.com, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, linux-phy@lists.infradead.org,
        linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: [PATCH v2] phy: qcom-mipi-csi2: Add support for single power-domain SoCs
Date: Tue, 27 Oct 2026 22:10:00 -0700
Message-Id: <20261028051000.2650923-1-anusha.nandi@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-Authority-Analysis: v=2.4 cv=GYyCDgXL c=1 sm=1 tr=0 ts=6ae183ab cx=c_pps
 a=lkkFf9KBb43tY3aOjL++dA==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=yx91gb_oNiZeI1HMLzn7:22 a=EUspDBNiAAAA:8
 a=uorg23y0nfgcnAkg4s0A:9 a=k4UEASGLJojhI9HsvVT1:22
X-Proofpoint-ORIG-GUID: _vJGrcEZ7EPZiUontqtEo1IcADFXEfx4
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDI4MDAyMCBTYWx0ZWRfXwEhjP0HhJZA/
 f29q+K0m5EmFmWBdOZGJu0auPiFv3Q3C2leeNS2VsMjurBmx7V+yD9AG6Av9PM0PQcBZSmT09hT
 KrpV9asFVXNf3JvncPvMtDI82ybDw7OSXh189YvSvu4sZ0jKFDSv+/pxbVSPpuhLlqN2yFwbPU2
 kY/kW1N4MJ3Y+bKniWsZt7UwHzWYKbkAZEHgLFbv5GPJktjlFa/qj8UNiIxqo0JVVKcYloC0b7q
 BBMgGKw1MXmAsnfrHSBLhaYvE0ALZ6/YfGKZrdB1hY7BFyzRS42wJNzYG5WvNnvMCMLmaLZgQ0k
 RCazhORttleR5yp9JlhMMy5c8WmRT1AaGrM2m8VSnOdoALOJaSgFwhgHU/l83UdhJDHE/KjeZcs
 qdpcPZ6Rx5LNa/+g/eotyitqT3zsGdBzHuHY8pslX6AtFTF836BF9R+CWZPSXgi/JD3M6DQgiaX
 1BQZyhDC0Jh1PJqjnCg==
X-Proofpoint-GUID: _vJGrcEZ7EPZiUontqtEo1IcADFXEfx4
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDI4MDAyMCBTYWx0ZWRfXyHtznCUkO5X5
 78MysQhsWGgDrVHK5H7TU/QpVuXR1SuMVscsrzN0coMHxFiZEUFPj7or0To76E46m6x9atFKw2L
 JjoQv62vJS8xfv51zI2g7+QaJjmWXrQ=
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-10-28_02,2026-10-21_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 spamscore=0 lowpriorityscore=0 adultscore=0 bulkscore=0
 malwarescore=0 impostorscore=0 phishscore=0 clxscore=1015 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2610190000 definitions=main-2610280020
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261027_221006_704252_09FDC857 
X-CRM114-Status: GOOD (  19.39  )
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
