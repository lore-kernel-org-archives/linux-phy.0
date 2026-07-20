Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3AD4EC4452A
	for <linux-phy@archiver.kernel.org>; Mon, 20 Jul 2026 14:53:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yx1afZsmnUPYDffI6HUnoOHkaZvLoGiyB6TiFO2deJU=; b=3dgyOeQiTn5GjX
	x4ASbejnlS5wWEaI4EgnGQMAfCYq+0B6PDABGz7emRX1228BXOr/V6P3mgTUUZ5KXxj1SZRfVBd+C
	xT77YZaQC3J628niZel9RUPNLTpIi5ucO6sb4qOWMvcdQE4sK/9OgxCDpOjXCFeAgkF7Dlw1XHDCk
	Iq2HiNd5qIIaM87+xNGEgSKelqcINrIDPXxaTfdORtgzm2UImYeqa9qbnRTZKU8vh9Z4XgPx4p5zI
	kKPM6OalGnxXaHZheZKIEr9aGK35NpK5qrd9cnDHQEO+LfS8A0wfvpWnYp1M0VlR2bZ9blgIbn2ca
	tWm9ur7nLRIABFyinrKA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wlpNC-000000072XZ-3xn0;
	Mon, 20 Jul 2026 14:53:38 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wlpNB-000000072WL-1XEV
	for linux-phy@lists.infradead.org;
	Mon, 20 Jul 2026 14:53:38 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 66KDqnvE2325899
	for <linux-phy@lists.infradead.org>; Mon, 20 Jul 2026 14:53:37 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	0C9IgCI2fyKGPwADUG81tMOL7Xd+RLAneLurfpmZbVM=; b=GSCuJsAVYE1K8vDn
	OVNGFExSsfoLCrFtgzJFwhMMtO6HkPpbSJu1PoiI+pDpyAyFCakj+X4esPeSB0uZ
	L/UKIB4GrJiwZrFmSpv6+WPxp2AwGE6vvKHI+7xowzNP7nSnZPP+Dq6sgvDHiSOz
	gOFaaNKFRw/KBqO/xwEC6C/05pggELsSB6IXh4WUT03NnS9CyIOuww6729SXe3HL
	GL3y6e8ynO3JKpa+ca0FTAG7+tRp1P5UB4gFMUc0A6X3b/3GFdrP+FIq4lvXVqcM
	YguHeeLu1GMhfP57sRDzGudRrf+CDYJISz3xSRzaQZ4Wwl130LGL4oiZOQeqbNlM
	Q54hkA==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4fhgs51f15-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 20 Jul 2026 14:53:36 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-51c1e6f602cso148658791cf.3
        for <linux-phy@lists.infradead.org>; Mon, 20 Jul 2026 07:53:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1784559216; x=1785164016; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=0C9IgCI2fyKGPwADUG81tMOL7Xd+RLAneLurfpmZbVM=;
        b=BOLhkDGE2e1F/g8jsRdDcpxP/Av+dgwnHkjQ/ggg0qQTldrEyIXmwysjFSG910ScOa
         7uYLHqgwiptOCpNVZg+4rZFhoFU1ibR42WQ2YFmHR6YLUALrfGKTQu1dobn/8FOETRZe
         X9FBTqYts+Kiw7auiptgpprMsV5cAUAo0ZZcTZTywafdvgNzbI774YNXBUD/8EwM9r1I
         aOKUJ7q0Gso3URFnwpLiLbfBQ0stBHdKfWltNxBqo5v5d089I6804X/P8+3BB0DYr9qs
         zh7P9mWuLtzVBpBROPf2Ii6xUow4YaseWQd/s8FcivwjO0O7jtyGc0GC9ptKdMBgdZ2F
         rhsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784559216; x=1785164016;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=0C9IgCI2fyKGPwADUG81tMOL7Xd+RLAneLurfpmZbVM=;
        b=n7667qEmTRdhcxyEJelXcVv5p3Gqzw9Z+TYRvf81AAaAbnA20lD9e5ZT1SVlHuNwWn
         SBvbfbXwk2CR//GhmifFbYUQkuXL2lEkn23FEBnB0suyIq9EJP2uzzWXSHLVQuGJU6FS
         vF3ex6mYFevnbP8mh+V3B/Z4NNKG7E9sdyrabKWqqwThIM6Gxjv4CQSaWkSdYWh/hmpQ
         6aobL5Sm/peq5UD6Svi0THjg7hNycQFwjp2jwY3DRVNZ8tLjuF/BSGmkmbeoN1DaQ1AL
         ORpfiH06QT/GR+2gfm8CctDL2J31bQ0BOXcoz6RAmMEj2rLOvCQCDHSis1qd4pUTOb3N
         0DAg==
X-Forwarded-Encrypted: i=1; AHgh+RpeykoGAfD0fI+c7mSR9w6oOIxdI02oeNTVll/KdbfcE3CW+iYV6iAocOJZ9MLwcha+IR+7iMNSBJo=@lists.infradead.org
X-Gm-Message-State: AOJu0YxTvNcA5LRLlWt31BPjN2ftYPW/tO1Ir9D3k9M/hbkHfYgIIzk7
	xXKPwBhSIEenU7d84RK+2zpxzH2JJ+jV24jTQ6ytOTsKdGt5D/5iotBhCN09aV+lfkoN4TcoIHk
	bA7WfVh9NyVUsUo+dEia50Yw1UosTdUf0eCKyayTw8KlvFhJ8deGTrWAT5rog4Xnmgzzh
X-Gm-Gg: AfdE7cnnxeTysC4nWLnzS8PBZDnZtwmDXU01zVBjGzXmEPMyUNJxII5IoUlQ60eG1ie
	2D+lsZol0wIrm9gCTjS25VIyEjwJIl5SbeXygatAVZvQLiFVoOQdjnudgi83nbfG1aE3QbhGBOs
	6qpQWOdgGws0SEZkOHix42yKQ54g6yRsWca1/xQnZ1Tw21TJyX1+sOMKJKW/fV5sKEgreRBnS1o
	EoCMts6pkiumNHGq0Yh8n0XBlLaoiGFQjMGQCkEs8LYsmd7zkvPI4zuipIHUL2IGVkTnpa6DOCM
	8tbg8fqMmTVZE6rIC70wVBRwHKOeTtSueyFcmQHhFbnpC02rKoTjlRIfkuZAGgp0I9iR7XWJ69w
	8iTRSYgcpADdThBhvPaKxyDplsY9s8WZz7dRH+AWr8n0mzkVQShHi11eZqMreMpAiUXKADF7j9J
	E8nELMHvoT+5/tZF0iXy4ObZHtoGpu43eFavsrYv3V/af7C84rato=
X-Received: by 2002:a05:622a:4110:b0:51a:8b64:69e0 with SMTP id d75a77b69052e-5213d2b7109mr134941951cf.11.1784559215703;
        Mon, 20 Jul 2026 07:53:35 -0700 (PDT)
X-Received: by 2002:a05:622a:4110:b0:51a:8b64:69e0 with SMTP id d75a77b69052e-5213d2b7109mr134941511cf.11.1784559215166;
        Mon, 20 Jul 2026 07:53:35 -0700 (PDT)
Received: from QCOM-eG0v1AUPpu.na.qualcomm.com ([2a01:e0a:830:450:751c:d61c:c91:60dd])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-69e7000c3e2sm4800215a12.30.2026.07.20.07.53.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Jul 2026 07:53:33 -0700 (PDT)
From: Loic Poulain <loic.poulain@oss.qualcomm.com>
Date: Mon, 20 Jul 2026 16:53:30 +0200
Subject: [PATCH v4 1/4] phy: qcom: qmp-combo: Prevent unnecessary PM
 runtime suspend at boot
MIME-Version: 1.0
Message-Id: <20260720-qcom-usb-phy-fix-null-v4-1-4d2a0f06d53a@oss.qualcomm.com>
References: <20260720-qcom-usb-phy-fix-null-v4-0-4d2a0f06d53a@oss.qualcomm.com>
In-Reply-To: <20260720-qcom-usb-phy-fix-null-v4-0-4d2a0f06d53a@oss.qualcomm.com>
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
X-Proofpoint-Spam-Info: AW1haW4tMjYwNzIwMDE2NSBTYWx0ZWRfX7cqFzrESnk7t
 nvNX9Rtct36ElB3vK4VhURvvTJceDB30n3PHIQyHXKaKySgCeI4O9MVEaSJF1j5p7vViKxHGvnG
 6Zgf69m5LpSUjIFkY7CWuFtY6h494ho=
X-Proofpoint-GUID: TMSJ2kOyIx46o3XkFcQCUXoeY2rGVTHP
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzIwMDE2NSBTYWx0ZWRfXzyGLfc3cSqtD
 2tD/2NWZeE9h0m6wgP1WIz9x0AKad0v/eETf97OGdwsbE0W3CkTqjkXVHgpkaOiiMtksluYbd6R
 1XXh/BzJLxqGFf0yJc9rp/iI9eTzw2yial6UZersn+Ip7JiiZmBH60I4cC2vpbJkETStjvKG8X9
 6tbFrLKEX/ohY/24zNpSEy2D7q3iuBV/Ge5XYy7oy5+wRn5ButWVeJ/jwFpIGJx1Bu9qWg7q4Gn
 J50vGYddWeIsctNOWuQxJ1JLqY9JAoCVcIXcRzUwGo9wNHjZhepEUm5u42gcIiA55AFn6o9Tf1i
 3DAf/bj01CdAxn/2wFqO0JQl4j9KanUcsejm6pz1nLnfBRb6v4xulGz1qaKalTHk1xRBzv2QIFZ
 2EcdccfxK2Nfc4EQXYwYQWghAzqcXZCBc9RrzD3lu2zFEllZZHuUN9JXCVnJUEyai1c8rycH1Rk
 SxQaWvw7h+s69va5seA==
X-Authority-Analysis: v=2.4 cv=CpiPtH4D c=1 sm=1 tr=0 ts=6a5e3670 cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=RAioF0-LDSMA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=DJpcGTmdVt4CTyJn9g5Z:22 a=EUspDBNiAAAA:8
 a=PcYcMbZi39MCwOMHHM8A:9 a=QEXdDO2ut3YA:10 a=kacYvNCVWA4VmyqE58fU:22
X-Proofpoint-ORIG-GUID: TMSJ2kOyIx46o3XkFcQCUXoeY2rGVTHP
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-07-20_03,2026-07-20_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 priorityscore=1501 phishscore=0 spamscore=0 clxscore=1015
 suspectscore=0 lowpriorityscore=0 impostorscore=0 adultscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2607200165
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260720_075337_417145_74AF84F7 
X-CRM114-Status: GOOD (  17.26  )
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
