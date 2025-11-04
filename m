Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2BC80CCFA00
	for <linux-phy@archiver.kernel.org>; Tue,  4 Nov 2025 07:56:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=HWVaBhjD+2CF73PMGbfW4WArspLzElMdyUWF5xq3pDk=; b=3gInDayt9dl9jz
	isuoduM6peTA/lbzi3+SN2Wkg1Cyq7F2OPY3ne3RBp7Xu7gwGi5OQrg4YFgCaN6fLsKWkfrRKfgaz
	QDYtdv5NeCBcDuubi8q2wOE41E53BLPNjGPYhtUdAAGTdkjLDwmMdjqmCD+YRxAtTdq2KDkf0b8yH
	pV7mYBtOh6T8q6S/tD3UqIbRWAAQn7xlL61fd9PpXkqtuDCF9n3t1Zz7SeDtbnEBHRPR2CaUuZ3mv
	qi/Uj8NMhElK0cMvK1fB018Uz0s0zjfQx+ZPtYL3gRK6ccQ5JSIhuleixLPY2zdDXRsRxuo/HcdpN
	rYKzDbYQz+eyfeANMYIA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vGBu6-0000000BMnP-20B8;
	Tue, 04 Nov 2025 07:56:34 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vGBu2-0000000BMkR-0dVB
	for linux-phy@lists.infradead.org;
	Tue, 04 Nov 2025 07:56:33 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5A430Ctx3616853
	for <linux-phy@lists.infradead.org>; Tue, 4 Nov 2025 07:56:29 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=P40lz858sWn65cRyy7V02k
	KrFpLfqVO/bb0U8wLAIZU=; b=CedXUFerewoX+Y99bVm1vHIgtMRSPgG6cRNv21
	zV9qwZfhEZYEafX7hNzkxAFpywf4dso4lqJIYCj7pVnQTArVcCg1rMrop/neGymi
	lgSjALj7lBHlE/BGuOzowM58cigZ61ssfIkIPfl5qrMenpG+HAyP1j09Q4imhsZu
	CPytwhIr8SluYUuUq9ImKI8+0BetXAVb3P+RN54DLlV0LgVmOS69doKx+71SGnPG
	wB3EzppK3gCAia6pRK+cviCAOupGG1IqMnVkhLrXUA3+e9IQwV37laiRLEZTkDBb
	At0uUIiKjYFJ6gwsbrX3N0bzZvgmHOtwg2oLa2psCKUkZFIg==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a70fht4sx-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 04 Nov 2025 07:56:29 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-2955f0b8895so28387575ad.0
        for <linux-phy@lists.infradead.org>; Mon, 03 Nov 2025 23:56:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1762242989; x=1762847789; darn=lists.infradead.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=P40lz858sWn65cRyy7V02kKrFpLfqVO/bb0U8wLAIZU=;
        b=jddStXR5nsYYsAQaMY28A06BrdgPj5oVKiFkUbK1XP9TgQfGWFnRQbhsaxYtkYj/hv
         RZe6XgUpl7XHlZdxFSk6mjeaQZJo4bKt6OPsOcJbFtMdfSHBhbj138mNEHfT4kjpArsr
         3BHIkWHP/auIetDxCDv2o4ZeEyh3b9/VraVBclYhXyB4uAw/m7i5bvatVx/wrYojHKkZ
         pkbEPU/I0MsjGRV+a1w0ucnmz0HAA9qOV7ec9h3b2czkhF7xCo5Evw3A0TdRLaR2Ng/h
         qYCorFra7Nub5PoS/m6PLzNFxBo2w22fqHkDgJcLUz8IUNiFVIGrAWyHAqah0xt0a1IC
         nl1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762242989; x=1762847789;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=P40lz858sWn65cRyy7V02kKrFpLfqVO/bb0U8wLAIZU=;
        b=tiEruI4Nm+j0BdguLRPNGLzott+n4OKP77mKKQ2S2nR6WPw8WanH8DQJxqArxmjDEF
         ccvMTM5/SaJ9fnOWTfFv7yy5KG7EdFVvlzQGTtDAOIU7zd3zXJaF2QXVANxT0EM5DrPI
         HwRSgi8uiIgoEabjuPo61wCQRxBcA9QvZv8KlVMUyc4PLS/h32R+axszMDy0/NyKaGK9
         64aiw1z+5lHl1fwA0CGr0O1e1pMKIcfpktzdsVAUSmWn0lUFSaujGd1AanyijqlruiSq
         rxcidbFwUiSpu73CR2Ux1aQ2HU/SZ3CdR24FtvfCMKirHz5m3NrBSbJ6YWHaMvnHuRL1
         6bwA==
X-Forwarded-Encrypted: i=1; AJvYcCWMC8ck3TKHhxNFV3BGIwjii1hFGIh2XoFOglg50L1/84IKnrnAFHTYWjKWKvQyAxrKxv+yOoEbr+w=@lists.infradead.org
X-Gm-Message-State: AOJu0Yw79BYfdUygbwxiytqOUh9CzB43hWlLqdrX8dgQTgyO3QU6uSTA
	ni9qGcmLUtqrHSTLA3f3k0TdL0LDBzTm+y82Gjzb8ykYkzt9Vsr5hJR5d8s1Tvtlb1KArZD4U81
	mkDgVkQTFYirNofJ1aFcC2KBno7NqxBZhrPJhcOOQTfv5hDODRA919GoY60Fub2s205Rp
X-Gm-Gg: ASbGncurCDOx89LhiJsvgn1+pNNJUlJoOqBaQYtFTJFZv696A7GbuGYLVPNL20DrTxk
	f0o/1Xj8W8tMntOLGDy69beLy3kKXhi8aenuf3koBXbUZd1NWfQgTRjQe9d8rlv26Ov99MN1hI2
	YdlK0EIRO13ZUXGYs5Ursk/NWtJloUTgkam4iEQ2tYmeu6MtBCl+HUIH0nrFRS8ABrQrQsinHOF
	sja12i8EQPWoqiMvIkJPBOzOpTOJXu2Sc5RXPNUY1MxMmB0+l+Y33LDx+UwVGld3anQGyin/kVm
	gjCNxawhDAQUGO/pk/7DpLyybJWKLatgxxoG1FdYwXxma5GP9uVWvzxVZGxL3PfIhsUmb3rLu7i
	fk7fy/U04Hbn//sfdQVcEoPsHFwXi6hl7ddb+XI1NoBoa/A==
X-Received: by 2002:a17:902:cece:b0:271:9b0e:54c7 with SMTP id d9443c01a7336-295f93ad584mr36879895ad.11.1762242988736;
        Mon, 03 Nov 2025 23:56:28 -0800 (PST)
X-Google-Smtp-Source: AGHT+IH/E8qvGcCBdYLa47PSuXxXLtlO6bjm4wEtNyl3gjXLQFDuqqzVXOnKbSdRhjf+fG7eP7e0Xg==
X-Received: by 2002:a17:902:cece:b0:271:9b0e:54c7 with SMTP id d9443c01a7336-295f93ad584mr36879555ad.11.1762242988172;
        Mon, 03 Nov 2025 23:56:28 -0800 (PST)
Received: from hu-qianyu-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-34159a16652sm3627951a91.20.2025.11.03.23.56.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 03 Nov 2025 23:56:27 -0800 (PST)
From: Qiang Yu <qiang.yu@oss.qualcomm.com>
Subject: [PATCH v6 0/3] Add support for Glymur PCIe Gen5 x4
Date: Mon, 03 Nov 2025 23:56:23 -0800
Message-Id: <20251103-glymur-pcie-upstream-v6-0-18a5e0a538dc@oss.qualcomm.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAKexCWkC/x3MSwqEMBBF0a1IjbvAROOgtyIO/Dy1QO1Q6Ygi7
 t3g8AzuvShABYG+2UWKXYL8toTqk1E/t9sEliGZbG6dMXnB03KuUdn3Ao4+/BXtyh1ghtKNDtZ
 QSr1ilOPd1s19Pzy/LhlmAAAA
X-Change-ID: 20251103-glymur-pcie-upstream-bee1d45f5e21
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Qiang Yu <qiang.yu@oss.qualcomm.com>,
        Prudhvi Yarlagadda <quic_pyarlaga@quicinc.com>,
        Wenbin Yao <wenbin.yao@oss.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Manivannan Sadhasivam <mani@kernel.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1762242987; l=2257;
 i=qiang.yu@oss.qualcomm.com; s=20250513; h=from:subject:message-id;
 bh=p+zbtUGK0NYTNokcjJ8zTL3xu8AjoyYRhWwRjHzQ+QU=;
 b=5Vx34pD5tfyo2MUO9Q93MvRLw2sBgJbbxu5WtqHtd0o/+5MpxpAzN6xN5WieqffiOxq5NYFi7
 CVRPzBVcYVNB1U7vWtnT9XSi5g6gwjVm8SzrfXPNB9U2W9ZepHL3Cqd
X-Developer-Key: i=qiang.yu@oss.qualcomm.com; a=ed25519;
 pk=Rr94t+fykoieF1ngg/bXxEfr5KoQxeXPtYxM8fBQTAI=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTA0MDA2NCBTYWx0ZWRfX7ERSU93zmWeQ
 UI9dOexjFWFpIx66kfA60WTP9chpAx3bLWhglXO0DccbDwuGfGSF8LNFCLATFxLCcU3udh6Z/Ug
 lA5W9wuXPakstketj0e9ixcJYBk4cbuF1/Qx8cDlbZtu4ZdImRh7atxyqdz/bg4DY5y8kbup3xF
 RV5TmjRQ+iuwYv/34Yl+YTcDqeM9ZkmGv0rxLLSB35egLdkqJmX5BZ4gPumoqHZ0Wptzt+XUe4T
 TKezWBcWIOiXiwTzp6Atv8U2cTNEfW17i85VTka3434vHGgVjK5EGvxc6AGtY5Y1tn2YTD/8Bwf
 WOGTY6a0C6FOwIRYSvYUF2nVhMF8CS8TTn/5fZG+YWM/H1ioyG/cBRII+ztCxYkmSqPmioYEpV7
 TRW7MqT7+tvdZy32DWqIZgi9hhl8Tg==
X-Proofpoint-ORIG-GUID: mSAimeSLshQrYY5lRS9DH95fslxDozHD
X-Authority-Analysis: v=2.4 cv=CbsFJbrl c=1 sm=1 tr=0 ts=6909b1ad cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=KKAkSRfTAAAA:8
 a=k0-4wGrbkXk5owfNcNwA:9 a=QEXdDO2ut3YA:10 a=GvdueXVYPmCkWapjIL-Q:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-GUID: mSAimeSLshQrYY5lRS9DH95fslxDozHD
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-03_06,2025-11-03_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 spamscore=0 bulkscore=0 impostorscore=0 suspectscore=0
 lowpriorityscore=0 clxscore=1015 malwarescore=0 adultscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511040064
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251103_235630_198759_225DF3DA 
X-CRM114-Status: GOOD (  12.62  )
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
aims to add support for the fourth, fifth and sixth PCIe instance on it.
The fifth PCIe instance on Glymur has a Gen5 4-lane PHY and fourth, fifth
and sixth PCIe instance have a Gen5 2-lane PHY.

The device tree changes and whatever driver patches that are not part of
this patch series will be posted separately after official announcement of
the SOC.

Changes in v6:
- Rebase patches on 20251017045919.34599-2-krzysztof.kozlowski@linaro.org
- Remove PCIe Gen4 x2 support because Abel has posted it.
- Link to v5: https://lore.kernel.org/all/20251017-glymur_pcie-v5-0-82d0c4bd402b@oss.qualcomm.com/

Changes in v5:
- Rebase patches on 6.18-rc1.
- Add PCIe Gen4 x2 support.
- Link to v4: https://lore.kernel.org/all/20250903-glymur_pcie5-v4-0-c187c2d9d3bd@oss.qualcomm.com/

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

Signed-off-by: Qiang Yu <qiang.yu@oss.qualcomm.com>
---
Prudhvi Yarlagadda (3):
      dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy: Document the Glymur QMP PCIe PHY
      phy: qcom-qmp: pcs: Add v8.50 register offsets
      phy: qcom: qmp-pcie: Add support for Glymur PCIe Gen5x4 PHY

 .../bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml   |  3 ++
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c           | 32 ++++++++++++++++++++++
 drivers/phy/qualcomm/phy-qcom-qmp-pcs-v8_50.h      | 13 +++++++++
 drivers/phy/qualcomm/phy-qcom-qmp.h                |  2 ++
 4 files changed, 50 insertions(+)
---
base-commit: 0688945f3e5f85f64c7fc9157223f92e0fc5cfad
change-id: 20251103-glymur-pcie-upstream-bee1d45f5e21

Best regards,
-- 
Qiang Yu <qiang.yu@oss.qualcomm.com>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
