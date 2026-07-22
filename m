Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2B0BFC44536
	for <linux-phy@archiver.kernel.org>; Wed, 22 Jul 2026 13:45:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=flgw7cP54DhTksB0uzEMT1tc7ZQDonwBb42Qdkn9gNY=; b=LtFI+IVVNvwYlE
	NuFRY1eLR0VH0Dl0+tY2HwNVgq0jSubInNYQm81aeAVaa8SY6624dJTtTK63t07HfZZf5zpAVPBNE
	1aO9yEgSOAKOZX/BRe1DPvU4rFT5JnqU2KoSapbJtWYIuC1+0s2OZPetLDM7BNC2YOT1yQSyZji4m
	cjs9oEvD+/VppKRDYB3dTd7A+cmT7HdWkjaVPcPAKKg5VkMqRrLwP6M+2eLnE56riHUCwv8Vw9r1S
	waEsonHBYQbbtlydmVjzkCurFv4lkn7s1kbooPBC/IQpkpFTKdiAyiJiFBOItBJb7t+B6H9GMj3VW
	C3YCbHIAnQZ434dlBdZg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wmXGR-0000000BwJF-3aM8;
	Wed, 22 Jul 2026 13:45:35 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wmXGP-0000000BwHC-0tR6
	for linux-phy@lists.infradead.org;
	Wed, 22 Jul 2026 13:45:34 +0000
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 66MDWgR81033829
	for <linux-phy@lists.infradead.org>; Wed, 22 Jul 2026 13:45:32 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	BYEpALra3wQvxDTz/+9CDY4cEEc59ITruLKAOEg7+3E=; b=ZF7AS5I9BrH4Z8U5
	8VCfSpgav/8iZDnQ6PJmG+PcnjGyYu4tZuGnQDZTyWKW+rFoG1WFyjcAmVMYaU6R
	dgY0LzUX+Qp2EnzlxLCyrzOWV5KDtaQcqdzmBciRVB6vK03feG+AxLlBG3+Dr+Yw
	nEK6E/ugQCt0swgP5J55plFd5MKoV7zgryybbTVJfF4IAuXM7ENtdcb0+upl3pGi
	7Yp4TO8GIMIfBu4Q+tJkpLWfX0XWN45XOv5K55FZIirkSVlMmKb15aoW2Jmw+oMk
	SObfAYJmjd7McgN9xjMz+bghHf7vFra5C2VvLpb6jwJkR/JIIgMAQ76C6J1jvBN6
	3+6IsA==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4fjpxdj3td-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 22 Jul 2026 13:45:32 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-526da7e3c9dso30768201cf.1
        for <linux-phy@lists.infradead.org>; Wed, 22 Jul 2026 06:45:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1784727931; x=1785332731; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=BYEpALra3wQvxDTz/+9CDY4cEEc59ITruLKAOEg7+3E=;
        b=QrWmQT7XDtwBSdKWFvNMWF0vv4patzo+Fu+/bFYmWuNf6yEJU+mVF4qC8AycRhpGrF
         iqS3rU18aE9qPUfNBkKhl/fr1BxDY0n2fBNH1qqNQ7BCsHR6nAT6MpJq8i62gS/vWe+U
         fP7Ybu8Zf+qrdHTKVnvmr9NUT4ETZssynhyaBmAm8XuO8d4Y6uabauh5t/SBtsvzfE7J
         crbLtNPEzQF13Crsxhv3ZlWB1pk7zdf9d1fJWXfIW3IWsMs8JPEz7opMxoy/k0y5egth
         mRkJdf3pQqS8aurZ+E/hr392nrl2A9pECox1Y9QBTeoa/Pl13WRNRsR4plPsGpYZZ+Wi
         DSxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784727931; x=1785332731;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=BYEpALra3wQvxDTz/+9CDY4cEEc59ITruLKAOEg7+3E=;
        b=baQUAktFtHubafgAV54h36l8U3cVu/eSmazVgj/dbWUBESDEkE1ludghNH6V/LjvrH
         lvcdGuTApIKTgqsPhQW/7Kl+0M8tnrVVBACkXf++NrjR0PaNjaiTDKtGWa54NGX34heQ
         MSv4fIdYUh36sGtGCHSCkvT1GzF4Tp2HKr2QPT3QaUKEaQ+4zGa1WvWh475+8huCo9n9
         ko7xfQ1tHqhBofAmTo0zlqnaWqYRsasgiXTXUc3Vn86NPzgyMWDixlQ8mIxdJSPuGYoz
         0etFWCZjh6egaCwO8My4zrTGnWEEJO8Hkx5jgP3tSwX7eN9h+z9Kkb6Tv9c5IZwXKx9a
         YxiQ==
X-Forwarded-Encrypted: i=1; AHgh+RoA/pRA6sOgOEFj89upwhCdhkiAz2ysitNZu7L7xPvhlVGULAQ5PjZ2IE5xyU6YoJyuVclDf7g9NCA=@lists.infradead.org
X-Gm-Message-State: AOJu0YxPKmGfISBU6OU7smUkP8Pjmrjv7ifkZ7t3Gmn30MjIAyR6E9Tl
	eBndq1ZsvQHPgsyqqm+4jq5IG+tMjZRZ6OB0/kvkNmAfuZJCp6dui6HPoUydcl6fZ+9dmw2iGCz
	OrPXC785QMcJ2uiosjQ4J/qMPkb9XBBaDLC7v9ML0FH49zqJa78EqMNEPV3eheOdxqgVT
X-Gm-Gg: AR+sD13A1sVbLco+OIV9FYuFwgGQc2YpNAT9x77WgZi2Qtoc/481Wyzh6q0NEsEayHB
	/E6sq1w7YZzXiM2OgIdVgus4c+Etl7COdMl74rZVXh0EiKD9c8fdVP1Hqz8iYss2HvAa3E0hrs1
	xG9+HtCBeTb9iSUwR0WZcKBkFt937J6meNClyTR+KwxQqsNBN2FPxtFN+RlLoUopYqEQRX2Of6a
	IXbvF4fixJ8R6xcYp9PmVvjzFW3v9qkNaXQZb7YC/TqrIPIN0VSMGF1TN1tGIj502dqofoRso8S
	F1zlOBDbUju14xGe7oCvNjhALk6VIZ0/OqxssCsJB5paxjVwR3CGvACJJGI18A62lu82K6KdPfJ
	2VUpIX4M5WgnF3MPHWlosMIELBgTKNbbiYAhyMHi6BmT/Z8yx87g57Vxvy6QI66li3C2eBKyKe1
	yAxzbOmsj5lBIWQ1zT2xd0j1/p10Si/j2UJHADJtoLtSgXYxuoxw==
X-Received: by 2002:a05:622a:302:b0:51c:7b12:600b with SMTP id d75a77b69052e-5213e889af0mr216086341cf.87.1784727931365;
        Wed, 22 Jul 2026 06:45:31 -0700 (PDT)
X-Received: by 2002:a05:622a:302:b0:51c:7b12:600b with SMTP id d75a77b69052e-5213e889af0mr216085861cf.87.1784727930749;
        Wed, 22 Jul 2026 06:45:30 -0700 (PDT)
Received: from QCOM-eG0v1AUPpu.na.qualcomm.com ([2a01:e0a:830:450:48e:a2cc:6c4:c92a])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-c1c32ac8c3esm111874366b.23.2026.07.22.06.45.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 22 Jul 2026 06:45:29 -0700 (PDT)
From: Loic Poulain <loic.poulain@oss.qualcomm.com>
Date: Wed, 22 Jul 2026 15:45:20 +0200
Subject: [PATCH v6 7/7] phy: qcom: qmp-usb: Prevent unnecessary PM runtime
 suspend at boot
MIME-Version: 1.0
Message-Id: <20260722-qcom-usb-phy-fix-null-v6-7-534f7e61b9a6@oss.qualcomm.com>
References: <20260722-qcom-usb-phy-fix-null-v6-0-534f7e61b9a6@oss.qualcomm.com>
In-Reply-To: <20260722-qcom-usb-phy-fix-null-v6-0-534f7e61b9a6@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org,
        Loic Poulain <loic.poulain@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzIyMDEzNCBTYWx0ZWRfXxJj1KnRqsYyW
 U/UBRxRj2eqTjaPMJfep1l/wFcDdGO2aoB4TDHcRgpaO2Bit89y017uTlvjg7sDIsb9064NuXY2
 erU0cGiNRowmdVX74v3tiW4IxBPqjBlD1v/a2H44aU0srGRaMDS5UuZ265jxnB4N9cP9WIWtQLl
 4fhucGpXuBzp3dAdyOwkXBFSjOR45hnsluIVOFrwk8pzwxOu6Y72U5Q6F/+E4k8gTW3OaJxR8dV
 N3hxVI7o0gTrPKDfV+OdVsmDGJ/xJcgKwmpw87kWtvDCx7qbR5UPxY86aVAZ34+pnyJ5lyghGGL
 AL8gcJ36R5Jc8BDvnuFmXBGWrbx3uBaSSJ9B6St3VpiIVkfiapYpU2HdGHTiYDTr5lWvGFpBEMY
 D3Um24E4SQ9eM74cxhIfg0pF2csYDASTtFVsByCyJCjhngvAwcx+09MosOCgZ1K/cWSmV5BsefI
 rb7lmrkr3F9XOe4I7Qg==
X-Proofpoint-GUID: RCpOx4GKXTdVI1YxVbd29KCtC0AQPHU5
X-Proofpoint-Spam-Info: AW1haW4tMjYwNzIyMDEzNCBTYWx0ZWRfX0bcwrZ67QJQI
 CeOBUHW0HLdj9Y7nSl7SP5UrZZn4c6VKcXh2+8oA5+7lSYSfYHd0ahCpZNkDh75v5JiUS6IwEbS
 /X+6Ce3/zpqMrJnf7PLpTp54vSrCfi0=
X-Authority-Analysis: v=2.4 cv=b7iCJNGx c=1 sm=1 tr=0 ts=6a60c97c cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=RAioF0-LDSMA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=_glEPmIy2e8OvE2BGh3C:22 a=EUspDBNiAAAA:8
 a=PcYcMbZi39MCwOMHHM8A:9 a=QEXdDO2ut3YA:10 a=uxP6HrT_eTzRwkO_Te1X:22
X-Proofpoint-ORIG-GUID: RCpOx4GKXTdVI1YxVbd29KCtC0AQPHU5
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-07-22_04,2026-07-22_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 priorityscore=1501 suspectscore=0 spamscore=0
 lowpriorityscore=0 bulkscore=0 adultscore=0 impostorscore=0 clxscore=1015
 phishscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2606150000
 definitions=main-2607220134
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260722_064533_386796_96CAE38B 
X-CRM114-Status: GOOD (  19.82  )
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

Runtime PM has to be enabled before creating the PHY, since phy_create()
only enables runtime PM on the PHY device if it is already enabled on
this parent device. This opens a small window where the device can be
runtime suspended after pm_runtime_enable() and before the later
pm_runtime_forbid(), causing an unnecessary suspend/resume cycle while
the PHY is not yet registered.

Take a runtime PM usage reference with pm_runtime_get_noresume() before
enabling runtime PM and release it once the PHY has been created to
prevent the device from being runtime suspended during that window.

This also makes the probe path safe independently of pm_runtime_forbid(),
which is a good preparation for potentially dropping the forbid() call in
the future and letting runtime PM be enabled by default.

Signed-off-by: Loic Poulain <loic.poulain@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-qmp-usb.c | 24 +++++++++++++++++++-----
 1 file changed, 19 insertions(+), 5 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-usb.c b/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
index bb905c437a01e3b898b7259abe3e49df4756fc5b..b0790bcf0bc86459d0658ea1290888273c4ff391 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
@@ -2419,10 +2419,16 @@ static int qmp_usb_probe(struct platform_device *pdev)
 	if (ret)
 		goto err_node_put;
 
+	/*
+	 * Enable runtime PM before creating the PHY, phy_create() only enables
+	 * it on the PHY device if already enabled on the parent. Hold a usage
+	 * reference so callbacks cannot run before qmp->phy is assigned.
+	 */
+	pm_runtime_get_noresume(dev);
 	pm_runtime_set_active(dev);
 	ret = devm_pm_runtime_enable(dev);
 	if (ret)
-		goto err_node_put;
+		goto err_pm_put;
 	/*
 	 * Prevent runtime pm from being ON by default. Users can enable
 	 * it using power/control in sysfs.
@@ -2431,23 +2437,31 @@ static int qmp_usb_probe(struct platform_device *pdev)
 
 	ret = phy_pipe_clk_register(qmp, np);
 	if (ret)
-		goto err_node_put;
+		goto err_pm_put;
 
 	qmp->phy = devm_phy_create(dev, np, &qmp_usb_phy_ops);
 	if (IS_ERR(qmp->phy)) {
 		ret = PTR_ERR(qmp->phy);
 		dev_err(dev, "failed to create PHY: %d\n", ret);
-		goto err_node_put;
+		goto err_pm_put;
 	}
 
 	phy_set_drvdata(qmp->phy, qmp);
 
+	phy_provider = devm_of_phy_provider_register(dev, of_phy_simple_xlate);
+	if (IS_ERR(phy_provider)) {
+		ret = PTR_ERR(phy_provider);
+		goto err_pm_put;
+	}
+
 	of_node_put(np);
 
-	phy_provider = devm_of_phy_provider_register(dev, of_phy_simple_xlate);
+	pm_runtime_put(dev);
 
-	return PTR_ERR_OR_ZERO(phy_provider);
+	return 0;
 
+err_pm_put:
+	pm_runtime_put_noidle(dev);
 err_node_put:
 	of_node_put(np);
 	return ret;

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
