Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 04C5BC43458
	for <linux-phy@archiver.kernel.org>; Thu,  9 Jul 2026 06:35:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=RMxWHxCN801B7dSJ1n4jA5FjgTNMGpfjjB+a46AsiIQ=; b=x5hf+PBlxcU1i8
	S75QrrkI5ySonmdGiOzevw6QBcloh166sllpSoAAbe3BVVSjMK542K2TZXX1MJ/cOtkGQvgwm/s1d
	xtU2JAc4nxxpvfIM2dY4mJTfWBi/kg0tJwDjCnsQfx7Sm8UsOfwcgeImYAKuWd6LIRLc8qA+6MInw
	zVQY//dX3cTY1W7H2Uy0vumNZriWuRu4Ba8B9sE57EsHx5LPcVwwtcsOplWRMWiRHB3nICuZ0FiaG
	dR9igTPoOSo/acP7J6oYwnZx+J+CKJWU6yygWffV2kgtWQuj+rxpSdJXeR90Vxmb8rGr2QHHT8hW+
	FCoOM5b8eDtU7XJDt9HA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1whiMC-00000001BnQ-2Sad;
	Thu, 09 Jul 2026 06:35:36 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1whiMA-00000001BlP-1AXX
	for linux-phy@lists.infradead.org;
	Thu, 09 Jul 2026 06:35:35 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 66960L6D916679
	for <linux-phy@lists.infradead.org>; Thu, 9 Jul 2026 06:35:33 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=VWOut9Y+gjUFIHIxTYgSGy
	NQ1g4rRooiLUtEV7k3qB4=; b=bmslssIawUWwwQYrjm4vV5J6Jbd++0vXyO4tuX
	K1NsLSUDti/yC4Xr3wSVUwD4c8KLevWZPkYsW03qsoH01zAMIBkixNJMR/CGg6Ap
	TNNk1tG+dx8+6ABSyYhcx66+EzQbCo1ExqrUSmR8gRQuxLvAsZU3cR/F7uhLmAHC
	oal5KLU0xUoaVJPM7qDfe9zWeLEmxEDYZzGr2eR3oyOxdI5YZQfkjJlpnKcS0chW
	O3a1zostOgz6zUth5+QwMkxacYVA+68YWiissBGEJxmNeL08nU2G6KxbH5UkS8KJ
	Gcg1Fv4tAshS2TScvOQ8tCd3HnJIb6S1wx3ATK4jXTL+o1Pg==
Received: from mail-pg1-f200.google.com (mail-pg1-f200.google.com [209.85.215.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4f9hnv58w4-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 09 Jul 2026 06:35:33 +0000 (GMT)
Received: by mail-pg1-f200.google.com with SMTP id 41be03b00d2f7-c88ab059052so684450a12.1
        for <linux-phy@lists.infradead.org>; Wed, 08 Jul 2026 23:35:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1783578933; x=1784183733; darn=lists.infradead.org;
        h=cc:to:content-transfer-encoding:content-type:mime-version
         :message-id:date:subject:from:from:to:cc:subject:date:message-id
         :reply-to:content-type;
        bh=VWOut9Y+gjUFIHIxTYgSGyNQ1g4rRooiLUtEV7k3qB4=;
        b=DdNRAgmceHSq14LTwoyICCY55VxaUBGGKaMh1+YB67LPmQJ7m5/ke0iUR3INaFeAtL
         wKjV8sZKq2umYdkUhDgCsG5+5YKzH6pCma35XZbBiTAKuEGxCUYUE6veZm/KEZDo0Oow
         aPBSU4gj3WagjU6oNBJaQImikWwYL3cOXjesgW4Ef5n7gQDyuI91FsHxnhNPOVV2/x8O
         wYXzTCmrEMrX2DjDbg8kbpOLbtx+pgX/PKRwZHCxryhEYeA99PEWImdxjmyvosqKFQVL
         H62XmAigXM6zjtkoq60RqmfaPotthIx+6BFqiG2ZzWDLqPubY0TYzgROqEDzbcnzXXiM
         ppIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783578933; x=1784183733;
        h=cc:to:content-transfer-encoding:content-type:mime-version
         :message-id:date:subject:from:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=VWOut9Y+gjUFIHIxTYgSGyNQ1g4rRooiLUtEV7k3qB4=;
        b=XvP4H82y7rYP1ZzVI0RQc6Yn+V9Re1HW1rlDEpXbpsX3d7PBBBc0Y/VFt6Hj3oaif6
         M43CSrJDt9kLDfGg3sAYvwWQunMw59KSsut9SowpCaAoa6956zEn4fAha4aZLds+CZ4d
         N57P72kPEJJwgW+sLqgbm4OnpX5ns7duGLZf1g2roA1JjLCOAdbrGvvKNk7rdOE//7YA
         jRpDu4Ri/ARzg+GEsYTAMEu932TqMw3tuq6BLP7rB8GgIvr545xENNf+qbC0jt+bjBVe
         Tdo4fDLtKowCxZp9ltaC25YP0jGzyp273WM0Lfwmj6zWDGYTjdtUX5M4e0KyzLu9cSRE
         bV3A==
X-Forwarded-Encrypted: i=1; AHgh+Rq25JaSwyBIfVs1WnO1GmB0TzC3E8f3VqdETnOqOkQxzKEvFnXAyzaV8j4RUsvKNZUlfcGXQDi9YEc=@lists.infradead.org
X-Gm-Message-State: AOJu0Yw70OTW7FHsperIPa7W2iAp37cOVKlENncsEHA2O23YK/3JTSHf
	z/hufeD5fgNgYKPdq1ylLhVnHbrWibOYro9BgOY34YASws/pk7ixGY0KfLusJWUGF/KDY6tAart
	3GUxc4pOaAB4Fdd4AN5WMMgZVTtT7a2ZxnK9vCrxKmeQIF+BYt4H/J7jlXBoI2am2tsO/
X-Gm-Gg: AfdE7cm2Y3PfZzvbsX9hv4VE3szJifEDTgOnkAln6c2uQHV0GxaiQ/I0V3yWoPcvW3C
	pTYeGJmrdhy3FxYtANb9VEvEFab1CUZ/VSDBU213LINLXqRMRfneB4Hd/X97H3tJFX7jY2Mmc+X
	Dx3EyaU8gLqmbUpYUZ3OkdXieoNbC3c/j8mYzOzEm4URUEG1w2/syF2dXg5YESxVPDtWo3QtSQh
	mkaaXovIku1UkKMdw3IWlmr2gtu0E8xKEEkTOckU+X2V10cr5mJ/+PnJ9nnMPe0VEkloe4m4bwS
	H7TIkW8Ssim/0Hdbs7QkhXrpwCMNdvXxnV+T9dd0WpnjaoY4fvpcb5FaQbKf6aMUJI/Fl7tzSDj
	NpQAOoYh1qilA4JnqeUbxNfdxGBNeOFkodLvObbgFJVl0yg==
X-Received: by 2002:a05:6a20:a10a:b0:3a0:c246:bb98 with SMTP id adf61e73a8af0-3c0d6b91578mr2421113637.29.1783578932500;
        Wed, 08 Jul 2026 23:35:32 -0700 (PDT)
X-Received: by 2002:a05:6a20:a10a:b0:3a0:c246:bb98 with SMTP id adf61e73a8af0-3c0d6b91578mr2421065637.29.1783578931952;
        Wed, 08 Jul 2026 23:35:31 -0700 (PDT)
Received: from hu-krichai-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-31174a56848sm28304294eec.16.2026.07.08.23.35.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Jul 2026 23:35:31 -0700 (PDT)
From: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
Subject: [PATCH v3 0/4] PCI: qcom: Add link retention support
Date: Thu, 09 Jul 2026 12:05:15 +0530
Message-Id: <20260709-link_retain-v3-0-81a9d187bb61@oss.qualcomm.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIACNBT2oC/23OSwqDMBCA4atI1o1MYjSxq96jlOJjrKGatIkNL
 eLdG90UoZuBf2A+ZiYenUZPjslMHAbttTUxskNCmr4yN6S6jU048JwBMDpoc786nCptaMcUy0C
 WQqIg8eLhsNPvTTtfYvfaT9Z9Njywdbs6BTAod05gFKjEQirOM+hEfbLep89XNTR2HNM4yMoF/
 iNyvn8l8EiAwlYIVYNizR9iWZYvOcJmwPAAAAA=
X-Change-ID: 20251001-link_retain-f181307947e4
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Jingoo Han <jingoohan1@gmail.com>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
        Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>,
        Abel Vesa <abel.vesa@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Qiang Yu <qiang.yu@oss.qualcomm.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1783578926; l=3032;
 i=krishna.chundru@oss.qualcomm.com; s=20230907; h=from:subject:message-id;
 bh=sF+5+mlvT40t4Oa7kCgpbppxkmIb7GFh+GBtlhUHWg0=;
 b=4WF8KeneP5kDFrwQawQN2JEQpi2M5tVjiuO/q/KkGovSi6O5wQNu7o/BGrMJ7isY9467o2KyL
 GQouKH0G4YnBmpJvPbT8rxsoCS3EE3Prt7deLSEjjmwPAIHqfDXmQm0
X-Developer-Key: i=krishna.chundru@oss.qualcomm.com; a=ed25519;
 pk=10CL2pdAKFyzyOHbfSWHCD0X0my7CXxj8gJScmn1FAg=
X-Authority-Analysis: v=2.4 cv=KNNqylFo c=1 sm=1 tr=0 ts=6a4f4135 cx=c_pps
 a=oF/VQ+ItUULfLr/lQ2/icg==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=RAioF0-LDSMA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=eoimf2acIAo5FJnRuUoq:22
 a=bC-a23v3AAAA:8 a=EUspDBNiAAAA:8 a=VwQbUJbxAAAA:8 a=fuwIWhs0SkhWFt5P5XoA:9
 a=QEXdDO2ut3YA:10 a=3WC7DwWrALyhR5TkjVHa:22 a=FO4_E8m0qiDe52t0p3_H:22
X-Proofpoint-Spam-Info: AW1haW4tMjYwNzA5MDA2MCBTYWx0ZWRfX94qjGXvxrNEw
 bYDz7xDJ7UMI6e6ELt3qVKu1uXmLdUdQXCWoPId50i+2jHlgwtgOXZLwTc1vOLQVQJD4yiePOZp
 2zLKkovk7fJ74vAnnf1BR5lOQGoiFEE=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzA5MDA2MCBTYWx0ZWRfXz36oWwfFtfzx
 0lT9vdL300G5wxMwMLiAto4eCy5iLsoAfEBUQCdrvxPh6usVO++bbKd5gat6B4g9jGXDp7m0rVt
 jp/Zrh2vASPVctcTEn/d3bMDB13bRJJgfs4yXH8sSNHbeF/zd8OmSOeeJdEMBDdKnLcJROVclL6
 QL1KyYFBIjZIpRo2FZtDqtWmEA2KgLnF8JrvcA4kE4hEIJaXs06qJgj+He29/+qs4RI7HJtG0x2
 fvfg96nJhc1fnCVohflZHs+G5Im8QkWgDfQJPlxpuQtfCN3j6OkhaNGHgKy+CSqBKQThh7WY4cV
 bmF93roVJmAYvpoL+kCATp3B3Mb4fk4nteWN8OChCT1H3eNokyXLtGjGQOUDdWJafs450044R2U
 XA3twRm2afXlL6qET7Ty5aqn5zmcD93/kpihnGiOBp7gkMAJoMPg3+iFdGj/P8Y7LnP8UntAF9M
 4FpXjxU8nbgppDEbkig==
X-Proofpoint-ORIG-GUID: 25FjrhTT-eblMc3Oz74I1rxKqYQcbzEF
X-Proofpoint-GUID: 25FjrhTT-eblMc3Oz74I1rxKqYQcbzEF
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-07-09_01,2026-07-08_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 bulkscore=0 impostorscore=0 suspectscore=0 spamscore=0
 malwarescore=0 phishscore=0 clxscore=1015 priorityscore=1501 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2607090060
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260708_233534_335830_4A2BE93D 
X-CRM114-Status: GOOD (  18.83  )
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

This patch series introduces support for retaining the PCIe link across
bootloader and kernel handoff on Qualcomm platforms, specifically
X1E80100. The goal is to reduce boot time and avoid unnecessary link
reinitialization  when the link is already up.

We are not enabling link retantion support for all the targets, as there
is no guarantee that the bootloader on all targets has initialized the
PCIe link in max supported speed. So we are enabling for hamoa & glymur
target only for now based on the config flag.

If the link is up and has link_retain is set to true in the
ithe driver config data then enable retain logic in the controller.

In phy as we already have skip init logic, the phy patch uses same
assumption that if there is phy no csr and bootloader has done the init
then driver can skip resetting the phy when phy status indicates it is
up.

Problem:-
1) As part of late init calls of clock the framework is disabling all the
unvoted resources by that time and also there is no sync state to keep
them enabled till the probe is completed. Due to dependencies with
regulators and phy, qcom pcie probe is happening after late init which is
causing the resources(clocks) to be off which causes the link to go down.
To avoid this we need to use this kernel command line argument
(clk_ignore_unused) to skip disabling clocks as part of late init for
initial version. Once it is resolved we can avoid those kernel command
line argument.

Signed-off-by: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
---
Changes in v3:
- Updated the max link speed and current link speed logic for link
  retain.
- Fixed l1ss_support & probe deffer fix as pointed by sashiko.
- Link to v2: https://patch.msgid.link/20260521-link_retain-v2-0-08ed448b081c@oss.qualcomm.com

Changes in v2:
- Rebased with latest changes
- GENPD/power domains are not longer getting turned off with the latest
  kernel, only issue is with the clocks.
- Removed the patch [2/5] PCI: dwc: Add support for retaining link during host init
  as we are not seeing much difference with this or without this (Bjorn).
- couple of nits in commit & prints (Mani).
- Remove skip_reset for the long term (Dmitry).
- Link to v1: https://lore.kernel.org/r/20260109-link_retain-v1-0-7e6782230f4b@oss.qualcomm.com

---
Krishna Chaitanya Chundru (4):
      phy: qcom: qmp-pcie: Skip PHY reset if already up
      PCI: qcom: Keep PERST# GPIO state as-is during probe
      PCI: qcom: Add link retention support
      PCI: qcom: enable Link retain logic for Hamoa

 drivers/pci/controller/dwc/pcie-designware.h |  1 +
 drivers/pci/controller/dwc/pcie-qcom.c       | 80 +++++++++++++++++++++++++---
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c     | 31 +++++++----
 3 files changed, 96 insertions(+), 16 deletions(-)
---
base-commit: ce1f20ceb245f81cc147bf4fd570c09f9f720ab2
change-id: 20251001-link_retain-f181307947e4

Best regards,
--  
Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
