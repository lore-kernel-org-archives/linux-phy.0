Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D8176C44539
	for <linux-phy@archiver.kernel.org>; Wed, 22 Jul 2026 13:45:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pJWnPYNiOy967R3v6hwfqLBCpPkBxzrkqX5d92WEFak=; b=iWrtxo82nUNow1
	WA4qGD3d2H8cJo7tOijEq2/QjDKJ1ZJruEhG3304oOVqYzynK8vVCr8Hcp8FO219fixMduDXWfBGy
	6XqHdk1wzXwYia+GOOIF5J9fj4Cqj7zHhV9aLk1X1VlYPaNZ/myDXwyewaOW6dHdQVIijYCN40rIp
	iifZc0VjpPEnTflXMmfG6+WLz9Y3UqijPuh3ZbofoWAbQlQbhN7WKz9VpS1zEba0SrmyNWATfb5i1
	oHHbzmXWi5Cv0Z1osYDNaOefSQVc+BJ7b8YYIhBFcWMtldWp9Ofd/zCHqZD8tLQkhas2hi0jW/Vuy
	aKw/fKyVY/YDozXC1yMg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wmXGL-0000000BwFr-1nrm;
	Wed, 22 Jul 2026 13:45:29 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wmXGI-0000000BwDz-3zxU
	for linux-phy@lists.infradead.org;
	Wed, 22 Jul 2026 13:45:28 +0000
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 66MDX5A8861517
	for <linux-phy@lists.infradead.org>; Wed, 22 Jul 2026 13:45:26 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	w1VnrF5mL82CPISYHMNOBYhwf3W9zInAag1/ZxJRFrs=; b=OQ51VTgXuSQPXKau
	wWydlVa06skJeeKKMInKfpUGjlYAjCIDIP66RiJLVqPjk7FhzB+O0QRois1bveTd
	eqXwHYml3jrn8BjIGs7nNiUPXD6s+aSSJqB4JTCYzzgopc0VfiHPWpRKs2E8UaI/
	UcQ7vmqjNHerdj7JvqOCjGbD5WRFQrOBDJMWANPjN/yhNAdZR1z7Dewl2yj1A5r7
	IGuGaY/CNaxAGw9JDTx3qUcwcRsVkWFexKIOFUFcJ78WhfqCK6o4jGLRqxu1hrna
	jZ/bY1SPst2a03qJfQazrlFJWV2tNf4rthFi4cMPTX01Sy3uNWCStnBZachXXxtD
	d+5/qQ==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4fjntn2d16-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 22 Jul 2026 13:45:25 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-522de3c645dso114212251cf.3
        for <linux-phy@lists.infradead.org>; Wed, 22 Jul 2026 06:45:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1784727925; x=1785332725; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=w1VnrF5mL82CPISYHMNOBYhwf3W9zInAag1/ZxJRFrs=;
        b=ho4gRNsPFFFgfmPTE09WLPJLAWTJrO4a/IHknNqIjT1vqlt7LkQrzM+WiBUQvZyYxY
         B98TWtoOekaHHtgMQzNhhkoI9ZUbg6ELdrkf1jiEEM84/OfFAzhP/06fRvTJbLXlXGei
         61uwHyK2eAM+74d/mjngWdPYfDH9hqv6rRPamX9OJ/+7IsYb8mhYS6QuoCf7Wvu25uI6
         Kw5q+aDE5oKr73Ghr6gxCEkAXyD7gduVIPgHu+eIphn2Dde7heRYUJNs37tXmoktj0EE
         wtbMoTa0O+xIH9VwFfWSyxvLGhQ76Byc++EXnfL6GXFUM7fF8q5El0My4Ucf3IsnF/6j
         xkHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784727925; x=1785332725;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=w1VnrF5mL82CPISYHMNOBYhwf3W9zInAag1/ZxJRFrs=;
        b=AFjQhGIGOTj9vE0P+dISuC84poM7z/VqV5gKZmxDEBn8pJGE6A/Mz/lmXdeuDzOM4k
         2AlR3CXdaeCe/VW/tDJ8pYP2NSpEI3LCxM4mnsUT/LHeWsP0+XW7Igxhf32kXmoIflTO
         T60cYWkr9WFpQncD7iL9PfCbmjqXSIlvkRJh0FVUT76msc3dCDvzkLfdLVVccowwK5fh
         aB+eymS75PNsyVLE5ma/DiuXOoutGUEcnvkqqrToC7BN6Fr1SmdjZ67r0n/pH9fRbTpd
         QeE5DAFQ+fSickmNAniKmfVtF3TXxLorXXlkSvWgIU8XcRFPYlchNTGm6b6Yah2lXaMN
         kTiA==
X-Forwarded-Encrypted: i=1; AHgh+RrwGBYklvOl2I3G5jxUG710gRcmqpKDSDQhhI5tyXb7tzAlTn5sQTjtZvwXevhYE+zat2wAwJGY/W4=@lists.infradead.org
X-Gm-Message-State: AOJu0YxUhB8Gf4UjIIsrA8KLaplmCBwpdEbzmv82xeoKKBReG9TQ4bvT
	36Fc5y2K6I+40iHs3ic52d+maRRCWLoNTYkEciLV5T4GZVfgH8e6IOCTFZ0NWYb+O5T2PObOito
	7PJ/vLdule5ETYW+qclW61JJStwgwat0LqGlyw+ndn+7zIemLvpN/xrrXiMYHbdhqRKxJ
X-Gm-Gg: AR+sD10v8ntPIsouqER7yQdZEHu8opF7WdgMzLsaqFDwk1ONuKNo1eWlrWAf/dFfnF9
	3YKVfElcLMOlvk4znLYUsN3+ATfCRKSLh14WxZWS7lcev8/Exh2BcHAvvDNbxPjcpN1o6neQ8v0
	gUHIEOWQ8+naHeiUGoOiValtuTzUwOsHEkg+pqtUzrNlvPYU0F8cDVp7m578xZEKWmIGmNeoQAh
	BgZ4s5EEV7zYkG8wGWgMQ+HgRW/G5sj/J6YuMcIOwrp40i+7ZpxHBdmK3Ji1GOmLCRn42Y9WH+4
	idFcm305KMczBXQseYjXrWY5Ve75EtdQbwr/ERKFoUnkfpKn2nK3XVibKNHV7Pa7t2xLTlAMsZZ
	kiGj6hSgPbTCDwDhpCgbNQBA7LZcO4TTT24TGsoHi/oiAVtnQk4nJLn9Q/nhfsgXOQY4nZ2OwBD
	19VL991iTrkzvdQfAyjRFc7dIQItLQIAnscpqjwuCqKzvL/12XWw==
X-Received: by 2002:a05:622a:8405:20b0:521:8ef0:b4e0 with SMTP id d75a77b69052e-5218ef0b690mr129440011cf.17.1784727924623;
        Wed, 22 Jul 2026 06:45:24 -0700 (PDT)
X-Received: by 2002:a05:622a:8405:20b0:521:8ef0:b4e0 with SMTP id d75a77b69052e-5218ef0b690mr129438601cf.17.1784727922476;
        Wed, 22 Jul 2026 06:45:22 -0700 (PDT)
Received: from QCOM-eG0v1AUPpu.na.qualcomm.com ([2a01:e0a:830:450:48e:a2cc:6c4:c92a])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-c1c32ac8c3esm111874366b.23.2026.07.22.06.45.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 22 Jul 2026 06:45:21 -0700 (PDT)
From: Loic Poulain <loic.poulain@oss.qualcomm.com>
Date: Wed, 22 Jul 2026 15:45:16 +0200
Subject: [PATCH v6 3/7] phy: qcom: qmp-usb-legacy: Fix possible NULL-deref
 on early runtime suspend
MIME-Version: 1.0
Message-Id: <20260722-qcom-usb-phy-fix-null-v6-3-534f7e61b9a6@oss.qualcomm.com>
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
X-Authority-Analysis: v=2.4 cv=AJsSZ1gA c=1 sm=1 tr=0 ts=6a60c975 cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=RAioF0-LDSMA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=rJkE3RaqiGZ5pbrm-msn:22 a=EUspDBNiAAAA:8
 a=QCvEx_dtP_Vb2dzgXhUA:9 a=QEXdDO2ut3YA:10 a=a_PwQJl-kcHnX1M80qC6:22
X-Proofpoint-GUID: WGWKtxLKqZzoAzh1oO1LmU7hP2H9JU3U
X-Proofpoint-ORIG-GUID: WGWKtxLKqZzoAzh1oO1LmU7hP2H9JU3U
X-Proofpoint-Spam-Info: AW1haW4tMjYwNzIyMDEzNCBTYWx0ZWRfX1kCyfSmpcc0e
 Q6ij97tqMf81PS1DcsK7tCS2npCzL5EjO5ssF6uVzRmCaJZJnk5EOet0DUZMGR+31h9N0aiZ3Dc
 zye7F+AAvKgf/PGK5755dNVfAS5wpU4=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzIyMDEzNCBTYWx0ZWRfX2lZCmpXcAyXB
 TKjnN4iMPkQ3vgr+5JfJSIBOpWM6gTGOJPGPTY3X1yzzEbQ9G5MY6oUvtN4SW+hTpOi1DGrngy1
 yIjZFfaVThjov5FQ9M48Iw7cgFOeIixcWKFmAQ2sUcYwPuTixR6ekuTCoFc8Lt/4GaFyOs/eqy9
 7MQkh6oevwuB8MzbZ3SbPWwUuV9fdaADZkfyc7vyZT/GfOJ8h6IjPS0SSmI2sqsJU56es8fm4nt
 fBaqy8wS+mbYCO+TedTiwVviJzwdz7mQGFP+dOf3W0zN8uArGTXlk6ZST3i7NPMfvsVRZRpHKZK
 RkTMfbkslYUzxrgqf10+UrVQQq04ycDER674zkwrdquxwJxFh3RnLPNmwhMiEPXc0QXN5qE7f3E
 UYR+MefJCwvFERTrRPD3XcKR3vo4iVBn/+nm/MLH5a2z/GbYzCqx+5fdTVfYx8Mq2JMWBJCbf0n
 G1PJOZs6IpCN+18hd5w==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-07-22_04,2026-07-22_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 spamscore=0 clxscore=1015 phishscore=0 lowpriorityscore=0
 bulkscore=0 adultscore=0 priorityscore=1501 suspectscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2607220134
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260722_064527_115256_0238E1DC 
X-CRM114-Status: GOOD (  16.32  )
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
Reviewed-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Signed-off-by: Loic Poulain <loic.poulain@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-qmp-usb-legacy.c | 12 ++++++++++--
 1 file changed, 10 insertions(+), 2 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-usb-legacy.c b/drivers/phy/qualcomm/phy-qcom-qmp-usb-legacy.c
index 8bf951b0490cfd811635df8940de1b789e21b46c..fc490589c8e4888770807a60170905a1c7610421 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-usb-legacy.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-usb-legacy.c
@@ -542,6 +542,8 @@ struct qmp_usb {
 
 	enum phy_mode mode;
 
+	bool phy_initialized;
+
 	struct phy *phy;
 
 	struct clk_fixed_rate pipe_clk_fixed;
@@ -895,6 +897,7 @@ static int qmp_usb_legacy_power_off(struct phy *phy)
 
 static int qmp_usb_legacy_enable(struct phy *phy)
 {
+	struct qmp_usb *qmp = phy_get_drvdata(phy);
 	int ret;
 
 	ret = qmp_usb_legacy_init(phy);
@@ -904,14 +907,19 @@ static int qmp_usb_legacy_enable(struct phy *phy)
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
@@ -988,7 +996,7 @@ static int __maybe_unused qmp_usb_legacy_runtime_suspend(struct device *dev)
 
 	dev_vdbg(dev, "Suspending QMP phy, mode:%d\n", qmp->mode);
 
-	if (!qmp->phy->init_count) {
+	if (!qmp->phy_initialized) {
 		dev_vdbg(dev, "PHY not initialized, bailing out\n");
 		return 0;
 	}
@@ -1009,7 +1017,7 @@ static int __maybe_unused qmp_usb_legacy_runtime_resume(struct device *dev)
 
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
