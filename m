Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9F004CCD184
	for <linux-phy@archiver.kernel.org>; Sat, 18 Oct 2025 01:33:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0vgKe3xZh0HLQSAbkDqWldMOOzY+8h71f9FVAiMNZFM=; b=kKHT1fjRlGqYTR
	pdQk0FaaZwmNaY1E44eb8klGNlE/E0JVxmOKOleCGbMr0L0eDIJheki01bzNNtnuJPEhUosD9/Uja
	6K/eUBK1/hLbtfP3njCYnyDl5PosE6G7Ac0qiZWEzvjA3ur7L8BbT8u9OTcVPuvbHQDq5n+q3SA5w
	/dTNR8TXM5sEGx98+/rU0OC+rgC1LbsHhHt5WJ2olegXj3makLoRbH+Ga5UdOzCr1PMj5CUP93NHf
	s8t1wV4ncmIeTf1p6mbyKRK6BMYHgTg/npMOoMedp59Jjmt3HWX6XiPKixKktyoRITBemDBHphVYc
	TLBkSgTLWENPCyk/CHIw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v9vpO-00000009KEN-1gYb;
	Sat, 18 Oct 2025 01:33:50 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v9vpM-00000009KDK-2I8C
	for linux-phy@lists.infradead.org;
	Sat, 18 Oct 2025 01:33:49 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59HJGgHU016064
	for <linux-phy@lists.infradead.org>; Sat, 18 Oct 2025 01:33:47 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	JKHfuVsy+oceJ8iDUBL9LmTN7OlbK4Cqz9zKDF8RHcY=; b=ISBtsi1raIQvBuPy
	a/0azRHlBDi8E3xun+fkzWu0lQkHAF+Dxv4STbBlVGm1cWpqWVlYJMm+AaqJM8FE
	4Tpj+PL2SVmtcv841bwWH2tgtdjo32kZHzFW4UOQaVgO2v5YR6GLHKTECzjyaqzP
	qbEi1GUgYIdLT3PfSnStvnq1rVxKACL1wfogW0cmlRl52ECie7Ud8wVZ+kIzhhd6
	pRwOaz88B2IdF0i9Z4Hrpz8GimQB6BLl9T/P0cMMJMvAeIF3z1WTs8J8VwqKhZZC
	tzrivNzF/Ih/brckHDDcKgTNSy0Rvn7btZj/GLDFlG7RdWNIb3CU0/Ii7jbrlK7f
	WDkkQw==
Received: from mail-pj1-f71.google.com (mail-pj1-f71.google.com [209.85.216.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49sua8vwy5-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Sat, 18 Oct 2025 01:33:47 +0000 (GMT)
Received: by mail-pj1-f71.google.com with SMTP id 98e67ed59e1d1-336b646768eso2849456a91.1
        for <linux-phy@lists.infradead.org>; Fri, 17 Oct 2025 18:33:47 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760751226; x=1761356026;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=JKHfuVsy+oceJ8iDUBL9LmTN7OlbK4Cqz9zKDF8RHcY=;
        b=vZScpH33u5FQzUq3RBBCLepB0XxI3RZRLRxsXy0AR0Wguj5le/x1uO6rqDt7LQ/637
         6f+qKb2Dy273sNDla5CWe50KwkIN8Vkz0HysqEYyGlfQPjq5FsrLOwrXUxiEn/FA04Q4
         CvyOwEkA2zaURGiRMdH3cELTJ3ysa9IQv0WPIE/oukS1a42TJRVlmWUOiZOiN01iUm3f
         NfGl5MIu1nX/HaOZwhZs2f6DIP3G/xwkEgM1u2/LJb/vgAUEZZKscyFBppZzI8efEkJk
         0fA0FFD/T9dkM3w70ovs71rpGfao7C7beiPMERaUAcia0MAIpg7AR52JYDvEp5/s8+OU
         hWaA==
X-Forwarded-Encrypted: i=1; AJvYcCXzfaLIt5dH43YLm3gwsUt/bm0CyF4+SXdUBItHJI6POUBb+hel1AaDIH8dYLEm6MknFiHeIjqTAVk=@lists.infradead.org
X-Gm-Message-State: AOJu0YyhI43jVLpsQiTn+daRHKuNG3OVTzxqhT5CNNUFtsABqWYTnJ5s
	Yvuf3MrY1KVSpIhrsT+jyUTbQmWtmN3K+ce+Hp9V7XhpfL9Q9OQfWCu8OKqRWhRxtGr4H5xM2jg
	NdjgMn2krS2HKqVfxETd6rjBIgiHwaB/4puPfKuved/eMn2nfL86GY1eV4plK/79/3JE4LQ45Rn
	IbksKs2g==
X-Gm-Gg: ASbGncsMlkxCFdIZrz6Izid8WC+v8JrXuDYS4/R2kI+e2v/l35L9hZn9oxpolNmCoVI
	xbLRytY6nPGb/89Rd0BR1lBrczRpG6rJ6jw3RyMPNb8NjjiJadAmPD/HEwgIcgMjOV5qNegMdub
	XU+6sO0SfEtzvkDJ78P5Nz6CegZ2qlj3ygKYXr3FaRhmyeWZPZYDvUTheqLm2TggBOMj7pIa9kw
	RlaIPtKpdwc/9kONRj0eUjmH8ix7N9HEq5oWlh1W6f52QV0oBBGXcXTerW8sl0PqR+drUFJlzCQ
	a1j+Y/sXCObiW2d44mXvzg5mTDDQodIT5pb+/kl9KubIzH4eNx3RNAZVmHaz84ym7MdSsO6APqp
	Qy9sks/hw/k4Ma9rrgyELEwOE8txT+e96Ir2ZUnwlVw4U8A==
X-Received: by 2002:a17:90b:4c48:b0:32e:d9db:7a86 with SMTP id 98e67ed59e1d1-33bcf85313bmr7318086a91.7.1760751226002;
        Fri, 17 Oct 2025 18:33:46 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGCLJHcffGnBNSb1uIKAURYiSRJBdo8k5B6+vXHyLSCH9P8q78ibRunDV+Bq0HRBxM8f0QGsA==
X-Received: by 2002:a17:90b:4c48:b0:32e:d9db:7a86 with SMTP id 98e67ed59e1d1-33bcf85313bmr7318051a91.7.1760751225561;
        Fri, 17 Oct 2025 18:33:45 -0700 (PDT)
Received: from hu-qianyu-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-33d5ddf16bcsm791695a91.4.2025.10.17.18.33.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 17 Oct 2025 18:33:45 -0700 (PDT)
From: Qiang Yu <qiang.yu@oss.qualcomm.com>
Date: Fri, 17 Oct 2025 18:33:39 -0700
Subject: [PATCH v5 2/6] dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy:
 Document the Glymur QMP PCIe Gen4 2-lane PHY
MIME-Version: 1.0
Message-Id: <20251017-glymur_pcie-v5-2-82d0c4bd402b@oss.qualcomm.com>
References: <20251017-glymur_pcie-v5-0-82d0c4bd402b@oss.qualcomm.com>
In-Reply-To: <20251017-glymur_pcie-v5-0-82d0c4bd402b@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
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
        linux-pci@vger.kernel.org, Qiang Yu <qiang.yu@oss.qualcomm.com>,
        Qiang Yu <quic_qianyu@quicinc.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1760751221; l=1530;
 i=qiang.yu@oss.qualcomm.com; s=20250513; h=from:subject:message-id;
 bh=lvTnRsMiPSJ5k4uuUJ+DwrEJUHYQxAxGH4V/2h81Rsc=;
 b=58rn2PyPvlKLrWvBfarUKaCmgk8vu5L7E3vZhvNxLJ3/SZ1oHBgGJTx8qTgeCYyNgvFK+RKyZ
 f3tBW0+bzbBCzqZL2jqGRhhwuoFHKBtUmf9KBWvv2jIb/NCfvcdJi7B
X-Developer-Key: i=qiang.yu@oss.qualcomm.com; a=ed25519;
 pk=Rr94t+fykoieF1ngg/bXxEfr5KoQxeXPtYxM8fBQTAI=
X-Proofpoint-GUID: VkM3EvHo13E0akQGO0sFoGD7HjsN8MBs
X-Authority-Analysis: v=2.4 cv=e5MLiKp/ c=1 sm=1 tr=0 ts=68f2ee7b cx=c_pps
 a=UNFcQwm+pnOIJct1K4W+Mw==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8 a=G_jr2P4fny8E_LuvC7MA:9 a=QEXdDO2ut3YA:10
 a=uKXjsCUrEbL0IQVhDsJ9:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDE0MDEzNCBTYWx0ZWRfX6SsT6ENf1LW9
 8f69KFSHp1fH8glNwM5OaFZtzwHXka6Z3h9/QtZ+aq4M2/x9jHiagq7ic75GqPy2ASWt7lYwN3A
 2z/CBelUbKRDq05CAfSIQ3tu7a73QKBMWSZ5Gd3APRI2Jay82JiKZDqH6eRsMrr4nKZ1WZDiNPc
 9YTiJZnzfPL1soZ4SCrBMQdg+ZWdGTObyHU3DcjAoI1V/tGLbS0cO1OEXmb1oscjOoTQLE/opiO
 IRvn+hgB6TT1K0h2ysbKumbdbNQV+TnhO8fKHZf7BqDvZOUi9WZxaVkZKEbL16AkKWD3e2euqmG
 r2S+MzKP7QHdoya5Sot8SL88anG/iXSlK6a2bd+Ntbf8Tu2mrxAO+ZAV5Z/odqcc4Eh0FnUEyW2
 Sgwq6vHpAaVj5Zft5OqsJBYOF2HquA==
X-Proofpoint-ORIG-GUID: VkM3EvHo13E0akQGO0sFoGD7HjsN8MBs
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-18_01,2025-10-13_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 suspectscore=0 spamscore=0 adultscore=0 clxscore=1015
 priorityscore=1501 impostorscore=0 malwarescore=0 bulkscore=0
 lowpriorityscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2510020000
 definitions=main-2510140134
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251017_183348_714301_02DBC4A8 
X-CRM114-Status: UNSURE (   8.88  )
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

From: Qiang Yu <quic_qianyu@quicinc.com>

The 4th and 6th PCIe instances on Glymur have Gen4 2-lane PHY. Document it
as a separate compatible.

Signed-off-by: Qiang Yu <qiang.yu@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
index 3adeca46d9aadce103fba8e037582f29ff481357..b0d1efb84fcf5abc3fcd9146f89c903a4ec84dba 100644
--- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
@@ -16,6 +16,7 @@ description:
 properties:
   compatible:
     enum:
+      - qcom,glymur-qmp-gen4x2-pcie-phy
       - qcom,glymur-qmp-gen5x4-pcie-phy
       - qcom,qcs615-qmp-gen3x1-pcie-phy
       - qcom,qcs8300-qmp-gen4x2-pcie-phy
@@ -179,6 +180,7 @@ allOf:
         compatible:
           contains:
             enum:
+              - qcom,glymur-qmp-gen4x2-pcie-phy
               - qcom,glymur-qmp-gen5x4-pcie-phy
               - qcom,sa8775p-qmp-gen4x2-pcie-phy
               - qcom,sa8775p-qmp-gen4x4-pcie-phy
@@ -215,6 +217,7 @@ allOf:
         compatible:
           contains:
             enum:
+              - qcom,glymur-qmp-gen4x2-pcie-phy
               - qcom,glymur-qmp-gen5x4-pcie-phy
               - qcom,sm8550-qmp-gen4x2-pcie-phy
               - qcom,sm8650-qmp-gen4x2-pcie-phy

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
