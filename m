Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1D5A3C43458
	for <linux-phy@archiver.kernel.org>; Fri,  3 Jul 2026 12:09:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=26mIQsoBJO6XbndKjzbMyrn6ons0O0qQvQwfZFtU/Y0=; b=xX3Kisku44GmM2
	Hrq1jxtu7iaJLzxDznUwSFB9+Fb3PGPnQN0p7CKzMspk2Jzx8FzsQhT5beHJCELH53EUOgjKB4/jT
	vNiK67HtPHur09F6CkyrrCuDcCHzjXgmmwkjDRgn7Xv3m0PoZObvcxKBH/DMMmBq19eaerSpy0YLF
	6Zcc/w9PrMY5ZL7WEWDRFROwlxezV7SpIxAmObipuSpRmtIBt22u07n6g+AzbBXXrzc4dBDOxvWxT
	GuCephAmr9XPnJQeF9yLw3xZaMz2QSKDTGKF1FKTLdtjiqjtOe0sqpQGqaz5mNj1g7KP7uRbHxt1M
	igtTsAcd6odJdQ9pnbhA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wfchb-00000006uB4-3Zmh;
	Fri, 03 Jul 2026 12:09:03 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wfchZ-00000006u9t-2jxX
	for linux-phy@lists.infradead.org;
	Fri, 03 Jul 2026 12:09:03 +0000
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 663BPH4L3135212
	for <linux-phy@lists.infradead.org>; Fri, 3 Jul 2026 12:09:00 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	KYQhHF4yO5tQSQmCplJ7wLXwhEcx8usic4R8j8a5X2I=; b=QsV1Vm7Cv4qlZga1
	+JfGWGDdpU92l472Nr+xVk+5E6RpIa5832TKX4ZoqLhWyooLRd0cdtMwDZevT3l0
	9HnDWw+Rw5gQ2T/WVLQa3+V66NWv3f3rcZ/52qes+4i2s2zdM4kGCO2DbjqOXZMx
	iFoZQOzYmlESetPB6tT9aUdRtXJnEPKP2rZJxEs/cKtTWLIB+d2LnEkkgmEZIpS0
	FEI8BsC5Nu4BhaI0cRjcGuT6UhOcXM452TpoptL7inzNpkx/UClo2MfW/gU+TbZs
	fDZFEiqN7jE7eA1jDNzsk2seyWQmF0/igoua7fMA1taVsfGd4s4WC4nKTdl6MWOX
	PSevGA==
Received: from mail-pg1-f199.google.com (mail-pg1-f199.google.com [209.85.215.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4f65qcj0eg-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 03 Jul 2026 12:09:00 +0000 (GMT)
Received: by mail-pg1-f199.google.com with SMTP id 41be03b00d2f7-c96b4f58ddcso594855a12.3
        for <linux-phy@lists.infradead.org>; Fri, 03 Jul 2026 05:09:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1783080540; x=1783685340; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=KYQhHF4yO5tQSQmCplJ7wLXwhEcx8usic4R8j8a5X2I=;
        b=MwWZNf1kbT8UMgQHRFgsd6El1cU1vaThf145qVAweI3qv2fbgsWe4oYJkwaEZC5sTw
         ksNdkozH3WC1yaS8eA6r3r8X4uMpyZkCaIiDfHx0KjoiItsffOyCpR0xK9q0bf7GJZh3
         F6Q+QD6NxT2V42ZTD2BECmyboVNYMTylFWpTG9tufWd32Vf6yYBQmeuvyVCipy4uxYA/
         /CTILo6CEb+6hCbeGKgZrSvxwZXOj+n8D/th0PiBxlSnoOh87Twykp4XcZkUDu6NvlM/
         ESx9rh3fSHkPebnb5Ie1I4SmduXENeBVjGXcX0NDj78GWmWiR4rQNtgx8YU5nVQGGND0
         OFwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783080540; x=1783685340;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=KYQhHF4yO5tQSQmCplJ7wLXwhEcx8usic4R8j8a5X2I=;
        b=MHmZnL9j5jxkaKSAbNDFMBqgh3y1zImYJxnFYT3PFhSe1B/D3nkc4UTJmqyeY4Wk/L
         MP9douItEGpy9cfz7r0fhFVCfGdOWrEn8vwa25t2ovaCxqo0tenqrF3VWyDo5U2YNC/X
         UN+w2lY//hOvR+3KollvzZbLvsm3fEiSD9GULm2OvCrNIF4Lek82P2gl+OzQ6hqNvp7G
         lzvAh5ADCaV2LJdwoNB9nCXsuDaeb6m46mOhykHbL8FNjkvJXrmoJlo8UX3s/RTIELsn
         vLaBZwDtvxr39mBzHpAHgDC1o/dUQb0q85m5xdV95b75cw+ahaGj8LgYh/GcSAgjpSc3
         qUzw==
X-Forwarded-Encrypted: i=1; AFNElJ/qBwHfxIFMtwBlnOr4BNatmUZ33Bka/+YzB9XivHRlaDdz/xbw4Jxa0xuLKG1KCyNEUcBgdFXZRqA=@lists.infradead.org
X-Gm-Message-State: AOJu0YxWepJTkY7+7nEo1w+ddGAcgawmXSasszFJ8TaQu3rSBmrSi3HC
	qoab3kaDFe8oH+dmUZebW45RKj1aEBWxRJMA3Zc2bhhDcLnarj6OQT141nIqrAjuYnnZOkNvNeN
	7UafyWXNbagIKOD1BnsUWNuDnX9ZDr+p/ncCvk+5NEbpPUqAeI0B/HRLneKitTr+/g5GF
X-Gm-Gg: AfdE7cnXmauMmE5u3AXIqEgqwa7/aY6VeqX/VNVdO9BBk7QwHMp94UoVCVqQ7WatBzU
	NCqoM4vWMF1FhEb43qwiRXXmqJqpGj6IRV/KWVAdE/MRpSzkn6iufV5kmnXCJMvfMHW2tVviwwB
	uLsHWKZXIxtwZnuA88F/MO9LJ2CfezXOdFWCFue3PtaeGobNb1DzVbtBdMacRoWxTQlQTfgenSB
	Ooex6dvDEgM7NXjE5XW3IFcXzEs+LEHJqAmT5QUALNMxznmrY76jsSZ9EuqDRHcMs3M8i8NTG1d
	y/uDVVLwCP3U/VTmqecYzZXwWmFPUih0Ox/eHZ+zBjG6Qm5+zwCFHFEWbMXnIOqeRltBQCjhiXB
	/bT+pkfaCxR225RRtLibccARi4/+XeMJrUdYGmk43cafYaxol
X-Received: by 2002:a05:6a21:6f12:b0:3bf:7498:9cd1 with SMTP id adf61e73a8af0-3bff42b62a6mr11392372637.45.1783080539647;
        Fri, 03 Jul 2026 05:08:59 -0700 (PDT)
X-Received: by 2002:a05:6a21:6f12:b0:3bf:7498:9cd1 with SMTP id adf61e73a8af0-3bff42b62a6mr11392323637.45.1783080539153;
        Fri, 03 Jul 2026 05:08:59 -0700 (PDT)
Received: from hu-vpernami-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-c9e8eb10638sm2530779a12.2.2026.07.03.05.08.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 03 Jul 2026 05:08:58 -0700 (PDT)
From: Vivek Pernamitta <vivek.pernamitta@oss.qualcomm.com>
Date: Fri, 03 Jul 2026 17:38:41 +0530
Subject: [PATCH 2/2] dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy: Add
 Maili PCIe PHY compatibles
MIME-Version: 1.0
Message-Id: <20260703-vdev_maili_dt_bindings-v1-2-c9df0916cd5e@oss.qualcomm.com>
References: <20260703-vdev_maili_dt_bindings-v1-0-c9df0916cd5e@oss.qualcomm.com>
In-Reply-To: <20260703-vdev_maili_dt_bindings-v1-0-c9df0916cd5e@oss.qualcomm.com>
To: Lorenzo Pieralisi <lpieralisi@kernel.org>,
        =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Bjorn Helgaas <bhelgaas@google.com>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-phy@lists.infradead.org,
        Vivek Pernamitta <vivek.pernamitta@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1783080523; l=2267;
 i=vivek.pernamitta@oss.qualcomm.com; s=20241114; h=from:subject:message-id;
 bh=RLQd+8L2duBjcipyPTJw+yVMnJfcWltw5Gg8I61tJk4=;
 b=AxTvxvUKlTazRBczJfhkLqI1ilqpqocvA9VMTCUBo2s9osBbfUxOMT3rka38QjfODOl0oIE+e
 WPvCvBzZ+5KDt8UxK1zdLrgcZivTo7eslU6Sb4OYKTvlyjQeSoSsiOj
X-Developer-Key: i=vivek.pernamitta@oss.qualcomm.com; a=ed25519;
 pk=HDwn8xReb8K52LA6/CJc6S9Zik8gDCZ5LO4Cypff71Y=
X-Proofpoint-GUID: e3_7B0TLC7C4MAZ1Bbr1Nq5M6Uz26grh
X-Authority-Analysis: v=2.4 cv=Bb7oFLt2 c=1 sm=1 tr=0 ts=6a47a65c cx=c_pps
 a=Oh5Dbbf/trHjhBongsHeRQ==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=RAioF0-LDSMA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_glEPmIy2e8OvE2BGh3C:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=DH4gakA0-Fj5Mf9eDRkA:9
 a=0bXxn9q0MV6snEgNplNhOjQmxlI=:19 a=QEXdDO2ut3YA:10 a=_Vgx9l1VpLgwpw_dHYaR:22
X-Proofpoint-ORIG-GUID: e3_7B0TLC7C4MAZ1Bbr1Nq5M6Uz26grh
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzAzMDExOCBTYWx0ZWRfX6PPH74l4GNZu
 O70RVtFqWS6ciY5Y5A0dfEB04am4fKci5osMzeZgYf4RutGnh2A1vUQgh4DZd0CaRw4NGzjcVo4
 PolKz3qUuHt3tSdvjqLGB8gSjmaI6WkCKaWIDAb4qLWsXKMxONPlenHfME65j3gywht7Shke+57
 NZ79pNdZm2dVaGNp5E1DkygY/FVQkEDe3eJmXy/Tj5J9G1zmrT6WpK1rjqh/IKYpFx61CF0Gbu/
 MY22JN9cVNEWLENZYeYu4AFReixonO8ZsHguy66p/3meR7oZXt/8tYbrcMrKXmQ1r8F4BYglEH7
 q8gF28V/mbrqJziJ6Yu+XWpq6NmdnA4DGnAU08BLF+wX6C4e+t5i+MBsYlYvQoYh7WHYkyoTliL
 l1fnfQrVFRdbdV/GEDCZybRgzKNkXgK9iZ1r+jnGhCM4oLLER3IJYJmPS9QLZ9tVYX7nqfjOW5V
 NT1B7HUTThqUJEBeV+w==
X-Proofpoint-Spam-Info: AW1haW4tMjYwNzAzMDExOCBTYWx0ZWRfX9xuZ9FS47WNd
 hT7zSuaF1Oz+88z3Xm7FVcKsHyi7O1MuIjlbXAPpS2cfevXs5yHc0mJs5KvpEhBDCQXSEBmQnp2
 0b6EEADZI0R3HCEmUUX87dV2f0Y1saU=
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-07-03_02,2026-06-26_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 spamscore=0 clxscore=1015 impostorscore=0 suspectscore=0
 phishscore=0 adultscore=0 priorityscore=1501 bulkscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2607030118
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260703_050901_814644_293CA6F1 
X-CRM114-Status: UNSURE (   9.92  )
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

Add qcom,maili-qmp-gen3x2-pcie-phy and qcom,maili-qmp-gen4x1-pcie-phy
compatible strings for the Maili SoC PCIe QMP PHY.

The Maili SoC is a derivative of Hawi and shares the same PCIe QMP PHY
architecture, allowing reuse of the existing Hawi PCIe PHY DT bindings.

Signed-off-by: Vivek Pernamitta <vivek.pernamitta@oss.qualcomm.com>
---
Dependencies:
- phy: qcom: qmp-pcie: Add PCIe PHY support for Hawi
  https://lore.kernel.org/all/20260618-hawi-phy-pcie-v3-0-3fa42ca45ea4@oss.qualcomm.com/
---
 .../devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml         | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
index 259ed9678393f12c03535389b972fed0c7e36517..971474526cf97cf333a80a31e8fb13abcb995e97 100644
--- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
@@ -23,6 +23,8 @@ properties:
       - qcom,hawi-qmp-gen3x2-pcie-phy
       - qcom,hawi-qmp-gen4x1-pcie-phy
       - qcom,kaanapali-qmp-gen3x2-pcie-phy
+      - qcom,maili-qmp-gen3x2-pcie-phy
+      - qcom,maili-qmp-gen4x1-pcie-phy
       - qcom,qcs615-qmp-gen3x1-pcie-phy
       - qcom,qcs8300-qmp-gen4x2-pcie-phy
       - qcom,sa8775p-qmp-gen4x2-pcie-phy
@@ -200,6 +202,8 @@ allOf:
               - qcom,glymur-qmp-gen5x4-pcie-phy
               - qcom,hawi-qmp-gen3x2-pcie-phy
               - qcom,hawi-qmp-gen4x1-pcie-phy
+              - qcom,maili-qmp-gen3x2-pcie-phy
+              - qcom,maili-qmp-gen4x1-pcie-phy
               - qcom,qcs8300-qmp-gen4x2-pcie-phy
               - qcom,sa8775p-qmp-gen4x2-pcie-phy
               - qcom,sa8775p-qmp-gen4x4-pcie-phy
@@ -230,6 +234,8 @@ allOf:
               - qcom,hawi-qmp-gen3x2-pcie-phy
               - qcom,hawi-qmp-gen4x1-pcie-phy
               - qcom,kaanapali-qmp-gen3x2-pcie-phy
+              - qcom,maili-qmp-gen3x2-pcie-phy
+              - qcom,maili-qmp-gen4x1-pcie-phy
               - qcom,sm8550-qmp-gen4x2-pcie-phy
               - qcom,sm8650-qmp-gen4x2-pcie-phy
               - qcom,x1e80100-qmp-gen3x2-pcie-phy

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
