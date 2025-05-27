Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A39FFC54ED1
	for <linux-phy@archiver.kernel.org>; Tue, 27 May 2025 21:18:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vjEaWfbS5DI3fhMWJebFFTI+w/qEaCNzMeHHpHYU9Nc=; b=bGrHq6pYif8tkc
	Mkf+jtYyyTsIUXl6l/7T0IbCDpax8jqZ1h0tXJHYOTpRyIRF9zJOV3uP0lvRUxQ86P4847mijmBab
	c64Xp01WjJAaSr/JYlPT4OLUu/VOYMR67c2oxkT0vjZPULBUqOj8aPnhTn6K+p3R/rBHvEUQXamTN
	bdRbMRq1nCZd+4CyAumMqLPPI1E6OBHqQeiq2f7EC1icYctwKvN2eIloQUYGPtFjECODUrlmoQogy
	xaSpHbSTnm7Vwq+o9MvDC1HNzYLJ5pw31zMenEeRoUOsD+MyvRNzBXqIML5uAfi3rrjJiXeufijqY
	oxYPhx6Or8KFDz6BwUow==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uK1gZ-0000000BaX9-1i6Q;
	Tue, 27 May 2025 21:18:11 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uK1Tr-0000000BYuK-283f
	for linux-phy@lists.infradead.org;
	Tue, 27 May 2025 21:05:04 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54RJoVvB004977
	for <linux-phy@lists.infradead.org>; Tue, 27 May 2025 21:05:02 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	vzRhl64Zv5yDqBHxQZ3cj4CWJj0+v77+Y3Pg3G7a3BU=; b=ku8XGyGNM0cD4O2p
	e/nfCt/gQVj1hNBbSv7MvO8P4az+FAp6b9N5ArvkdWR2iW8Hdv6/rvgkpecyuhFJ
	m3J0qfvmSsvPyRmJFA6Y9reIlgYRPoCkzRCT89oK491XFQBQPRJarRMRxVhBkQ0o
	zku//xs6drP+5+obIpRr+iMBYeXz5lT1M3RlbH2nkwX1xfpDGd/HoETNq9goUhXW
	KUxwj9tf+tHBWQdkFJUArrC3WoaaTu6w/0xHk1EOec29EgRILnNtPjRRaGRXkoOt
	T5n+Myo2nl4tVqLczaamkHpP9xlKMPZYUDc0bRVCwFfXcFkjjI13gsFzcjAsZAYa
	yNGXjw==
Received: from mail-pf1-f197.google.com (mail-pf1-f197.google.com [209.85.210.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46u6g907nd-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 27 May 2025 21:05:02 +0000 (GMT)
Received: by mail-pf1-f197.google.com with SMTP id d2e1a72fcca58-742a969a4d0so3016766b3a.2
        for <linux-phy@lists.infradead.org>; Tue, 27 May 2025 14:05:02 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748379901; x=1748984701;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=vzRhl64Zv5yDqBHxQZ3cj4CWJj0+v77+Y3Pg3G7a3BU=;
        b=VkDEN6JQJGDUDeEeuYdyorJ+6TwjgssJvpTJMcSzxwjtgiuwo7ZbIWpmqRyA4JAcVo
         9h3mRi62ZYwEo2uQXOIiYb8VsGvrfYFV0uCjIsnlYhILmnJn9uY3Q7R34lsH+FhiZB5D
         0zExTFNMqSNoHebgp3Ln+puj9Nmv2iGiHiUJgHbPcpHSet5yDWCjiiqGwarKhjqr9/UC
         OUGq3AgacS0ks/1RBAyAIimf3L+O8ciRzGHdSCzRBKao8fNMTX4I3B0ssvCw6PIWpSCK
         p4Q4NQo+t3sNHwUekhZvtevZuUG3vLsCOqPTU5Lvl7GSGRKFT6chJ6ofIMDSsfWiTaNh
         P08w==
X-Forwarded-Encrypted: i=1; AJvYcCVNH+NbMY+JHP+sMIl0S+iQ9Z8pFT9I74h2TYR03m7JuJBGTgV1yvyOd91vhxyEJ681ajby/SxH2kQ=@lists.infradead.org
X-Gm-Message-State: AOJu0Yz8zooe+iPq8LKTeIxy30F6w0qHiEFFdONcdjMQqcg0ITbLYmgB
	Fh4VbRzO7VbbA4s4KxHoSYMTMXyOeDBoUzv3uQuKQO6ZRnZMhqWxZGlc2dXSzRxvF5TUD/B7bru
	LW3PcPugJBeBSD8fs3F0pKHZoPbKW/OsNgEf2OnTZdrWgYrkTQRuAsbIBl6+gbrQ9Fy1P
X-Gm-Gg: ASbGncuG+yhkf5AwHdTYLhDVpkPks8XzngBhdh+SQ15rIED3v6vzZY5+edzZE2E+yJT
	GwK7TjZr/1qxpBfp+9UFQXWPNJksUXVRTzhe/Mi8yfMTqGtYgafSl99kLPDv+/Z+4r6Al5bIuyw
	0CVMH8hAZrvwsdBvEaWbfzlPtnhsyaQ1yO69HK3tm68tQlTq2KFcK/l/y7fP3bMWyOBKZ+hGjpb
	njQNAhC2yvh3sHrEIqkRURRtlqEKdgUAScOART+hn6H6YqI1tpgi6t/oGTWTuHI7vPELNWq/B/e
	mq51Xx+KXwRV3JUorLKzD6+QHfhn27Mkj9daG3TNq7QDC9nIZmVOZYJhHoA7Oy/KShs=
X-Received: by 2002:a05:6a21:3305:b0:1f5:87a0:60ed with SMTP id adf61e73a8af0-2188c289ab9mr22294731637.19.1748379901400;
        Tue, 27 May 2025 14:05:01 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFP42zUWXhEhoQN5IEHJjKv/vMbeqty1ztD8a25bRQwLQO3Db3gW3dczT8C8Tba1smWx7q+Lw==
X-Received: by 2002:a05:6a21:3305:b0:1f5:87a0:60ed with SMTP id adf61e73a8af0-2188c289ab9mr22294694637.19.1748379900997;
        Tue, 27 May 2025 14:05:00 -0700 (PDT)
Received: from hu-molvera-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7465e64836fsm29167b3a.26.2025.05.27.14.04.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 May 2025 14:05:00 -0700 (PDT)
From: Melody Olvera <melody.olvera@oss.qualcomm.com>
Date: Tue, 27 May 2025 14:04:41 -0700
Subject: [PATCH v6 05/10] phy: qcom: Update description for QCOM based
 eUSB2 repeater
MIME-Version: 1.0
Message-Id: <20250527-sm8750_usb_master-v6-5-d58de3b41d34@oss.qualcomm.com>
References: <20250527-sm8750_usb_master-v6-0-d58de3b41d34@oss.qualcomm.com>
In-Reply-To: <20250527-sm8750_usb_master-v6-0-d58de3b41d34@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-usb@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Melody Olvera <melody.olvera@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1748379891; l=1426;
 i=melody.olvera@oss.qualcomm.com; s=20241204; h=from:subject:message-id;
 bh=2C6aI5pd5BWhSTEhtHBak51NwjHm1CBTcKGDwCW84eg=;
 b=+RgrZ3qByHLV/U1fiMG21YBXz3FH3SWPCbcDLBDzvXvrqIQqU26M7grdrJWa2RNyA/AHze4N/
 vb6chONnS/6B31yW7+693rVPVIUjPxlrSEsHR/5RkqyBCWY66Oqo6R6
X-Developer-Key: i=melody.olvera@oss.qualcomm.com; a=ed25519;
 pk=1DGLp3zVYsHAWipMaNZZTHR321e8xK52C9vuAoeca5c=
X-Authority-Analysis: v=2.4 cv=d4b1yQjE c=1 sm=1 tr=0 ts=683628fe cx=c_pps
 a=rEQLjTOiSrHUhVqRoksmgQ==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=dt9VzEwgFbYA:10 a=COk6AnOGAAAA:8 a=KKAkSRfTAAAA:8
 a=EUspDBNiAAAA:8 a=2IHzoM5ujN45o2WKKn0A:9 a=QEXdDO2ut3YA:10
 a=2VI0MkxyNR6bbpdq8BZq:22 a=TjNXssC_j7lpFel5tvFf:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-ORIG-GUID: 8tuEfBsoLJQxfhNwtEmMEFX4cT6A6spv
X-Proofpoint-GUID: 8tuEfBsoLJQxfhNwtEmMEFX4cT6A6spv
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTI3MDE3OCBTYWx0ZWRfX19bjkp1st+WF
 fCzuIO+Bkg4DAtabhkmq6GGAbEmQLGvOthnde8Zn5YhCygbhEw0fncMQHJ4GaNRSmi6hOiG900r
 mP5vP1Ky77pA/pMd1n5qbFqeIgJuYCEJmcuO61J2RL2Jn0uR2z6kql08PVuyh7yzdYeS8oyPUTT
 Y+ty6T+ASCzoUIiQJYn6lV35av/KcBpJcA3ATFXI8g8MB0RvOdtLP5bKRDE0sIHeuVOdf1hh/UB
 Tqq1vSVE/Ov+h32c/1JZnfFyC4BLTujNEejPiR2u4CjgkYtDKaHmsjnV0KEq0drClbARJ0bp/pQ
 z0ZpAabjWXe6KTjKNfkVlgeu+4kVRZiw4P2eble9C5TGPKJtWqMgY4yCvTeG0QOyXlJ/RiEl0LA
 IdvcUeIQ/XbOckxgQz12UrUn7+KZuZA4+LyN52rm9P0q7MkeSDonmBi76+AAaE8maKFk7SyU
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-27_10,2025-05-27_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 suspectscore=0 malwarescore=0 phishscore=0 mlxlogscore=994
 lowpriorityscore=0 priorityscore=1501 bulkscore=0 spamscore=0 clxscore=1015
 impostorscore=0 mlxscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505160000
 definitions=main-2505270178
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250527_140503_656316_C9AF4B0C 
X-CRM114-Status: GOOD (  14.15  )
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

From: Wesley Cheng <quic_wcheng@quicinc.com>

The eUSB2 repeater that exists in the QCOM PMICs are utilized for several
different eUSB2 PHY vendors, such as M31 or Synopsys.  Hence, the wording
needs to be updated to remove associations to a specific vendor.

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Signed-off-by: Wesley Cheng <quic_wcheng@quicinc.com>
Signed-off-by: Melody Olvera <melody.olvera@oss.qualcomm.com>
---
 drivers/phy/qualcomm/Kconfig | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/phy/qualcomm/Kconfig b/drivers/phy/qualcomm/Kconfig
index ef14f4e33973cff4103d8ea3b07cfd62d344e450..85581b40e598814cb27d954e8c63eba809702622 100644
--- a/drivers/phy/qualcomm/Kconfig
+++ b/drivers/phy/qualcomm/Kconfig
@@ -126,12 +126,12 @@ config PHY_QCOM_QUSB2
 	  USB IPs on MSM SOCs.
 
 config PHY_QCOM_EUSB2_REPEATER
-	tristate "Qualcomm SNPS eUSB2 Repeater Driver"
+	tristate "Qualcomm PMIC eUSB2 Repeater Driver"
 	depends on OF && (ARCH_QCOM || COMPILE_TEST)
 	select GENERIC_PHY
 	help
-	  Enable support for the USB high-speed SNPS eUSB2 repeater on Qualcomm
-	  PMICs. The repeater is paired with a Synopsys eUSB2 Phy
+	  Enable support for the USB high-speed eUSB2 repeater on Qualcomm
+	  PMICs. The repeater is paired with a Synopsys or M31 eUSB2 Phy
 	  on Qualcomm SOCs.
 
 config PHY_QCOM_M31_USB

-- 
2.48.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
