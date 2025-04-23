Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6D268C369CB
	for <linux-phy@archiver.kernel.org>; Wed, 23 Apr 2025 13:05:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=nfu/r9MuqGp9w6dML+8HtZ9I9JEKVNtAIfLJEpF6icE=; b=U4wS7w2Mg53Qbc
	9fxOE8m1lFpSmD1BJXux8vdbgDFg6DdN/W5/1jRkFTxPFF/eX+Hp6YSfPRYkwJ0tUe3tQ/6cNFuxr
	VZLRN3rc0aEp80rUD/dSFqtSa1M8CjnoLwzuye8IpRRAW0MhdeCco1TSZasCYNpigrihFR+kGXGtq
	U+ENwhrBpGm/s/If6pb3ZVUenr5as+MwWQsf72jXWzI5N49rCEnN7N1yp3zOt0TvqRW6ovf+4wG3V
	yYxb97d7zQAQfKRAIDrxFXRbG7KKSk/Kf8ObcVbLOCpUFMIJjT9IWbNXP2d+LnFNvhQaBfxDi7Dey
	NlH3xb2uoN0H4Dlh7+qA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u7ZnC-0000000AXEv-46O2;
	Wed, 23 Apr 2025 13:05:34 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u7Y57-0000000AI5y-2Sbx
	for linux-phy@lists.infradead.org;
	Wed, 23 Apr 2025 11:15:58 +0000
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53NANVNb015695
	for <linux-phy@lists.infradead.org>; Wed, 23 Apr 2025 11:15:56 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=NSUx02OYFI6C5J50Uj+1S8
	PyJZEpqQkJpG/qCn++FQQ=; b=R+UBqWbKFK2BTYPHRosXyf5xBSDtzNndIBr43Q
	LrbKZVeRdMwVEahvrmQyTPRM6nSQarJbN3+CBg7rolwe0KbtCHGOv5m3rwSIoG/Z
	zCvBuW0i7Ql68CA6lv4+hj9C7fLoVaI7H/bMYHL7M4hKwJjYwoyg2FNZR9Ks5wo5
	TehfOSL2hmskg5gZ1HILz9Kh+98Nq7Cg3DHM6DyDzwvyGdBnL5BgCqd/51qf4kpv
	A1hmJ6huTN/fDR5mTp8OIOH/FYaaLyzibyGFK2BbfFnrjQ7yxtjYWAofWDaGCFzD
	o2Fi8HtPOI+vTDTKCek+40LSQJ/YDG++u5iviOHZrgYyNcUA==
Received: from mail-pg1-f197.google.com (mail-pg1-f197.google.com [209.85.215.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 466jh09x1y-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 23 Apr 2025 11:15:56 +0000 (GMT)
Received: by mail-pg1-f197.google.com with SMTP id 41be03b00d2f7-af91ea9e884so520933a12.0
        for <linux-phy@lists.infradead.org>; Wed, 23 Apr 2025 04:15:56 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745406955; x=1746011755;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=NSUx02OYFI6C5J50Uj+1S8PyJZEpqQkJpG/qCn++FQQ=;
        b=fFB0mR28JJfVRuGhv0iN9FUSKADQdDfixR0q/pl5zCoeXnu/vGTiUu5zMQ0lk45mju
         XoVxmHN6a0uujBAO/F7png0XyaVGONxhgiq1fAOUc5x+holsR8IeYz4r94reEQ6SQqkO
         Doxc1uTKRspzJllC93dbuFrqJZPej+yoMWCcRb3w5Vo9IuSQSuiJ49mX3WOHzXpFETN0
         XE1Lyho3CkKN7LOw4jTEI1hPBk5xdBAXFt52K+s3wLjh9IPTwUJzCagjbjv0MYOb6fXL
         0qWWBSSXwEEB2JNWK87MxwOVhpGbdZUgorrBS4Qou9NdnlIEf7h76YwaTKt4k6yIv6LV
         oXkw==
X-Forwarded-Encrypted: i=1; AJvYcCWVh4X6sqQ/Nf4IpCnyJCje5bs9jN9DZRzmN2fpKLnGMqkA6C4Vt/Nojep01IjpWYzBhwlk4A64/TU=@lists.infradead.org
X-Gm-Message-State: AOJu0YxhBzZY21gocSv92f95P6hnRzADg1RvrkHdITFyPUNzl0s7/rkX
	mFHPkS6SRitRd/YACd/UrCiES4hGVByo8woBJnNXaRix/w3PHdJF/loY+qBbxdMy8t1v2cONnON
	XLVJlLq6gSsu/7+p0M5CGAMIcDb9/62i+kZOfJBE7oNjdIGJKF/2ZpVVQwtQ1In6N
X-Gm-Gg: ASbGncspSnAQID60jLJydMSDNzfuU7B4QnwHOvvw617msj2r7KNvkq+iv/0iiygU6x6
	6mxbUtwj+1A8qkiH9RNErf81jfjK28huACNVJFymEzLNLNFb76HhYTClrxllwK5+HNq9axezzAo
	fOKCXss3VJXJeIRJ6hbZ6tgGhMADYFqBQDgvB6fOdnlS4dps5e0JZTGv/tEuG4Ix5mtRCLDrWuo
	Bog3jMsgYRaE4f1SLyRK1H846OR/qEvdZjbbB2t8G+UMSbu7JR9RNEA5wdXn9aTAqTY+bxxHFwh
	WGROcU+0ye7QzaAFiV+HTMrWJ4CpK12In5+ig244/W0fLg==
X-Received: by 2002:a05:6a20:c709:b0:1f3:3547:f21b with SMTP id adf61e73a8af0-2042e5a7f04mr4616929637.5.1745406955430;
        Wed, 23 Apr 2025 04:15:55 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IE1oF0s6obzV3U4IlKnfQWtWH5A8XquDAih6ItXry12b4Upr3sQSi2punkUoDTdQ1EXTQzwNA==
X-Received: by 2002:a05:6a20:c709:b0:1f3:3547:f21b with SMTP id adf61e73a8af0-2042e5a7f04mr4616885637.5.1745406955045;
        Wed, 23 Apr 2025 04:15:55 -0700 (PDT)
Received: from hu-msarkar-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b0db13c5f8bsm8787322a12.35.2025.04.23.04.15.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 23 Apr 2025 04:15:54 -0700 (PDT)
From: Mrinmay Sarkar <mrinmay.sarkar@oss.qualcomm.com>
Subject: [PATCH 0/2] Update PCIe PHY settings for SA8775P
Date: Wed, 23 Apr 2025 16:45:42 +0530
Message-Id: <20250423-update_phy-v1-0-30eb51703bb8@oss.qualcomm.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAN7LCGgC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDI1MDEyNj3dKClMSS1PiCjEpdgzSjtNQ0o8REA3NTJaCGgqLUtMwKsGHRsbW
 1AJYLAmlcAAAA
X-Change-ID: 20250423-update_phy-0f2fef2aa075
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        krishna.chundru@oss.qualcomm.com, quic_vbadigan@quicinc.com,
        quic_nayiluri@quicinc.com, quic_ramkri@quicinc.com,
        quic_nitegupt@quicinc.com,
        Mrinmay Sarkar <mrinmay.sarkar@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1745406947; l=983;
 i=mrinmay.sarkar@oss.qualcomm.com; s=20250423; h=from:subject:message-id;
 bh=sbKZVCvGtdkZrIpTI8pX2iJJV/WIKTlKhFkyI8Uectk=;
 b=tbbxUT2NStAw36vwNZbHcB/OftIz+gc7eZ+AG3e4twO62qUi0kC4fopP3Opuj4FQemtV9iCAz
 pqsRHi3A4IzDKCq37LEwttq1MOI/cRwcggX0UYu1IiSaWOVwUi+YTqx
X-Developer-Key: i=mrinmay.sarkar@oss.qualcomm.com; a=ed25519;
 pk=5D8s0BEkJAotPyAnJ6/qmJBFhCjti/zUi2OMYoferv4=
X-Proofpoint-GUID: NJk8qOQy3toA6cBivFrWBh8Fq4vHKF1g
X-Proofpoint-ORIG-GUID: NJk8qOQy3toA6cBivFrWBh8Fq4vHKF1g
X-Authority-Analysis: v=2.4 cv=Fv0F/3rq c=1 sm=1 tr=0 ts=6808cbec cx=c_pps a=rz3CxIlbcmazkYymdCej/Q==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17 a=IkcTkHD0fZMA:10 a=XR8D0OoHHMoA:10 a=EUspDBNiAAAA:8 a=LgVGyxlFbL_aAx061p8A:9 a=QEXdDO2ut3YA:10
 a=bFCP_H2QrGi7Okbo017w:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNDIzMDA3OCBTYWx0ZWRfX9RS1K74Ioepd +VjwhqkRSFbHlQEPvzlsHjuZwHtuSkqHNw3cRTg6vZo3i49haBFaHiREX1fgd/juBFz+fOmm5Lf weYqvIKYPoCuyQDNTAibHj3yI5ylKrlvfUGrfAPPj/cny5CZuj3oNyKphiWR28vwA38zWtIhKXm
 dU6fKl6JZpAjzrcpQOBpp+ylVpNapw/eAItAUg6M757MDWObF+++KNRfqVzKARh4b92RU5X8/KX P+13hQ8Mwgh/5xC9R5tzcV7S5YTmc9i/gd0azT9c//yVeGlktjNvkwe+SR3oWA4MVSV0AiWdjR8 6b6slAuban9UL/Cjy4XsxXC7EMoSn+CFlo4Zxc/HRqWpm80I62UGn1A4blywT9B2g70dJy7oqsz
 XTBBv06r2pr6XCF5kxAUqpdiP+Pek6Tt+ZilEmfLH5mRI1wihJrdWtGUxtOOrOQfatD8Yv4v
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.680,FMLib:17.12.80.40
 definitions=2025-04-23_07,2025-04-22_01,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 impostorscore=0 mlxscore=0
 malwarescore=0 mlxlogscore=690 priorityscore=1501 suspectscore=0
 adultscore=0 bulkscore=0 clxscore=1011 spamscore=0 lowpriorityscore=0
 phishscore=0 classifier=spam authscore=0 authtc=n/a authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.19.0-2504070000
 definitions=main-2504230078
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250423_041557_676369_4A06455C 
X-CRM114-Status: UNSURE (   9.45  )
X-CRM114-Notice: Please train this message.
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
hardware programming guide and update max link speed to
gen4 for SA8775P PCIe EP

Signed-off-by: Mrinmay Sarkar <mrinmay.sarkar@oss.qualcomm.com>
---
Mrinmay Sarkar (2):
      phy: qcom: qmp-pcie: Update PHY settings for SA8775P
      arm64: dts: qcom: sa8775p: Set max link speed to Gen4 for PCIe EP

 arch/arm64/boot/dts/qcom/sa8775p.dtsi              |  4 +-
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c           | 89 ++++++++++++----------
 drivers/phy/qualcomm/phy-qcom-qmp-pcs-pcie-v5_20.h |  2 +
 drivers/phy/qualcomm/phy-qcom-qmp-pcs-v5_20.h      |  4 +
 .../phy/qualcomm/phy-qcom-qmp-qserdes-ln-shrd-v5.h | 11 +++
 drivers/phy/qualcomm/phy-qcom-qmp.h                |  1 +
 6 files changed, 68 insertions(+), 43 deletions(-)
---
base-commit: 2c9c612abeb38aab0e87d48496de6fd6daafb00b
change-id: 20250423-update_phy-0f2fef2aa075

Best regards,
-- 
Mrinmay Sarkar <mrinmay.sarkar@oss.qualcomm.com>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
