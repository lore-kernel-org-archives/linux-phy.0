Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DDDA3606A88B
	for <linux-phy@archiver.kernel.org>; Sat, 14 Nov 2026 11:29:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=XbMgQHMn;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=FSseDSFt;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=HTBtjpAX
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Unsubscribe-Post:List-Owner;
	bh=ZSLD2KKT6EuiunLApEu9CYNQw+FMBv+4NrWOD+KVxJA=; b=XbMgQHMnZfVqUbqno/S4lhUBjv
	pCdZhmUvOCevx2ek2JC4cwOripvcDCZlkqMAlEkuxEnYfbq0jBg/XWfWCZd02mcZj0nVSih7xRL+Q
	MnU429VgfaYoZC9JtnL4hSdtytCJ3MoFYKnTkXKgoxhL23/FFw9e6xlVHLfPiW/QlP5gk9nB98vMZ
	3AFxCTa/uncdvqHYrccUbujYHB0JQV0W5WPkqM2GUKQa17SuY/veEoIyA1tjfa+b91VmIu3W4BN42
	nVYeBrBMZPUe2Pe95K5l3WOcnstnI2IfxwoJ7QB6N7S+EmYSG2Nxt20W3G4VqG6+w8xbN7Mu9JyKU
	1xs+3DLw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xSBx7-0000000Ftcd-06iH;
	Sat, 14 Nov 2026 11:29:49 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xSBx4-0000000Ftc8-1uQY
	for linux-phy@lists.infradead.org;
	Sat, 14 Nov 2026 11:29:47 +0000
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6AE9wKNi3379492
	for <linux-phy@lists.infradead.org>; Sat, 14 Nov 2026 11:29:44 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=lYQtc23/hKZH4TPph2Tg/s
	dYM2XjGYrgayP6INE2B3Y=; b=FSseDSFtSrbE/ZEObvOskyvhpmmjHY81VDlbST
	HbiG1FCI3IiF2am29IVbc8qKBv6ykYErJRatxcPY64Ye1Lpd7SINxsaYiWC9T8mq
	YoIS9QWrBWgmNFwNGFm4s1ESHjwdz9lBw4lYq3Brq1NqbIavVqZpX9VwO/JQw8dt
	tLJGN9/vBZ8uXpzxBVcFLxrwvLnLAlZ9/K9rwWqYdqdP+09M+7yqZZnxlIJSQ0wO
	dKxjCcvhRSR1ceivt6fWOWvTntJu56enG/FJxuuqjYoGCVWKpPUY4uewMRxeZQjD
	+l65zxarLsws7Lb6gKb/AJvtLNuYD8c21thdMTdqcHnIZAsw==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hxhnx0mxy-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Sat, 14 Nov 2026 11:29:44 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-91ec6cd898eso41716476d6.3
        for <linux-phy@lists.infradead.org>; Sat, 14 Nov 2026 03:29:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1794655784; x=1795260584; darn=lists.infradead.org;
        h=cc:to:content-transfer-encoding:content-type:mime-version
         :message-id:date:subject:from:from:to:cc:subject:date:message-id
         :reply-to:content-type;
        bh=lYQtc23/hKZH4TPph2Tg/sdYM2XjGYrgayP6INE2B3Y=;
        b=HTBtjpAXcmrCzWjqbUb3GxQvAisAmQLQONu+8f7In78AsTeBgcgUyV9CCInnwnaKUz
         Vlb1DJAtXSWJfHdIcLfIAcj5dXI24P9T2zgqvJROOrFwEWohcovY5zsSATmTKeTBcRg2
         Q5Pm21zwRJ9DEaX+Fwp/OxhAb4n4OnAs+HnBWQoOOQPfYJ5IcnxqFvIWg1dCLS9VoeTe
         zIXHzaSIDotc/LUykvs8rluwSJpn6sLg/6OcA2VDboYIUlu41pPbOVOSwNmRXTiY2bXf
         12VJm5yl+KMeh/7CBObNQtRDMDnQvmUSXQspctldfGRo4naXTeNitJTX3rlfHdZ651lx
         IgwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794655784; x=1795260584;
        h=cc:to:content-transfer-encoding:content-type:mime-version
         :message-id:date:subject:from:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=lYQtc23/hKZH4TPph2Tg/sdYM2XjGYrgayP6INE2B3Y=;
        b=QnIU5YoRfoaJZm23hvXZtOpqMOQbOtXig/PXk32mhkccHsTmQqUJlxV5uBPv4t2ezE
         B+q2JZjS2RbrKhm6d69VkUoVZoopn8dspjU68eoPMX5bh4muoWza6b0c/+z/z0ecSYK7
         wh0dbOQu8gW5iqZI8TXRc76WVEZPfaCUdGTnq8ey31unKr3w3/h3nx5s5ynFKdYUHIxj
         5jnbHz58dreLJnXkYao4qQYL91OOC8KzQRwX0y5LNBvqNYFVL9U9h5DF5cMO43eZRuDL
         j38F/Y74xgqNt4a62SdQn0aL7eAvqYgXJPoD8BOw1l5nbI2BjCsSa3b8A6c0+Yk4eBnQ
         TogA==
X-Gm-Message-State: APuU4Z8O/KAe7+dzlZ3OglzaiVv9SeRfrjDqZuDM8szqPcGgc02idieP
	4tzfWKgv56IIpJnDS/+FTO+xgKAInuvMvzHMUMwEhfSq2nSzz0rabJZs7diwyhB5XBP9W5uDSx9
	IjbuxuhMazXr1xzfJj5x+f7OqNJ+C4M0gtvf+G73Gk5lapLfu5z5YB7PFolgkNNC/hfiH
X-Gm-Gg: AYBFou12DObF3GEhH6jO8GKZu2C2pBMzXrohAaFg1fcR+lg8T7p0Gd9cZ3cxRYPEtCP
	/d5O0GPyvRKiD/jDapUCt3NxsLBHiigfVsTKLf+dOqD20kNzWrcfyxAMBiRXaa/ruNiXyeap2/4
	BNJnVLz87Luxi1sDloNGCdiSxLGRaynF8r4SH3USQsWCx7GJkBhoSVsGcALWEBDhur61oVvq73X
	FI45lKrnetSs6G5lj5KEmfV91AhwIUewSU98vKX1uQ8nT98fUUEi+xCvSKeCOv0/afvdJySkZxM
	vmpYiAXKQ6AHzznEx7qQe8BcKlnJjsuN/qguw3J839KJTRZzGJshojyza6fByrqjMnBQQzhA25y
	6Fdh9QJMY0phcRytt9smYAjPuMPPv+20L9dj/jPdxwgXDYqVXcmsy4ndFgqZ/OBVLhyndtIfe6u
	wMv8HchDgT7E1/dCrts4JbrlmDiRMgcTwJwGwd7mAx
X-Received: by 2002:a05:6214:3292:b0:91f:136e:e90c with SMTP id 6a1803df08f44-91f24244031mr71337606d6.53.1794655783792;
        Sat, 14 Nov 2026 03:29:43 -0800 (PST)
X-Received: by 2002:a05:6214:3292:b0:91f:136e:e90c with SMTP id 6a1803df08f44-91f24244031mr71337486d6.53.1794655783390;
        Sat, 14 Nov 2026 03:29:43 -0800 (PST)
Received: from WENMLIU-LAB01.ap.qualcomm.com (Global_NAT1_IAD_FW.qualcomm.com. [129.46.232.65])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-91f23d7ba48sm41389746d6.28.2026.11.14.03.29.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 14 Nov 2026 03:29:42 -0800 (PST)
From: Wenmeng Liu <wenmeng.liu@oss.qualcomm.com>
Subject: [PATCH v7 00/23] Add CAMSS support for SM8750 and Eliza
Date: Sat, 14 Nov 2026 19:29:17 +0800
Message-Id: <20261114-add-support-for-camss-on-sm8750-v7-0-8ff2a11835f6@oss.qualcomm.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAA1G+GoC/y3NQQ6CMBCF4auQrh3SoqXIynsYFgMdtNFS7AAxM
 dzdgm4m+d9ivo9gio5Y1NlHRFocuzCkMIdMdHccbgTOphaFLLRSRQloLfA8jiFO0IcIHXpmCAO
 wr4yWoGXZnSwdS1tVIn0ZI/XuvQvX5teRXnOCpt8oPDHjDtVZYkqVHHggDjji0/2BpdAgQVkjz
 702/dHIS2DOXzM+u+B9ns6mtcgE2+CmOqtO2LZnrVsllWjW9Qvko7h27QAAAA==
X-Change-ID: 20251126-add-support-for-camss-on-sm8750-506c4de36d88
To: Bryan O'Donoghue <bod@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Loic Poulain <loic.poulain@oss.qualcomm.com>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Robert Foss <rfoss@kernel.org>, Andi Shyti <andi.shyti@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Abel Vesa <abelvesa@kernel.org>, Frank Li <Frank.Li@nxp.com>
Cc: linux-phy@lists.infradead.org, linux-media@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-i2c@vger.kernel.org,
        Wenmeng Liu <wenmeng.liu@oss.qualcomm.com>,
        Atiya Kailany <atiya.kailany@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1794655774; l=5989;
 i=wenmeng.liu@oss.qualcomm.com; s=20250925; h=from:subject:message-id;
 bh=ZF5h2lHCofFCc9Gv68CDYvEz04GrgoDbg7RhcIPuRMM=;
 b=51IvPApOHKdKWHF7Jj4MH9xxNAuThn5MH/FiwFoot3dFIWqUd+ZiZEL0UWyJYHVkPuOWhdB9w
 bBSZOCqQmz7CRt/UmCWit27f6wBrFiYd2yDDZH39RRTfC6Qgn89VW/g
X-Developer-Key: i=wenmeng.liu@oss.qualcomm.com; a=ed25519;
 pk=fQJjf9C3jGDjE1zj2kO3NQLTbQEaZObVcXAzx5WLPX0=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMTE0MDA0NSBTYWx0ZWRfXxDMYeQP6TnK7
 UIvuKf/oksW9YuQwHAWAIRjF11JeYphwFlz4O4dh2acEO7cJuSc1ycnBirNVafg60BjEGfpmk0q
 SjnwVE9eT1RZ92XTUkoUuVdMaKhHBIZNMyrB4xLS/zbDcoQNC5/KJ04C5kZ8j/O30E7hEfe7aXF
 S/h1qVFxu7TrfOu5bq3DaYTMqCwe56k+YGPaVZsMpHxTWj7yE+8t/PEjUgC2MdYj6l1BHWaz083
 e/qiiJSLFcT04yVkrsl9zbl9kTqTUaEsQIrWEM+CVFRYUoJUZ9l/H+mPTo4UQWZuGyRlZ5DR8vg
 7TzxqBliWC7XeRlI01FA0yhm2EXBdgUXo7XRBy7eqfNDcs5oxJgbARQjSlJM0pJOWhFnuo2rjO8
 nyY3d0CW/d+sdw55H3UsJlz8yJ1+OqftQa121ey+frrWG1gl5ALDHd3L0JhSZJqEDzkUxAA8tq7
 gZ7W08fSNyRdLERTRjw==
X-Proofpoint-Spam-Info: AW1haW4tMjYxMTE0MDA0NSBTYWx0ZWRfXyWJvFBbet4Sg
 nLflaCus5GhHaXSdh5QXv5TxHcN1SNUT0AlTX+BufWNm2NwAzydPrtKRqNykuqaJg3bb5yje2wd
 nBnvxu3ELkyfphZDz20jt9c/X5EkRx0=
X-Proofpoint-ORIG-GUID: aE_I065qkYUwbkm5maf9ZAtuIrqm5I47
X-Proofpoint-GUID: aE_I065qkYUwbkm5maf9ZAtuIrqm5I47
X-Authority-Analysis: v=2.4 cv=Jr5kP84C c=1 sm=1 tr=0 ts=6af84628 cx=c_pps
 a=wEM5vcRIz55oU/E2lInRtA==:117 a=C3Dk8TwHQYyIj7nOf9RCJw==:17
 a=IkcTkHD0fZMA:10 a=zJRp6_cAMcgA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=ZpdpYltYx_vBUK5n70dp:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=ZzokZsKx-LV0YXTnLPAA:9 a=QEXdDO2ut3YA:10
 a=OIgjcC2v60KrkQgK7BGD:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-11-14_03,2026-11-11_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 bulkscore=0 suspectscore=0 lowpriorityscore=0 clxscore=1015
 priorityscore=1501 impostorscore=0 adultscore=0 malwarescore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2611040001 definitions=main-2611140045
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261114_032946_622358_8DCA0A0E 
X-CRM114-Status: GOOD (  14.19  )
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

This series adds CAMSS support for the Qualcomm SM8750 and Eliza SoCs.

SM8750 has CSID 980 and VFE 980. Eliza has CSID 970 and VFE 970, which
are register compatible with 980 apart from the VFE RDI write master
client IDs, so Eliza reuses the SM8750 CSID and VFE support. Both SoCs
have TPG v2.3.0. The CSIPHYs are described as standalone
phy-qcom-mipi-csi2 devices, linked to CAMSS through the OF graph.

SM8750 has 6 CSIPHYs, 3 CSID + 2 CSID Lite, 3 VFE + 2 VFE Lite and 3 TPGs.
Eliza has 4 CSIPHYs, 3 CSID + 1 CSID Lite, 3 VFE + 1 VFE Lite and 2 TPGs.

The series depends on the Kaanapali CAMSS series.
https://lore.kernel.org/all/20261112-kaanapali-camss-v25-0-1d709f57f370@oss.qualcomm.com/

Changes in v7:
- Rework the bindings: describe the SM8750 CSI2 PHY with its own
  "qcom,sm8750-csi2-phy" compatible (plus the matching phy-qcom-mipi-csi2
  entry) and move the CSIPHYs out of CAMSS as sibling PHY devices linked
  through the OF graph. Drop the Reviewed-by tags of the CAMSS binding
  - Krzysztof
- Add the "top" register region to the CAMSS binding, a PM clock list for
  SM8750, and include the CSID clock scaling patch - Loic
- Clean up the CAMSS binding (reg-names, clock names, unused clocks and
  interconnects, iommus description) and reuse the SA8775P TPG resources
  - Vladimir, bod
- Rework CSID 980 and move VFE 980 into its own camss-vfe-980.c with
  dedicated SM8750 resources, dropping its Reviewed-by - bod
- Drop the two-phase CSIPHY patch, the CSIPHYs are now handled by the
  standalone PHY driver
- Add the SM8750 DTS and Eliza support (bindings, driver and DTS)
- Link to v6: https://lore.kernel.org/r/20260721-add-support-for-camss-on-sm8750-v6-0-a5f841061d18@oss.qualcomm.com

Signed-off-by: Wenmeng Liu <wenmeng.liu@oss.qualcomm.com>
---
Hangxiang Ma (11):
      dt-bindings: phy: qcom,x1e80100-csi2-phy: Add SM8750 CSI2 PHY
      dt-bindings: media: qcom,sm8750-camss: Add SM8750 CAMSS
      phy: qcom-mipi-csi2: Add SM8750 support
      media: qcom: camss: Add SM8750 compatible
      media: qcom: camss: Add PM clock definitions for SM8750
      media: qcom: camss: csid: Add support for CSID 980
      media: qcom: camss: vfe: Add support for VFE 980
      media: qcom: camss: tpg: Add support for v2.3.0 TPG
      arm64: dts: qcom: sm8750: Add CAMSS and CSIPHY block definitions
      arm64: dts: qcom: sm8750: Add CCI definitions
      arm64: dts: qcom: sm8750: Add camera MCLK pinctrl

Loic Poulain (1):
      media: qcom: camss: csid: Scale the clocks with the CSI-2 link rate

Wenmeng Liu (11):
      dt-bindings: phy: qcom,x1e80100-csi2-phy: Add Eliza CSI2 PHY
      dt-bindings: media: qcom,eliza-camss: Add Eliza CAMSS
      dt-bindings: i2c: qcom-cci: Document Eliza compatible
      media: qcom: camss: Add Eliza compatible
      arm64: dts: qcom: sm8750-qrd: Enable S5KJN1 camera sensor
      arm64: dts: qcom: eliza: Add CAMSS and CSIPHY block definitions
      arm64: dts: qcom: eliza: Add CCI definitions
      arm64: dts: qcom: eliza: Add camera MCLK pinctrl
      arm64: dts: qcom: eliza-mtp: Add PM8010 PMICs
      arm64: dts: qcom: eliza-mtp: Enable rear camera
      arm64: dts: qcom: eliza-evk-imx577-camera: Add DT overlay

 .../devicetree/bindings/i2c/qcom,i2c-cci.yaml      |   2 +
 .../bindings/media/qcom,eliza-camss.yaml           | 282 ++++++++
 .../bindings/media/qcom,sm8750-camss.yaml          | 297 +++++++++
 .../bindings/phy/qcom,x1e80100-csi2-phy.yaml       |   9 +-
 arch/arm64/boot/dts/qcom/Makefile                  |   4 +
 .../boot/dts/qcom/eliza-evk-imx577-camera.dtso     |  85 +++
 arch/arm64/boot/dts/qcom/eliza-mtp.dts             | 188 ++++++
 arch/arm64/boot/dts/qcom/eliza.dtsi                | 512 ++++++++++++++
 arch/arm64/boot/dts/qcom/pm8010-eliza.dtsi         |  81 +++
 arch/arm64/boot/dts/qcom/sm8750-qrd.dts            |  72 ++
 arch/arm64/boot/dts/qcom/sm8750.dtsi               | 735 +++++++++++++++++++++
 drivers/media/platform/qcom/camss/Makefile         |   2 +
 drivers/media/platform/qcom/camss/camss-csid-980.c | 478 ++++++++++++++
 drivers/media/platform/qcom/camss/camss-csid.c     | 208 ++++--
 drivers/media/platform/qcom/camss/camss-csid.h     |   1 +
 drivers/media/platform/qcom/camss/camss-tpg-gen1.c |   5 +-
 drivers/media/platform/qcom/camss/camss-vfe-980.c  | 216 ++++++
 drivers/media/platform/qcom/camss/camss-vfe.c      |   4 +
 drivers/media/platform/qcom/camss/camss-vfe.h      |   1 +
 drivers/media/platform/qcom/camss/camss.c          | 229 +++++++
 drivers/media/platform/qcom/camss/camss.h          |   2 +
 drivers/phy/qualcomm/phy-qcom-mipi-csi2-core.c     |   1 +
 22 files changed, 3370 insertions(+), 44 deletions(-)
---
base-commit: 84abb955b1015477aa11a96e2f3ac1b938b77f48
change-id: 20251126-add-support-for-camss-on-sm8750-506c4de36d88
prerequisite-message-id: 20261112-kaanapali-camss-v25-0-1d709f57f370@oss.qualcomm.com
prerequisite-patch-id: 6108fea87bf95e2911f09bbe7e95fa536c3ce397
prerequisite-patch-id: b347ad60c475f3035b04ec76741e0f1b5f095580
prerequisite-patch-id: a38055fcd5b32fbf7f7f03301a48b4ad8601386b
prerequisite-patch-id: 5faef8cef855ce6fa00e2c7f10f125431ede40a4
prerequisite-patch-id: ddf0ddaef84c2d088d08f17de8d20f6b966ace37
prerequisite-patch-id: 5d7b6860d43c9215836a0d50fb27d2d003d0bfd8
prerequisite-patch-id: 610b107ca35300b00e8edae31dfb959a4501ff66
prerequisite-patch-id: 0bfebf965372eab19b73ad9629cec919795b557a
prerequisite-patch-id: d386de6329dabce0b0a459384d28bf290e170552
prerequisite-patch-id: 702e37b99095301ba1dfb2b48a92f33575178d32
prerequisite-patch-id: bc7b2ea560fb0a75ae9b2858a40f7340cc63bebb
prerequisite-patch-id: 83a0f9a6655a615e796ab850955ff764b9dbbf03
prerequisite-patch-id: a579bc3d977dd6869ddd7e78247982e89bd3e86e
prerequisite-patch-id: 4ab7713c2b3b3df586b644772b04d33152f57a4c
prerequisite-patch-id: cf1743d9aeaa627ed310a663621e172a4c095837

Best regards,
-- 
Wenmeng Liu <wenmeng.liu@oss.qualcomm.com>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
