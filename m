Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5CC4ACA0EEB
	for <linux-phy@archiver.kernel.org>; Thu, 21 Aug 2025 13:19:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=wsmGiE7V3qrjzk3daxSI+22pHefEcDRMYp9uUH9ziUU=; b=IWoZEcmmkSjK/Z
	qZyAt9XevtmADHYnj7Ije0GsaPiaHBMzFBMRJtfKc1eBb2lBNobwva2kaTy4yw/bqlXDX64oCGSNF
	Nb6RYdpidl+6DjCmehD+bVavuLn/1wK6Wk2ANgT4qoYv8OOnX3apFY+jDE8oXfs7yJvVscWSR6AeI
	AaIGlKEalt/hjN73bc9LGKI0u4ywEDhrZ5dCgEwPYWyc6LRa0VEYCepy1p7qHRki1RARbFidwH3Cb
	ANAqM+00xlBQ8JOdbeSpLUxBVGZDXcNYw2Uy+ZoCTTjcs9bP3vlG9kYq3VoZ5sdrVd/F7ce09cGif
	byUy8ZZrmOgGPhKIKvhw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1up5C2-0000000H1hY-0Gi1;
	Thu, 21 Aug 2025 13:19:02 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1up1qn-0000000GUqT-3B1C
	for linux-phy@lists.infradead.org;
	Thu, 21 Aug 2025 09:44:55 +0000
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57L9b821012907
	for <linux-phy@lists.infradead.org>; Thu, 21 Aug 2025 09:44:52 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=QR5+6bjiJwUUppAX6bVNei
	izyY9p2bkovmr5KiOMzjI=; b=OLN+NZp8h+L2NxVQWdIAzOLr3CzcNKJkAuN/aL
	fKBu15qNauNOPeK1GisS8uI9hsqE8tjdG5aN+g3Sx0fKIZNbmRIynjNQNv1m3YjB
	z0b3PvOKOtIg7zP4c1bbp2fdo/7EkF4t3AJJE2zLOQeiI2D60qsml/FnTe3KUleR
	hJciazn16GQ0W1DgUqhOy1XApNQCwG3+sD7UOkJUhaAdZBFtiBbZ1LOSN/GN4+FX
	D7/+NYdsaXZQM3O99rysNLqzWkUzr6/wfUt/yphVfEJTYSBCiB+tiXKIy+1WhgJh
	XBoFHd8fAa+KbvjOHIV+uJJLBqh2Qvp5ZpxgvBNHXmDST7VQ==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48n52dmvs7-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 21 Aug 2025 09:44:52 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-2430c5d4d73so24707775ad.1
        for <linux-phy@lists.infradead.org>; Thu, 21 Aug 2025 02:44:52 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755769491; x=1756374291;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=QR5+6bjiJwUUppAX6bVNeiizyY9p2bkovmr5KiOMzjI=;
        b=Ky0iOimilP6+Nq/9MhdjYJ22DdnqXLqYWt2mWPGgFsRmuQJ/V9njA5axeTF9ZDl7AA
         vXUktnjC4TLstcVmiQ7E6yx0PV8tkBdKqiI1mbMVl9mQqEWl5w+1SBrzJTUjEo0hkWWR
         TGDu7lZmDzwEJ5F9dE95Lyam3SjnpAdKkgc2OUGiElhqSY8X8+tebSsPkf/GUiYpnD9/
         ygHlNkUHqnRGu6gBt8WNUDIDfzpoxXPfHynAxvvG6FYgKQCGf1HCA6+5qSqIGKuE1E2O
         T7Nq6nqBI7mX0+wOXtkMie587ieQxf+Ox0muXqdPcvEWhBJnS47Ghl7e7VDXfdLJcZwK
         wkJw==
X-Forwarded-Encrypted: i=1; AJvYcCWFkBbKmXqJOxfBpSreizxMJTVC5QQKOt94qMx3lIME+ofN41O3oi1xtqwuhasBQOeh5oAfepHPrW0=@lists.infradead.org
X-Gm-Message-State: AOJu0Yzp9LBb2wDMwqhsmrMKv197NhTx/qSIZ+iiOgOhkFnWCSrW2p0d
	HylqKuFuNOz4NOcoVuUVc0kNtWk37/nP015b16YCOiJnTKVotkzUCNem8yQehCPZEpmu0QovD7w
	0f2cnL6LfofSFgGyS+PQsjEMoKiXK9nOCbL66Lxj11WQpFQUUFQtf9RKw1mjKBu3687fi
X-Gm-Gg: ASbGncsr4t5F0692+Xb8LqLPoqX3qpXOtULVxXTHDKUT4L4NOJ1mgGC9ud/hFpVBTnl
	emtwUE5lVZ52deh3OuOkH6cuEUNyy2D9wBKAzY6+kcAI3rYB4bEe33Rnkhja+a26+Oxc1G/slo3
	wsyRSPZmy+WjDcNjZfom1n8D5rUPzQnSe7KEa8xtx6wr9AKzDoIJqqfzTUa1muz8nSKGfyrz0cm
	fesLLQc5aHVs4/dNKOGlZAi/J5o0LgAM0CvvDqgHpEUg7KqHCwEWNNWB4Lf9/FIhkPs4ikcP9I0
	vemmUWhmkDBEQ2RwAY7y9rUa/URqC0SdxlP1MriSJDssBLbpDGpkQJrLhQsYJOo02Tv1QIhfe8n
	5++gKLTxfpV+iOkg=
X-Received: by 2002:a17:903:1a68:b0:233:d3e7:6fd6 with SMTP id d9443c01a7336-2460248450emr21737965ad.19.1755769491055;
        Thu, 21 Aug 2025 02:44:51 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHMszws1ocRhnckkCp/+DaksXRFNJDySLzb7VqhWeHwwuRPUApCU9iQxTyzeCjI5T8Y7UPNIg==
X-Received: by 2002:a17:903:1a68:b0:233:d3e7:6fd6 with SMTP id d9443c01a7336-2460248450emr21737575ad.19.1755769490594;
        Thu, 21 Aug 2025 02:44:50 -0700 (PDT)
Received: from hu-wenbyao-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-324f23d853esm1426078a91.6.2025.08.21.02.44.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 21 Aug 2025 02:44:50 -0700 (PDT)
From: Wenbin Yao <wenbin.yao@oss.qualcomm.com>
Subject: [PATCH v2 0/4] PCI: qcom: Add support for Glymur PCIe Gen5x4
Date: Thu, 21 Aug 2025 02:44:27 -0700
Message-Id: <20250821-glymur_pcie5-v2-0-cd516784ef20@oss.qualcomm.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAHvqpmgC/5XMywqDMBCF4VeRrBvJxWtXfY8ixYkTDdRLkyoV8
 d0bpbu2CzcDZ+D7F+LQGnTkHCzE4mSc6Ts/xCkgqim7Gqmp/CaCiZhlPKP1fW5HexuUwZhWEKF
 mUqCQkngyWNTmteeuhd+Ncc/eznt94tv3T2jilNE0B9SphDhR0aV3LnyM5V31bRv6s+U/Nv9hd
 apLJjgHSPVRG0cakxwRBIOjVmDJcp1JBcC+bbGu6xuRjCjhYwEAAA==
X-Change-ID: 20250818-glymur_pcie5-db4ef032e233
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1755769489; l=1713;
 i=wenbin.yao@oss.qualcomm.com; s=20250806; h=from:subject:message-id;
 bh=QAfC8/GKZlOXKe0IiJ9ssRTYFtHubuURyiBbBpoQUlE=;
 b=hjDHizvCmTAIWNi3O5kn7CLcEJfo89l/8R0D8hRr2p5iAeNmzVL6igb8B1gAi992fModJgPvK
 E2f0M+vVoyMABXxh3EesKONtWGN5B7B3jplFwJKQc8WjnC726wNGKuq
X-Developer-Key: i=wenbin.yao@oss.qualcomm.com; a=ed25519;
 pk=nBPq+51QejLSupTaJoOMvgFbXSyRVCJexMZ+bUTG5KU=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODIwMDAxMyBTYWx0ZWRfXwTnGV8oqivvr
 JBKl9XN7Xqy2E/dY5D37772/H34VT2NNrP3+nJPXvObP9Hniy5foBcjhgSQn4ebZehM/OL21nPi
 hMf8iNzWc7eYD7/Gw9doQiBdBQy15vcdbZQePjUCbR+9g0SZALplmUEppds/qD/GiKGrZIOke9j
 mQU7TX7ZNNjoVlonUw5wPRbmFNSk+GuCVMfQcc+kW8MBDYTBYIwhIXuMWZSWnCTYr6sly8CFMeO
 dhHTjSvnlT/BKp24hS4o9gO1a9LksM47eAqwKr2qFB7kmwVCmBJz4/M6unNzem0zHLBLjs1TJQ1
 FS5XhsfVS8bj6efR94v9OihYMhEdXfKsavNDHqj0FNfaVakXSC84GDnP8zRvoTMou08IS8H7tyv
 wteb+WCQMQWczhnWmD40WDTE7tDBsA==
X-Proofpoint-ORIG-GUID: xIbxLkgrH0I74nB50aDfUBI6DzW7LFwz
X-Proofpoint-GUID: xIbxLkgrH0I74nB50aDfUBI6DzW7LFwz
X-Authority-Analysis: v=2.4 cv=SoXJKPO0 c=1 sm=1 tr=0 ts=68a6ea94 cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=450xJL59MvcON_dSg4wA:9 a=QEXdDO2ut3YA:10 a=1OuFwYUASf3TG4hYMiVC:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-21_02,2025-08-20_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 spamscore=0 adultscore=0 lowpriorityscore=0 bulkscore=0
 priorityscore=1501 suspectscore=0 malwarescore=0 phishscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2508110000 definitions=main-2508200013
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250821_024453_919614_4B46BA9B 
X-CRM114-Status: GOOD (  13.90  )
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

Glymur is the next generation compute SoC of Qualcomm. This patch series
aims to add support for the fifth PCIe instance on it. The fifth PCIe
instance on Glymur has a Gen5 4-lane PHY. Patch [1/4] documents PHY as a
separate compatible and Patch [2/4] documents controller as a separate
compatible. Patch [3/4] describles the new PCS offsets in a dedicated
header file. Patch [4/4] adds configuration and compatible for PHY.

The device tree changes and whatever driver patches that are not part of
this patch series will be posted separately after official announcement of
the SOC.

Signed-off-by: Wenbin Yao <wenbin.yao@oss.qualcomm.com>
---
Changes in v2:
- Add offsets of PLL and TXRXZ register blocks for v8.50 PHY in Patch[4/4].
- Link to v1: https://lore.kernel.org/r/20250819-glymur_pcie5-v1-0-2ea09f83cbb0@oss.qualcomm.com

---
Prudhvi Yarlagadda (4):
      dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy: Document the Glymur QMP PCIe PHY
      dt-bindings: PCI: qcom: Document the Glymur PCIe Controller
      phy: qcom-qmp: pcs: Add v8.50 register offsets
      phy: qcom: qmp-pcie: Add support for Glymur PCIe Gen5x4 PHY

 .../bindings/pci/qcom,pcie-x1e80100.yaml           |  7 ++++-
 .../bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml   |  3 ++
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c           | 32 ++++++++++++++++++++++
 drivers/phy/qualcomm/phy-qcom-qmp-pcs-v8_50.h      | 13 +++++++++
 drivers/phy/qualcomm/phy-qcom-qmp.h                |  2 ++
 5 files changed, 56 insertions(+), 1 deletion(-)
---
base-commit: 886e5e7b0432360842303d587bb4a65d10741ae8
change-id: 20250818-glymur_pcie5-db4ef032e233

Best regards,
-- 
Wenbin Yao <wenbin.yao@oss.qualcomm.com>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
