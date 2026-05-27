Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3EF95CD4F54
	for <linux-phy@archiver.kernel.org>; Wed, 27 May 2026 15:55:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=salM8ytNl9BhNgSfYNezvDBDEkwXnZmbKOAVpKqKhVE=; b=IdEOhiSZtW1Pio
	kjT9PN2n+pXYHN2SetJFREV2op9GqgMsOxw2tSXvVBD9Jx3plvfyilbLOFbPt+1ytpeYimIBV5HpR
	AcG2djnC7atWcY1ufXrcRmMETPFkfNfvozwZRCwbNNuMdBnsHaSFfkXEnKAjofw1b6g+bt94VAZ9u
	xpXrHwRMyL0jeI3cNHQg+t6nxHLogBeXTtkHzEtWjLm+irYKo1+xcJnYvOjkijh+T5S8SLwt164hv
	/UMpKDJxWmd9Hvslqqi+69P/j7MMRLa2+gSIEEnQMx0bWYMgt8WeZl4jjXqnyMRy0HC/7b4hkGNVI
	+1A2KeDh97x5eOfo/4wQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wSGbR-00000004S9y-3b2w;
	Wed, 27 May 2026 15:55:29 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wSGbO-00000004S8b-38jt
	for linux-phy@lists.infradead.org;
	Wed, 27 May 2026 15:55:28 +0000
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 64RAWN2c150076
	for <linux-phy@lists.infradead.org>; Wed, 27 May 2026 15:55:26 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	MzoIeP/9RJB+tfcp0der6+uQoAklbzCN/nK9ht7zzAc=; b=Ue0TQ6HuLggxG2UQ
	pzIx626T4ghJxbF5OHCfrB+wxqp+xGpCuT9tCuFDqvHoCo3D257w5I82asfaEr82
	Hkcky9s/R/LZOWzN52/ucFmcmEspzIXQ9ZOGge1ZF1vfOHQqiDOrmrg+LlmdtfzB
	TQJH8EFpa+pW2urJ9zQZ7AjbHv1ZeEYmP+nN4ho3FEbklzU+h0xron0k+OTmXr/n
	w97oNiSmsG3bAo7wm8GrgRlss+oKIbbuZkr2eiYWoJOgNTTSSJMHm3cuLOffHN+f
	zNVDviIhqaAhLWUzjDV/UPldn/tUc+GKh/Ar3I9D8yFRs5gFiOMYehrp6qL26UfT
	452Gyg==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4edxxvs886-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 27 May 2026 15:55:26 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-2ba3245a43dso132957315ad.0
        for <linux-phy@lists.infradead.org>; Wed, 27 May 2026 08:55:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1779897326; x=1780502126; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=MzoIeP/9RJB+tfcp0der6+uQoAklbzCN/nK9ht7zzAc=;
        b=fttBbwa0UkhRPceTzWTmPFHeMzA9oiFGxvNV/lbF46po4T1ScMKNsdJSnqd/RgFQhz
         EEsFyWE1RNlXapo4IB9h2qZvUni0a86Gu/E2sYlrevICnB+a6BB0GJs1ZqgZAHTS543F
         Ti7Vg5ARxdSK0KVJwX+9h485OHtS6Bf9XgAehHp2chj+GgCbemXG3iAnRfSvHuPpGnWv
         wy1fvW3JXWr7EE0ngAwQJuOcwbClnIvXHOdjaL6KqVnUrYDgMHRlrWM4oRJ+JA/U+R38
         IClcLxPiSiQb8B9M2n1U1dRa9rrOOWUGvJR9xfMoov899TOSGen+7XIU2FbdphBXIHF+
         PIOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779897326; x=1780502126;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=MzoIeP/9RJB+tfcp0der6+uQoAklbzCN/nK9ht7zzAc=;
        b=eMs/qk71zAJLJhtn2N/9DdBUUx1ai9iPIGDE8KrbnqmXC1qKur8FOEGDr38Q0ROj0e
         4Pj53U5357i/Xf2k468Mwd3HI+UTBormyKpDDBrINT8bmidDyjmee06hjywqfDnYzYSQ
         siqIR0fw1gZ8y+qiOpSKeLuRgllqMazs95C5m/KO4yF7yPmqSQi2iMIlcr2RAsaZypsK
         AXLrT8vzhJgxXPufI4HqGZizOwezA9CRvc92N2w3LhAgMw00yqYakH7bcTsCxbdNWfp3
         OPUYd1cUliszSs6nDRecgFgoxWNOguNHWwEP7gB76MrlXP0OkSZjdZ/6rSa6nJmYdso1
         A0fA==
X-Forwarded-Encrypted: i=1; AFNElJ9Hl0Y+CBFcV9UpBCE3uVormhQX0MNREKlECCyndB9KFk6EZtMmwK81N0qZCnUo+JjI02H02FYiJek=@lists.infradead.org
X-Gm-Message-State: AOJu0YznjTS2J0mZhS8EVUMcWWklvDOgUPqsLhREHAUs6eww2CvVkX2s
	MKmWUMEg1uckIErRSzhDvTliZ7kO8f9b8Eh+uVvExW48Gi6nD6d4Bw1d2gpakaYs37ehh/TD4ne
	I73OTd1RDLyqV4uGxz0inqt5ansPksx2ILX3/vwogcXLNhQ2ssjwj3TxbzIMiy70QYPKGisjplG
	za
X-Gm-Gg: Acq92OELKEp+SOdOzXAANxKm4lWfoZcBy5/fRY1sKoeJnut3YEQSOgWop/M9OU4wFhP
	O2XPot7jP/AczZd947zbkCxARvuU+UI8RTq3Kdr+WJUqkKYDDvyGX+AQp/G3el4rAOmY1bt+ArJ
	hjQ/8NB8GNvYkJmBdPc1V8+A/PdJwOWDfdhe9nHRYZGimY/lv9eH6H5WgKgLtGQ7aZMjjvmO2fj
	YaLRCiqTQrKKH0vO7BnIaqenV+hQD1wFnamLcwjEwGf2mvAR2bFv9brkG0saBIRRospCk9cF/EC
	Uek/365DAki90H8ty3JcmCyXmA93kR4LDYym8YS8yIsD5T9vVetdDzaonV1AZ5kMQ6b2csAmk7K
	bdfUIFbDOwfVkna0QjQYTIPRyD+6IlsyYYoDG
X-Received: by 2002:a17:902:da88:b0:2b7:ca38:975f with SMTP id d9443c01a7336-2beb05b57c8mr265814475ad.23.1779897325607;
        Wed, 27 May 2026 08:55:25 -0700 (PDT)
X-Received: by 2002:a17:902:da88:b0:2b7:ca38:975f with SMTP id d9443c01a7336-2beb05b57c8mr265813955ad.23.1779897325040;
        Wed, 27 May 2026 08:55:25 -0700 (PDT)
Received: from [10.213.101.118] ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2beff36894dsm1264135ad.37.2026.05.27.08.55.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 27 May 2026 08:55:24 -0700 (PDT)
From: Komal Bajaj <komal.bajaj@oss.qualcomm.com>
Date: Wed, 27 May 2026 21:23:51 +0530
Subject: [PATCH v4 1/5] dt-bindings: arm: qcom: Document Shikra and its EVK
 boards
MIME-Version: 1.0
Message-Id: <20260527-shikra-dt-v4-1-b5ca1fa0b392@oss.qualcomm.com>
References: <20260527-shikra-dt-v4-0-b5ca1fa0b392@oss.qualcomm.com>
In-Reply-To: <20260527-shikra-dt-v4-0-b5ca1fa0b392@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>, Ulf Hansson <ulfh@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-mmc@vger.kernel.org, monish.chunara@oss.qualcomm.com,
        Komal Bajaj <komal.bajaj@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1779897312; l=1745;
 i=komal.bajaj@oss.qualcomm.com; s=20250710; h=from:subject:message-id;
 bh=O4cVCaQ46n8Ms5D3Bco+aQwbzl8/UIR3ClZEnBlY0Qg=;
 b=rDdsXqx2OGS4HgppqsyFw7mstu3UAVMe6PAhzN13fr4mCPzL5eaBydZ50PISMnIlKsANw/AQa
 kp+rRqblaBUAXV5KM+PCA8BfUHkOpqLgyaWVQb0E8b2SLc0gD57pb6g
X-Developer-Key: i=komal.bajaj@oss.qualcomm.com; a=ed25519;
 pk=wKh8mgDh+ePUZ4IIvpBhQOqf16/KvuQHvSvHK20LXNU=
X-Proofpoint-ORIG-GUID: oymt6hNTwtYHo4p12-79VYdcpvtPqOMX
X-Authority-Analysis: v=2.4 cv=bJAm5v+Z c=1 sm=1 tr=0 ts=6a1713ee cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=NGcC8JguVDcA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=YMgV9FUhrdKAYTUUvYB2:22
 a=EUspDBNiAAAA:8 a=nhUW8Zqzme2qF2hNOrkA:9 a=QEXdDO2ut3YA:10
 a=GvdueXVYPmCkWapjIL-Q:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNTI3MDE1OSBTYWx0ZWRfXywwb1lYXBjcU
 EBknv1O/oDx1rLfdbTtga4j7d7utReoT9SufAsVA9jBlrDf5zewmHejg6Y5p+Fc07SMmQfxQAX9
 43dNy5UhkENYcl6v3bxCScHEBKIdL44pWUUH1KilFE5SiYWInZyKveM1RdPPoTJ6NKTaZPIth7v
 NBHUDWGNVGndKFSGbnkmxmWBJiQBEnR8jfO0egDRqv/rdzt9rGTCdEsmZGs7ZlNRCyXMlwESjeL
 wFuYgtUY7mvVcuPLQe9KEexD33x3oQZk9qagPUlKOZnzVumCOPjdFqXR5VB0Va2n++bOcuX7lPi
 c/Tj8ybDp28Z/GoGsaElonpkTd+sc5Uq6vPVFYMpnVQeeOnhIC6XfGU5+Md6ZoqPK4Erd8vc6CP
 +EKL7kfSZk+O39fzE9LHw9i3+en9DkxBBmsrag16JAKWcQa/J1qvf6VY0IG/DFp9stY5ELNVUzg
 fbwS3kkmDKixvvrg0TA==
X-Proofpoint-GUID: oymt6hNTwtYHo4p12-79VYdcpvtPqOMX
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-05-27_02,2026-05-26_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 suspectscore=0 adultscore=0 spamscore=0 impostorscore=0
 bulkscore=0 priorityscore=1501 malwarescore=0 phishscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2605130000 definitions=main-2605270159
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260527_085526_796163_BC277B4A 
X-CRM114-Status: GOOD (  10.35  )
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

Shikra is a Qualcomm IoT SoC available in a System-on-Module (SoM)
form factor. The SoM integrates the Shikra SoC, PMICs, and essential
passives, and is designed to be mounted on carrier boards.

Three eSoM variant are introduced:
  - CQM: retail variant with integrated modem (PM4125 and PM8005 PMIC)
  - CQS: retail variant without modem (PM4125 and PM8005 PMIC)
  - IQS: industrial-grade variant without modem (PM8150 PMIC)

Each SoM variant pairs with a common EVK carrier board provides debug
UART, USB, and other peripheral interfaces.

Add compatible strings for the CQ2390M, CQ2390S, IQ2390S SoM variant and
its corresponding EVK boards.

Signed-off-by: Komal Bajaj <komal.bajaj@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/arm/qcom.yaml | 18 ++++++++++++++++++
 1 file changed, 18 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/qcom.yaml b/Documentation/devicetree/bindings/arm/qcom.yaml
index 50cc18a6ec5e..cf7d241f8107 100644
--- a/Documentation/devicetree/bindings/arm/qcom.yaml
+++ b/Documentation/devicetree/bindings/arm/qcom.yaml
@@ -989,6 +989,24 @@ properties:
               - xiaomi,polaris
           - const: qcom,sdm845
 
+      - items:
+          - enum:
+              - qcom,shikra-cqm-evk
+          - const: qcom,shikra-cqm-som
+          - const: qcom,shikra
+
+      - items:
+          - enum:
+              - qcom,shikra-cqs-evk
+          - const: qcom,shikra-cqs-som
+          - const: qcom,shikra
+
+      - items:
+          - enum:
+              - qcom,shikra-iqs-evk
+          - const: qcom,shikra-iqs-som
+          - const: qcom,shikra
+
       - items:
           - enum:
               - oneplus,billie2

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
