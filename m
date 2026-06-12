Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 310E0CD98CE
	for <linux-phy@archiver.kernel.org>; Fri, 12 Jun 2026 17:27:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+wsHxLtApv+SxZOiCCv5n9g1D/NO2SHnfLtmT2NC3UY=; b=3I9aaDeW2Gxhg1
	5S3+FuFBjKuHc2nV2IILeRHvXzWCPn/gpbK+c4ZZbZnlQHNd3ID2c1dq9z8/w0/olNQsGDdvAI+ON
	n8229E3G2aeyC/aOWWYDirgA8XxWQ8/eA9Oqotbyf85tHsshETY9ztot3yZYtBvyZQBsqdiRaXVxR
	6wM5iEwOZUnj9oFEmLxNQNfbUAc8d5q2cewQqwa8ALM+1FJoBwUkISRWVj4o9i44y7Pbsp+3t3fDr
	Zd9BuEML6Y3eua/biD82szxpLlUd9TuhQblycM4++PGMZazYCsQk+7539KEVMEkunzFSnOxym3r0Y
	R+Jr4RlqTMuRF52q1UAQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wY5fi-0000000BLgm-0aLo;
	Fri, 12 Jun 2026 17:27:58 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wY5fg-0000000BLg4-01Sc
	for linux-phy@lists.infradead.org;
	Fri, 12 Jun 2026 17:27:57 +0000
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 65CGVeWQ4112816
	for <linux-phy@lists.infradead.org>; Fri, 12 Jun 2026 17:27:55 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	0B3aL8wANNFMcgo2EUByGJXGvJUE1R3H+briV1PRdNw=; b=S8i5Wr47700KpzIG
	cp/cdtfK0IUskhEYqG4UEm4ShwaFYiJIFzMfif06v/xIx8d9evwFsWeNGlnckidX
	VRsZXxmOcpVKoI8GJP1iRhCNCKqSrVlqZc/Nzpi5Irpvf1C99Ff9ixoRduVGIgrG
	wSP0H4Zs2jDvMFeL2VlyHTKdPf+6S6ftDEjaAOxO6DwbLcgg5/dN5YfnUtmr8RET
	+zDJUmLZKfQKK0j12mvbbkTmC3eAG7RHVpFlacZzOqnymgUEjph3W2z2yhqKyx9R
	iGwqKblizRlawLJTCOXKqLmpLr+q9rEnUPiqfSvL2NHwwdoVAUb0PUHBywgLehcJ
	edkYbA==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4er30gbuv8-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 12 Jun 2026 17:27:54 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-2bf3636d6c0so12479195ad.2
        for <linux-phy@lists.infradead.org>; Fri, 12 Jun 2026 10:27:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1781285274; x=1781890074; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=0B3aL8wANNFMcgo2EUByGJXGvJUE1R3H+briV1PRdNw=;
        b=QqSPi9ANtz8O6vLpRlV5Ey9YAgKjXGZrqou3S5hrKYQjHWStKBS3NAfIWjQaDTamCI
         cG9/JA2u/fu2oV6dhvg00vnkrSZVUSBqk/r/ThSTj6o271RIaNFYQLj/WqH8fbNwlS9q
         3/cEBbcDVspvES8bkN0Yyu+2KlJhlUc4Gmh8+w892o99tvvCKmWlQVPc/DNtqINuBsYj
         IbYGU7T3xzuY3dogOat4W8VViOJvJWWCLHGj6CpueHLvF4weEijiWJ2xFkzY8CcOfitw
         Jpo68Vu97s1+guyh6wXJOW0xlsmbSMQwKB5kps5wi+vYU2LVT6UYj1X04hgQzj+x7TA7
         cfpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781285274; x=1781890074;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=0B3aL8wANNFMcgo2EUByGJXGvJUE1R3H+briV1PRdNw=;
        b=D3zZA24Dxm42IC+XhN8OYi0758JuT1ZUg/IoA3dQbCyPR2NkXL43iQafg+doKDrBKs
         Zv/qVYNBn7bfulglIAOBK8uVmkz4VIbwI84vAF7Gp+h539zePYaxPtyaAhvKuTlxz/mV
         5jMlQM/0yRkPIGfmnGVtkbMOFrtrwvOFwW8TLw0gsa+D/VGJwV7sw8ZnOi4MKEqAjRkY
         3D0PqEw0yQzPCJki4kM7siAo2ognb4L7/bLyidojitZuWr8gevnWNmH2wWOiJhg51pFZ
         2t2jyXVeBl68leKEEiwZzblJaxKqXBcHmwfz2ds4tgAnI4P4SzerqCoQqBhgb1FC/Pi7
         LjRg==
X-Forwarded-Encrypted: i=1; AFNElJ9aqMFsVX5a8fB3X+luM/PM3uXpxASlJy+YkcCiQ36zcfiRrtbeaaFwKjDCvoPSmBapoWn7C1B68+M=@lists.infradead.org
X-Gm-Message-State: AOJu0YyIf6VIfuvX6O0UPCTi4UazyHbYGrxa8x9xDgKvGwKgnNVNiSVD
	JdiiSKAgIAfsyKINCbe9HwCdkcgRaX9H53692tekvWu6HnOC23y0i4D8DKf/1XJ7DGfzD4SjD+j
	OkSUI/IANJ/zVg6IvuFFeN4mhK/lzQ+RNYEKIvIW3QUX1mZY3WzhkmFKRTCIHbwY0+kfCcBedv0
	1F
X-Gm-Gg: Acq92OHCmGNBdiln3i/ERb8XVMZgue0/vjv1IN647W79225FOWTR3LnS2kfkLrGZti4
	/yN1ta8HdmuDzA6wyQqQfwCk4lAQd8SKDyRvmV+Bbzo0I42NxYL65LmKhRORcdYPxaFWDqDVep1
	S+qyjfCfYC1n9OurIunipfV50ywNOwP1Aq0ndao3pnlR6zv6gMagfJ1NB/TwyVkW6FD7GAyAu6b
	ysRCS0osObc2l3hrIJPWoA0B7hGdpaxO4ViWJ7S/GpWZCEDw0isq7N8eeDDNIZtKAjvEGC/IBbS
	R1rvhkyS7eKQCtGLGoKZ2aojVJmDgf05YWftJhGzabRQ1OYGATTPQPeXWDcrcs0Dja/Ml1qZv+m
	sHt9q7JmZs2+OAkhRsrJkVb0cch83WPdwG4qY
X-Received: by 2002:a17:903:2341:b0:2c0:af09:f3d9 with SMTP id d9443c01a7336-2c4136e38dbmr45137695ad.36.1781285274035;
        Fri, 12 Jun 2026 10:27:54 -0700 (PDT)
X-Received: by 2002:a17:903:2341:b0:2c0:af09:f3d9 with SMTP id d9443c01a7336-2c4136e38dbmr45137545ad.36.1781285273578;
        Fri, 12 Jun 2026 10:27:53 -0700 (PDT)
Received: from [10.213.101.118] ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2c4327acae2sm24278105ad.52.2026.06.12.10.27.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 12 Jun 2026 10:27:53 -0700 (PDT)
From: Komal Bajaj <komal.bajaj@oss.qualcomm.com>
Date: Fri, 12 Jun 2026 22:57:37 +0530
Subject: [PATCH v6 1/5] dt-bindings: arm: qcom: Document Shikra and its EVK
 boards
MIME-Version: 1.0
Message-Id: <20260612-shikra-dt-v6-1-6b6cb58db477@oss.qualcomm.com>
References: <20260612-shikra-dt-v6-0-6b6cb58db477@oss.qualcomm.com>
In-Reply-To: <20260612-shikra-dt-v6-0-6b6cb58db477@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>, Ulf Hansson <ulfh@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-mmc@vger.kernel.org, monish.chunara@oss.qualcomm.com,
        Komal Bajaj <komal.bajaj@oss.qualcomm.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1781285260; l=1818;
 i=komal.bajaj@oss.qualcomm.com; s=20250710; h=from:subject:message-id;
 bh=7BvGgsMzIym3cFm938zERz/XKsgQcAutut856Vu3XHQ=;
 b=u6nbiWUBsu6TxrfPJwAk9JiZJQBGrhvswgZqlmEjggQJYKOmEHyj3ViLkUguSgSupnYFN8aAH
 qeOF8AtuGgiD5LTNhnnXgqdnaNJwvJfgXSSnPjzLd6adzxtvOMhZrA6
X-Developer-Key: i=komal.bajaj@oss.qualcomm.com; a=ed25519;
 pk=wKh8mgDh+ePUZ4IIvpBhQOqf16/KvuQHvSvHK20LXNU=
X-Proofpoint-Spam-Info: AW1haW4tMjYwNjEyMDE2MiBTYWx0ZWRfX8PA7Dpf0d2/B
 lXDz1iG15go+UvxqH7Y73WtDFZwHBMFjcWaXAjwAlPs/ZdxT4e4EAS4sknCcBpBUH15uEJ+oGQH
 GklwHS/FyLsEW79asdHcxbJ9SwWQllE=
X-Proofpoint-GUID: qb0PrZIQToTlGTbhwdHL-dybMYikL88K
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNjEyMDE2MiBTYWx0ZWRfX+jQOw9TEY+5e
 zipfmU8qankBE1e8G+PtC9g9E9W6iccSqwZlyQc7cg/LPjTH21imTm/fRLwvO46xcNDPLJ7M6k7
 b4SQOPH3lICcO+6Gt8+ZL1ojwZ6XG+N8c5T/FgS/9AcLadtgx7dagvMmKzWgsdmnueqKMaVKTsr
 N+sK/ObVDrj/Y7Mu4J9EYmEhiN5y2PTOlPTWogkOjuplPAZNEUNRMXJYfOEbR3mzY7WedgLJT5V
 Pkc3pN5dxkpf2o21Dgs1gcR2HtwEzmPqHXfPKjd6D7BR9ksmWivb1TSCytQAxBa6L3mZgacHZNp
 Tr3Bkm2dzkqPVFZjAn8DDO2xhT/WZ9F5xNnS80VFiKSViAtFYrqSbVKVp1wIBmsUl5zbJuBxwmK
 yzYyNbzBk7IwO0gbBhIKQoYiS4IGlqKfQmLbNuDjtwacYtBZmbTlyLR5F3R72RdF3Y00/u/8nSF
 xxbPYsl3zHQ3eY5r7tw==
X-Authority-Analysis: v=2.4 cv=evnvCIpX c=1 sm=1 tr=0 ts=6a2c419a cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=FelO9ux0wxsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=ZpdpYltYx_vBUK5n70dp:22
 a=EUspDBNiAAAA:8 a=nhUW8Zqzme2qF2hNOrkA:9 a=QEXdDO2ut3YA:10
 a=1OuFwYUASf3TG4hYMiVC:22
X-Proofpoint-ORIG-GUID: qb0PrZIQToTlGTbhwdHL-dybMYikL88K
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-06-12_02,2026-06-12_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 suspectscore=0 bulkscore=0 priorityscore=1501 phishscore=0
 spamscore=0 impostorscore=0 malwarescore=0 adultscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606040000 definitions=main-2606120162
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260612_102756_174734_098CE651 
X-CRM114-Status: GOOD (  10.28  )
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

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
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
