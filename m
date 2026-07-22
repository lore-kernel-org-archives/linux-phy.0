Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 20766C44539
	for <linux-phy@archiver.kernel.org>; Wed, 22 Jul 2026 13:45:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lTcUDhohYrHdJkpm+bcYkbRSJhOVfvaIapnYp/s8k9Y=; b=lgq6ludye0NS3J
	xOi9GTq7K0jqOz+t36R3bDpXZlSMowq+9ggi02bbXWzc4KB0ahDcsALSlqDvFUZHbU2x8x+j2lo04
	efWvlnvRgWXj+1hqG+1Q94w17wdew9cCKsXTwXDTwP3E/qUzTT02WvCNGundlwFP/ed8L6gS0wFSf
	OJ9lWIu+dmm0T5dy4y2qHts1kKvoCnyPNGOZRGPTk+alnzHqeZ8uJM1D92IwHnruQr5BaOnwo/qYt
	hmb2dMch/ZMMi6FUm8viyJg7L9XPoUwjpp0waRO5HoauUxBDcwt0VUff7pQbdIfSgDQ6xCYfZMlrK
	SGdkXRvOllsuiuzSeeZA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wmXGR-0000000BwJ7-3MyB;
	Wed, 22 Jul 2026 13:45:35 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wmXGN-0000000BwGV-0PwK
	for linux-phy@lists.infradead.org;
	Wed, 22 Jul 2026 13:45:32 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 66MDWUYY1017108
	for <linux-phy@lists.infradead.org>; Wed, 22 Jul 2026 13:45:30 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	6iMnf9ZiLsaVZv778rMtqnmi/YEJiiDpTZUI+w1LHek=; b=N/4ecvij8MH+edJl
	FMogbeBC483ekT8tWXH6SxdPlMXDNzJ01r6QktTQBf8uOdCWyAQrhHlhXU8NASML
	viMSUzfB7VTMMbkXS6ZVtGOqr45I2KOhxVR6eQZZHs6SCbPA7J3iHjWGRFG/kfXj
	MqJn7I4IOtAfMGgBxlukvZtBdJqjbGiUGR/ANH3+I1HoIIHcXJaCptzrj5DXyGVw
	2324Pc1t0VdfJP+jvJbvx69xn5ssaS2OE12E7fm+v9ZpmDpsmjUzQ7qwYwN4UsZh
	0l6fk2zN9vKbc7/DLlRYApH33Dh1rbgT/QlRAM1a8KEmaCKva/WFqoSQgLAH/fFF
	xZE5sA==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4fjs929k74-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 22 Jul 2026 13:45:30 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-51c075c1e25so178234221cf.3
        for <linux-phy@lists.infradead.org>; Wed, 22 Jul 2026 06:45:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1784727930; x=1785332730; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=6iMnf9ZiLsaVZv778rMtqnmi/YEJiiDpTZUI+w1LHek=;
        b=YPTXf1dIZle+4QBNazZsIWf5iO8pleuX3jpqytg5h6hyMydBl8l2rJxAlCs6JCwXjC
         bXt89ICKRfCAqYAHSIsUZh5I9eZkEfsoFFG14QoTgrSuYfNyp7miqX9R+R3OBisa+jpg
         IoCzhlw/aERXJoT2axGSqk2elog1Y6oTKY9FxWtKOkmaOwGCM/v56JDhBpaqn3SsQ6ci
         QFRsZ1IlOu/e8xRZWdPsyHTAENezGjtF1+2UenIutgDnnv7hGz4ARX5Fre5w16C34nHe
         ax98cItiEyzbOzjDQQEAr+kOWHxIHBLaO1upGx3HX5rWqGoGOE4NzS+k+HsNmM6OZaUF
         W0pg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784727930; x=1785332730;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=6iMnf9ZiLsaVZv778rMtqnmi/YEJiiDpTZUI+w1LHek=;
        b=l2tIR2J1w1OwPFkeB08aLM9zWvM5Uwauub5SSojRxPF6G5776L67zmJ4TIgId8WvHd
         5kZDctTbUFGy5dMgU2mrDwa/Wnh9Hdd3n4/P1rgMzKRon78S4dHHZT2y4yqfSyi1QxwA
         tAkaITAZRpJzWVEdoZbifQcm4doMXacLNWvuESbFh3LdxmiXc1GJ2coSp7dsLpL0jLJJ
         CKNtLmLZVPycGL8FTqbt8HBPsTsYQruRRb9Wp4E0woSDbpIjFM+Gl7hJxQXY9/EgAmRW
         MU1Qitv0fW0xLdcYsgC99WkenLyDioRC2hOoFR243/MizBoNAL77WZq0H1kH1kpWZHJD
         5LPA==
X-Forwarded-Encrypted: i=1; AHgh+RrDjjovuyLi1MgF1n6PlYaYqe5gA/f6UTchjdBCVYEVgMLOzUlRZrylD7MLSLgJyrQXkElxj8XDwg0=@lists.infradead.org
X-Gm-Message-State: AOJu0YxSYeXsfkZYUR2qj8NXgo8Fh8vN/hnlml+LKMbujXyqqXfONEdP
	nipAMh6Fr1lXt+BP5DA2N4qwwtA0Est9LKQx2mQsqI4iEKZP9xhriO4VW4aVtFNEIRD6GyLhKRM
	IFNH+AAgC6FR+LDymPGG4/7C+nMQQs6oIVdYpp+1yCUGHQs654ZSW6P1p2AGU73YS1Lz6
X-Gm-Gg: AR+sD10/vqX+ZuaMymHST+y/45zIJZtS4eQ7O1cJ2bN2VGEW3yORuOz4yYNkkds5zhO
	GJvQNkbZM0ReZeL9bAaZ0Iv040UyGZdeUMB9V1FCnP7C+yFevHXeIwhZYf8smshyG/3D4KP6G+p
	AWPqMQW5LFx7C3kDp3rf4E5h6mrZtP7+ZbdXJ3t/+DAbPj9SQuDteK2DkMBMCuT6Hgj2eVKOicQ
	IdDxytSMeoBatGE1xsHKXcUqdxYQ7fPnKj/eXl8QDtR+pBFNso/pqB6OLSP6Y3IeYpayMZ6oJLz
	OE9QXysn9lO2VhggqkDedRYIR19jgTW0GuLLAmSxfLl8+uEQKDR40dhK0HD024KAJcKSUzG+U8k
	3da1iBt8DR7PC0nZoQgM49/eeGDF47M67WsWSMzhq8qnqKyGlEarcFrTDPh7jLIQeuWAC8CNNnu
	zscOTjZut5DCEKrGpVr0ZrdVZ5KsQg+X3nChNMUTSs8Oxbf+Ee3Q==
X-Received: by 2002:a05:622a:1dc3:b0:528:15e:d1d1 with SMTP id d75a77b69052e-528015edfdfmr24753361cf.16.1784727929441;
        Wed, 22 Jul 2026 06:45:29 -0700 (PDT)
X-Received: by 2002:a05:622a:1dc3:b0:528:15e:d1d1 with SMTP id d75a77b69052e-528015edfdfmr24752971cf.16.1784727928886;
        Wed, 22 Jul 2026 06:45:28 -0700 (PDT)
Received: from QCOM-eG0v1AUPpu.na.qualcomm.com ([2a01:e0a:830:450:48e:a2cc:6c4:c92a])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-c1c32ac8c3esm111874366b.23.2026.07.22.06.45.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 22 Jul 2026 06:45:28 -0700 (PDT)
From: Loic Poulain <loic.poulain@oss.qualcomm.com>
Date: Wed, 22 Jul 2026 15:45:19 +0200
Subject: [PATCH v6 6/7] phy: qcom: qmp-usb: Fix possible NULL-deref on
 early runtime suspend
MIME-Version: 1.0
Message-Id: <20260722-qcom-usb-phy-fix-null-v6-6-534f7e61b9a6@oss.qualcomm.com>
References: <20260722-qcom-usb-phy-fix-null-v6-0-534f7e61b9a6@oss.qualcomm.com>
In-Reply-To: <20260722-qcom-usb-phy-fix-null-v6-0-534f7e61b9a6@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org,
        Loic Poulain <loic.poulain@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Proofpoint-Spam-Info: AW1haW4tMjYwNzIyMDEzNCBTYWx0ZWRfX0+lQNMiHv35k
 KROM38yb4Ug2d7mCZ0Yp4cGiI8qfRcYkcNR+BnjgK5B/4Rp7oCHpMMqovlZSYBktlyq1akSSj9B
 bMGZMS9Qf15aknbXZTC8VY5EIBt7vCY=
X-Proofpoint-ORIG-GUID: O6C29uGsHn4rVDOZjPQcncovV4kK1yYZ
X-Proofpoint-GUID: O6C29uGsHn4rVDOZjPQcncovV4kK1yYZ
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzIyMDEzNCBTYWx0ZWRfX6JCLmjJG8doz
 UnGHcREzvQLSIvrywE5GRR8WWdLirvEHUoRiG//Ia3uihKeIp5ewj9TDVjwkQ3koemSw6NE8iay
 e4/KchzuNBoFUB8y+diKzXnFUCnp11pnIpooqGl6yBGtksj9cpfED/cLtzB9Q/rytQTjjjQmC7x
 4Wkuwz7oLzAeWJqHJM0muPfSf+XNf2qbS3cDrHI1Qw9Feymcq6tnfNYMbcQgC0hgVXuhe69Prun
 gcuRSWVXHO6vhSksW63JdBxuxtMRXMwY6uLprC8ZTC0vF8qa3IzGgRTR+6XYFiMRQBK6myhrx7B
 2Gai+S6PYJ/W7g3Yw6SKyuEhwpcIjydJKdBzNWv/vXms3ywh0ScjQ6QefmzMfTjD7NWUacYXMdO
 wQVNVNAkN/bofjT02NaN3oFnTaKQ2yhTYGm/q85AG+0CYfSGmq1DD539XIqiTSyxlcTky4hBKF5
 qLqMhQ5wMX+SdcSmQpw==
X-Authority-Analysis: v=2.4 cv=QahWeMbv c=1 sm=1 tr=0 ts=6a60c97a cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=RAioF0-LDSMA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=yOCtJkima9RkubShWh1s:22 a=EUspDBNiAAAA:8
 a=QCvEx_dtP_Vb2dzgXhUA:9 a=QEXdDO2ut3YA:10 a=kacYvNCVWA4VmyqE58fU:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-07-22_04,2026-07-22_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 priorityscore=1501 malwarescore=0 bulkscore=0
 lowpriorityscore=0 phishscore=0 spamscore=0 clxscore=1015 adultscore=0
 impostorscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2606150000
 definitions=main-2607220134
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260722_064531_153986_A6D0F5C3 
X-CRM114-Status: GOOD (  16.30  )
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
 drivers/phy/qualcomm/phy-qcom-qmp-usb.c | 12 ++++++++++--
 1 file changed, 10 insertions(+), 2 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-usb.c b/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
index c5507168e1354bdec8381ca5ca1ba2bfd9dbc87b..bb905c437a01e3b898b7259abe3e49df4756fc5b 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
@@ -1434,6 +1434,8 @@ struct qmp_usb {
 
 	enum phy_mode mode;
 
+	bool phy_initialized;
+
 	struct phy *phy;
 
 	struct clk_fixed_rate pipe_clk_fixed;
@@ -2009,6 +2011,7 @@ static int qmp_usb_power_off(struct phy *phy)
 
 static int qmp_usb_enable(struct phy *phy)
 {
+	struct qmp_usb *qmp = phy_get_drvdata(phy);
 	int ret;
 
 	ret = qmp_usb_init(phy);
@@ -2018,14 +2021,19 @@ static int qmp_usb_enable(struct phy *phy)
 	ret = qmp_usb_power_on(phy);
 	if (ret)
 		qmp_usb_exit(phy);
+	else
+		qmp->phy_initialized = true;
 
 	return ret;
 }
 
 static int qmp_usb_disable(struct phy *phy)
 {
+	struct qmp_usb *qmp = phy_get_drvdata(phy);
 	int ret;
 
+	qmp->phy_initialized = false;
+
 	ret = qmp_usb_power_off(phy);
 	if (ret)
 		return ret;
@@ -2101,7 +2109,7 @@ static int __maybe_unused qmp_usb_runtime_suspend(struct device *dev)
 
 	dev_vdbg(dev, "Suspending QMP phy, mode:%d\n", qmp->mode);
 
-	if (!qmp->phy->init_count) {
+	if (!qmp->phy_initialized) {
 		dev_vdbg(dev, "PHY not initialized, bailing out\n");
 		return 0;
 	}
@@ -2121,7 +2129,7 @@ static int __maybe_unused qmp_usb_runtime_resume(struct device *dev)
 
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
