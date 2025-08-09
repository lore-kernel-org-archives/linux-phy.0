Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 975A6C87FCB
	for <linux-phy@archiver.kernel.org>; Sat,  9 Aug 2025 09:59:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=28MWT7cN44Yg/C8w+7s8mNO+UKhcLicO7b2r5R6O8xU=; b=wZh38kjdXSWMyO
	bo+77Y3OypDqvEbpMxmgOLIBbhQ6HE6n/EqAK19s3vB6eGdgnJfHN1EwGSGgkeaBbyGEgTuS6k3/m
	dDvLjaz9q6PgYJhbVWAw3Rj2lKPX4LXYMa1p+TC9Wi6xI1AOiRVxfuk9DO5u+6KPnpVJFHq7OUXu4
	HOCoqo1Pe2tev8Isu3YJEDYZQBHvbi7kETR8boWpLJA2p+DPwJLpdV/LIR8EY/SnRgqJHvIILWb+g
	Pb63FxGW7c5LcNB15emB0Wl85kuw/iL2NxNdmbDvTvnWRgASp1GCLDzl+OZD8hs4Rf8WntjZmg3ou
	x2fT1nlDvo6HMbKGGSpw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ukgMe-00000004L9y-0zAW;
	Sat, 09 Aug 2025 09:59:48 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ukgMc-00000004L9b-0RDF
	for linux-phy@lists.infradead.org;
	Sat, 09 Aug 2025 09:59:47 +0000
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5793UW2q011459
	for <linux-phy@lists.infradead.org>; Sat, 9 Aug 2025 09:59:43 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=B7gs4hTFxwH3YxsLcB4ZaC
	WQf1OGFUcKEqvS+jFTsFE=; b=Lu7jw/XPWg7RLTTozBNo0HtL/TVmb4SwI0piM8
	gSRonfPmhQoR7sPrDXPZbjqwfHjtY4En7YoMZhIBiysmCH/XIpm2KIbl6RKlvNxi
	Xv65f/iCzUbeqNudrso8TvwUSC7cehM3qy4B8Dn1NJohz2pelR5lbakgJBcsL80r
	hWBcJFx5WeevTIIZIuY76oSQLDZUyy55C2QoLi+Q92JO00T63vTfQgf5b9LD8zRt
	0zHlDBqeg7f/fXqIWqVYPX50AzaWMGeG2W4QstFaeCtz5d0tU5f5LELPu0t6lRM+
	WDfV5NaAmYrEtul1czWLVsJQRhSeBBboDQoUPse9uuLKtn8A==
Received: from mail-pg1-f198.google.com (mail-pg1-f198.google.com [209.85.215.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48dwngrgg8-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Sat, 09 Aug 2025 09:59:43 +0000 (GMT)
Received: by mail-pg1-f198.google.com with SMTP id 41be03b00d2f7-b42a54b7812so1239522a12.1
        for <linux-phy@lists.infradead.org>; Sat, 09 Aug 2025 02:59:42 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754733582; x=1755338382;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=B7gs4hTFxwH3YxsLcB4ZaCWQf1OGFUcKEqvS+jFTsFE=;
        b=e8KqP5CZhmLcHeXzvGl6IT35BF17ue/+QyMAJxNc0YbrYJDGqCnncSe8T+yFQ/fIXf
         z0lCIzUJ0UauvREd+1qwfcSiB/MaToHDa12zUo+u92OVdutQf673oBBofi6FiUhsgJ0a
         g9YmrXp/rLuykys6jowH8zBIRgUQ1OzGeyrsbo19nVFcAxpLxuwX1UrTEw1/AL09ASCo
         wfjYSU3JKTwtzxDlPzRoNFH9n5RrUuLV2gAS9ZU4yTerArWyjG2fX8SKuXuYabub93F/
         5c2nAH+uGfUioCrANwAZ9rKm3fTRqsR5c7idx1fVY8ITV1Lm7II+3kBEEBxVEVTO0rNj
         uTTA==
X-Forwarded-Encrypted: i=1; AJvYcCWcmpBCbffXi+RYYwS69I8d9lq+klxoUAQ3clhMQkFD6ER1V4M5T7NBhaCvT184Dv84v/x9usAQfCM=@lists.infradead.org
X-Gm-Message-State: AOJu0YzSur94XyLrDl0vfCS6YbPWqSIbOzBfzFlk+gviKrx3H1heslhS
	ZJvzQ5pKqFCuZ14NIC30Tx70yC7+IV8rAVC/5kH5XQFETfR1iKvB/Vq9uK7j/iskCcWAi/XLtpZ
	k2fv53luggEJi+HYAfM48ZPFMAFTTPz955x7tjiBNpO6GC3cpVE7sG707YLGLL1OmvEmV
X-Gm-Gg: ASbGncuQIEVmAYqIDAjzjq9ZtSsVRI/RgxPCHxf1xs5y5ZQtKQVl+aCVXJsTNKroCM6
	Y2vfKF9FVlmGKHZVsR2COOxRAjDpExzBepu7RXAT8DVi03nS8fUSZHk6pXT8kjEtmpty9zWz/Ak
	bMIJBnKGPAd+dHSkD5MC8HN7DMBIyR3MveOqktlDALGO3kJQZBPiVUAANkuI15fSCvwzqf9RD4O
	RcOLOCk8szwybQ4IefhaWZvN9aeJd+/YEObMSMbkTLJ9z2zpsrrtFxaoCpys3hKshsUyqD/55M5
	S+dluHIIoWvKj6tB8R8JZA5kHFtE/r6SJpawZhiDvfFHgcn7SOjK4YzcpNVRt7LAKdaG+nGB72A
	=
X-Received: by 2002:a17:903:1b26:b0:240:41a3:8e0d with SMTP id d9443c01a7336-242c221775bmr95568595ad.36.1754733581855;
        Sat, 09 Aug 2025 02:59:41 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEGFCSZuzVmsIIkf+AYK0rGcOQzWTHIlpDNibLokhgE5KNUVYtisa4qZXZAAwYsaBSlgc6/cw==
X-Received: by 2002:a17:903:1b26:b0:240:41a3:8e0d with SMTP id d9443c01a7336-242c221775bmr95568245ad.36.1754733581394;
        Sat, 09 Aug 2025 02:59:41 -0700 (PDT)
Received: from hu-krichai-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-241e899b783sm225962845ad.133.2025.08.09.02.59.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 09 Aug 2025 02:59:40 -0700 (PDT)
From: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
Subject: [PATCH 0/4] arm64: dts: qcom: Add PCIe Support for sm8750
Date: Sat, 09 Aug 2025 15:29:15 +0530
Message-Id: <20250809-pakala-v1-0-abf1c416dbaa@oss.qualcomm.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAPMbl2gC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDI1MDCwNL3YLE7MScRF0j00TzZMOUlKREC1MloOKCotS0zAqwQdGxtbUA8H1
 EqVgAAAA=
X-Change-ID: 20250809-pakala-25a7c1ddba85
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Bjorn Helgaas <bhelgaas@google.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-pci@vger.kernel.org, quic_vbadigan@quicinc.com,
        quic_mrana@quicinc.com,
        Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1754733575; l=1194;
 i=krishna.chundru@oss.qualcomm.com; s=20230907; h=from:subject:message-id;
 bh=JIqajmtdSDWh+9JO6OyfRjiQd6jzxj/V/KzTUJ+HkCk=;
 b=kDfkSZaxVXL0BFqDK8S9gzh227+Pn8id/z2GPwjJZrxbfe93CFqWxDBD7D9RZDsM1iUFNsP04
 7q+h23qTyusD9aQK8FP3LRAoKYb7XIl5TY0tqmuRqWdN8x5wcw9+aHD
X-Developer-Key: i=krishna.chundru@oss.qualcomm.com; a=ed25519;
 pk=10CL2pdAKFyzyOHbfSWHCD0X0my7CXxj8gJScmn1FAg=
X-Proofpoint-ORIG-GUID: V3sB_tSAJd5DFCHtilfRr7rqAiaFXTFj
X-Authority-Analysis: v=2.4 cv=RunFLDmK c=1 sm=1 tr=0 ts=68971c0f cx=c_pps
 a=Qgeoaf8Lrialg5Z894R3/Q==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10 a=EUspDBNiAAAA:8 a=KRKipztoQesxEaMeAmMA:9
 a=QEXdDO2ut3YA:10 a=x9snwWr2DeNwDh03kgHS:22
X-Proofpoint-GUID: V3sB_tSAJd5DFCHtilfRr7rqAiaFXTFj
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODA5MDAxOCBTYWx0ZWRfX7lLdy4uH8P6I
 DF6MDcg+lEFNTSf9nOXpatz92oIgnfkKROk40xUEkhidg/NSor/yMzkMQoQ/8vV60UC662Rr+LK
 L+5hf6lO1VTVWxilZauLef7ze6c1ntseEX7zIEREQl5yne+V6RgFGracQx/oUzUF8JZHS4nOdle
 4xWkoNXCj+67sxSMb7QSnDTire1e/HTgW8FjNvdSRX8qde7B6Gm5+HV1DXo5HJdstshan0AqiuF
 FMKaIafe2FPqyT6xoh2glY1YYndbIipwzBoDBuVSZCt5aSc18U9UhH+E+SEnR4p6JaflC0wjEJe
 vPCyYOzN5xCq0+gUTVMicJmgclWX7SpjIJNgP0nXwvjMXwlinzG2/z6bZMHh1sInl5Kp/E123e3
 mQQCgvjF
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-09_03,2025-08-06_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 clxscore=1011 impostorscore=0 spamscore=0 bulkscore=0
 phishscore=0 adultscore=0 priorityscore=1501 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508090018
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250809_025946_264222_B5AE0113 
X-CRM114-Status: GOOD (  10.02  )
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

Signed-off-by: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
---
Krishna Chaitanya Chundru (4):
      dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy: Document the SM8750 QMP PCIe PHY Gen3 x2
      phy: qcom-qmp-pcie: add dual lane PHY support for SM8750
      dt-bindings: PCI: qcom,pcie-sm8550: Add SM8750 compatible
      arm64: dts: qcom: sm8750: Add PCIe PHY and controller node

 .../devicetree/bindings/pci/qcom,pcie-sm8550.yaml  |   1 +
 .../bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml   |   2 +
 arch/arm64/boot/dts/qcom/sm8750.dtsi               | 174 ++++++++++++++++++++-
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c           | 149 ++++++++++++++++++
 drivers/phy/qualcomm/phy-qcom-qmp-pcs-v7.h         |   2 +
 .../phy/qualcomm/phy-qcom-qmp-qserdes-txrx-v7.h    |   4 +-
 6 files changed, 330 insertions(+), 2 deletions(-)
---
base-commit: 37816488247ddddbc3de113c78c83572274b1e2e
change-id: 20250809-pakala-25a7c1ddba85

Best regards,
-- 
Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
