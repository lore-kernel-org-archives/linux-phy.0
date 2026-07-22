Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 00D27C4453C
	for <linux-phy@archiver.kernel.org>; Wed, 22 Jul 2026 13:45:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=a39ExgsnSy9k7q1POVBcfmRxaBAGfQ8zOJTByZJkHNE=; b=lfncazq/NaWS3w
	NmHwHVK/tTdobokICu/Pfz8OVXxzBF75tEc+QK3xdip1j68fyR6zhNtKT6OrTxrKm/M3E1XnnqvUU
	L63rk42xGeP8C2Y0WKw7zK60s6iQWgaT0igZFV+hf8DXYnf5fYoOQ/fvSuuWeKgW8u5cYYntna9rP
	f6p70ZRs1FOgjUE6v7BuoQUZ+jn9UDLycK6Sk9zP0LbFV/eGzAFtWO1VN/ORrqYEuA46/qW/s5wbh
	Jl4jsR/2pSa+fKZHZCPC1xW03EC63EOBXHj/rzRpfCAXAU1/K5DpIV+BoCsFPJyTlCqpHRiomJSdv
	tjdVwm1uZJmfSFqpeiHw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wmXGO-0000000BwHD-2bds;
	Wed, 22 Jul 2026 13:45:32 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wmXGJ-0000000BwEs-4B6Z
	for linux-phy@lists.infradead.org;
	Wed, 22 Jul 2026 13:45:29 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 66MDWaFG1027233
	for <linux-phy@lists.infradead.org>; Wed, 22 Jul 2026 13:45:27 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	70IOUuaW7cw8k4RLr+fSBXr1xu6M0q9hq91f5W2ss5A=; b=mm5A8wbz15Zm5rWs
	SWLaEV7kow3N7GdqvMxexsiAwATiBtS/i/F4tWtXg2hf/g4D3Lt9LxpAOrObd72K
	5P4nGhTEXOPw8zKDC+4RMdnpOYRjk+NXVQKgEm+sNkmOMChcRvXc8ETA4FWglTj6
	o4HMrRZ5ImDvrk+NmxebDvJS9YdkDTrRMc60ylFwoqz0za8h3TArzUqcSWzxAunb
	k0/6BYQul5xAST4T70e5kgVXCNwzmhCe6xBsP5Bj4doBgt/ZgAyZ5ogVyjz4uaWk
	IRsIajHtOOSq7HvdW7NDWlfOQ1CKZOJz0n+h5uP3Kx3zS5gnzle2DUa1sTaJX2c7
	UNFj+Q==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4fjt79994r-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 22 Jul 2026 13:45:26 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-51bf321d786so115444551cf.1
        for <linux-phy@lists.infradead.org>; Wed, 22 Jul 2026 06:45:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1784727926; x=1785332726; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=70IOUuaW7cw8k4RLr+fSBXr1xu6M0q9hq91f5W2ss5A=;
        b=Q+1P55V5QiBfO2pz8dSsDsdKtb0K12OdeB2e/m7FfEZM22Cf5isvxmLv0AcyRaiydh
         V/0XuadTLZy5gOp6Hs7hm1IxZblHUOSOPCP0pwg81FE+41dQ8wZV9rmXcXSY+M4NLqU8
         DSWOXs4EV5TzIMctPEgH2bKdqSe1AyCpHTozB+o1632vzXVvCkX1OVV0QtcvzQb4k7IU
         qtSkB4n249bFhzIdwYm8JCfec4KPVvu3qnZrEnk2Zyt5Wzxl2+QakomJJXRNLKW1BwP4
         hTTZQrtxKpsqnbawv6Pqkj+Yo+vr/Zmt4scKMn1zgJBdFDTgCSBVrKO3V8tar/2ofTpu
         b79w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784727926; x=1785332726;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=70IOUuaW7cw8k4RLr+fSBXr1xu6M0q9hq91f5W2ss5A=;
        b=hCYsArJV5L7eL7YZDGTfzxt/Z3iP+G/MWmauoJI++7mOpHOUqqIXLwGcoD7MHMNchQ
         nVebNxd0vGX1NLPWvpJB4dvX+6sqPuOOOXHwHtu74/5nZQipR0hNBc6a8lIEO4tqxW6V
         wykpvTFE/AHfYSp7FWXSeKb9OkyzPNVtRMv+UznNyD5xE4pkLl1ZSBDIjWkZXa5/JeLA
         fQ4EhIlqEVnNHR4p3+N5i/AO9WDv+dX85HaE0aEevipQQ0Yv6Ma9hTTLFtlFl6olVg8L
         hvPNJ7vu8qulyPnVRPLplQHjGaJTInGKht9ZFDqTuChnZMQA88K4dcsjhmXLJCEdWzpG
         UPEg==
X-Forwarded-Encrypted: i=1; AHgh+RrFJTsdQNwW+m75x4gX51ZRxIsCMDKxggK6lH2ygcQWfvLbOHhL2yA6AMOFgj3mnCR4R4j36nmcxxk=@lists.infradead.org
X-Gm-Message-State: AOJu0YwNn8tZBv7AXJns9d5VgZCrKk7Gzy2JljjZ6cgK08cffZkbZqIT
	bD4fEf/44KVVxje0znWMizLLelGOOE5ZNp2BbFRz5vDk9XoeKjQN7TX3k1LT2NlRy8YJTJsr3Ml
	xCuN323XmbdKbq+nPGmyqkXE9TwPOfq3zlKwW63wWlQufXFVLIiT/hFyxn7mJddiYd0rR
X-Gm-Gg: AR+sD10mDTdGlIRLKSkehukrFNBtZ5nJ/a5+WVBiAVHTg0jexk4Ip4sE/Vk1ld6N27T
	MeHKQeT7YYJfzSyo3DbaCOrm8CwUUKRZ9UvMX4vbIqpCX7BjtOOO0pgc9YWRY+X8rPBMed3RQ+M
	NlsTXaYzUi7IwCimhjC6zfs5xvQs5F3NkkPlnfYM7gSJBZOVgQ8EB4LUya0Mnbtp6dGCPWCeOkg
	1TmMwFfhsS0N71lwDns0beSdF7h2MWGZtvpbh/PLjI4IO31tdIVtkM5yWXP5bmaoTX5ZJrKtq0g
	Orwmd7EJ8vJl5yn7zxnwsBRf5eUM1pInFsQAg3owdT3Y/0HXSkSrWstK5iulW0w7/N16AZ2ro1Z
	j4HCWCa6DgtXkE+OpMIK/6cLjmz2HtMEU5QT/L58Afnc2Bu/1A0CGRGNWvh5Bc5UPdkhOcHrJlm
	wcY78jiJlr8NbhKVdWuy2NpEkJbzhy8Z5OhnMpdVS0gM1qMPKggQ==
X-Received: by 2002:a05:622a:4d43:b0:517:9206:10fd with SMTP id d75a77b69052e-5213c10a855mr222837531cf.16.1784727926148;
        Wed, 22 Jul 2026 06:45:26 -0700 (PDT)
X-Received: by 2002:a05:622a:4d43:b0:517:9206:10fd with SMTP id d75a77b69052e-5213c10a855mr222837031cf.16.1784727925598;
        Wed, 22 Jul 2026 06:45:25 -0700 (PDT)
Received: from QCOM-eG0v1AUPpu.na.qualcomm.com ([2a01:e0a:830:450:48e:a2cc:6c4:c92a])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-c1c32ac8c3esm111874366b.23.2026.07.22.06.45.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 22 Jul 2026 06:45:24 -0700 (PDT)
From: Loic Poulain <loic.poulain@oss.qualcomm.com>
Date: Wed, 22 Jul 2026 15:45:17 +0200
Subject: [PATCH v6 4/7] phy: qcom: qmp-usb-legacy: Prevent unnecessary PM
 runtime suspend at boot
MIME-Version: 1.0
Message-Id: <20260722-qcom-usb-phy-fix-null-v6-4-534f7e61b9a6@oss.qualcomm.com>
References: <20260722-qcom-usb-phy-fix-null-v6-0-534f7e61b9a6@oss.qualcomm.com>
In-Reply-To: <20260722-qcom-usb-phy-fix-null-v6-0-534f7e61b9a6@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org, Abel Vesa <abel.vesa@oss.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Loic Poulain <loic.poulain@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Authority-Analysis: v=2.4 cv=Sr6gLvO0 c=1 sm=1 tr=0 ts=6a60c977 cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=RAioF0-LDSMA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=3WHJM1ZQz_JShphwDgj5:22 a=EUspDBNiAAAA:8
 a=PcYcMbZi39MCwOMHHM8A:9 a=QEXdDO2ut3YA:10 a=a_PwQJl-kcHnX1M80qC6:22
X-Proofpoint-ORIG-GUID: LUrQoAom3ZTX-PHkAfR51gQjaBROmn6L
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzIyMDEzNCBTYWx0ZWRfX3vFN10PpBalL
 +QHDhnptLzU+TJLPZCnjbil9zMHKpLsSAjVfYjBSdjYng22CzuTj2dMDOeK/Y3cRyVtLk9sE/G7
 0DwIX9qEL5PXvU3AtXULb3EBVrLQNE1O471efpTst3f5TUvdIjRPcA1nFzkXWa7MZSe2p8ZdU9U
 wxLPgHpPho8axPO4WWQRDeBp8j0QKdl2wb7mitJri1pcgEuzWdyn4XU8teB5WWx/D+Qsp9gNeBK
 E/uY1mUveLhF78pJk48esoDEUjy2pX0aFASGccosZPKnjFauQvZ4Ehuvb9zwgWhxloUnUK4yqxq
 MPNGPens9CtLFbPqoZc3/e7FsbbahN44paGYjmL+69+cCzgG6KUS7kv7UUk1iylrUW0U8RNgY6P
 ZVoYzVp/+O/6R+SSin/qjDo3jvQhrNSzjX/zWdDyVVTsmb5XpJl4zt3gAgJIYANuni8h7XZ+Ndz
 XNJBU36I731ETZmLIJA==
X-Proofpoint-GUID: LUrQoAom3ZTX-PHkAfR51gQjaBROmn6L
X-Proofpoint-Spam-Info: AW1haW4tMjYwNzIyMDEzNCBTYWx0ZWRfXyduYc+IknMCx
 owg+GOO+u94ehuusPh4U+ReTuqbQzKYFbd6qx5Bq5fEnU+hr8uW5fbrHdHv0F8kmiR3cYUMYTaq
 FllEg2UH3CgaNt+pP10IVgSrQ/fs+mo=
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-07-22_04,2026-07-22_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 suspectscore=0 spamscore=0 lowpriorityscore=0 bulkscore=0
 adultscore=0 clxscore=1015 impostorscore=0 phishscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2607220134
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260722_064528_172853_728AB0A7 
X-CRM114-Status: GOOD (  19.75  )
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

Reviewed-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Signed-off-by: Loic Poulain <loic.poulain@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-qmp-usb-legacy.c | 24 +++++++++++++++++++-----
 1 file changed, 19 insertions(+), 5 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-usb-legacy.c b/drivers/phy/qualcomm/phy-qcom-qmp-usb-legacy.c
index fc490589c8e4888770807a60170905a1c7610421..c5160cb89207950361e96edd47a0d15ba590d1bb 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-usb-legacy.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-usb-legacy.c
@@ -1285,10 +1285,16 @@ static int qmp_usb_legacy_probe(struct platform_device *pdev)
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
@@ -1297,23 +1303,31 @@ static int qmp_usb_legacy_probe(struct platform_device *pdev)
 
 	ret = phy_pipe_clk_register(qmp, np);
 	if (ret)
-		goto err_node_put;
+		goto err_pm_put;
 
 	qmp->phy = devm_phy_create(dev, np, &qmp_usb_legacy_phy_ops);
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
