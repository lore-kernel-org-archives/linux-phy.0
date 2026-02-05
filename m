Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 48D35ECD985
	for <linux-phy@archiver.kernel.org>; Thu,  5 Feb 2026 16:03:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Zxl/UJiNeJUHNxpIzmOvxwGb/egmOg8kPN+FPJe6yqI=; b=N8a+KCTmUb60Vj
	0FNOfuOMnFwaXWic/GWuaMhIwumCQE0e2jdJi7uW5H+bTmIVA32q8xnHLLeGUCpJ3bVkumS/yvP5y
	kAJjWStaP0Y/afVEwBQFmzo86NEEFMPnARRdsbT6gLaaNbXFUxJJLRh0kh4MUOn6Z4cXc0U/AitZc
	a0otdzw7SEHG0+juC0SVQJbUwmszR5kqjbMHT/h+sM0WKQyq2bmUMpd7r8wYx0HmnZ1YWJsmv/dfh
	RVFlwx09hZ1mHeZRz28sThsrLWEhFKXGDd0w/cZ9lxBBvHNx1ks0QvizCjwG1yk12wHO0btVZ2rRn
	cdtPzKA52mDpnCLS5V2w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vo1oq-0000000ACcp-45HD;
	Thu, 05 Feb 2026 16:03:00 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vo1oo-0000000ACbi-3MF5
	for linux-phy@lists.infradead.org;
	Thu, 05 Feb 2026 16:02:59 +0000
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 615FrNnc872270
	for <linux-phy@lists.infradead.org>; Thu, 5 Feb 2026 16:02:58 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=rnGgt0YwHMm
	re6GJPzCUCgXtdndj9ZK2y4jRuabow5Q=; b=YyXGwfIldMju2dW91YOSkdrL+i4
	FHF2d3hTKCGSnL3AS0MsDqDxJqVtBJkbyb0leUn79vTbr6jK3v3GgdVDzA49OV2V
	rgd0qfgjMIOVynROSapK9kx7Kr2zAaVSv2uO3iKFPliXsjPCAefbe5H3DQhebcMp
	kA7NHl+4RisYdkTKfheEPa6NbkgbtAojVaJof5i9dC7EHGXFXE2OSk4VOh0AZ/ky
	+WFQOyK/mVPeeLQgt7Q9/1CvOEclGIOCuSm33xsX1yxYjEmjRyEzoOIZgRrswLJN
	SKVpHWFetYNm6UoJGdMT7bb+TsTrUGviWFYzJVdQXrwGh/ENXINut3wv0gg==
Received: from mail-ot1-f69.google.com (mail-ot1-f69.google.com [209.85.210.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c4x8bg19t-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 05 Feb 2026 16:02:58 +0000 (GMT)
Received: by mail-ot1-f69.google.com with SMTP id 46e09a7af769-7cfd8a3db9cso6703064a34.0
        for <linux-phy@lists.infradead.org>; Thu, 05 Feb 2026 08:02:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770307377; x=1770912177; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=rnGgt0YwHMmre6GJPzCUCgXtdndj9ZK2y4jRuabow5Q=;
        b=Tkld1La1k7yXtnHMoA1w1Xtgd7C6c33Dko9mUWIR3iniLHUFTscgmVeUIlr4UPpWNZ
         Pl0imUatLMd1Dhg70MvINCF4cYHhMvLB2rMcMTVUVjzR151ILPu5coNyTD01C6mLWY4U
         zn/b1nqk9Xi/fk0T/Zb6/FHGqnjdwcRQGKfx42RpcHblJN980erKyh7+a6qMvG5T+Vgz
         BkWfMwNBbQi7L66bSjz6322LL2nuJfVI2IwR3qhyTWNDCGeipc/nYIbWMMjDRpMYjuhu
         vZC42ZVbnz2DxEs1oyAVa1IdB3LVmsUQFUClkthds17yBoxkOOaOK/Johe/WuYXgU17x
         S1jw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770307377; x=1770912177;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=rnGgt0YwHMmre6GJPzCUCgXtdndj9ZK2y4jRuabow5Q=;
        b=tn+KzbP/UZK0yUqR0jxWnrZlHkxix/qbT06XTa3vOi/GjC0XctyGAj2w/jfSlJ2hTr
         RJYzrthJ1zpTxOsgbTL7p+JpWFtjt8ATiPx4RmNNdwyvdfhNE9cGG6gAPUQje+cNu75N
         tcipdcHbTVWRQQVwC0A/8XmHkL2wNQRpEXyv4SZ1ORZpGjWxXPrr9b/Mm21CY7shFkLG
         Zppu0JOxpi1uaSQ25+tGZiMu0wG30eBp9S6/u1NGpKCX8AXmTAfhTslQyVGqHWeIXRrd
         9A4OXaAws6b7D5BRs+RgGtN0egev/1+qJJwHPRsNJNL5RenZoVJJl1gJdOQ52oMBJxaF
         E0Qg==
X-Forwarded-Encrypted: i=1; AJvYcCU0uMzcU3TpkQHvEh51PgKFVhua1nqxDYtKx7lwOco+gW7AKccHPxC+llWJZBjhNImhAftYZcR3BOo=@lists.infradead.org
X-Gm-Message-State: AOJu0Yz6vCECeD5e6ioIvqb2szdklcLdkdk0zltvOQRobKsMcqIE8Q+D
	kj3e/FvPq+mot6ZLETjqMMoa9FuILDZSiT5vWsqn9NEwdUD9xwY7TxuL2vjw7IlgifaLBXhS5+b
	4z6BJ/ja8gFiGippxx67m2bERcpYISwUS3SPU1teYtLBfN2iuBEOZK1aU7aM0uJ39e6NF
X-Gm-Gg: AZuq6aKcnjT3hpKMvnOeHi3h+nLzTe72V0PSiAjKf7+7EWihDGwKVKxDBKtlYFJ3dts
	i9uButDemBEdO5lG50Du9j9jwCvOSB1RgzX7R3Vptc/7TRRJVCSsvacruZHyRAd8fDZx6Muya5a
	qYYRht0Klk2lCQXxiPu13P1zotPMpxljWGxYOpj29LbydZK08JZo7efdV82GrbGe0r7eju1v09k
	i9HpeNHOE2InUsvBcIr4P0AQGh1R0lq7GKi3jyXej7BtGZyHLxSyuFLBRlmZiFBHYLc7k00bIki
	lFLptNlBufxTfSApwVd/hyK6UAF9S/C0xOx9/PbapHaQteFsJZJ5CJ6kjXBtucc2tlwrmcjF9nM
	csYaqrDgiYB74CU6wk2uCc5Ifju4DuEaTINwDN5Ljl+u14lMZWOH3irI/mVMM9fH4k7FsXH6fC5
	C6
X-Received: by 2002:a05:6830:81f7:b0:7c7:da3:ed27 with SMTP id 46e09a7af769-7d448c25513mr3281917a34.35.1770307377477;
        Thu, 05 Feb 2026 08:02:57 -0800 (PST)
X-Received: by 2002:a05:6830:81f7:b0:7c7:da3:ed27 with SMTP id 46e09a7af769-7d448c25513mr3281902a34.35.1770307376979;
        Thu, 05 Feb 2026 08:02:56 -0800 (PST)
Received: from QCOM-eG0v1AUPpu.qualcomm.com ([2a01:e0a:82c:5f0:103a:9c65:ad2d:82fc])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-436180640e5sm13770002f8f.40.2026.02.05.08.02.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Feb 2026 08:02:55 -0800 (PST)
From: Loic Poulain <loic.poulain@oss.qualcomm.com>
To: vkoul@kernel.org, kishon@kernel.org
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        dmitry.baryshkov@oss.qualcomm.com, neil.armstrong@linaro.org,
        konrad.dybcio@oss.qualcomm.com,
        Loic Poulain <loic.poulain@oss.qualcomm.com>,
        Abel Vesa <abel.vesa@oss.qualcomm.com>
Subject: [PATCH v3 3/5] phy: qcom: qmp-usb-legacy: Fix possible NULL-deref on early runtime suspend
Date: Thu,  5 Feb 2026 17:02:38 +0100
Message-Id: <20260205160240.748371-4-loic.poulain@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260205160240.748371-1-loic.poulain@oss.qualcomm.com>
References: <20260205160240.748371-1-loic.poulain@oss.qualcomm.com>
MIME-Version: 1.0
X-Authority-Analysis: v=2.4 cv=GaoaXAXL c=1 sm=1 tr=0 ts=6984bf32 cx=c_pps
 a=z9lCQkyTxNhZyzAvolXo/A==:117 a=xqWC_Br6kY4A:10 a=HzLeVaNsDn8A:10
 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8
 a=QCvEx_dtP_Vb2dzgXhUA:9 a=EyFUmsFV_t8cxB2kMr4A:22
X-Proofpoint-ORIG-GUID: FABHrvPyAmCh2ff37iJ6yBIufDUDFig_
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjA1MDEyMCBTYWx0ZWRfX+E/rY+YeLtd8
 8cuG+YrqM1TA3+QfvvtN5iNoso5NP6nRzh25FHClMLR2Qo9XpNbAHw8utm0MpRWC5NlamYN5eXj
 KEjHpI5OKtTvHmU3X1+7JVPcocc70Grfo0MPDsYQzcZgKreCUBfa5WvHzEDums712J8hLg/MDi2
 c+SSOtM0zh9R6lPhwjgcfpnzEqgjAXdrnl8EayTQaZAXuEpDLisqBCO6/RXgMdbMLmm0xlvqGYQ
 I5RboDU21Lh7yn1JHsh05l0puxKC3rdUJHqEjMwc71J8FLtma3KmxfsAet0KXejsjtW5aO3d/9Y
 srhhDly6kybmQTlvwY218iai8q47qghA0RKIQubnp0HmnCIXuNmD/H14dKjCKbmobYfUdz1yVYM
 JtpXywvhMGlWat0hJTdNcJgdTEz38kpC9kX13NDKTRusgAZMJPGn1mHL5DMLRgVm3Cb2HcWeeuc
 ph+jC1/vMhUkinnCz6A==
X-Proofpoint-GUID: FABHrvPyAmCh2ff37iJ6yBIufDUDFig_
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-05_03,2026-02-05_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 spamscore=0 clxscore=1015 impostorscore=0 phishscore=0
 priorityscore=1501 suspectscore=0 malwarescore=0 bulkscore=0
 lowpriorityscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2602050120
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260205_080258_863838_D4F02271 
X-CRM114-Status: GOOD (  15.22  )
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
