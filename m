Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8F2F0CA0EE6
	for <linux-phy@archiver.kernel.org>; Tue, 19 Aug 2025 11:36:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Lt7L0jl6rGXeJT1eVncfDhOZVlWuiuUHDCcqz6vmzZw=; b=Li9Py/rVlkOAUO
	pJBp+0JWUbkF1ULVVRsrF2G5CfUJejC1S/AY2MQMKeX+49Bnvy1AcNc2Yq6UIt2/cMJ19mKHBUe0G
	E0IRZp8WExtK8uVCLgmW0SP1i6UbhiZi0Xg1UWKR9XuMyx0JnsfwOJ7VBFpIXRBDf1ZS4pdb7LFPz
	dkl+wsjf/2r48fgiC+9sXMYI9drlgQt5to6lyvEPEFdM7Gj06uT8Cxa1lDY5EKvvy/o3ZPU5cbzf8
	FJ0LVtEpsbMh+TyqVHbY2YXJeyfY2DNcd1KOs4lnHihKRwFHDcfJalpngz+oj6TIfp8nfs9EZo8Rv
	fR2WYnW0D3D+Rj1HoShQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uoKdU-0000000AIug-1BPa;
	Tue, 19 Aug 2025 11:36:16 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uoJ1M-0000000A2AW-3rap
	for linux-phy@lists.infradead.org;
	Tue, 19 Aug 2025 09:52:50 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57J90jqR023565
	for <linux-phy@lists.infradead.org>; Tue, 19 Aug 2025 09:52:48 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	4HB2uUgg4ObiGLYTjYfuAXBTtDoOjkuI+b7+MZ1F1B4=; b=D3aZM1X4B+HF/L/z
	KdsFIuNEcRM8a/tWk2IWn+TNS7sPwOBYXWwMMnIhoqF4frlheK3Vw8EFA5G3nBfP
	/oTv+FierlwtsDUhX8inf+frGxFiVp0wscVHwuVwBCiI87YcV8mnVHw52R2erMcB
	SgdzCOKpreAXtIDwIjm5QrUQhTYPbj+ynliQIkBOtgSxdVvXMZWAfSSqEp4b5W42
	GBtHFkkPMN1RyHc0b3HrKRDn5cQq/tpf7lOjuTqQBpm1en3qBIDKF4mhm8WD5v05
	6swlUG0cjB6DMOEbOmZfum8jidMEJd5T7ORy+QDDufAzito3Iz7NROtM/82EKs1C
	c/YK4g==
Received: from mail-pg1-f200.google.com (mail-pg1-f200.google.com [209.85.215.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48m62vk10f-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 19 Aug 2025 09:52:47 +0000 (GMT)
Received: by mail-pg1-f200.google.com with SMTP id 41be03b00d2f7-b47156acca5so4192522a12.0
        for <linux-phy@lists.infradead.org>; Tue, 19 Aug 2025 02:52:47 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755597167; x=1756201967;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=4HB2uUgg4ObiGLYTjYfuAXBTtDoOjkuI+b7+MZ1F1B4=;
        b=adalV7BeXr3Lq8ifYFaMNJGGu0HDFOF152vJYjx2S9nMK5BVNwEJWOvgw4xkZEQgwm
         fD0NispS6JzVGEZI2hgJ3cff1jJc0smPKIO+O6knMSbjsBxzwQbyIYajYLyGZ63DCyrm
         zQ+sfCHpBXuW0T00tLIRfiJK4uypEeFeQpy4ttKaIP8n7gvRSjvXXJ+VpHV6gIBU6ref
         Uq8YRyQoDWEryNvTRZ/3Laz4jOLSGuyHGTcy/wqPzb9aS+bhWNBpnwp6GFsvyE4FvZli
         xRNokdpw7QTCR4Qkg6Eu3BJZVQBFOz/AAg4Shb586YUCZ2tjc4rgsnAKrdY29XkfSxY0
         zgPQ==
X-Forwarded-Encrypted: i=1; AJvYcCX6PNonahu4KWOc38QvbOjlXFS6muwa1otIdGpzjgVe05cwuAUuzSlF8yruKcWweY8YLjACT2GCoxg=@lists.infradead.org
X-Gm-Message-State: AOJu0YzecU292Iax8ZGtg/PMSqnq8FJBc1RdtsCBb5C8SlhuqSsiIaT5
	HKkA2UqubKkyheF1+QF7IcmeKaew9Wn2wo2L2vwX+BY1rvt38ClKISeFYMxgGUCsxP3RqoCdPti
	h//9G5ehC6njjMFAee0mKWi7cSEISY7Fwf1VZw5OIPsO8D9q5nqfklUbOJSGloEFye736
X-Gm-Gg: ASbGnctkisVszfPHuqRP02e49qHa622l46nNnv/bJs8LVNvJlXofWgdgVi1MFxddwCP
	jMoDX3CXuuP5ts8tDZWz1tXJUks9u5stzJV8Y15a4E4bCD27tejbF9T3BXCbY6DkYI1yCCmz51+
	3DfmdKx8a4qc8SEFjKVtXZZ8oc05NxOq5LQtQvWgBGPjX1nhTjLB13cFGJH3/sx/fHZbHxLeKDa
	LPYRhCTsJ+8hcVZ7tbIXWlcIRTtxEpzg+WJgMWJkOt0InXt9wzVhbkW6rgkKuRTqSEGJ37ob6sf
	j0ZbYvZp1eUh9LLBuJ6RyphIMdaSENnQ6ZG0xfR7yYXpcA07yFYWrgl15Ykt0wgOsCSa9GjDBwx
	Al4cpVb3FZUTawFo=
X-Received: by 2002:a05:6a20:9143:b0:23d:45b2:8e3c with SMTP id adf61e73a8af0-2430da566bemr2343308637.6.1755597166624;
        Tue, 19 Aug 2025 02:52:46 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGK98AH04v86DoafQcwelaWJ3iL3gQkWuwwa/UBd5s9Smm42EVUfqRGbSC923jHrqHy28a7HQ==
X-Received: by 2002:a05:6a20:9143:b0:23d:45b2:8e3c with SMTP id adf61e73a8af0-2430da566bemr2343266637.6.1755597166153;
        Tue, 19 Aug 2025 02:52:46 -0700 (PDT)
Received: from hu-wenbyao-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-76e7d4f7cf7sm1998291b3a.69.2025.08.19.02.52.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 19 Aug 2025 02:52:45 -0700 (PDT)
From: Wenbin Yao <wenbin.yao@oss.qualcomm.com>
Date: Tue, 19 Aug 2025 02:52:05 -0700
Subject: [PATCH 1/4] dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy: Document
 the Glymur QMP PCIe PHY
MIME-Version: 1.0
Message-Id: <20250819-glymur_pcie5-v1-1-2ea09f83cbb0@oss.qualcomm.com>
References: <20250819-glymur_pcie5-v1-0-2ea09f83cbb0@oss.qualcomm.com>
In-Reply-To: <20250819-glymur_pcie5-v1-0-2ea09f83cbb0@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Helgaas <bhelgaas@google.com>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-pci@vger.kernel.org, Wenbin Yao <wenbin.yao@oss.qualcomm.com>,
        konrad.dybcio@oss.qualcomm.com, qiang.yu@oss.qualcomm.com,
        Prudhvi Yarlagadda <quic_pyarlaga@quicinc.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1755597163; l=1596;
 i=wenbin.yao@oss.qualcomm.com; s=20250806; h=from:subject:message-id;
 bh=5L5bgft0hY3UL+GD99tTktGev1AZdAzNOUPNY/hYCs0=;
 b=iSxkRvwPR0upKVd4VfCSpydV5AIWuhTgF5bNTgzrmAQMKSGHkafm6fwJOSYukO+Z8sRfTNEnN
 zVYCLHdo1m5CkxFG3qY7uMnOpRWEnekdHJPHAK5A2R3t7B4Hbw1jPjd
X-Developer-Key: i=wenbin.yao@oss.qualcomm.com; a=ed25519;
 pk=nBPq+51QejLSupTaJoOMvgFbXSyRVCJexMZ+bUTG5KU=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODE4MDEzOSBTYWx0ZWRfX1fjW3hXFwlDv
 jSiEu3RlfIbqwR6MKHzjuAS7QRjuQiMYTXIV/b1anmcEP/gGmUCyF8QSiwrq4Ld/M2DupNB8o4z
 rdNkicIvt2I39Y8XnZOSx/qzkx2vxO/xU1nioS2P9hdOJ4zTucUh5lX54Sh0BpfjArwrxWgZCG8
 J7zSmu8bnucZbg8kCul3FdxUI/3hL5FsxwgOeIEqQc0rDhePoeW5CqhV5epCvoF38nIgt5iEl9V
 JXYjUqpa5npTEWEdZFGlRwY808PyPIig9kVQtPKzzH2o3tUujyyl2jWZ/0NnfIAeTMdeSuNqGtp
 RwtXxWde/FkWlDd6HirJCnLV81UfR7fNdf+z1igmfAmwBy9aBc/dZ7Piz/w9BoL8S22Ij6OvGwy
 33q394cL
X-Proofpoint-GUID: ttRx9Q2Tnuj2KTVZgOEQAbv5MUDsCjhC
X-Authority-Analysis: v=2.4 cv=A4tsP7WG c=1 sm=1 tr=0 ts=68a4496f cx=c_pps
 a=oF/VQ+ItUULfLr/lQ2/icg==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8
 a=prgL3jgsdPShhDvlN2UA:9 a=QEXdDO2ut3YA:10 a=3WC7DwWrALyhR5TkjVHa:22
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-ORIG-GUID: ttRx9Q2Tnuj2KTVZgOEQAbv5MUDsCjhC
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-19_01,2025-08-14_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 phishscore=0 adultscore=0 malwarescore=0 bulkscore=0
 spamscore=0 impostorscore=0 priorityscore=1501 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508180139
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250819_025249_080456_AE6B6BFD 
X-CRM114-Status: GOOD (  10.80  )
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

From: Prudhvi Yarlagadda <quic_pyarlaga@quicinc.com>

The fifth PCIe instance on Glymur has a Gen5 4-lane PHY. Document it as a
separate compatible.

Signed-off-by: Prudhvi Yarlagadda <quic_pyarlaga@quicinc.com>
Signed-off-by: Wenbin Yao <wenbin.yao@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
index b6f140bf5b3b2f79b5c96e591ec0edb76cd45fa5..61e0e2f7ec7f9cb08447e4cd9503698c0a2d383a 100644
--- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
@@ -16,6 +16,7 @@ description:
 properties:
   compatible:
     enum:
+      - qcom,glymur-qmp-gen5x4-pcie-phy
       - qcom,qcs615-qmp-gen3x1-pcie-phy
       - qcom,qcs8300-qmp-gen4x2-pcie-phy
       - qcom,sa8775p-qmp-gen4x2-pcie-phy
@@ -176,6 +177,7 @@ allOf:
         compatible:
           contains:
             enum:
+              - qcom,glymur-qmp-gen5x4-pcie-phy
               - qcom,sa8775p-qmp-gen4x2-pcie-phy
               - qcom,sa8775p-qmp-gen4x4-pcie-phy
               - qcom,sc8280xp-qmp-gen3x1-pcie-phy
@@ -211,6 +213,7 @@ allOf:
         compatible:
           contains:
             enum:
+              - qcom,glymur-qmp-gen5x4-pcie-phy
               - qcom,sm8550-qmp-gen4x2-pcie-phy
               - qcom,sm8650-qmp-gen4x2-pcie-phy
               - qcom,x1e80100-qmp-gen4x2-pcie-phy

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
