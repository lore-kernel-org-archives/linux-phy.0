Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 47F37CAC5AA
	for <linux-phy@archiver.kernel.org>; Thu, 25 Sep 2025 07:06:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=W2TtgAkXu5UYkCMm0y0vMvXQ4Ocj4ZayUlE81DAK+Ys=; b=eid/04B/HjtXWn
	H9mLgcp3f/wH6N2Ij1ZFVPUDw7M+DfBWcEsyIlsFYrO8NH8M256uaoERRTOZhULRmJOpjSRLTTh2P
	IBblBeW7YhN9NoPCI0/EVNAXd62fySF1PhOdmMyMty/HZTv6eTxIDR2Z4QkdbOi3G5Suj90MfdjEh
	xMwpMdo+4DuUHZfjuHDXPliPQGZzcxbaB8P2KkYQ/9RyElk9CIlkUtUSnL97KNSH5wemdfMYBytPb
	wVfUXk7VLVRHCdViOGNFnAcZPqKFqdTpg0TOHyTjSjrfC+p448mRKE1jUiTPYLZPdBoCjEa9hbYrK
	WibZCED6mBIFtj1rIk8g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v1g3m-00000006YTm-0DSw;
	Thu, 25 Sep 2025 07:06:34 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v1g3j-00000006YSY-0DIv
	for linux-phy@lists.infradead.org;
	Thu, 25 Sep 2025 07:06:32 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58P01VLH021483
	for <linux-phy@lists.infradead.org>; Thu, 25 Sep 2025 07:06:30 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	sOHfeo7BhLeEryk+wi9AeSYQSxkknTWJ2p+RSrBRhUI=; b=N32WQhdq3ymRD3Zo
	i4qGopQmu+qbIGWgAlWPAKBRLjAyD+amd3AK1kTYO7nMAgcFZDLsIDafvzHyKRL+
	AmL7lroXwB35S+aHUKb5sZWzv80k0QoXCDw80ae4yRo/eNCh4FndPB+ruIHdK24W
	8NUkW13KHN6EdNYsU2fCynL4Hm5GTi1wk5ukRP2YBtIx/kbZqP5Q+fvD9hGpvRAQ
	Rxfbdo15Tv7AFRE+RBCWShwyLYRDxIZcpCmYrycuVAWHir6ylBV7SiB6yvdtWg//
	jIzaVumtPYmyYFoqoHWpQR2+YxIoh2gHBD4kMJAk8FACQ64bcWTrPfPf6A+ah0mS
	pxGqiA==
Received: from mail-pj1-f71.google.com (mail-pj1-f71.google.com [209.85.216.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49budaepq1-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 25 Sep 2025 07:06:29 +0000 (GMT)
Received: by mail-pj1-f71.google.com with SMTP id 98e67ed59e1d1-3253ba05aa7so174582a91.2
        for <linux-phy@lists.infradead.org>; Thu, 25 Sep 2025 00:06:29 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758783989; x=1759388789;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=sOHfeo7BhLeEryk+wi9AeSYQSxkknTWJ2p+RSrBRhUI=;
        b=VJS9n9czWbphzT5D1thFHYpbSh1I7qf6IxYKJW+rvogihAQ11vzeiG1hsqMcePx/Cf
         gV3z06UtrViMEhAyoGl8fYfetWFWYZHQJlgrQkUHjj6prDIkNaJo4p3TcricmJH123E6
         OI+NCP7KPVYVGEMDJ4XneMQHMdyS6jDyqKvXo9Jd5Cz+eRtSHC9QaeuqOqBoaOZ5CAKg
         3ZjS4KoM/Ilaxh5ywpV1lnWu4NKFfgVDcG3jap9escNyMXQDFyfqkXTCFWApkQq/SK2O
         dmBqeXKHrfOdtngg2BqJNqxtiCZMzVSFjJ1FgmuvBWC81/C5vgey8pKC4DG9S2TiByjO
         yuFw==
X-Forwarded-Encrypted: i=1; AJvYcCUMRyv7J7lj3vtrWFq90SJUsD7L/JvFi/mdOmDOpAkB8iNXbK+yA+TelbATanFKYfnucdHEMl9Ai/o=@lists.infradead.org
X-Gm-Message-State: AOJu0YxOUU1iZjvyPnX2HNu+87nfWgwfKTGMHXbVNPNsfQKzASEP4/bV
	PUqlpGHE1mFZrF6FuiVWQGe4U/aMFNgS0LpF6G/NoOVuSW3bq5oz1F6eyqp/UD8wrK6aCVSUOvW
	GBNvl1NeSuvmBdHvUjyvywPE+2FkRSnjIUX2X3yFpte8tLv77EdmthUdVlY8nAKScaCbh
X-Gm-Gg: ASbGncsSPdM3+cml+gOR8fMTlwI4V7W+AgJqhLilbfWMfG+hI2aUewHAv/4PdjtO+ah
	pmPSb/BWhChw/qNYE4dkD5FR+WTU8H73i6k4hH6mvaozhw4ncm4TojeQJQM22F5xQhE1EKJy3SB
	1tpAfIHToD6ByXZPUw3bXchghxRLtZnhdl7k6OL6Z5NQtwDTU0Ncn29PwTz9bR3w1DrL1u+FmJF
	EvULlvc7uHRc8gy9nQJ4XnSiiJ7yWRgNIAvPiuEQFF2GNigDcuvcGFeMB3YsIxYAoezjeV2SrvX
	e0k/w0Ck+qrG6K+5bXXONZENuU5wuVp+Mybl5UrJeho+7r4Lm6DOS8CQvwkIFXdxiAphQ42eTrC
	yqWO9DQr8o32sfdzsx8qGsqWvCc/z/Yjvy9QbwJ5bzmli73TF7n8/g6Y2
X-Received: by 2002:a17:90b:1642:b0:32a:8b55:5b82 with SMTP id 98e67ed59e1d1-3342a138dafmr1622737a91.0.1758783988704;
        Thu, 25 Sep 2025 00:06:28 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHFMPsmZvnd6dVbwELL53pC8yqLIr3147s8iCrXFpjob11Il+gTCOSC49HD8pbmJr5jpEtF9w==
X-Received: by 2002:a17:90b:1642:b0:32a:8b55:5b82 with SMTP id 98e67ed59e1d1-3342a138dafmr1622701a91.0.1758783988144;
        Thu, 25 Sep 2025 00:06:28 -0700 (PDT)
Received: from sziotdisp01-gv.qualcomm.com.ap.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3342a2bd584sm914253a91.0.2025.09.25.00.06.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 Sep 2025 00:06:27 -0700 (PDT)
From: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
Date: Thu, 25 Sep 2025 15:04:56 +0800
Subject: [PATCH v6 10/14] phy: qcom: qmp-usbc: Add USB/DP exclude handling
MIME-Version: 1.0
Message-Id: <20250925-add-displayport-support-for-qcs615-platform-v6-10-419fe5963819@oss.qualcomm.com>
References: <20250925-add-displayport-support-for-qcs615-platform-v6-0-419fe5963819@oss.qualcomm.com>
In-Reply-To: <20250925-add-displayport-support-for-qcs615-platform-v6-0-419fe5963819@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jessica.zhang@oss.qualcomm.com>,
        Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        fange.zhang@oss.qualcomm.com, yongxing.mou@oss.qualcomm.com,
        li.liu@oss.qualcomm.com,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1758783910; l=1866;
 i=xiangxu.yin@oss.qualcomm.com; s=20241125; h=from:subject:message-id;
 bh=X4PFHrUfP0rzxFwmdjEfi+hC/7SrgdK5syWA8qItXag=;
 b=w15jBmT/se5LKcZFvbQZtG5NncJK6g9/eYBpM53QIj2XHBW23jnAJfjZfDdu8EV5FM/icrIMI
 BaasMjAbiAKAsRn7tS72IxN0cw52XUOulIwMc629p4TQfSAOO9IN5Po
X-Developer-Key: i=xiangxu.yin@oss.qualcomm.com; a=ed25519;
 pk=F1TwipJzpywfbt3n/RPi4l/A4AVF+QC89XzCHgZYaOc=
X-Proofpoint-GUID: MJQeGbtLS6J6dsqFodk51Ny5QOljalys
X-Proofpoint-ORIG-GUID: MJQeGbtLS6J6dsqFodk51Ny5QOljalys
X-Authority-Analysis: v=2.4 cv=Yaq95xRf c=1 sm=1 tr=0 ts=68d4e9f6 cx=c_pps
 a=UNFcQwm+pnOIJct1K4W+Mw==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=RloG_8Ug8mropJZ47ewA:9
 a=QEXdDO2ut3YA:10 a=uKXjsCUrEbL0IQVhDsJ9:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIzMDExMyBTYWx0ZWRfX/Z/EReTVLBL8
 Ed2mFtV4xJLLP6B4ZOJpWIYn0uESWnhNtWtuni25WdoA1725TOeDD5IQwdTVR5KyJ72M42Wdxf8
 y/aBqAbQoDG5QhYzeyFhcoOBy0oEIaE0vROiEbkh0WT8kXK7h38uekiYBfMIDRalxJAnk9dRBsV
 GDRT05GhB+dEBkJPEgFtQECzaHRDuqD6t/CTVdtn2rafq+C8Va8NwRGzwO8UDW7Pg5qvLc3IaMl
 A04cYvHUbRgECarYTcMQfx09+JmvDu1RK7uwcF5LTC7GPZxdJYnHgvOGWrtJS7Jono31DqCdWds
 HwpZik6f3rkyCpXib4j7pFailBC6Aja4pmZzRqXanj3dCBWsmZm6vwVhARDLr5TVaLtRPylbBd6
 3E/5NpSQ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-24_07,2025-09-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 clxscore=1015 suspectscore=0 priorityscore=1501 phishscore=0
 adultscore=0 malwarescore=0 impostorscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509230113
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250925_000631_214718_0B290004 
X-CRM114-Status: GOOD (  15.20  )
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

When both USB and DP PHY modes are enabled simultaneously on the same
QMP USBC PHY, it can lead to hardware misconfiguration and undefined
behavior. This happens because the PHY resources are not designed to
operate in both modes at the same time.

To prevent this, introduce a mutual exclusion check between USB and DP
PHY modes.

Signed-off-by: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-qmp-usbc.c | 21 +++++++++++++++++++++
 1 file changed, 21 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c b/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
index 3580c19fd62e02aa373cec42e9f53143f39214df..d84bf68940043bce13565503bb34796e653adbb7 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
@@ -666,6 +666,19 @@ static int qmp_usbc_usb_power_off(struct phy *phy)
 	return 0;
 }
 
+static int qmp_usbc_check_phy_status(struct qmp_usbc *qmp, bool is_dp)
+{
+	if ((is_dp && qmp->usb_init_count) ||
+	    (!is_dp && qmp->dp_init_count)) {
+		dev_err(qmp->dev,
+			"PHY is configured for %s, can not enable %s\n",
+			is_dp ? "USB" : "DP", is_dp ? "DP" : "USB");
+		return -EBUSY;
+	}
+
+	return 0;
+}
+
 static int qmp_usbc_usb_enable(struct phy *phy)
 {
 	struct qmp_usbc *qmp = phy_get_drvdata(phy);
@@ -673,6 +686,10 @@ static int qmp_usbc_usb_enable(struct phy *phy)
 
 	mutex_lock(&qmp->phy_mutex);
 
+	ret = qmp_usbc_check_phy_status(qmp, false);
+	if (ret)
+		goto out_unlock;
+
 	ret = qmp_usbc_com_init(phy);
 	if (ret)
 		goto out_unlock;
@@ -726,6 +743,10 @@ static int qmp_usbc_dp_enable(struct phy *phy)
 
 	mutex_lock(&qmp->phy_mutex);
 
+	ret = qmp_usbc_check_phy_status(qmp, true);
+	if (ret)
+		goto dp_init_unlock;
+
 	ret = qmp_usbc_com_init(phy);
 	if (ret)
 		goto dp_init_unlock;

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
