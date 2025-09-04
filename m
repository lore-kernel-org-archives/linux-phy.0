Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0272BCA1015
	for <linux-phy@archiver.kernel.org>; Thu,  4 Sep 2025 06:28:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=t0JZThuwc73BVJZWFjO4T1qQe1dIjG99R1vxebXF1sg=; b=OAkhqiIUl9CnfL
	wGp3iPN8NeZYHwxeANJDF4mwlZeQq5NYrgm/LWggziPQWyl8Fyg5c3D+jdfY4jKStXY8c91vv45r0
	4dqmoBPMAeNH/Gbh8djVNSIBZpaSVPJYWa3lmaJ66rNdoP9kt2v8qYvbao8dLqOUFhP4Z1MGBjYCV
	JH0DJqFX2k4LxaIC/HeaQunTqZE+1AZYQtyChWSkI4tDhTN9FNgIATiIY7AY0T6PKvFvXkHDGY331
	rFainBtjCJkBHe/LXLmxRzIFuduUwHmPRrZTXeOgZCJ8CHcFV2VDNwdulWQ7NduBFXjqLKJwHsS3f
	xa+MckrQarvN+rHU6qnw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uu3S4-00000009Wor-3DWw;
	Thu, 04 Sep 2025 06:28:08 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uu3NN-00000009V31-2ycw
	for linux-phy@lists.infradead.org;
	Thu, 04 Sep 2025 06:23:19 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5840wioR021562
	for <linux-phy@lists.infradead.org>; Thu, 4 Sep 2025 06:23:16 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=8mnxwcogrBs5wXZPmzs5x+
	48L88qADEjdwSP1+OP2Ic=; b=P5j2/8UbZ+fDsvGa+8Wzu+18b5PWMRIDoJ1SRO
	RHVKUbPSgwv7QjvmvBqhOt73odjVyT5A04tWn5GAwVMpJTaBWFlNnvMLF7a7W77P
	hz5m/alBTx9+LmA3iaJ55UXovkROxqxYqRtKrj6N1jHCBTLIhqZP9eGKj70Aao6s
	i1DX20eH+Ykl80xQzZ6xguRts89otj39/raJOLGGEZxsuHhlMOuUnVHDmwRkXzDC
	poCkCqd0VQTvX2+PHcB4W4cCZ7WG/rMHjFzvg11vvveOVorofhnTJ8EzPe9hTRbM
	qokYsXdZ5iDLvZ15iHyMZshaYrkqmQWPJ0cMhcdIQkUPoOSQ==
Received: from mail-pg1-f197.google.com (mail-pg1-f197.google.com [209.85.215.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48uq0epjde-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 04 Sep 2025 06:23:16 +0000 (GMT)
Received: by mail-pg1-f197.google.com with SMTP id 41be03b00d2f7-b47156acca5so599934a12.0
        for <linux-phy@lists.infradead.org>; Wed, 03 Sep 2025 23:23:16 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756966995; x=1757571795;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=8mnxwcogrBs5wXZPmzs5x+48L88qADEjdwSP1+OP2Ic=;
        b=aHU0odFJ4UVpkHAW3wt6Iz/ogdXI0/PsuAG3OLbPB17cKrw8vIxqonNzaQ0q209OSP
         8XcMFOrrPJOgZDSsbpmGUS+q2Xnmn/6QQ7jJPNNoD00Sy3z3AJKopFQmzLoDiry3PZcI
         3909iTqEARWMa50e8NaZeXgzYhyVLbfJi5eGQTJSnPWBVaJEvYMgRaeGQb88SATt1Smw
         eJwmYqt3xPQOwIPCu439mxJFVcm5qt+XmHyU4+0JrJxk7oz6CQGNQ7sgdgc3YmyXA0vl
         UTgcp6BZmE0jVuTtqEBX/HBUb8BwEZeKKnqkCcCFlnvcGTp5Hgn+mkht4JPXE9vThvH3
         x8Kg==
X-Forwarded-Encrypted: i=1; AJvYcCXzPYfRDIHVjMHySh9u3z3ctCXIjoobYRtiJLE2haeT3tDfN0nu2IDTP1/Df17atL63ZYn2cA/6zw4=@lists.infradead.org
X-Gm-Message-State: AOJu0YwuVBuzimXIMOsFCw33GDEAFwATBUr4a39MfjARdqHPyWu3SwCl
	rBJtgXCX/SkX2scXLOUi9xY1H2tIxFKeonoLh7ExHVW8dm8GMNHLyRT9aKyP1Db29mDKDrQzK0E
	gmUySa9JuO1CYEQiluaTdOA2i0Z5W4UmlDy3LqbiXGyestMYfKz0W3dM6glT1CKYxiPxD
X-Gm-Gg: ASbGncssoQBI2qicDTURADixYBo7lqaPjPg16Y7LOOI3u383H1F6lrJyr1WbClgUekq
	nqWMsbCSQcN6rIWYlaORLXm7XnKPrh3UNIXaj5uo2gNJAXOnWIifsqUQrTm3ayX4fGdnpXuS41s
	LpoMHYn/BFyL4iwLgLOycOk73O6lYxhw+6Yu3irO9QelzOa0Wzl5NxEnS06SXb7YkBOhSgNDxJa
	6kFCsmJnmkybg2RL4UNrPAwoGFxC76DlwEtHdY8LLXMvdGoSDkZEvbuYyvMMPitYrO0cLcvU85l
	7rQ4TKzfb+Z7s2dxLastd74wMGAT51ptw78mvHQYLUm0A3IgUT9psayps4gaXVxI/tdtW1LM3Li
	F1E+6Rxa4NJ8MloE=
X-Received: by 2002:a05:6a21:6d8a:b0:243:d1bd:fbac with SMTP id adf61e73a8af0-243d6dfb77dmr24913302637.7.1756966995212;
        Wed, 03 Sep 2025 23:23:15 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFlqYG4j4tCAUQjllJWSXIoBHjaLsyGVsWcC+ZkPeWO4oTZkGeYNcQReC2fOyY0NlmWHVGzCg==
X-Received: by 2002:a05:6a21:6d8a:b0:243:d1bd:fbac with SMTP id adf61e73a8af0-243d6dfb77dmr24913253637.7.1756966994711;
        Wed, 03 Sep 2025 23:23:14 -0700 (PDT)
Received: from hu-wenbyao-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7723427c127sm17120911b3a.62.2025.09.03.23.23.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Sep 2025 23:23:14 -0700 (PDT)
From: Wenbin Yao <wenbin.yao@oss.qualcomm.com>
Subject: [PATCH v4 0/4] PCI: qcom: Add support for Glymur PCIe Gen5x4
Date: Wed, 03 Sep 2025 23:22:01 -0700
Message-Id: <20250903-glymur_pcie5-v4-0-c187c2d9d3bd@oss.qualcomm.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAAkwuWgC/33MwQ6DIAyA4VcxnIcBBhp32nssyyJYlUTFwSQzh
 ndf9bzt0uRv028jAbyFQC7ZRjxEG6ybMOQpI6avpw6obbCJYEKxignaDeu4+MdsLCiqwRSl0qV
 udE3wZfbQ2vfB3e7YvQ0v59dDj3zf/oAip4wyBYWQleJVy64uhPy51INx45jjILsX5T9DoqEMH
 vhZC2HKL0ZK6QOfhwR68wAAAA==
X-Change-ID: 20250902-glymur_pcie5-bec675b7bdba
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
        linux-pci@vger.kernel.org, Wenbin Yao <wenbin.yao@oss.qualcomm.com>,
        konrad.dybcio@oss.qualcomm.com, qiang.yu@oss.qualcomm.com,
        Prudhvi Yarlagadda <quic_pyarlaga@quicinc.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1756966993; l=2136;
 i=wenbin.yao@oss.qualcomm.com; s=20250806; h=from:subject:message-id;
 bh=A64x7+BNXYv782ni3wGjbjBf2GE5tylgSfS7zkngzrU=;
 b=h0WX++anw1r4++tGfxwRySxcmOfq17vKXcxaWu4NTzGiCweIF+C3zdU52Ej9BLOfwpmisYL8k
 zxXXbwVobu6DTD4B5D6Fss26SLI9vduVky2/yeeCTyk3Xl7ip6DosNb
X-Developer-Key: i=wenbin.yao@oss.qualcomm.com; a=ed25519;
 pk=nBPq+51QejLSupTaJoOMvgFbXSyRVCJexMZ+bUTG5KU=
X-Proofpoint-GUID: w1ot1s6arqsrvQLf0N5d7qK_UxUV-MkZ
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODMwMDAwNCBTYWx0ZWRfX08H/Ve7mLyDI
 VBXuYZ8q0q/D5IU2+82e+NRFeUIVU3NjzWyZaDyKi4syQmJogUQPaS+8Wk3mwGuwvrq3ryfdigv
 SHXH75DCHMd4gyhPo/q9Cyj6Verwjn8/XIuuOpNuF9QKPwTaJQDpkB+NoMvCHFopOjwKI9KCvFc
 zVEyfSFcNCgcC6zS2IhcJPwekOVR1yMC1tkaLQ5/jNORCeSS+f5oYYr5fn7fvs08vlpyifBq7Rr
 43Hu1KBUXd9C6pNNZ4whCyu/bzUVBoj4ZY/mIowEXrB3G08FMGz4tTdb6Z3ikeHw0N+fYl8zx9L
 pdgEV9vCMaF6zwihRs58bcGwkj72848u0FnVWFVqj9sbTVpM4JzglDrqiqH5AmXOqcj3LDM7Tta
 w1KE1XtG
X-Proofpoint-ORIG-GUID: w1ot1s6arqsrvQLf0N5d7qK_UxUV-MkZ
X-Authority-Analysis: v=2.4 cv=ea09f6EH c=1 sm=1 tr=0 ts=68b93054 cx=c_pps
 a=rz3CxIlbcmazkYymdCej/Q==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=TkXPrYfmiUOmToh-xYcA:9 a=QEXdDO2ut3YA:10 a=bFCP_H2QrGi7Okbo017w:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-04_01,2025-08-28_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 suspectscore=0 clxscore=1015 malwarescore=0 phishscore=0
 bulkscore=0 spamscore=0 priorityscore=1501 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508300004
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250903_232317_761909_8533B96E 
X-CRM114-Status: GOOD (  14.75  )
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
Changes in v4:
- Rebase Patch[1/4] onto next branch of linux-phy.
- Rebase Patch[4/4] onto next branch of linux-phy.
- Link to v3: https://lore.kernel.org/r/20250825-glymur_pcie5-v3-0-5c1d1730c16f@oss.qualcomm.com

Changes in v3:
- Keep qmp_pcie_of_match_table array sorted.
- Drop qref supply for PCIe Gen5x4 PHY.
- Link to v2: https://lore.kernel.org/r/20250821-glymur_pcie5-v2-0-cd516784ef20@oss.qualcomm.com

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
base-commit: 356590cd61cf89e2420d5628e35b6e73c6b6a770
change-id: 20250902-glymur_pcie5-bec675b7bdba

Best regards,
-- 
Wenbin Yao <wenbin.yao@oss.qualcomm.com>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
