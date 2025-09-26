Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E0204CAC5AE
	for <linux-phy@archiver.kernel.org>; Fri, 26 Sep 2025 07:27:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yIq1lefnerwtUgByIDqo7WVD0cN5H53T1voSj3isAME=; b=IRxQolGURJ2wmX
	/AnXVRcMV+lpancP+xLNIO15+tXHtXavhHgxSWoK/FDrNd6IXfDa3rnUZaytDUnIF7fKwxrbXVk6L
	wmp1qmT3vQcWwrtIROhI2559dF67dog/Kn4Gr4ulmjhJXua0sBdTcbXHt7mg7fYInZJojHvN0qbcH
	G/98+FzDOPZ1FlVNi0OaaKwIrBk/WP6jYi40VIqpZDieQSqW2oTwg/7PiweUmz6C4xHm8tlE2k9/l
	BOlUZCiQYFraULkgQBRH5womRAsF/zXS5Cru23sTzYNBLqc1nHP4xgod1bIowAJhIX+fhXOpA23im
	09wexSFkqEe+771jLbIw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v22rX-0000000Glku-2pDS;
	Fri, 26 Sep 2025 07:27:27 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v22rV-0000000GliU-0woa
	for linux-phy@lists.infradead.org;
	Fri, 26 Sep 2025 07:27:26 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58Q6mnUb007845
	for <linux-phy@lists.infradead.org>; Fri, 26 Sep 2025 07:27:24 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	BBnKAQHtJIUzOuuf/k4xFN6GQiHRN0JpTaejw5fAgk8=; b=MZrHsPoMJRf4Qv7t
	g/gyESw15cUBoBQ0NM7U0rvmGcaabIU1i9HsyOExSPgwZ1Y0OFNx93A0GNbAvuaR
	C7ahVwfEwmv2FxHxBhTza2NEKZ3uHzYqJbf5qOdFRcvu/q2y1nvr3qI6sf4T8paD
	JbYZyLtyU2abpbrfU292PyoBMkzcplJedsbXatYBZYPWY0qpN6CG8DuPmfJ60YNR
	ZybP9POnattamOTLDX53KBNx5nOEz6POTf2oG9L4xDuBoBiLkOv3RQt8OsAi9/N3
	KL/OyY1vw9KzgcIJrDLIOltl5Ksz5Yj6fThvRDApV3cfj20RFODrTIDLe9EjJLVL
	FFx2NA==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49db0vsw36-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 26 Sep 2025 07:27:24 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-2696ab1bc16so4925885ad.2
        for <linux-phy@lists.infradead.org>; Fri, 26 Sep 2025 00:27:24 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758871643; x=1759476443;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=BBnKAQHtJIUzOuuf/k4xFN6GQiHRN0JpTaejw5fAgk8=;
        b=A5J0xFI0B/PFo6u8R983JUUGExgVdfFqg0W/d/R0xKT0EawlOenk/HV36zlOJ/lnlH
         ynESF8r++t0RHVyC/XJJ082YYZkjXCKE5i/SQTd1N9gCE8nzdM36zDWVK485u+5wjtq1
         HhLV1w/3cmTwbbnMpeMAOJb0Ya/30YBxFxDaJaqXZQV2mztna0T3tsdxxUbpOl3oxpI8
         hSIfKf9/Tos2joJT0OVfwag1+sMba9nopGqjofIWqyWHtF8UGmgW3QQypazQqWqcmB6T
         Z/DA+fV0nzNJTn4c2oOTRTlCZorH8wxVPSjqltiFNphLLNXpMdI7o5PqnAHIUsFHeGJg
         7pVQ==
X-Forwarded-Encrypted: i=1; AJvYcCXvXR32qPLRJhUh/9KrSEBcR9r21o0vf32EUfXjAXiRlgTH8kUcJgA0m0h0B1JibbjQs9bEXXkt7aA=@lists.infradead.org
X-Gm-Message-State: AOJu0YzxlcuFy9kTUSM/w/x8+ExS562qSYpch1TxOXj99XdF89DNjqUV
	Rq7oXOTOky20VDdiwYzrieB0UKz60SuuwOKIB6+PeX2o8OQZfbuU3HAse/hXyBYPw2P0JGbI/Cg
	xeE5n9xE8h/iVtu0nPOIaQXQzpviYnfTwXR09Ne3wnOLNbtUuR33USD8eBiQK9e1n5H8M
X-Gm-Gg: ASbGncumCkWzfWG4dR8gx/BUjf6nWsN8RfYvF9+8COw6cyz7MhG6l0xiNWNJPwuY8VW
	RpYJhaw+RiFNFqytQX7uFEaGR2g8v/89yUmBoQ8osjlAvG8iAthpseS+rj0f8HN8FlqKigVVK7o
	9Dp7dwgQU80ICyOL//gIaxdBriApKsPymEj5cuqxF7RF3zPVuG4rR4c2qlVvVfzcHAtFcxjpTYQ
	AwmDH3K/gNDnrDJBveaTN+vjq+0/oaubqDai7YKqKjVEmuzunQK6G7fvVWmbT5JmXjeDv1kHfq/
	lXOYW24dD1THGsoqY+GfGyIZEaylf339IbaRiSYzUyjMoGtnZSNtbwewqB9TlOcbWpwJvrCyP8m
	Ycx9f5/x/AvZgSKpdky8PPIQstjSwfnQpZxxDq5VKG1pA/fcZc2jihil1
X-Received: by 2002:a17:902:db11:b0:26b:1871:1f70 with SMTP id d9443c01a7336-27ed49df69fmr43571275ad.5.1758871642877;
        Fri, 26 Sep 2025 00:27:22 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHTX2igDAbPEs0gasTbZkRY3PEKRg6iD3OO1BbSDu+8oSgdmgCgwl1nIHEcronmpOxG6BZOag==
X-Received: by 2002:a17:902:db11:b0:26b:1871:1f70 with SMTP id d9443c01a7336-27ed49df69fmr43571025ad.5.1758871642379;
        Fri, 26 Sep 2025 00:27:22 -0700 (PDT)
Received: from sziotdisp01-gv.qualcomm.com.ap.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-27ed671d8a2sm45117985ad.55.2025.09.26.00.27.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 Sep 2025 00:27:21 -0700 (PDT)
From: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
Date: Fri, 26 Sep 2025 15:25:46 +0800
Subject: [PATCH v7 10/14] phy: qcom: qmp-usbc: Add USB/DP exclude handling
MIME-Version: 1.0
Message-Id: <20250926-add-displayport-support-for-qcs615-platform-v7-10-dc5edaac6c2b@oss.qualcomm.com>
References: <20250926-add-displayport-support-for-qcs615-platform-v7-0-dc5edaac6c2b@oss.qualcomm.com>
In-Reply-To: <20250926-add-displayport-support-for-qcs615-platform-v7-0-dc5edaac6c2b@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1758871564; l=1933;
 i=xiangxu.yin@oss.qualcomm.com; s=20241125; h=from:subject:message-id;
 bh=DPKLxEacqPPVPld/3Cw3ossBUvxFPG/ElRs6jI9aG+g=;
 b=LKwRqi1oGH1DuHLM7E16LiWfNw5DOeR+8o8s9eF6SZvkMm3iSdaWji+J524cD6f83xQZU7P4x
 jx9iHVmnqEvCOsMZMAFLUJLwoQrBPzoPBnQelsJeE52ZLRbP7VKfXfm
X-Developer-Key: i=xiangxu.yin@oss.qualcomm.com; a=ed25519;
 pk=F1TwipJzpywfbt3n/RPi4l/A4AVF+QC89XzCHgZYaOc=
X-Proofpoint-ORIG-GUID: Z0ZYzWRejWnVpSqVEBcrEd4ghEZY06we
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTI1MDE3MSBTYWx0ZWRfX81eiEaCvtDoP
 chAsyYxjbuPKwEeq2RTgFW7rWCrBiZ0RQb+3bkI4O24E4tXZkwNYYPPH6V7348LcfrkgbTr/gWw
 Et2ZhONNmE83UZrzpcdYAv3/OzbsLvEUELC9N78bq3cRpApWMEKiKGX5bxGBAJl4NAeTc92XLkw
 qyPNYPH3+cMMnLyxtrk/+CFb6gqr+x998BGYF595KjX7URyazVHT59EdDt2RbJ72pTO+TwC6U6e
 w/yJv1exUVKjOODCsXTBTumofDzJbm7be0AkmqzGYL2xVHpZ7iB0kPipJ0ZcJo+dIEZzPl0HTqG
 HHOU2Q3jU+ybaWRPQu4fYQj8uZZaP5VidgUxo0WqnTvFRAJxzwFHtjAli0S7aEs6zVrgp/FCI8G
 TVhkKwV7ndSXYRY0nb/6LjMU9V+FeQ==
X-Authority-Analysis: v=2.4 cv=OstCCi/t c=1 sm=1 tr=0 ts=68d6405c cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=RloG_8Ug8mropJZ47ewA:9
 a=QEXdDO2ut3YA:10 a=uG9DUKGECoFWVXl0Dc02:22
X-Proofpoint-GUID: Z0ZYzWRejWnVpSqVEBcrEd4ghEZY06we
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-26_02,2025-09-26_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 clxscore=1015 suspectscore=0 lowpriorityscore=0
 priorityscore=1501 malwarescore=0 bulkscore=0 spamscore=0 phishscore=0
 impostorscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2509150000
 definitions=main-2509250171
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250926_002725_400497_83D41554 
X-CRM114-Status: GOOD (  14.29  )
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

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
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
