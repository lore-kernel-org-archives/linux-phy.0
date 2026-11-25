Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FCE0606A32A
	for <linux-phy@archiver.kernel.org>; Wed, 25 Nov 2026 06:25:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=WmhdJfYB;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=oFInxtcL;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=Rs58VgXc
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Unsubscribe-Post:List-Owner;
	bh=CzNZBuoYflGhrHsi2U74wWBSSQKze6+Ps/VCrfoD8rc=; b=WmhdJfYBtmV1VFp8k4YgrWa4Dl
	aNdctm7U9JqBGn8qFA0LXHmlqO9tRj2AluBWe5Q5dIOFoigV/Vlwkufgefc/7DLqDi3gWR/pCkr9A
	eF1SZMz3IPppzfduGOgSu46X2z6ZZZm5S8iP2BYqWBICJXKVIl7fXj9GrdZwUBFvziPrK/98i09C3
	joFg3GFsHkTCmRvM6sqe7HLg4eum+49prXHgQi5crTGAnqbcjzTT/tcHautODOrL1hvU4C1/sbY3T
	zHSIJlr0Vt+uGYHRyBZAOtvkVdrMW/hwHfIQ6wSK7p8mhPt82kuKn/eJ+VLNh7+t8cTEL5k7z17XK
	IE34r5JQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xW6S4-00000008fMl-3lZe;
	Wed, 25 Nov 2026 06:25:56 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xW6S0-00000008fLU-1al9
	for linux-phy@lists.infradead.org;
	Wed, 25 Nov 2026 06:25:54 +0000
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6AP68hHE057276
	for <linux-phy@lists.infradead.org>; Wed, 25 Nov 2026 06:25:51 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=pzpfeVEavQj7EiIXq7kDg+
	d9nbgzFa46wq2EternaVo=; b=oFInxtcLKRoWuETwDbqmV2hPLqrZy7CHA8CuoH
	EBvNOG81/+vRy/GaA/fBdT2Q+vM9KMu525D6VV2CI9kMdTRQX5Fe5hyKZr/gFFaQ
	GPEX7CWQyD4yD7fKGk8mW8KZXctuigzuY7V4nlBj3Ywrp6Xb/dScFwIKW0hYjNpJ
	JB/1p8fEhY8hUjACoFuckzX1LUnUd6r7KOn/wRslbv38sfdapzrrHMqN6u4vgSwa
	29rKdwEnIULCNAH7ArkVPsS9tMW/H1EDyJ2pD6crehMLU7/+/MuMxUwSoDULxj9W
	POyywNPrJK0ARmUfXcPpQEVcLwacLryieFDCUKBPchu4iM5w==
Received: from mail-pf1-f197.google.com (mail-pf1-f197.google.com [209.85.210.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4j5gnfa1kj-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 25 Nov 2026 06:25:50 +0000 (GMT)
Received: by mail-pf1-f197.google.com with SMTP id d2e1a72fcca58-89e05d31e54so3748523b3a.1
        for <linux-phy@lists.infradead.org>; Tue, 24 Nov 2026 22:25:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1795587950; x=1796192750; darn=lists.infradead.org;
        h=cc:to:content-transfer-encoding:content-type:mime-version
         :message-id:date:subject:from:from:to:cc:subject:date:message-id
         :reply-to:content-type;
        bh=pzpfeVEavQj7EiIXq7kDg+d9nbgzFa46wq2EternaVo=;
        b=Rs58VgXcFGCuX5Dmu4W1r+/cImjZUCFgQcEds/t1RMIAdbtvM9VwEq6hfSMAZNfTQI
         RVET0eXflk0GUrh0Loe7YnThI9mYweif0rI27Tm7v6LO7FSOgLuGa/+XebC5AkyroPFx
         9pcBckmIW5pTC6eqQTy7sBSr75KdkLKrLGSoRCk/ZWRlvun2BL2dbhk5yfabPHe3wMCW
         CYLK0O9kIUGG7KyiaBWa3/F5OPbTCUn7WjprirlpgA2yMBvAu5A8n+bQddkFiowFoEi0
         ybnN+DGZvhoi5fAdTnGYpPXkR3Lb62N8j4n4VHIn6ALNS3hMX7kGuf3MDKneNGsX/ZMR
         qWRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1795587950; x=1796192750;
        h=cc:to:content-transfer-encoding:content-type:mime-version
         :message-id:date:subject:from:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=pzpfeVEavQj7EiIXq7kDg+d9nbgzFa46wq2EternaVo=;
        b=A0QmJDt3/EMAOwDvIM5gw/CqBDq7hsYsa3qe9941dXhcNE1tJnWMNzqXdSTS6/eMxm
         7MDVqjitBvBSYwGbfOwqY2h2hHLqaAraGeLAuH3Jo2S4Uq8sw3CtvImUjCf7DbUOkuGK
         P2A4kUMRMZkrUWiaMx4tzwbW1lagZrtUliaH6uy0iC/MW9z6K6jaDJxIyyaaM7jngrno
         DBD8OQXfKvn+Un0iePfNdRJsF3MmMbExJo8RfTozo+z8MvTnDmC+eXi3o87B7G8/8GI2
         R6KeiyVGLKRbs+mEItIDBslP0PHNp0xdJVyn2PJ49CBoamBkkuhHmZsMMSpA3q78lPdP
         vxEQ==
X-Forwarded-Encrypted: i=1; AL+hErGkQMlHpiyd5aEMsqQODtjNJ/ZLML0W7+CoZK/tY76ecYY1IZlCrzegj4keLXQOLK0ioVZ2mEc0GaY=@lists.infradead.org
X-Gm-Message-State: APuU4Z8Lh8HurBGRzqHxqMDveRuqWeAH3nFuMc6KoUmO4NfC/v55RwzI
	seixgHF1M5o0XODyHmkJE6MQVHJUKOEv8opqNu64OkHu3KH/UYq+KvmfSNBV076uuziq1wcKQmy
	klDDLa4Wx3T7n3rqcesrnMPoUr869w0QdXOCtxsN+uc89XVgyZfJMuxwkpS2uJUcZYsmW
X-Gm-Gg: AZFdTZdx4MgslFG2HLOBBpW8bFUIfYSX/3ejUqM6XQfAu8Nf9UvumMnBOJ3xpAtdgxR
	5A96pYoFRtX3wsSnzsXZPgtyZLMv+015z+xyP40ngKJUnIPH72Gdr1vLFrnJPpN5qNKAo3d4HhX
	DSFCGrSZKiLaDgoE10DbVZCMOrlGIGbuzM+nTCgWhTWycoti3LQKbsNy3wSVSF8RE66vtruxBwf
	qMyk8ce6oq4y10LNd7SFjI6GOC88xgdoayugpXiLMInYEYT+3Unr7vJZuHdaLl/Yl3wr4x1dXh8
	EctkQCRr7I3P2qC1B6R7qKbM5TBS4cS/wHOnsqQ6RhZq/DKLt5vOcSmHOr5uYscQ3H/lrNQiygD
	aQKJ+l1Jd721Hr4eUPiHlNEAuxlAbTHeYw0Py80bKe0WElV3UyoZ7ch5nn+iAcHg0mp3nlxVsTp
	6oKNfu
X-Received: by 2002:a05:6a00:1d93:b0:89a:5:92c1 with SMTP id d2e1a72fcca58-8c87d51b324mr14173225b3a.56.1795587949799;
        Tue, 24 Nov 2026 22:25:49 -0800 (PST)
X-Received: by 2002:a05:6a00:1d93:b0:89a:5:92c1 with SMTP id d2e1a72fcca58-8c87d51b324mr14173189b3a.56.1795587949291;
        Tue, 24 Nov 2026 22:25:49 -0800 (PST)
Received: from hu-nihalkum-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-8c87077944bsm8385066b3a.2.2026.11.24.22.25.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Nov 2026 22:25:48 -0800 (PST)
From: Nihal Kumar Gupta <nihal.gupta@oss.qualcomm.com>
Subject: [PATCH v5 0/3] Add Qualcomm Hawi I2C CCI and Hawi/Maili CSI-2 PHY
 support
Date: Wed, 25 Nov 2026 11:55:40 +0530
Message-Id: <20261125-hawi-maili-camss-v5-0-1483b7f68dce@oss.qualcomm.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAGR/BmsC/33RwW7CMAwG4FdBOS8ocVLacOI9ph0Sx10tUQoJF
 BDquxPYtO1QdrH0W/Jnyb6JTIkpi/XiJhKNnHnYlVC9LQR2fvdJkmPJAhSslAMjO39m2XveskT
 f5yxDFdEarxRFEGVsn6jly5N8/yi543wc0vW5YdSP7j/YqKWSGEKwQJWx1G6GnJeHk9/i0PfLU
 sTDHOHH0UrPOVCcFp0BgOgbhy8c88cxasYxxXG1hYC+QWrhhWN/Ha1WM44tTqygwdrXrg52xpm
 +jpfocCpvOH5fcJruFlWBuqQBAAA=
X-Change-ID: 20260923-hawi-maili-camss-b5dc43a00ed2
To: Loic Poulain <loic.poulain@oss.qualcomm.com>,
        Robert Foss <rfoss@kernel.org>, Andi Shyti <andi.shyti@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Bryan O'Donoghue <bod@kernel.org>,
        Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Cc: Suresh Vankadara <svankada@qti.qualcomm.com>,
        Vikram Sharma <vikram.sharma@oss.qualcomm.com>,
        linux-i2c@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-media@vger.kernel.org,
        Nihal Kumar Gupta <nihal.gupta@oss.qualcomm.com>,
        Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>,
        Wolfram Sang <wsa+renesas@sang-engineering.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1795587942; l=5267;
 i=nihal.gupta@oss.qualcomm.com; s=20260608; h=from:subject:message-id;
 bh=9X/7nIs1WLTe0qV0OiMWh+UZ+GNApBiRWSnm81zHmmk=;
 b=0NXaFfnI30tyWyVu/ub8D+DzkJcv0nueHNtG7UFABXbpELymKwic0g8wInlL0f8csbqqX4QwL
 OveYpACmum6Dy/xHkW7iHFyjQA9nYNqOuztZCVBA2S97CPykn+KgPmC
X-Developer-Key: i=nihal.gupta@oss.qualcomm.com; a=ed25519;
 pk=DIbyFMNwqU/iMvU/0pCQp2wmRVgtHFBT3PcSu+A+Ncw=
X-Proofpoint-Spam-Info: AW1haW4tMjYxMTI1MDAyNSBTYWx0ZWRfX8Ni68oyAdgEw
 fuXdlqppSYTDSy11itsFOd1prkk7WGHWDSW4T21dWuxwFHUHPSggkisdC+sM0hUMmW4myiv3144
 qcboP0TG+LV6IKZ8p0IU93VgQjZ175Y=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMTI1MDAyNSBTYWx0ZWRfX6EVgG0iNM1Ku
 kfu3xBFXMfcNbHWo4MEhEX4CMh1GPQD3C8U2eR2zNNm+QtkwFFdRv4eGiDK09yER2PHTklWsMfZ
 UKoasoV7pFtbbr4rDZoiNiLv83wzfb2ccOSbqW/VAXu28s2i/KGNovDA5oJmAsJrB6E5BMRHsxx
 SrpgcLHIrpakMQCTzpoTq0AaU8L0mvklUk5FQde5wq3YYyR9pC5TQ01E0C8emEgIuvwQJk4Tn1X
 eZowqYuYm9/gJ3bdsgp/S+UpGTz+pC6ByvG4xtqrnm70m/EQ/+ywdLtuEYUvRHFegFuYNRybCfp
 DuMQ3qLOPP0i3hTDyF7eS8d4/ZFX/wUhUFbzR3yrfdsfpRm5IZvlq/FPQoqhpGNXl5f4P+Wk02h
 CizJCOJyFKNKhX78fC32lPsqNmnfPT58fl4n0mGQQQrrkqkh76gQGJtQMrUB/zNYbrDK1IvfFHF
 mrb0yr1TwOgyy39iHgg==
X-Authority-Analysis: v=2.4 cv=f/Xdl+yM c=1 sm=1 tr=0 ts=6b067f6f cx=c_pps
 a=rEQLjTOiSrHUhVqRoksmgQ==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=zJRp6_cAMcgA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_glEPmIy2e8OvE2BGh3C:22
 a=EUspDBNiAAAA:8 a=VwQbUJbxAAAA:8 a=MdiNbCTM_Z-SUpbbCTEA:9 a=QEXdDO2ut3YA:10
 a=2VI0MkxyNR6bbpdq8BZq:22
X-Proofpoint-GUID: 3rTnimoMixGH0cQBMzttN7vg2bgDgw5U
X-Proofpoint-ORIG-GUID: 3rTnimoMixGH0cQBMzttN7vg2bgDgw5U
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-11-25_02,2026-11-23_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 adultscore=0 suspectscore=0 priorityscore=1501
 malwarescore=0 bulkscore=0 clxscore=1015 phishscore=0 impostorscore=0
 spamscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2611040001
 definitions=main-2611250025
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261124_222552_541154_FA6646B2 
X-CRM114-Status: GOOD (  19.56  )
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

Hawi and Maili are recently announced Qualcomm Snapdragon SoCs [1].
This series adds the I2C CCI binding for Qualcomm Hawi and CSI-2 PHY
support for Qualcomm Hawi and Maili.

This is a continuation of the previous combined CAMSS series, now split by
subsystem. This series carries only the I2C CCI binding and CSI-2 PHY
patches, which do not depend on the Kaanapali/KNP CAMSS media patches.

The CAMSS/media patches from the previous series will be posted separately
against the media tree where the required KNP CAMSS prerequisites are present.

[1] https://www.qualcomm.com/smartphones/products/8-series/snapdragon-8-elite-gen-6-mobile-platform

Used following tools for the sanity check of these changes.
- make -j32 W=1
- checkpatch.pl
- make DT_CHECKER_FLAGS=-m W=1 DT_SCHEMA_FILES=i2c/qcom,i2c-cci.yaml dt_binding_check
- make DT_CHECKER_FLAGS=-m W=1 DT_SCHEMA_FILES=phy/qcom,x1e80100-csi2-phy.yaml dt_binding_check

Patch grouping
------------
I2C CCI bindings part for maintainer Loic/Robert/Andi (1):
[1] dt-bindings: i2c: qcom,i2c-cci: Add Hawi compatible

PHY driver part for maintainer Vinod Koul (2):
[2] dt-bindings: phy: qcom,x1e80100-csi2-phy: Add Hawi and Maili compatibles
[3] phy: qcom-mipi-csi2: Add Hawi support

CAMSS changes will be posted separately because they depend on Kaanapali
media patches.

---
Changes in v5:
- Fix correct patch history in commits - Krzysztof
- Rebased on next-20261124
- Split the I2C/PHY patches out from the CAMSS/media patches.
- Drop the Kaanapali CAMSS media dependency for this I2C/PHY series.
- No functional changes in the I2C/PHY patches since v4.
- Collected Wolfram Sang RB
- CAMSS changes will be posted separately because they depend on Kaanapali
  media patches.
- Link to v4: https://lore.kernel.org/r/20261106-hawi-maili-camss-v4-0-d528c7a797b4@oss.qualcomm.com

Changes in v4:
- Rebase on next-20261104
- Collected Krzysztof, Loic RB's tags
- Added Loic patch to Scale the CSID clocks with the CSI-2 link rate
- Use 8775p TPG resources instead of x1e resources
- Align tpgX and csiphy_rx clock names with the 8775p platform - Vladimir
- Remove redundant CSIPHY resource definitions by introducing
  compatible-specific code and keeping .csiphy_num instead in the
  resource list to denotes the CSIPHY number - Vladimir
- Example Address should match your first reg addr in Hawi bindings - Loic
- Link to v3: https://lore.kernel.org/r/20261030-hawi-maili-camss-v3-0-9742bca8cef2@oss.qualcomm.com

Changes in v3:
- Rebase on next-20261029
- Squash Hawi and Maili CAMSS binding as a whole - Krzysztof
- Add description for IFE and IFE_LITE IOMMU in CAMSS binding - bod
- Correct the lane count variable fallback path - Sashiko
- Add CAMSS top region to binding and DT - Loic
- Use split addr_update/reg_update in CSID and VFE 1190 - Loic/bod
- Add SOF and EOF enable bits with top level RDI status offset to
  allow their corresponding interrupts but not configured on - bod
- Move the common CPAS/GCC AHB and AXI clocks to the pm_clks array
  drop them from the VFE clock lists - Loic
- Use the GPIO function with bias disabled for CCI sleep states - Loic
- Collect RBs from Loic, Krzysztof and bod
- Link to v2: https://lore.kernel.org/r/20261013-hawi-maili-camss-v2-0-fc93222da89c@oss.qualcomm.com

Changes in v2:
- Not an RFC anymore
- Rebase on next-20261012 and drop the external CSI2 PHY series dependency. 
- Drop DTS patches; they will be posted separately with Maili DTS dependency.
- Collect Reviewed-by from Konrad, Abel, Bryan
- Split CSID and VFE 1190 into individual files rather than in separate
  combined Gen4 files - bod
- Remove reduandant is_lite condition in CAMSS CSID and VFE resources - bod
- Replace bias-pull-up and bias-pull-down with bias-disable for the
  SCL/SDA pins of CCI nodes in TLMM, as internal weak pull is inproper
  with existing board level pull up resistors - Loic
- Drop the unused reg_update_after_csid_config flag
- Add lane count fallback path for CSID RX configuration
- Add Hawi DPHY support by tuning register table, which prevents
  potential stream stalls and SMMU faults.
- Add a standalone Hawi CSI2 PHY compatible and make Maili fall back to it.
- Resolve conflicts introduced by Glymur in CSI2 PHY binding.
- Link to v1: https://lore.kernel.org/r/20260923-hawi-maili-camss-v1-0-cbbb42e534ef@oss.qualcomm.com

Signed-off-by: Nihal Kumar Gupta <nihal.gupta@oss.qualcomm.com>

---
Hangxiang Ma (2):
      dt-bindings: i2c: qcom,i2c-cci: Add Hawi compatible
      phy: qcom-mipi-csi2: Add Hawi support

Nihal Kumar Gupta (1):
      dt-bindings: phy: qcom,x1e80100-csi2-phy: Add Hawi and Maili compatibles

 .../devicetree/bindings/i2c/qcom,i2c-cci.yaml      |   2 +
 .../bindings/phy/qcom,x1e80100-csi2-phy.yaml       |   5 +
 drivers/phy/qualcomm/phy-qcom-mipi-csi2-3ph-dphy.c | 136 +++++++++++++++++++++
 drivers/phy/qualcomm/phy-qcom-mipi-csi2-core.c     |   1 +
 drivers/phy/qualcomm/phy-qcom-mipi-csi2.h          |   1 +
 5 files changed, 145 insertions(+)
---
base-commit: 3dd8c790a7b7027abdd568e36db5e82ffaea7c77
change-id: 20260923-hawi-maili-camss-b5dc43a00ed2

Best regards,
-- 
Nihal Kumar Gupta <nihal.gupta@oss.qualcomm.com>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
