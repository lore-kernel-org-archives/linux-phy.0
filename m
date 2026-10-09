Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D5F57CA6012
	for <linux-phy@archiver.kernel.org>; Fri,  9 Oct 2026 10:36:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=MvPXzt+Hfc8S3vCBiwaziCOX4JdGjwGYHN+eu3avov0=; b=e/aNMvC+rMfzss
	IjKKk6GG05A14ntuHAbM1lDLCGN1xKtRsxo9WUnSQjgzvcSwuOJK4pWdDe7VB5Hw6cEX8xk2ltIoc
	SWwe+gsEIlL+krhCohJekwKs79StZ9x7G2+AvVOWLeWKmBtzHrttNDscUhZ/OAg7qzij+ud2tfp6/
	+Z7K4ym7l1f2rtyUnXlt8gvYULqF4yzeMIW0UvTFE+HFOpYz+CXgk/MFwGJubJkO8ofjM35nmtmXj
	DX6aLY+b8Ecu6GK++jqEy+DIQuEO3l+GQD1Rtg5rdUbLvFNrXIoXzWGNVZs2YdnRNzYqeWU5vmGF+
	+F7uzE8XqNrfJ5G9+J5g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xF7xd-000000064vJ-2IMk;
	Fri, 09 Oct 2026 10:36:21 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xF7xa-000000064uw-0Pwq
	for linux-phy@lists.infradead.org;
	Fri, 09 Oct 2026 10:36:19 +0000
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6998KIXe404357
	for <linux-phy@lists.infradead.org>; Fri, 9 Oct 2026 10:36:17 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=XGvgn54K0a40R3IVJczenf
	eok8dRXyckmZReWXoa2HQ=; b=jMkgUpJNabOs/SKDc8eEi00s0A74j8eTvPgFS3
	8i54C9MGX5imXZlMjioYmPP9yzn2AvAh/sl9m3zqEWm+aJ16UJwgL5xP67yVaCiT
	I855ivu6M9hOEEHTUQFD5fTYibI6n9Ybc9twhIj8cNxekLypPyLwqcBDN/pgvArI
	OOTPPKSDp1nJ37SJv8Ujh09QD+39gBDbVpsfWoBpnymWWXQCuziHG6stzfwcFyYD
	qH/UE9WBrTgx/8i8gBKmgFoCWoh+7/ByXu7ITss0MeNQ/7plP1x0V3J6RxpL602P
	ps70y5/M2oQS+QJwgOSimNEPtohy4ttL4NR0s7HVWeb/VcYQ==
Received: from mail-pj1-f69.google.com (mail-pj1-f69.google.com [209.85.216.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4h6fxk35nt-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 09 Oct 2026 10:36:17 +0000 (GMT)
Received: by mail-pj1-f69.google.com with SMTP id 98e67ed59e1d1-38e54b6556aso6050385a91.2
        for <linux-phy@lists.infradead.org>; Fri, 09 Oct 2026 03:36:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1791542177; x=1792146977; darn=lists.infradead.org;
        h=cc:to:content-transfer-encoding:content-type:mime-version
         :message-id:date:subject:from:from:to:cc:subject:date:message-id
         :reply-to:content-type;
        bh=XGvgn54K0a40R3IVJczenfeok8dRXyckmZReWXoa2HQ=;
        b=bZ0m6wazKUODxYfCkhj8o80ASsUBpsvrPluspcX6ecn0WajTxi6L+9QRk6MJXwlsOa
         INgdozbJ3BDWpx7PL68H+zicvSNHdCX1IPf5OMcg3nKu1nsTKKy9t+A14o4I8YYGB6zz
         cbb2FIhzObYVIEN3BxfmJT8+HTeTQSnwX58RT/YV660w1FLyjg7hU2uktWtioJ+hzwvk
         +eJf7/D0t0/bd/Pd/tydhAT+xES7qex1J3yj8ZZfcIrCzs2fJoekZq40jafMUYy+1tJA
         1fKef1pCbAly33PXBfnzdD0GfVozvKWlkIMwqpNihFDjjIemrH+R4r4ZcGPFbUAAJJI/
         /qtA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1791542177; x=1792146977;
        h=cc:to:content-transfer-encoding:content-type:mime-version
         :message-id:date:subject:from:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=XGvgn54K0a40R3IVJczenfeok8dRXyckmZReWXoa2HQ=;
        b=y1x5tKTGvHVNAe54Vl8XX3lax4yMyzdcVVQcKqtedPonSevCpgoxaD87fOaI2v09S9
         kLkYhxwTV46pPo6D/NZHPV0iAKH/AbQjYYDuaxKbQYEzjHwpUakUIqgqFX7hoPZkGPNs
         2Ohs5xexATeCmlRHoPl0EO8s4PeIlKLv7j+ZzeMD8iVaVbn9SZbRsIY3zT4hncsS3sOJ
         6SrEiSmDMtl0nsi/SJqf0dg7ayPehMQnKLnx0IN4eSZpLP1eiHtephTR8XqPaItZz8cp
         teqvTLoJsg4y7nuHDgi3qCoXl731pqCz3agVna+n9RHQfL1UioTk/i8n2zo1W/cMCl/g
         wMwA==
X-Forwarded-Encrypted: i=1; AKwUvBzTxBQuR/LOjEQk7MX3J7YgOKoy+goozXQ6CVzSWWNh9U7bCL2GSsYfZifryObtYd1H920FKxeHxbo=@lists.infradead.org
X-Gm-Message-State: AFq9FYKA6bRTRFWrkVjn48mwyrGeENq9fBaFUsMNRiHSF5r45oeSAqIs
	W1aZufT1KS/Be6kmB+dqeNEvVCb15u2gOf1zhWGKDiSqxZPyve0RoPGoQ2wPwrEBKhnyUwXthiK
	orMV4+SNuSnEtolGLAZyq5CcecNzZYz5yGH79O7UhvW3R5m1dqkZLZyOxyy73AytcvLu2
X-Gm-Gg: AYBFou1wuqSenP4VXpUZGpikyAXsC65LiSQZgaWuYjK0ty0OCl59oV6CQAi32i3vJ3j
	5YNklbYe1nN8lVtE1evAByy6zi5DS43gE0rOxwystXPRgc51ikS1hq59R/BqO/rNUDq82irUizF
	PyBx9FFhKmN49fyTjYdLudhYAorIEzVrwacfGSmd6TyAvhn5+5RJQQbCtkqdGdbiOnw64XSv4sI
	CI7HVyNCi4Spnn0aQWWtYPoI+oMSbGTzGxz2by+VH1Y4rn6qIleeHbIAtb94Jxits7KL3fo8Uhz
	T9ml7v4XmnjHzitpoqkibypsIsDCaya7/f8vkmh6bPWxzWopcGU8HACI6VAilnmOlLb67bm8Va3
	JLd0xfqHXV9hBKXrWUthMvuPX
X-Received: by 2002:a17:90b:5444:b0:3a8:86b7:ad95 with SMTP id 98e67ed59e1d1-3ab3b01f34bmr1379807a91.60.1791542176657;
        Fri, 09 Oct 2026 03:36:16 -0700 (PDT)
X-Received: by 2002:a17:90b:5444:b0:3a8:86b7:ad95 with SMTP id 98e67ed59e1d1-3ab3b01f34bmr1379786a91.60.1791542176119;
        Fri, 09 Oct 2026 03:36:16 -0700 (PDT)
Received: from [10.213.101.15] ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3ab371c32cesm2827285a91.16.2026.10.09.03.36.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 09 Oct 2026 03:36:14 -0700 (PDT)
From: Pradeep P V K <pradeep.pragallapati@oss.qualcomm.com>
Subject: [PATCH v4 0/5] Add UFS support for Glymur Qualcomm SoC
Date: Fri, 09 Oct 2026 16:05:52 +0530
Message-Id: <20261009-glymur_ufs_qcb_enablement-v4-0-9a6ce83195b7@oss.qualcomm.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAIjDyGoC/43NTQrCMBAF4KtI1kYyaZo2rryHSEnjRAP9sUlbL
 NK7GxXUhYqbgfdgvnchAb3DQNaLC/E4uuDaJgaxXBBz1M0BqdvHTDjjkikAeqimevDFYEPRmbL
 ARpcV1tj0FFIutFBZyllJ4v/Jo3Xnu73dPbLHbogT/as8utC3frrvj3Br/5kagTJaKmtS5IhK6
 U0bwqobdGXaul7FQ274yN/B/BfIIwhSgrIZJlLLL2DyBIGx7BeYRDAXxgqbSxCQfgDneb4C3vE
 si4ABAAA=
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
        gopikrishna.garmidi@oss.qualcomm.com, jagadeesh.kona@oss.qualcomm.com,
        Abel Vesa <abel.vesa@oss.qualcomm.com>,
        Abel Vesa <abelvesa@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-scsi@vger.kernel.org, nitin.rawat@oss.qualcomm.com,
        sibi.sankar@oss.qualcomm.com, Taniya Das <taniya.das@oss.qualcomm.com>,
        Pradeep P V K <pradeep.pragallapati@oss.qualcomm.com>,
        "Martin K. Petersen" <mkp@kernel.org>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1791542167; l=2127;
 i=pradeep.pragallapati@oss.qualcomm.com; s=20260911;
 h=from:subject:message-id; bh=sD8MJ5v7RQrtT3/4TQqeAdToHXfv1J1eK9rZQsVMz7k=;
 b=2Uf8tkNUyXcX8VeeR0t+R20IbzPYmzIc8FhwRocx7ASXvMvABnzr2Cm7Z10VnV2DwHM3uxbBi
 zzNmIH5sO06B+z60JnYTD6KELi+SzlZfanP7kdX24Mw+qKO9aNK2Ftn
X-Developer-Key: i=pradeep.pragallapati@oss.qualcomm.com; a=ed25519;
 pk=uyRUsge8nQMwf3iW/e/o0U8z9nWLCMm1MGKxEftztic=
X-Authority-Analysis: v=2.4 cv=fKesTpae c=1 sm=1 tr=0 ts=6ac8c3a1 cx=c_pps
 a=vVfyC5vLCtgYJKYeQD43oA==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=YMgV9FUhrdKAYTUUvYB2:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=MjkSdyLvD0LHWdEy_1oA:9 a=QEXdDO2ut3YA:10
 a=rl5im9kqc5Lf4LNbBjHf:22
X-Proofpoint-GUID: QhNoexVOnlPnTDFO1KwNq26AlUrxbvkP
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDA5MDA0MiBTYWx0ZWRfX95jFdvfP3R/M
 4wnj6ELAQ0riCPkNZwmHwC6/KZwkeFpY2CQsfBiyIgtwgIoiBRnO9TEd8UlHX5jAOchpSh4FnVW
 /IZmMrhZQwUFO94GTFtfY6nOHgMDy1A=
X-Proofpoint-ORIG-GUID: QhNoexVOnlPnTDFO1KwNq26AlUrxbvkP
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDA5MDA0MiBTYWx0ZWRfX/y0VsqhuAqES
 hZRYq6LBJLvBcBVq2nQM9w+d6Jm5V3p9ofIjOiwPMqp3eabMU/dqRuRRp+F81DC2lesPzT16KlK
 syAEM9fscV1DyI8CwkKGeDBUuSbiPrK4OXm86GPbKU2Nzo0JqFihp4WuueMUjIPqSbb2EEQ5UN0
 l/WHMA/8nrCdoP8PnWhtc5i8OFx2CPC9rDHkARjmmH/kEeqs9/Nw4vlLGZgoF7ouO0pQZTUTPqi
 qzUw0y0QVJ3dvzV9dbF9GinnydESLm8oxu6CV4sGShSuxfeViXLD6+6uvGLuYhgdmCROgfzsxsC
 N9dvp4JDvW1v3sibQJ77D4FIrvnl0QkUTBNdf9NSva7Rge9FaR+0SBgrSxx0Hb2X7bjf1GFcyDw
 SLIL03fQai/bC73IUYBJ3VrMPauMXLiU4KdyWd98QMWHJSJY5mIyLhgnCUEF2hKTDh/8VuRwAMr
 EXEwpzy/btTgfGetuow==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-10-09_03,2026-10-08_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 malwarescore=0 clxscore=1015 suspectscore=0 adultscore=0
 priorityscore=1501 impostorscore=0 bulkscore=0 lowpriorityscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2610020000 definitions=main-2610090042
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261009_033618_213429_C968171F 
X-CRM114-Status: GOOD (  12.53  )
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

Signed-off-by: Pradeep P V K <pradeep.pragallapati@oss.qualcomm.com>
---
Changes in v4:
- Documented the lack of UFS PHY GDSC support [Dmitry, sashiko-bot]
- Updated the commit message for the qcom-qmp-ufs phy changes [Dmitry]
- Retained all RB-by and AB-by tags as is.
- Link to v3: https://lore.kernel.org/r/20261007-glymur_ufs_qcb_enablement-v3-0-84cf4f861415@oss.qualcomm.com

Changes in v3:
- Rebased on top of latest linux-next(tag: next-20261006).
- Retained all RB-by and AB-by tags as is.
- Link to v2: https://lore.kernel.org/r/20260918-glymur_ufs_qcb_enablement-v2-0-16619f7e36a6@oss.qualcomm.com

Changes in v2:
- Added 201.5MHz OPP svs l1 entry [Konrad]
- Addressed minor cosmetic edits [Konrad]
- Sorted references label alphabetically [Konrad]
- Add RB-by for SoC dtsi & board dts [Abel]
- Add RB-by for phy driver changes [Abel]
- Add AB-by for phy driver changes [Konrad]
- Link to v1: https://lore.kernel.org/r/20260911-glymur_ufs_qcb_enablement-v1-0-b9fc5e2ee99a@oss.qualcomm.com

---
Pradeep P V K (5):
      dt-bindings: phy: qcom,sc8280xp-qmp-ufs-phy: Document Glymur QMP UFS PHY
      scsi: ufs: qcom: dt-bindings: Document Glymur UFS controller
      arm64: dts: qcom: glymur: Add UFS nodes
      arm64: dts: qcom: glymur-qcb: Enable UFS
      phy: qcom-qmp-ufs: Add Glymur support

 .../bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml    |   3 +
 .../devicetree/bindings/ufs/qcom,sm8650-ufshc.yaml |   3 +
 arch/arm64/boot/dts/qcom/glymur-qcb.dts            |  18 +++
 arch/arm64/boot/dts/qcom/glymur.dtsi               | 125 ++++++++++++++++++++-
 drivers/phy/qualcomm/phy-qcom-qmp-ufs.c            |  99 ++++++++++++++++
 5 files changed, 245 insertions(+), 3 deletions(-)
---
base-commit: eea3fef32a9cf36abcb5975a5a594e4135a6b026
change-id: 20260911-glymur_ufs_qcb_enablement-1524a497520b

Best regards,
-- 
Pradeep P V K <pradeep.pragallapati@oss.qualcomm.com>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
