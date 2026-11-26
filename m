Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65E87606A326
	for <linux-phy@archiver.kernel.org>; Thu, 26 Nov 2026 18:59:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=jg3QDLkE;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=MK+PgnPw;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=ieX7u5KV
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=2sVlHPsHrR96lelVeFgi9jsbFxAIGjZckU19AhgxFQs=; b=jg3QDLkEPntPf2xaImTjH025WE
	+nC+cUey4p89wkQMc97bJpY4C0M1dWFSXd24JuH0KgVs32VmzguOlE7ik4+ntfAcDECYTns6odXWB
	lHIJV3PHU9ZbFa2K+uaIm+xg4iwD8Ld9rUKA6Hf5Kt/60GCFslc7d2Q3dxAkFqGxvC//iqaq7YbLG
	ozXTskrZMIzfv/NaSz4ziaa4DYjm8Dpy/fimStYY4mbIdb9QTG7++bmv215HZ1n/a5YeIMP4tFYKK
	inBECo5ODizsb5YUl9kitnSVE5eSFpnrZVqSzyGvKDmW9WOH9o43TUrUqlgBnCRhMfovO3io7Cs43
	7rYVW0hA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWehD-0000000ED8v-0fYh;
	Thu, 26 Nov 2026 18:59:51 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWehB-0000000ED8M-0aQJ
	for linux-phy@lists.infradead.org;
	Thu, 26 Nov 2026 18:59:50 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6AQFuI283850936
	for <linux-phy@lists.infradead.org>; Thu, 26 Nov 2026 18:59:48 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	AhIc54J/K4e2MmEA6laRAf4VD5KH58JtaSUM84rvsJE=; b=MK+PgnPwU6+GUzoN
	AcnNkwEYSUDutNe+H0SmSllz4ZaJzG76xQSMz3DJsiuF5Jfn5ZV1xFW960GJHveo
	7YuUMcG77MbXc586q1hIhg0i0DMsie+u6dkAGWXMlhScwL9e8dsRGXyWlxUWuq9X
	pXn28xEzU1yOKA5VeCPVeAzls9p52Bf5ZO1vS2Venca/A8qLpmYdvsn5aG5W3VCZ
	FWve6x+qpHMQ0Zn1QNt0+p7GahqCyRTn5vawV9RQAuhkpQf4fbPko5k1PGiAm05U
	ao+IsY1fdtlnsB1urjM0aGrodwgNPrODwj91vto0rFXUSgNnCR+G7kP0VoPFy4wt
	jwNQ6A==
Received: from mail-dl1-f70.google.com (mail-dl1-f70.google.com [74.125.82.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4j6h7ga5yf-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 26 Nov 2026 18:59:48 +0000 (GMT)
Received: by mail-dl1-f70.google.com with SMTP id a92af1059eb24-1b588e4bd7fso2388915c88.0
        for <linux-phy@lists.infradead.org>; Thu, 26 Nov 2026 10:59:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1795719587; x=1796324387; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=AhIc54J/K4e2MmEA6laRAf4VD5KH58JtaSUM84rvsJE=;
        b=ieX7u5KVCjG1OdPHCT+UjMd3Y16SVu8WywCOheZ6XeS0T+o0W5K+7yTd5o4VmnXM+C
         7WORLu1pu60SeLe+5JW2i9q3+xrcJ6069yxWJLz1Vhaw6u1+/4yw9VQ4vLwygoPbDDqd
         AmaIn1jxrYS8+PhtUdXfPmsLyAzT6hioFjUIepiRH5sdTPdYyksZC3aOqR9YCDtVKwVa
         8aMaeOzlwRkppUe65j2ygg28q75H/v2kh3ePb6X2dAoiAhNcLvnX4FApyGZoV74epD41
         gHPn24yMHic4TzQq3XB1xgHVGzQYjbPaajYUjsVhZ+CSr89si5/aHQ8psXiLw5wB4XIZ
         rkwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1795719587; x=1796324387;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=AhIc54J/K4e2MmEA6laRAf4VD5KH58JtaSUM84rvsJE=;
        b=yC+ZTcUjTC4gK2zpvIzQeZIpWpiJCV1MjO+zChJ4j8S2vyz5R6qauCQjZDCiY7Yzf/
         6egpdEm1sxgYwHq6uxAY5huDTYCnPsWgz50IYxqwPx9O+5jlG1WOV6U2J3DWNVflcOQu
         dCqVmk9VgT1fDiaZ+TE4cxW8psRycOsbEeiJ9oNOMCdKF/4rMY83hilRv/H2rVCZLKdw
         +vWZ7vGMCPollyoNCP9VJbLr9dZoepLvf66BUCY4Il+87dxXhU6A2ztqS+hRZ3wS3Egp
         xMtwXgWKX3tFusxqswE8w5g7IgYiVkYyfIYIgtvrJD3z+OcZlzcV5uXEjwrAdvv7B1dX
         Dq+A==
X-Forwarded-Encrypted: i=1; AL+hErEmoQmdbdaClGi+7N3ZK1zSWmtCn72qDx2yIxANnJ3ByWwCCGJ1/JutmXFR2HNu1K6x7w6vUC/Sq9Q=@lists.infradead.org
X-Gm-Message-State: APuU4Z9CZAkCMyBGbGxxzCE+cyyxU6vD8l5lYHutvpE5jBM0OwrjHVZO
	j6w4uekzMMi4yH79qFM8ZNxp43gILsdTTSU5Qry4NQbk3zk690xq+oE/XKII0DbB5Gcy8ED91zH
	z2EtFHjjLbQC/QL/Hg483UOZ1r/nYR84kwMtpFDzeOuHMZSH1OYog8cqTOCD0cV6A6V5cpYCNAF
	eA
X-Gm-Gg: AZFdTZf2SQRu88ADQz80x/HvYOldssCrYwnSOxgA9KUJud2ipGQcYkzMXyDHnRvhwyc
	QXnyKsPwOO6UyivzZIzppz/L4Up+5XTjVUXrLxFCyOk5BTeIyoi5QQXk2mPh4iyo83WldyWx/19
	GSqoTKyDap+D/g5gy2nfZwp3aCwjygCzeRDb9uF+e9xWjzF/rjj/82riNP+eduRbrcsCi1vfaWw
	OJx4SKKbMCs4DMBMwFg++mZIYoA+wNiZgx7cQ6rbl9KQGvL1Y6gX+lTyetcUgptLZmEr09xe/MO
	0UJLxtM9+u2AaaTTQILMAFLqks3uyOX1FM0boNKgA9qn3LrXpbaOIK1rhb6kHgtTSFdjvFqEGD9
	XWVxVlp2ndlU6OsbQBIufBR2F6r5iReWL1IRJwfwW6L/AP34tzdRxBuxup0UQDlZ1++L9JOgnqC
	eBZ3Ua
X-Received: by 2002:a05:7022:3a83:b0:184:992:c9ec with SMTP id a92af1059eb24-1b55693aaabmr29817019c88.38.1795719587127;
        Thu, 26 Nov 2026 10:59:47 -0800 (PST)
X-Received: by 2002:a05:7022:3a83:b0:184:992:c9ec with SMTP id a92af1059eb24-1b55693aaabmr29816968c88.38.1795719586636;
        Thu, 26 Nov 2026 10:59:46 -0800 (PST)
Received: from hu-jkona-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-1b5567ffa8csm60868190c88.7.2026.11.26.10.59.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Nov 2026 10:59:46 -0800 (PST)
From: Jagadeesh Kona <jagadeesh.kona@oss.qualcomm.com>
Date: Fri, 27 Nov 2026 00:27:09 +0530
Subject: [PATCH 1/8] clk: qcom: gdsc: Use GenPD hwmode to keep GDSC enabled
 across suspend
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-Id: <20261127-usb-pcie-gdsc-suspend-v1-1-485a08ffdc6f@oss.qualcomm.com>
References: <20261127-usb-pcie-gdsc-suspend-v1-0-485a08ffdc6f@oss.qualcomm.com>
In-Reply-To: <20261127-usb-pcie-gdsc-suspend-v1-0-485a08ffdc6f@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>, Abel Vesa <abelvesa@kernel.org>,
        Stephen Boyd <sboyd@kernel.org>, Brian Masney <bmasney+clk@redhat.com>,
        Jerome Brunet <jbrunet+clk@baylibre.com>,
        Thinh Nguyen <Thinh.Nguyen@synopsys.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
        Ulf Hansson <ulf.hansson@oss.qualcomm.com>
Cc: Ajit Pandey <ajit.pandey@oss.qualcomm.com>,
        Imran Shaik <imran.shaik@oss.qualcomm.com>,
        Taniya Das <taniya.das@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        linux-usb@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-pci@vger.kernel.org,
        Jagadeesh Kona <jagadeesh.kona@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Proofpoint-ORIG-GUID: 0oIDOsgWALrhpLNdqGEgul79IhY9hbJQ
X-Proofpoint-GUID: 0oIDOsgWALrhpLNdqGEgul79IhY9hbJQ
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMTI2MDA3NCBTYWx0ZWRfX6xRDmcI+b7xT
 AQ8xknrKZufXjKmWYvM3GuRih8lME8ZMtuJj0s5ck5mgxe5T9KwqKoRRAzWi5N7kIXhIcrrlT+G
 OY29j02Jqy/0nJAplUFed4q69sJj019xPyVJ0qBP28hM5DoXZ/DZ7+b+Jpw6t4SOd2hIWoD0Fm9
 qxa8PVVRcxAOttW1/hEgtJENrlo9jfbwMQgUowGx3AUWm8amHP8GfvFUudcqbLnkugxK3EhMJ4S
 tcA4s1cYd5uJlD3uy6wSJr2k1kAfDsUevMF+S+l75BOp/x4AchDnubIw0F6SY93fBbsta0sSQw8
 PhK4d47lcre9N1KextBuSjG8P8zSjTmivyb83mXsvG21JE+jmmiMFPPz+N751MxPJ4guhC55fM/
 wDbtJ5YJlgGxWCpv4o9bSW/C8/NSNhvPUSerxzSHiz9lKyIYeSiHgt6ADJyUnajNQJOSpKaKOCi
 zgRFwaNdM0cQn1fn9lg==
X-Proofpoint-Spam-Info: AW1haW4tMjYxMTI2MDA3NCBTYWx0ZWRfX1EW6jxoGmDAY
 moVQ4bL9bavO18v56FBHxtvU5vC6S22Wov+iA5tK6TXLAmylNad3rhyf9ZYRVtzd6lZMiBZQt80
 knG10G49tuJTfm20XZHEoOqypnTwPqg=
X-Authority-Analysis: v=2.4 cv=L4GI0OT8 c=1 sm=1 tr=0 ts=6b0881a4 cx=c_pps
 a=SvEPeNj+VMjHSW//kvnxuw==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=zJRp6_cAMcgA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=gowsoOTTUOVcmtlkKump:22
 a=EUspDBNiAAAA:8 a=NuUCN_VPl_z90dSYpTgA:9 a=QEXdDO2ut3YA:10
 a=Kq8ClHjjuc5pcCNDwlU0:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-11-26_04,2026-11-26_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 bulkscore=0 suspectscore=0 malwarescore=0 lowpriorityscore=0
 clxscore=1011 spamscore=0 impostorscore=0 phishscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2611040001 definitions=main-2611260074
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261126_105949_321272_7A78939C 
X-CRM114-Status: GOOD (  15.93  )
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

USB and PCIe GDSCs need to remain enabled across system suspend for
certain use cases, such as USB host mode and PCIe non-D3cold. These
GDSCs currently use PWRSTS_RET_ON, which keeps them enabled after
their first enable even when consumers no longer require them.

These GDSCs have a HW mechanism to stay enabled during suspend while
allowing the parent voltage rails to turn off, with HW handling the
parent transition to active voltage rails. Use the existing GenPD
hwmode interface to let consumers dynamically request this behavior
only when required, and clear it once no longer needed, allowing the
GDSC to be powered off when unused.

Signed-off-by: Jagadeesh Kona <jagadeesh.kona@oss.qualcomm.com>
---
 drivers/clk/qcom/gdsc.c | 21 +++++++++++++++++++++
 drivers/clk/qcom/gdsc.h |  2 ++
 2 files changed, 23 insertions(+)

diff --git a/drivers/clk/qcom/gdsc.c b/drivers/clk/qcom/gdsc.c
index be9c14eb7b064f988bb4b330c8784cab82e43b2d..7b2b9ad0485e6035af6c72d035ceb2bb8f4155e5 100644
--- a/drivers/clk/qcom/gdsc.c
+++ b/drivers/clk/qcom/gdsc.c
@@ -345,6 +345,13 @@ static int gdsc_disable(struct generic_pm_domain *domain)
 	struct gdsc *sc = domain_to_gdsc(domain);
 	int ret;
 
+	/*
+	 * Skip GDSC disable if consumer drivers requested
+	 * to keep the GDSC ON in HW even after suspend.
+	 */
+	if (sc->hw_stay_on)
+		return 0;
+
 	if (sc->pwrsts == PWRSTS_ON)
 		return gdsc_assert_reset(sc);
 
@@ -746,3 +753,17 @@ int gdsc_gx_disable(struct generic_pm_domain *domain)
 	return 0;
 }
 EXPORT_SYMBOL_GPL(gdsc_gx_disable);
+
+/*
+ * set_hwmode_dev callback for GDSCs that let a consumer request that the
+ * GDSC stay powered in HW across suspend, instead of being torn down.
+ */
+int gdsc_set_hw_stay_on(struct generic_pm_domain *domain, struct device *dev, bool enable)
+{
+	struct gdsc *sc = domain_to_gdsc(domain);
+
+	sc->hw_stay_on = enable;
+
+	return 0;
+}
+EXPORT_SYMBOL_GPL(gdsc_set_hw_stay_on);
diff --git a/drivers/clk/qcom/gdsc.h b/drivers/clk/qcom/gdsc.h
index 2f9665b664e606234fcc632c3f6b302a448d06a7..12bf74a1b2a431cefdab955de15ae6b01db7a10a 100644
--- a/drivers/clk/qcom/gdsc.h
+++ b/drivers/clk/qcom/gdsc.h
@@ -79,6 +79,7 @@ struct gdsc {
 	bool				needs_icc;
 	unsigned int			icc_path_index;
 	struct icc_path			*icc_path;
+	bool				hw_stay_on;
 };
 
 struct gdsc_desc {
@@ -94,6 +95,7 @@ int gdsc_register(struct gdsc_desc *desc, struct reset_controller_dev *,
 void gdsc_unregister(struct gdsc_desc *desc);
 int gdsc_gx_do_nothing_enable(struct generic_pm_domain *domain);
 int gdsc_gx_disable(struct generic_pm_domain *domain);
+int gdsc_set_hw_stay_on(struct generic_pm_domain *domain, struct device *dev, bool enable);
 #else
 static inline int gdsc_register(struct gdsc_desc *desc,
 				struct reset_controller_dev *rcdev,

-- 
2.56.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
