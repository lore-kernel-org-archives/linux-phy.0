Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 815F6D1D47D
	for <linux-phy@archiver.kernel.org>; Thu,  8 Jan 2026 15:50:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7zoSY5bruQR+GUKHOVzlnN/WdLg5trzN47oPRoSyElA=; b=SEfhNJaXZgSa0m
	mVA3vmTBjTi5rCwy/XrzmlGymaYig8kM9IDXtpWGe/9gkIUHm/ENeF6qsTt8KPRt0Z8ZOG//FKKNI
	daoat5OLIN63SUA5cavOebhpXpcoa3zPAOflHt7yZ1tnaOKXBK/2BGW2uz/a5NVxZRcDC3XWXelJV
	xkru5hBSWlE8lDdrbhfUlABrK1Vk4Gv4Ca52us7PHB7vFpm/mnHOC9Xs/sr0MB9pqOr5Px1DdmGln
	XlMH8eC7OJiy3zlg+CLGtUEb9M55YRaQ/upZkCKizLxgdInbKTWrKsGQ6krH6/1OM0WkNQ7uKJPRS
	YpMcog2FDVaywzHwzbdQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vdsGw-0000000HaH2-19w3;
	Thu, 08 Jan 2026 15:50:02 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vdsGt-0000000HaFE-0q0e
	for linux-phy@lists.infradead.org;
	Thu, 08 Jan 2026 15:50:00 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 608AhvP73701055
	for <linux-phy@lists.infradead.org>; Thu, 8 Jan 2026 15:49:58 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=IGj3MkqcxtU
	TDSrI4Rmkz74Y1sawdJtCFGQ8AyJsOnU=; b=SO9sew6Og8MhLbIG+QADVvNDIdo
	LJxIAofT9zNhV78i4OW7Rfl8fC1ZDV2us4OmMOAEDSFc6fkNKbsb6OwBfG/j7Eyv
	DHbhZrgIetn/b/9SL7VVF8x7/FymgXUTgk40TAL9ErYb5cXvduT60ySlTclrlgG8
	6gOmZu4AnCJSdYPEb+cRtkIKv3GtqXHY4HAij4Q3WdSDH+11fExjq7JJr9zZxl+H
	4xXIl/9+7ZV5DLWPVj4VDoMa4ypsAU/hheTOOH31aSPFll5Q7Yo6LoCzwO2Ctmn2
	DtSbrDAC6N0p63bfbGPtot5EZihN17xjamfiphcnE2+ZxOfM010Sf9D85BA==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bjb39rw1e-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 08 Jan 2026 15:49:58 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8b259f0da04so828627985a.0
        for <linux-phy@lists.infradead.org>; Thu, 08 Jan 2026 07:49:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767887398; x=1768492198; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=IGj3MkqcxtUTDSrI4Rmkz74Y1sawdJtCFGQ8AyJsOnU=;
        b=hv1ifIm/v9dssmMorF9xMfRn4gryom4H7xNN6sRWTnFWg4s/SizcwNbFM2LakjTSjM
         W6zh0rgfTsZkzOtnOy6Q1irSOZIKtMI6dWiEcIjr3D5oT7Y5EKXgAF91d/u9BlVpPDGe
         tosapSUg7wOQpyMMUR5mX5AgVgYhBMTsLJeza59IfQQirchbl2RTWCiKsZt5OopISaXw
         yffjHb5c+vE24vH6h5kHmnAgZHr2Lx063fpinaMU+DFELEOCD9Sw08uIZwRmFZlWSKO4
         ixwDTRU8QFU45L0rvjHyH4psR/egCCeEkLuRZmyeUUdt/4wAlEHrDEuZdfpyX1Jo1+UN
         ph4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767887398; x=1768492198;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=IGj3MkqcxtUTDSrI4Rmkz74Y1sawdJtCFGQ8AyJsOnU=;
        b=fa0MKvWB9W3eUNr2c5Zw5wx2VB5rXC/wC2PU4o/48gTq6mF+uUz0kzyGDn19XA1px6
         LhgwKl31jCjNwn/30R0a3fDql4UjNouAShvufWvJGuEWPFMxUkosYfScs+jfKKQERo+Z
         e+v9KmrNdJVuLVGt1r9WfXyF3RJpO+E7d4arAKU5iuSV+cbS1eODgYzvI8dlnKeTQqA9
         zou8I6E728fn8vykIXnsNKh5XQ1K/32uSwHYctZCcdaYO5GPgZhPS/MTNd7IJkf/ermf
         x6yjVxUVS/Ihz7puaGBmKwrkkq7ahlHIHZLs3B+3CXoWp4L8xMQHXidSgR12C06wV+7V
         kMkA==
X-Forwarded-Encrypted: i=1; AJvYcCWHuvuJo8BI/3/ZZaUSjyhr/5fMjxwntzoXnQn0D88U/dlyzyhMV1+lBoaveF0x3kfkuzIR561RTiw=@lists.infradead.org
X-Gm-Message-State: AOJu0YyfBmrdeqdHOIhwM5ULrm8HoEVVuDumuMpkd6TjC3nmfFDVHmkA
	yBYMP7qGqDwNvtGHejS4egxnZamiJtAxtQvAo0RlVdk/x7Hqwa0ya5biBtTTD4jAvcdqBP4uC9/
	l0LXkF7GH1S8ujJrMLm4R++pRWw/cmuow5oDk/h4//PJwR1viskOqTUq6MgCZEtR+G1Ze
X-Gm-Gg: AY/fxX6HlOK3174ac76SNmVHJecTCcLg0GsrV+pKzBkVAG9yEwpnoWG48CMhGF/apAK
	2bXFS369pyYWMmRTCVGDUqz7Z3CIh6yJzPk02hvXYhz8gmrVd3xm71TT8vwVRZEZV47W+kBaxQA
	s+zqxnY/9bIllc1X7UpVkGdY2wKp+6GYpt4BPwdmMSMFs7gCWuaxgcaVbdniy0bMLbIn7uaYskx
	Foakhzyev0JqA7WM/Li+wGMDvT6MFO9W9y5U6SZUDWWSeEFwwNADj+H7Mcnr/a0oxoPdz7y4LLf
	YLXOZyFkAUYRJ3nu+wv43VR05qxBNcRHyEcGycin+hYRBG4BK9NroCGclTvgTnni5XbvVigwG2a
	mdXdmOjhuVaHd/9CkQ/jQQI2/Hi0iDEqUmJ2OUZmd8uDG4nERt/Mn0hCZy5hHOcJHYlfMSJjKZ8
	jn
X-Received: by 2002:a05:620a:2956:b0:891:bde8:56d7 with SMTP id af79cd13be357-8c3893ef6f4mr841581885a.50.1767887397763;
        Thu, 08 Jan 2026 07:49:57 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFGrnZlCZbSHuOUp0nEKepu+rDoc37rvgIvRoqlQRZ6aVrhcMpOrYO/3cR9UbLcfZc15+hHoA==
X-Received: by 2002:a05:620a:2956:b0:891:bde8:56d7 with SMTP id af79cd13be357-8c3893ef6f4mr841577785a.50.1767887397307;
        Thu, 08 Jan 2026 07:49:57 -0800 (PST)
Received: from QCOM-eG0v1AUPpu.qualcomm.com ([2a01:e0a:82c:5f0:211d:6051:c853:ae97])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6507be655aesm8078121a12.17.2026.01.08.07.49.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 Jan 2026 07:49:56 -0800 (PST)
From: Loic Poulain <loic.poulain@oss.qualcomm.com>
To: vkoul@kernel.org, kishon@kernel.org
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        dmitry.baryshkov@oss.qualcomm.com, neil.armstrong@linaro.org,
        Loic Poulain <loic.poulain@oss.qualcomm.com>
Subject: [PATCH 4/4] phy: qcom: snps-femto-v2: Fix possible NULL-deref on early runtime suspend
Date: Thu,  8 Jan 2026 16:49:44 +0100
Message-Id: <20260108154944.211886-5-loic.poulain@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260108154944.211886-1-loic.poulain@oss.qualcomm.com>
References: <20260108154944.211886-1-loic.poulain@oss.qualcomm.com>
MIME-Version: 1.0
X-Proofpoint-GUID: v2muZLASQIXalUEy0Wkr5ntsJ8FqyYXD
X-Authority-Analysis: v=2.4 cv=X7Jf6WTe c=1 sm=1 tr=0 ts=695fd226 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=xqWC_Br6kY4A:10 a=vUbySO9Y5rIA:10
 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8
 a=GnikDSHSz1V4xWV9RsQA:9 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTA4MDExNSBTYWx0ZWRfX1OpOFwkL+KSN
 IqqRDZOubnfElVjGq4Tsolv/kYM8J4ne2seTkbT+iEBNSQYlOrSnqyhhO26Nqg3gXYHZPZmvDo4
 kcoIThMlMGDiNpe7x0PfoYS5Mu+WqaqfPxP+4XNxWaxdfZoSavKVPTJi6snOe16nhZkKwUcRXdM
 YGFOEfadD5kSZp1VwSP7VNhRvwa8BCuKJTRj0TeAWgehUhtgXqj8Pe3BgmrDUszaYsxhfDRMDrX
 0xFH4yaehyjRDqn3jNPgQFX1I72k7/7f2KrKdJ4cRZEMrUTPAWdtH1ao64HO3B0g7aqKUCVqo8m
 nUFH54osuwHfWGe6gwB88mQVmtlbLMLYtFYci0ziw3h4Cr1DnZQLDc0i2lqRZHOjoy1rWpyikBO
 5AnoZk4QxpP5+8gaVx8Mue4/ZqE/J6Aw75VT3wJpRqhb7i17UA+E9LqW61ZO0U+U+VgnVyqKa+2
 Ux01+oDrTO61CWA1RqQ==
X-Proofpoint-ORIG-GUID: v2muZLASQIXalUEy0Wkr5ntsJ8FqyYXD
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-08_03,2026-01-08_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 spamscore=0 bulkscore=0 suspectscore=0 phishscore=0
 adultscore=0 priorityscore=1501 lowpriorityscore=0 impostorscore=0
 malwarescore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2601080115
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260108_074959_243615_13D56E23 
X-CRM114-Status: GOOD (  15.25  )
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

Enabling runtime PM before attaching the hsphy instance as driver data
can lead to a NULL pointer dereference in runtime PM callbacks that
expect valid driver data. There is a small window where the suspend
callback may run after PM runtime enabling and before runtime forbid.

Attach the hsphy instance as driver data before enabling runtime PM to
prevent NULL pointer dereference in runtime PM callbacks.

Reorder pm_runtime_enable() and pm_runtime_forbid() to prevent a
short window where an unnecessary runtime suspend can occur.

Use the devres-managed version to ensure PM runtime is symmetrically
disabled during driver removal for proper cleanup.

Fixes: 0d75f508a9d5 ("phy: qcom-snps: Add runtime suspend and resume handlers")
Signed-off-by: Loic Poulain <loic.poulain@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c | 15 ++++++++-------
 1 file changed, 8 insertions(+), 7 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c b/drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c
index eb0b0f61d98e..d1288a6c202e 100644
--- a/drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c
+++ b/drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c
@@ -599,13 +599,17 @@ static int qcom_snps_hsphy_probe(struct platform_device *pdev)
 		return dev_err_probe(dev, ret,
 				     "failed to get regulator supplies\n");
 
-	pm_runtime_set_active(dev);
-	pm_runtime_enable(dev);
+	dev_set_drvdata(dev, hsphy);
+
 	/*
-	 * Prevent runtime pm from being ON by default. Users can enable
-	 * it using power/control in sysfs.
+	 * Enable runtime PM support, but forbid it by default.
+	 * Users can allow it again via the power/control attribute in sysfs.
 	 */
+	pm_runtime_set_active(dev);
 	pm_runtime_forbid(dev);
+	ret = devm_pm_runtime_enable(dev);
+	if (ret)
+		return ret;
 
 	generic_phy = devm_phy_create(dev, NULL, &qcom_snps_hsphy_gen_ops);
 	if (IS_ERR(generic_phy)) {
@@ -615,15 +619,12 @@ static int qcom_snps_hsphy_probe(struct platform_device *pdev)
 	}
 	hsphy->phy = generic_phy;
 
-	dev_set_drvdata(dev, hsphy);
 	phy_set_drvdata(generic_phy, hsphy);
 	qcom_snps_hsphy_read_override_param_seq(dev);
 
 	phy_provider = devm_of_phy_provider_register(dev, of_phy_simple_xlate);
 	if (!IS_ERR(phy_provider))
 		dev_dbg(dev, "Registered Qcom-SNPS HS phy\n");
-	else
-		pm_runtime_disable(dev);
 
 	return PTR_ERR_OR_ZERO(phy_provider);
 }
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
