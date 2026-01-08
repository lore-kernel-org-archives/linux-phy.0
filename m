Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DBF9BD1D478
	for <linux-phy@archiver.kernel.org>; Thu,  8 Jan 2026 15:50:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Gngya+aTgMIFtWkJDguD2clFV+IF1JaHol6PnVilbqU=; b=tLv6dr7iz8rAxo
	JoiKrCgP6B2T4ZziYrRCk7G4NL1nJHtnZ+OAsRlGgb6/TZzJ9PCaJt6cURU1a5l1iTDahHmx1EIww
	mBAHsI7VQ1b1hAfc1mVK4wfmeNrIZLRnl8rhhHHiSMsbzeSVTISo1lps+bn66ksrkD6pt+Htm1pMO
	Cnv3nCM2MGSqRLElkW1RUU4naNm4s7aJtMFALMUbjq+PCLMFf0JaEr2wYeVrWbAKNAPR7F/dNl2kO
	KJJ4+e6xks2MFSAknQb7JdQnYfoAhoSHPtdmg5/6aFK4HHijmVtgZ2iY1xgX7pJlIp6c1XyPhzbAf
	0D/UWo+x/mx0ADkoc4mg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vdsGw-0000000HaHG-2IDy;
	Thu, 08 Jan 2026 15:50:02 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vdsGu-0000000HaFq-30PS
	for linux-phy@bombadil.infradead.org;
	Thu, 08 Jan 2026 15:50:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=8IOKWtENpiv0D4/lLb+LZe92TFerNNEVo5MCkCNa1to=; b=Xc809Eyr4FXzhirtL+O1MReB85
	oOi/vaKR0ZpvptnoqLrUkvRB/5Gar6TnKv83KmEDD5bYJtHM8ibsnPoGh9+oKO5vuTEos4yRej5ZK
	9TQlL01ocy6cHs4BtUOQBsCfWv4pAyJsTLGyrEQIqp6ZM0ipRka8bV9DQJmSwCCyKqutFpsOFX7G5
	NeePOobBU3IT1Giji/XXA5CWEybbX+kAKJnHj5W4rrHHeQw/RRgFngm+gWjV+7CQzdFxOved3UUDZ
	WvTggqStpcbTHAiku+e9vh1yTugH7H/hoVPZAuN7Go+gp8T8b8yKP12j06qE65P9ZJvJskwMhzZ/Z
	yZ/N1GGg==;
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vdsGr-0000000DYcl-2aw1
	for linux-phy@lists.infradead.org;
	Thu, 08 Jan 2026 15:49:59 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 608EtLh41496630
	for <linux-phy@lists.infradead.org>; Thu, 8 Jan 2026 15:49:54 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=8IOKWtENpiv
	0D4/lLb+LZe92TFerNNEVo5MCkCNa1to=; b=REzi3p2bO747XxxZEzctnrjy/kj
	D9dGLIWABRv73CLBsZtoSxqz54abuq4YcWbkuB/gXFDAyQqUOCIkz7jrpqFYv7PT
	G+e+Q5W263HFDcZDIjAXeI3QHIPb9xiloPQ8NY0jN/IAin7QdvG3/8RffGojote+
	zb5HZCdKJ0m7cbkEtDwmjEWI2WoVFc/8dhVWBaO7kd/D3WQZ0pClA94rqSVXEsi7
	Nti8Xp6MC233y23VEH1nowhaHBB5H4WJrykIm1KQF0349hkQ9xEBPApCJiC5perd
	ljgvmaH0NOVoPdoJgCK7c9Uw+pDmzHgqdZPL8xxAtaDSVDf91ofVLOUaZOw==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bj7ua9hk7-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 08 Jan 2026 15:49:53 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8b2e235d4d2so1227919085a.3
        for <linux-phy@lists.infradead.org>; Thu, 08 Jan 2026 07:49:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767887393; x=1768492193; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8IOKWtENpiv0D4/lLb+LZe92TFerNNEVo5MCkCNa1to=;
        b=VnPZE5p7VQamPRb1oD9nmviWy70WxykDim/76WiP0Ugc4kVvk1cjCl0jw4u5xyYY4u
         /m4uUb7icDhBUpxJizg9vsU5fK2a2I/3T7J7OmQBNHUA5cyLxJccKeGGdZ5RskLYR4CR
         AEo2TQ2o3/MH+QDVkZ3f7j9pOe0fp4bMvliy7zra4kcLAXMoRPV/D1cLow7BbYYKiV1f
         +WaR8CQ6EOInyCk4a7gIrzjssRRZbG1jevDS1cly7s2GQtWnd+beQoNddMbhNHDbbbu6
         fHik4h35Fo123qx7ruKslmgMlinmxZuIgsjOckRcwbFGyXRs59vEx0rvw18Eui1U+UFF
         E/zQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767887393; x=1768492193;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=8IOKWtENpiv0D4/lLb+LZe92TFerNNEVo5MCkCNa1to=;
        b=T2PQiYia5/8ij0NcPdBbI3x4K9m4qQNatN3jDBQ43bYtSNfC51Bi9UaXvUHXQcalxA
         hTGZZiGC7p2GjwXMtIPpNY7Pg3I1L6NsRz7JK1GyNszGbIFm6QcrlRTCfu9Ofuw51UeH
         CiY5j1sRuaZcncpP4tb5TsOpgFv8GMmcnIiojtBvd6/3w8VacrBRNEQZhZntt8bqP7M/
         zZlipvnOFvORR3FBuOTVeMwXK2Nkigzz8wL9/kiLO+RuO4OgXeNOyF5S7jtW529LLGNi
         vKCy/vBdumu+LPCREpKXbPLy+zp2ZVr6c89NGPE2ObIoD9lXUZmQyIvE4u1p6h5M5xOZ
         c3oQ==
X-Forwarded-Encrypted: i=1; AJvYcCWhp0LnHjiRasnqEMiadXOk/fpW9ZHgngzlJEELE0G3Yy3JAaryaNgDfGEkV3vve4Htb1Om4hW+mOY=@lists.infradead.org
X-Gm-Message-State: AOJu0Yz4l4o0sQFb05YM9YAFfdCzY1dJlTjNg06oh//vwghtu/oLt6D6
	cWlfxUqnoyeLqrU7Pr8H2IiNHSsaEI2K0U6y6pFOWSvS6eRZ1ek8sOEcWxq3KxNojfdY/dxFbhJ
	Tia0ABMw3IrVZ4a68bC1uJ8yIbhS+3iUu+XTKoPPRl9wFanUU88u6qiIngNWW9dDRErXE
X-Gm-Gg: AY/fxX7wtj99T7doFh3MePUOHJbKxYhc2yeoTQp4+54jMi0qzrseymRqXLbxLsfKFSV
	DAojXc8p/VaJ2f41u+/c1tUUgOqdA5zjSC70GdZ5G1JFSlCH53vzMKalBJbWneFHwJGVpomgLpB
	u0x4vKnLjoRo+VU4eY6Ho5II/U97e140G6LBzPtnlHfw6P+oF3qhCC8EffkQg0NVRAhDYUiup/5
	P+Qs2xgX6z60E25oVNMZp8VW8dfMo1J3Rux+E8/vnX/7p8nSDwGPzWZ97QrvV0TUfBSTEOtCKHS
	TdtAdUAHTF6yGFHVXhecC9TWEWjYZYkWC7BQUtOQcSg6cKP2mRiIOUUalntmlp9D4eLdiMlvU0f
	5aBe4ch/GEujXcSoheBvKA34OCpqCeOEAX3dTXjLFPaANjyVscOh3iLYMACYTWxICNB4JDbmqOr
	Tf
X-Received: by 2002:a05:620a:bcd:b0:8b6:134e:22f3 with SMTP id af79cd13be357-8c38940a480mr876914585a.61.1767887393237;
        Thu, 08 Jan 2026 07:49:53 -0800 (PST)
X-Google-Smtp-Source: AGHT+IF4WlCvDgIMdHtNQtoW94734C1f8Vfnefv3i5sgNVAFzEXNki80UgWGOZNBArTf0cBpjFlP/g==
X-Received: by 2002:a05:620a:bcd:b0:8b6:134e:22f3 with SMTP id af79cd13be357-8c38940a480mr876910985a.61.1767887392744;
        Thu, 08 Jan 2026 07:49:52 -0800 (PST)
Received: from QCOM-eG0v1AUPpu.qualcomm.com ([2a01:e0a:82c:5f0:211d:6051:c853:ae97])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6507be655aesm8078121a12.17.2026.01.08.07.49.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 Jan 2026 07:49:52 -0800 (PST)
From: Loic Poulain <loic.poulain@oss.qualcomm.com>
To: vkoul@kernel.org, kishon@kernel.org
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        dmitry.baryshkov@oss.qualcomm.com, neil.armstrong@linaro.org,
        Loic Poulain <loic.poulain@oss.qualcomm.com>
Subject: [PATCH 2/4] phy: qcom: qmp-usbc: Fix possible NULL-deref on early runtime suspend
Date: Thu,  8 Jan 2026 16:49:42 +0100
Message-Id: <20260108154944.211886-3-loic.poulain@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260108154944.211886-1-loic.poulain@oss.qualcomm.com>
References: <20260108154944.211886-1-loic.poulain@oss.qualcomm.com>
MIME-Version: 1.0
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTA4MDExNSBTYWx0ZWRfXxnIFAwmSLopP
 kOTKyPioRy1IsA4T65a272RQrmYaYWi+bO63cSyqREDlRAjMagkeA+gHtlend8Ljh7fCU55KGGP
 5RmsZZsEEkv0isgB/YVQvIXBjOGoNb+xgmTM2bmWFtO+7Mbxm6OYqBYE/Aj87VU+icrUnjh4Fej
 hKOLboloNoRO5EnCVI/JKaSRKFLonPu1r9bW1StUVwqhJ3JkrLOqVrdjkW+KfKkv3BFuYPtseH+
 i30AtRmYw+tBZ+1EQG2lGwsnQGbto7CqY0o5BmJmZo5b8J5tlKwPbrpengATsk1x0i+1cNsy3uM
 bZuCE3LaejaTLhKFjrFa5NX2ddfd/soZ73G5jbOd52qKHzTmwAb6qM082U7SUnbZMVepFJsnKV2
 hAbFDLOlLQyuxqJW8/3gjgdIgItuiokm8vGHtgid+wLA+yuDAMgABKH9y0ZKuO06JKtYL2a64uA
 KWchfzjxzTRnvt2RKxA==
X-Proofpoint-GUID: _dIrrCei9TajwqDn5QEZnM4ngrp3vH64
X-Proofpoint-ORIG-GUID: _dIrrCei9TajwqDn5QEZnM4ngrp3vH64
X-Authority-Analysis: v=2.4 cv=XMM9iAhE c=1 sm=1 tr=0 ts=695fd221 cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=xqWC_Br6kY4A:10 a=vUbySO9Y5rIA:10
 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8
 a=GnikDSHSz1V4xWV9RsQA:9 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-08_03,2026-01-08_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 impostorscore=0 adultscore=0 lowpriorityscore=0
 suspectscore=0 bulkscore=0 phishscore=0 spamscore=0 malwarescore=0
 clxscore=1015 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2601080115
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260108_154957_890403_FD95EE57 
X-CRM114-Status: GOOD (  15.60  )
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

Use qmp->usb_init_count instead of qmp->phy->init_count to avoid
depending on the possibly uninitialized phy pointer.

Also reorder pm_runtime_enable() and pm_runtime_forbid() to prevent
the window where an unnecessary runtime suspend can occur.

Fixes: 19281571a4d5 ("phy: qcom: qmp-usb: split USB-C PHY driver")
Signed-off-by: Loic Poulain <loic.poulain@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-qmp-usbc.c | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c b/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
index 5e7fcb26744a..05717ca85c5b 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
@@ -690,7 +690,7 @@ static int __maybe_unused qmp_usbc_runtime_suspend(struct device *dev)
 
 	dev_vdbg(dev, "Suspending QMP phy, mode:%d\n", qmp->mode);
 
-	if (!qmp->phy->init_count) {
+	if (!qmp->usb_init_count) {
 		dev_vdbg(dev, "PHY not initialized, bailing out\n");
 		return 0;
 	}
@@ -710,7 +710,7 @@ static int __maybe_unused qmp_usbc_runtime_resume(struct device *dev)
 
 	dev_vdbg(dev, "Resuming QMP phy, mode:%d\n", qmp->mode);
 
-	if (!qmp->phy->init_count) {
+	if (!qmp->usb_init_count) {
 		dev_vdbg(dev, "PHY not initialized, bailing out\n");
 		return 0;
 	}
@@ -1083,15 +1083,15 @@ static int qmp_usbc_probe(struct platform_device *pdev)
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
 
 	ret = phy_pipe_clk_register(qmp, np);
 	if (ret)
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
