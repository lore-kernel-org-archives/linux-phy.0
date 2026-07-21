Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 540F7C4452F
	for <linux-phy@archiver.kernel.org>; Tue, 21 Jul 2026 13:06:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iZiZVtj0+7H/H3Eue3CkHbTKajc98ZvVQzbsKwyQaYk=; b=FIKrH7E7oBUli8
	CjbzXNpq4JFzn70f7OvjnRq/tB4iRWd0Zx8yfV03TGx8pUD6QDU3tNF54vC9L7SfQWMOl28HpUFjX
	WRssPSVoDEUR2vQlezcPVx16w8FanN/3WXbkUyGr2P3hsNCsrnzPYYOp4caBzp9sNSQIIMbU+773H
	CzXTYFXKajRlzML5ZqKMgEy9AQwkQRNWAUcwu6g9ZLpGa+VtfxZaAqSeyTeUtP+RPE+3mQ02vBLSH
	hUrxPg+qfTna+eNzOF6vhC9pihrDThmactUQ2xnQlZ00RAY4bUd1Avb0LPp9gAoMd9vJQIFNTpR4R
	vE+dS9VsMtbZRln/Fu6Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wmAAe-00000009U79-09tM;
	Tue, 21 Jul 2026 13:06:04 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wmAAb-00000009U6G-2CSU
	for linux-phy@lists.infradead.org;
	Tue, 21 Jul 2026 13:06:02 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 66LD2vmm1616638
	for <linux-phy@lists.infradead.org>; Tue, 21 Jul 2026 13:06:00 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	GXJHlTlWI9rdZAlQlDTbUDpfcsl4EJSlpJT6KPqMdqk=; b=jszkDaJfDaNZQX+G
	vLXRqKgoclNXEm8JrFbRzkROKZXEQidCi9/1RwolO0KKUQkBaGclbwDlblIWNqak
	MaM1ZGHU0VwexiDod8Afoiej3LvJF05gVb1eFryupAGqiX8eTA5VVjuJid/Rcohq
	gKWQ9WVzanQwbgCBBdsRs0Wuy9W91PwB7C0VRcqRztDPOaGp+WE8J2U+AzB7q0Yg
	f/4L81f9i14u5/ZCm3qfEJxGKzALx2TXm1RyZwa+gNidzGbLwqnAQGDiakfA09QN
	yEpljJyTLfxCmadIYz++1Goex0vwPimuhxUq3v+VI2IlqLX0YTdtkzkkNw/10LvX
	dfiF8Q==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4fj9ae80k2-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 21 Jul 2026 13:06:00 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-51c20762d21so109382591cf.0
        for <linux-phy@lists.infradead.org>; Tue, 21 Jul 2026 06:06:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1784639160; x=1785243960; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=GXJHlTlWI9rdZAlQlDTbUDpfcsl4EJSlpJT6KPqMdqk=;
        b=HoBD4U/NCa5LQOpcU7LReil+OX1lKxVUBmY+hHe4qBTwkfyh23/FB8BHo33DDQLC4K
         mFsqXJFoJZadIyGcdZ7fFxaj5Axi0ez5RGKc/eReIDhVNOpXaoO6UuOeOHbupnpwhJUF
         3bdx+c0EukKq16n7rIdLwqQDNeuXx+ulppTeIsUvRs4KvV2q2pdCQGC/v51XtflP04eE
         2bkQEB/ELZEn9SBGant6+D+kTEFSOdosrf5JeOK+X/74yxY+vkI8te0i+zpv+bE2Tyc2
         n9q9/7ccdRF6DAlrI6zVs9L8yTNQnS4Wy6c7vjAVfBiQIxKgs/7cSGRU9bUe8qBx6pI1
         cakg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784639160; x=1785243960;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=GXJHlTlWI9rdZAlQlDTbUDpfcsl4EJSlpJT6KPqMdqk=;
        b=dqx/rHik+a/kVEG8Bw/1hXE0XfwSwt8NyH3/OGX6GfqWMZPO9THlelB/kxpbnJNJwU
         +tAI/QdBoTpbLPYpqnIFKT/uJE17KSX2/B4AdfVTNijUCIc9vWuVKwaHXxWX7qUAKYao
         AXZxLoLAl6SWqImudtnxUj5DSWE1eal/+eOmjAvnl96vgDf2zpvXpNl8klU7CFf4fDqf
         5/Mz5oHnF+C16Ks5MoPUyiFOF2PpsOT2VTtCwCEFtkvzyVl4YcpsFYZ6PE9Yjh1Ii/ec
         ajsIgRSHv1xHOqgZz3I2lvQl8Fmnn3C4v0WzarMeCvDw+FiX3IR6kRUz2AJ1Gz6Jm0gK
         phbA==
X-Forwarded-Encrypted: i=1; AHgh+RoZCtwDL969/f45v+PUWyGLsHp6/QYFX8nLCqDE9NBLZ/F9OcSiorFCvNyTNeCDSRkXum31/5taEi0=@lists.infradead.org
X-Gm-Message-State: AOJu0Yxllo+57OhZ/26DwYsZDt9k7mlsM9sdaK8J6KK9PDU6ol9/KWT3
	fbePw5ZOBixWLN91dapX9ScEGVJB+DvQcmcGqOYfCZjShHF8aZROJEqbtCLASPccS5pfR+Jvt8O
	TYUwngmEMmYMarf0rYTX8irZYI3fNGasG1XUOhKzKaTn0xsUTRsD8RDhsxEF9rZ94IA8Q
X-Gm-Gg: AfdE7cmhaKlfgozPSMfmvnzyZ1EjSvgyszaZx0HklBJm9ilTR1OtBgqwsBHa54pwfNf
	cAbwpUGT5F6nrJyxSjul73BCry+iSyj8Me8srYnNn6MKu/5HKsZj9O0ygOO9Nw0f+yspkNLsEmM
	QQ/lg5fKRYVr1atRJw58reiiRDGzZsBNN8rC8ZXhaRe6kVubpZPst0kEeyDCzCY/KtpV2iHQRs5
	t+EFFGRiBOcfWVFQzgX9Ow0IK+ZNX/dQEYVng7Oz4iKm4vnW4saFD4XeQqjq3uhjEigonyNCusi
	mF8U6yd6O2McT3tIh/MSqxjgAXSK7YRakv8B54ay7RBrrgO5pM23Evw7ciqr2HYzIQov9TdTREn
	IzLeN7XGLuFKD2z2UH+58myNfwYglgB5xDOgrKrmvtbswFX8dwth85X5G7Hwujwa9RZWyj1FvsX
	qDUGp98st6vU0Qi+evhM1+GOHYbebK6D7cI/CnXAmTlE4jqMc1h4M=
X-Received: by 2002:a05:622a:228a:b0:517:5e32:af1e with SMTP id d75a77b69052e-5213c10a757mr161124471cf.8.1784639159654;
        Tue, 21 Jul 2026 06:05:59 -0700 (PDT)
X-Received: by 2002:a05:622a:228a:b0:517:5e32:af1e with SMTP id d75a77b69052e-5213c10a757mr161123831cf.8.1784639159021;
        Tue, 21 Jul 2026 06:05:59 -0700 (PDT)
Received: from QCOM-eG0v1AUPpu.na.qualcomm.com ([2a01:e0a:830:450:751c:d61c:c91:60dd])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-c17009ae04bsm591898066b.8.2026.07.21.06.05.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 21 Jul 2026 06:05:58 -0700 (PDT)
From: Loic Poulain <loic.poulain@oss.qualcomm.com>
Date: Tue, 21 Jul 2026 15:05:49 +0200
Subject: [PATCH v5 5/5] phy: qcom: snps-femto-v2: Fix possible NULL-deref
 on early runtime suspend
MIME-Version: 1.0
Message-Id: <20260721-qcom-usb-phy-fix-null-v5-5-a181e2adbd2d@oss.qualcomm.com>
References: <20260721-qcom-usb-phy-fix-null-v5-0-a181e2adbd2d@oss.qualcomm.com>
In-Reply-To: <20260721-qcom-usb-phy-fix-null-v5-0-a181e2adbd2d@oss.qualcomm.com>
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
X-Proofpoint-ORIG-GUID: SGLgZw5WHI8UgLkeuyUT1aofw5NjfwxN
X-Proofpoint-Spam-Info: AW1haW4tMjYwNzIxMDEzOCBTYWx0ZWRfX0gHima7liE0e
 CoojI/hKmCi1lDCg7yZx9zQAeuwpKCOauDpqQTzyaRIEjYIUmq5RqwOm91FD9Wno8ksS0ls1FnM
 6rqeb3qNIFVQ+gVyfgEy1wA+0OntR9A=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzIxMDEzOCBTYWx0ZWRfX1eaf/61+zSvb
 qyJxXVe74MLg5CqOarHo+VOqQkK8vI9whVWgWOTGNwxrTv91u5udC8i0SoM9jrwMyYsnDiI7Mhj
 iiPNBXQQJBfnuHYkbS+g7JcM2eARazJNFdqGBK6EiqeiaKLQj+SJ8HegfaAtKPkRyJvuOVcrCmo
 I9rsUBs9w0q4V2721v3hB22ndNMKO+5IEprLV0XAaomcOlbpLwfo1S9RIVGjvsBS3a0vR3iFd6y
 0khBTzBjUBhNvEm0GoMG+pWKhAo7oRVK8cn5OAoE0bO738aLZ3Ew6hsU4eRqK+2Bx5uXdPCQNZe
 xkP3Yd65szBFeWGPfqqfCnbK7W9qciE4uUOtpK8RhhtH1QnYCiL26uI7WPfWUv3umqA0f6TlK9M
 CYl8kq0z0fDaB0P6+27KAKDcFrGvUgRc9IvrrzHeivHNFDoeVi7c+Tg6gmshw/HkMSqyeSymvbm
 8Qrn9i8e2Jqkrs2yPRg==
X-Proofpoint-GUID: SGLgZw5WHI8UgLkeuyUT1aofw5NjfwxN
X-Authority-Analysis: v=2.4 cv=Cr6PtH4D c=1 sm=1 tr=0 ts=6a5f6eb8 cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=RAioF0-LDSMA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=yx91gb_oNiZeI1HMLzn7:22 a=EUspDBNiAAAA:8
 a=PcYcMbZi39MCwOMHHM8A:9 a=QEXdDO2ut3YA:10 a=kacYvNCVWA4VmyqE58fU:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-07-21_01,2026-07-20_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 malwarescore=0 adultscore=0 impostorscore=0
 lowpriorityscore=0 spamscore=0 phishscore=0 clxscore=1015 suspectscore=0
 bulkscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2606150000
 definitions=main-2607210138
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260721_060601_698352_3B493498 
X-CRM114-Status: GOOD (  17.64  )
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
 drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c | 17 ++++++++++++++---
 1 file changed, 14 insertions(+), 3 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c b/drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c
index eb0b0f61d98e03963bf92e5c822334f52636abe7..b1a85518fed0a7a35516d16da3ebf69afe760e40 100644
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
@@ -622,8 +633,8 @@ static int qcom_snps_hsphy_probe(struct platform_device *pdev)
 	phy_provider = devm_of_phy_provider_register(dev, of_phy_simple_xlate);
 	if (!IS_ERR(phy_provider))
 		dev_dbg(dev, "Registered Qcom-SNPS HS phy\n");
-	else
-		pm_runtime_disable(dev);
+
+	pm_runtime_put(dev);
 
 	return PTR_ERR_OR_ZERO(phy_provider);
 }

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
