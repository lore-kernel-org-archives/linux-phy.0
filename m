Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AEFCACAC592
	for <linux-phy@archiver.kernel.org>; Fri, 19 Sep 2025 14:26:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QeRpr1ZhBkLTdaSZ1BkCXISw/auXITLmdeYa/GJeXfc=; b=KyiaHTPk31/Ny+
	1rV32vSuTV3WYeVS4sJE9k8WMHIYBux+2WVaqJsvruHTU7AP0UUC1DtU9YZSmhHsHjrw5L1vjS2wn
	STeQVCbAtvGe9agvWUlMEu84GUiAa1nmbcVYpqrfmqBYNXKVu0t7172HUm7B146b4vq194ny/3A3j
	tSOUpoOKir0++yBM90aMM0gGJzbW1pzUt/DO+TYGxtEsDUzta8aFLd83LIPgv8pqgzz9AU9DLiYfC
	6CZoidOGJO4wOofTqip4ciffWoG16/m+5tCnGSXkk/KU37wrtKRHoT+ByLDgNab6Ojpe8Gj6tFc5l
	twkecPbh6B5eW9Op2Nxw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uzc45-000000038UK-204v;
	Fri, 19 Sep 2025 14:26:21 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uzc41-000000038Si-46DB
	for linux-phy@lists.infradead.org;
	Fri, 19 Sep 2025 14:26:19 +0000
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58J9BPHV027215
	for <linux-phy@lists.infradead.org>; Fri, 19 Sep 2025 14:26:17 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	zCtPUXVGiI4OAMFxMM1v+W6OUs1HWL6gOP86Ti0GuRw=; b=SwB0s+WyW6KvaWL9
	MJlJlqhzBPohuawXRb2OtMdO7hYBzKO47yZ5mVXFGvUH8NYgnjXsC0jfI/uwYqax
	42C3B4RxEOzFl37QYjx4b3X58v6QAuLcqBaqrTool+bBEctS4kn9Z5SuvaLftLmd
	bIhH3xLqpFRpm8YCof1QwmSgqS80D73RZuUd8JPKOOJOuJdTr7EJgHK4cBTFB7tq
	KVM2mH1ZO/1imFqGV9MWY+KKRZE/r7KtJUg+KNrsjhwU+Mf4ohptGthzxtvizz9s
	+0lq17nJVsHnFfdqQWSnu4ta4qdvdzsv1DW3D2tevlEexYlLrRFhRVxlbr7Y+JqV
	0iR0Rg==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 497v1jgq70-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 19 Sep 2025 14:26:17 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-2698ede62c2so5951645ad.1
        for <linux-phy@lists.infradead.org>; Fri, 19 Sep 2025 07:26:16 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758291976; x=1758896776;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=zCtPUXVGiI4OAMFxMM1v+W6OUs1HWL6gOP86Ti0GuRw=;
        b=GHoZvnZdjRWdbZG42yAR8adakV953wEeFjeS2iNnbreJMJHO1l9pnfbL0R2Fm8+6ri
         8tE+uGf/HSW6zNlMzrZyr+d3vpwb8ipNkLdQTohn3GFoPK32c5z6fXRCmQcW/Kg4QyAP
         4Qt75RGYwYk+ACzo8ZDYpkzLG2ecTdH8F8IlIOp5IQBK7MNoguJKlpc9w8T+v0XK3huU
         VbGl81FbTc3PMraASWaTvnf6xlB7kfvOEXOdJJfGxB8W999GqMENaMGGG/RXP6tP1smq
         smFoh2PHH4HNIvTlILayeEUJCWfGlIZ73t/MlHcC052H30hkWQQ7wLXk5pEs2Z5FOALA
         HrgQ==
X-Forwarded-Encrypted: i=1; AJvYcCXKRdgwUWYQwk0diCm9tRSl8i4PqIPRsprypsTHHG03YpHe3HfUwOHySPuBl3li8R1QZaoY7WOA4OY=@lists.infradead.org
X-Gm-Message-State: AOJu0YxciOOTE+8Utgh4mHsP/vdZOECYgKEaPxAbnUvdehoNi8+jp0X4
	nnf6mxs1PDaGFsQf5N0XixuobfTlWCwNoBiRZQS1E/r1KanplpmVclVNI5MiR/xnGkKSHLYOPZb
	LdtOe2QQxdJeq9lFZT6kubcF7yVS28OGrLI1re/ejUNYe0ihxdkUO00o0QfrzCJudOlsQ
X-Gm-Gg: ASbGncvoYoQDlxd077Go6HBrX7wmr7jpQrMJv4RTEoC2jrd8nVFMq2DVICDLVrPkbaC
	m0Fu3DH25QkYTRqfjJCXtgVdPsOF7anISi0xu83dpy/81UGk2VsjCimmgt/kAnfLyS6IamwtT+j
	EhNqvV+/ukHk0Ijfcjct/z0IAh5Jf8A1pqklKyzJSroEKAkdfciQ8DZnYDOFlQ+qSWNpH1uOnM8
	saJBijjKJQCPYNxfNCIt9w8/JhZ9f2y4o7xLCVzpOi/CUxueNGobSttlo7+bal2w9/rIg8bOluj
	NUrvpO9Kcj/oafYm8YAteikCpPVLOMm4/G57P1HQzN5nNrWe24XaWdJPGKyf6PpewlYr1Hy8GrE
	gVakEW51nY3aAKQ==
X-Received: by 2002:a17:903:60f:b0:269:af66:5e70 with SMTP id d9443c01a7336-269ba53ab71mr18399085ad.9.1758291975561;
        Fri, 19 Sep 2025 07:26:15 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHjyPEK1QysizToe/QvWiGmgoytkSIQmldJZSwEnBeedNOnUc+qD02mwjMOxWcY1o8sbdk5Ew==
X-Received: by 2002:a17:903:60f:b0:269:af66:5e70 with SMTP id d9443c01a7336-269ba53ab71mr18398725ad.9.1758291974951;
        Fri, 19 Sep 2025 07:26:14 -0700 (PDT)
Received: from sziotdisp01-gv.qualcomm.com.ap.qualcomm.com ([114.94.8.21])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-26e80409ee3sm2210035ad.80.2025.09.19.07.26.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 19 Sep 2025 07:26:14 -0700 (PDT)
From: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
Date: Fri, 19 Sep 2025 22:24:27 +0800
Subject: [PATCH v5 10/14] phy: qcom: qmp-usbc: Add USB/DP exclude handling
MIME-Version: 1.0
Message-Id: <20250919-add-displayport-support-for-qcs615-platform-v5-10-eae6681f4002@oss.qualcomm.com>
References: <20250919-add-displayport-support-for-qcs615-platform-v5-0-eae6681f4002@oss.qualcomm.com>
In-Reply-To: <20250919-add-displayport-support-for-qcs615-platform-v5-0-eae6681f4002@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1758291895; l=1866;
 i=xiangxu.yin@oss.qualcomm.com; s=20241125; h=from:subject:message-id;
 bh=ZqkBdkbuOLKjKhpqL+qVKtuac3iLEKvjgh8IWhxZI7c=;
 b=O5F9/yXwTXdOv/GVyK3wv2N1g/rrnmq7IdOhKWoKm5ItBn+rhZs3wgEhpB2OqKYvn36rwXC0W
 BAB4OJbv2SFD08xVW9qM0ZS7Z5kv7ryh+7xs6mqcF8r1i83eHo/SKIp
X-Developer-Key: i=xiangxu.yin@oss.qualcomm.com; a=ed25519;
 pk=F1TwipJzpywfbt3n/RPi4l/A4AVF+QC89XzCHgZYaOc=
X-Proofpoint-ORIG-GUID: pm3BCRC5W53wnCOjjcq1sJ-Ep6gJdEh0
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTE3MDExMCBTYWx0ZWRfX7iLh5pLMxOfV
 uv7R1yuGCfH9QAliHHnB/jDs4uW3lUHXno4Jms7NY7/CC/bjktCntha1JQxCzEf3vtejkVjusiR
 UL66VPexUU709gzmnXBFa7jp1b2JbcJg1aVWM1jPJNVUb+p21PemqKkVWPmFoNfrK322gC/a5Z6
 pB3nFkeFBJeu16kVhiOGRbYf+d8b53CHldsRlQqU5eGvCncQPqFwzC5rtSFBrPjQco8KvAYXj/K
 PYF0cuMSmt+glPJqplDTER6q6j9Jy+6KGsB+KG4veXPoiIm8Av0BZxYhhcSMfSCOuEnNNSHsHvK
 KASqJ8DPa22FxRyMvE5LusctOfUezy8+PMWqb1CTegE8f0Sk57o7resjQRcleuaTY3wYk0rVZat
 ztPsHlzQ
X-Authority-Analysis: v=2.4 cv=AeqxH2XG c=1 sm=1 tr=0 ts=68cd6809 cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=Uz3yg00KUFJ2y2WijEJ4bw==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=RloG_8Ug8mropJZ47ewA:9
 a=QEXdDO2ut3YA:10 a=1OuFwYUASf3TG4hYMiVC:22
X-Proofpoint-GUID: pm3BCRC5W53wnCOjjcq1sJ-Ep6gJdEh0
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-19_01,2025-09-19_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 spamscore=0 phishscore=0 suspectscore=0 adultscore=0
 impostorscore=0 priorityscore=1501 bulkscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509170110
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250919_072618_141739_7F2D846C 
X-CRM114-Status: GOOD (  14.95  )
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
index 74dcf954845bcf8209202b75e9db10c3f6bdebd9..8030422d64382aa231d69dec9788778cdb0f218e 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
@@ -670,6 +670,19 @@ static int qmp_usbc_usb_power_off(struct phy *phy)
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
@@ -677,6 +690,10 @@ static int qmp_usbc_usb_enable(struct phy *phy)
 
 	mutex_lock(&qmp->phy_mutex);
 
+	ret = qmp_usbc_check_phy_status(qmp, false);
+	if (ret)
+		goto out_unlock;
+
 	ret = qmp_usbc_com_init(phy);
 	if (ret)
 		goto out_unlock;
@@ -730,6 +747,10 @@ static int qmp_usbc_dp_enable(struct phy *phy)
 
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
