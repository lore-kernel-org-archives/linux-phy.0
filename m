Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 45CD5C4452A
	for <linux-phy@archiver.kernel.org>; Mon, 20 Jul 2026 14:53:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WIGCm6gvNS7uH8kTH1RoJiqByuB5IfO0tQj8MRU0XyM=; b=3YUR364WRg4VY9
	RtflwqGYJHJn0PLp0U6reBPFJNK0bOkh4rbsvk9j8Mt0+xFOdm98TTM4Q2D18fT4EWEx85d2FYi2o
	af+f5DjIOvarjMr84D+8KThcE0LYvG1e8aLC+6I63Irc2IuDmcSqse/G4SpBqEOiUs25rOB3GXfUg
	Cbgcd6d1oW4oJ7HwJQXMzQS55nOYJ78OjwZtW0Gir/s7LWJLBl7lSyGlA4lGhXRc1u7zMtIxycNF7
	bAa78tagzm5rPmY/iDJQ25+3517Jbi1C7vZM5UTenRRjBUlSXkplB5FA3Kzt+AYoLoSaMK7nzP+MC
	SxKq8U/UZz5d41htMLeA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wlpNF-000000072Z2-49dZ;
	Mon, 20 Jul 2026 14:53:41 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wlpND-000000072Xp-1iYZ
	for linux-phy@lists.infradead.org;
	Mon, 20 Jul 2026 14:53:40 +0000
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 66KDqmOZ2963979
	for <linux-phy@lists.infradead.org>; Mon, 20 Jul 2026 14:53:39 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	jdHltSsSc1HthVrTabB7Rd4UqHGUwTwsmtUtkd1pIoo=; b=HSZCvTPvExHmjjhK
	O1b4JPRoPIOquA/j4h+RbIRO5GY2/C4JIQ4fp448fuQJsbSy61wmx46+R/+vCzDJ
	pOQNi/+TgPIBPSsuU/7X4Pq7SqBH2G01ci/+tIMnyqv8yo3ZdqJzHbht0OjuY4FZ
	jr+30eO5/PAp/dja+Zc0xdQxBUf+cfTGLW8+KUrtmPkKj0N/untBxPK+Jpy19cFZ
	0jEOJF+bIECaTJUF1OvVeCbkWG/VOs2B0e8yueduWkrZp8j/dT1LM5+DUDbOFuM1
	xIksRhkKaMreo+33IUXyT0XGUCiVofYm5pnHCyoGraN2pGU8IwmzZSOYeKft0r5P
	ijU/7w==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4fhfdchwc5-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 20 Jul 2026 14:53:38 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-51c1a9764f0so202196471cf.1
        for <linux-phy@lists.infradead.org>; Mon, 20 Jul 2026 07:53:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1784559218; x=1785164018; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=jdHltSsSc1HthVrTabB7Rd4UqHGUwTwsmtUtkd1pIoo=;
        b=KcUvXScB+XW+azYrAmXB61TQSodDycoLvha0/zd5ehim381iIjoVjWkvNdZHgGmQFG
         orEtDZaNVZHa9GkCuv0Fu9fH100ljcp+SqICXRKS4/oXftJdZSRmXUUhQWlsByxGmWGo
         Y2PRRovzHGNEgIhIOrClOvsqUPNb/uP5GVxTLd0QBt50phIFEJngceXbwkiC+sIVftQH
         MmQpe4r75lXKoJeRMpnjVdNWkELMYVCg83DqMJdrlTHREOidFBfbWTKeAre23+7TbuIU
         F4HjMceXVXIcRaq1BhOnIiozJqoNVn44GlJJmgCq+Dauxp1WSVIGUEQDY7fO6rT5AL4G
         B8OA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784559218; x=1785164018;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=jdHltSsSc1HthVrTabB7Rd4UqHGUwTwsmtUtkd1pIoo=;
        b=Jytu9+dNQgT/1T0VRDZHvWN0fBuyduKKB73tNFBdnYgbUA1tDvTEhU31v3sIySYrs0
         NYVTyyH1pZrbhVj/NBINL2S4hJFES0SH10FYBDtlOPV8J5Z0m/QYK3mf5vMHHhq/TAof
         v9AKdkis14tVBdIxk9p6DNAoKS+ZqfjZb0mZZbL+QBNTpPzNPUb1/hh77HXN/1pZukSK
         6rWEvli/7P1YUQiR0c5nyTtONgbbJvGddMYsPngstSc7kbzPJNhHb9HQBA7DXbqD68zF
         xw7feMFLhrD/oQxtBUxkw0UyiNJN4HY///OqGkbpYLdDgSBaIwwLeWhZH0OOTHQqdN7a
         niPw==
X-Forwarded-Encrypted: i=1; AHgh+Rqec4mp88xy2IeaLC29XmcBQXQdip5EusQB0Qc1/FYQM+FxycNndhlnTpsNPCWRgvOLhWxFA/UoSHo=@lists.infradead.org
X-Gm-Message-State: AOJu0YyVzhYfxOQ9sGjUgBKdwVLK4mxwpkCumEl7qmdQMj9G6/T4A1d1
	5MqdsQxSLlETemgUYJw4tdSavoOv3A6TsuMcYFjk+xlv2tz6/jHb2v1KYKlcJEBvykpEy4zBJe9
	Ol7c6qpn7A/db19ekiWTGhyeCH78ATscHvjpo2ICctWNcQuOnC1szuJe0pkzzl01KPH1M
X-Gm-Gg: AfdE7ckWhMB7bvWexFX3D/g0XtEDbSWt0W7OkGgGZ6oEEM24RvbAUQk1uy814GZQGij
	+OW0AE36lGOKr+feepvu/ymHlaOgy/kbbAIRthoXhj69J1E2eYQevnOs/WqN9ifxdIXE74b80Kq
	n6Rzvxuu73jxF17TBhZOR4SL/PZS558YfiNxb6DzBWSI33SXidj/Lb/Gl7OWpaC7+GvfQUTkcUs
	Szqag/y23grLvBx6FfmrJrLe0Bc9U/UfD6ey0sSKcVFwQgvTCSdHJlKBv2+12QjICy8LWcc14YQ
	3EW8svFhAz5ZpOBP59m1Xd6D01cgAkPB4e2USBj9Ezi2uDlpkbjQNQe6uoQ0Bwl6eUoRcdekcLS
	fACS3Hss5YXl6XXwKrtPZcd2uJC3c7+2HcWKTrhtk1ik9chUiV2Yob0MRvibMBXMSUIlQT+pbfj
	KEHaQfzToHbcMHeeCULZK2i3EeMGyA8tUpG8ZHNKSrVaE1kgHRh0E=
X-Received: by 2002:ac8:5809:0:b0:51c:709:b81c with SMTP id d75a77b69052e-5213b1494c9mr137954331cf.32.1784559217838;
        Mon, 20 Jul 2026 07:53:37 -0700 (PDT)
X-Received: by 2002:ac8:5809:0:b0:51c:709:b81c with SMTP id d75a77b69052e-5213b1494c9mr137954111cf.32.1784559217346;
        Mon, 20 Jul 2026 07:53:37 -0700 (PDT)
Received: from QCOM-eG0v1AUPpu.na.qualcomm.com ([2a01:e0a:830:450:751c:d61c:c91:60dd])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-69e7000c3e2sm4800215a12.30.2026.07.20.07.53.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Jul 2026 07:53:35 -0700 (PDT)
From: Loic Poulain <loic.poulain@oss.qualcomm.com>
Date: Mon, 20 Jul 2026 16:53:31 +0200
Subject: [PATCH v4 2/4] phy: qcom: qmp-usbc: Prevent unnecessary PM runtime
 suspend at boot
MIME-Version: 1.0
Message-Id: <20260720-qcom-usb-phy-fix-null-v4-2-4d2a0f06d53a@oss.qualcomm.com>
References: <20260720-qcom-usb-phy-fix-null-v4-0-4d2a0f06d53a@oss.qualcomm.com>
In-Reply-To: <20260720-qcom-usb-phy-fix-null-v4-0-4d2a0f06d53a@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org,
        Loic Poulain <loic.poulain@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Abel Vesa <abel.vesa@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Proofpoint-ORIG-GUID: xuM5ujVlmwCaEAnG_HIt-BVOLEUROCm-
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzIwMDE2NSBTYWx0ZWRfX1hR4jRzkityl
 SydwOJWtG+E6KdtP1SJpL8RtI0tmNh3RpCpBB6HjiAg9oCgMRVCG7Krh6Jm6+/1+6YAg/Ycry1x
 qsF/9T5BQ3uZy+A1dHb0LA/IDGinuiF1nXJ0lcCoaW72bvNAlmb0/jX/LMeAF9T1PUdymm5BqE+
 hVq2LvulHf97qWpWk63DfrsXhEpECmqdaalV/aLVPwHpxFGFBn3CGoCpIX0inAJXyvnWw8mwl2b
 bEIDzOSAZwGdQGxUB6WKWOkkwIi2TL/UvcAa09jNVX6gsQfWPI70EFq3nvAP4rwb0GC3n874MYf
 uQAhkFg/ck0kvOP5jCITMk5umg9Ur9Myy5dJcmSTiL4rs5ZejvVKKN6wKxyKsYFC845mSyc/qqA
 WSKgwzoGMVmedFeMFcWsp1ZnNocvgD30FVgzm630h6yjld6dfZFUX6RsTCdKdhWD+KgGAJSESX0
 1uE0zroyRGrk8OTSmmA==
X-Proofpoint-Spam-Info: AW1haW4tMjYwNzIwMDE2NSBTYWx0ZWRfX78lKewO23M86
 jlZRYRcH1UlBt259EWhrNSxE+Fak6xnAaXhG64LlRn4ypByglgbhn4cS/Lr+TesjP2d836G8wH4
 4uF1Wti8yULU5G1OsX2T7ECHC3OZgRo=
X-Proofpoint-GUID: xuM5ujVlmwCaEAnG_HIt-BVOLEUROCm-
X-Authority-Analysis: v=2.4 cv=bv58wkai c=1 sm=1 tr=0 ts=6a5e3672 cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=RAioF0-LDSMA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=Um2Pa8k9VHT-vaBCBUpS:22 a=EUspDBNiAAAA:8
 a=PcYcMbZi39MCwOMHHM8A:9 a=QEXdDO2ut3YA:10 a=kacYvNCVWA4VmyqE58fU:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-07-20_03,2026-07-20_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 bulkscore=0 priorityscore=1501 spamscore=0 malwarescore=0
 phishscore=0 lowpriorityscore=0 clxscore=1015 suspectscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2607200165
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260720_075339_468838_B6166CFC 
X-CRM114-Status: GOOD (  16.45  )
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

Signed-off-by: Loic Poulain <loic.poulain@oss.qualcomm.com>
Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Reviewed-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-qmp-usbc.c | 18 ++++++++++++++----
 1 file changed, 14 insertions(+), 4 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c b/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
index ab3055bb5b0c198832ae06dfcd04fd34395e271d..4317224070fd8dec98090e9200ac7d0e97265979 100644
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
@@ -1987,17 +1993,21 @@ static int qmp_usbc_probe(struct platform_device *pdev)
 		if (IS_ERR(qmp->dp_phy)) {
 			ret = PTR_ERR(qmp->dp_phy);
 			dev_err(dev, "failed to create PHY: %d\n", ret);
-			goto err_node_put;
+			goto err_pm_put;
 		}
 		phy_set_drvdata(qmp->dp_phy, qmp);
 	}
 
+	pm_runtime_put(dev);
+
 	of_node_put(np);
 
 	phy_provider = devm_of_phy_provider_register(dev, qmp_usbc_phy_xlate);
 
 	return PTR_ERR_OR_ZERO(phy_provider);
 
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
