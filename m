Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 89337CD6E55
	for <linux-phy@archiver.kernel.org>; Mon,  1 Jun 2026 17:30:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=N2prk59hZEFeb63KUq6wbNRjRNnYU1K054/eg7rhWCA=; b=J1PmP4nBAZUGqF
	TI4oMst0GzCW/Mp40/D+CbmD7s0tgB+jTpvvN2meIjJf0gtpstpkiZYtcLN74h0B1ODftBRETLUMV
	dZwlvt2t6LqtDEx6lR0M6OASes7WFMzlAHISGd/w22Hi3zgonFMW4zNQQ1uYe6IEOk5fEpqKCfhia
	4SInABS4AlyR8aGwsCbRiN7RHMz7L1WfbRtQjGzA1leRyHpo7vawalPgucD2uDZhj6eRTEDz1EexN
	0NnIkga3CPU8aKJ8DxD0rHDykv4pNONT8ejFBnmGC1ww42Rfi/6Zg7Qh0CPjhazN4aWJ7dA0sGsCl
	ipYiH57W5ldzwJ6uSwTQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wU6TW-0000000Ba5r-48lz;
	Mon, 01 Jun 2026 17:30:55 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wU6TU-0000000Ba5F-0Iv8
	for linux-phy@lists.infradead.org;
	Mon, 01 Jun 2026 17:30:53 +0000
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 651BB5633127901
	for <linux-phy@lists.infradead.org>; Mon, 1 Jun 2026 17:30:50 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=1sUnhF+L9/rWjdKJJ0odJH
	7BcvEADzaujue7QqNbFpk=; b=NoHcs2AkVINkHBMo1UxnXo9Lg21KG+lmgeXhjx
	tNcuv0fZep+lpCwWlxhXFAI81g1efigyLZJxZ7NipfWBjxfi7/7UdOYdiNNHg+cu
	RNMpA6EvETSWSA9Za0RCsuZJvWCdooXHcdSuF682Bd+HIZmL/W5CXrbvCoWyFrT0
	CARIfVCsaxvKsXIh8y21xLATKfMVOpXsBzRlYtZ3OrQQMP9XEEgSCpiNJn9d1bWq
	IqGHAiormyNZ8KiHu4FvVQhuIJxggo+2NgGrHRhoOvhubZL6yb+hjlMdwl0l/HMx
	wGe74B88mAn7bCfxkkeHLA09U+9KEckPfHkdswrtg2sFP6MQ==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4eh9011m5g-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 01 Jun 2026 17:30:50 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-2c0c32faa62so29863065ad.2
        for <linux-phy@lists.infradead.org>; Mon, 01 Jun 2026 10:30:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1780335049; x=1780939849; darn=lists.infradead.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=1sUnhF+L9/rWjdKJJ0odJH7BcvEADzaujue7QqNbFpk=;
        b=L+xuw1ljr6XEVoqDU3w/61Y9d//Edq7vIiWDVaq8JrLAiM1wx+knY0/ja+lEpFgYZr
         gI1qaThf/GX/S8WfD8rxkz+EwmCIeHh4CGYNbiStmQfM5BEkv95IS13TMZLCa+Fhjl+0
         qtHnpzYqckiT3mInrDBQjSlZvb48EHMmN5of4SLLQB8TRN8O9SBCwiIH0cEtNpqcgNLZ
         h9m915f6NjAmWbGsOjaM+3cVIomCwlxr1fr5+DTGYF4lBKf9A9rNrPF/arvYOegB5Ekh
         1xjgzBTmzdl1B2PgevBcRo5iruySFM2ntuFT8KcS9P/lwlNdFgFWQE6h0MUBRe7yU8NU
         WFdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780335049; x=1780939849;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1sUnhF+L9/rWjdKJJ0odJH7BcvEADzaujue7QqNbFpk=;
        b=RLB3sUsD2hqOW/mev9mHNoYgVOGXogFJfumwbnRV0Aw8nlZbMwk9Lp+3JEC289nBSt
         9AMo7dgU4DRU1DAIU6Ym+ttHm3iz++gUFVq5drIQJclSCANiE0TUIvIp73PACs+Ize+H
         B/+uElZK3liv+Ru1KBuD0gwCozvPMDnqc18GX8xR05JT7NZoZFrjwiqfO28sT8bnwc6k
         /R5agY3zKVrtlRNhllW4k00MZgyZCR9kx3dbGditvVSAruKbU5vz1QOd/uOm/GX3k7zp
         XP5sP4/Ufw94rtd4xOY1dLh80EjkKsn4fXWannUVwD9sHZK8id53C/HzLrbpMi1dVOs8
         3++Q==
X-Forwarded-Encrypted: i=1; AFNElJ8nOcwHKUg5o047X5G1WWzpZVY+iI6qlkMkqc9tNODkEraOuCROwe4faxtSPq3EjKCGN7gibFuOn9U=@lists.infradead.org
X-Gm-Message-State: AOJu0Yywrb9Df2iP+lcb9Pv9msjJhlMfZVdxeWKVIrEAEuYHxMHbNcCI
	Prn5D4fhTqEhvIEKd84M0FHl9pVayqvpZTfRQxLyRDwyQpD6YdyMCGXIY10oKiV6wRLZcWF2Xkp
	rB/75BYuj4ZdLZdc6MwQHq/M8EttEUhQy8E8wQpDCHePh4a5K6/v5kovNZq0yP1Vvmcw4
X-Gm-Gg: Acq92OEs/IF2XdtHsxJvprZk+S6zOvrbO2Y71BuUHtBg0NVZq3Qp9/Vnr4xFgFtaCl7
	3xb/NMc/ILpjEhTKLNVccmCk1Yl5TS+GCAAWshwNmAcEGA6hUWfqONG2/a4i/zI1a6YZxWqi2Py
	ZHPCHLkJ2bU308emkDK74WYlbtKz3H/0F6nWAcrnsdhN3LFGQeAFxIiY6pSTDdUoa33XZuSjGta
	ca39pTVeDMYNNBNAuEpyKWP+SMq3ZCMqk8N6+xLV1m/ZM3KFvuIJ6el5wF8oQpNyL/gIMzYGxOK
	I3o83nmaTcM48VaisDCAizzqyA09uDcvanEDC5jeoxSOIvUvTVa4eIgtPehg+HxGRpYROsIggK0
	xYiRJt08veDhEzu8Xa/8fbwNCmLxKlEl82J5tjd4ijaTFR7jDViRleF7hwawwPFJ2rps=
X-Received: by 2002:a17:903:1905:b0:2b0:c59f:3b58 with SMTP id d9443c01a7336-2bf367aa885mr142466285ad.9.1780335048858;
        Mon, 01 Jun 2026 10:30:48 -0700 (PDT)
X-Received: by 2002:a17:903:1905:b0:2b0:c59f:3b58 with SMTP id d9443c01a7336-2bf367aa885mr142466035ad.9.1780335048449;
        Mon, 01 Jun 2026 10:30:48 -0700 (PDT)
Received: from hu-krichai-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2bf23b011f7sm149136085ad.41.2026.06.01.10.30.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 01 Jun 2026 10:30:47 -0700 (PDT)
From: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
Subject: [PATCH v2 0/3] PCI: qcom: Add support for Eliza
Date: Mon, 01 Jun 2026 22:59:43 +0530
Message-Id: <20260601-eliza-v2-0-6b44c9c23d5e@oss.qualcomm.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAIfBHWoC/y2NQQ6CMBBFr0JmbQktVsCV9zAsShllDFDtAFEJd
 7eAm0le8v6bGRg9IcM5msHjREyuD6AOEdjG9HcUVAcGlahTclSZwJa+RqBOpdYG81xJCO7T443
 eW+da7sxj9UA7rOPVaIgH5z/bo0mu3t7USv6bkxSJKDJbVyGb5kV9cczxazStdV0XhwPlsiw/N
 XXKzrMAAAA=
X-Change-ID: 20260427-eliza-e53155ae8821
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
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
        linux-pci@vger.kernel.org,
        Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1780335042; l=1634;
 i=krishna.chundru@oss.qualcomm.com; s=20230907; h=from:subject:message-id;
 bh=dTxWkC9D/nQhAvkCNBylGPNDKnNQFBcLRIV4F8qd8OE=;
 b=i817uyArXAMMqslAv/+8fL2dnAFE1MVeVBOaxSzivu9AVo2CwzvvglB3MKVuJQfu3fpQc2QR7
 xvCY2FF/gswBAD/2k2XNLQ5erDIcvuEmPuV9CJy6s0L/gAw/nXLQ9L2
X-Developer-Key: i=krishna.chundru@oss.qualcomm.com; a=ed25519;
 pk=10CL2pdAKFyzyOHbfSWHCD0X0my7CXxj8gJScmn1FAg=
X-Authority-Analysis: v=2.4 cv=H6nrBeYi c=1 sm=1 tr=0 ts=6a1dc1ca cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=FelO9ux0wxsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_glEPmIy2e8OvE2BGh3C:22
 a=bC-a23v3AAAA:8 a=EUspDBNiAAAA:8 a=qIbWdXD6M1inJYch3NYA:9 a=QEXdDO2ut3YA:10
 a=324X-CrmTo6CU4MGRt3R:22 a=FO4_E8m0qiDe52t0p3_H:22
X-Proofpoint-ORIG-GUID: Ow5JfQqMKXuipJhNl3bi0hiosZMO3m93
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNjAxMDE3MyBTYWx0ZWRfX9tsbROFqSQnz
 jPzjSkvykiD232tYOeZJgNC7oBc2dQgWaSFjmZr19IrOtGeTjZN257yK+XySVN2z+d92DhwtyEL
 p+RfQ8gUJwCzL8L2g9Tq1FP/29P7lxz0tQhPQ173hZii/D61gIzPDXBHy1G20IYrXfBX8gXr+m3
 9ZUVr4BYbR4biTiAuB3qvh2xamTrNrTfkYHot686pL+/b+yHa6LGO3S9tifNJV0VqkE8YKX/ww0
 0NipZGjtFdX5P5CtgokwmPGj3pSiwcY1P8WqN5oHv6jxmwPcU49TgCkr/o2a47Ab0wqy2Zs0RXo
 GpukU60nlnka1xxd0KS9I/cW1kYQGU+Fv6VaGe5PyJScCXOcWI2qQPYQa0+d4Ldwfh/6l2FFewU
 kP4TTyyaJrdKkXa0rg50LQhADfa8+UTyfpx4yJ9YqlcVOOVZL3OC8KksDNWp6xQsef8Hao0e3z7
 U6JYp2I2NY22knxPdlA==
X-Proofpoint-GUID: Ow5JfQqMKXuipJhNl3bi0hiosZMO3m93
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-06-01_05,2026-05-28_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 adultscore=0 clxscore=1015 phishscore=0 impostorscore=0
 bulkscore=0 lowpriorityscore=0 priorityscore=1501 spamscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2605210000 definitions=main-2606010173
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260601_103052_255802_E6FEFC64 
X-CRM114-Status: GOOD (  13.47  )
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

This series adds PCIe support for the Qualcomm Eliza SoC. Eliza includes
two PCIe root complex controllers capable of 8GT/s x1 and 8GT/s x2.

The QMP PCIe PHY support adds a new Gen3x1 PHY configuration with
Eliza-specific initialization tables, and reuses the existing SM8550
Gen3x2 configuration for the x2 PHY instance.

The series consists of:
- dt-bindings for the Eliza PCIe QMP PHY
- dt-bindings schema for the Eliza PCIe controller
- Driver entry in the Qcom PCIe controller for Eliza
- QMP PCIe PHY initialization tables and configuration for Eliza

Signed-off-by: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
---
Changes in v2:
- Remove the driver patch and instead use compatible of sm8550 just like
  kaanapali (Krzysztof)
- Move all the phy settings to lowercase (Dimitry).
- Link to v1: https://patch.msgid.link/20260521-eliza-v1-0-97cdbe88389d@oss.qualcomm.com

---
Krishna Chaitanya Chundru (3):
      dt-bindings: phy: sc8280xp-qmp-pcie: Document Eliza PCIe phy
      dt-bindings: PCI: qcom,pcie-sm8550: Add Eliza compatible
      phy: qcom: qmp-pcie: Add QMP PCIe PHY support for Eliza

 .../devicetree/bindings/pci/qcom,pcie-sm8550.yaml  |   1 +
 .../bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml   |   6 +
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c           | 139 +++++++++++++++++++++
 drivers/phy/qualcomm/phy-qcom-qmp-pcs-pcie-v6.h    |   1 +
 4 files changed, 147 insertions(+)
---
base-commit: 254f49634ee16a731174d2ae34bc50bd5f45e731
change-id: 20260427-eliza-e53155ae8821

Best regards,
--  
Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
