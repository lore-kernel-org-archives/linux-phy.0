Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 631DDC4451C
	for <linux-phy@archiver.kernel.org>; Tue, 21 Jul 2026 13:06:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pJWnPYNiOy967R3v6hwfqLBCpPkBxzrkqX5d92WEFak=; b=nl8rVzMl8OTYTp
	pQEItKP4qCfr2mcl6XJyWvZfnpeHvH7bvL8TRgoxX+FrVfy4ao5Tytu6HtsmdW8vNrIGRjPyFWU/8
	5+z4ffxoRJDB924yroc09QR3l0iZkBPw8P7X5XBaP4Hcoz78/Tmt1KGHUqKVzkRiUP+bybHiTiHK1
	J3Le6tRA7aeGHrxJY2GALycQteq4arCmTBY/HzTz4bc1j7hlFVOCe2PVOBq6IHxvsDlgJmrIIh8GA
	HNwtj3b/jOFkn0+j1EIQ5neNbV/JPRfaSODuuT9a9WRdF7lJxVx/7cnp5HXJcxkHP451xRMWjJBNC
	Y4y32G4onVxLpKHbPUcw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wmAAi-00000009U8k-0Nu2;
	Tue, 21 Jul 2026 13:06:08 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wmAAe-00000009U7b-4Axy
	for linux-phy@lists.infradead.org;
	Tue, 21 Jul 2026 13:06:06 +0000
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 66LARSbj1385920
	for <linux-phy@lists.infradead.org>; Tue, 21 Jul 2026 13:06:04 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	w1VnrF5mL82CPISYHMNOBYhwf3W9zInAag1/ZxJRFrs=; b=GyFacerbsu+7NaWF
	PA6zCWDW9/Z2oximPkP3NhvZeOLrSkdd5rwtoa+SmYmnzqSSIcprdvf61lpGvqUC
	s8J4xAjWdLXRtom04ClRv7zoN4OPMBYFBuZl8Rcq283F4XaLfzd45q7N/rJYxQrG
	SgeJnSkUt0R+US+ooe1GADTDM8ugUMcZzlEfGcSSZsPLaxinmzB7snBNF3rSjx71
	F/wvZCbH7wESDGTyVqKmTgyT09/4xHY114+v7kpSI+l2qZ2EXciB0hrvQw7kS4et
	UmAgEK/Ia0uDG+rVgt84gP+g6yqUp1rzsTwvv1oSsnOCokrALq8ehWwAQbyCMAuf
	xqVdiA==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4fj1se2adu-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 21 Jul 2026 13:06:03 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-52769fc3f2eso2908321cf.0
        for <linux-phy@lists.infradead.org>; Tue, 21 Jul 2026 06:06:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1784639162; x=1785243962; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=w1VnrF5mL82CPISYHMNOBYhwf3W9zInAag1/ZxJRFrs=;
        b=N0FN6FcirdkTe7UqgY8gMTGZ9ie3IUjclUYVbc73qoMC9dcZ3qaQNEuPi/34SbTS4A
         GilQRYX/7Gajfmgh/X99pjBZNzxznnIEeVZgL7T/baedxVGzJZ1xrEOYnyuUhkasTjFg
         aad6UbpBjj80lVyJMT/VRvr20+TcDAo9PIrogANBzsqR1E4MYEWEx/cn/u/OennUylJa
         XqYttn5md4tqrSRRjzzsX5XYKuv0/zxHHw7INut7/RdKn6noszmn7dZ5z68vi0VY26TP
         b1yZtQYGrlYTDW6Ov1/ddtydbhVb7Tv8nGwlsrNTN+eBbk2W997VVorYV4iYAreNcl72
         czjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784639162; x=1785243962;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=w1VnrF5mL82CPISYHMNOBYhwf3W9zInAag1/ZxJRFrs=;
        b=ZbMOgrfP8HZU3OVNSIJ6BL7A13hCZawsJB6z5y9GZnwP88SUCo3w2K0WQZij5/3uHb
         vaNqA9eYC/w/p2CbNEzxXsNm/4Ftij1QsFYVL3kTZAi7j/TvSl0lqzqinnvS+fnTCTS8
         3ciuUNrLc+OlYveBxLpZZgpySsH90CDRMMUqYd9Nk6bSd9t8Bml40xFtB79OT5ftCrPo
         innmPOoskCnnBaySEGZePWGjPf5Ku1Khgp8SOLJ7GcXsv5+dkVM3VUb1JsGbJ3T9VHRo
         S6xaTskV+U4K1C6BpDdJnE0s7FzIU20rJr0/X6Rw23jKJM8CFVsSVxRAnWbVYPSO5AJa
         by2w==
X-Forwarded-Encrypted: i=1; AHgh+RqSB6BQEohr2NXEdq33YXeBwYHJUc6lO6c5FskeL1KazrjwP8uRziG3IZWs1RdvqnnSop+TqXf933E=@lists.infradead.org
X-Gm-Message-State: AOJu0YxKq5Rt+sVlqxCuzkYmtC5mnxSBlHw+hIKaZgxTZC3XQdb46sAH
	jTdqEoqJfpMfHvXjdt7qu6GG8UfI7LIvfX3TyNnw8CyILWTDXXUj+jzZ5IDW6Eiep90qae/wG0E
	0ikhbdUgArEovy/aCXlzifmZyfF4MBa4hFcVyuLJNyCQ0uzy87/8MLu8xtbfSWpZPZNt9
X-Gm-Gg: AfdE7cnavc5CVyevPv7/nosb6gQX+5czT+dBuS5yBXUSHHX/t0OcCO3BdAS8LAR6adJ
	LWfZdEJISCHw0KGsbirZqY5tq9z+P+SgmGjwiak9gaPGdwCMn05q2X7sqTKLvnTvc7ZNRAihEEo
	MgaAiAo9LDdbra987XZ44lWyVYc/NRaKPVV7D0+FzjfXSpYs+YW1GD4QwdriCRc96Tgy7bUwZDE
	ml9HBNbTYGLrJCF2ROBk8oTtgLLUvVdj2vApDsYL/9N0ZAWbYPdpuS+L1A9h12oaGtycsUFxko/
	TzEV0EIo4cslp5X5KIK9ziLBKlICmwGLteHjhIaLtUX8CwiysKfAbjVtZXFjY+ccyVt37E4UJyA
	j+0FWNd+NBQIuoZN4TwTk3WPH8cwn/ukiyU5QBjYEaJx1Y5pBiMo+kpAQKl2P4eWZQthOjrKwIq
	ODf5796e+7FUhphnwCzdiiy2yUjGmhRA1P52biFqtXl9+C7rWSiGY=
X-Received: by 2002:a05:622a:110c:b0:51c:167d:b346 with SMTP id d75a77b69052e-5213c5f3a9emr164345411cf.23.1784639160558;
        Tue, 21 Jul 2026 06:06:00 -0700 (PDT)
X-Received: by 2002:a05:622a:110c:b0:51c:167d:b346 with SMTP id d75a77b69052e-5213c5f3a9emr164337661cf.23.1784639153460;
        Tue, 21 Jul 2026 06:05:53 -0700 (PDT)
Received: from QCOM-eG0v1AUPpu.na.qualcomm.com ([2a01:e0a:830:450:751c:d61c:c91:60dd])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-c17009ae04bsm591898066b.8.2026.07.21.06.05.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 21 Jul 2026 06:05:52 -0700 (PDT)
From: Loic Poulain <loic.poulain@oss.qualcomm.com>
Date: Tue, 21 Jul 2026 15:05:47 +0200
Subject: [PATCH v5 3/5] phy: qcom: qmp-usb-legacy: Fix possible NULL-deref
 on early runtime suspend
MIME-Version: 1.0
Message-Id: <20260721-qcom-usb-phy-fix-null-v5-3-a181e2adbd2d@oss.qualcomm.com>
References: <20260721-qcom-usb-phy-fix-null-v5-0-a181e2adbd2d@oss.qualcomm.com>
In-Reply-To: <20260721-qcom-usb-phy-fix-null-v5-0-a181e2adbd2d@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org, Abel Vesa <abel.vesa@oss.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Loic Poulain <loic.poulain@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Proofpoint-ORIG-GUID: OoupdmuWzNvTujXFg8pAhJR0oVytD9JU
X-Authority-Analysis: v=2.4 cv=TIZ1jVla c=1 sm=1 tr=0 ts=6a5f6ebb cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=RAioF0-LDSMA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=ZpdpYltYx_vBUK5n70dp:22 a=EUspDBNiAAAA:8
 a=QCvEx_dtP_Vb2dzgXhUA:9 a=QEXdDO2ut3YA:10 a=uxP6HrT_eTzRwkO_Te1X:22
X-Proofpoint-Spam-Info: AW1haW4tMjYwNzIxMDEzOCBTYWx0ZWRfX4PwLqBagNBcS
 O9j3Lz97i0WIBHMdkYlraK3t7rWAttVMRNhp4sdfKJGMQVI0t7hVWgwO58/RT5tb7WxrglzbBsg
 HN2GJYrzLUM8Z0I/k2UR8H7IB3PNFdc=
X-Proofpoint-GUID: OoupdmuWzNvTujXFg8pAhJR0oVytD9JU
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzIxMDEzOCBTYWx0ZWRfX9eB5JuqGN0wu
 1vt6SGxRAvIsd1ExpNpSn4h6fLsu1xy0hODxXlzN57Ckfj9j3k3d596+KKyKkBoKJiqL11uqZ8b
 /7Bzh3u/2WqhQ6J/mAfwc1gqb6x/KvAyns5KFzSH9Ncfn9aNUr9tCQtjWKBp3cdHvIYPHvcseXx
 iUiujwiDDx1EfTNT8+7W9IL/n7kiKQVTuE3dURJMNVyHBjdoLdIq1eSbFAzcq4JQVNHrykJ8Hzs
 b+HHTB1+Y8qUdhTj7nFFj+QqYY5PFBnS/k0HWVMWGnpEKOfab6Yl+bhKdbZbJUV8nXaeC2efGnc
 QGADO0NCvXcl9YB4QtfrQ9DwTz4MhinGEJdNNN7Xt1tSPzOnNFIQOfzrhb6o31/gY1w9YPW9E3v
 gHsmdd3MC+APogQO/qtfXRUMnXwz86rOUlA2Hro1HXQM0xodMW2V25am+CQFfikoZRoNiqaHzxW
 DhoV9qlJEAt8eynhCJQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-07-21_01,2026-07-20_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 impostorscore=0 priorityscore=1501 spamscore=0
 clxscore=1015 malwarescore=0 bulkscore=0 suspectscore=0 adultscore=0
 phishscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2606150000
 definitions=main-2607210138
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260721_060605_154660_F34F293F 
X-CRM114-Status: GOOD (  15.82  )
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
