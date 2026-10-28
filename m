Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CEC50606A320
	for <linux-phy@archiver.kernel.org>; Wed, 28 Oct 2026 12:25:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=nTQk6ZgB;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=ZLvDdhb+;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=LhY/Fxpk
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Unsubscribe-Post:List-Owner;
	bh=kBW9K/juzOtIWiob3DSbJPTLhXpxHqA++GHqHMSo5dE=; b=nTQk6ZgBbIjcyb/BEmuDHbDxu1
	/n48Dmj72H/sRfJ/U5FA4bKPcBwd+Vr0cjcY3FwN69m3/F0rJMqRfoC9f/H9tWF9XS/R377VTdFJ/
	fB+U1rqJHjh8yT7eZm98WPNaxDNJv51rJ7i+9Pp3p9vcQt3dFdo19cns0qfLikaMChWjrBSE+ciSa
	uYrMMOxnV2y8xsBlnIb2Oe6EXSY58lHGQeaosOb3feBaY4EBoO6nlOeEq8XHI50Swyqxw3uD8LQrI
	3EDYnAshdY94w0ri/jeqx+OhHoiJEjfwiWe3x9Cj4ChKiSALCKxQuZ3OCYxn+Yfp7ZfYpge30wu27
	PIgIdg7Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xM2ic-00000006x8D-0sIr;
	Wed, 28 Oct 2026 12:25:26 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xM2iX-00000006x7Y-2dGq
	for linux-phy@lists.infradead.org;
	Wed, 28 Oct 2026 12:25:23 +0000
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 69SBeBSH1539086
	for <linux-phy@lists.infradead.org>; Wed, 28 Oct 2026 12:25:20 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=HTl72mT/ml/6tKFbd/9Kva
	4wSmn2Rn68y6y82DJiCf0=; b=ZLvDdhb+2EbyBfA2suPh3lPEMX3N6i5s7yOfhA
	hSuntSTd39+uOUit9pm7jL5B9dXd1NKCoqTCaeQDtZr0qrMxABuL2rFChbYp26lN
	b5PU3jQRnfubK49j1oTZe4Vjsh9Hzv6oebzLFoJkRKcGdbhz5kLgP6vu6n5U9J4h
	8sDdIw8WE/eH9i1FiQGMN6A3UJwwXJ7Wh03WtOmrWQfvGiF7RhyDMaqYcw8ohl+4
	uam/IOtroyylZDdXFXKTMZ65ekPpEuPOHFqwzW/2n3l4lGWYskUYXY064NJPIIQU
	yhbYpRrrC0qepm7IEj9tTrjPi3uOO+zYdxaoRUDM2Uv0AyGw==
Received: from mail-pj1-f70.google.com (mail-pj1-f70.google.com [209.85.216.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hkdf7ruv7-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 28 Oct 2026 12:25:20 +0000 (GMT)
Received: by mail-pj1-f70.google.com with SMTP id 98e67ed59e1d1-3ab67ff8ec3so658530a91.0
        for <linux-phy@lists.infradead.org>; Wed, 28 Oct 2026 05:25:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1793190319; x=1793795119; darn=lists.infradead.org;
        h=cc:to:content-transfer-encoding:content-type:mime-version
         :message-id:date:subject:from:from:to:cc:subject:date:message-id
         :reply-to:content-type;
        bh=HTl72mT/ml/6tKFbd/9Kva4wSmn2Rn68y6y82DJiCf0=;
        b=LhY/FxpkgJTccOgUKgz/hSBtHYGyPk8PZgD3mE2fWM/tBE6vfB5WsN3QWwxcXBRVWH
         jAcudZ9BhVtRDqmDOHIZBc9tAbr+rEEgvqBX//YivZxgbacCqrSawV03Fvj8qltXczUG
         S7syhgCw3Bl3dJAgPLEJV8Mm0kaoHAMN4iUJaaXv657EEvw1KrRNxhYtl/7pUW6pe8xY
         KhGLcyOrC2YHdfaEoVGfcdYHge8E1itVAcCdi9ZXU2PrgvK3xNX+NHhQytTn8djWxTDr
         ksjNCiYfq029vMmpDFtsS+/dvZyYcHBXRwEhT7FffvJUn9Xu2fyyWcjkon/H+nIctlmg
         ZLaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793190319; x=1793795119;
        h=cc:to:content-transfer-encoding:content-type:mime-version
         :message-id:date:subject:from:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=HTl72mT/ml/6tKFbd/9Kva4wSmn2Rn68y6y82DJiCf0=;
        b=StdijVH/9UTDV2apC9ePyrgyQ5cb+VqIJ5F8KvHGbb65M5hziK0343oSOubqkEdnRo
         iwdjHaHHLa7MCx7nA7L2VIXc2rjjs1FA1CM2138o0B8ILZaH+jP+i+Qt1Tutl5Pz1CpY
         d5Kti/5LaVzZx5UjtKi4od7M8u5+I00pow+XDCI3U11tXQXLhwAoMz0ZqtpgkIsHD5yv
         d1E2rrVWvuMJiZ+uZD9l1RzhpeoPdUgM8XYwgZuVRxfCTYPkNv+/PiPFq5jiHE+nTZAr
         R2uZMzCdi6q3vFtqK6n2lh2wUjIVorcS/Jw8hfMcMilyDuJUDQKGURroE6nd9AUZ7lf7
         8a2w==
X-Forwarded-Encrypted: i=1; AKwUvBz04pX3won7cA2NVUQuJWT0MfJDWQlkybW8mvpIv1adxJliuDGCYv9Y0WHumTt4CiftBz+3pS2aYX8=@lists.infradead.org
X-Gm-Message-State: AFq9FYILKuIg5IF3v+PQF/1NP4cNVjAw1Xdji9ZRQb1VVRIwMTj7EhYk
	Y0N/6KQpSMAlyKaIS/BwFYs60jaJmM6kUaYnOetP3TXLdVzw0qUhFuwGo4NHaOoRc/UL/LgEm9h
	UuWdxik7Qrr/5Q26B5ZU+DQD521vzuoS97rl31AKOpEilWGGDCDUacCYoS7qa+Yn+CIc0
X-Gm-Gg: AYBFou2z5NvshnaUWsEERoIohkA2WaDNBY2bM2kM2IQ/uLnPWeOHpYxSNN3tFu6xCmL
	De2b1iyUZ83oJCaT5znsnFluqozwlSCVTXKY/SX1BH8iyxHgy0Osl8U4/Xe4+TgCYIKi/VO2tWv
	RlL9koh0HNYZOotRGdrVKDdM030L0o0F01SDCPPpiDwOGthY0tfiln5aVYJv69dq3+NQtvTib5c
	CCifNhVWHP2Mkc7lAm7pKzxeWiiGriXmFMWl2zb4Si5ww5VmHlOJVeTi3x40coUJaX1BkYWYggd
	szy0sx1fXiDz77CnZWAmB0FdzWkrBnmPaSLnrpzi2qM6KP4uJHUV79IWN1qQ7LxN6lTd5t7nzqv
	gqinsYZj+ARxUtgjnXE7iYRIxKIcefJpi62Hlqzab02GlFgzWf5rZxJYOQg9jDhljemjEG5sEh7
	Q=
X-Received: by 2002:a17:90b:37cb:b0:3ac:a11a:7c91 with SMTP id 98e67ed59e1d1-3ae581bbd4bmr1613561a91.44.1793190319510;
        Wed, 28 Oct 2026 05:25:19 -0700 (PDT)
X-Received: by 2002:a17:90b:37cb:b0:3ac:a11a:7c91 with SMTP id 98e67ed59e1d1-3ae581bbd4bmr1613537a91.44.1793190319031;
        Wed, 28 Oct 2026 05:25:19 -0700 (PDT)
Received: from [10.213.101.15] ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3ae5a9f287fsm2995819a91.16.2026.10.28.05.25.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Oct 2026 05:25:17 -0700 (PDT)
From: Pradeep P V K <pradeep.pragallapati@oss.qualcomm.com>
Subject: [PATCH v5 0/3] Add UFS support for Glymur Qualcomm SoC
Date: Wed, 28 Oct 2026 17:54:45 +0530
Message-Id: <20261028-glymur_ufs_qcb_enablement-v5-0-09cda5e3bab3@oss.qualcomm.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAI3p4WoC/43N3YrCMBAF4FeRXBvJpEna7NW+xyIlyU400J9t0
 hZF+u4bXVi90OLNwDkw37mQhDFgIh+bC4k4hxT6Lge53RB3NN0BafjOmXDGFdMA9NCc2ynWk0/
 14GyNnbENttiNFCQXRuhScmZJ/v+J6MPpZn/t/3LEYcoT4708hjT28Xzbn+HavjM1A2XUau8kc
 kStzWef0m6YTOP6tt3lQ674zB/Bag3kGQSlQPsSC2XUC7D4B4Gxcg0sMlgJ54WvFAiQL0DxCOo
 1UGRQG+WwKkBLWz4Bl2X5BcBeA8DRAQAA
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
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1793190309; l=2128;
 i=pradeep.pragallapati@oss.qualcomm.com; s=20260911;
 h=from:subject:message-id; bh=vIZlvxpaiYQv4i83bg/wFItskHzVhvQXocNrx5A6sUY=;
 b=hqXq+VJFu3erEx31I9fC6Su2K5r0NzcswcBlqetAN8povATEZEwxWDEjuxm4BVSvjKWA8NdYb
 YvdoPL8Odz9CZKfkEanlZYTZMz8Ns68rvSkKBfGu6Ns8NxqwqqJOVAu
X-Developer-Key: i=pradeep.pragallapati@oss.qualcomm.com; a=ed25519;
 pk=uyRUsge8nQMwf3iW/e/o0U8z9nWLCMm1MGKxEftztic=
X-Authority-Analysis: v=2.4 cv=M4bYuCws c=1 sm=1 tr=0 ts=6ae1e9b0 cx=c_pps
 a=0uOsjrqzRL749jD1oC5vDA==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_glEPmIy2e8OvE2BGh3C:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=MjkSdyLvD0LHWdEy_1oA:9 a=QEXdDO2ut3YA:10
 a=mQ_c8vxmzFEMiUWkPHU9:22
X-Proofpoint-GUID: bpX_dk1wqrMiq66b3sNlm6ldxFtXdc2d
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDI4MDA0OSBTYWx0ZWRfX52uJpakDzyRx
 DMtz3dH2GWzdbuVNXnhDSagjWJZcjUvPPaCiJBmD3MOjjzVtUq5BNgdaGvRvWxkWmadM1z5czZC
 iXTDfjIW/lDu++udubJmW95/MPHJUHg=
X-Proofpoint-ORIG-GUID: bpX_dk1wqrMiq66b3sNlm6ldxFtXdc2d
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDI4MDA0OSBTYWx0ZWRfX1/2GhM7nLKxN
 X/7uUXBmBW6LaW3lVnmRGN2dvnopVZ93rHUaYjfHcrlXx/ZSOiKBc+UGQgbcktgc9vZ6GOIfjfu
 3M8jJQzLScfwg0fs/TWjAPYgGBIrlY2aYi+i5Vp91d225DLHjSBgupuMlJIe/1cVoFoNzkVnP/+
 TxCof3oM3Wz/XRmudS9pVCU2PZ93TvrDeJ2bUrRsQQDlOzM9Q1oZSMxlCzMwigYeEizFyKB9Fbk
 vM+1i6gfZbS1/FeV6ryw0PWFlRiPnEasM3nvlVOXpL3k9zcaGwlQxSzbU42l1VS6D57jHOg/HdM
 u6RQpPEpgHIAV/4jnVWzMXEg81vJVSES+4t/znKS1dSnY+JvafMYRaTM5n1MdwXU1EerEEkEDy1
 yIdyh2C/S/6H48x5d1tdJthWmLb52545IQJut+DW0q39wIN4xyitF7vMIuYs3deFLpTaS5cm7vD
 BenpaMHrfkWhbAIV3dw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-10-28_04,2026-10-21_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 priorityscore=1501 clxscore=1015 impostorscore=0 malwarescore=0
 bulkscore=0 spamscore=0 suspectscore=0 lowpriorityscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2610190000 definitions=main-2610280049
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261028_052521_797291_D764E96E 
X-CRM114-Status: GOOD (  12.99  )
X-Spam-Score: -2.8 (--)
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-16.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

This series adds the device tree support for the UFS PHY and UFS 
Host Controller, along with the required PHY driver updates to
enable UFS support on the Glymur Qualcomm platform.

Signed-off-by: Pradeep P V K <pradeep.pragallapati@oss.qualcomm.com>
---
Changes in v5:
- Rebased on top of latest linux-next(tag: next-20261027).
- Modified OPP 201.5MHz from SVS L1 to SVS corner [Konrad].
- Retained all RB-by and AB-by tags as is.
- Link to v4: https://lore.kernel.org/r/20261009-glymur_ufs_qcb_enablement-v4-0-9a6ce83195b7@oss.qualcomm.com

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
Pradeep P V K (3):
      arm64: dts: qcom: glymur: Add UFS nodes
      arm64: dts: qcom: glymur-qcb: Enable UFS
      phy: qcom-qmp-ufs: Add Glymur support

 arch/arm64/boot/dts/qcom/glymur-qcb.dts |  18 +++++
 arch/arm64/boot/dts/qcom/glymur.dtsi    | 125 +++++++++++++++++++++++++++++++-
 drivers/phy/qualcomm/phy-qcom-qmp-ufs.c |  99 +++++++++++++++++++++++++
 3 files changed, 239 insertions(+), 3 deletions(-)
---
base-commit: 151a134a4e6ec66f69db8750c66006f5207f7a9d
change-id: 20260911-glymur_ufs_qcb_enablement-1524a497520b

Best regards,
-- 
Pradeep P V K <pradeep.pragallapati@oss.qualcomm.com>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
