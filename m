Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41FB9606A330
	for <linux-phy@archiver.kernel.org>; Sat, 14 Nov 2026 01:13:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=I7FRj16y;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=I9mSvnqb;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=OmsZ6jmU
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=9gGQjjduErbR5TT+XIIpWgdiYKvaC+XlIR5aC6pfZVA=; b=I7FRj16y5DhV9GxrQqaYpCMo3A
	B3qyJx1mA5fBos0Ek6V7FLa2v9vL7Zi17e0E4hWJc12vP3j8HriAHMzERFK/7qXrrw7lvQoA0Hly/
	scnBjxM0GgOmFa0XVyDZ22K8cIer/uHFpotSM+hYoROFuVeCKgAGCIUcE8ddmLv7V4+bAUzJlti/t
	w/FBfHDrfq8R/4TxYmkAmpyPEvldX67q4w16O1RnoUVDF6G4DXEfE+X/kPLuE6erYe2XW8vMQxezq
	6fAXB+9bE7a9s2d4wE5XYbXclGgKgWGmH0IDl8vPzdD5k6FefhK5VxLHV4N6ivED8kGnMW/EJUbjW
	eh5Z39sQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xS2Ki-0000000EzzO-4BvB;
	Sat, 14 Nov 2026 01:13:34 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xS2Kf-0000000Ezyr-4BJ0
	for linux-phy@lists.infradead.org;
	Sat, 14 Nov 2026 01:13:31 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6ADMbMkO1671427
	for <linux-phy@lists.infradead.org>; Sat, 14 Nov 2026 01:13:29 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	2l7a9FO0SEOjp6R61ar4S2cjWp3e1qo59RxK3Y3Hkz0=; b=I9mSvnqbty4lHCSv
	1V595++OyJ0Z7aRn6JLT1RWafjthvzluXt7l7lECWu7HIM+tHjC+r/f8R+Q1C/zU
	ONKicF/m1XRxxqPKr99YWutec/3+Z0cv9qnDTRR3N3newo2P8weSkVIgcbNRwhK3
	ddhEyHjVcHJLiFmxHYk7jA8bby1bC/u0+PRYtZ8FcK5QoCwHjUAA6jTD7yfQlQo6
	YaYZ6YhcpYB3j85AB0kTyxy8INxP730SOy+zt75XRZgVOeE1o/fbp060PO4+BBwV
	TcMvIqREBnAxOmVUeFIOmUWrG9tPym38R2bAP5mdMC93Jb5f+SrOaQAmlqe9mZZV
	0eaZag==
Received: from mail-dy1-f198.google.com (mail-dy1-f198.google.com [74.125.82.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hwkgwdm3y-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Sat, 14 Nov 2026 01:13:28 +0000 (GMT)
Received: by mail-dy1-f198.google.com with SMTP id 5a478bee46e88-36efb506f29so2060745eec.1
        for <linux-phy@lists.infradead.org>; Fri, 13 Nov 2026 17:13:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1794618808; x=1795223608; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=2l7a9FO0SEOjp6R61ar4S2cjWp3e1qo59RxK3Y3Hkz0=;
        b=OmsZ6jmU99DiNAzTaDyJ5QL1EeZHwbJTXbyIsn5V9Md4RWiG4mH0NDXV43khRmZGiN
         K6+dp0//0wNQnpzpwT+naTnjpSVKF/M5VpG1Zza2CHPeJnDlTfwcSHO5YQCkbtjYHKF2
         GOc80XA1pX06682KW4bRNu1a3RxXx8B6EUKmsja8n6PO+CcABObG2MTZ69XISUkhNSB3
         zgWBFthklwbQKPVmghnP4IkCrwXitr5QZiYKPW/qlZkoUcnoI2VsAXgfmlNKKbyTAwHj
         tyQiFg4E1hJGB1Xd47IG4VVxVAQpfRSUqq6cej6kuRI33XEUjrwduT752p/jKLzFOVrE
         8cwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794618808; x=1795223608;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=2l7a9FO0SEOjp6R61ar4S2cjWp3e1qo59RxK3Y3Hkz0=;
        b=rFfc7sqTA52WWq5QSn0G6UFGdYik1opSpSfrjfbkaCLoJtfxlmPPcHnWp7dk6tCqcg
         F8GPRmaq9S4XaYzyqSHGWuybHyfBc5zwBuk8LLeMkw0WbPo6Gcpt6aoEfSd0yQsc8W3Z
         4Y3WqPzib9frdSofVr50swMyY4k08MKtQWFe9h3BEYc2ZAcezYaGPpyDpF4zIUsI3kNk
         pFU1H5u1MYKzn47dffeFkO/1x9K/gdc8n3fRprtkFXN7gxdoUmAeNz66TMaG2//tG1xB
         Yx/4fXtm7vCs05aMXji7B5B+kWkUyk8QVwAG0o1dcwQ/RFGqiFjGzZs9FrIwBIBX/jII
         KKoQ==
X-Forwarded-Encrypted: i=1; AL+hErHk6Ze+0bBG+7Q930vc5SI4gpbVzT+WuSE8zBzpRMtauoopsFHAG6HUSXJaEDwhgIi59xOc20FW2NA=@lists.infradead.org
X-Gm-Message-State: APuU4Z/w8T0YyTYL9gRK9SFb8hyH6n37ShoCUez329GvFuImgxV1d8lI
	9jR3snCp37xxiMKStLSBtr4gBpCGqa3S5FFBmnRv9VBhl54QPEa9d3kzsPmYR++B8vKL8iFaHHV
	SX2pKGz2/jmiL6ihaPJiPk5ZwvI37e9w+UuALsJzlVSpixRQtYctlF2Es+w9ApbwMICEZ
X-Gm-Gg: AYBFou3qJDaLBN44W6mviYBXe46RFZber9V2cjznAcsNVjJhAyIeLEgTQyOiYvBb5QO
	+WSQHORL+TQAXffbe0VBkJPl1GZARvNs4xeN69OZeNcg63wSvOWGpIZ62PWim8P/tZxFoWlvJjj
	zpTGhCgoA3rQlgxF/ldOHaMcmb0kON4dLbURMyYA5q90YJqRv9GIBstBycHUzQkw9YGX0qI4cXs
	bxTKy3MbmBqA54uWt0gHXC8g9oBUEcC22+9rD8g+/zKMQIuEEC43vDSZQJseMzXOWqU+ECKanpc
	Aag3J3lpZg2GI/229pRBbIPPHs2e+CaSaxjpyFaalr6ARqKZRKzoeaBoJL+Ek0ESCjUpf+1cSQT
	QAb+YiT0gJ0+TnFVfsE86AJUiI4IOfGT1qEe2JOPzy1b8Q/B9+hP5Ov0WTmC1X+Rb49iiqKoNBk
	DXHPhyNAla
X-Received: by 2002:a05:7301:4d10:b0:377:58c0:22a7 with SMTP id 5a478bee46e88-379655d4493mr3179184eec.6.1794618807963;
        Fri, 13 Nov 2026 17:13:27 -0800 (PST)
X-Received: by 2002:a05:7301:4d10:b0:377:58c0:22a7 with SMTP id 5a478bee46e88-379655d4493mr3179154eec.6.1794618807286;
        Fri, 13 Nov 2026 17:13:27 -0800 (PST)
Received: from hu-krichai-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-3795378d7e5sm10952813eec.3.2026.11.13.17.13.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Nov 2026 17:13:27 -0800 (PST)
From: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
Date: Sat, 14 Nov 2026 06:43:04 +0530
Subject: [PATCH v3 2/6] dt-bindings: PCI: qcom-ep: Add QCS8300 compatible
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-Id: <20261114-monaco_ep-v3-2-7fe227cdfac0@oss.qualcomm.com>
References: <20261114-monaco_ep-v3-0-7fe227cdfac0@oss.qualcomm.com>
In-Reply-To: <20261114-monaco_ep-v3-0-7fe227cdfac0@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Helgaas <bhelgaas@google.com>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-pci@vger.kernel.org,
        Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1794618790; l=1137;
 i=krishna.chundru@oss.qualcomm.com; s=20230907; h=from:subject:message-id;
 bh=s5Y87Am6PDDfuUvVslWLtn/yo2Q7MJcUCKhSdRzo2nI=;
 b=Jk36zBCLoS8UAywAYb2ft0Os2UknwfK1EJL5/lVvHm14BbQvBzWXaiRlezKB7UMZKQQ6d8atA
 ozomEkdv8gGBRRxGGqYHEIiuIdlL9j3swKMKMRm04TlBLJa/Y2CdvER
X-Developer-Key: i=krishna.chundru@oss.qualcomm.com; a=ed25519;
 pk=10CL2pdAKFyzyOHbfSWHCD0X0my7CXxj8gJScmn1FAg=
X-Authority-Analysis: v=2.4 cv=DNgacCNb c=1 sm=1 tr=0 ts=6af7b5b9 cx=c_pps
 a=wEP8DlPgTf/vqF+yE6f9lg==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=zJRp6_cAMcgA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yx91gb_oNiZeI1HMLzn7:22
 a=EUspDBNiAAAA:8 a=AUvBg9Asf6StguVY0UIA:9 a=QEXdDO2ut3YA:10
 a=bBxd6f-gb0O0v-kibOvt:22
X-Proofpoint-ORIG-GUID: j0mEXdbCgi_5UJVAfwE7UAPyFAKGyKWD
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMTE0MDAwNCBTYWx0ZWRfX+O5hW9LpLPSb
 P5pjNePpV04LGn9rJQoLmDK3C2zE4ZiXIcfeQHsXYQjTkNZhdJzyWEMAWysLdhgdxOII+qGZodL
 SG2ITyc/JINox+ojfh3+3csuBUtoPiB2lXfVezTs0pgKUPXruStS4sj0bqeQhXdZeTehKkR4wpf
 jgxI5tXAJFT26fmq1TnVd3eBz5BLkVbO1z2vQvoQSte54Pra5qMZIc7HgPAKlC2B4kjR/FM5Xn0
 LLpksa4HYB2s5DojmLv51/ZpBfS1hHO26B0nkP2AT+3eHqzhc1ZkasF1kjvg7tkLHkK/jDF1xgA
 YrQNVIFwHz8F7FDE897T7BfJqZ721DXfM1Lc/zbHdO3SXs8U2FUkggR84eFdEFpsls82EoxTErc
 kCsqQDb3gNEPGskoZhQoRy2krV6lssllZSYx/vo/Yv8KpVQhijvTP7GDZh890Kr8UNQpY3C1S1R
 p1pYmOy6lbXEaTz1G6g==
X-Proofpoint-Spam-Info: AW1haW4tMjYxMTE0MDAwNCBTYWx0ZWRfX/oqVXqDMRLMA
 FtACHE86wZJ29c2uJ8OI+jCvMfgUxt4M3xjk4evNwUrd/GEmZaIxMG/v/+YWWsKn6gXIQMZub0F
 npTbZq5LIxSbCL1bS+NcMKzL5JspqjU=
X-Proofpoint-GUID: j0mEXdbCgi_5UJVAfwE7UAPyFAKGyKWD
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-11-13_07,2026-11-11_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 malwarescore=0 suspectscore=0 lowpriorityscore=0 phishscore=0
 impostorscore=0 priorityscore=1501 clxscore=1015 adultscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2611040001 definitions=main-2611140004
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261113_171330_157807_1515EB79 
X-CRM114-Status: GOOD (  10.18  )
X-Spam-Score: -2.8 (--)
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-16.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

The QCS8300 PCIe Endpoint controller is compatible with the SA8775P
PCIe Endpoint controller and uses the same programming model. Document
the QCS8300 compatible string and its fallback to the SA8775P
compatible.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Signed-off-by: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/pci/qcom,pcie-ep.yaml | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Documentation/devicetree/bindings/pci/qcom,pcie-ep.yaml b/Documentation/devicetree/bindings/pci/qcom,pcie-ep.yaml
index bed9a40b186b..1ed0b97f883c 100644
--- a/Documentation/devicetree/bindings/pci/qcom,pcie-ep.yaml
+++ b/Documentation/devicetree/bindings/pci/qcom,pcie-ep.yaml
@@ -17,6 +17,10 @@ properties:
           - qcom,sar2130p-pcie-ep
           - qcom,sdx55-pcie-ep
           - qcom,sm8450-pcie-ep
+      - items:
+          - enum:
+              - qcom,qcs8300-pcie-ep
+          - const: qcom,sa8775p-pcie-ep
       - items:
           - const: qcom,sdx65-pcie-ep
           - const: qcom,sdx55-pcie-ep

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
