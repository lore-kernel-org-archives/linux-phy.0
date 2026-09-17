Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3E7CDC88E72
	for <linux-phy@archiver.kernel.org>; Thu, 17 Sep 2026 12:06:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=qgpnBx1HvcjlF5xqLMbg8BmWXwfUH9A5Tn8M1Q6boT4=; b=1STMd8OuDQMrHp
	Nq/fP07+TXxyskO7ki81jJs6AdDKxbHsA4LG6hSy0y/Zi76iogLYx2zTAxgnvRbhl7Uct3vzCwp5g
	mM8p5AaDSlVmclZGnVMFdMXIsqazatncfR3GIThkIpd9cl1CVWDEdbEN2hdi0F/zF5gsqXK+Y0T2B
	aTNRShlYB/jzmqUgGGI0Gs5yDn5lcgASyb4cHG5ZD8JbE+Eh9vZp0oXKICplnxwGtirXJCpvaIsF/
	6LdwHzBgV2Fe+Xh8ahoP/aLqZDaM79OQR7DdB1lcBPDUOM2S0s6jynPQ9dqxzTOCXooLQ6Nsi4/rc
	sepbsX4t+kgTds/YDC/g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x7AsK-0000000BFbj-0gLi;
	Thu, 17 Sep 2026 12:06:00 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x7AsI-0000000BFbN-0GLP
	for linux-phy@lists.infradead.org;
	Thu, 17 Sep 2026 12:05:59 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 68H9ZvfX1390219
	for <linux-phy@lists.infradead.org>; Thu, 17 Sep 2026 12:05:57 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=fxCdJOR5Pgh524oOvQjl8c
	yBG0pHwcfz9ZpkSzCUxeU=; b=pH5gG31dAfC4nFz3qPHIVfEWnT3WhCdfozZLsg
	dTmXDIK+FOi78Y2BC5Ee1MND0b9bnCLXAyMRkpuLBCki1EaJ7CEKPjlh5x5Ib0ZO
	oc3up9EMkeXvKVs+DiIeyLFvKOw8jd79qkzSx1UAhibDfELpFwVSs5kmfJagDu6N
	RjEa7T9MjN60Yl6sr+kJKDFnlkdEgNbe6/0ptiPR93803YGF/BxvtZbU/46lmlt3
	BpELSwN7tHSCeaQNvArZhCCdbBwZznQmlyktEveRghE4PswWFkkwXzWZKMpbKHHH
	BffkvPUM+reOSP6/0OqLaIZMC962QVL8nF3VmhYIq0p/STsg==
Received: from mail-pj1-f70.google.com (mail-pj1-f70.google.com [209.85.216.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4gqy2d495k-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 17 Sep 2026 12:05:57 +0000 (GMT)
Received: by mail-pj1-f70.google.com with SMTP id 98e67ed59e1d1-39aee9b4cf2so1626646a91.0
        for <linux-phy@lists.infradead.org>; Thu, 17 Sep 2026 05:05:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1789646757; x=1790251557; darn=lists.infradead.org;
        h=cc:to:content-transfer-encoding:content-type:mime-version
         :message-id:date:subject:from:from:to:cc:subject:date:message-id
         :reply-to:content-type;
        bh=fxCdJOR5Pgh524oOvQjl8cyBG0pHwcfz9ZpkSzCUxeU=;
        b=JBeAIKu0AN3bmPyu4nzBfPDzMeBZDNAe3UDXTYoOTvVNPcM/6S004AjdqgL2PUrQyA
         yrNZm/YZBdlAJ6cRKg+ZjqqalpNXTXCLVN9JRJxd2hsCKr7YQiuy3pWPTIGZ+DpfXzi9
         SQfCqx7nm/K6v9Eeuv0FV+CkVp5doGNI2/wLlXkhXflRa39LpLgJj37lVhJo6L/gDBE2
         aJaZvJJE2Y4tIT05Xkk8LDw+WBGoFvUfFfk197jPsBrxr8h5nAvaCjCx2rmTN5+Dun5k
         RK6EHEksIH0ZEgAcLZKzH9wC0lcUlS/c5leeZKo+CHODC1kFtRv3ro2RoxWhFwebcok2
         qhmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1789646757; x=1790251557;
        h=cc:to:content-transfer-encoding:content-type:mime-version
         :message-id:date:subject:from:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=fxCdJOR5Pgh524oOvQjl8cyBG0pHwcfz9ZpkSzCUxeU=;
        b=OpyyR+RT7a3nFaJlPEvSiXJl6m7S5kAppRWgfm23bHpRyzYv8GlFgnJqt9KZ9Rn4GM
         LgedBmPpv6chMrjCPGccDK3ZY11T87k+ijkkXmDH0+tYdps7BvTBAlEq/3hn25BpM2Y+
         ajXD0zkXc+IywYuIvIpLtnPK1LoOhI7/6PW4L4j4qD8SzuWEvnuLtqwwQ1JmVmZpBLXa
         VnhMvGeamTh52Oq06j1jGzqcuIRbqhMrnHVSz553HPAL3lTWCJXudX7UEc8D4dNb5gqZ
         BR+vgadPf4ahVBDJhgOjAS8RLgGoHnC1zaryNRHsTEeqI+TeNI3C6wBpYPErBaaMdIfh
         cAJQ==
X-Forwarded-Encrypted: i=1; AKwUvByHtzAgzQzS30aU8Omgnh1hWD1FG0UdrJoARECHeOF089ddRBHjcA4rSqk1JZ2oiMAKJTviZZAqSoM=@lists.infradead.org
X-Gm-Message-State: AFuF++nRY9w48q3/6fPVUwZH/SPLEu/8qzyklbwZOYigEQ90eKSM4MkD
	qLcJUqVBrfJ8vRs6lxMQ/huI3yKX8Y6FJdMATmNWomf+yjV4os5V9KmgMxIVLvujn7hKRnG63EZ
	yUuyguOjdh45tu2BnPaSnHeFT2Xzn3aDE4bO/vo5BBRtrTuTovjoidXy3Jw6SaGh+gkX6WlRPAb
	7E
X-Gm-Gg: AYBFou3dsXD/DExSaz7tKq1gO66w9hrbYTvu6aH6Emvz5BrUoOVhZCEAtVJdHE97hGc
	Ya1At7A3M3AoNMtTb5vvl/UZNW8r+K/7PVhqwtE7wDK2cGlq0IDuzxyaZNnTvcwuSEoe2e/Zp3J
	1UVdo8VRR5VoO8HaDEczzVHhcym+zpWyuLalSlT0v46P5mOEuRe+jmisgO7EHLiv9CDLksyIuPl
	sL4+kO6rdshnDbEIKAYKjMCYqF/hGXAqNgSvjNGYfJwuy+mbEwgTgY9gw2LeYqm0VooyvPuXN4p
	mq5lOR00YaI/77iWoKEhr+60PGxfoD08sxSPWv7wR3xpurzetZY4AYWQ1uF9ftzmkf9k/r+1v4P
	rjhMfsRjQ7C3Z8MS8TWlT4Wqt3uC7/Q==
X-Received: by 2002:a17:90b:1b08:b0:39d:ee20:1e3b with SMTP id 98e67ed59e1d1-39e1e4cf1cbmr14346655a91.23.1789646756708;
        Thu, 17 Sep 2026 05:05:56 -0700 (PDT)
X-Received: by 2002:a17:90b:1b08:b0:39d:ee20:1e3b with SMTP id 98e67ed59e1d1-39e1e4cf1cbmr14346591a91.23.1789646756196;
        Thu, 17 Sep 2026 05:05:56 -0700 (PDT)
Received: from hu-nihalkum-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-39e35d9869csm5007612a91.4.2026.09.17.05.05.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 17 Sep 2026 05:05:55 -0700 (PDT)
From: Nihal Kumar Gupta <nihal.gupta@oss.qualcomm.com>
Subject: [PATCH v3 0/3] Add CAMSS support for Qualcomm Glymur
Date: Thu, 17 Sep 2026 17:35:40 +0530
Message-Id: <20260917-glymur_camss-v3-0-1d0e2d47ad2e@oss.qualcomm.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAJTXq2oC/32Q3YrDIBBGXyV4vRY1MWooS99jKYs/k0RIYqtta
 Cl59zXJ1bJlb4Rv4HyemRdKED0k1BQvFGH2yYcph/KjQLbXUwfYu5wRI6wmnCncDc/xHr+tHlP
 CTOhWUENd6UqUkUuE1j+2uq/zniNc77n1tg+R0QmwDePob02hdGWdVVw6J1Rra1saRgynmhIHB
 vJAE9WCXatHSElvOk1x3GwUFfhBc1vyDF/6J56pxATXnHLDGeetVqfBTzqGQ4jdJ1qFep9uIT6
 3dWe2GW1dktS/N5tZrspfM7BgK6jpKaR0uN71sMof8rNK7Sx7x1bSGlnTSir3D6uIeMMK3golW
 T6NLP+y52VZfgAPECj3uAEAAA==
X-Change-ID: 20260529-glymur_camss-27af71b1d3d3
To: Bryan O'Donoghue <bod@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Loic Poulain <loic.poulain@oss.qualcomm.com>,
        Nihal Kumar Gupta <nihal.gupta@oss.qualcomm.com>,
        Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Mauro Carvalho Chehab <mchehab@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-media@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-phy@lists.infradead.org,
        Suresh Vankadara <svankada@qti.qualcomm.com>,
        Vikram Sharma <vikram.sharma@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1789646750; l=3114;
 i=nihal.gupta@oss.qualcomm.com; s=20260608; h=from:subject:message-id;
 bh=1Ic/ajQCpJA33O6z7Flj6meuJ1EDpwKmwsUa8nUX9CQ=;
 b=85vFhiq14hMDnXr7VPReoIxyoZVQofTTZfe6kw8Fc8+WvmcoSZ9/xvWKMxc8R8oiNIiQopzh4
 K4jymdyRwuLBfJMTYB+sXxrSyvFDGCXqgXmr3kOZwIOPtd/7+jK6rJn
X-Developer-Key: i=nihal.gupta@oss.qualcomm.com; a=ed25519;
 pk=DIbyFMNwqU/iMvU/0pCQp2wmRVgtHFBT3PcSu+A+Ncw=
X-Proofpoint-ORIG-GUID: 8FlfUEFHZMxuZqNyEpdUF3HOxVEUvCvl
X-Proofpoint-Spam-Info: AW1haW4tMjYwOTE3MDE2OSBTYWx0ZWRfXyr1ag3DL7BMy
 psBps9rD43DJTEAHzCEnsUauopkPR+CMzhbrXxU8lxF+eOdPGUz7+Z1AdPWxqNBJOq8g3WC8sT7
 oR+xKzJrchMjeSkbxCJiqoNguPJwFT4=
X-Authority-Analysis: v=2.4 cv=HbeB3SE8 c=1 sm=1 tr=0 ts=6aabd7a5 cx=c_pps
 a=0uOsjrqzRL749jD1oC5vDA==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=VdqzKS8jKosA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yOCtJkima9RkubShWh1s:22
 a=VwQbUJbxAAAA:8 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8 a=0ARVRLQPdUDne_cnrioA:9
 a=QEXdDO2ut3YA:10 a=mQ_c8vxmzFEMiUWkPHU9:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-GUID: 8FlfUEFHZMxuZqNyEpdUF3HOxVEUvCvl
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwOTE3MDE2OSBTYWx0ZWRfX0uq/C2WlanU6
 rHKYdEZZ4bMFF/MuX9L7RyKaTkMLJwzQPsfg8ADhInq1fivSGZoFsGPPOZiO9WznxuU7E2eLTVa
 f+8UNVJjO5+bphHBTYgIXXb858v9UTc5ZVCIusTBE18pVchIweIZtQWiEMO7LJIWfAEVNGxM0hT
 Polkd0p4I+T3TfmRRUEnDxVd6QblDYXs22Y+1Q48mgobOtOExivMLQgiNqO6FZ0uJaK2/UHB7C2
 l3O0gwPbXTki3erm8V73MSqKvstVzzj6os7+iGnUPdrM0Np2FMkOWBUvr7Kdr/j49SQUqQd3bxX
 vWlx4uo2IzNnGnYDNJWIblrijNj1LGNLTcX8SE73lEZ6i8X9ZXtkESviQkPtrSZ3dxAA8EAyaFj
 umlAF/t75M8MckT8mWeqsI5+jLdegS8jRWzNx5tqZYtxtw1ziG2insJci3WSgIKjYU0r1IGOwZJ
 +peuJUMNW837nWFkY+Q==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-09-17_02,2026-09-16_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 priorityscore=1501 bulkscore=0 spamscore=0 adultscore=0
 suspectscore=0 malwarescore=0 phishscore=0 clxscore=1015 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2609040000 definitions=main-2609170169
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260917_050558_130568_1A40CFA4 
X-CRM114-Status: GOOD (  15.38  )
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

This series adds Camera Subsystem (CAMSS) support for the Qualcomm
Glymur SoC.

Glymur's camera hardware topology:
- 3x CSIPHY (CSI Physical Layer)
- 3x CSID + 2x CSID Lite (CSI Decoder)
- 3x TPG (Test Pattern Generator)
- 2x VFE + 2x VFE Lite (Video Front End)

The CSIPHY block is the same hardware version as x1e80100 (3ph-1-0),
differing only in instance count (3 vs 4). TPG, CSID, VFE, CSID wrapper,
and ICC resources are fully shared with x1e80100.

Used following tools for the sanity check of these changes.
- make -j32 W=1
- checkpatch.pl
- make DT_CHECKER_FLAGS=-m W=1 DT_SCHEMA_FILES=i2c/qcom,i2c-cci.yaml dt_binding_check
- make DT_CHECKER_FLAGS=-m DT_SCHEMA_FILES=media/qcom,glymur-camss.yaml dt_binding_check W=1

Patch 1 depends on the following dt-bindings series:
[1] https://lore.kernel.org/all/20260917-x1e-csi2-phy-v18-0-6515b5255fa9@linaro.org

---
Changes in v3:
- Dropped PMIC changes; will be submitted as a separate series
- Dropped Hamoa from commit log - Bryan
- Collected Bryan Reviewed-By
- Link to v2: https://lore.kernel.org/r/20260907-glymur_camss-v2-0-75f7982dc983@oss.qualcomm.com

Changes in v2:
- Glymur is now defined exclusively with the new PHY API architecture.
  CSIPHYs are standalone qcom,glymur-csi2-phy nodes falling back to
  qcom,x1e80100-csi2-phy. The CSIPHY supplies and register regions are
  removed from the CAMSS binding; they live in the PHY nodes.
- CAMSS_GLYMUR enum is dropped. Glymur wires directly to
  x1e80100_resources in the OF match table. The CSIPHY instance
  difference (3 vs 4) is expressed entirely in DT - Bryan
- The incomplete compatible + resource enumeration from v1 are collapsed
  into a single self-contained patch. The pointless VFE enum patch is
  dropped - Krzysztof, Bryan
- Add dt-bindings, MFD and regulator support for PM8010 I2C PMIC with
  qcom,pm8010-i2c compatible; qcom,pm8008 is not equivalent - Konrad
- Drop dt-bindings: i2c: qcom-cci: Document Glymur compatible; already picked
  by Andi Shyti into her i2c tree (now in linux-next as 7c9474bd4a8d)
- Link to v1: https://lore.kernel.org/all/20260529-glymur_camss-v1-0-bee535396d22@oss.qualcomm.com/

Signed-off-by: Nihal Kumar Gupta <nihal.gupta@oss.qualcomm.com>

---
Nihal Kumar Gupta (3):
      dt-bindings: phy: qcom,x1e80100-csi2-phy: Add Glymur compatible
      dt-bindings: media: qcom,glymur-camss: Add Glymur CAMSS
      media: qcom: camss: Add Glymur compatible

 .../bindings/media/qcom,glymur-camss.yaml          | 300 +++++++++++++++++++++
 .../bindings/phy/qcom,x1e80100-csi2-phy.yaml       |   6 +-
 drivers/media/platform/qcom/camss/camss.c          |   1 +
 3 files changed, 306 insertions(+), 1 deletion(-)
---
base-commit: 9a4cdc958dd79fc6c3b20b51a10debec6ca09fec
change-id: 20260529-glymur_camss-27af71b1d3d3
prerequisite-message-id: <20260917-x1e-csi2-phy-v18-0-6515b5255fa9@linaro.org>
prerequisite-patch-id: ab0db8f40ef87320e67543686702109ac045784f
prerequisite-patch-id: d6b3dab26f8a95822465a176f691280a5610c22e

Best regards,
-- 
Nihal Kumar Gupta <nihal.gupta@oss.qualcomm.com>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
