Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1931FC71136
	for <linux-phy@archiver.kernel.org>; Tue, 17 Jun 2025 11:40:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=qygqQ7C2/o2i+w+CE7LTEc1Ktqb3OoX+Cy/TsDSfCmw=; b=SIQuIp2ndVnQWh
	1TplSpuqJgOFo9GRL4+UwGxMQRkmEsi6f3m7x97gLEaZcPHa1EjVcMsqDleyI6p7JRs5TI434hUEW
	z5cUK8trCWot1Q8mkJwjClC0rCUbloUAOoyO3FhglJ5TvlOZg1A57fnyNo1dfG+3FqRYmX7h5t+nT
	OQF6aqSD1RWclSvTwEMd+R+PUjY4jmSM6mIrUn08SUPVZs5jY2G0hppUoPplSNjGPe4Qq4/LuQNag
	zMOW2RgQTLYePoJoiTBKGSi7uVpwIt8QdIFTlhBAlvWvo2zD0FOBBZk07uNjuTv4lDyg2c6+0TzCR
	D+3l27qtOQpfdKvzLErw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uRUg5-000000073jM-30Es;
	Tue, 17 Jun 2025 11:40:33 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uRUe6-000000073NW-3QQb
	for linux-phy@lists.infradead.org;
	Tue, 17 Jun 2025 11:38:32 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55H8oKIx014755
	for <linux-phy@lists.infradead.org>; Tue, 17 Jun 2025 11:38:28 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=7NrIe6ld/xYMBbLACN69Ja
	xaxBEqU9wPH4VfOYfdgdM=; b=i68Q+jvSqe+evsGIoqS/2oQqADv/L8bjLr28FI
	jOVLjOPll83vCdBD/5nQ8aE7qmktiiWqYbA9EuyssrCDmSiAElCvEpOMRc6GLqWh
	o/IQNRPlWwfzsrn9Bz0H80ysvsRIWiXwEVL92w66m5DZs6/TzzeWOdXSc5zN2vM9
	OFGPDY1eTnOzTbvKhCvm7dc1DcociCQ4WTXJeDPXv/s0U3hxRXy1YmFPEWl02Oj5
	XEn22ST4hDaQgScOC5ki2TUclxOswkY7WU5oCoKWQa6mYkdyfoE+vwotZYOqQUig
	21aYHFRaPwh13ED+otzN50gJVMGvob1hZzhCgxEShOTk8lSA==
Received: from mail-pg1-f200.google.com (mail-pg1-f200.google.com [209.85.215.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4791f783wh-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 17 Jun 2025 11:38:28 +0000 (GMT)
Received: by mail-pg1-f200.google.com with SMTP id 41be03b00d2f7-b2eb60594e8so3572281a12.1
        for <linux-phy@lists.infradead.org>; Tue, 17 Jun 2025 04:38:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750160307; x=1750765107;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=7NrIe6ld/xYMBbLACN69JaxaxBEqU9wPH4VfOYfdgdM=;
        b=Eearw6ppgr/MgdBI7VCR/3gq3r3nofxJHweQOQjOFvVgn/qz6kR7la0783Rut/1gZa
         vfJPAll+vxshsyDqQhV8JL8fxbo5rXo43Q9eel/Lq1wUdKWef6gs4Au+fAUkObypCWUW
         Fd/0q9XUq4M+kTZeme2Rt0CKM+xbZYf58wukP9SJayt0aLuItXKzIdK8Ownsvqw63moq
         hK772IVBtoUoLr57U1r96kMR/sC6lnwXvM8KrXTKCRgNgvUpOhrob/h2zK4QJOTvtsdl
         hsrJI7bS8r1tBs6hjvvVmrI4zcG1C09JI1YDmA8PTDSqT24u5DuI8Ta5HcEAVSmOHpHk
         LZ6g==
X-Forwarded-Encrypted: i=1; AJvYcCURQ7LryEvMZpmSN9EgG1vCcZRJzRSH97GKpbLddrEOSvHYChyfNufznS8407RmmwRsdPTbrLEzdwg=@lists.infradead.org
X-Gm-Message-State: AOJu0YyT3sLI1R3qPnm7XiAAVGT6DMLSSS2tnHdTX9CO/EUTLkufvBMe
	x+um1cy1wr0C8IY9/wJ9K8TM4zxvOF5TjU5joQPbXbCy0oOh67Y59FS1aSGXnceJU62HUxXjCO5
	zk/eOrn+rks7XxI4VgFGg0R498324wBBcXcPo6c6Vlc+Dwb0KcHqscKzLvcADZdMw+lGF
X-Gm-Gg: ASbGncu4rX6wL8RUCDMBBF0SBKPY2FpwbCmxtZNvE2fh99yC8VgotO+fKqMpkzk2ves
	kulp5Hc+UoBp2z78SNYAg5OGNndE6HRYjlithICZfnP125Zp0zq1DhkOz6VEae60raFUCye9w0c
	GXw57TLxYSWFuxcNLwAAMmnAojuwI76psul24zp5Vdylq5LEVOhgFc2r8STsDXrNMmEBQLmrWKk
	36L4+DNUapFF4WP4oTP7qTptOaV4i22CZGfvK8qXgVn9OHCrQ66yjfl4kJIYViw77xfAGpGz2Ip
	GoKL7rjCXsPTHRHnZf9uRoYFvDAKMA9uvT1c+f+CHUdUqzk=
X-Received: by 2002:a17:902:d585:b0:235:f45f:ed4c with SMTP id d9443c01a7336-2366b13c99dmr218323655ad.24.1750160307391;
        Tue, 17 Jun 2025 04:38:27 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IE1NoTubG90HYcYq9U1zzEt7nR7yUJ1t9hJT2vkcR9u8+zt72VBXQPtx9/r3VZrB0ybU1dDpg==
X-Received: by 2002:a17:902:d585:b0:235:f45f:ed4c with SMTP id d9443c01a7336-2366b13c99dmr218323155ad.24.1750160306988;
        Tue, 17 Jun 2025 04:38:26 -0700 (PDT)
Received: from hu-msarkar-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2365d8a1919sm78246895ad.66.2025.06.17.04.38.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Jun 2025 04:38:26 -0700 (PDT)
From: Mrinmay Sarkar <mrinmay.sarkar@oss.qualcomm.com>
X-Google-Original-From: Mrinmay Sarkar <quic_msarkar@quicinc.com>
Subject: [PATCH v5 0/2] Update PCIe PHY settings for QCS8300 and SA8775P
Date: Tue, 17 Jun 2025 17:08:18 +0530
Message-Id: <20250617-update_phy-v5-0-2df83ed6a373@quicinc.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAKpTUWgC/2XN0Q6CIBTG8VdpXEeDw6Gkq96jtaaAyUVqoCznf
 PfQraXr8jvb739GEqx3NpDzbiTeRhdcU6ch9zuiq7x+WOpM2gQYSCa5oH1r8s7e22qgoE3G0Bh
 AxkkCrbeley+x6y3tyoWu8cPSjjBfvxlcZyJQRg2WgisAjie8vHqnXa0PunmSORTFCoPcYJGwL
 ASX2gillPjH+MNHtv2M82eGBYeiyFQJWzxN0wc7TVRwIAEAAA==
X-Change-ID: 20250513-update_phy-2cd804dd2401
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        krishna.chundru@oss.qualcomm.com, quic_vbadigan@quicinc.com,
        quic_nayiluri@quicinc.com, quic_ramkri@quicinc.com,
        quic_nitegupt@quicinc.com, Mrinmay Sarkar <quic_msarkar@quicinc.com>,
        Mrinmay Sarkar <mrinmay.sarkar@oss.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1750160301; l=1584;
 i=quic_msarkar@quicinc.com; s=20250423; h=from:subject:message-id;
 bh=AoKaRIePSZxkPcYuE8HxMSWHLnp27kcoD7fgZtCZvYo=;
 b=cilGk9gcJ508r33BUqBd6d2pfmj8yu2jxGV6L2W/kO/iu+QelWDRZ0xozeuMjjhiRFyKAKUJt
 tQdCy4x+8roDabUYn2kNt+syORol+a4pUSyQaoj6hIrepv+/jLVUzQ5
X-Developer-Key: i=quic_msarkar@quicinc.com; a=ed25519;
 pk=5D8s0BEkJAotPyAnJ6/qmJBFhCjti/zUi2OMYoferv4=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjE3MDA5MiBTYWx0ZWRfX8UBGgjjKCqvO
 xQmCFQ5Dm6NSE8HCzefoK0XlslaLB28eFKPKVhRp2k6Uc7/NeQ01MMiKIOKysRjTG/wymx7hnYP
 ywgnS9wzM3wz98NodrpF2Odjt0tlmtjf26x3GaoEqrFS7r+phwvX6qNQtHm9h2d0QjVIGbxcyB7
 EfcWMHNO1Fgz2aVzy6GHTJMdldzcDvEfpSmTnkwPYJ1GjNrRGqAb12KEX409HR97xOxH2JCara+
 kIDhwEUwYRHw+yV+YTwKTFp7XeAplQapv7Lp2BrAAjvyDaiIiiIlhfE7e9gSZTkoxflEGAaIcRh
 ER/5tmtgAtMQioa1lVQ8svCrs8dXmPnDNS+qx4uepEVbS8KUxeHPbQGMxcThKVfPtugHPJTBWP2
 gIGwfg0SW3AkIfqrJq1LT3KsZnJL+IriQ12cjDls+WVUiWnugpVunsZNujdKxi7QCa9T+2xf
X-Proofpoint-GUID: c8xSdUSYwaeUCc5Fi5vJsUfsX_HjZv7f
X-Proofpoint-ORIG-GUID: c8xSdUSYwaeUCc5Fi5vJsUfsX_HjZv7f
X-Authority-Analysis: v=2.4 cv=FrIF/3rq c=1 sm=1 tr=0 ts=685153b4 cx=c_pps
 a=oF/VQ+ItUULfLr/lQ2/icg==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=6IFa9wvqVegA:10 a=VwQbUJbxAAAA:8 a=COk6AnOGAAAA:8
 a=dGWFimBq7PPEW5IeLiwA:9 a=QEXdDO2ut3YA:10 a=3WC7DwWrALyhR5TkjVHa:22
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-06-17_05,2025-06-13_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 suspectscore=0 spamscore=0 priorityscore=1501
 lowpriorityscore=0 adultscore=0 mlxlogscore=630 bulkscore=0 impostorscore=0
 malwarescore=0 phishscore=0 mlxscore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2506170092
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250617_043830_983123_5AB51F36 
X-CRM114-Status: GOOD (  11.10  )
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

This Series is to update PCIe PHY settings as per latest
hardware programming guide and remove max link speed dt 
property for SA8775P PCIe EP.

Signed-off-by: Mrinmay Sarkar <quic_msarkar@quicinc.com>
---
V4 -> V5:
- update commit message and add reviewed-by tag in patch 1
- Link to v4: https://lore.kernel.org/r/20250604-update_phy-v4-0-d04b12bb89f2@quicinc.com

V3 -> V4:
- update commit message in patch 2 as per review comment.
- Link to v3: https://lore.kernel.org/r/20250525-update_phy-v3-0-5b315cd39993@quicinc.com

V2 -> V3:
- update subject in patch 1 as per review comment
Link to v2: https://lore.kernel.org/r/20250514-update_phy-v2-0-d4f319221474@quicinc.com

v1 -> v2:
- Update commit message as per the review comments.
- Remove max-link-speed DT property.

---

---
Mrinmay Sarkar (2):
      phy: qcom: qmp-pcie: Update PHY settings for QCS8300 & SA8775P
      arm64: dts: qcom: sa8775p: Remove max link speed property for PCIe EP

 arch/arm64/boot/dts/qcom/sa8775p.dtsi              |  2 -
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c           | 89 ++++++++++++----------
 drivers/phy/qualcomm/phy-qcom-qmp-pcs-pcie-v5_20.h |  2 +
 drivers/phy/qualcomm/phy-qcom-qmp-pcs-v5_20.h      |  4 +
 .../phy/qualcomm/phy-qcom-qmp-qserdes-ln-shrd-v5.h | 11 +++
 drivers/phy/qualcomm/phy-qcom-qmp.h                |  1 +
 6 files changed, 66 insertions(+), 43 deletions(-)
---
base-commit: edef457004774e598fc4c1b7d1d4f0bcd9d0bb30
change-id: 20250513-update_phy-2cd804dd2401

Best regards,
-- 
Mrinmay Sarkar <quic_msarkar@quicinc.com>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
