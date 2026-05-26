Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C19BCCD5BC8
	for <linux-phy@archiver.kernel.org>; Tue, 26 May 2026 09:10:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=em+ZMxl6Qzwq72jmfo5OeTgtkKyMo5/6g5YHSMFk8E8=; b=KiR8hpgmAgV069
	YgXYjWZ1ZiVxqYhKVi/qRjuurA776VAvK70fsgfgSDKjVHKEp+f+MEOKWoMK29TNADlfYHigzBxLF
	lBr4QGwrc1PmM+lpS+6RlO2LJ+K4jQ9bqPkRUKM8TV3xSkd4XYqERIo+Z/VB3N1M/e8vINzDk9Xhr
	cr1SGUG0Ll6ey/gLAG8NHbY0eNCZEDEy3daryJkcsAUf9pxWA1IWIA8fQ9SDk8dG5wCcXZy29D7Jn
	4rLLrfEQDLj7OD2W4y6F3f8xbygwiW4MmVJinH7dshQXB6m1ODF1A7Svxjq7XJ274g2xD3ZPjZAEL
	hGIKf+EyISdW1BVsmhvA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wRnnk-00000001TAP-2Cfk;
	Tue, 26 May 2026 09:10:16 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wRnnh-00000001TA0-1uGD
	for linux-phy@lists.infradead.org;
	Tue, 26 May 2026 09:10:14 +0000
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 64Q8Igm7691624
	for <linux-phy@lists.infradead.org>; Tue, 26 May 2026 09:10:13 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=m4Lq8YbuP0exEB+3/26cPn4yY9bT/1N5VNN
	durUkg00=; b=USZUTzBg4njH+5H/R99S3hfvmuV1x5rFLxsREzth4h4en8DAcwb
	PFfU31E6QSzZbxRMa7nXVE65qBYIco+UgZlVNp7NLAef1zxXb4SJ/9PvGPfK7MvP
	6R4xlIackLmYwSJ2yqCK3qHsHrXC4edEVwGK+dc25YuAAhH0eOfizcquCH6qw4zK
	4+SUwXzX6cH/ooTohGOU8ddRf4xObEakPTJu/j/8pjeJOH6IzAWYltPnUyMuBwEJ
	rGBL/uuDM7ciXD4TEGwFRdz02sysfCdcQiDkzkb8lYd97jXel7hWKlVRyTD5EaaN
	DrjvKFZL1MrnJIjFhvD6txpTibGSdtyfEwg==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ecpy2kbmc-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 26 May 2026 09:10:12 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-2baedd2fd43so71961875ad.1
        for <linux-phy@lists.infradead.org>; Tue, 26 May 2026 02:10:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1779786612; x=1780391412; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=m4Lq8YbuP0exEB+3/26cPn4yY9bT/1N5VNNdurUkg00=;
        b=GstHy93wPsmEnQdwXrVIIzl8r1xMdbf4sHonR+5LjpU9JiWHgB4xEZp0Wp0hPVtNHU
         kQo6rpak3Mx5bqSsA//gG8q8599ysSkFSyWwv738yigXhU3RVFNGBIMt3AVJpgPKNx/e
         r2XGg7haM+zdkTHHWhhALQozmgFdw+Ber/SlEeDaZbP2mkhulGYrfelIgosPYAPcoJDe
         Ign8pxHqDKQY7Qo0Ta9s+wJjh7ZmNmsTgAMqhHoluBag2yVc3dQBh9Z8IgdETHUSCKCq
         R3zK5KQozB2tkiEQ5FkYM4nCq8kUpLvEGN+xm3qPw9ywT9zFxKx5DMdDWoz6tEDZy6qV
         E1ZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779786612; x=1780391412;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=m4Lq8YbuP0exEB+3/26cPn4yY9bT/1N5VNNdurUkg00=;
        b=E92GeD7JkVd/2bF7c2F+C2vcSw11mQrzy78mxjnoJI7jG5uDFdE3e+mYTinOmsutvp
         fQ2qvk1SKXJo/0I6hFa0/mMHwKmlFj0SfUnkmEB6SoQwjo6D/JdSa7uRWQs+8syeyN1L
         Tvex1f1ecU4dabhvGk9jGy1Kiq8i3Gsl0KlBMj6UE2KYzuA7q+cAZMa/clThNZaQ3WMV
         uPvcIUKjLn5VvG5h5sNrGBxv4E7AOJXtSos6BHmwF7i85Bm7Ev7ohzE5J0HJkF/tP/RT
         KgEsyOeZ6+gZRwn3hjEbWrssyXbgHpCWe6y3VmrxWxIyv/F3u+szIRBDjQmaMzw7Cz3d
         1GkA==
X-Forwarded-Encrypted: i=1; AFNElJ8cOs91bUacM4C2kzcxk81Ha74KsGM856TToT9MJZeGEH07RrFMxwOl432Jeg2uhNnxCccekf9+CPI=@lists.infradead.org
X-Gm-Message-State: AOJu0Ywg5ymHEENC8LTpkPri444K2yPX5viLQYekK3ajuwPtA2Lep+Ey
	r2uVtJQBbEUtia/zd8FRS3F6v2Vy50q5Q0610GGOZcyLKRYuGkMg6H2r3BROM1RfheUmaa44Nnk
	5ptiBYhpkrQ/4k7v5AxGy4ogCvPV40aLeiWvZOilbf/QfrjsP4d8AJ8mZdG6vhVgBC+W0
X-Gm-Gg: Acq92OHcsAAP/KDOs+8h72H9Uz6/YGoxoyc7UIsapcZXU1KypxmMqt8DJtHo7Y8fgaM
	OTW6CmVEJc0XQQwRtG9WduqlV2FU6/y7g4DjZrFefbTfHqICPyr0MwQQw6wYAQtfVtPfQvmrvpt
	Jyd7iwCuGmKU6fz8SyAEQYkNiUWlm9f3LxOVtRzP++IEAFC2TNivw66p9D6PCp/OXq63FDytUTC
	eGr1XH/l12H+edWQk1ckbzPpr7QOSsP/YldrE+RQEyCOzvtFF1itiAp299xHIlPygPMcycJzGzX
	VFNP+HPBMLP9QGkQTmX1WfXQSt8UeE+D/IZlhrIBOpnLz3BQYCJxsL32Wzv2rsdnUD4FMRWC+85
	j2+ZJGkz9vfvXKRvZQACgyS1u2zleX+m/i0FTWKhZ8dOyuWrqxdw4UA==
X-Received: by 2002:a17:902:e845:b0:2ba:4f37:d3a7 with SMTP id d9443c01a7336-2beb06a63c6mr206020185ad.27.1779786612151;
        Tue, 26 May 2026 02:10:12 -0700 (PDT)
X-Received: by 2002:a17:902:e845:b0:2ba:4f37:d3a7 with SMTP id d9443c01a7336-2beb06a63c6mr206019725ad.27.1779786611626;
        Tue, 26 May 2026 02:10:11 -0700 (PDT)
Received: from hu-pkambar-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2beb5695a40sm109237915ad.17.2026.05.26.02.10.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 26 May 2026 02:10:10 -0700 (PDT)
From: palash.kambar@oss.qualcomm.com
To: vkoul@kernel.org, neil.armstrong@linaro.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, mani@kernel.org,
        alim.akhtar@samsung.com, bvanassche@acm.org, andersson@kernel.org,
        dmitry.baryshkov@oss.qualcomm.com, abel.vesa@oss.qualcomm.com,
        luca.weiss@fairphone.com
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-scsi@vger.kernel.org, nitin.rawat@oss.qualcomm.com,
        Palash Kambar <palash.kambar@oss.qualcomm.com>
Subject: [PATCH v3 0/3] Add Hawi UFS PHY and Controller support
Date: Tue, 26 May 2026 14:39:53 +0530
Message-Id: <20260526090956.2340262-1-palash.kambar@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-Proofpoint-GUID: koYujdZPaTaEjG1cG8WQHPuFHLY-BScv
X-Authority-Analysis: v=2.4 cv=ML5QXsZl c=1 sm=1 tr=0 ts=6a156374 cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=NGcC8JguVDcA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=Um2Pa8k9VHT-vaBCBUpS:22 a=EUspDBNiAAAA:8
 a=wRtOOnJjwWicnHpPwtUA:9 a=1OuFwYUASf3TG4hYMiVC:22
X-Proofpoint-ORIG-GUID: koYujdZPaTaEjG1cG8WQHPuFHLY-BScv
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNTI2MDA3OSBTYWx0ZWRfX60JVf999uQSw
 6QV63T9A0BXxxLuhVs7xTPrdRY8YoU4TWUGkSk9Z45rEGy3Eb+ajbVtNyfwVR8LOq3t+12RNOYq
 wHm39sIyRj/hBl67wFyK+4BfmZcwVA18Sb1PJANJIiqaVP5izmxZvrmGovwUKmahtlFDL8nVbJd
 Jlw/+ke/l1IwGnnINHjpsYYTxPvtB4iPNkk2DbuWC1SpDwcu2OimTTYtJxJMFnB5A1Z/k/WSe89
 61YLH4OiPTq355z787pME2RobewIntWILBsHsi1AWcwzI/QTSrcHB0Vsj+7PT6I/lLjxo8DK4Eh
 8rKImiXa1jxyaJKoqZejy3fHlX7/iaX6Fdcy6MpYubYYz/zj4t/0WcTd6luD58S8lnU4ZcTKlJL
 hBPCUjZgUQUC9moNJLezaTScPWyTcqd1wzDpgMNOzACBvQNEa60Fe2C4APlM56pKjw4PvW71gBf
 QoGpNsugBYrR0UaT5ww==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-05-26_02,2026-05-18_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 suspectscore=0 spamscore=0 adultscore=0 clxscore=1015
 lowpriorityscore=0 impostorscore=0 phishscore=0 priorityscore=1501
 malwarescore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2605130000
 definitions=main-2605260079
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260526_021013_497201_EA945D9A 
X-CRM114-Status: GOOD (  12.32  )
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

From: Palash Kambar <palash.kambar@oss.qualcomm.com>

This series introduces devicetree binding documentation and PHY
initialization support required to enable UFS on this platform.

  1. Devicetree binding documentation for the QMP UFS PHY
     used on Qualcomm Hawi.
  2. Devicetree binding documentation for the UFS controller
     instance present on the Hawi platform.
  3. Initialization sequence tables and configuration required
     for the QMP UFS PHY on Hawi SoC.

---
changes from V1
1) Addressed Dmitry's comments to fix versioning for PCS and qserdes.
2) Addressed Mani's comments and fixed missed compatible string and
   binding name correction.

changes from V2
1) Addressed Dmitry's comments to remove whitespace and stray line.

Palash Kambar (3):
  dt-bindings: phy: qcom,sc8280xp-qmp-ufs-phy: Add Hawi UFS PHY
    compatible
  scsi: ufs: qcom: dt-bindings: Document the Hawi UFS controller
  phy: qcom-qmp-ufs: Add UFS PHY support on Hawi

 .../phy/qcom,sc8280xp-qmp-ufs-phy.yaml        |   2 +
 .../bindings/ufs/qcom,sm8650-ufshc.yaml       |   2 +
 .../phy/qualcomm/phy-qcom-qmp-pcs-ufs-v7.h    |  24 +++
 .../phy-qcom-qmp-qserdes-txrx-ufs-v8.h        |  37 +++++
 drivers/phy/qualcomm/phy-qcom-qmp-ufs.c       | 139 ++++++++++++++++++
 5 files changed, 204 insertions(+)
 create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-pcs-ufs-v7.h
 create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-qserdes-txrx-ufs-v8.h

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
