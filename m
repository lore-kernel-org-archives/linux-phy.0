Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 145DBCFD31C
	for <linux-phy@archiver.kernel.org>; Mon, 24 Nov 2025 10:26:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=USP7jz8bmLcCAT+e0mwWyqAnvAQSlvwa0NcYMNCfQPQ=; b=HLzqdlvLCrBUqh
	YT055TRmD/XyFXpSwpDuPs0iEheMDOcdVCak8nBQlWDDHOPJzULcTJxg3Sz1lq3ar7kIOyDPddMk3
	cezEP0OHBumkD2OYRPADqco5lXxOmDGqKlf+Yd8OYT9gbm7qOs/O2cHtpA/o6AJbfuhAsQAU6IsAA
	WBC1HfYM3ygrfdTG4ZW/qZzHP+r4OB1GFUn3e5fh5k9KrbutgKJt3d7N5K+vM2cl/CSMnq1Q97jBg
	I3KrsAu/3b7EHs5UH7uCeAatgeOYP385kR2+e/0uktb9MGYUkqmyNI8RjPLiLP/0TmR/1EKR/cDwz
	Mywz5Ze/qLx94gguvsHw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vNTli-0000000BQDf-3Uuh;
	Mon, 24 Nov 2025 10:26:02 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vNTlf-0000000BQB4-4Bik
	for linux-phy@lists.infradead.org;
	Mon, 24 Nov 2025 10:26:01 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AO8bqK12897562
	for <linux-phy@lists.infradead.org>; Mon, 24 Nov 2025 10:25:58 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=Yh+/VQFOK7zvEMbAZMBZVT
	a5P79BegtmU65rZlKd0cM=; b=H8iPbjyDd8uJOruOIOR9rm1h+JIbVGaeMacrg4
	5tEuD4G0yI3LGmTII9xfVFMSVMOqrWWmtTEL+lqBzBy0NkwIXQlStbdrpnlFgiuN
	nGRQImwmCNW+GpgICbbMCNKeR8UmSHfMUARFOhISON830BPxEXlCZN5eMMxw7C3H
	q50S8gx34QYj14OAN1qOLkZDWoFb84kNcyX6TcwZoqmv+rtMqrhc4OxbhNTX7GDu
	uhtXdgrO6s3z3POdAI1mTXauiPDKvvwiQ2EqyFCOQPZrH21ZCRX1Dtk7Wl3z0X+x
	Zp5rxZ12nlp7qp6xP+iHRfBLtLWtIW+Rr9ggXK5ZZfupRrUw==
Received: from mail-pg1-f197.google.com (mail-pg1-f197.google.com [209.85.215.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ak6ffcmk8-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 24 Nov 2025 10:25:57 +0000 (GMT)
Received: by mail-pg1-f197.google.com with SMTP id 41be03b00d2f7-b9ceccbd7e8so1176816a12.0
        for <linux-phy@lists.infradead.org>; Mon, 24 Nov 2025 02:25:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1763979957; x=1764584757; darn=lists.infradead.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Yh+/VQFOK7zvEMbAZMBZVTa5P79BegtmU65rZlKd0cM=;
        b=BrgdYPdGUruRKEE7vgboh6NcyI4E87DhlKT8mBwLdbCo9RVKTO4gAS0LzrHCzpeM0U
         rD/lzYXK2Op2ji0TDTPnK09BAEvM1kvUorqXaKa4lZLlA7r9C+ivLbY8wCcpT5adMwCX
         ypzQOsQKQM8a2nzRouMeNrz5EUew7ma2hq/a9ukRWEtP4LXqZrLASYUYhGgzpQfGl+UA
         TXu068xjxxZA/L9fFGGfTE93Xn5vxr0yhsAjXA/rHZukfypaCwzqakSJpCZG7y34JC4R
         bVuGTrdmDEsciiN7jmfFhNbp71Ps/4syWmXl7FjqAZ6zHJJ3lRRCJ3qpJIVDm2JAzz9g
         dL9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763979957; x=1764584757;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Yh+/VQFOK7zvEMbAZMBZVTa5P79BegtmU65rZlKd0cM=;
        b=oPWmV70iP3GiLC7SDt77NxfVdwW4p0gxbkvIeOl25PtlM/qc0KwxfJVLEqlTYS95tk
         YJfBSynID9dQvnYi+9SRTmoWTd/eKGzz7sMzePfU3XQu1nltPBhhUJXMmCl7Y0MbwVar
         FOHhkyawUSd1qZUo6CAAB8sUKUKDQWSZzhle5ZXTi9S4548P58Azti0ZWJrqshkYOaQl
         0TQIOxZgkRQHutoE0cfrW/6UNUqwm1rvUipgRX+fZK+Wsjha2LbItxtCMDNfVSPdKm1H
         wYHiJM5QGUzFDiXdwH1DvqdmMohsu5G9/Ww6pWL99sakosxXWk296ErI2YoGajZwH5QS
         DXIA==
X-Forwarded-Encrypted: i=1; AJvYcCXHYhepnsDmX1pUYrv+7w+Ebrm80BVKpYUEXaDQvCSX0w6F5xnHu5iLyuzWqF/mZbFPAoNw20fRNDQ=@lists.infradead.org
X-Gm-Message-State: AOJu0YwX86KtLZf0XkYxJq2lnaUADCBy855ddE1BbVA63XcUBsU4ExcW
	D9WF1RDjevjPt6YJtXd0gUTSWjJN1uRQXv/zO6+eL/bYg0nYMth54S5T7JFRJcq6w2jQEuEOYF7
	NcCa5TzJBP1y9HDjxfpqK9dtM34LjhBnwKPXWn5txe/fYS7xrVWGlDrH9pFXJfhd6X1Tq
X-Gm-Gg: ASbGncueP6tcGMxMfdTbZGrvle868y7ME9IO5kA64E3FVjgAG3KMsrsYFPbwgWtp9Qg
	CPNIYrEqySwrzrgNbsEAVCz+JCHc8QcWL833UT0b7nE+Dx8HFFD75zwBnH5Cjuj5iccpZ+Vbq5p
	IZ+MDr6gEdeOrMgXfUg26doWdmKO0thWoxKEde+/b8AQfhFDxZN9w4Zsjoii2wTiLidPKL713DL
	7Q2k0pGNyjuyXbMYx7kwFSYLPNXQKgQKDV8O8hsbL2wWRdHcjqwLNxsTg+qtwoWCqMw9FvGcg6C
	bVjgSCjaQqj8QqMDBI/EKQ8D5SEUquepF37t/tkUICYOzyh9VLWsPRoicVi9hUJ3KWjjMclRQcH
	EwvyVBoOb9ZN7YXsCkrFOnmsGJM0xEM74WrpnQOqD6yLKrrX7F3Ijaxnu
X-Received: by 2002:a05:7022:3898:b0:119:e569:fb9d with SMTP id a92af1059eb24-11c9d7178ccmr7166572c88.12.1763979956866;
        Mon, 24 Nov 2025 02:25:56 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEDKas93DmoZZqsZJ9oANiX7q+S9cqJHpgGphcW5x11I4tvPDfAtEzxXRjUnrPDkkS1L7/Oow==
X-Received: by 2002:a05:7022:3898:b0:119:e569:fb9d with SMTP id a92af1059eb24-11c9d7178ccmr7166547c88.12.1763979956251;
        Mon, 24 Nov 2025 02:25:56 -0800 (PST)
Received: from hu-qianyu-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-11c93de6d5csm46140627c88.4.2025.11.24.02.25.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 24 Nov 2025 02:25:55 -0800 (PST)
From: Qiang Yu <qiang.yu@oss.qualcomm.com>
Subject: [PATCH v4 0/5] Add PCIe support for Kaanapali
Date: Mon, 24 Nov 2025 02:24:33 -0800
Message-Id: <20251124-kaanapali-pcie-phy-v4-0-d04ee9cca83b@oss.qualcomm.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAGEyJGkC/x3M3QpAQBBA4VfRXJuy4ye8ilwMBhOtbbdE8u42l
 9/FOQ8E8SoB2uQBL6cGPWxEkSYwrmwXQZ2igTIqjaECN2bLjndFN6qgW2/MTVPVAw3UmApi6Lz
 Mev3Trn/fDyeAXppkAAAA
X-Change-ID: 20251124-kaanapali-pcie-phy-31968b2b2916
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Qiang Yu <qiang.yu@oss.qualcomm.com>,
        Jingyi Wang <jingyi.wang@oss.qualcomm.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Abel Vesa <abel.vesa@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1763979955; l=1819;
 i=qiang.yu@oss.qualcomm.com; s=20250513; h=from:subject:message-id;
 bh=dndUWKbdhmg1WAkMt5KVsWo26hQSVQm2B7N9hO0Nok0=;
 b=7ccUnsaTF0C2etMKM7C/1EBUPtck6KzU3v8ImILxPKY4Xrpq+yVYaxsKuwb7XqkKuq+IH3J/G
 szQeim40xfhAwxz8CFfN6hVsgeAgY2m+i/0g+XuroSO9b9SEEWFlqfv
X-Developer-Key: i=qiang.yu@oss.qualcomm.com; a=ed25519;
 pk=Rr94t+fykoieF1ngg/bXxEfr5KoQxeXPtYxM8fBQTAI=
X-Proofpoint-GUID: zrStIxkSee4KMEGwkmbh3IN2hQqJkGkB
X-Proofpoint-ORIG-GUID: zrStIxkSee4KMEGwkmbh3IN2hQqJkGkB
X-Authority-Analysis: v=2.4 cv=OsxCCi/t c=1 sm=1 tr=0 ts=692432b5 cx=c_pps
 a=rz3CxIlbcmazkYymdCej/Q==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=KKAkSRfTAAAA:8
 a=gau1cqUgYdTfV32JTLsA:9 a=QEXdDO2ut3YA:10 a=bFCP_H2QrGi7Okbo017w:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTI0MDA5MiBTYWx0ZWRfX2bcOhjg+FBEL
 1EyD5J+7U/NgiNiEMLK4uHHK3r51IjickK9MftBWrs51MarLbkLGIXPa3OYSBll8euRSW50rvk9
 FtgDgAkk4BslAzla7dobbiq1vg8Tld075SYLd/qv6Gooh8LApeeVNFzNVlLIcvVobUUyEk8pruU
 0HXeV81eYZWvkWHaYt3GJJL7tAvckuC5ZhRXyNvs2h6eRZCWX3nK8fd8UILcNTjp+HeMbq3yHgB
 s0TqbqZBmpVr14Q/ogfkHppu4Y7gxJOk+0rAjRQUggI3ULiPrd+pPXbHMLZN7Z7yPRGYH7jl4ii
 x1jnIBWaUhXZrsz24i7NxOWNJMd1d8wX0A0cwkINh5tJdEUKqOEP/LUpADpcF/1qR5PNeiK4MOD
 NC1rpe9oxDH8p0sqvS5PkidCWoNbFQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-24_04,2025-11-21_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 clxscore=1015 suspectscore=0 adultscore=0 bulkscore=0
 malwarescore=0 phishscore=0 lowpriorityscore=0 impostorscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511240092
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251124_022600_157960_7951A075 
X-CRM114-Status: GOOD (  10.42  )
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

Describe PCIe PHY. Also add required system resources like regulators,
clocks and registers configuration for PCIe PHY.

Changes in v4:
- Rebase on latest linux-phy next branch
- Add reviewed-by tag
- Link to v3: https://lore.kernel.org/all/20251103-kaanapali-pcie-phy-v3-0-18b0f27c7e96@oss.qualcomm.com/

Changes in v3:
- Rebase on 20251017045919.34599-2-krzysztof.kozlowski@linaro.org
- Add reviewed-by tag
- Remove [PATCH v2 1/6] since it was applied
- Link to v2: https://lore.kernel.org/all/20251015-kaanapali-pcie-upstream-v2-0-84fa7ea638a1@oss.qualcomm.com/

Changes in v2:
- Rewrite commit msg for PATCH[3/6]
- Keep keep pcs-pcie reigster definitions sorted.
- Add Reviewed-by tag.
- Keep qmp_pcie_of_match_table sorted.
- Link to v1: https://lore.kernel.org/all/20250924-knp-pcie-v1-0-5fb59e398b83@oss.qualcomm.com/

Signed-off-by: Qiang Yu <qiang.yu@oss.qualcomm.com>
---
Qiang Yu (5):
      dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy: Add Kaanapali compatible
      phy: qcom-qmp: qserdes-txrx: Add complete QMP PCIe PHY v8 register offsets
      phy: qcom-qmp: pcs-pcie: Add v8 register offsets
      phy: qcom-qmp: qserdes-com: Add some more v8 register offsets
      phy: qcom: qmp-pcie: add QMP PCIe PHY tables for Kaanapali

 .../bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml   |   3 +
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c           | 194 +++++++++++++++++++++
 drivers/phy/qualcomm/phy-qcom-qmp-pcs-pcie-v8.h    |  34 ++++
 drivers/phy/qualcomm/phy-qcom-qmp-qserdes-com-v8.h |  11 ++
 .../qualcomm/phy-qcom-qmp-qserdes-txrx-pcie-v8.h   |  71 ++++++++
 5 files changed, 313 insertions(+)
---
base-commit: 3b64ea4768e7e64b2d9ae5833dbcac19f6212145
change-id: 20251124-kaanapali-pcie-phy-31968b2b2916

Best regards,
-- 
Qiang Yu <qiang.yu@oss.qualcomm.com>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
