Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C154BC87FCF
	for <linux-phy@archiver.kernel.org>; Sat,  9 Aug 2025 09:59:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QEHW/9DAugUfrNznbnT4hi28FAbKZfpaVdGpHuTXyag=; b=egs/fuT/gwOtos
	IM9djcmKR2M7b/mNTebTBX3sK6/O3CLNa+guwZKy8/6rmEFu52Hj8sIuVlLwxZAJlGdT6FjufZfyc
	LDGeEAlbj5JDPec1een+DFr4zx8rvT7wuLEuX5EzPBDXntTkYd1LHa+3qeSBzGxQPKQYtfSngN/5U
	3/TbsHWF7/sa7oaSlo95caHF7EdtqE8MWx9OdwzSZEDEVmR75PtKYRPTToYrF3WEbxFqb0WMcznxe
	gmsm/F3+/+JZ1ORgaI3kFlMKmodXepaFE+cOJIjFPn1xWbcyyFAN/wxqsxy2girBYDWn5lQcuC1bY
	m+jAD97eTgtLU185/r9Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ukgMi-00000004LBa-24fc;
	Sat, 09 Aug 2025 09:59:52 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ukgMg-00000004LAT-1wF5
	for linux-phy@lists.infradead.org;
	Sat, 09 Aug 2025 09:59:51 +0000
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5798tA7e029404
	for <linux-phy@lists.infradead.org>; Sat, 9 Aug 2025 09:59:49 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	iBQ0e2SAV0/ngnuxIOs6ha4YTv6YdCMqfkqSUm1Uz4E=; b=puKuQImGkrw2xjYE
	KdY49eiqRNdnHwyRNr1zflmaFztoalO3ECQJMLsUzqks5MfKDWKlP6rYoX4TyS31
	rQ4Qh//C7FJ40AUzZty7lFrsw2Hgk4Am4WEe2jH3Bob/SO1huYT3D7i+GI2uc1oI
	q0HJqWhG9KEbaMyJvPpZ9dygy0aPx4SgTFPmhPVCnmWaEp6nWDSHei1PaFdTktev
	K609WAo1EHyj44tednHlNw3fJqFYkEPRvdeyCKyiGt6OdELbk7romPqTBeVZMVJ6
	LxbtO3AQQwjNp4chKo+en1ZeXmW6DVWnFn3vwFYSPcDvodM01f3aP8cUUaS9SNCS
	hJBVvg==
Received: from mail-pg1-f200.google.com (mail-pg1-f200.google.com [209.85.215.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48dupmgmu9-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Sat, 09 Aug 2025 09:59:48 +0000 (GMT)
Received: by mail-pg1-f200.google.com with SMTP id 41be03b00d2f7-b321087b1cdso4459765a12.2
        for <linux-phy@lists.infradead.org>; Sat, 09 Aug 2025 02:59:48 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754733587; x=1755338387;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=iBQ0e2SAV0/ngnuxIOs6ha4YTv6YdCMqfkqSUm1Uz4E=;
        b=FXzTcATHUaB2sIq0CLUUsJbyOk8rBZqP9D4vy/3P0x1D7Ps3BjkZoVIIcnRtAs8DYf
         3ueugIsoXmn6i2A7B5tINjA4xl3MKeQhN3VxqRFT1Aj1h0gz0fSWSwMfrZ0GvO327JY1
         JiuuHDNr/0oskg834ddj8Ssv5bMjbKt8rrRiw3s9IYUt0M/JiSm9kHp5ibFqT0nK27st
         XyJU/y5aCkFTaVxTBNCGfZlCxlvtLMUEFeSEjXKa4zjGeixAcEoaHeAn1Z6w48oPhzID
         4vyMYVMkSwVgKLSmGFOjzeVXcHdivgZuAnUDMgWT15g2My+wc7oVVy67A6R8p72mBndF
         tpvA==
X-Forwarded-Encrypted: i=1; AJvYcCV9Ba+4KeUTkfdS3QVwdgNkmFNfgMAESe1S+ZrWYPI1AjqStkXejB9Q50JvCdXvxBWrJ2qaYk0ye/E=@lists.infradead.org
X-Gm-Message-State: AOJu0Yw4P4NFTGCB2nBUa6EH8KYGPQL9elMmKJ0qASOIehL8KNZMfR+H
	l0ujqb91l/6Km7rFaEo5dd6WV7TERwYGT3IKMUV3Hb5XsiNiQAWgJbKjVB/airsgeAqGB+B5K8I
	j0SXoVwrDWQ6gbZDX6SytPR7AEyJi1s1rLm8FMEB1hsfurrsERs8TLMwDHI59zlRIh27H
X-Gm-Gg: ASbGncvBvM807VhzuhdccIy9EGHztAN59pZ+OWCjTZbLnu3m6tqTvdoyylWEqOcunsl
	nobn7c3rWs3GQaj33gYsfEV90Ff7QrC7qyu0tDT/lWFTOV7z66dp6D8s7azbV0Tfq3YK0uW9140
	Zl2Elb8k9jQ6/ltYr+7v+e/LJGUr745kjJYiLWk0IBH2v51K799ICwzR3Np2DwOUaFhRc57MZFj
	IPBoVS262d79v/HqHKEVKn1I3xygBZhRHWwtnJrt5ZWA9tfsFNkRynlJ29e7XaIV9hFMHe0H0kp
	S136Fq5jfi3aCRQ+5+7BivHj+MTY9QQ/DV7l379+qnKb5cQuM32+V2Ol7Lk/6bBeZGJrR9fnytM
	=
X-Received: by 2002:a17:902:d2c9:b0:240:1953:f9a with SMTP id d9443c01a7336-242c20703d5mr104333375ad.2.1754733587524;
        Sat, 09 Aug 2025 02:59:47 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IE4c/wiGzwRmWvFnGhbo7cmBsz+6nWkl5TgRx8Q2bsS4E4Vq6y5oGW9hWnJRcnT/BPcwMFLTw==
X-Received: by 2002:a17:902:d2c9:b0:240:1953:f9a with SMTP id d9443c01a7336-242c20703d5mr104333145ad.2.1754733587106;
        Sat, 09 Aug 2025 02:59:47 -0700 (PDT)
Received: from hu-krichai-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-241e899b783sm225962845ad.133.2025.08.09.02.59.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 09 Aug 2025 02:59:46 -0700 (PDT)
From: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
Date: Sat, 09 Aug 2025 15:29:16 +0530
Subject: [PATCH 1/4] dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy: Document
 the SM8750 QMP PCIe PHY Gen3 x2
MIME-Version: 1.0
Message-Id: <20250809-pakala-v1-1-abf1c416dbaa@oss.qualcomm.com>
References: <20250809-pakala-v1-0-abf1c416dbaa@oss.qualcomm.com>
In-Reply-To: <20250809-pakala-v1-0-abf1c416dbaa@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Bjorn Helgaas <bhelgaas@google.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-pci@vger.kernel.org, quic_vbadigan@quicinc.com,
        quic_mrana@quicinc.com,
        Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1754733575; l=1281;
 i=krishna.chundru@oss.qualcomm.com; s=20230907; h=from:subject:message-id;
 bh=R4uNQJTJ6TZ6UIRq4jvXRMv3opNeQTLyTEdp1tmrcFg=;
 b=Pn44e4XwnwfvY73BZod/cOU+TNd9XbdK5DnaUkh10yJmXKf+BBVokgllhEO5swZK6AJvGflcQ
 3E3Jgc+ZT5JBvWhJhQOkMM5Ib7UJOT30HMRDM4dxwY/tg3q7YF12YGJ
X-Developer-Key: i=krishna.chundru@oss.qualcomm.com; a=ed25519;
 pk=10CL2pdAKFyzyOHbfSWHCD0X0my7CXxj8gJScmn1FAg=
X-Authority-Analysis: v=2.4 cv=bY5rUPPB c=1 sm=1 tr=0 ts=68971c14 cx=c_pps
 a=oF/VQ+ItUULfLr/lQ2/icg==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10 a=EUspDBNiAAAA:8 a=AUvBg9Asf6StguVY0UIA:9
 a=QEXdDO2ut3YA:10 a=3WC7DwWrALyhR5TkjVHa:22
X-Proofpoint-GUID: 4dPNn1YGPIbRDkLZ7ftc0YJAfT2QE-_5
X-Proofpoint-ORIG-GUID: 4dPNn1YGPIbRDkLZ7ftc0YJAfT2QE-_5
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODA5MDAwMCBTYWx0ZWRfX3UGLgOS89D4S
 LZLkkE8R4JGx/Q1XS2xP0abznvbLwfEujgwah51Jjyc+52ZCoN+DOWqQeUKuxueIAJxcV4RslQI
 SdEGgXfv4Y8jacq248T9e/qWL0Xlzuo17vLsTxBvNeYaidEsdtfkIVM+rjfWNpL6/rGldReHWo7
 MOiO/CgHYNx6CAAsnUGI48r3hh5AZK5k5IP1OOOt418DOo4X7MU8KNjkys0LLVnBu9pE6SsQkzt
 noFN/0GNr1XryVSiUTq/3ASTNj3gYE9+AuX3Gh0Kc4O4bqUWU3D7qE6ksOiLm6Vf4td8zUyQdM1
 TxmRhS8iVb/UmMAtVvNmI3FVsYBEIVxJ/YikXe4feFumxQNPV5sxlUf+6cmuk6MPJUn7GUj6f/w
 LSiQBUA1
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-09_03,2025-08-06_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 malwarescore=0 bulkscore=0 impostorscore=0 priorityscore=1501
 spamscore=0 clxscore=1015 phishscore=0 adultscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2508090000
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250809_025950_623601_6864B9E3 
X-CRM114-Status: GOOD (  10.64  )
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

Document the QMP PCIe PHY on the SM8750 platform.

Signed-off-by: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
index a1ae8c7988c891a11f6872e58d25e9d04abb41ce..cb706cf8219d015cc21c1c7ea1cae49b4bf0319f 100644
--- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
@@ -42,6 +42,7 @@ properties:
       - qcom,sm8550-qmp-gen4x2-pcie-phy
       - qcom,sm8650-qmp-gen3x2-pcie-phy
       - qcom,sm8650-qmp-gen4x2-pcie-phy
+      - qcom,sm8750-qmp-gen3x2-pcie-phy
       - qcom,x1e80100-qmp-gen3x2-pcie-phy
       - qcom,x1e80100-qmp-gen4x2-pcie-phy
       - qcom,x1e80100-qmp-gen4x4-pcie-phy
@@ -164,6 +165,7 @@ allOf:
               - qcom,sm8550-qmp-gen4x2-pcie-phy
               - qcom,sm8650-qmp-gen3x2-pcie-phy
               - qcom,sm8650-qmp-gen4x2-pcie-phy
+              - qcom,sm8750-qmp-gen3x2-pcie-phy
     then:
       properties:
         clocks:

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
