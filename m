Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 05841CCD18E
	for <linux-phy@archiver.kernel.org>; Wed, 15 Oct 2025 10:27:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=AL2ipVdBeeR4eUt4WBviz0RiQ2hBnrmVOs41KDPv9/A=; b=1EnEzFnyALVtqL
	7FtJEP6M+Uudj0qs4Dr7zy9F+/T3kLIaI/h4Fy7DRa+J8c3hYcuZL94/FeZUiYS6cn8NmYZbfl7uQ
	j8QhDpF4mMbzXBc1azLfeO3aStzoBsIInda6VMPgLn2YhU6mxoGU1yjebmXKaqGmN7GFKgnVk8j7X
	5SBvjYLVKINUQwwLVRcqYdbJArchTGDXBSWtlyYx0LSpul4xTQh3HyVRamSuK7KYbbyO/g8zIy1xq
	I0DBZ8cmCdVwwTD00b6zPHgFV9mLpkXBSdO5UVOtehrZdQfA1ghZDbchRpVfF9HMPN5f88McJE7gd
	9pSd9yg5sMlSd6xOB4rQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8yjV-00000001GuU-1wvB;
	Wed, 15 Oct 2025 10:27:49 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8yjS-00000001Gsi-1r1x
	for linux-phy@lists.infradead.org;
	Wed, 15 Oct 2025 10:27:48 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59F2sEVu002648
	for <linux-phy@lists.infradead.org>; Wed, 15 Oct 2025 10:27:45 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=zVx7zcXjZCA7ttW8u8NHzi
	JFVZBlQkgSPHnkGQy4eDc=; b=AJpFIGIb6GpIBi261CMt11+G9NvDhc1DYZFVYc
	XbsVHGICuOqBNcdgZVG39nlBwKAJKQTvmOgpP88zr8lhy/x/F6ehKLbXdFQnzQVE
	KX9QwgXICRfQmoR+KVPuq0f3nGqk3/tg6dUDPr5iAMj/9oDajfG8Of0iIgCocrT8
	ILuLYuZS8e35tb47ueeoJm8YzNRQLtbFEV1Zsl6I3hwRnsnn/J6Wu8X9HSF+fOhY
	RZETRvXBceKt7WRH5bhS7kkS52cjAezxl7nsw5L72ynSgjD/5LPhjU2u9CwixVIb
	BpHMSghmVZSkniZ4kJHVKEyjppM4OLapaPqCzDdZ2TYLusjA==
Received: from mail-pj1-f72.google.com (mail-pj1-f72.google.com [209.85.216.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49qfd944a0-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 15 Oct 2025 10:27:45 +0000 (GMT)
Received: by mail-pj1-f72.google.com with SMTP id 98e67ed59e1d1-32eddb7e714so9127223a91.1
        for <linux-phy@lists.infradead.org>; Wed, 15 Oct 2025 03:27:45 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760524065; x=1761128865;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=zVx7zcXjZCA7ttW8u8NHziJFVZBlQkgSPHnkGQy4eDc=;
        b=d86VFhOymDwRMeVl44+HQFRVTVqfRiMekNLh7r/pkTDpR7dD+LD1NNCqGYvS+8QflW
         4jpIjrh+lbFwHD5e3GyZJ+iGQXUQcv81OFcVIy/X75Odek5RXwpArt2X762xgjnm5UDh
         kRFz+bUnOxvOLyJi4T/RVNEUwAIIvdfPbnT9D9GqZiTmSIUFQH8PM+yUH6HHkpO1Qe85
         1QiGkROQcDfvqCZjNVPiYD6UMTtZSzcaGlxtAegeT6CYZMRYwCOzX1ZOvqgpNCM3ZsaR
         aPyGaC3kx/rAJlivhh4DgRK8W6H+PbHPvJuV8p3agBcUax26NwL7aHAdm4u6xObxUVUk
         ltQQ==
X-Forwarded-Encrypted: i=1; AJvYcCXVDIcW2eH1GeyucB00/m8+hXCnaM2jBMrQTYJJISRwtcvYZ4acuQaD4sZAT/LE8lk2TwV4EG6sjdo=@lists.infradead.org
X-Gm-Message-State: AOJu0YyO4ZOc9I3jhm6NBZCS26jkMbEBbO+CbsRbUfQ3fqiPzwD1qMow
	BlPoDRYaI7L6Ii8RXEfllfbGc0HoovBysfPJGnHDwMrbE+fqtl7Y8goP0YmjAjC/MTOZIsj3ku1
	TxOpb0IDvXtDBKmihYqLNlSLgN95FW2xOnhGcIAAFtOMixyGHvQOgg+zszJaN2/jES9Un
X-Gm-Gg: ASbGnctOwLTLze7zNZ7IERXqfojYq9KACOf7A7bvY7FmnpWAy9bVtDk1rgsRAxGjdzs
	nrWbRcdw4UGOFtsQOhacczP5abUuGwcZdD1DAbx4zsHUIXkaefi0UKcjbCqW9QjMZztpAx/9+gS
	UJGw/Yy9Ga89984tQcHyy35HzplBipP49+Jh9FdMYPdr7vG0VFO/SJ0ij3Mb3P35xGssnz3P4Kr
	hE9y3+39h3uH1y7/+Frupi8ZuPvn+RY422z42J55YJ4S/AMwS/O6y4PIrgcI4nodKHzv30bwqLA
	F9IdL6/wBwem/6IwVZRYABBeh5/1XPxV3c2GLGTKEJwdpbTxJuFb/1PPNM6u1DEeHgjlXt8zM9j
	QjGvNtn57Wq0=
X-Received: by 2002:a17:90b:3ec6:b0:32e:749d:fcb4 with SMTP id 98e67ed59e1d1-33b51105b46mr40029413a91.6.1760524064817;
        Wed, 15 Oct 2025 03:27:44 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEqvhKvSn1eHk1xJPg/+2+y7nkSYc/il6T6uqSY+LutIhh8Mixt7BzAgSmrGXlz1/Dd0ye5rw==
X-Received: by 2002:a17:90b:3ec6:b0:32e:749d:fcb4 with SMTP id 98e67ed59e1d1-33b51105b46mr40029378a91.6.1760524064293;
        Wed, 15 Oct 2025 03:27:44 -0700 (PDT)
Received: from hu-qianyu-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-33b9787a1a7sm1993574a91.18.2025.10.15.03.27.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 Oct 2025 03:27:43 -0700 (PDT)
From: Qiang Yu <qiang.yu@oss.qualcomm.com>
Subject: [PATCH v2 0/6] Add PCIe support for Kaanapali
Date: Wed, 15 Oct 2025 03:27:30 -0700
Message-Id: <20251015-kaanapali-pcie-upstream-v2-0-84fa7ea638a1@oss.qualcomm.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIABJ372gC/x3MQQqDMBBG4avIrDuQRATxKqWLYfzVoTaGpJWCe
 HeDy2/x3kEF2VBoaA7K2K3YFivCoyFdJM5gG6spuNB55zt+i0RJshonNfAvlW+GfFi9V7hWoT2
 o1iljsv99fr7O8wKvAeF/aQAAAA==
X-Change-ID: 20251015-kaanapali-pcie-upstream-c11ce03cec8e
To: Lorenzo Pieralisi <lpieralisi@kernel.org>,
        =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Bjorn Helgaas <bhelgaas@google.com>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-phy@lists.infradead.org, Qiang Yu <qiang.yu@oss.qualcomm.com>,
        Jingyi Wang <jingyi.wang@oss.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1760524063; l=1520;
 i=qiang.yu@oss.qualcomm.com; s=20250513; h=from:subject:message-id;
 bh=oOngDAIRImYIC9GHr++pcMxfMCky7ceWfaq5P86DVnE=;
 b=ZenRdUkd75CqOFjpbQv7VcFVrsoToSHNdW+v6nXSIIbm32dkVP0Esq8fG5KvpCDG9IYxEL8Ft
 Mp0oLUwhn+0DJANqG+wx9Gj7CgTsK2TgDBxH5XLby+WxikzcMreTHm9
X-Developer-Key: i=qiang.yu@oss.qualcomm.com; a=ed25519;
 pk=Rr94t+fykoieF1ngg/bXxEfr5KoQxeXPtYxM8fBQTAI=
X-Proofpoint-ORIG-GUID: trUKNa_XA99Di0XI9rkJCugjkttEsfzV
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDExMDAxOCBTYWx0ZWRfX5rCrlSMYvPoP
 bcC+R5IgthKp7DpDQuQtZEybN5GeqwPS0gG0+pOJ1YlijibBl1E1vK1KEPWuboRAakDggE+X2fo
 paAPncPUspTm1VbXNFtYjrsMERYht9MIG4W24MJKWaHGwbFKfNmFNTUyOQkARZSTFvKhV1mLw48
 4YauHHkVh9lmjhDmidGu2yFQfoaKDH3h1cxCatH9MB/X0iD7WB9NcJU5184ZMqb/Z5dd1Su7wWo
 AQX4c50xg2HpohBx3YyjBOkU1IIMmMBkO1N4xHelGO6/JRsOrWUgXHBLBN1Np5zHHKVrPKrbPmY
 T3j9qjvb9kYisH2LAYK8F9ou6YbFlCuZwvg0f17MzpoWPeZJUnIEpphA5vSR4AIaQLQqtJTMaEk
 AfhEDYM+ziQwGVuC8r/pgxM4dVXtKA==
X-Proofpoint-GUID: trUKNa_XA99Di0XI9rkJCugjkttEsfzV
X-Authority-Analysis: v=2.4 cv=PdTyRyhd c=1 sm=1 tr=0 ts=68ef7721 cx=c_pps
 a=RP+M6JBNLl+fLTcSJhASfg==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=Szuw2GHIxefIValPBLsA:9 a=QEXdDO2ut3YA:10
 a=iS9zxrgQBfv6-_F4QbHw:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-15_04,2025-10-13_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 phishscore=0 bulkscore=0 clxscore=1015 adultscore=0
 lowpriorityscore=0 impostorscore=0 priorityscore=1501 spamscore=0
 suspectscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2510020000
 definitions=main-2510110018
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251015_032746_495407_B13482E6 
X-CRM114-Status: GOOD (  10.24  )
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

Describe PCIe controller and PHY. Also add required system resources like
regulators, clocks, interrupts and registers configuration for PCIe.

Changes in v2:
- Rewrite commit msg for PATCH[3/6]
- Keep keep pcs-pcie reigster definitions sorted.
- Add Reviewed-by tag.
- Keep qmp_pcie_of_match_table sorted.
- Link to v1: https://lore.kernel.org/all/20250924-knp-pcie-v1-0-5fb59e398b83@oss.qualcomm.com/

Signed-off-by: Qiang Yu <qiang.yu@oss.qualcomm.com>
---
Qiang Yu (6):
      dt-bindings: PCI: qcom,pcie-sm8550: Add Kaanapali compatible
      dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy: Add Kaanapali compatible
      phy: qcom-qmp: qserdes-txrx: Add complete QMP PCIe PHY v8 register offsets
      phy: qcom-qmp: pcs-pcie: Add v8 register offsets
      phy: qcom-qmp: qserdes-com: Add some more v8 register offsets
      phy: qcom: qmp-pcie: add QMP PCIe PHY tables for Kaanapali

 .../devicetree/bindings/pci/qcom,pcie-sm8550.yaml  |   1 +
 .../bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml   |   3 +
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c           | 194 +++++++++++++++++++++
 drivers/phy/qualcomm/phy-qcom-qmp-pcs-pcie-v8.h    |  34 ++++
 drivers/phy/qualcomm/phy-qcom-qmp-qserdes-com-v8.h |  11 ++
 .../qualcomm/phy-qcom-qmp-qserdes-txrx-pcie-v8.h   |  71 ++++++++
 6 files changed, 314 insertions(+)
---
base-commit: 13863a59e410cab46d26751941980dc8f088b9b3
change-id: 20251015-kaanapali-pcie-upstream-c11ce03cec8e

Best regards,
-- 
Qiang Yu <qiang.yu@oss.qualcomm.com>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
