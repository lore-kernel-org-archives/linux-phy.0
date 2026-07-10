Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0A746C43458
	for <linux-phy@archiver.kernel.org>; Fri, 10 Jul 2026 17:47:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=8uqML/4IocUj/EBJZMrFSGCWxuMZ4i1BzMNL+qZPsX0=; b=D0a1vyh0tQRdvL
	76Jx7FeFu/rpomQ53wIvPMif9Gi0ajghkd8aVojlIV2kJnPJBiG3by3gN8sQNn+WluRFE2oj9RBHu
	FdGv8TMTu/Z0qKhxuoPxbcNiZiWOmxkrSnQo29Yh6M4A8pzeNrYRgkctFkrjirL7rvXjFlYfoVV1i
	lCQOGiKZ6l2NkKeCftiyEczFcRirrA0dz4bIoYrq4lFLLG5uYgt0DOXkyBFzjY04NkJgACJ5zDGoo
	6DrYHt++dvvFIjjiBxy6viSXGueKQj77aOXg6T+epfSX/ZDuMN4YnWuX7AjL2M3pthNZsu4KE4GbP
	6FKkRxSSsq5ngMCpfZXw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wiFJU-00000005Sp2-0M2O;
	Fri, 10 Jul 2026 17:47:00 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wiFJQ-00000005SoX-3ZQv
	for linux-phy@lists.infradead.org;
	Fri, 10 Jul 2026 17:46:58 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 66AH3bb21443653
	for <linux-phy@lists.infradead.org>; Fri, 10 Jul 2026 17:46:55 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=mlfY5KW2Ubph8SuUrGt9q/
	dW8huEOfRAa2uT5hWsy2k=; b=Xm+N4F6L2DAuL2F3+Fsixh/2+uQPBknj2boS4L
	XLEboubLolcTPHdFENet6F0k/mE9lHPUVvWaQJRwL7yMpjR4O0VPgnniBT1KDNYg
	nvcAbBq1D6qRmRJzJ7wV+G5ne0Ozim+vnYrMiQ7fZmK+WMOM/ZMPX9cORfScQy/Q
	qQ8EUR9aymM9W+DOUo91roC/6OwPa0Iy4KVo5axEP6kzPM0H1JqEtZ9S3wrjYBEN
	LbA1t4J1PIqtUcP0TqKsbTpMJ/m+fMMc5b16yeVq/jX89ePOi/hPoAea+31guCq/
	UPJzEzsAPlsQ7+S7jNU3FiMlyEAVK3yzjDasIatW8ZbP2mLg==
Received: from mail-pj1-f69.google.com (mail-pj1-f69.google.com [209.85.216.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4fanwebq69-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 10 Jul 2026 17:46:55 +0000 (GMT)
Received: by mail-pj1-f69.google.com with SMTP id 98e67ed59e1d1-38c7e2730d6so1460509a91.2
        for <linux-phy@lists.infradead.org>; Fri, 10 Jul 2026 10:46:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1783705615; x=1784310415; darn=lists.infradead.org;
        h=cc:to:content-transfer-encoding:content-type:mime-version
         :message-id:date:subject:from:from:to:cc:subject:date:message-id
         :reply-to:content-type;
        bh=mlfY5KW2Ubph8SuUrGt9q/dW8huEOfRAa2uT5hWsy2k=;
        b=UDnYyirVQxqWD0p5uo1stQBPRqZc4j5w/bzmqvu2poxW1ZpI9pvE35VGLCgmCp1cYP
         9WHRLwpRvODR20EnwDGDWy8iUA+1+U8n+kt4fSUAsLbz5L+cF97x0vhks4sJUo5OUDEE
         +ZECsCK0/PC0xdbIpsmcaCceQ+ujDHQqBpLgV5K58fliUTuoToG+RplsRAPCCPVZyzgj
         QvYK4wd8ahe2ThnLggDt5JqdAtA9WQdPsSfEJ+ohC92sUN4aPetZtpfoxE0UsiqFB8U0
         jBSzK7F9w0J+9gB0C6odsgobawFMD/GvgZGJ1ewN/qyRbDbXwYj2PMnkq6gRKiA3o/uA
         /47Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783705615; x=1784310415;
        h=cc:to:content-transfer-encoding:content-type:mime-version
         :message-id:date:subject:from:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=mlfY5KW2Ubph8SuUrGt9q/dW8huEOfRAa2uT5hWsy2k=;
        b=GLCEcSTsdKW8YXhRPTWFg1zzrpAo2FJmgBnfz35nhDrf09CgMYhK6kyWWX69rmQoy/
         K7F9mX1CgR8228A+yMKw3BUrAxy3y7gjMvQo1tgw2ULjjz7zMWB9gj3xW7WgFUDxrulV
         br9MeUhKyn+yT17LoXN7OJKNjEQzJTJV2Svb5mso/kW7ncMtHga7YVYzT/j4A+SUoxOd
         oTgv5qFV94PT0yjirlP+9rBJnQOdBDJ0/NWhozAgEowXGOZ+6yYSmIQZOtVAzSKzOBCh
         DTPJl0tyUCpnCotI3q2Po7eP4eo5NoBhMyfjagGHw61lge5fEXB+oz+M7CCmerMMBkAS
         WYgw==
X-Forwarded-Encrypted: i=1; AHgh+RrUn/vryoAYSxn3ut4VHCwTo4yGkXDwRjrfO3sjhISTlyLKOTQX7UyYuP2+YcGvb7xG3cDQJMSSg34=@lists.infradead.org
X-Gm-Message-State: AOJu0YyWbMyFo44wF6TSMZ4QE7ZzAmiuEUvSYMaNv1M6XOI2emoIHt0t
	AJI+qX8zinxWPvx8l0f8dEpLI/9Qydxq6CAzgFYDDiMLKtP8Jdu2brp0b/vWMF0xAJBs8RaaoJz
	pacX+HbnlPQs66ZfGPpfyGnhJzzEg5tNHlkTpLnZcXmNjtemUwmYskYImhKzjdUHFWl3/
X-Gm-Gg: AfdE7cmrOIo1YAVXJG6LE+WC+L68toJrMneQfX6TjJdLCFScy6ziuMLOE30qEnagqjG
	FgdhJqbsIdMmxlpbqPxiXahLzieV4FaSxzoz3Li8lJ/V3dcY85UL3FHcef4jY1yo6Q6cptpyjUs
	AQJ2x5vAqtk+Pa8CQCc7+mtVxYyA8gBbKx+0u0zUXtpNSj91YfmTf3X40tam8Z9VcIwM/G2Ys0U
	xnPJEA87l9RLPVR7dGqXA6LJofXHsVyNVB8iAvm+7+zMRfGNQSsaxwSQIMfszLlN0KCdFE/vT8u
	GuQBsdsxHpZMJEX3N1Ez7II6CZVCNHbf4b09X7rIaEIKuNADeVuEy4Z0m04BvF1XuZoZPnjufxE
	AEOPuu6CGthAs0EiYLFVhvKPKbNqjgJxRpax0upk53PI7shRORxg1yxRHntdkUFn+rTmB+e+yjg
	4GT6K0t/J+idiMopKEq6Gy42hEp4DJa3pFDsx2LK6/VCrqJw==
X-Received: by 2002:a17:90b:3943:b0:37f:9ce1:735a with SMTP id 98e67ed59e1d1-38dc7777c02mr2424a91.27.1783705614703;
        Fri, 10 Jul 2026 10:46:54 -0700 (PDT)
X-Received: by 2002:a17:90b:3943:b0:37f:9ce1:735a with SMTP id 98e67ed59e1d1-38dc7777c02mr2391a91.27.1783705614218;
        Fri, 10 Jul 2026 10:46:54 -0700 (PDT)
Received: from hu-kathirav-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-31189cd8234sm33008273eec.9.2026.07.10.10.46.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 10 Jul 2026 10:46:53 -0700 (PDT)
From: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
Subject: [PATCH v3 0/2] Add support for the QMP PCIe PHYs in Qualcomm
 IPQ9650
Date: Fri, 10 Jul 2026 23:16:39 +0530
Message-Id: <20260710-ipq9650_pcie_phy-v3-0-ef6018818d33@oss.qualcomm.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAP8vUWoC/yXMyw7CIBBA0V9pZi0Jj4CPXzENsTDIuKgIbWND+
 HdRl2dxb4WCmbDAZaiQcaNCz7lDHQZw8TbfkZHvBsml4VoKRul1Nprb5Ahtijsz3B99UFKfhIO
 epYyB3r/ldfy7rNMD3fL9QGsfnr9q+3QAAAA=
X-Change-ID: 20260521-ipq9650_pcie_phy-60d7df32581c
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
X-Mailer: b4 0.15.2
X-Authority-Analysis: v=2.4 cv=LbIMLDfi c=1 sm=1 tr=0 ts=6a51300f cx=c_pps
 a=vVfyC5vLCtgYJKYeQD43oA==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=IkcTkHD0fZMA:10 a=RAioF0-LDSMA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=eoimf2acIAo5FJnRuUoq:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=KKAkSRfTAAAA:8 a=JfrnYn6hAAAA:8
 a=_lxU6AF3MxErEUeOnbgA:9 a=QEXdDO2ut3YA:10 a=rl5im9kqc5Lf4LNbBjHf:22
 a=cvBusfyB2V15izCimMoJ:22 a=1CNFftbPRP8L7MoqJWF3:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzEwMDE3NyBTYWx0ZWRfX6DsKqDuSjUU5
 CHYBXIZCG6ejtPCd6d88GYlK71UFdDhUrKUNogs1mIVzwz2pgjamEB6LKFef8O5wtyLM1POCR7I
 TsQJlgLuxXaeDAn19UfWz9pK9MsO2CiPCafbCKJmLHfURDWTz2Mie59Mh3+sa6GCSg6WTxTZeVT
 3iDSLbpg7/ulwDCLmfBkscQDBLiTHc5fTQgvAWrQtGOLvlPa071ij+i22gcc/uPTsM4litvi/u1
 5RvuXLneoj3YY+uLbx7M0472oy0OU5195sk4b3GToLYm7JDf/l+ulrXeOLU83C5hZRbzkwU956K
 UWXfnPlqQLd1Pg+PLlnNhUXNzHbxgfMy6OeEjBCPPuwE1MMCMwOlukQ5ylnmBOaaz/SM1wHqZEl
 4Nk3F+5/ik7zNhpRr5255RczHa8dLRATtR5JqxL+eOB/eHDcbDjz/vGZqwgocKQkYADXWtU5Way
 4kZzn+xIgXk+Fa3zOMA==
X-Proofpoint-ORIG-GUID: h0sL6V_6da04zSquMAB7iAKu2iYjZ9Qg
X-Proofpoint-Spam-Info: AW1haW4tMjYwNzEwMDE3NyBTYWx0ZWRfXyz8YpN1LGjfN
 e+njrfnUx3/gdem+ONiqLDfsj4RVTVHgiJia/ZRW9Zq/FEWqSCeaz6d5BmaUY+rm6J6eL4hKM0J
 h5yQmzRbteQd/S5GOceFggi5KGYkOds=
X-Proofpoint-GUID: h0sL6V_6da04zSquMAB7iAKu2iYjZ9Qg
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-07-10_05,2026-07-10_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 spamscore=0 suspectscore=0 lowpriorityscore=0 bulkscore=0
 clxscore=1015 impostorscore=0 priorityscore=1501 phishscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2607100177
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260710_104656_900535_592E178F 
X-CRM114-Status: GOOD (  11.93  )
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

Qualcomm's IPQ9650 SoC has 3 Gen3 dual lane and 2 Gen3 single lane
controllers with the QMP PHYs. Unlike the PHYs in the other IPQ SoC,
refgen supply is needed to bringup the PHYs. Both single and dual lane
shares the same HW init sequence. So reuse the tables.

Document the compatible along with refgen supply and add the phy driver
support for it.

Signed-off-by: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
---
Changes in v3:
- Rebased on linux-next: next-20260710
- Pick up R-b tag
- Incorporate the link stability issue fix (QSERDES_V4_RX_RX_MODE_00_HIGH4
  from 0x35 to 0x3a) recommended by the IP team.
Changes in v2:
- rebase on phy-next
- pick up R-b tag
- Link to v1:
  https://lore.kernel.org/linux-arm-msm/20260602-ipq9650_pcie_phy-v1-0-d8c32a36dbd9@oss.qualcomm.com/

To: Vinod Koul <vkoul@kernel.org>
To: Neil Armstrong <neil.armstrong@linaro.org>
To: Rob Herring <robh@kernel.org>
To: Krzysztof Kozlowski <krzk+dt@kernel.org>
To: Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org
Cc: linux-phy@lists.infradead.org
Cc: devicetree@vger.kernel.org
Cc: linux-kernel@vger.kernel.org

---
Kathiravan Thirumoorthy (2):
      dt-bindings: phy: qcom,ipq8074-qmp-pcie: document IPQ9650 QMP PCIe PHYs
      phy: qcom: qmp-pcie: Add IPQ9650 PCIe PHY support

 .../bindings/phy/qcom,ipq8074-qmp-pcie-phy.yaml    |  19 ++
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c           | 220 +++++++++++++++++++++
 2 files changed, 239 insertions(+)
---
base-commit: bee763d5f341b99cf472afeb508d4988f62a6ca1
change-id: 20260521-ipq9650_pcie_phy-60d7df32581c

Best regards,
--  
Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
