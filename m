Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AF47606A324
	for <linux-phy@archiver.kernel.org>; Fri, 27 Nov 2026 11:44:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=NMtmopJ7;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=ogUmm2X5;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=DTJNQmdC
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Unsubscribe-Post:List-Owner;
	bh=KFB19pjGYdwn94Y0+1R/XuGs8WjWWfRaQdRkxOArf3k=; b=NMtmopJ7c4oCDIDfPFy4cJ8m8Y
	zc/94YU2r3ORk1rgst3d8zTFsHx6XRWJiP/lb3hGcC3z1ZGMgo6uC68htaBhfCsA363ADIUGkM//b
	W9rGyItRvubmERewFA9U3wBKDJt6v3bBetol+61/5Ab5Y+4CV2OrGizP3UYH/bpsiA6o/isu69M16
	M5+j+iILNXmB0MNqLyM7n/8cWH4RIi72YVmDztVUxH6WwVHOhuHkEF/eB3jRDD6nGAuSR3vXdN9Ni
	loNUepaeeiGSxHjtabOd3p7yHQN8PAMEHvcNydbJI1l3daz+vX2qW5yD68MZ0GeP9bsz/pfea0Q0n
	YX2KO+cA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWuNC-0000000FsMt-0FZK;
	Fri, 27 Nov 2026 11:44:14 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWuNA-0000000FsLJ-0YUd
	for linux-phy@lists.infradead.org;
	Fri, 27 Nov 2026 11:44:13 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6ARApBJZ2906529
	for <linux-phy@lists.infradead.org>; Fri, 27 Nov 2026 11:44:11 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=GrrAfIHYgJUF0D4AiV8HW7
	HVoHwZ6VNKntL3Dly9tL4=; b=ogUmm2X5ySEL/FSVPUOCvU22fg1p0LaYRyc2jF
	79QJurlRiv1dzjlj8zJxj5C077PUf0KxfKFumpyiJh36lz3jqa+rILxoilfPVk4A
	flPij4KmpyAKFI8k/TC7NJ8daX4XL9V7Lw5DvWaqYmL524YFlP92TQGA/AOqTycF
	I3oa/R79QzZMcascDw1WZruwTc9xRmraXLh3NfU4VdcseYGXUL2svvEX8/UtIqQQ
	641gWZg3KD6mJPt6hHoxfmxk1qHdbgCd3QrVRbFlP26yFD0UtPdVWxREIwbXq52z
	RcPwr6cuSzoHhFHtlYe7kmS1no7En+0MTw1xPnavsRkiBhDQ==
Received: from mail-pg1-f197.google.com (mail-pg1-f197.google.com [209.85.215.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4j6rf93bcg-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 27 Nov 2026 11:44:11 +0000 (GMT)
Received: by mail-pg1-f197.google.com with SMTP id 41be03b00d2f7-cdb8931aeeaso3691619a12.1
        for <linux-phy@lists.infradead.org>; Fri, 27 Nov 2026 03:44:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1795779850; x=1796384650; darn=lists.infradead.org;
        h=cc:to:content-transfer-encoding:content-type:mime-version
         :message-id:date:subject:from:from:to:cc:subject:date:message-id
         :reply-to:content-type;
        bh=GrrAfIHYgJUF0D4AiV8HW7HVoHwZ6VNKntL3Dly9tL4=;
        b=DTJNQmdCiCxuoWWNRTq0s09KMbA6XoHziAIMXHGUwaEIuA7b8KEKLaeabgOOhU1ksY
         yaS4ARgBEzoVAFY+F+aKzxFfny0BKg1Bpid8XUXpxN1SKN2rfQt5QafEqgoD2awjRh4l
         mvZUUJdCmZQb4SlZMvnBbQ5O+zEk263DgzjrdHuLTF8Dog/3clyu1dFdoCsCPhRh2LHJ
         FutLJKroGQxKS7tDpCAG/P+ErllQtLf1fIVgk+7V37rp4EjdeIxc6Y5ezpDk1vKPPzRg
         ymNloLPagki2pOdxpszlv237FZ795hVRqguEiT13Ha8XQs9ZxR0/Q6qhLIx/heRlRdN4
         aB0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1795779850; x=1796384650;
        h=cc:to:content-transfer-encoding:content-type:mime-version
         :message-id:date:subject:from:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=GrrAfIHYgJUF0D4AiV8HW7HVoHwZ6VNKntL3Dly9tL4=;
        b=2eK6IzQk3ttGFcmtr4hoyh9G1gL9Y0vumSjiq/5T+EhmqZeDbPOo2Ck8n9txxhucu6
         DQRTf7gGnY+NgYCPjX7aDZN4cdYhnknGxziY1HOSvuMnC2WoJItKFxX95jk/TrbzEGwr
         7W5dvEw1D8S81EkZnvfY3LvVS5jHu2b7SRmCR6zhRKOfYTd5SJG0oOd7DkhMZSxYXcvr
         Mh8OHQQAsitxQDCu+DhmZDrXEuI6kmNyNWg72Fsfm/6owHor/A1r2TUBlGMHJt01Ij2S
         dEvDPcW1t87J7R88Iq5QAUUhRrHbzYg/leCs2ehd7fySCGkEDI702UbjiyB+bT7ZDoBM
         mcUA==
X-Forwarded-Encrypted: i=1; AL+hErG1k6ERLNFTzdl5DC5jcYyw6BV/mN4dVqRowfAS7CqEBBMcVdJv7F7Cg4NcSWQNYVFuvHljdEoycNc=@lists.infradead.org
X-Gm-Message-State: APuU4Z86fnGKvgerSuMOgBWGXTXOcD2Gg/fSmWvlh/6RsfWuhT2c1LV3
	LM1/iIQvm5/XnfXb8JbqNscGVEDlSKq0bp92c05JH+pDZiDEvO4EuyRo9w8XgeoxkWbna6HsHQB
	zVCrEli6GXgpGrQ68BRauexxG/lZOASgnQn5qeMtoDTbSL/A06ba2zdfZaNCFi9+XkOCP
X-Gm-Gg: AZFdTZdUOOmeXiMkln/R1NmOXjh15OD8HA8Kecj8wEq0ZtCIGmcArOfIlbOkD4iGJWL
	H3eQS+mZrqg36sthfSNT6umldHuTMYwh7pzfqdZjrubc6NJNBlzl2vXpLm/eqWVbocNKmsT81Qt
	+iJUujT6G3SlxR3sJuIn325vBSIAIxJHOA3Eutuf56vAzh7vZG9XbD+6kMR0YFOI8xjgehNqNdC
	gAvRoMiIJvkA/jBDQeohXvaIpDKOajrcfzK5EdxvXbH5dl83rMWcnu9h45AFv7ONkT2HPgz+fg0
	qEc2oP9mx7F/80UnbprpcjK+K+4jJRXMTR5rkC1BYcHAizQaguEd4RvK2Ea3t7WmrvsvBcpoFYv
	Rhavb5SpkHwwViXtG45emjVJZ7dRdhieU5ATN7axYmusrG442WhqpUMia2hF5nUjurga0X3JLSO
	PHs+OF
X-Received: by 2002:a17:90b:4a48:b0:3b1:2d60:66cc with SMTP id 98e67ed59e1d1-3b41c7b56bemr21726922a91.8.1795779850199;
        Fri, 27 Nov 2026 03:44:10 -0800 (PST)
X-Received: by 2002:a17:90b:4a48:b0:3b1:2d60:66cc with SMTP id 98e67ed59e1d1-3b41c7b56bemr21726893a91.8.1795779849640;
        Fri, 27 Nov 2026 03:44:09 -0800 (PST)
Received: from hu-nihalkum-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3b41adcafe0sm40480933a91.16.2026.11.27.03.44.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Nov 2026 03:44:09 -0800 (PST)
From: Nihal Kumar Gupta <nihal.gupta@oss.qualcomm.com>
Subject: [PATCH v6 0/3] Add Qualcomm Hawi I2C CCI and Hawi/Maili CSI-2 PHY
 support
Date: Fri, 27 Nov 2026 17:14:00 +0530
Message-Id: <20261127-hawi-maili-camss-v6-0-0f4844eb63b3@oss.qualcomm.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAABtCWsC/33RwW7DIAwG4FepOI8KDIRkp73H1AMYsyA1zQptu
 qnKu49209ZDsoul35I/H/4rK5QTFfa8ubJMUyppPNTQPG0Y9u7wRjyFmhkIaEQHivfukvjg0j5
 xdEMp3JuAWjkhKACrZ++ZYvq4k6+7mvtUTmP+vH+Y5G37DzZJLjh67zWQUZriy1jK9nh2exyHY
 VsHu5kT/DpSyCUHqhOxUwAQXNvhiqMeHCUWHFWdzmrw6FqkCCuO/nOkaBYcXZ1goEXrbGe9XnH
 MgwNmwTHVkbpV3samDUgLzvxdQqbjudZ5+mlinr8AydxFxOwBAAA=
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1795779843; l=5448;
 i=nihal.gupta@oss.qualcomm.com; s=20260608; h=from:subject:message-id;
 bh=yP0v7eupkcwkB0CGdGIJuJoQQiR5R20IpoAUfDVaZzE=;
 b=T83UCr3n9oR1diPm41eqpqbPuLB9cGAnt/l7KPdMWf/R6xkc+WsAiN8l8PtQhNptgpracncRj
 0VUmb3KWCruC6XnN4uNfuKpjyW5k33spdqOK8UPWGKBndSFDfgIMN1Q
X-Developer-Key: i=nihal.gupta@oss.qualcomm.com; a=ed25519;
 pk=DIbyFMNwqU/iMvU/0pCQp2wmRVgtHFBT3PcSu+A+Ncw=
X-Proofpoint-ORIG-GUID: JJ6qbe7acrH5CHzkaCOU1VtKCV_omPnp
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMTI3MDA0NiBTYWx0ZWRfX4lpcR8tlTE+X
 7rcsdH9WukCMEVEkV/7YDLmmwz+srE9snTdWs6Cv1jSbL/PAa6gFQGc8kb5HeuVKpTzgy7t7wF6
 hFGhmX6ioc5BZrUWCWLWZ0g9uwj1Hw3MQZnWPEHUfk+T7h6Rjr15oWQqmYBa43vNLSFxcOa+1MX
 1b/ZDf6l5dhe2ob2A7XWrMDTowQSTzlEr98ztw+DyZ1GJJe6iQW3Xd3mwAfXpFTxgwKQ2izkr3A
 stlyPAzI5MKlxyTsde3qPrM20bdWaYVenADSZm0EFARkrETOPGKpTn9uSFjMyMTcFBK7lxm8yI9
 kn5r/c5cnlBd6147KCUCUfzvzkuiiQ9eLF5taMovvknuTDBIuqj2xqaobAc8OsGuvHr2gzkChbH
 WIPA+XUDfM5OqUpsvME2sQo9zcodiQ3I65PP/QvUJQYHWuxdEeLmfpZ6bpwBSd5s5QiWs8kCclx
 czPVOnEpFASu3AiYM6g==
X-Authority-Analysis: v=2.4 cv=cpkOAF4i c=1 sm=1 tr=0 ts=6b096d0b cx=c_pps
 a=rz3CxIlbcmazkYymdCej/Q==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=zJRp6_cAMcgA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=eoimf2acIAo5FJnRuUoq:22
 a=EUspDBNiAAAA:8 a=VwQbUJbxAAAA:8 a=MdiNbCTM_Z-SUpbbCTEA:9 a=QEXdDO2ut3YA:10
 a=bFCP_H2QrGi7Okbo017w:22
X-Proofpoint-Spam-Info: AW1haW4tMjYxMTI3MDA0NiBTYWx0ZWRfX/uoP4jEpkNBj
 4FOUBlX+syqL40mAyl5Zbf4CBn+Xs3DZW8BH9bwTtvd3CM4qdpUC9qFHYaOQoQLoGXnuerEOz14
 kfmz7U/qKbCBcoEgWB/85/TE0DKA46w=
X-Proofpoint-GUID: JJ6qbe7acrH5CHzkaCOU1VtKCV_omPnp
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-11-27_02,2026-11-26_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 adultscore=0 priorityscore=1501 spamscore=0 phishscore=0
 suspectscore=0 malwarescore=0 lowpriorityscore=0 impostorscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2611040001 definitions=main-2611270046
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261127_034412_187478_80D2865F 
X-CRM114-Status: GOOD (  18.88  )
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
I2C CCI bindings part for maintainer Loic/Andi (1):
[1] dt-bindings: i2c: qcom,i2c-cci: Add Hawi compatible

PHY driver part for maintainer Vinod Koul (2):
[2] dt-bindings: phy: qcom,x1e80100-csi2-phy: Add Hawi and Maili compatibles
[3] phy: qcom-mipi-csi2: Add Hawi support

CAMSS changes will be posted separately because they depend on Kaanapali
media patches.

---
Changes in v6:
- Renamed Hawi lane register table to lane_regs_hawi_dphy - Konrad
- Link to v5: https://lore.kernel.org/r/20261125-hawi-maili-camss-v5-0-1483b7f68dce@oss.qualcomm.com

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
 drivers/phy/qualcomm/phy-qcom-mipi-csi2-3ph-dphy.c | 135 +++++++++++++++++++++
 drivers/phy/qualcomm/phy-qcom-mipi-csi2-core.c     |   1 +
 drivers/phy/qualcomm/phy-qcom-mipi-csi2.h          |   1 +
 5 files changed, 144 insertions(+)
---
base-commit: a9c48428cbd8d96b26f92631d0db6f8519c5fcc5
change-id: 20260923-hawi-maili-camss-b5dc43a00ed2

Best regards,
-- 
Nihal Kumar Gupta <nihal.gupta@oss.qualcomm.com>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
