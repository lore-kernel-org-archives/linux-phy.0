Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A0CACCD4F3D
	for <linux-phy@archiver.kernel.org>; Thu, 21 May 2026 14:05:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ostwTp4WnFafFKLNsh00kVn307at39Y0aohLYDNZhlQ=; b=chaBpQnXZC0xsI
	K4r85j7NqSXia6F+Ig4q2HBxNPSSLD+/1l+J/vkQOOIMA9aUB2QGqvN1+IJRN4bQQdW8LFBmCPiHG
	v+cIxMGeYjy8VlN8gEjCgz/UANTGuv2shokv+NTedP/FYmCIZlz3pwO51X+tJOekQQC2a7IkPGrZR
	x4PayyFTB5PsTD0Z3+hSHMMwIwWqgr0Zu2itwsbjEiqznb5BqNaXz2xWK6YGowdYO/Al/14gRnxIE
	Xccd5i0CSEjUvS+4+X68D8SGUk9PEsyoUh2yQJ0kxVvMfLTGdPla1DDuZFinq2TzHiO/CDZcapQfR
	577NCzUOYdlJVexaxCvA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wQ420-00000007zKn-1OEq;
	Thu, 21 May 2026 14:05:48 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wQ41x-00000007zJI-1320
	for linux-phy@lists.infradead.org;
	Thu, 21 May 2026 14:05:46 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 64L9A0163451693
	for <linux-phy@lists.infradead.org>; Thu, 21 May 2026 14:05:44 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	tBXAWZECTs9zCB3OOnIv5aEKvZbVHrbIaT3BzM/Uzmg=; b=dDCUR1S2whpce1WZ
	cNEYn5+Vs+kK+HSixnqYMFsCMZjdXwOLG7Ja/yAJPVQ7gUTcX3IPCiVyGQ1dAE1x
	TtCWF9uGbIgVlLpHbgGV8QtwbVH7waZj84myb2l1/MfD3efon2vDKZ8o3QA5KwHS
	mC5rRtCxdC77VQljiZvu2EBJDJM/5IozRvAj/cvUmefKy3IHmLXlhuwGuq/uEymI
	iIgn+PHaXwyiGFiRUkYZMJAeokqHZzXZrQmuUoLFzJbNwHJq9qGBTq1T3YUhJE5s
	6Iccc5Mi7Rq15lli0zgt4FpRWFvFR6lYhZr/nSr15cMe3rJ8qabpKnWM0u/ZD9a+
	3JVYyA==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4e9y1h96ra-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 21 May 2026 14:05:44 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-2b4530a90fdso108657325ad.1
        for <linux-phy@lists.infradead.org>; Thu, 21 May 2026 07:05:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1779372343; x=1779977143; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=tBXAWZECTs9zCB3OOnIv5aEKvZbVHrbIaT3BzM/Uzmg=;
        b=K6cp01gPRawzJwgAq86r38dUIXzDep6XKswPNpTjTC2aLTPYItDFFada2NO/4UaSff
         IeD50hmO7/ecnJXZbXOM/gl67+w+1HWAFrBwIbLtVGa5lQuT+VfWbMkfcIR+1dun78Me
         hCUwGbTfmgh3XQtNLAIB3BXRs5mTq0DR9dOm+oKRTYf6EX1gvGKaEmGMVhoeQmaN80iX
         8JozdRcxvjOESvbL9+sUoGzwNilMjD29wa16s8VHamvxt0BFFe/roYGiQq3sxH8bp5+P
         bAizyQRRH8Aj/UJv0DHZ8eSJ7P99BLswxv6B2udEk4Z0hstHBd6W+yJdEHSylDwGEifU
         7zgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779372343; x=1779977143;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=tBXAWZECTs9zCB3OOnIv5aEKvZbVHrbIaT3BzM/Uzmg=;
        b=kWS8kLrC9y2NFgd4eotqLzOobVwQuzky+Hnm+DqVXUH0l0uIpAOuNEI+oq7mC8QT+v
         hKPADVyrzT7ShsSMBdOB8gufI5ReMhnvxjxcsWMB7SUXn8gERNeyON7p7CALIYo6BrRR
         V0d6Px44ldv/fI/3QZ9OGKbo69keAQfElwsaVSM4RrJXDZ/G9459Nc2WC0jyz3o4Sa5C
         l53zxPpg+NuT/MEQEYISALqnK7347SCDrY+rtax8L+baZVo2+g3BR77i0pqe+vUnMMI+
         H849upJwizfQQ0cYLbiu/9kTdfL71W/h925QzQYxZm93RMZckDHxt48J5xadl6usNO7s
         s2vQ==
X-Forwarded-Encrypted: i=1; AFNElJ+1dWR6nieDflPp8LmyfbxoF1tyUVD/UvpVQbwvL96oSJaDHuzc1PQrxQtY9Q8T0UJiIFRptRuCm/E=@lists.infradead.org
X-Gm-Message-State: AOJu0YzYU9sR7CEP+Q790mXuLEaYrpvw/jfj6zQXeoGciUO1FdSo7Np3
	HTPXEL0TfherdF6UZVNcoYOw9/96gOESSoSZaVp9ICoaKqPu1+ss10Nw2nBymQXl3dnq9JyeEbc
	Nd5hHkOc1/pHgEGg5v9X8Xb17bQaFkhpjoCa/LcSHWllTu41J6CSW+HYq4/9SmepUQMl/
X-Gm-Gg: Acq92OGWk9sIzAw+xGvXmkEFSIVa8AbM/3tUdGwVdbjgvanECxELjvajKgEB5CZ0P4Q
	m0W8BUsdQ6SWzYvzhY9mMhfmUrz3F+ucSDnofMMfJjdNhiOceFkoIGESXOB2VwFMuk/pm9tVM8S
	utDvFG2gcoSFXoL8vdPleuDHxdIN1QCF+m5yIrq7g6q1Xo1cFLoi1kriSO/Gk9Vrzd41JviAV9y
	3YjAC458eQHmDMgNvpFgHwzHYvSXpxpnCQZ1Wghp2q0lhkJcl2j5i2TBYf8b06QY/kBrFI0zbue
	OxiDQ44ScoVXwSM6m68X6eY3I21iMlYIykekeWJdLar9b9Y5BAzfPvrTNcd6Na0iqbCfDaniXOS
	rYV4PDlMKkWKeaPGw31S+lvltl8Yk/UNgQMgLbheFgVGDGJs7HF0gYDUH
X-Received: by 2002:a17:903:22cf:b0:2ba:67f7:9326 with SMTP id d9443c01a7336-2bea32d6533mr38072575ad.9.1779372343110;
        Thu, 21 May 2026 07:05:43 -0700 (PDT)
X-Received: by 2002:a17:903:22cf:b0:2ba:67f7:9326 with SMTP id d9443c01a7336-2bea32d6533mr38071745ad.9.1779372342594;
        Thu, 21 May 2026 07:05:42 -0700 (PDT)
Received: from hu-krichai-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2bea9287997sm13189765ad.24.2026.05.21.07.05.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 21 May 2026 07:05:42 -0700 (PDT)
From: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
Date: Thu, 21 May 2026 19:35:29 +0530
Subject: [PATCH 1/4] dt-bindings: phy: sc8280xp-qmp-pcie: Document Eliza
 PCIe phy
MIME-Version: 1.0
Message-Id: <20260521-eliza-v1-1-97cdbe88389d@oss.qualcomm.com>
References: <20260521-eliza-v1-0-97cdbe88389d@oss.qualcomm.com>
In-Reply-To: <20260521-eliza-v1-0-97cdbe88389d@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Bjorn Helgaas <bhelgaas@google.com>,
        Bjorn Andersson <andersson@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-pci@vger.kernel.org,
        Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1779372332; l=1633;
 i=krishna.chundru@oss.qualcomm.com; s=20230907; h=from:subject:message-id;
 bh=T1cHgOb4bgW2eV3uJml/ti2NY20U+dRj49Yj4ei61XE=;
 b=Gkf0gTysOQtdevEdDsBCBsoJ+0wBR7RkP+jTDA8q8iw5Xl0H2tvsBGXp7H0FL9HxJF+R6sc0I
 q/SUL2SvQSkBeTvy17Fm2+aVoG+skNSEp18vLdAAt/E1e9sNT4YT+yl
X-Developer-Key: i=krishna.chundru@oss.qualcomm.com; a=ed25519;
 pk=10CL2pdAKFyzyOHbfSWHCD0X0my7CXxj8gJScmn1FAg=
X-Proofpoint-ORIG-GUID: 5T718k1fsXd27gfSbLJog5yzcl7L-7Cj
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNTIxMDE0MSBTYWx0ZWRfX5wlWksrxNmL0
 pgh1/E1ijC8sTpIBduLWCrv0HwSOdU0ffkyHeVzXe5zBM1+eVPqqL30IaUyyyOBEEdmN3wArgnA
 8Csnk1WVpyVsJQonm3CYEQdTdEAbKz1KRFMm97Le0RuzwbayCwrPNoWqbwrOARccmyoExwZPCCJ
 V8o0Yihz/O8uE2yRol+ITZ8TQN4dBQBmXN/iElZkEgkP7UfkGOypkLKz7EdxoYv9fh+o8IliBeb
 cgiVC6GQctOlreTc2cbem4MtGDFfUZeGEXeEQEI05uulbM1IGgWXVJC1AqgTxPXD/cVZrA9oTz/
 wmVzUEVcQxZDXIyKmK440/S3OQplELmEDv9g3u4M4lJ6214lw0H/+vYnZWbib0yJ2cqH2/9yE9e
 WgY/HYaG+YQdZqX3ka03NEMYs0fyEFaQfDLoBy2q07cjroatjvgT7oJs84pYGTQ8Phom3PErTXf
 CAlw//1FkwycEma4T4Q==
X-Authority-Analysis: v=2.4 cv=YfyNIQRf c=1 sm=1 tr=0 ts=6a0f1138 cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=NGcC8JguVDcA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=3WHJM1ZQz_JShphwDgj5:22
 a=EUspDBNiAAAA:8 a=d5_U1CTwwdyySJRbjq4A:9 a=QEXdDO2ut3YA:10
 a=uG9DUKGECoFWVXl0Dc02:22
X-Proofpoint-GUID: 5T718k1fsXd27gfSbLJog5yzcl7L-7Cj
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-05-21_02,2026-05-18_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 bulkscore=0 priorityscore=1501 impostorscore=0 phishscore=0
 lowpriorityscore=0 adultscore=0 suspectscore=0 clxscore=1015 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2605130000 definitions=main-2605210141
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260521_070545_412927_284E6A53 
X-CRM114-Status: UNSURE (   9.58  )
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

Add compatibles for the Eliza PCIe QMP PHY's, which supports Gen3x1 and
Gen3x2 configurations.

Signed-off-by: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
---
 .../devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml         | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
index 3a35120a77ec..be4bbc327982 100644
--- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
@@ -16,6 +16,8 @@ description:
 properties:
   compatible:
     enum:
+      - qcom,eliza-qmp-gen3x1-pcie-phy
+      - qcom,eliza-qmp-gen3x2-pcie-phy
       - qcom,glymur-qmp-gen4x2-pcie-phy
       - qcom,glymur-qmp-gen5x4-pcie-phy
       - qcom,kaanapali-qmp-gen3x2-pcie-phy
@@ -181,6 +183,8 @@ allOf:
         compatible:
           contains:
             enum:
+              - qcom,eliza-qmp-gen3x1-pcie-phy
+              - qcom,eliza-qmp-gen3x2-pcie-phy
               - qcom,glymur-qmp-gen4x2-pcie-phy
               - qcom,glymur-qmp-gen5x4-pcie-phy
               - qcom,qcs8300-qmp-gen4x2-pcie-phy
@@ -206,6 +210,8 @@ allOf:
         compatible:
           contains:
             enum:
+              - qcom,eliza-qmp-gen3x1-pcie-phy
+              - qcom,eliza-qmp-gen3x2-pcie-phy
               - qcom,glymur-qmp-gen4x2-pcie-phy
               - qcom,glymur-qmp-gen5x4-pcie-phy
               - qcom,kaanapali-qmp-gen3x2-pcie-phy

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
