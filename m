Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 60550CA0FE6
	for <linux-phy@archiver.kernel.org>; Wed, 20 Aug 2025 10:05:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Gf8FGqAQg99Hh/JCJCN5jNHuQeR1WfYcC3mdNooIY3I=; b=OTp1fw0usYQQRj
	0VJKtnLrSlF6YOvV+k0HcF9wIlIysiS01Hu3+L37S2R/taa2R0AmkoeSR02yei5FTiZ4ZG8ZLK0Q4
	elO083aQMV7hKkcVk39AMg7KM2RKpiAMAt3KDHEplTtMsVpJFOnaEkYkwgMz0LQPJdxcF0VP0FPI5
	NzvgrFkBxCseQHt8VCOSg8ZszjJkYmcLOwvmU70kgeaPYLH2Pnm4tuR2ojOTtVkSpaiVz+Fb8JsZc
	xpt+rxu5T0prWABg2swz1k2568+1gK2bgwpKmBdv0PvS5/fZYDkeyERyIuq9AlBWz9nwvQ7mOJ9PE
	RRa/kKxJmNLHwTJsX3aw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uofhJ-0000000D5IZ-0UZh;
	Wed, 20 Aug 2025 10:05:37 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uofFo-0000000CxYz-2KX3
	for linux-phy@lists.infradead.org;
	Wed, 20 Aug 2025 09:37:13 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57K1p2Ki005901
	for <linux-phy@lists.infradead.org>; Wed, 20 Aug 2025 09:37:12 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	HXCMXoEHSzzPkbhgvQAI0rYXROuTcAwPw7wz3hIiRiE=; b=ABGIdaKnG4GHl2d8
	vhzi1spaRkB4HIzlUvaFsFgyz+Ych12at+Y94WxbqxngGfSBcAiBlAEkSSLZQ+yK
	3Q778BjukosfUQutkunRWvB1rKdkhTiEvuD0wK71oudArQ/H2V3anmvFA+HTvFmD
	hrCIbnHWyY2OJyDEesWXDDIHM6HTqs0wIbhgDh4Yn+W5VgJ289C+bUIXgY4E9wnh
	XyJ+0ufZB1A+adwMhhSzGTpMXproXEg2I+IAZ+WdLsS18QIOWKbnmqUJiQy9Vcbd
	VLfOYbJ6tJVF3xdp1iJYLaZcxbpvILupixWDSaqeFRJCMDoOzM0YBmLKtCd+l3fc
	k8ozVg==
Received: from mail-pg1-f198.google.com (mail-pg1-f198.google.com [209.85.215.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48n52ch6sc-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 20 Aug 2025 09:37:11 +0000 (GMT)
Received: by mail-pg1-f198.google.com with SMTP id 41be03b00d2f7-b471c35ccf4so2098717a12.0
        for <linux-phy@lists.infradead.org>; Wed, 20 Aug 2025 02:37:11 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755682631; x=1756287431;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=HXCMXoEHSzzPkbhgvQAI0rYXROuTcAwPw7wz3hIiRiE=;
        b=voyhtjwbu6FIIXdGVCFd/Ctvr3RQ0un0wHyYezVTyox9OozgQg2XoHcg/HkRd8+EX3
         tB6hV7weqpR7hgcQscTXZkPKqeAfsll2ukBmCirE5zwc6F1lhuxLUp7AI3AwJe5aktl/
         c0wqlV6Zu+V820ayX7vZF+YzWeLD2XMcip13GGAeniZ/oT6UgnKwJ+OrMDRXQL8R5+6V
         AG+HqRtQjP6jm4bmIAXUwHMz2WSk6WyBnDkwfWp6kt2lvAg9gID5sP+mb8IVFYweWs70
         0gsAY1If/ttjJ9mDT/XwhN9eM+f33l1hv/klNtaLgSBmjHfZSNUlT1RsmW+LjJoSPwX6
         Gc7Q==
X-Forwarded-Encrypted: i=1; AJvYcCXUC/VW/lEzvri+CE/a/fsgfdQnmSezI+E/iEy7KHavEqqHBmK4Doaj/PwI+O+3Lrp3O3/N14gv72Q=@lists.infradead.org
X-Gm-Message-State: AOJu0Yz4BDOtCi/uhlrKRL640DrtpR9eXyl1TP36S0qVqYSrJ9LPXm0B
	MLOhXUA2sYgoKZrs0KPO5fqwuw9EpR9zP6IP4zPhq8jf8FPXtdXNZh7gkeIhlFVACeI4Yjy2lA7
	63LUiBakxeyzJoSkfHp41LWjxCCE861E89VfSxlMf4RQbbZLvQ3NtOENwuQOYeDwbxVujxNyTQf
	8Z
X-Gm-Gg: ASbGnctd+iFYYnoMAVzOGTBzvwppLto7NoiOxGiqO9ke5FYt3DNtKN7H63noHVsW9J7
	64LwjURD8rr9KUu/X4xq7Z2UJRN79vnJ8bOBT8pQkM2oqo5R7pWRXZmKBf3gi2iEaVMJdMaSRxA
	+EClgCDQItAXvpDRxrTeZNwSCyBxfoolwWh4Ib4kDYiCQCOL4rmUxiGkzomBS4yPBMlPHBUn7RK
	7UP6hFhyUGZjYcAVVQ2H0xQMw8nQ//WjGXAxq6xwHapkwKlaAKVFGdYE9NfEgg4h4cqsB+2YDds
	HPnYelh67RNCFyB7uGz4bC5qhu5qbGvZGzcnpZ4sx39LYilR/IZn5m0HFlYmTYgE1RRW4N+jstz
	0foJogG1da8Twm1cHY8rjjCX/LEyVKgZb8BNA1mA/YEmhyVEhfhVyWtP2
X-Received: by 2002:a17:903:1c7:b0:240:71db:fd0 with SMTP id d9443c01a7336-245ef25bccemr12961275ad.8.1755682630836;
        Wed, 20 Aug 2025 02:37:10 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IH9n+Y8mt33jA5ru0MGM6k0vMA0mnbToTLiA24zruGDf9ewnDEOM2CMV/Nmr32brvdMMc9ajg==
X-Received: by 2002:a17:903:1c7:b0:240:71db:fd0 with SMTP id d9443c01a7336-245ef25bccemr12960945ad.8.1755682630363;
        Wed, 20 Aug 2025 02:37:10 -0700 (PDT)
Received: from sziotdisp01-gv.qualcomm.com.ap.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-245ed4ec100sm20954305ad.116.2025.08.20.02.37.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 20 Aug 2025 02:37:10 -0700 (PDT)
From: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
Date: Wed, 20 Aug 2025 17:34:54 +0800
Subject: [PATCH v3 12/14] phy: qcom: qmp-usbc: Add QCS615 DP PHY compatible
MIME-Version: 1.0
Message-Id: <20250820-add-displayport-support-for-qcs615-platform-v3-12-a43bd25ec39c@oss.qualcomm.com>
References: <20250820-add-displayport-support-for-qcs615-platform-v3-0-a43bd25ec39c@oss.qualcomm.com>
In-Reply-To: <20250820-add-displayport-support-for-qcs615-platform-v3-0-a43bd25ec39c@oss.qualcomm.com>
To: Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jessica.zhang@oss.qualcomm.com>,
        Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Kuogee Hsieh <quic_khsieh@quicinc.com>, Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>
Cc: linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
        fange.zhang@oss.qualcomm.com, yongxing.mou@oss.qualcomm.com,
        tingwei.zhang@oss.qualcomm.com, Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        quic_lliu6@quicinc.com, Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1755682521; l=1063;
 i=xiangxu.yin@oss.qualcomm.com; s=20241125; h=from:subject:message-id;
 bh=TLXmf7CMeiTC8Z6DwRlj4bLrhrN7dz3DcuKvJOyLkT0=;
 b=tYrwmSqZ7+5gVwIwT7A3TBOs5j5jdX94tAHdFyRh09FRVFwfiHNuGNctJEVjLCL+44jGzT5KO
 VMggrWG6o4GB2Lt8oNsfF0Hw4vF+8wqfhzzMSaHydvX/vBS/00DQKsZ
X-Developer-Key: i=xiangxu.yin@oss.qualcomm.com; a=ed25519;
 pk=F1TwipJzpywfbt3n/RPi4l/A4AVF+QC89XzCHgZYaOc=
X-Proofpoint-GUID: C_nM3uEeQQLwJdnqBqIYEM6rpvjHXEoa
X-Proofpoint-ORIG-GUID: C_nM3uEeQQLwJdnqBqIYEM6rpvjHXEoa
X-Authority-Analysis: v=2.4 cv=Xpij+VF9 c=1 sm=1 tr=0 ts=68a59747 cx=c_pps
 a=Qgeoaf8Lrialg5Z894R3/Q==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10 a=EUspDBNiAAAA:8 a=3lua1KrjtZAvismTP1MA:9
 a=QEXdDO2ut3YA:10 a=x9snwWr2DeNwDh03kgHS:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODIwMDAxMyBTYWx0ZWRfX0S2NWRnCjnDM
 yte+ApTeCeH39tV1K6pBCTwFlA4drwQmZEIsq6+E3VAPASSjoO1QP8iaFuZCLErCgVqq+aN64zQ
 AA8YwGBd1DpApX9fVhgvd0InNw/jhOsblrbMK3YQqXcRD3VFxoIVqMP6ZbLFSsF/sINIFTInFt5
 KfqB4VH4Rd7hHzh/3hcobcWOAsonG+bjV79noXhC+KQ8LVlAz17aNlcPhgdg+OxrVKeRdWk0Cz6
 +m/J3+mGDJtGdPSrsWS60GcsD3mU0EC42sB4ORtcaKtVt8C2zZycJo9ZGd3Voni+ofMLxlZNot8
 O7Q0FxUbZx0Rc+BusKxsT9yoW3vIucdY4lFE6G1p6qo9NV/z8ozvjnhzO5gAeomKsBXMBJMFa7k
 /sHZZYE0sJs3n0e3NGc0HmaTxUMYfg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-20_03,2025-08-20_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 clxscore=1015 lowpriorityscore=0 bulkscore=0 impostorscore=0
 adultscore=0 spamscore=0 phishscore=0 malwarescore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2508110000 definitions=main-2508200013
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250820_023712_607310_FA340189 
X-CRM114-Status: GOOD (  12.71  )
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

Introduce qcs615-qmp-usb3-dp-phy compatible string to associate QCS615
platform with its USB/DP switchable PHY configuration. This enables the
driver to apply the correct setup for PHYs that support mode switching
between USB and DisplayPort.

Signed-off-by: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-qmp-usbc.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c b/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
index 74b9f75c8864efe270f394bfbfd748793dada1f5..d56e334d58576d15a9ac047abe40a479e790a324 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
@@ -2022,6 +2022,9 @@ static const struct of_device_id qmp_usbc_of_match_table[] = {
 	}, {
 		.compatible = "qcom,qcm2290-qmp-usb3-phy",
 		.data = &qcm2290_usb3phy_cfg,
+	}, {
+		.compatible = "qcom,qcs615-qmp-usb3-dp-phy",
+		.data =  &qcs615_usb3dp_phy_cfg,
 	}, {
 		.compatible = "qcom,qcs615-qmp-usb3-phy",
 		.data = &qcm2290_usb3phy_cfg,

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
