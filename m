Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E184AC4452F
	for <linux-phy@archiver.kernel.org>; Tue, 21 Jul 2026 13:05:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yx1afZsmnUPYDffI6HUnoOHkaZvLoGiyB6TiFO2deJU=; b=da8P7kiovUu6L+
	KTzf8mfh5bcdDq+uh7oAmYQSAtW9tlK6GSHMCPiDCI9tthv40gxB9+bL9aPVNraAvP/kdvkVpKbj4
	wL9IYKCekxq+pU9H8xtcZ6/IH2jsktzk1wZF6G8cI6VRyW/cF46xotKwvY4nIXuyLMYLJr9OGTdeJ
	5IxZxgWh4S+Y2vqFfEjt5H4ETIWpmSWlJ1ARP5OahDWBR4MfKBq2ltKwM7EHvawVtSClbgR0RMfmF
	fz7UjE+tavorpgCiiLmTjG6IGrFVi/cbjSmP5kyyec70/0G83WKGw8xH+8IaKKxcn02omsXPO1UQi
	HqBhGseWhB6DRe3Ubv9A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wmAAW-00000009U4J-2bE4;
	Tue, 21 Jul 2026 13:05:56 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wmAAT-00000009U2w-07mB
	for linux-phy@lists.infradead.org;
	Tue, 21 Jul 2026 13:05:54 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 66LD5qJH1853793
	for <linux-phy@lists.infradead.org>; Tue, 21 Jul 2026 13:05:52 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	0C9IgCI2fyKGPwADUG81tMOL7Xd+RLAneLurfpmZbVM=; b=PCmwzvjZJsGmSwHV
	GJjJJjGLkb4McjKi/J5CJfZeEjpDCBucAKtPx5c0yL87LUVSXFz2wggQNV6c6pw5
	xYVrWJPengSkHx0T29xVbWbyXDvMNB/kypXUrb1AFQb71ptRfXMuc5ow0DEF53MA
	bKvK9J1BOqjAuVZa96oNvQPCa9nokb1xretPhtDQxeupRqEGlbks1mcDsUApfU8f
	BC+CmXtH/1k8Hqj30RBN7QIbKU8AJMqlaVgbVNHbxfGpF210U9aSGKcaMYmpCe08
	RiDCSD1lGqnDYFfEU7uOsXHFpKAi1gZ1JjUPe7Y2TeEoaDuaGgTToIQo6ADwwQOM
	4lUXiA==
Received: from mail-ua1-f70.google.com (mail-ua1-f70.google.com [209.85.222.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4fj9bs801h-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 21 Jul 2026 13:05:52 +0000 (GMT)
Received: by mail-ua1-f70.google.com with SMTP id a1e0cc1a2514c-9674d6a4ca4so7150191241.2
        for <linux-phy@lists.infradead.org>; Tue, 21 Jul 2026 06:05:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1784639151; x=1785243951; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=0C9IgCI2fyKGPwADUG81tMOL7Xd+RLAneLurfpmZbVM=;
        b=DD4iQ72MQ3AGkKGru7gNECWy/pn+krZdZrsNyoAvonW9AiTGXMDJLlcPiPNfYbEIlZ
         wn5IKcsqd6kj3Zh8P+ghoewb2a5LPKJvFEG0WWJgLE6iwz6c32A1Mh6l0R9myAUe6Rtt
         UppEnr7riUjpLgmEu/OBBiSH/A0E8Tc70Xxsi2S3K560AHH3Yy86a0c6PHkW/uVzNDSj
         g+SbHMK65ylkZYoKXE7T6F+NZtOMSGn555m5Xf8MXih+kXGTua2u2v0SpSWyYpqD7r00
         XUMSwH+nvPL/5JMo20u8bAI/KdH4OcqXXYWvcwivgzJ2BwK2PdwYGyIAKSqrwb0mYvKj
         TNog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784639151; x=1785243951;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=0C9IgCI2fyKGPwADUG81tMOL7Xd+RLAneLurfpmZbVM=;
        b=pFYBo3NZEcZB4zCEB/7RAHLh7QUE5BMPBsQpGKTrTjUn3D/jZYShyaW+u2vLb43ALs
         7KNbFUwXp+f8+EIGd9/llPQqbEJgC80qPkkWJ+5w70rPf6j1zlUupsxndY9VpK6FC7m0
         Qq30he3kFLmnsy3Feebm87fDNMNI7INhs8SXNppoMGVdY0LCqAezIfMrhdnpQc2kOEJ0
         71I5ympGfwVyJTloFGdmia9CH7okfyxwvhQrt7uQJeEJlXWxxT9/tG+17I9oB4ddhgdX
         ImhHjIAZ0AIB8FKhhdToAYLOfbIkbmcBy6E8pOIaV+hDltZB6ADk1mWInQ5dZyY/Ej2I
         hyBw==
X-Forwarded-Encrypted: i=1; AHgh+Ro47Uaks+vl3NTQjcov7vshvcM2V7TAPlpJn6DK7eAzbihOyJA+77bbar8KUbiOcKoCMmBaMPtlrvU=@lists.infradead.org
X-Gm-Message-State: AOJu0YwFdzXo8yWvntJKQpkpjmIw6TlbluQwIGi//PN9Z81/QLjDaZ6K
	gHe7siCztCWrBwl4ygT2SAO0GAY3Iu70fnX0hBUwKeET2FhKyBVOk0PiNi13S8TIYJvXdgqNELV
	1bVL8QGp0q2IU0PzCAGsIcPiX4VTAiqoI7QKf/FY14vDABFy4FgJkc7sd+cXTMs3HV3Zo
X-Gm-Gg: AR+sD10B4sj2wzt82G5tu7O4zgcysoh0BJ7vaf2G+hqKt93f1m7qZpQZbW8qfryTyaM
	mYhLwzTJQ1uyTIgPZUoHC2zD0FMZfIilJbrjNqvyXLGaqwp5sqWdZAok3Xim+E6PFxyFZVxOWFy
	aqomdcJM+mJAZj5AtZ05/RW0MaZfVswP2INmHaEr7VWIcsR4e22qMAFTfqCj3/oYWM7o6+0ab0i
	oVdq8iDJgqKKmuzo6rWk2dP3Y3BwZaQYW1+SzHxRiAj8Mgl8mxJgSDthcHVD5vDlmkRLSk6jCfn
	XgWU1+2bvpji1j3mdSsDpFfA685m5ZXGS72WNFETnqMB0oCtUx4PZoqq9oBnIdnO/yuBqbsKsU+
	26YeefoUbW2f4gyCq3a6ouvRlGDDorsqViHmB+9wslLOl9GrhcaXdaeAstJgahPNFJDOQZccVol
	Gwjp/0QqbrPeSW0Jsa3cniOovAsiiXBjtyc1oMusKKUQPZjWCy/3A=
X-Received: by 2002:a05:6102:3f13:b0:745:6b08:c338 with SMTP id ada2fe7eead31-747534ca994mr7023310137.10.1784639151532;
        Tue, 21 Jul 2026 06:05:51 -0700 (PDT)
X-Received: by 2002:a05:6102:3f13:b0:745:6b08:c338 with SMTP id ada2fe7eead31-747534ca994mr7023246137.10.1784639150566;
        Tue, 21 Jul 2026 06:05:50 -0700 (PDT)
Received: from QCOM-eG0v1AUPpu.na.qualcomm.com ([2a01:e0a:830:450:751c:d61c:c91:60dd])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-c17009ae04bsm591898066b.8.2026.07.21.06.05.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 21 Jul 2026 06:05:49 -0700 (PDT)
From: Loic Poulain <loic.poulain@oss.qualcomm.com>
Date: Tue, 21 Jul 2026 15:05:45 +0200
Subject: [PATCH v5 1/5] phy: qcom: qmp-combo: Prevent unnecessary PM
 runtime suspend at boot
MIME-Version: 1.0
Message-Id: <20260721-qcom-usb-phy-fix-null-v5-1-a181e2adbd2d@oss.qualcomm.com>
References: <20260721-qcom-usb-phy-fix-null-v5-0-a181e2adbd2d@oss.qualcomm.com>
In-Reply-To: <20260721-qcom-usb-phy-fix-null-v5-0-a181e2adbd2d@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Abel Vesa <abel.vesa@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Loic Poulain <loic.poulain@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Proofpoint-ORIG-GUID: MJsALJvm81THQa4n4kj5_dWnNX22lzFX
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzIxMDEzOCBTYWx0ZWRfX8KB1hSCFQC7E
 szxrQT01HNI7oyMPtsLudzo8t4+DGdzHgrVgrWPo/nHtXAiuaoMBuABwKjAQriYQ2KA6GkIg5wu
 gnhpm3ZTOXPoRE1zG0nJghkRPn3JbvMzZRIy3xnkS7OCnCSUCIUQvwpfSANpuLbjetQcgQnncGZ
 2yXywMYA1f5R4qvYeBqwUOZSN1ERZixDcxFUMI1uZXarl3nkewgiLsfB7X/lgrHyHJ0p57xppnS
 yW+U+Y2FKTsk20W7L6OHFBho1+5bzOCREsBN0YWB8HkBOX4u5dm1SumTIz95tFfQLpN2xmFt7XW
 oRi+4/XShAANOpsEKN1idIC7ochxUtcehHK6BEW4wZRP7JfDMNT78eSqXuLs8WBK2pJQFD2p3tx
 nuo/tz6j0wdNSu+XqE7lOw0OqgdxrXP4TFF8j4q4fpODUbuEUCxC5QBH3liVzUZDjYJz35Y30Hp
 6jboRes62iSLaXPzb0g==
X-Proofpoint-GUID: MJsALJvm81THQa4n4kj5_dWnNX22lzFX
X-Proofpoint-Spam-Info: AW1haW4tMjYwNzIxMDEzOCBTYWx0ZWRfX7MqsfhyJlanj
 CDDvZfE42K1P0gqt+YraXOwphTEtnNpuVLr9TIjhW0JEAdDMLbLg3dShSqtV1zmo3X6vR3bUUJ3
 cUXLFblQBIfcvrcEg71RfH0vdlQbWmY=
X-Authority-Analysis: v=2.4 cv=QK1YgALL c=1 sm=1 tr=0 ts=6a5f6eb0 cx=c_pps
 a=R6oCqFB+Yf/t2GF8e0/dFg==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=RAioF0-LDSMA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=yOCtJkima9RkubShWh1s:22 a=EUspDBNiAAAA:8
 a=PcYcMbZi39MCwOMHHM8A:9 a=QEXdDO2ut3YA:10 a=TD8TdBvy0hsOASGTdmB-:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-07-21_01,2026-07-20_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 spamscore=0 phishscore=0 impostorscore=0 bulkscore=0
 suspectscore=0 clxscore=1015 adultscore=0 lowpriorityscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2607210138
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260721_060553_066769_6545639D 
X-CRM114-Status: GOOD (  17.74  )
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

Runtime PM has to be enabled before creating the PHYs, since phy_create()
only enables runtime PM on the PHY devices if it is already enabled on
this parent device. This opens a small window where the device can be
runtime suspended after pm_runtime_enable() and before the later
pm_runtime_forbid(), causing an unnecessary suspend/resume cycle while
the PHYs are not yet registered.

Take a runtime PM usage reference with pm_runtime_get_noresume() before
enabling runtime PM and release it once the PHYs have been created to
prevent the device from being runtime suspended during that window.

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Reviewed-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Signed-off-by: Loic Poulain <loic.poulain@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 19 ++++++++++++++-----
 1 file changed, 14 insertions(+), 5 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
index cdcfad2e86b1d37650c4d7b0433319837ee9c9d4..affc8e040bb968a5b9d0b6f6fc2694c471368729 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
@@ -4934,10 +4934,16 @@ static int qmp_combo_probe(struct platform_device *pdev)
 	if (ret)
 		goto err_node_put;
 
+	/*
+	 * Enable runtime PM before creating the PHYs, phy_create() only enables
+	 * it on the PHY devices if already enabled on the parent. Hold a usage
+	 * reference so callbacks cannot run until the PHY is ready.
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
@@ -4946,14 +4952,13 @@ static int qmp_combo_probe(struct platform_device *pdev)
 
 	ret = qmp_combo_register_clocks(qmp, usb_np, dp_np);
 	if (ret)
-		goto err_node_put;
-
+		goto err_pm_put;
 
 	qmp->usb_phy = devm_phy_create(dev, usb_np, &qmp_combo_usb_phy_ops);
 	if (IS_ERR(qmp->usb_phy)) {
 		ret = PTR_ERR(qmp->usb_phy);
 		dev_err(dev, "failed to create USB PHY: %d\n", ret);
-		goto err_node_put;
+		goto err_pm_put;
 	}
 
 	phy_set_drvdata(qmp->usb_phy, qmp);
@@ -4962,11 +4967,13 @@ static int qmp_combo_probe(struct platform_device *pdev)
 	if (IS_ERR(qmp->dp_phy)) {
 		ret = PTR_ERR(qmp->dp_phy);
 		dev_err(dev, "failed to create DP PHY: %d\n", ret);
-		goto err_node_put;
+		goto err_pm_put;
 	}
 
 	phy_set_drvdata(qmp->dp_phy, qmp);
 
+	pm_runtime_put(dev);
+
 	if (usb_np == dev->of_node)
 		phy_provider = devm_of_phy_provider_register(dev, qmp_combo_phy_xlate);
 	else
@@ -4977,6 +4984,8 @@ static int qmp_combo_probe(struct platform_device *pdev)
 
 	return PTR_ERR_OR_ZERO(phy_provider);
 
+err_pm_put:
+	pm_runtime_put_noidle(dev);
 err_node_put:
 	of_node_put(usb_np);
 	of_node_put(dp_np);

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
