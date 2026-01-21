Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CC01DD2ED0C
	for <linux-phy@archiver.kernel.org>; Wed, 21 Jan 2026 14:28:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pzk+wzhxA2FiOrvqUSpNf86CEi6DmFf1zZNVjHeCS2g=; b=vuXkMhPB2s5Fe9
	DFz75o4FqnamJz6YCy49DIT6zDGJe7UEpd0y3MfTXFfM0m6Gq8/2qgAhjGcHvyzeBMJR6EFDHy02b
	ZDqOYD/P29XGCZqVnd6GN/DbFZ6fnwOuOrGKseMpLOPX36v2gU26DZ9ZJH5OSdudcWe8KQMZNNBFu
	MMbTVXHbtHMRUzp77UgtH6XYgFN6aQxRW6dlTbXOLpyB9dUo3ARj60W/iB0o6lovoTxBRTcw7zSMl
	bdv8RAHtuS/FTb+O1CL/V59KoBw24ZyIBONSRtGyDuOvTasSPXYU4RW3VNmyLRh8GkusjWvs6w9IQ
	CpqnRJT8VyueEu3BmfdA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1viZCS-00000005bb1-2QRE;
	Wed, 21 Jan 2026 14:28:48 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1viZCP-00000005bZ8-1bOI
	for linux-phy@lists.infradead.org;
	Wed, 21 Jan 2026 14:28:46 +0000
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60LAeG8w2816866
	for <linux-phy@lists.infradead.org>; Wed, 21 Jan 2026 14:28:44 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=fSPVEtsA0CJ
	0Je7MYOTxXGPQ+fxkp+tsaduAD/jG3ac=; b=eOfFH6ZMQhsfuHehZbcSg28oywv
	ueUQOq6e7zSABmUe+XNQMT/TUQD1aOlDFeGMYmsFRqObIuZANT5bOopj8uaQhdGD
	YJHpTs7DSWB8bS5di0ldf3e10/25fRqUixtVhdKbJbNTFyK3GgoMifym4jBnNhpU
	BnDeR5JhVAsoArjS/9h9j4OB5FyOBX+mmkbP2ksIZjt5JofJmJlDU+ZcUZpHBLfz
	eILytHws9vm4G2EjOwRZJKJKi+wXFxwYu1V6NwJjpc+JQLAlPHNYo6amMsJ1/lSG
	xAN7WHVol6n9C8G8FID7FyFp+DsyVtoj5XXJTsYyPIpeJgIDWVlLmtexpRg==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4btw8kgptm-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 21 Jan 2026 14:28:44 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8c6b4058909so903042185a.3
        for <linux-phy@lists.infradead.org>; Wed, 21 Jan 2026 06:28:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769005723; x=1769610523; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=fSPVEtsA0CJ0Je7MYOTxXGPQ+fxkp+tsaduAD/jG3ac=;
        b=cYVYwQi1iGiNSFfdj+O4lb41jWfCb0LOaiXH7PPphEjYa4/LG+veacfz9cJDvsgetC
         iKkLh4lSp+hKQBC7X26Bov9EwxMEujIgZ6rty4wQuO2tlXlHfU13Gs0Gg9QPryEtgLJy
         Gkq7FA1Gd+fDweHbHaEoQuxND1HHWHFknuHtHpktaJiXHN6EqQiviclvb06yECmeM6eR
         dOh5j4OFeHQyp/LKkYJgEpqfpeBI1uTAVUQabDE9e97kDzyBHQ1079wKW9l3ZrAqNDJX
         G9CqGa4wLyF0dq4OfRQqWiGwuo7GRsckpEqkIy6S0mzr1hFpQ8fUJ9AV5uJvbCBDfIBh
         ZAog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769005723; x=1769610523;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=fSPVEtsA0CJ0Je7MYOTxXGPQ+fxkp+tsaduAD/jG3ac=;
        b=b5Gz0et8c8CK+9PDaSL2XbMl34XnLo0WclcDOzuHyKmNox+psa7E1lcUUMvzl3PKgH
         MUuki6ILpCVnLViuHhJS8Dvg8LUn+jy2fhb4845cb+Wwc03n2mVqekQZm45wUovdCm5+
         qF/ZUr3BldUqwYuLdcu1rxJuXgeKHHezMPrwsrAbPSRu/yyZDubgb1i5WIUm/+CuDLT2
         bh/jDQ3r3SbDwMSJZy7tKwZra+hd7Pfka/ACcuWWNk6BqqgQTDyFway3C2/vS06yvktY
         gRBUvEclAmpwOybqwI60PIu8AvQCu5a2okuFPFmSkZ7HuDMYGvEzTd+/JJ3iofSP0jM5
         1dzQ==
X-Forwarded-Encrypted: i=1; AJvYcCX+OLrGnXtiPIW6tYNWMxJFYsDbkQI8voYFs8+nfak6fQLarV3F6lHr4JJ4l/4v86hefPwuP3Z2pWg=@lists.infradead.org
X-Gm-Message-State: AOJu0Yy64UjbyFSZJdQ+lxPB6mCSVrGBjMUUaFQlkSx/9Y89BiaePdd4
	WvWf+WNbLG7LmCYY2GKpLUpdXwZ/HyiMnAwZhatFTf249CVWycyM8B4MbRj4HLXGNg2qTmr95Eb
	b7plLF7z58WcHIGZhGvbTYDwGHk5fVg/Ey/AYQA+uzk3B9d7Sy4eN7RxrAifVk5ldCr0T
X-Gm-Gg: AZuq6aLfsKhUj5Ee+OC6CB520mDY8Y6gl5LstASv9cmG+tBiGw3NAOaSbltgX4phAee
	hFsdWZtnif8W4QfWidhc6+jEqptzu9TMJzZTA5QzxtBJkcDmwJsc5rRwJne+m2ODm9nfGeftDCz
	slXxoRKkEq9mURy4/3aIdVHd0b8Tl2zykQV9ORH6UA2QiHw+JRrGr404FyYpCnzBsRgQrIMgQbb
	WzJSvLUJSFByI6zf3DugUZk982X8Qz6xcp92CqwnZmL6rbAF3AtmlmLKVdA1ozk5QawKJ8SBuGa
	RUwr85jhId0rsPaOCZhQ5UlMhrpTjQwbI4LW1UO6f3eGBLI2Stui/47LH1qqVCrRYJBQ6M8NdR0
	VUYDaGgacFuoUOZ/UCmVRxM40psr+/TLAosq8gOLfcv4IzFTRXH5+vkArpmmdgPll7C5sk4i2rl
	h4gUQB
X-Received: by 2002:a05:620a:7082:b0:8c5:38ff:d4e1 with SMTP id af79cd13be357-8c6a66f68bbmr2278757785a.23.1769005723169;
        Wed, 21 Jan 2026 06:28:43 -0800 (PST)
X-Received: by 2002:a05:620a:7082:b0:8c5:38ff:d4e1 with SMTP id af79cd13be357-8c6a66f68bbmr2278753685a.23.1769005722500;
        Wed, 21 Jan 2026 06:28:42 -0800 (PST)
Received: from QCOM-eG0v1AUPpu.qualcomm.com ([2a0d:3344:10b3:c488:b09f:b54c:1120:95f0])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-435996540cesm6098180f8f.43.2026.01.21.06.28.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 21 Jan 2026 06:28:41 -0800 (PST)
From: Loic Poulain <loic.poulain@oss.qualcomm.com>
To: vkoul@kernel.org, kishon@kernel.org
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        dmitry.baryshkov@oss.qualcomm.com, neil.armstrong@linaro.org,
        konrad.dybcio@oss.qualcomm.com,
        Loic Poulain <loic.poulain@oss.qualcomm.com>
Subject: [PATCH v2 4/6] phy: qcom: qmp-usb-legacy: Fix possible NULL-deref on early runtime suspend
Date: Wed, 21 Jan 2026 15:28:25 +0100
Message-Id: <20260121142827.2583-5-loic.poulain@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260121142827.2583-1-loic.poulain@oss.qualcomm.com>
References: <20260121142827.2583-1-loic.poulain@oss.qualcomm.com>
MIME-Version: 1.0
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTIxMDEyMiBTYWx0ZWRfX6jpcdK9EEN5j
 hLGLgbc6RpYlbwFVXOF83rDl6QquXZKzKdMyIwsGDlxInWyiUxunj3Nrb5xbG9akFxXSzkw8f45
 R8Nlq9dNUjhoI+ERG1JH/6rxywy8RPMbViSgS2IdFv8cG3NaUzmqcJKt9tCK20QlheUklzdAcSj
 ZnNt2aoSePA0cO8pn6dEmQQPOl8voeyKxSMUZ4BcMnl6lKSwGlpmn0vYh/r7HPUN2IXlFxjlLji
 HBO8SCsEdHDGTXoKVCGc42fvpIpe5iIAQmXB00SV03kgI6g1OS7wMbB+lNQxo0FO3nbuTd2+YNg
 F+c5vuRqn9CWJUV/jls8U4nAQ/Oj5QLvJyTw8pGfU9jtcHc3onHSwMrOrQAEqog5uOCJ93HLAGq
 238zCsVVode+A2nSFWsIG4OQz3kduYCE5La8ETW/YeYKLDoTQXXxjRqIlrmZaGNodVOy4gQ0y+5
 VLbpkXZYpqKB0wTJtPw==
X-Proofpoint-GUID: oYUP08VL7ghlIVYBQ2p4LDSQj2vFV_4p
X-Authority-Analysis: v=2.4 cv=BPW+bVQG c=1 sm=1 tr=0 ts=6970e29c cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=xqWC_Br6kY4A:10 a=vUbySO9Y5rIA:10
 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8
 a=QCvEx_dtP_Vb2dzgXhUA:9 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-ORIG-GUID: oYUP08VL7ghlIVYBQ2p4LDSQj2vFV_4p
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.20,FMLib:17.12.100.49
 definitions=2026-01-21_02,2026-01-20_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 spamscore=0 phishscore=0 bulkscore=0 malwarescore=0
 suspectscore=0 clxscore=1015 priorityscore=1501 adultscore=0
 lowpriorityscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2601210122
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260121_062845_505535_3AB2A2EF 
X-CRM114-Status: GOOD (  15.52  )
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

There is a small window where the runtime suspend callback may run
after pm_runtime_enable() and before pm_runtime_forbid(). In this
case, a crash occurs because runtime suspend/resume dereferences
qmp->phy pointer, which is not yet initialized:
        `if (!qmp->phy->init_count) {`

This can also happen if user re-enables runtime-pm via the sysfs
attribute before qmp phy is initialized.

Similarly to other qcom phy drivers, introduce a qmp->phy_initialized
variable that can be used to avoid relying on the possibly uninitialized
phy pointer.

Fixes: e464a3180a43 ("phy: qcom-qmp-usb: split off the legacy USB+dp_com support")
Signed-off-by: Loic Poulain <loic.poulain@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-qmp-usb-legacy.c | 11 +++++++++--
 1 file changed, 9 insertions(+), 2 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-usb-legacy.c b/drivers/phy/qualcomm/phy-qcom-qmp-usb-legacy.c
index 8bf951b0490c..258e0e966a02 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-usb-legacy.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-usb-legacy.c
@@ -541,6 +541,7 @@ struct qmp_usb {
 	struct regulator_bulk_data *vregs;
 
 	enum phy_mode mode;
+	bool phy_initialized;
 
 	struct phy *phy;
 
@@ -895,6 +896,7 @@ static int qmp_usb_legacy_power_off(struct phy *phy)
 
 static int qmp_usb_legacy_enable(struct phy *phy)
 {
+	struct qmp_usb *qmp = phy_get_drvdata(phy);
 	int ret;
 
 	ret = qmp_usb_legacy_init(phy);
@@ -904,14 +906,19 @@ static int qmp_usb_legacy_enable(struct phy *phy)
 	ret = qmp_usb_legacy_power_on(phy);
 	if (ret)
 		qmp_usb_legacy_exit(phy);
+	else
+		qmp->phy_initialized = true;
 
 	return ret;
 }
 
 static int qmp_usb_legacy_disable(struct phy *phy)
 {
+	struct qmp_usb *qmp = phy_get_drvdata(phy);
 	int ret;
 
+	qmp->phy_initialized = false;
+
 	ret = qmp_usb_legacy_power_off(phy);
 	if (ret)
 		return ret;
@@ -988,7 +995,7 @@ static int __maybe_unused qmp_usb_legacy_runtime_suspend(struct device *dev)
 
 	dev_vdbg(dev, "Suspending QMP phy, mode:%d\n", qmp->mode);
 
-	if (!qmp->phy->init_count) {
+	if (!qmp->phy_initialized) {
 		dev_vdbg(dev, "PHY not initialized, bailing out\n");
 		return 0;
 	}
@@ -1009,7 +1016,7 @@ static int __maybe_unused qmp_usb_legacy_runtime_resume(struct device *dev)
 
 	dev_vdbg(dev, "Resuming QMP phy, mode:%d\n", qmp->mode);
 
-	if (!qmp->phy->init_count) {
+	if (!qmp->phy_initialized) {
 		dev_vdbg(dev, "PHY not initialized, bailing out\n");
 		return 0;
 	}
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
