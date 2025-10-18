Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 31A66CCD184
	for <linux-phy@archiver.kernel.org>; Sat, 18 Oct 2025 01:33:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=t25OqJQ3sK6xUWg6+yUklIUy4DYAeNt6Rh42n1/p3Nc=; b=Nq2mOlh4xoXBK0
	8FZNaXWXCBqbGrJ1MNV3xUM+UJaUketkps5U/QUZsKp92zbRNM7Pjrr/UUuPrWNm65x6TthuvLi/y
	Hs2aOtw2/YEfI8iRa/kYCcvEJqhCS+IdLB9EpYUY8VDc6Vc2KhgMeypm/b8jmScT/e/SU1Miy2Yed
	w44BAzV7ngqfcV14Pcv1n3zRvK33Ti7kPDmqbopbLxwZPI3NRwarCg/b/ncRUV/SFHVstZwXzjeQG
	n5erEi/676X3q+3sOpqjPzCj+sxS+mCXbUe4TERF0N2jKattEk4IRByq6ybJxGal+E2iSQ3dEWM0J
	e9TCoDQJkCLkZ7ddAo+w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v9vpL-00000009KDD-33ol;
	Sat, 18 Oct 2025 01:33:47 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v9vpJ-00000009KCW-2EQp
	for linux-phy@lists.infradead.org;
	Sat, 18 Oct 2025 01:33:46 +0000
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59HJGGoV031913
	for <linux-phy@lists.infradead.org>; Sat, 18 Oct 2025 01:33:44 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=rroNn6f0SE/dVbiqnfe2s5
	dd8O5NkJE6h1Gdc6f22SE=; b=lMr1CValIWq3Ru5jzla9NgQgrIODMG9+fvztZc
	EE3ABnSp3+ACePbdLB+8KZsYIp9ISdzXxCjd1ZsTzjTRvfynt0Z1FHGuTTMyD9Qj
	x6ImUWyfCEpUvS6IFyq3NTcqOHiYhG4/oLwiUNxVA3YvOK1B/dg/tOBeAxOlmIGv
	5rtiTwPL3dgZ9Nj+n++fpD7C8vlVe2XZFV7y36J5fv4ojji06THn2s3BIWK/hE5O
	6LdJa3R0BM3FGun4WPD8/0yatvKjR9h7VGx+DmdthDFUE9IGRhiiH8W+Z2dDxPW9
	5ewKy/RB9jkegRIGB87O7txXN30qWzukkI0xUDKqrfZxLltA==
Received: from mail-pj1-f71.google.com (mail-pj1-f71.google.com [209.85.216.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49s6mx0h1r-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Sat, 18 Oct 2025 01:33:44 +0000 (GMT)
Received: by mail-pj1-f71.google.com with SMTP id 98e67ed59e1d1-33baf262850so2553500a91.0
        for <linux-phy@lists.infradead.org>; Fri, 17 Oct 2025 18:33:44 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760751223; x=1761356023;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=rroNn6f0SE/dVbiqnfe2s5dd8O5NkJE6h1Gdc6f22SE=;
        b=FJssDSYNpAX0lg3WrV8zZ4qxU46o2Z+ZlG/V5kCioAVES8ubSqr9x5+pU3lzEjqHq/
         QgF7DPPICgTSY6X/vM+1il7kF9KM56Zc1vavWcjB17u0FIkDxU+PY2noHfM+U8HczwPo
         DRrau7okn/rt5LOaw+A17a9s/BZJFHkA8HPnBhiRqNGKLaM5YUioww94axIhR//vHlvX
         tkoxKbeX7wnEr0V0yuzUEy7U2ud+NProaFGHVWArqjAJQWtaBISjcxWXcpe5NzWe+GzV
         w0Vd0c6tsj4uddeDNOdMMoPzNMWhjj287mc7ILUEL4/0mVAf/9tPLCUG4NOepyVl6t7S
         74jQ==
X-Forwarded-Encrypted: i=1; AJvYcCW9VQmwnT9VIpfYcFDt8TemT6CckLA4mMlpuH/pkilOu6E37MXi1JMIE6KVlt+knXceBmZZPGte3i0=@lists.infradead.org
X-Gm-Message-State: AOJu0YzegPf0r5zWXWINhNF2yecFqRq3SNzE5E74EgW5ylB8n6cMsaZ1
	409yWKS4opWV/TlIdgc1WhzlD+QWrDhxG66IkNTgwD/RF+EIPPrBHFntTWj90nCrvAfKg1tdts6
	xUC9NJH0Cm+8B/6yccX49a0RcBR1ZbK2wSSFPlAmuUo4K9O6j6SElIZWV/pOznI5Rf0/yBPMYqc
	9fpTdEfQ==
X-Gm-Gg: ASbGncu8zLhND3jeiax6MAjHAJH2eUrAE7142+cuty3Ig6oGWaLEjnp4q12gGF7IM0m
	f9M+aEV9Eg4PnpSACYbbXYLM5UiGxb1qGv5WCu+nGLd9wTwZf2/tlzMyTvhbp4meJSUhhyhWsZA
	Al6PYnKnJ9easd0zxXBpBlR/MOL+1LdH3wQwVe4QS/5o9L/tQs2PlKCi3EPA/z98EaZ8oppjrBI
	lLVei7+VeMHHAfKCiGW4K5ieoJ8wLDsJRdn69AOBiYXZtjNxJABcHPCNaaXfleorErxQyJ+owDJ
	Hk171C7/4yFxVeCxihkusD+NMdWylo36ZiD3XWfHwk5CuHdFy0WIC68nIof/DJqq8VM/Mz7fbH0
	HbmgErziaGDwdAlNlvHQzTTr7juVvdb/98p5eu1z9ZvrQ6Q==
X-Received: by 2002:a17:90b:4c0b:b0:32e:d599:1f66 with SMTP id 98e67ed59e1d1-33bcf8fbaa0mr6005781a91.30.1760751223345;
        Fri, 17 Oct 2025 18:33:43 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHBIJRmb5oAlcn+6Y/ujWPTO6fLOct8GdacvPDO5zrGgxmmK2+JyQeUEWg8CVD/bDPkQNxCUg==
X-Received: by 2002:a17:90b:4c0b:b0:32e:d599:1f66 with SMTP id 98e67ed59e1d1-33bcf8fbaa0mr6005756a91.30.1760751222854;
        Fri, 17 Oct 2025 18:33:42 -0700 (PDT)
Received: from hu-qianyu-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-33d5ddf16bcsm791695a91.4.2025.10.17.18.33.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 17 Oct 2025 18:33:42 -0700 (PDT)
From: Qiang Yu <qiang.yu@oss.qualcomm.com>
Subject: [PATCH v5 0/6] PCI: qcom: Add support for Glymur PCIe Gen5 x4 and
 Gen4 x2
Date: Fri, 17 Oct 2025 18:33:37 -0700
Message-Id: <20251017-glymur_pcie-v5-0-82d0c4bd402b@oss.qualcomm.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAHHu8mgC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyTHUUlJIzE
 vPSU3UzU4B8JSMDI1NDA0Nz3fScytzSoviC5MxUXQuLJBPTpDSjVBNLCyWgjoKi1LTMCrBp0bG
 1tQBXDzJoXQAAAA==
X-Change-ID: 20251017-glymur_pcie-88b45bf2e498
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
        Prudhvi Yarlagadda <quic_pyarlaga@quicinc.com>,
        Wenbin Yao <wenbin.yao@oss.qualcomm.com>,
        Qiang Yu <quic_qianyu@quicinc.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1760751221; l=2322;
 i=qiang.yu@oss.qualcomm.com; s=20250513; h=from:subject:message-id;
 bh=9n2Npp64JjtwAgf393tgwa+BpFjxY3/Fbk9Q2T1oeKo=;
 b=B+wWdQtXBETqipJFLxgfTrTpxJSNE+uVsx8vFnqTU8vyV4TO9d3EOOZDoJAI3l1+MS0/4RBfd
 T/FyzfThbcbAc/qvmsj8Cy6DDdAMf4HA8kT/XaRvFVTyczlCuzVyCdX
X-Developer-Key: i=qiang.yu@oss.qualcomm.com; a=ed25519;
 pk=Rr94t+fykoieF1ngg/bXxEfr5KoQxeXPtYxM8fBQTAI=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDEzMDA4MyBTYWx0ZWRfXyFSRPe1I4VyR
 DR9LoTcUiNPFLqSs91IT/fFojr/kLWOyyMCDtOCGsj5jektKhs1/+IrZFhNojIcXBlrpSVUZZah
 VRsntkycg3R4X9JYR5kvI5OQrJLYSI0NBhwDrqzBKgBMk8/UeVBE6ajybTgnoxFgFraB0hXxuxp
 Nw0AMK/94H4SeWGdxMfeiL8roiCSg7Q70NnX6JR7KXQP79tPUp3LDGFGbvgR+0OFyZeDvcuARdp
 9S+UPl+Li8tV1f3ZEgUY+PF45fnYF9MF3Sk6tgBGkvpES594QCc4IKf2Wnp75KTthWKeqG/o82C
 mTYUUUByQ1Kv04TrGQyePk6Di+VgJi1DVLnAHIbQll6rbaCH6EdAeUNdFLQ+6o4t2ICB+t+UA8a
 mLyTAqhgQIxLZwbkH7D78RKNKsbvog==
X-Authority-Analysis: v=2.4 cv=Fr4IPmrq c=1 sm=1 tr=0 ts=68f2ee78 cx=c_pps
 a=UNFcQwm+pnOIJct1K4W+Mw==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=tTp27qs2TqmI3G6P:21 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=lPERAFM6RZwBrWm71pQA:9 a=QEXdDO2ut3YA:10 a=uKXjsCUrEbL0IQVhDsJ9:22
X-Proofpoint-GUID: c3mLkUNi2dvqH8ouOyCyoiuoNqVQyOGB
X-Proofpoint-ORIG-GUID: c3mLkUNi2dvqH8ouOyCyoiuoNqVQyOGB
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-18_01,2025-10-13_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 impostorscore=0 spamscore=0 phishscore=0 malwarescore=0
 adultscore=0 lowpriorityscore=0 bulkscore=0 suspectscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510130083
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251017_183345_600582_E280919A 
X-CRM114-Status: GOOD (  13.45  )
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

Signed-off-by: Qiang Yu <qiang.yu@oss.qualcomm.com>

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

---
Prudhvi Yarlagadda (4):
      dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy: Document the Glymur QMP PCIe PHY
      dt-bindings: PCI: qcom: Document the Glymur PCIe Controller
      phy: qcom-qmp: pcs: Add v8.50 register offsets
      phy: qcom: qmp-pcie: Add support for Glymur PCIe Gen5x4 PHY

Qiang Yu (2):
      dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy: Document the Glymur QMP PCIe Gen4 2-lane  PHY
      phy: qcom: qmp-pcie: Add support for glymur PCIe Gen4 x2 PHY

 .../bindings/pci/qcom,pcie-x1e80100.yaml           |  7 ++-
 .../bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml   |  6 +++
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c           | 60 ++++++++++++++++++++++
 drivers/phy/qualcomm/phy-qcom-qmp-pcs-v8_50.h      | 13 +++++
 drivers/phy/qualcomm/phy-qcom-qmp.h                |  2 +
 5 files changed, 87 insertions(+), 1 deletion(-)
---
base-commit: 98ac9cc4b4452ed7e714eddc8c90ac4ae5da1a09
change-id: 20251017-glymur_pcie-88b45bf2e498

Best regards,
-- 
Qiang Yu <qiang.yu@oss.qualcomm.com>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
