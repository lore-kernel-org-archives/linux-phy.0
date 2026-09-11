Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4D2B0C88E4D
	for <linux-phy@archiver.kernel.org>; Fri, 11 Sep 2026 16:47:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=8XhK3Otu1BjlIYwdaQ3N25b3I8KyHM2HOCrOenG/dCs=; b=EVkHoFP+FBsH5v
	8ldbHJ322JG+jIdJnn6EiGOQ4Yk0uTiSpkYq0VxyJHgTSyuq5cfLiyE8+Qv31HGHpSnovYqCJXr1I
	I44h8EDstSeISbLS5G+7dJumlO/ri3koyeghoXwyaiqTNhHcMM2Il4yWcraLQyIhld+ltrTPWW4Cf
	sL+1WtE1ApMvhNEZQ5slDM3kPnpMscrvS8XUZkL78kTz1Rwck99MRuTmGwzVXXQi66w+56wpx2QvY
	+wD8uRA4FOBYBShBqSgsbdK5ha4oywOt5zbpJk3tOgivVBWY18Hsu8sHRBMJTAfO/ysACVahNE2z8
	6KocVPLUt3DEawxQRqmw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x54PQ-0000000HFoX-3OTT;
	Fri, 11 Sep 2026 16:47:28 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x54PN-0000000HFo1-3FHX
	for linux-phy@lists.infradead.org;
	Fri, 11 Sep 2026 16:47:27 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 68BG43gI3426918
	for <linux-phy@lists.infradead.org>; Fri, 11 Sep 2026 16:47:24 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=zFWiaD82+LLEv+4Y9AJ0DX
	fzOC3GSd+sVzZ7Y6z32BM=; b=M2Pyuk39KtAEXKzA2rad6d8Rh5FP1aKqeYiCnH
	71rBlUozstcPj8RV63jHyw4M823w8F2u4yASW+T9hgOpmkiXmkfee1HvDxH8Lytg
	Inm9cUQE98qNLpNcEJ5pTnW0ntgYRpkidUO6QROj9RuzepB+9/HtePcyGg5Ln4pw
	xFF0vxfideoLigoWAhwCZdGb+SA6KLgoSOThjMuIvq4nN+HV0Lu5j+xpRzr4U4qv
	R018axdb6fJ8kCTLbXODMRE5+LApKAT0fB0wV+v5mMVUyLSoeIrcUby4Wzr7skb3
	Ly5XWWUl6zAfPuxJM2Ufq2AX+Tt7c3D3ss20hWhx1SmM8aKg==
Received: from mail-pj1-f69.google.com (mail-pj1-f69.google.com [209.85.216.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4gmmubr5f9-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 11 Sep 2026 16:47:24 +0000 (GMT)
Received: by mail-pj1-f69.google.com with SMTP id 98e67ed59e1d1-38e1118e4abso1970990a91.0
        for <linux-phy@lists.infradead.org>; Fri, 11 Sep 2026 09:47:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1789145244; x=1789750044; darn=lists.infradead.org;
        h=cc:to:content-transfer-encoding:content-type:mime-version
         :message-id:date:subject:from:from:to:cc:subject:date:message-id
         :reply-to:content-type;
        bh=zFWiaD82+LLEv+4Y9AJ0DXfzOC3GSd+sVzZ7Y6z32BM=;
        b=cFip1yO3MwaKdnz3ePCXLxzwUjhS9+ofsJmX6c1p+mSC+1q4WfHC5Q33DDDT4ejycb
         EzuQ9JVfn4NyeqDTnz7ZS1J+ndI0mw3LP8G7V3T6EI4p3SWLlRXYl9I9Y76V8f4KzftZ
         4Q/4J/nwIbLYeC/5fw9o2cWBRTT2LgqFyWTpSX+vVRcMYK6gP2eBYzM3Ml5PbJxUqPsu
         vofbuDjNTxhWlfY7wDdvKassrypR2fbAC9BkoOby5dWNoB2FraS8p7TvTDRJvPDbbyHL
         YBNedwC+p+0zW/ivaub7vtp05qsQ442BoWj0SNdtO5pAv7lYIIwOvGES504sFsQuLj3q
         p1cQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1789145244; x=1789750044;
        h=cc:to:content-transfer-encoding:content-type:mime-version
         :message-id:date:subject:from:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=zFWiaD82+LLEv+4Y9AJ0DXfzOC3GSd+sVzZ7Y6z32BM=;
        b=o9X2T6yL5MfVtAWXIzbiIv4ALaWtRd8H/+XWWJUM1zUD+xhaV+dBbVBD3UGsK2m+qp
         llC/OgZMWso+9VAcmQDrpHTXdA4Yil9kXQ9f/xwpneh0rjmBkAU1J/rnt53iH4wAOpR3
         vYxs5rkWexMaZb+L4Qwqoh0XMgRgKEsAcK/rNPjYklL7OQNtlGdxfL5MWzfRH/rRTmN1
         zHY2C0Fzy0ZGjP9zzpSAnQy2F8WNpugukZ8ZnNSD29WMLwMxfYybm8s/Z2zHCCYtNDXu
         csly+EU1y5cSIqkqZwbbNj+fCjfF01t/Bp3x/eQbY20GBdfuimMzSV0gO46ISQxQi4NF
         75BQ==
X-Forwarded-Encrypted: i=1; AKwUvBynTMDef+2XIPMpZSA3Z/8PW55kqvKBn1xi+4SWAvQBfFWQNVKo7OlPlALDD5NkqeyrbugkW6xfgRE=@lists.infradead.org
X-Gm-Message-State: AFuF++nH4PWOVoXZDS3SDc4a3t099kSqi788qq2Prujjb88oT9UCyG6I
	iec+nftIMaq7a82DUBRQ5KOalyAZuWn+Ud4lt6UyExLOdglqBe5fyMLzGmaaIwfOvthpT8NjDWK
	r6VdESVL+vissWLgUEsGbWiD1XnU7n9FhZ91Tc6B8tRwcfxlbN093eACMU97phKhZx7KeT/S5U9
	fp
X-Gm-Gg: AYBFou1HxdyXzqGrtoBUQNaev2vuLBovD9E1+zNkN/iBbBTQtnOH+O6q3IWGJtvaRWQ
	/ABIgqgm22ItkZL+zNoM4kq5lHOsYd0JQKAY15BQQTQhHSWgGsEC4FPoYRXa/5qJhx7zSoq9tKR
	B1flRUSfD5/ITMjT0fHb1DkywhiXcg8ADWirZ5xDP7VzNup3KWxeXC3pLDRudJ66AnJ+GWozQZr
	tD6q2fsT/noTL31AEfgjkIKxPZDD3Ad+X8tnyWUYQqIBL4R50iqNdTbcq+gpRlSmX2y8IkP03vQ
	DvlEJFMhla7VvVksZ4Hd00Rrlo5Rsa2MBGZEPY946RNyB2kYIEzcApnzykrjYU143yl9NxcU8AA
	MPTdRyzS7LzvEZOav4WRjMa108Q==
X-Received: by 2002:a17:90b:1f8e:b0:39b:2b5a:8dc5 with SMTP id 98e67ed59e1d1-39d9bd987a6mr8508378a91.6.1789145243636;
        Fri, 11 Sep 2026 09:47:23 -0700 (PDT)
X-Received: by 2002:a17:90b:1f8e:b0:39b:2b5a:8dc5 with SMTP id 98e67ed59e1d1-39d9bd987a6mr8508313a91.6.1789145243180;
        Fri, 11 Sep 2026 09:47:23 -0700 (PDT)
Received: from [10.213.101.15] ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-39da64d4bdfsm944193a91.0.2026.09.11.09.47.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 11 Sep 2026 09:47:22 -0700 (PDT)
From: Pradeep P V K <pradeep.pragallapati@oss.qualcomm.com>
Subject: [PATCH 0/5] Add UFS support for Glymur Qualcomm SoC
Date: Fri, 11 Sep 2026 22:17:04 +0530
Message-Id: <20260911-glymur_ufs_qcb_enablement-v1-0-b9fc5e2ee99a@oss.qualcomm.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAIgwpGoC/02OXW7DIBCEr2LxXCRYL7j4KlVk8bOkqLaTgG01i
 nL3kDpq+7azmvlmbqxQTlRY39xYpi2VdJqrkG8N8592PhJPoWoGArQwUvLjeJ3WPKyxDBfvBpq
 tG2mieeFSAVo0nQLhWM2fM8X0/cP+OOw602WtFcv+/Gvom50v8MXnlc/9+MV3S+FKgUZSRpO2/
 SbZ/32vdPe7jtdlXBIEcN7INoZ+a58JZwtxf5qmtPRNBBedb5VCb7WRBt9RtKIDg4DOBKLnFQD
 Z4X5/AHsXhpAnAQAA
X-Change-ID: 20260911-glymur_ufs_qcb_enablement-1524a497520b
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Alim Akhtar <alim.akhtar@samsung.com>,
        Avri Altman <avri.altman@sandisk.com>,
        Bart Van Assche <bvanassche@acm.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        gopikrishna.garmidi@oss.qualcomm.com, jagadeesh.kona@oss.qualcomm.com
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-scsi@vger.kernel.org, nitin.rawat@oss.qualcomm.com,
        sibi.sankar@oss.qualcomm.com, Taniya Das <taniya.das@oss.qualcomm.com>,
        Pradeep P V K <pradeep.pragallapati@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1789145236; l=2110;
 i=pradeep.pragallapati@oss.qualcomm.com; s=20260911;
 h=from:subject:message-id; bh=bJGsImACvT9xM12juJhgFEgiAuk2ivW2Mi7AoKZyfZg=;
 b=9lAVJWvM3G+ZFTJ4H36ve2HVhPJYTkVEvGF/7ChP/40cX7VIcizqD1Mv0hcnhj3AZgC02UQUU
 rIIGBkxBShdDcRoPiq97ZoDIZv2Hjq3C1K5sezm29WdGXtxOmEYLq0c
X-Developer-Key: i=pradeep.pragallapati@oss.qualcomm.com; a=ed25519;
 pk=uyRUsge8nQMwf3iW/e/o0U8z9nWLCMm1MGKxEftztic=
X-Proofpoint-GUID: P8WTij8zX9_uFGLLO5bu_QmTTJFCuSo1
X-Proofpoint-ORIG-GUID: P8WTij8zX9_uFGLLO5bu_QmTTJFCuSo1
X-Authority-Analysis: v=2.4 cv=dakVTnXe c=1 sm=1 tr=0 ts=6aa4309c cx=c_pps
 a=vVfyC5vLCtgYJKYeQD43oA==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=VdqzKS8jKosA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=DJpcGTmdVt4CTyJn9g5Z:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=Cnq2yzGENyK2wpwfoncA:9 a=QEXdDO2ut3YA:10
 a=rl5im9kqc5Lf4LNbBjHf:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwOTExMDIzNCBTYWx0ZWRfX7pnozkw5DQBM
 PBKBnoGPgsN5o4k2HM/esmnCkSxFKsrMtgE4Z0sq9Y1hom+Q2mNiD/xZyY7OvPtFCgG5LlvzkL5
 +rj7sYqVoBUsLifUmr1g+KIah0SWH4mYMXowMwa/dJWFhMfPq8CPtewvq/jvDcWMQtzC1z8QYTP
 dMa9Dy9D7fPQ0HUpCXpNL+IztVY+78o3xEAgtX80ljLsWmXnF25TDobyRB838y9EJ2sOvtpqQhp
 tLKOwu4KWuDt2ZGzjWX10krvjyru+Uq9DuVTd0pqPFJg2pbisQD0w+G//auUoGzRMId0dY1xSUf
 njh8Daih5gZT9TvhtLZf8guWI9SZT7JEx4l8XP81hOe8V3Fiwi2xgXH3bKrIpAwiHOlu4dkLJdr
 Z0ZG68Fx4AELEZxygfphPGBBnW+p4F8nrZNARUVqBFSfnJj6+VRrSdMieyly2wqfffHdGjUqXBz
 Zzfelw23a7e4KxsFwRA==
X-Proofpoint-Spam-Info: AW1haW4tMjYwOTExMDIzNCBTYWx0ZWRfX04wdptX9TJvz
 GwNqQ7eME1ujuzzCBTahFRwbHXRMnqF5bqkKHe2cLxJIbXkCehQocUU03/SIx8/4P4q0tfTv4Gm
 gqLrpWndXZb4US5lbkjT2/1AdFlHS8w=
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-09-11_05,2026-09-11_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 adultscore=0 impostorscore=0 priorityscore=1501 suspectscore=0
 clxscore=1011 malwarescore=0 spamscore=0 phishscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2609040000 definitions=main-2609110234
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260911_094725_822660_010EEA31 
X-CRM114-Status: GOOD (  11.21  )
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

This series adds the DT bindings, device tree support for the UFS PHY
and UFS Host Controller, along with the required PHY driver updates to
enable UFS support on the Glymur Qualcomm platform.

This series depends on Glymur LNBB clocks[1] and Glymur QCB platform[2]
series.

[1]: https://lore.kernel.org/all/20260905-glymur-ufs-clk-changes-v1-0-cdff2c67a8c2@oss.qualcomm.com/
[2]: https://lore.kernel.org/all/20260908-glymur-qcb-v3-0-c194c0219218@oss.qualcomm.com/

Signed-off-by: Pradeep P V K <pradeep.pragallapati@oss.qualcomm.com>
---
Pradeep P V K (5):
      dt-bindings: phy: qcom,sc8280xp-qmp-ufs-phy: Document Glymur QMP UFS PHY
      scsi: ufs: qcom: dt-bindings: Document Glymur UFS controller
      arm64: dts: qcom: glymur: Add UFS nodes
      arm64: dts: qcom: glymur-qcb: Enable UFS
      phy: qcom-qmp-ufs: Add Glymur support

 .../bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml    |   2 +
 .../devicetree/bindings/ufs/qcom,sm8650-ufshc.yaml |   3 +
 arch/arm64/boot/dts/qcom/glymur-qcb.dts            |  18 ++++
 arch/arm64/boot/dts/qcom/glymur.dtsi               | 114 ++++++++++++++++++++-
 drivers/phy/qualcomm/phy-qcom-qmp-ufs.c            |  99 ++++++++++++++++++
 5 files changed, 233 insertions(+), 3 deletions(-)
---
base-commit: f2bfbc3554ca6919484030729424b9dee2942d24
change-id: 20260911-glymur_ufs_qcb_enablement-1524a497520b
prerequisite-change-id: 20260904-glymur-ufs-clk-changes-55264e596e6a:v1
prerequisite-patch-id: 934a81749f6e977edb9214104fe2bbf4c7758663
prerequisite-patch-id: d4215d48878aac66f72ef5b6c74d81d1163a596e
prerequisite-patch-id: 28be2089f7836210401b8a68c7cc0ca90d63c375
prerequisite-patch-id: cdf227f5515ad8faec49bde5e0475755a961100f
prerequisite-change-id: 20260711-glymur-qcb-1e2d2bc913fd:v3
prerequisite-patch-id: 53dfb255c51efb63dd26fae3cb30307f0d175ac2
prerequisite-patch-id: 7fa1b965056eaf3b90ce81a537d28c5a2adc73fa
prerequisite-patch-id: 96b042ef08bba0e028c86ea2a473d996880ab38e
prerequisite-patch-id: d2f390b67a2ec320db1e725f4b84b500f1f0400c

Best regards,
-- 
Pradeep P V K <pradeep.pragallapati@oss.qualcomm.com>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
