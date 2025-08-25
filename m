Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BD8FCCA0EFA
	for <linux-phy@archiver.kernel.org>; Mon, 25 Aug 2025 12:54:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rQwcgk61mShv9/zm0NCdtMi+ZNcmQcoLZwxv/XA6uSw=; b=SXd8EsKsZtKdNT
	OKVMaPvoAeLNP7UYf7sfOFG72YM9bwCeBA3fgVby/kzxXl+68xVbD5mtKYHEaFKshfMub/XgRoabg
	Uh45nYDhJCtzOc+gvVrzGMseLYoKD0ZHVVHQbVRqf05qRjTLpSZPjNzNYbHU9UrIO9z8yy9hnt7kl
	0jYwEGmneADQdBSjWd3PLQgisdidHR78oXp5uP0v68SXEvX4CzznLeP7adr+Y9bV3QRAXzIC5RyVl
	xr3lFiXYdMONxPTnhIb9Aq35GYx/k5tT2fOMP9VS6sX9prQeL89GnPoFH9scYQa/mUeqS/6C57PGY
	dRR0bWv2ugk6y18eWbfg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uqWis-00000007zVj-2BYv;
	Mon, 25 Aug 2025 12:54:54 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uqVkH-00000007qCz-3uSK
	for linux-phy@lists.infradead.org;
	Mon, 25 Aug 2025 11:52:19 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57P8KxJs024639
	for <linux-phy@lists.infradead.org>; Mon, 25 Aug 2025 11:52:17 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	HpYASGZZmsu81nylw1xU5enO2W10dco2kzYUMmfi47I=; b=U7jazKpsZDXXnFpp
	bpXf9dA3wQ3+RLo6cy5nsIr9jH0A+fZJu9ecSGUclxGo4pep2aUhDXYsFI9Nno2f
	AasAc7WhtKeezpxohqPF3VhAhmBoh4bBXWim2yokuGTwt2RyO2fp19l/7IqLN7Cq
	oNNGTojrzGVTrxvYs71ZL7obyuBaRrAgigpOnuhu71SIxRl4PEETqUj7cIKo+HrM
	fdRQWLH5KfKRwtYS2CTHtC1dkdzRNNoU4D5fMXt8S6b1DQ0qKs1F+wF3+0nE8NTY
	xNx0VwOFjeTxXcDhB2i717xVtrXaIuPvsG++veTrcKD7lVGw3peagHF3p5ulQhYO
	9CtOOQ==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48q615cvw4-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 25 Aug 2025 11:52:17 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-24458264c5aso47416045ad.3
        for <linux-phy@lists.infradead.org>; Mon, 25 Aug 2025 04:52:16 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756122735; x=1756727535;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=HpYASGZZmsu81nylw1xU5enO2W10dco2kzYUMmfi47I=;
        b=Wxr/gFD3rvjQzNWFcVMcC4gUp6Xizd689MJPzhl4eJsDTVBW53ElyzGlhOU74FBzFd
         /iCtykKz8B5LyWitK9NBGcZ7Ef3zu2gTiBpR0Kp3vKBsJnmT8OtKCgBIZBwwtv9wOYav
         /qA9TrrSg2Ru2H6xfI/AC3Jwuv3sdaOP5IDnlqOQu5+0kNnvYwDoYUnhXdocU5o5MPQc
         L4mF9JLSxun3Kj0B50pSqy6d7kl4MfvKLCtw+5ka7YhR8zQhDKbBOZeDMT/Mvf4+hotJ
         YbA4xUWuVFfHEe3xBTynewpPSAqAduNibQ/RO2HDV5i0Pgg+BpIM57rQG56A4ip77zb4
         p14g==
X-Forwarded-Encrypted: i=1; AJvYcCXK7yeGVZZveF0oynvte/MIkGHXZGmX4k8sq/XaQn6DYDj1d2WppVq8vAbN2ojw0KTKhgSOrijl5ag=@lists.infradead.org
X-Gm-Message-State: AOJu0YxoSWP3nY2Nr0oq0RHBIrF399e4LjCSCkBQGTwSsLRHdD+OIiNp
	0zNMGW6lFPsoFlrt9honM1V40vKnBSkSzg8qix+BjcVOmH5tws66MwAwjE23mBTOyNACpl8pboY
	cNyky8AJj1PoJGY66CfLPgq2Ho50F/k5HM8p/pz8c6I5cBRKNSRKlvssscI31hg9VyChalNdmUY
	GI
X-Gm-Gg: ASbGncuYP31mq2Jsw3ZFtHfNWvzUz9fp1XTyDGeeaO/H20hLvEsH/SCqtbzDMqWvoyR
	8rIo2kzGKreI4UmZYcPIiNAENqEWHmpwis3cVApmvckSycm/hQMRVxLGj45TZgIcEJT+m60RPK8
	vt8+0ebj52yh+/QCS6EhWbFA8TXipzTB2fQWO62F7mrYXQxGGuYBFXGAfWpkobOInlmQsgSbOvl
	hL5lK9i9ei5+ehQotFPeEQmNHHZoxvzpdlxIBSBHwJ5DoSOxVa3IwX3jXSCx6uHbkeORWSWBRqz
	y5EDp9wUNK+8VhVWXmACawa5bGHJVPxgau5r3LC0hd8umHw38PYmbjzLw0wYnM/wwl/I6kFkkgk
	YMqH9oE3sI2Wd6UlC0XPeVmoDRvv6qQwXlDREK6Gfal5i2zPIzdC2wcUexG7xNOxjX6WF0TiW6E
	k=
X-Received: by 2002:a17:902:d603:b0:246:a42b:a31d with SMTP id d9443c01a7336-246a42ba453mr73367105ad.44.1756122734555;
        Mon, 25 Aug 2025 04:52:14 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHf+8bmXr8Korpvwp3mX4WK/6McGdstI2tyTFrLp1MRPj7QLOOcYirhdLAQzg0QNUqxZUKcpA==
X-Received: by 2002:a17:902:d603:b0:246:a42b:a31d with SMTP id d9443c01a7336-246a42ba453mr73366755ad.44.1756122734086;
        Mon, 25 Aug 2025 04:52:14 -0700 (PDT)
Received: from hu-kathirav-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-246687b521bsm67081015ad.60.2025.08.25.04.52.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Aug 2025 04:52:13 -0700 (PDT)
From: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
Date: Mon, 25 Aug 2025 17:22:02 +0530
Subject: [PATCH 1/3] phy: qcom-qmp-usb: fix NULL pointer dereference in PM
 callbacks
MIME-Version: 1.0
Message-Id: <20250825-qmp-null-deref-on-pm-v1-1-bbd3ca330849@oss.qualcomm.com>
References: <20250825-qmp-null-deref-on-pm-v1-0-bbd3ca330849@oss.qualcomm.com>
In-Reply-To: <20250825-qmp-null-deref-on-pm-v1-0-bbd3ca330849@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org,
        Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>,
        Poovendhan Selvaraj <quic_poovendh@quicinc.com>,
        stable@vger.kernel.org
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1756122727; l=2291;
 i=kathiravan.thirumoorthy@oss.qualcomm.com; s=20230906;
 h=from:subject:message-id; bh=5tHHmTTWnCLhPgSdJhVTTRMV12QfK1s/7g0qLan1GPM=;
 b=+4h5dOsKc93rJTyxtpkASa9VdaD7psJ6QMS6m9i1mhrHVmyUqXzUcMpMjcXA2aa3vT7uXpa0F
 VdoBdRAqnuNDB1vN7nu0jdjIoAsFEZ+3XsCh4rwsmmT8F4sKZ2dsDpl
X-Developer-Key: i=kathiravan.thirumoorthy@oss.qualcomm.com; a=ed25519;
 pk=xWsR7pL6ch+vdZ9MoFGEaP61JUaRf0XaZYWztbQsIiM=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODIzMDAzNCBTYWx0ZWRfXwOphCjJLzCdz
 oBnNLj2RPpGDrFebis3wBRpRVyf2UmqCdOAKHGne0n8FnZGXnq+CuOaw+qGF4BXGR9jqmNPpOp7
 SZc7l87LU6F8F1VbS7/akkE6biS7XZdr0b9k+1rm453dRzamzIgoZk18YhdLV0oG3L12omaIISE
 5qY+UuKU2axJnfpyZsNHFQlSo7++yWUy5y/ldvgJVbwJLvOqaMnzbFFgEy7RG2rMjAFBxKL2klK
 cDi/8SmxwHqOi4lw0tDpA2g9/FGGc6pd3Godl8DztrtEyKxFg3DHCw0uaRKI/Vdg57sk9T46rZH
 teKft6OBFfhoJU+/ZSz+N1keWWZIhchSd6ICixDvgOWT+RPz9NWub/rJjnK5dYYYFf4repFGn7C
 X8ESaq5t
X-Proofpoint-GUID: PP0NpdVzfF2z9OTk5kHEK1wvQEKiF_BO
X-Authority-Analysis: v=2.4 cv=K+AiHzWI c=1 sm=1 tr=0 ts=68ac4e71 cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10 a=COk6AnOGAAAA:8 a=VwQbUJbxAAAA:8
 a=EUspDBNiAAAA:8 a=qjlM38Vp9SSmJgUIidoA:9 a=QEXdDO2ut3YA:10
 a=324X-CrmTo6CU4MGRt3R:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-ORIG-GUID: PP0NpdVzfF2z9OTk5kHEK1wvQEKiF_BO
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-25_05,2025-08-20_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 suspectscore=0 bulkscore=0 clxscore=1015 adultscore=0
 impostorscore=0 priorityscore=1501 phishscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508230034
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250825_045218_096074_54BBE3B0 
X-CRM114-Status: GOOD (  14.62  )
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

From: Poovendhan Selvaraj <quic_poovendh@quicinc.com>

The pm ops are enabled before qmp phy create which causes
a NULL pointer dereference when accessing qmp->phy->init_count
in the qmp_usb_runtime_suspend.

So if qmp->phy is NULL, bail out early in suspend / resume callbacks
to avoid the NULL pointer dereference in qmp_usb_runtime_suspend and
qmp_usb_runtime_resume.

Below is the stacktrace for reference:

[<818381a0>] (qmp_usb_runtime_suspend [phy_qcom_qmp_usb]) from [<4051d1d8>] (__rpm_callback+0x3c/0x110)
[<4051d1d8>] (__rpm_callback) from [<4051d2fc>] (rpm_callback+0x50/0x54)
[<4051d2fc>] (rpm_callback) from [<4051d940>] (rpm_suspend+0x23c/0x428)
[<4051d940>] (rpm_suspend) from [<4051e808>] (pm_runtime_work+0x74/0x8c)
[<4051e808>] (pm_runtime_work) from [<401311f4>] (process_scheduled_works+0x1d0/0x2c8)
[<401311f4>] (process_scheduled_works) from [<40131d48>] (worker_thread+0x260/0x2e4)
[<40131d48>] (worker_thread) from [<40138970>] (kthread+0x118/0x12c)
[<40138970>] (kthread) from [<4010013c>] (ret_from_fork+0x14/0x38)

Cc: stable@vger.kernel.org # v6.0
Fixes: 65753f38f530 ("phy: qcom-qmp-usb: drop multi-PHY support")
Signed-off-by: Poovendhan Selvaraj <quic_poovendh@quicinc.com>
Signed-off-by: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-qmp-usb.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-usb.c b/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
index ed646a7e705ba3259708775ed5fedbbbada13735..cd04e8f22a0fe81b086b308d02713222aa95cae3 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
@@ -1940,7 +1940,7 @@ static int __maybe_unused qmp_usb_runtime_suspend(struct device *dev)
 
 	dev_vdbg(dev, "Suspending QMP phy, mode:%d\n", qmp->mode);
 
-	if (!qmp->phy->init_count) {
+	if (!qmp->phy || !qmp->phy->init_count) {
 		dev_vdbg(dev, "PHY not initialized, bailing out\n");
 		return 0;
 	}
@@ -1960,7 +1960,7 @@ static int __maybe_unused qmp_usb_runtime_resume(struct device *dev)
 
 	dev_vdbg(dev, "Resuming QMP phy, mode:%d\n", qmp->mode);
 
-	if (!qmp->phy->init_count) {
+	if (!qmp->phy || !qmp->phy->init_count) {
 		dev_vdbg(dev, "PHY not initialized, bailing out\n");
 		return 0;
 	}

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
