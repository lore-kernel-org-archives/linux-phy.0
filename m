Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 61288CAC587
	for <linux-phy@archiver.kernel.org>; Thu, 11 Sep 2025 14:56:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tsJtwLrorVN4RX3mfBVPzUjwtn7uqfVIAnEF9SNMWhM=; b=wT+HzXDgx55Nnx
	+oSPVlOYTHGHzTlsT4j0BNJj60a5aCn17zDvy/RcS5xvjjenBQV2WUM7WaWolt9O1MMXVXEajR3zo
	9HX5zmg69FwLacaBZjpzAhDDFA0aWPgClZLiujg4EICVbFdNUoDFVC3f1VFHeGyo3HiC62/4yyxzT
	WUP72JmCJL04qQe4n1nhQYNSfJ1racXhdf7AW0PXYakSXpH1/zXTJ1lvei0N4GSRFSG/IncSZPX8O
	XSRQCz94drXDgpOf+lOMcjPVsoN9V3iq/lk7UA/gO4oWNVW5rH+7NP8sBg5wjd+v/7983Nf3mm3lf
	YhSTE7vF8uWvGllpWl/g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uwijD-00000003i1H-0blW;
	Thu, 11 Sep 2025 14:56:51 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uwijB-00000003i05-0QZa
	for linux-phy@lists.infradead.org;
	Thu, 11 Sep 2025 14:56:50 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58BAl7ir032588
	for <linux-phy@lists.infradead.org>; Thu, 11 Sep 2025 14:56:48 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	R/i0u1DnuXxgdpameCKVEnYo7itVnONwyzPQHpKD6Jw=; b=aANXaWnHNd0bBEmx
	JolRBQNocvb9jYBXiwV4otosafTRSNJ+SDyPn+7SIte68TZ5NrVC+jE1oE0Qr7FJ
	1+rkjgls8i3AT7kGRrgYh4QpAn1HKyJ2TggJvrmxyVvBN8CkR7cWAwhfTO2wkAwc
	NJdY+hEet/ZFgJTqafSo8GrrwvTRB6Km26gwHGV4d9NZeBrivFbwGhxWLXqbHzYH
	KF6C6+ZL/3tPuQ4WFB7spG+nsk997ObF+Wp9zUQbxUTWNdgkKKoZHAUQqhDJ8Wi/
	rBMQyUUtdMwl7qahL4taoNUps1+DCMrU7B5IvuTetGrCrVHd+6iujvnA/xm0Y6K9
	ZP/H0A==
Received: from mail-pg1-f197.google.com (mail-pg1-f197.google.com [209.85.215.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 490dqg7xqc-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 11 Sep 2025 14:56:48 +0000 (GMT)
Received: by mail-pg1-f197.google.com with SMTP id 41be03b00d2f7-b471740236dso36752a12.1
        for <linux-phy@lists.infradead.org>; Thu, 11 Sep 2025 07:56:48 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757602608; x=1758207408;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=R/i0u1DnuXxgdpameCKVEnYo7itVnONwyzPQHpKD6Jw=;
        b=C04SocWMp4oHTYaG3H0y7MQv7o3RMQBtwL+PLGTcInoq9ErZ7FHqLakd5mQ0NC4vsK
         zBWpiegl5OwztmwOxz8fg2K71tH325Hvz4EAPiCmgVArssjL/qb5+re5/KXnzs299I02
         qfC1S8oL2MuU3+KCaxU9v64u0/pnQCPafEV2D6EF2X9WYRB9MqOCl0nA9h28gMr1BdNV
         97Lw6bLfIsl9w8IS41fSNTMuH1VPHdWncCiYCW8Dmp2rMxdJBs0KTbduXM2QDK6bVZC8
         xElph+ikuBdYKSUQTr6jBkAIcq5vvmE8IaH+oRzmaV3OCkHz5hGjjrFCUnJeF1raJbxm
         2VtA==
X-Forwarded-Encrypted: i=1; AJvYcCXanzQNGcPu3htfKd8rqKceZIIvoVCSwkHKxn0B2ZV2XDMzWH3K/4QxGxS1nYFEpbtGR7s2Iu1iing=@lists.infradead.org
X-Gm-Message-State: AOJu0Yxn021CdOCmya4HdGHBheVPCLahcfTqCQbMmm6zh0G3SkUdjXKv
	I4B3FHIX2bJXJyy5ttBeUOh2411fCbkXy+UfF8hRMf6iQ5kq8a3PsxfC3NXGlcFCoVKL2NfkzMN
	upOJ1gF2Ply2BfSHp6VmEHzn+0Vacx70cn/8m4fePjya3jnCm0g154JBo6O2rFwD9lfsd
X-Gm-Gg: ASbGncsp4HP38HH3ufVe+vmFK6ML7/lRai2yOuHIBOpgSQi0FVnjx1YkCZp8l0ObCD5
	IRsiGiBKJtaYorm6vObufEuJKHEmeo2lZLwB4JwTbjwHazond2Gni2wMcDMSXNIXeZ7jbMosI1m
	9gmYhn9y1IB5S1t+lDrr7nnUcOh8QESDsuR5Q6TlFwmrztZTb5bcZJK0sGdNl9fQ+klLLpExAhn
	eoW/RVpXiFKwfRWHOErYyFpys299hc379saZfHbmLVc4LjclNWj5yLP0fLt0cpZ5eGsS/lEUlYt
	jmtC1jRrx1kEdB9kcz5uPge7I5sK5Sn3vkpKynnfQlL0wjeK8nLYY3R6kArJUJmshX+/HijHpt/
	ZwHUTeTSliJ+SnstlbrqjSFo+jRbI0hxSEMsBtWHmY73hk3ylhDGg58yN
X-Received: by 2002:a05:6a20:4322:b0:24a:3b34:19cb with SMTP id adf61e73a8af0-2534441f6cdmr16687137637.3.1757602607823;
        Thu, 11 Sep 2025 07:56:47 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGJdLqhTy32FV7HxAKLg0I05c1SykuXTMvfqc6IROeB1TisqANAWPSDFKILlfoT4H5LPXJ5uA==
X-Received: by 2002:a05:6a20:4322:b0:24a:3b34:19cb with SMTP id adf61e73a8af0-2534441f6cdmr16687125637.3.1757602607368;
        Thu, 11 Sep 2025 07:56:47 -0700 (PDT)
Received: from sziotdisp01-gv.qualcomm.com.ap.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b54a387cd4bsm2107453a12.35.2025.09.11.07.56.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 Sep 2025 07:56:47 -0700 (PDT)
From: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
Date: Thu, 11 Sep 2025 22:55:08 +0800
Subject: [PATCH v4 11/13] phy: qcom: qmp-usbc: Add USB/DP mutex handling
MIME-Version: 1.0
Message-Id: <20250911-add-displayport-support-for-qcs615-platform-v4-11-2702bdda14ed@oss.qualcomm.com>
References: <20250911-add-displayport-support-for-qcs615-platform-v4-0-2702bdda14ed@oss.qualcomm.com>
In-Reply-To: <20250911-add-displayport-support-for-qcs615-platform-v4-0-2702bdda14ed@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
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
        li.liu@oss.qualcomm.com, tingwei.zhang@oss.qualcomm.com,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1757602528; l=1610;
 i=xiangxu.yin@oss.qualcomm.com; s=20241125; h=from:subject:message-id;
 bh=g9Ir7Zqj4Q4z8+mdh4A2GkwyNH8GzAMmXDyXe7Z6swk=;
 b=zShFKpvyuFRXIRnT3yvPFCLUyh2L+HHbKIjDXahHxUeMEbq+jDSj/Gm5JVMNb7D6BthxSFcZI
 PDNrU61G8ZOC9dCZ8/sgo78JVqZE19eXdfvyh2YWG/Q9XQmAFkMAr1r
X-Developer-Key: i=xiangxu.yin@oss.qualcomm.com; a=ed25519;
 pk=F1TwipJzpywfbt3n/RPi4l/A4AVF+QC89XzCHgZYaOc=
X-Proofpoint-ORIG-GUID: PoM4UJS1gkalsu23blJEZWIyjzAZV8bx
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTA2MDAzNSBTYWx0ZWRfX/DXB3NqHGflf
 vGS/7eMJOzEDayj4X+iDGWcgKCFuQYZsp+fLtRWdHvAL6lbngQxSIyssdrRh7gGyeOOoTJqOXne
 VRIU+GQUUjZLNSoceukKpt8/9IyuSkZ3V0lc5+MCo0bvRpcwrPBWn0vpq3tvloqnnRmcVKYFtzm
 TFoR0z0sCIFJQtdtA2I+/pts0LggjgSyeL7Kc8NBisqEv4hiN7iGvFKlYlgeu6WWJEvjKIrOfqb
 Z6630jwxiKGempCv9w4zoaDh0KXjmkUkSUr/7RVSGwzTAT6gPLHi+VSYByjW6EWNCNDVa4hs+1Y
 hF5QqEbaLW0+EO1YgePgjH8fTvn0WjvfGlPk2D4ByuWq1t/1tq5fs10UdxaYE3sZjBlbQn4N+iK
 P1asphfv
X-Proofpoint-GUID: PoM4UJS1gkalsu23blJEZWIyjzAZV8bx
X-Authority-Analysis: v=2.4 cv=N8UpF39B c=1 sm=1 tr=0 ts=68c2e330 cx=c_pps
 a=rz3CxIlbcmazkYymdCej/Q==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=_IuPrrw32zr4QVSE3DwA:9
 a=QEXdDO2ut3YA:10 a=bFCP_H2QrGi7Okbo017w:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-11_01,2025-09-11_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 spamscore=0 malwarescore=0 clxscore=1015 bulkscore=0
 suspectscore=0 priorityscore=1501 impostorscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509060035
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250911_075649_150824_40BB7107 
X-CRM114-Status: GOOD (  13.46  )
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

Introduce mutual exclusion between USB and DP PHY modes to prevent
simultaneous activation.

Signed-off-by: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-qmp-usbc.c | 21 +++++++++++++++++++++
 1 file changed, 21 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c b/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
index 613239d15a6a3bba47a647db4e663713f127c93e..866277036089c588cf0c63204efb91bbec5430ae 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
@@ -1061,6 +1061,19 @@ static int qmp_usbc_usb_power_off(struct phy *phy)
 	return 0;
 }
 
+static int qmp_check_mutex_phy(struct qmp_usbc *qmp, bool is_dp)
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
@@ -1068,6 +1081,10 @@ static int qmp_usbc_usb_enable(struct phy *phy)
 
 	mutex_lock(&qmp->phy_mutex);
 
+	ret = qmp_check_mutex_phy(qmp, false);
+	if (ret)
+		goto out_unlock;
+
 	ret = qmp_usbc_com_init(phy);
 	if (ret)
 		goto out_unlock;
@@ -1121,6 +1138,10 @@ static int qmp_usbc_dp_enable(struct phy *phy)
 
 	mutex_lock(&qmp->phy_mutex);
 
+	ret = qmp_check_mutex_phy(qmp, true);
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
