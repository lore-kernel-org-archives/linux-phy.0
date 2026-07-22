Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AC4C3C4453E
	for <linux-phy@archiver.kernel.org>; Wed, 22 Jul 2026 13:45:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=o1Rys6sVQvH1CA2gxg4xJkDbbW61TxuHQObFAYUVNu0=; b=iAdcJcUvQBX1+t
	dwCWCdmk4Qq6qMxqgBnv0K5UIaHZigte4q8XQOYkmAn8HBEJLonKxBWlYLmQnA4OqR7TNlTlAlSgm
	UDLXiJCblQje6Jp/AvYXba8WWMLbIw4l/zQwnkySH5663uCcFn8DQKqOo2qXS6zzulDbNbNdSyuXz
	V0jGWHvx61xdx+n6yfVcWXDr0MP/rMTjAIpZHNd6xwOQW9B9Do3ywKWGDvoS4sqXoIFBpijxq4ijF
	U5RRboIJ2IPHb4bwwGTc6/vfO/o+M+eMGdPBfR4lU0bWcrtseKWvkGV/XRz9YI3pKehVzGpD65J5a
	W5K5tf+kIJ7+uAAx7Rgg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wmXGI-0000000BwDy-1XXk;
	Wed, 22 Jul 2026 13:45:26 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wmXGF-0000000BwCE-0J6u
	for linux-phy@lists.infradead.org;
	Wed, 22 Jul 2026 13:45:24 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 66MDWUQt1027039
	for <linux-phy@lists.infradead.org>; Wed, 22 Jul 2026 13:45:22 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	06nNTeJjyFOIPuxgya+vwS/gLIKghgHtI72YfoBDYUE=; b=Sk5OT7QMYDWzSdZ4
	mJ3GcNIyqytBXolCSM4JrlaihhM6oEtL3y5EVnLjJhL7oXzNtr51VGBGTAA5NvQQ
	7oYgma7kKMzdO18yQmz/K11IAeAgm4ZFaVBFdObo8iGKiimUqF4bkON2o84kS9tx
	p8RvqzisFqBxV/oBjbHQfxPjdqjHALCZY0U/qJ6sTYdaalGczoAVgVYD39Mga5Fu
	aR/t2CF0vNQp2QNtrcNmgQOMSOtwCKLQSlQirggplmz+CAq7Kly+utz1rQncsuec
	oqsQvwJypLUxrah7fNZtI1aSbYpOtq3iC+GHKLdg1Yf/lFXgjy35j5orX+tCCn4/
	i7WxzQ==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4fjt79994g-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 22 Jul 2026 13:45:22 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-5174a23afcbso115093211cf.3
        for <linux-phy@lists.infradead.org>; Wed, 22 Jul 2026 06:45:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1784727921; x=1785332721; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=06nNTeJjyFOIPuxgya+vwS/gLIKghgHtI72YfoBDYUE=;
        b=ItxsTaxf1CCHp5XoDH8kyoNSTYhd/gePqNM7/aLXMthNbi9APfeZjobMweQr+YO5Of
         uaCY304706Pfa53QB8W8sGlL13yblWm/3nBfc4BIH1ZKyegLFDXv+KFq7xpraNbvQZgh
         GTcnDr4pNVAOkSBRSk2Imm+xCSPJ4hWR3i/2NzPaL2XhrB6OrBZSfn3Oc8amZl4tgAE+
         CspyxIqPAYvOTaZQA7tlyQMgz4Lsk5IWbphzY+ihnLu8yfzjGngXaSjhlF9QzN/8Z26t
         ztr5nnZGtvY0jaiIS/YD7HizMrV/hhNsuOtu1GslQ92kDXZdAuX+E5bvYkuwUtXK8COu
         wmEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784727921; x=1785332721;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=06nNTeJjyFOIPuxgya+vwS/gLIKghgHtI72YfoBDYUE=;
        b=atHQJqrjTr6B7p6JA/PcbC6XgYtf4EL4Xj4g8xtxCUsla8FM1cXCaIMIRuiBDUsMfj
         7yOp60T4vyDwlIXXkwvqA2rZJk8hROB/z18A0xLeDEgkEGEUCRl8a83jTNkmuYlo/70z
         UiIuU6MLt1hLA2VLKkzMJj5jo0HKTM+x4uYCzgEBkEHdxlTFVu84FWdl1tFFU21uXEwD
         +ubzjxhZIca4orQQPSKtKm6uqh7edSZ6QPp2F+5fYSHR0IOU+omucv9T4sWFZt3fPJnD
         jBOsJUoj/waA956CArZH0p0LTqFQIpPXvb9crJ/Pnx+anqcj5UUAcu8uaHMW2+0ZNwYl
         1vyg==
X-Forwarded-Encrypted: i=1; AHgh+RrInfWE2TlrFcTFD1w76AaXsks/chR3g4Ld/X4jx6QyXslw69n29WsXzqzsrQ4bV7naiihd4RevewQ=@lists.infradead.org
X-Gm-Message-State: AOJu0YzXJvMaZB3hLM64HdVF5+dWPMmBYzALdCvgVKS3C0l8EH7pbxcw
	ot3Jm7dIPYOE3NPfUHY9wa6LFniAK9faNjpcvs4Bxpcmbbw5H/QXWR1f5ES9PLuJc3yLeg3PsXG
	qGqy8PL25ABLfXOeJ5wD+BQueKlG2ldi74GUGaA+nQWn75YWG37OKbf2Qt52BwUSGhN4T
X-Gm-Gg: AR+sD13j7/+uWVodGqWpLf8VRMsByAIE2tzU2OZ0w4gjnRFGuATbIJsaTncxk7lSAtG
	wdzEpLsZBw+2Ja8E4+dOzAGc7KwMOakd60w3xnH2OJ6ei9VuoziS0WeRg1NAW6di6hDb95KX6a5
	DbbrVHGDjSc0WE30jJEyQtHiJ9nKp59NbLQMcQaAjKbZ+2Qeo8gUb/u2nlOdRn25alXKbeDxyGN
	QawL7959D1rA0tXyy48CPm9fhEPN2+625GeauJaa16X4khKhz6z//usw2myzls5BlA/kMzK3M6Z
	xZmJjKhvWtmBLxzS9z4ejkTxeyHMIQbttApay7I9U0QFzThIWGOHOEZQOkaX58W83Jl8ich2EUP
	/QQbLNNCs8BTO9dLax2t9Vo/Bsx1EZ00xK5BVy596mV/nNE0pNwmCunDawSolbIuMZSuUmvLL74
	HQIfg/rHGB/iDnJv6y5vIXvd7r+VadPj+FadQjNyLWMiGCqDe5EA==
X-Received: by 2002:a05:622a:1a9a:b0:51c:1e2f:1281 with SMTP id d75a77b69052e-5213e48b00emr222520131cf.42.1784727921274;
        Wed, 22 Jul 2026 06:45:21 -0700 (PDT)
X-Received: by 2002:a05:622a:1a9a:b0:51c:1e2f:1281 with SMTP id d75a77b69052e-5213e48b00emr222519521cf.42.1784727920559;
        Wed, 22 Jul 2026 06:45:20 -0700 (PDT)
Received: from QCOM-eG0v1AUPpu.na.qualcomm.com ([2a01:e0a:830:450:48e:a2cc:6c4:c92a])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-c1c32ac8c3esm111874366b.23.2026.07.22.06.45.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 22 Jul 2026 06:45:19 -0700 (PDT)
From: Loic Poulain <loic.poulain@oss.qualcomm.com>
Date: Wed, 22 Jul 2026 15:45:15 +0200
Subject: [PATCH v6 2/7] phy: qcom: qmp-usbc: Prevent unnecessary PM runtime
 suspend at boot
MIME-Version: 1.0
Message-Id: <20260722-qcom-usb-phy-fix-null-v6-2-534f7e61b9a6@oss.qualcomm.com>
References: <20260722-qcom-usb-phy-fix-null-v6-0-534f7e61b9a6@oss.qualcomm.com>
In-Reply-To: <20260722-qcom-usb-phy-fix-null-v6-0-534f7e61b9a6@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Abel Vesa <abel.vesa@oss.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Loic Poulain <loic.poulain@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Authority-Analysis: v=2.4 cv=Sr6gLvO0 c=1 sm=1 tr=0 ts=6a60c972 cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=RAioF0-LDSMA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=3WHJM1ZQz_JShphwDgj5:22 a=EUspDBNiAAAA:8
 a=yoX6jHX73kXkGH752t0A:9 a=QEXdDO2ut3YA:10 a=dawVfQjAaf238kedN5IG:22
X-Proofpoint-ORIG-GUID: _MbulEmPVKKP7ZThhQKirauznM4EJM4N
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzIyMDEzNCBTYWx0ZWRfX1AQRJvkQ+ONq
 jY8eguI4kqkolM1fTH1ENampdP4Zs/9Z/+pviy+t77XtVXGo+NON5fDfKyiY6wBNnJf+FaP5HlP
 M9Mh5v96qvGE9KjyLBe1t+AL6BvLoc5f3muxkDW4xLjhvNcSvYzgPk5hGqyDpy7GI7OAP/nWo+m
 T6oyxYt3WEV8+TUJ/pzjcKuwbASajH3EhAU61OUs3KoI/FkDUT4dc4RUS2QUbh4rGwEoqxAGqtj
 A4f/NSzXbqLaVzEyK93WSo2+F2VvuBQ5/4Zmhx9bGPZxSvfOVcovJ3CARaWCnPOGLce7FI2iFHJ
 o/vIfK0sKOh99qRuMK4VjEa8QHVIsefVuGykHoNO8bpz57BIqrI98drJ/2DcBfDAjjcadf28DTn
 0US0zz3wg7CJp7gh6qhW6AW4tKuI7PbJrRisTaiRa7OdwjXlowuem5FrCLghaSB2H4pd969daD1
 I7wDkFKf+PGdmb0ygtg==
X-Proofpoint-GUID: _MbulEmPVKKP7ZThhQKirauznM4EJM4N
X-Proofpoint-Spam-Info: AW1haW4tMjYwNzIyMDEzNCBTYWx0ZWRfXzjgpWlCYjYPl
 3xekXZvE4dQWpMbm0mvCJd057z8Vucq6o3J8k7v+yigY8L1lqVrMPmjbIIeaYjRAFJPFJr3wW8O
 +tFMgKa5y7tB6SJj2EEpxNvv24ZDMUQ=
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-07-22_04,2026-07-22_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 suspectscore=0 spamscore=0 lowpriorityscore=0 bulkscore=0
 adultscore=0 clxscore=1015 impostorscore=0 phishscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2607220134
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260722_064523_263026_74891926 
X-CRM114-Status: GOOD (  19.32  )
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

This also makes the probe path safe independently of pm_runtime_forbid(),
which is a good preparation for potentially dropping the forbid() call in
the future and letting runtime PM be enabled by default.

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Reviewed-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Signed-off-by: Loic Poulain <loic.poulain@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-qmp-usbc.c | 26 ++++++++++++++++++++------
 1 file changed, 20 insertions(+), 6 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c b/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
index ab3055bb5b0c198832ae06dfcd04fd34395e271d..780a6b4f71eb41adf8f7011db8676c56f704b933 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
@@ -1959,10 +1959,16 @@ static int qmp_usbc_probe(struct platform_device *pdev)
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
@@ -1971,13 +1977,13 @@ static int qmp_usbc_probe(struct platform_device *pdev)
 
 	ret = qmp_usbc_register_clocks(qmp, np);
 	if (ret)
-		goto err_node_put;
+		goto err_pm_put;
 
 	qmp->usb_phy = devm_phy_create(dev, np, &qmp_usbc_usb_phy_ops);
 	if (IS_ERR(qmp->usb_phy)) {
 		ret = PTR_ERR(qmp->usb_phy);
 		dev_err(dev, "failed to create PHY: %d\n", ret);
-		goto err_node_put;
+		goto err_pm_put;
 	}
 
 	phy_set_drvdata(qmp->usb_phy, qmp);
@@ -1987,17 +1993,25 @@ static int qmp_usbc_probe(struct platform_device *pdev)
 		if (IS_ERR(qmp->dp_phy)) {
 			ret = PTR_ERR(qmp->dp_phy);
 			dev_err(dev, "failed to create PHY: %d\n", ret);
-			goto err_node_put;
+			goto err_pm_put;
 		}
 		phy_set_drvdata(qmp->dp_phy, qmp);
 	}
 
+	phy_provider = devm_of_phy_provider_register(dev, qmp_usbc_phy_xlate);
+	if (IS_ERR(phy_provider)) {
+		ret = PTR_ERR(phy_provider);
+		goto err_pm_put;
+	}
+
 	of_node_put(np);
 
-	phy_provider = devm_of_phy_provider_register(dev, qmp_usbc_phy_xlate);
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
