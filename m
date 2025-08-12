Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C076ACA0EC4
	for <linux-phy@archiver.kernel.org>; Tue, 12 Aug 2025 17:34:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=7OYnGTiPWaaIdxotBABk76EkgGzQvUfe84cWj5+4J8I=; b=F4BUDILIe8CgZS
	dL0UeFFTl97QxdN8b92HcjqBnU2ig/4I9TJkIXuAUKIShFCSeuFfTQ79qkEIq6PA6Ma+QU0G5PBoI
	nMX4X9Ewy2YZBd/wRF1S3t6MuQx9immprcWuhhuk5WjQt3FrcQSm1Yfw8cwOkCUVbPmkvUL2lkqZ+
	CTgA2R527t+1MWTICsnoiUW7k7OGRfk5xsotd93NOE94o0zVxuRYfKtl8WtvyahkGkFjIyx+IsfWs
	b62eukYlb6KW6aIsVr8Za32TKto0IH6QBlSQYcsk4qVBveHjua7W1clk1gjVJuVcSOz01zl0NFyJm
	umMIJYtgNopa14WdqZtQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ulst4-0000000BbfM-1zp6;
	Tue, 12 Aug 2025 17:34:14 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ulpUo-0000000AzL4-1x4T
	for linux-phy@lists.infradead.org;
	Tue, 12 Aug 2025 13:56:59 +0000
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57CAvhFn021040
	for <linux-phy@lists.infradead.org>; Tue, 12 Aug 2025 13:56:58 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=auDz7iD1sI1W9Ny6yI3Ooy
	bckifowdTKLsrDX8dUaUA=; b=l6+iI90zRwg991Ek9DuY1tbBw4BQ2WnivUXQIc
	Z6tJwBSoW9u5DnF/NHGND1FKnacNNGRrsBaBYAY5Eu5KZ/1/dEoE9eE1L2YKYsF5
	Ol2vvhA46YzF3XhdLNYoqXv90BYrYnj74R30gaQnxXCTs2awGSeHRZJhQiM16UPC
	yg4oGoF8uHy3Uewt9apl159hH+MTPCb+fqjGQB3/4j3c3E+GYo1osPsf1quZeK0l
	lrLYtQUPqxA9nMmFjdpl4WU3i/V4RHwA62Fh4hWW/bGGV2rtSnvFZvpzeG4DlUXK
	FAeqe+XAwVfKmULDDKkfDAa7PvD4ozpisjGaEli2Ct9c0hjA==
Received: from mail-pg1-f198.google.com (mail-pg1-f198.google.com [209.85.215.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48ffq6m72b-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 12 Aug 2025 13:56:57 +0000 (GMT)
Received: by mail-pg1-f198.google.com with SMTP id 41be03b00d2f7-b31f112c90aso4584346a12.0
        for <linux-phy@lists.infradead.org>; Tue, 12 Aug 2025 06:56:57 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755007017; x=1755611817;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=auDz7iD1sI1W9Ny6yI3OoybckifowdTKLsrDX8dUaUA=;
        b=BV0GMXYhs4bq6ixQ09u6CT5jBDOpeRTrzMZ8hLYVdAlzUwlaHeTIagOtj0KHpvsSFV
         M+Wy9U0ZDYHnPGNL8vwi0LM9rJTqw/STVDYvjp++IelbaotTZQ3gBiKSusL4rCWaUA4R
         E9qLmD4kvlJS6upJJUHMi0U3QsqMptgQKH8yZv7E46q+mNW/XzRceTx9w/3iBJx7cwy6
         y0BsYGZCaRuZzuVhVw7EuDCe26FW16FyrF+Thua4Tae801tKLsuDeHx2kNpG3KTvbqZZ
         NRn0s7pIyTWzNRuyBv87OfW8Ied7CkiWd7ru2BVvfBz1oo3SE1oB5NRrxyuGKsdL2yv1
         fL9w==
X-Forwarded-Encrypted: i=1; AJvYcCWu2eIv4Ia2X6VtIeJs9iMUnjTr6u9WvZIC2cT6v4Lo5eZO8WLYhrZXAzTToVxJ1EIsKK5PnIUDvdQ=@lists.infradead.org
X-Gm-Message-State: AOJu0YywtO+fRtQlPqBm2Nc2CdGdkwlyM1J1dm6DOlpTiRXCeQSWFUBe
	T3qEIuZhe053sHHL2IsjchekZpNC5sBU3MeBL5GC7vtGBxN7loiREkaRDV91klRfZSOqv2sJwIm
	DsatPJ9Gu0L84QA2ledTJohBa/ogJAuuvgnnE5ovQk9jiE6GTugS5teaZRBNdkQgxKEyR
X-Gm-Gg: ASbGnct3QdDYAXkW6ZMGFesf61murKY9dUXWe/6FXDpDbhken1Ez0ovvhStM/9Ka8Xp
	hzbxRI+QvcHCbzVPpb9/JNJCBknTGfWVtGx/5qiR9Qy5Lz/gZls4UplGfolSBB52k9f1RECEt9u
	pP82hCdOsM75ObTz/JrbYXijwT6JqIWMX7pAkhG2wXljsO1d4fqv/wSY+UKb+7sHUm7Zuu2BPa1
	jCY/O+CL89qE95eK1X8i9km4TyUUmxmxFDJhSVp/CAlyyOInCVFg+xyGidzos3KcPJkKcU6MFvn
	uZYJuUm5JqT5sNdEQfEdWLk7I4QjKFm7HJlin2iQ1ILHhWNgvD9cTYjPW/QQ1bBqXEZDo3Z4n08
	=
X-Received: by 2002:a17:902:d588:b0:240:72d8:96fa with SMTP id d9443c01a7336-242fc3cb043mr56161005ad.20.1755007016803;
        Tue, 12 Aug 2025 06:56:56 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IG0WtX0KfEI1lEt3wJW0uz00Qr/QTBdaYQGRLdFhUhIOFShynyf6MZ2wK9WZMRKktwiy0Y6EA==
X-Received: by 2002:a17:902:d588:b0:240:72d8:96fa with SMTP id d9443c01a7336-242fc3cb043mr56160415ad.20.1755007016221;
        Tue, 12 Aug 2025 06:56:56 -0700 (PDT)
Received: from hu-krichai-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-24302e028dcsm16703265ad.91.2025.08.12.06.56.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 12 Aug 2025 06:56:55 -0700 (PDT)
From: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
Subject: [PATCH v2 0/2] arm64: dts: qcom: sc7280: Add PCIe0 node
Date: Tue, 12 Aug 2025 19:26:43 +0530
Message-Id: <20250812-sc7280-v2-0-814e36121af0@oss.qualcomm.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIABtIm2gC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyjHQUlJIzE
 vPSU3UzU4B8JSMDI1MDCwNL3eJkcyMLA12jlNSUNIvU5MQUAxMloOKCotS0zAqwQdGxtbUAfJY
 q8lgAAAA=
X-Change-ID: 20250809-sc7280-2dedf8ecad04
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        cros-qcom-dts-watchers@chromium.org,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1755007012; l=1250;
 i=krishna.chundru@oss.qualcomm.com; s=20230907; h=from:subject:message-id;
 bh=ZTkBnfZZ1AgE0/ZIFikYOYRPvhs7BztZrdv2Dz4kklQ=;
 b=uKo606lvbFt4k+SE+FR/TTcEoaE6B5el0xNK+SRugo8Uy+rv99G5tIMFdOyPUl1q9yxwmnw8R
 beB1UaZl4/4B+8RLoBhUB2lGtoiOnxRgdjazLSYPPs/SdQkefyl2325
X-Developer-Key: i=krishna.chundru@oss.qualcomm.com; a=ed25519;
 pk=10CL2pdAKFyzyOHbfSWHCD0X0my7CXxj8gJScmn1FAg=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODExMDA3NSBTYWx0ZWRfX4vqwO9TK7CGf
 S7IK9JNzWBY+b9HnNxy+RzbAa6kFtjn4hv4TTvaZQ7lyW2khc+RiO/bInFfuyxCg/dnPCjCtGfd
 rhrxsDLoU/jNpI8h7IiDqZkb83sNxc7bbXmw7LIy0DbD4CNKvohOuiOc9WVm+C49RwhIuMUiE13
 JEJF/i5b7br9IhbCv6368aYgyfWY1JadXLD4x3DMYsDblrP5S66GuB7+jflWIkmUXB9PnNVFUX+
 yJLVUBCIEd5jt/BpD9p4BcJmD/W/Cb7m+Et8y8ZGRQlQHUU6iF2vYa5t0r8GWCBm0DviasVwWTW
 iNJR1eJpHnEhSRbe8NOTOVc/WzwmHMUxanPwQxbyuxcQTTOJxYWP6eW0SmFd16qPOFxF+UMiNr3
 z4RJSC2V
X-Authority-Analysis: v=2.4 cv=TLZFS0la c=1 sm=1 tr=0 ts=689b4829 cx=c_pps
 a=Qgeoaf8Lrialg5Z894R3/Q==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10 a=VwQbUJbxAAAA:8 a=COk6AnOGAAAA:8
 a=EUspDBNiAAAA:8 a=2el-N_6PocgE8SBL7BsA:9 a=QEXdDO2ut3YA:10
 a=x9snwWr2DeNwDh03kgHS:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: 0ExteJkn8GXOG8w6V0XmdyumZ1Ryd623
X-Proofpoint-ORIG-GUID: 0ExteJkn8GXOG8w6V0XmdyumZ1Ryd623
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-12_07,2025-08-11_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 phishscore=0 malwarescore=0 spamscore=0 priorityscore=1501
 bulkscore=0 adultscore=0 impostorscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508110075
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250812_065658_520320_E219893F 
X-CRM114-Status: GOOD (  11.34  )
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

Add PCIe dtsi node for PCIe0 controller on sc7280 platform.
SC7280 PCIe0 PHY is functionally compatible with the SM8250 Gen3 x1 PCIe
PHY. To reflect this compatibility, update the binding schema to include
qcom,sc7280-qmp-gen3x1-pcie-phy using enum within a oneOf block, while
retaining qcom,sm8250-qmp-gen3x1-pcie-phy as a const.

Signed-off-by: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
---
Changes from v1:
- Rebased to the latest code
- Added new compatible for pcie0 phy (Krzysztof)
- Fix the name of the pinctrl state of PCIe side band signals(Krzysztof)
Link to v1: https://lore.kernel.org/all/1690540760-20191-1-git-send-email-quic_krichai@quicinc.com/

---
Krishna Chaitanya Chundru (2):
      dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy: Document SC7280 PCIe0 phy
      arm64: dts: qcom: sc7280: Add PCIe0 node

 .../bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml   |  69 +++++----
 arch/arm64/boot/dts/qcom/sc7280.dtsi               | 170 ++++++++++++++++++++-
 2 files changed, 206 insertions(+), 33 deletions(-)
---
base-commit: c30a13538d9f8b2a60b2f6b26abe046dea10aa12
change-id: 20250809-sc7280-2dedf8ecad04

Best regards,
-- 
Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
