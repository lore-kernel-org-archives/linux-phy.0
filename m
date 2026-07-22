Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F3578C44536
	for <linux-phy@archiver.kernel.org>; Wed, 22 Jul 2026 13:45:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RRMTnGZUxzS0Rvw+TpPJawlJKLpTCRVby6GS25aHe2U=; b=Xzfqf1wd6Qr008
	rRoTkMtdZOlRjZXiVDvndSnhnV3jmEiz++QGMaG4EKQYaJB5VR81S4nSf9/JrOLOvZvF61RzHRFud
	nSN0IUHl2FfCHlpvh+Nz41QOyb1zYyc6D1RkaIXVlSVPO8yWsQOXLbvd4sMyzBtFHspQb36FgToUD
	VqSgWYqchaeIRVB9l+8iFDS81hxpbGDeh9yMW7DCUx9rw0akBwQnvllyGGELU7nMBbYcHlbuRZGpX
	I6mQkqhaXFDU+dNk9+KtUyCUgJuhSKF6lnap4fQMmGtrblqyoqc70UhhlM+8bZhl3JQFtexD1+eUh
	Zw2nAfQRWiMkAu8lMHcw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wmXGO-0000000BwHK-2nZc;
	Wed, 22 Jul 2026 13:45:32 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wmXGL-0000000BwFh-2yoL
	for linux-phy@lists.infradead.org;
	Wed, 22 Jul 2026 13:45:31 +0000
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 66MDWlOr1033919
	for <linux-phy@lists.infradead.org>; Wed, 22 Jul 2026 13:45:28 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	zn8YobeKzJmI2eL3M+DT+dtbtruKgWpxef+/c+xHz1w=; b=cODaShmPdCJx+gMV
	8m+M1ORMyrE+w6Xd+G/s0Ta+atd9JE5UX8cR1O8/kE4QyEhg4u3cqftcem5OojE5
	qwWiqEjSHw2Z70Bz/xO9Ghuv/SXu8G7KRSaYJqsRu4lWP5Epk7D6I8VuU+YvSJlP
	Vtc7XCbIzCH5ecXU3CRKrp8Qi0w1CTzhdBXx7lzriVuBYQOop6vslTuWibuYDTLt
	7znHW7fYMhxnw7Ib033/ohF/qyFbiZH+XYKW2rX7Wq2n22tM4+cLbjpNIK2GFXVK
	dkIl0RzDnYcT6qwXMBEMoZD2t2wZ0a0+4iuVF6gjrNV3CILjjdfbcr1KmrUyW9sH
	aOTgCg==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4fjpxdj3t2-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 22 Jul 2026 13:45:28 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-51bfe3fa93bso257062011cf.2
        for <linux-phy@lists.infradead.org>; Wed, 22 Jul 2026 06:45:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1784727928; x=1785332728; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=zn8YobeKzJmI2eL3M+DT+dtbtruKgWpxef+/c+xHz1w=;
        b=jKEwIIcpvAXcLX/bj8SGG+28yrA7XPduduR61HzbSyqswNyKz8SEQL7TsnvJstgP8T
         c5lUnsJTcDw4rD3W9W7LQ5P/TN9PBPyOq6uDtX7oFNdSbAd0LpvTUISOYL0lk/9lbzE/
         xvO61eO3NN830e8zVUpXICz+nnjuIYHnLJDoctbkWw5qDuFbj4hbFELImInUUMOVyuOW
         zN4c66xhTskXCJGMT+5+ynsS+yZq4sPcT6ztx/NtTNGuaav0sbvbkcAvv62fHDKHW33T
         o2JyVMlERkyhJt7WETZq/fhEVIa/VOl4mARZRBogIlY4K/V2FRd9jcTWczfWKzADFKcp
         Gjvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784727928; x=1785332728;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=zn8YobeKzJmI2eL3M+DT+dtbtruKgWpxef+/c+xHz1w=;
        b=FjuWaELO9Qec/qln+djLDT5b93mT4PNlMGqX+8qV1fSzLeHgL6ZiwtSHD/ytSX0QBL
         uG1Cdt3ORabHFAUQYTFzywwpJyYi8p3loDl7xLC2FYZVUgrOSACwsqqALPiwgkB4un6v
         hp6FRb31P92ck8Lq7Ll6P/2VXTZQhv1Nnd98n/FXd1Iiog5myf2OJPkbRuUxXX4tJUHE
         Y0ak8nw8ik7GjIYjUgP8aAjmQ30X0htltuZbwQ1Pid3mAiCG83klYqdurPYftq9KSaiP
         TZy9M0TdAPOaXcoZ2x2TkPyo+qs91M5Qn1aSsjwlAl5xjeh9XAQEo4n5r5wlwm4bZeo6
         XK1Q==
X-Forwarded-Encrypted: i=1; AHgh+RprPgZlJhfqym2mGodWAbbERKbU/pLBv/cNgX4oFZoQbjeJmaJuF4QwdIkKznQLbsYTPbAw59uuZ34=@lists.infradead.org
X-Gm-Message-State: AOJu0YzhAES9xIoET8Y3at5Mvgzti+ozD9IqXZOjce6yuwA8RPG7vObu
	3cGZ25UBqt3EXTOXs7XuoiX6o+y0eIv0BeEgkuzhq3P71tu01mpeCxGhfQND+Vjebste5/fkjpA
	lWfwuH57uOVZdqI5WNB3u3i24ak+7vnok+mo0X218VzQ1w5VIqoe1vj4aA5ogaR1KplwIqYv6qz
	PR
X-Gm-Gg: AR+sD121HVt3+H5LnZh/eiapehITlJ8GxX+y2CsZUtxmIMoGHg6ylNfwjPkU4ceodZM
	H4mE6KYLybByGQkreuiI6MNG4J/JqkRpEW5BkZ9I2++ufmCAfK9ACXu1QFvsXmNk3TrzLVBqVB/
	Q4akKsIxcErjnbUpxghB3Vq3/BziY8h+CxWmrB63EGnYVs6aFt/KltGEMu+WIe9MG7kZ9FyR6Nv
	ailn7Vq8sYQCSOIFiC1IP+CcHHxAeLMmcKUFbfZsMDM2PXk7uWxgwqEwqpdpVJfdi/mH1At6g+X
	Idtva9qOGm2LyWgYgv+OpDCztP8Uid4gOrZIHaHA5EkR8nt41vel63QgXglblHGoNqiNCP7dl4s
	i5tF7CrlP46sTD+H+2PJbFh2tZUQi3nVBqvSq1O7CUHaFgAcf0k+PQkX7iVGX2q7UIBh0vrmeaS
	6sRKGkimyR1T/yYfxNh6RgSDbK8N5r6YzRsUFznczVz/ttoTsg0w==
X-Received: by 2002:a05:622a:1313:b0:51c:1e69:bcc9 with SMTP id d75a77b69052e-5213c013f36mr221286991cf.12.1784727928033;
        Wed, 22 Jul 2026 06:45:28 -0700 (PDT)
X-Received: by 2002:a05:622a:1313:b0:51c:1e69:bcc9 with SMTP id d75a77b69052e-5213c013f36mr221286431cf.12.1784727927389;
        Wed, 22 Jul 2026 06:45:27 -0700 (PDT)
Received: from QCOM-eG0v1AUPpu.na.qualcomm.com ([2a01:e0a:830:450:48e:a2cc:6c4:c92a])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-c1c32ac8c3esm111874366b.23.2026.07.22.06.45.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 22 Jul 2026 06:45:26 -0700 (PDT)
From: Loic Poulain <loic.poulain@oss.qualcomm.com>
Date: Wed, 22 Jul 2026 15:45:18 +0200
Subject: [PATCH v6 5/7] phy: qcom: snps-femto-v2: Fix possible NULL-deref
 on early runtime suspend
MIME-Version: 1.0
Message-Id: <20260722-qcom-usb-phy-fix-null-v6-5-534f7e61b9a6@oss.qualcomm.com>
References: <20260722-qcom-usb-phy-fix-null-v6-0-534f7e61b9a6@oss.qualcomm.com>
In-Reply-To: <20260722-qcom-usb-phy-fix-null-v6-0-534f7e61b9a6@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Abel Vesa <abel.vesa@oss.qualcomm.com>,
        Loic Poulain <loic.poulain@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzIyMDEzNCBTYWx0ZWRfX5NsMpj6zvrZ7
 Wo8aTatmeFnYQxjUMMXfLkmIHXOvSNXIAvyDi+M6wbszMc+H63P+xsQ7sxCe7OjsIVD50ItcXAZ
 92gEbGRrhFEb6mtVy6UE+NHbcy+rEOHXr0nU9h7yeSCFor7zt6Ch/loJ+907M7t/f7HIX1YANr/
 D4x6vAttFCjKgqFbz0jGmFwguShthXs6GKleAufJPwCe9pocbefF35sS4cWQgWuxJocaqu5oBrE
 TzFLF/0fvkrjSyW0jpUuxgE/C60cgZcVweq1y1gLovVfx+KOTbraI+U3cpYTYNmJMYiri35kfA2
 oAFvhFUqUH/SuSK3ZELQ6ZAcMwyi6ES1b8axCfllg49UBTS5R00kgAf3UKaDb8ByLOrDQRNO8o4
 Kzgttbiu2+KStWetGnHbt2Vot0O6Fa58cijaC38OF9j43KFA95zeROdWA4vuZWfgWPZH9/aHtNh
 KHIz44Pp/xkEZoBngFA==
X-Proofpoint-GUID: M7lPZzpe3yYBazi_faHNmDsj0WWicVKo
X-Proofpoint-Spam-Info: AW1haW4tMjYwNzIyMDEzNCBTYWx0ZWRfXz+VVdPrEogIu
 V4kY+IkfJCaQNmEF/dTcjcCuG/FSD0jYhUWUGPn61JYfP1sQE6zE7pfc97zwqOzEV5lZe+6sENT
 BoE7iC9vYiteZ0/F5am7CUm+wRNUMiQ=
X-Authority-Analysis: v=2.4 cv=b7iCJNGx c=1 sm=1 tr=0 ts=6a60c978 cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=RAioF0-LDSMA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=_glEPmIy2e8OvE2BGh3C:22 a=EUspDBNiAAAA:8
 a=yoX6jHX73kXkGH752t0A:9 a=QEXdDO2ut3YA:10 a=kacYvNCVWA4VmyqE58fU:22
X-Proofpoint-ORIG-GUID: M7lPZzpe3yYBazi_faHNmDsj0WWicVKo
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
X-CRM114-CacheID: sfid-20260722_064529_882382_BD8408C2 
X-CRM114-Status: GOOD (  19.01  )
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

Runtime PM must be enabled before creating the PHY, since phy_create()
only enables runtime PM on the PHY device if it is already enabled on
this parent device. However, the runtime PM callbacks dereference the
hsphy instance, which is not yet ready, leaving a window where a suspend
callback may trigger a NULL pointer dereference.

Take a runtime PM usage reference with pm_runtime_get_noresume() before
enabling runtime PM and release it once the PHY has been created, so that
no runtime suspend can run before the PHY is ready. This also prevents a
short window where an unnecessary runtime suspend can occur.

Use the devres-managed version to ensure PM runtime is symmetrically
disabled during driver removal for proper cleanup.

Fixes: 0d75f508a9d5 ("phy: qcom-snps: Add runtime suspend and resume handlers")
Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Reviewed-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
Signed-off-by: Loic Poulain <loic.poulain@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c | 26 ++++++++++++++++++++------
 1 file changed, 20 insertions(+), 6 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c b/drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c
index eb0b0f61d98e03963bf92e5c822334f52636abe7..980ad1fb1e2e3cb6ab0b29df12ec8278ab1ceafd 100644
--- a/drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c
+++ b/drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c
@@ -599,8 +599,18 @@ static int qcom_snps_hsphy_probe(struct platform_device *pdev)
 		return dev_err_probe(dev, ret,
 				     "failed to get regulator supplies\n");
 
+	/*
+	 * Enable runtime PM before creating the PHY, phy_create() only enables
+	 * it on the PHY device if already enabled on the parent. Hold a usage
+	 * reference so callbacks cannot run before the PHY is ready.
+	 */
+	pm_runtime_get_noresume(dev);
 	pm_runtime_set_active(dev);
-	pm_runtime_enable(dev);
+	ret = devm_pm_runtime_enable(dev);
+	if (ret) {
+		pm_runtime_put_noidle(dev);
+		return ret;
+	}
 	/*
 	 * Prevent runtime pm from being ON by default. Users can enable
 	 * it using power/control in sysfs.
@@ -611,6 +621,7 @@ static int qcom_snps_hsphy_probe(struct platform_device *pdev)
 	if (IS_ERR(generic_phy)) {
 		ret = PTR_ERR(generic_phy);
 		dev_err(dev, "failed to create phy, %d\n", ret);
+		pm_runtime_put_noidle(dev);
 		return ret;
 	}
 	hsphy->phy = generic_phy;
@@ -620,12 +631,15 @@ static int qcom_snps_hsphy_probe(struct platform_device *pdev)
 	qcom_snps_hsphy_read_override_param_seq(dev);
 
 	phy_provider = devm_of_phy_provider_register(dev, of_phy_simple_xlate);
-	if (!IS_ERR(phy_provider))
-		dev_dbg(dev, "Registered Qcom-SNPS HS phy\n");
-	else
-		pm_runtime_disable(dev);
+	if (IS_ERR(phy_provider)) {
+		pm_runtime_put_noidle(dev);
+		return PTR_ERR(phy_provider);
+	}
 
-	return PTR_ERR_OR_ZERO(phy_provider);
+	dev_dbg(dev, "Registered Qcom-SNPS HS phy\n");
+	pm_runtime_put(dev);
+
+	return 0;
 }
 
 static struct platform_driver qcom_snps_hsphy_driver = {

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
