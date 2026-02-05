Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8D5A9ECD980
	for <linux-phy@archiver.kernel.org>; Thu,  5 Feb 2026 16:02:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=98hE/Tx6lNjoECraueUMnvBhrCuht4frYof4rUOf8lI=; b=FpkFFiKRD1DtYO
	l1jlWsYbWdna89qb1sEF6NhDW3rTuPsWslrRXFnRriSfdv3fPWvImRjqKKZT8ltc0EvQ5B41Q5RIt
	okT6BP72zwP5W6xuGgOPnKfC6vMd2i8yIb38phSaBWEz0S1G9quukbnOn5QM9GwbhDp/4xqftNhpl
	FlyQkSvE5EKjloILj7as4BgVFhf1xic1IRI9VxyW/6QNJHIn5BkbUU3VddmPaPEJAdDYdbBq7gqyt
	UxBqbvmt3kjmSVmOfBi0UhPhi0gt2Z2saXVlqwEYup2oj1MNMkJFuRfn1phuP+tqTa0rsxEHVq91o
	MBfeprYPyXBWwvVVRpbw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vo1op-0000000ACbz-1142;
	Thu, 05 Feb 2026 16:02:59 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vo1om-0000000ACaw-0iQl
	for linux-phy@lists.infradead.org;
	Thu, 05 Feb 2026 16:02:57 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 615BlYrR4135733
	for <linux-phy@lists.infradead.org>; Thu, 5 Feb 2026 16:02:55 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=/f3BuWs2Trk
	IzcVgpd5kLu/+y3eG6mU2IZQHNt/J4D4=; b=NfrnOwJAG0zVTR7UEupJTQrcZTe
	4+Bs/y0fZkwHTHg2sbs+iJik99din/rF+8KzPivLvKLAwF1vsYvEYvDOIwiS/4Su
	AfbdLjFacOs+8FyURjVE9IebcgtvIB7m2gnSqptzgOCHjKFwbCcnFp0Bh71kS9h0
	OwlSrMSdvetsQGvJJ/pCswBP4wrATTiPz8+i0Tgzahv+S/xqxckkqo3T71G++bRP
	WD4Rp2Bf/3bfKkmP4V4r/skppQ4ZPL59jc7k5wldEXnoQXKd80t6sjwLGqincbhZ
	uxFaGo+5KKvqezrXZG6/UAYvmQZ0tedW2e5/aIfeWB5LRSnfy6viNdlmEJg==
Received: from mail-ot1-f69.google.com (mail-ot1-f69.google.com [209.85.210.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c4tn40t9q-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 05 Feb 2026 16:02:55 +0000 (GMT)
Received: by mail-ot1-f69.google.com with SMTP id 46e09a7af769-7cfd9a9c1beso2893930a34.3
        for <linux-phy@lists.infradead.org>; Thu, 05 Feb 2026 08:02:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770307375; x=1770912175; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/f3BuWs2TrkIzcVgpd5kLu/+y3eG6mU2IZQHNt/J4D4=;
        b=D8KQxlJRzXZHwvmBJR/Fv7qfnnrUir9sOI6Lu35o3O9VJeajmBqCAp0r5SAdKW8kTl
         K8H63VefFO1FrKcw+9lycxsuGzb2vCSzAIzsKgjFt6jpGtX4JRJ610R0zQE9+VCNkMVe
         TQleGaU0UBmZrCOBbwgs1FdA6Jo+6EhnlDQt6SSeNruve0uuvA+vRK2XhBajogoI86Dm
         2QoaqX0ckx6leDzSsuCHVAOt3Ms5bbsEcSmbJ3mwCYjo/UDDtOdUCG2bPyJV+ie14JA0
         GPf0iFO7044Bi8aislXOSTLEFwNNV6ukIZeeP5b9W+Kg630SlWddkoUpbWONQZTpGBzI
         PsMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770307375; x=1770912175;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=/f3BuWs2TrkIzcVgpd5kLu/+y3eG6mU2IZQHNt/J4D4=;
        b=DgyyP+Vwcb4qNg3LvllARvOy6I2WXUs7pz/1s8Ojbe8lI3pBHZsZFxSc5SXJM9lura
         hhBQe4lF4iWbRMw7PtVW/9IQLKou7I+eREqpNCPISUMRCIzZgSwuL64EFyc0LQgv596U
         7mPecvypn60v6XO3zAMvKGVJ2lGgLo4TzIP4d1dFv79hZhLxTYVcH5zqBU34q6ZyeV8i
         DwCm0uwD02L4fCp9DDb8xOW1jXnYdXoaDUqw4q5pzN5DK1+5bD1ZwbXawKj5kJwc6Wsp
         jYvRZxH/2WotWHKU0CRSwEHUTltfBvsXQ4+8UrFA8Kxr243ZRvfI0S1U4v40wkKLm2zE
         Bv2Q==
X-Forwarded-Encrypted: i=1; AJvYcCVOOeiqaePLBhv9Wf8/CtGx4TigtDM5MynezUfrkrTv+c7XDa8ifCKjGeGqa79c6/hMbN15deRovM0=@lists.infradead.org
X-Gm-Message-State: AOJu0Yw5xxXYrudxV8mJ64WAANeGMK1VklOoC1coCHgAN+4LJvYPFdWO
	zJi2f2xAnNTvqyW4YssAOknGSOGuM8g/WzfRFLT+JFXMoiUMuHwSjG1/IVpuy0eKNndLtBP7A/e
	1Sg4CqFp+bUl4lxbyyGSfHFlgKSYVQV94b5Fng360aXWboNe0u+Q9drdOVkPMnkq392tr
X-Gm-Gg: AZuq6aI34dGlGRm9D2FjQqH6im3AjvKH9gwZ+d3EHK2AdW1NYxbWOYvbo2J/xhRlxWJ
	r0O7cjPRebA9+wClBcHDszts/0Rcv2LKOBNagouAVZTrY3dHEw81s/8r2/GyJrjYi3776HFaoYg
	CcG0E6KmUIu+7Ud+Hv4KLsszUArEipEElv1cSr5lTrhm2rCMuqpng5zRblWgAUm20aqT1YGO6vp
	uDwE/+3+Vxuu8Nas7YrQEanIdhqRuGpXN3ngliDUdam/AKQm1mbu9JzGRNBn2ilk7YtJ64nWRHY
	4Erw2nUFN/42qFfuSKuT/anN0CBxzUU9KQKhe9YV5rYQJ28EQRaNYCu/6WBKUfKsd4HAk33sKue
	tKOHvp/z0J8ER93mZ8fAhdRPP6thGS4fIRXUpJ3S5XpBCHMaaiJcogG4SqA5k/eBH+ILgfYzeFb
	t9
X-Received: by 2002:a05:6830:d0a:b0:7d1:94d0:e8f1 with SMTP id 46e09a7af769-7d4489f3a63mr3831368a34.15.1770307374848;
        Thu, 05 Feb 2026 08:02:54 -0800 (PST)
X-Received: by 2002:a05:6830:d0a:b0:7d1:94d0:e8f1 with SMTP id 46e09a7af769-7d4489f3a63mr3831266a34.15.1770307374194;
        Thu, 05 Feb 2026 08:02:54 -0800 (PST)
Received: from QCOM-eG0v1AUPpu.qualcomm.com ([2a01:e0a:82c:5f0:103a:9c65:ad2d:82fc])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-436180640e5sm13770002f8f.40.2026.02.05.08.02.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Feb 2026 08:02:52 -0800 (PST)
From: Loic Poulain <loic.poulain@oss.qualcomm.com>
To: vkoul@kernel.org, kishon@kernel.org
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        dmitry.baryshkov@oss.qualcomm.com, neil.armstrong@linaro.org,
        konrad.dybcio@oss.qualcomm.com,
        Loic Poulain <loic.poulain@oss.qualcomm.com>,
        Abel Vesa <abel.vesa@oss.qualcomm.com>
Subject: [PATCH v3 2/5] phy: qcom: qmp-usbc: Prevent unnecessary PM runtime suspend at boot
Date: Thu,  5 Feb 2026 17:02:37 +0100
Message-Id: <20260205160240.748371-3-loic.poulain@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260205160240.748371-1-loic.poulain@oss.qualcomm.com>
References: <20260205160240.748371-1-loic.poulain@oss.qualcomm.com>
MIME-Version: 1.0
X-Proofpoint-GUID: ziYSzuwd2BuZgRuCgSyNsJl3Vn-EdVkh
X-Proofpoint-ORIG-GUID: ziYSzuwd2BuZgRuCgSyNsJl3Vn-EdVkh
X-Authority-Analysis: v=2.4 cv=Dfgaa/tW c=1 sm=1 tr=0 ts=6984bf2f cx=c_pps
 a=z9lCQkyTxNhZyzAvolXo/A==:117 a=xqWC_Br6kY4A:10 a=HzLeVaNsDn8A:10
 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8
 a=FmOiMsbJW-36OGxlXE4A:9 a=EyFUmsFV_t8cxB2kMr4A:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjA1MDEyMCBTYWx0ZWRfX/alGK0BD7Zdm
 1tFq+nMqZPkJkSKQIlRKN8qOOVjl3SR+gOtP0CWOgnsac5vWc2LV8fLo7IKhmDRTgS59d91xlsR
 +Y8Xwh+7nQrEQA13XqtO5qYDuKyS3KsOfzPg41bj4RUq3NAwAlL9Y97N9VniP65a1rGGYoNCvVG
 svj2y1YpB5tklhHRgzIP0zoHy3x5HGiYYp9yKEq76+GxkuKWMWDTA7pIRYUoAfoLw93pWDa+4zs
 o6TdPmiDNHosD15hqgLDTDOC8P7mDrTB3btcYHqiwaCTopuKHuD7dYyWUBLdbJHkIziTPmQjEsr
 dcC32hYJalNBUse2TS5hWp/NusVQkGPUKto0P/LEK3aFO+8SWedhkxvgGprRM/ED2DS7pIx56fg
 +EtEUDO4ZeZGsw/oMLbhvVsfkj3OvQUfHfCkeK65H5MtR2FTCSf1Kl/hniHJ1ZuzLFEzplkfKzk
 Ptr52qtTPUFQpVZPZlQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-05_03,2026-02-05_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 suspectscore=0 clxscore=1015 bulkscore=0 malwarescore=0
 phishscore=0 priorityscore=1501 spamscore=0 impostorscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602050120
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260205_080256_214400_A1B9C730 
X-CRM114-Status: GOOD (  16.04  )
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

There is a small window where the device can suspend after
pm_runtime_enable() and before pm_runtime_forbid(), causing an
unnecessary suspend/resume cycle while the PHY is not yet registered.

Move pm_runtime_forbid() before pm_runtime_enable() to eliminate
this race.

Signed-off-by: Loic Poulain <loic.poulain@oss.qualcomm.com>
Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Reviewed-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-qmp-usbc.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c b/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
index 14feb77789b3..90ea6ca64026 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
@@ -1959,15 +1959,15 @@ static int qmp_usbc_probe(struct platform_device *pdev)
 	if (ret)
 		goto err_node_put;
 
+	/*
+	 * Enable runtime PM support, but forbid it by default.
+	 * Users can allow it again via the power/control attribute in sysfs.
+	 */
 	pm_runtime_set_active(dev);
+	pm_runtime_forbid(dev);
 	ret = devm_pm_runtime_enable(dev);
 	if (ret)
 		goto err_node_put;
-	/*
-	 * Prevent runtime pm from being ON by default. Users can enable
-	 * it using power/control in sysfs.
-	 */
-	pm_runtime_forbid(dev);
 
 	ret = qmp_usbc_register_clocks(qmp, np);
 	if (ret)
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
