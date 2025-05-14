Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E436AC3ABD8
	for <linux-phy@archiver.kernel.org>; Wed, 14 May 2025 13:54:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=FfSpijq8ZrKh+87U0pLfbEO7u0r6S7EBgqY5H6n5biA=; b=3R/4tiQTj1K5xZ
	hglMJifJgVr0p5/FqXNxhPbvWlbCDBzN0uHySTfpRq+XMmO3eKhhhFP1i0n09TfxuqcG/LsPoNbGI
	NTmrZs7d6HjR2QfHFl8AHB0UP74938RV94QuwibclVQPSRIcj1sDAYWZ2XG41MbMniPtMTGzsIm9j
	Tl4jir5lbfYdGhmoDSAnZ/oJjN+Zd1uhMbZaXK6TthL3nOMA0e8mZlUbXeEhj7wJeNMfzKfmVk7ZE
	8w2+rFgtBmcET0IulPTixmevhVqQzpTNfGbre33ZBshbcLOu8HenaNdEmg1vcZDncYdw1pv5MkZkr
	3BvBHoSGAizrD6TvRg+w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uFCYd-0000000FIUJ-34T3;
	Wed, 14 May 2025 13:54:03 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uFAQT-0000000EuRf-16do
	for linux-phy@lists.infradead.org;
	Wed, 14 May 2025 11:37:30 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54EAuuGc009124
	for <linux-phy@lists.infradead.org>; Wed, 14 May 2025 11:37:27 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=Av7CXuJFhg2tfAQcC5KHKa
	93MT0YXTr8f30ak6FnWcc=; b=QcOsASb0DarQ1LkTe/IXxEGBCsaTJz0SGk/ShG
	8cN+AOLIMsBbEsUQSPDZeou7Fud95u1D1cympNKjdr7kP/e5dlJdBfm1wxvtpiBN
	SJKkfoTLSib2MmUS/qC62+dRVcLMpfGycHGq5Yl0gwpmzHoaDH5apTeSsgrKn/uq
	t9Pm5Z5P+7iCPfyZtT4WU2DIvaiX/P8Ao3kT19uiEjSpc1CqsUxfymMNYSLnt27R
	e/SQwy7mZHVJHvfuPi1troJ2xh5wRMTzKQ0V+8eQ8PGJ7RBbBwTtiSqOSzNSfVB8
	3q5UbTLlcrpV5zqOxrREZhPhS3EQBIWJeJO7unH1pupBOjFA==
Received: from mail-pf1-f200.google.com (mail-pf1-f200.google.com [209.85.210.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46mbcpth8g-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 14 May 2025 11:37:27 +0000 (GMT)
Received: by mail-pf1-f200.google.com with SMTP id d2e1a72fcca58-7370e73f690so7437388b3a.3
        for <linux-phy@lists.infradead.org>; Wed, 14 May 2025 04:37:27 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747222646; x=1747827446;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Av7CXuJFhg2tfAQcC5KHKa93MT0YXTr8f30ak6FnWcc=;
        b=Mpbyu2dsSN0O0n9jpTRPI/iu8OazBgaMqtG3Hdu8G0BiYi3weHDq0pWEHcj3ixTqic
         W8aMwd4GAY7jVCOvc6D8rPCUJd9ZgXTtktmH4FWtYDtTGw6f73+9XUXzW5hJo31nEp5q
         62vU5w1YvWl8LtTjd9TAFBWZRcUL2M4RoXxhYFSgONvBQF0I0lD+cIvYrovXfxfvHlqM
         Jdvb0Ku4cazEk576RoPaklgNd/7xbVSZAtIpikEnQ8wzZs89PPLs7wOPEMftbMdNFtt3
         JIpW5KNOlwROLcvL/sm8+pDx/kQ35/dltNhgwBHsSGrYdMZFjUUuqb94kVcBQ8R3nuGv
         RoOg==
X-Forwarded-Encrypted: i=1; AJvYcCV/p7nw+zlmJe/PGqfgqL7wUJlxtcCxaoXomkJyfJaQnFJV9N+XJYlTU/KI3K3v/EhVWwOq53cVuk4=@lists.infradead.org
X-Gm-Message-State: AOJu0YzOh+gXvJkQkd7uTmBfCFk2351uid1qO9LAzLyqPJSHN7jq/0gm
	Tvicrlie8V+7tAO0HrrqX4JHXv2YD24GftClXC7P90r3XU6OwrsdPHuSMad9B+V/Y5uqJYKA8Mk
	sKlScWiViRhilK3+rGQgFPkq5ZNAKM3Q95x81LQu9lHq9Hn/4o+xhhDjSGuzClc+Y
X-Gm-Gg: ASbGncuDAly+AHmAvVB/6kBCtzfXdAdeIG8KWLYSXzhigZpHBDmnEwmJCbY4CZJbT1W
	ROHcwOWvAm43YhcgaJwP34amtUAkLZq0tHhTCDygegVBbYrDBhEqdAjRYHv9/oJEDkAiWJ5NaUX
	flapjfNq5VBfr4TrvRljtMPwo+jo2RZAzC6pF5rD9gRg++IW5fpQBn4zz6Gyz/Jstv8OVzLlxJM
	ok03DwrsWgcEnBZIZRaWsjkwkNUba+WxS+DIRJLCgO5Cgm48l2eDxDhCZV1p5NbfOZkWkNM1uGP
	i/bSIHHvdk4p4e2e/lS4AM92aBHInpglbjDl
X-Received: by 2002:a05:6a20:d491:b0:1f5:8903:860f with SMTP id adf61e73a8af0-215ff0d7d90mr4654867637.14.1747222646112;
        Wed, 14 May 2025 04:37:26 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEMOj0pkODASLbgHA597n/lSxCiGTIkCoSHyvzsT2+w3pqt18BviC0qXr2f+fhOeqV0kjeFgg==
X-Received: by 2002:a05:6a20:d491:b0:1f5:8903:860f with SMTP id adf61e73a8af0-215ff0d7d90mr4654805637.14.1747222645585;
        Wed, 14 May 2025 04:37:25 -0700 (PDT)
Received: from hu-msarkar-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b2349ec78c3sm8652783a12.31.2025.05.14.04.37.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 May 2025 04:37:24 -0700 (PDT)
From: Mrinmay Sarkar <mrinmay.sarkar@oss.qualcomm.com>
X-Google-Original-From: Mrinmay Sarkar <quic_msarkar@quicinc.com>
Subject: [PATCH v2 0/2] Update PCIe PHY settings for SA8775P
Date: Wed, 14 May 2025 17:07:11 +0530
Message-Id: <20250514-update_phy-v2-0-d4f319221474@quicinc.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAGeAJGgC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyjHQUlJIzE
 vPSU3UzU4B8JSMDI1MDU0Nj3dKClMSS1PiCjEpdo+QUCwOTlBQjEwNDJaCGgqLUtMwKsGHRsbW
 1AHifrahcAAAA
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
        Mrinmay Sarkar <mrinmay.sarkar@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1747222639; l=1087;
 i=quic_msarkar@quicinc.com; s=20250423; h=from:subject:message-id;
 bh=Pd6UckjZVaM/JS3ilAyea5a2vj0MVO3e/e9pYvH6Rpw=;
 b=5xf64b1oFtVoWpo7QJDvmfnMI4ZU9vSKKfHGBECdURRD52SALWLG7AONflLhDZQYhuYFddPnu
 bsuTg99t2BQDr8pQbA2zNLNFRSbfxEZgMss5NRpqj6OEw4JCQST+3Se
X-Developer-Key: i=quic_msarkar@quicinc.com; a=ed25519;
 pk=5D8s0BEkJAotPyAnJ6/qmJBFhCjti/zUi2OMYoferv4=
X-Proofpoint-GUID: arclXbcPE-mDDlKcpNqfV0my7clE6ndn
X-Proofpoint-ORIG-GUID: arclXbcPE-mDDlKcpNqfV0my7clE6ndn
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTE0MDEwMSBTYWx0ZWRfXxr2BAL4aYYLh
 9CDLig+lMUj03T0cj8wxclpE4MpR4cCgUQo1cgKtJHRdcGKWX12wza4mQ3rnPoCnGg/e0FSgcZ4
 hQ9DMylI4+H5J8ZlmDbjbWa31kThDPIhwM0Pq3hdE1HtN+zF6qZr/WK9qBZREP2vmCU7ULA8qDd
 9SIps/XY7OGj/gSn6/yHdVT8ykV5ATLy2iuJXL/aPpMTc0mI6+M4l50r4bDQslQC7iFN9cxX+3o
 epqHj5AdwiopSdjhj04RsbhQVk8spSNvsSIo6wVu5wcqXwEtsBS3Cr/razGGJmO5Bm6uSV8MtnY
 EGD1vms2YgJKPR2yXJXRRhfkyGhJW1lFcRmrCaQEh2Pg68N/RfVoBm6EqClin3VvgA2PApexwDg
 Lvkjx4KpMoJfAkpxlDxWuaFjAu0wPJQs7T4NNWjZyKCO+/mxco1bVJPiu86jxORJDSh/QqVk
X-Authority-Analysis: v=2.4 cv=KcvSsRYD c=1 sm=1 tr=0 ts=68248077 cx=c_pps
 a=mDZGXZTwRPZaeRUbqKGCBw==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=dt9VzEwgFbYA:10 a=COk6AnOGAAAA:8 a=vWfPPh_LAE0cc4QMUwIA:9
 a=QEXdDO2ut3YA:10 a=zc0IvFSfCIW2DFIPzwfm:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-14_03,2025-05-14_02,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 bulkscore=0 clxscore=1015 adultscore=0 phishscore=0
 lowpriorityscore=0 mlxlogscore=634 spamscore=0 malwarescore=0 impostorscore=0
 mlxscore=0 suspectscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505070000
 definitions=main-2505140101
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250514_043729_453789_80C36234 
X-CRM114-Status: GOOD (  11.37  )
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
v1 -> v2:
- Update commit message as per the review comments.
- Remove max-link-speed DT property.

---
Mrinmay Sarkar (2):
      phy: qcom: qmp-pcie: Update PHY settings for SA8775P
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
