Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AC0A9C88E77
	for <linux-phy@archiver.kernel.org>; Wed, 16 Sep 2026 06:04:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=FsquKQKpZjKRlfg8y61F3A+HxEtVVkd+z47uPNKfBrA=; b=VflVl/poHon5d9
	eqM+4TvndyLOQB/7yazoveV+Y+tIPVsi4rsIyTB7paa+xJkMD101YmZDnVpdFq/0FId3/4lyF+c18
	TzbgM/2iYZJ9ijrsKfTVO5/OWBontVQd+7whIdO7Eve2XlEkg7Ebi9QM5nO4rPi8yMJM8nAfbSq/b
	Y77QciWsYvq9Sw/0MFyShB2hJP6Pg7xD6PaphRm5J09k9g2SW7iNavMJh5N7+OAEPbHPO2AXcDK7U
	BflUIhgJURm+P+A5uM7afeSoSdxOhR8rnMRJwIF1RGd6Dmi30JnQjDP4m2+YkpxVD19V7LSKduCPH
	46ESrnoWyvY1k1uV5bTg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x6il2-00000008RmF-0XJ3;
	Wed, 16 Sep 2026 06:04:36 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x6iku-00000008RhH-2kor
	for linux-phy@lists.infradead.org;
	Wed, 16 Sep 2026 06:04:34 +0000
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 68FLYltj1668820
	for <linux-phy@lists.infradead.org>; Wed, 16 Sep 2026 06:04:27 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=i6NubhOqBeR4m4IZ+gOEWa
	U7x0g1qp2eT/RMv5Jw9Y4=; b=UFPzLseeIOAJq+Vja9kHL9KYBg6mDP98pw+Z5L
	FVD3SChuuaVEomK1FoYjLsxZn2qfB+DOjjJPeJx9cB6cKASft7IVjqyWTnWXDay0
	gFzvn3khV+e81OxXp4p0OLRujQLJ/4HgYZa7kF5HKa3jNrTaWzSt8ACq9NA9Uvm1
	udpmV5H+AzJHFx9/7AWc2upWv4K5zvB9XwibfMTLGc7kQ6L0GDQ+8Z42P0wJZf1/
	GVEFdWqe7xhmMZEivKPIVseZZvdqTs9P28J0GFWXtu0U2ZwGKySW1XQ90G3QkXm3
	xWSkEVZX9mMIbq1RGW/xTopm5WcrcElQCnQkCwtsDzYp9fQQ==
Received: from mail-pj1-f72.google.com (mail-pj1-f72.google.com [209.85.216.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4gq6kc47c6-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 16 Sep 2026 06:04:27 +0000 (GMT)
Received: by mail-pj1-f72.google.com with SMTP id 98e67ed59e1d1-39deb05ef51so4085762a91.3
        for <linux-phy@lists.infradead.org>; Tue, 15 Sep 2026 23:04:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1789538667; x=1790143467; darn=lists.infradead.org;
        h=cc:to:content-transfer-encoding:content-type:mime-version
         :message-id:date:subject:from:from:to:cc:subject:date:message-id
         :reply-to:content-type;
        bh=i6NubhOqBeR4m4IZ+gOEWaU7x0g1qp2eT/RMv5Jw9Y4=;
        b=Ky3/sz3oo9vWFwdiV45V/djIlHSGCfXStKt6sloKXbk4HsOIGZdbOLvuo2Ij1Hce1e
         tU1vvOGovKEn+6dYjQj+BxOVVMbqb+2inAqyoKIN6vzFhqyRL2yXMYV9KgXmtHJ9p8D3
         aCV48st4fIZVnOQ6gwGpEyxC5BaHPvs6Ik6rf0fR4JjMeMInINWHmKWwNnarMpA0ConL
         RynNrPRLCvlaJyQvBpzyrggDW9QF1ZNTotHgDiMc5ViGqIKtFHkm3rR9jQ6hBFv8/S7x
         GV2AyOdIAAflPJFBg04HvTYKkBx7zFH3oJ4bphS6DPhfR/Dg7O4uQ05/PjYHJr+QnzOu
         5KiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1789538667; x=1790143467;
        h=cc:to:content-transfer-encoding:content-type:mime-version
         :message-id:date:subject:from:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=i6NubhOqBeR4m4IZ+gOEWaU7x0g1qp2eT/RMv5Jw9Y4=;
        b=G27V8KMYbJiHn4xMfkSDHHjeNbSFo/rLrJa7butenmisTzCdNstJm3zNRbIOZUMPtQ
         +c/1JZTWFgJJcWvv7uel7dgyT0aIyQ9WOw4+mS+Gps2HwN0d3DMZbOAo1VJ7FvuJQxg7
         WUDibNJGnPn42yajWkaLjMn9mLO/1wcCuGtTRzL8hU6YUpf5qCs95FLCMBYxScsnnt5F
         pXVaSry6IXj5SlHWh62iyG/AT0wh1c8bzGivvDfWK6CqOvmLu01Mv7NlWmBjmiOWSzo2
         QT/jfeUvYm/vEIBoAoPwR1dNJhIUUl8NFNthTTvVkyXkMKhA66k11ssYpjPpTdW0hJw6
         C3LQ==
X-Forwarded-Encrypted: i=1; AKwUvBzWyTCuSIMzBmKvx1iTqnU0120QbJKFmfKeTLIQja8aoRvb2/nh8PjSuu/NZqYsmPWu4weNy29iIco=@lists.infradead.org
X-Gm-Message-State: AFuF++lxKSyct25L+gtIFnoM1ZkPfgNgagciH52o4FfxxOtFwDihyJD+
	T01Z6EPX+Ee9szwB4C5K7NwnjMKFnHL7QbkN+0Y8h0Vi5s6VbxkUgONYK86MUtR172HSA98S4hu
	wja0xE3JnHZtOc8PM6l4BkvD9+Np6/PIY8TPDeItfBPsHLwFQ/+pBwFR3IBwoO+4qBbmS
X-Gm-Gg: AYBFou1a7HxIvfPlgUP3S5ETCKAmv7UwT961UYjh5M6D+IFcloq/iqhbZSqdxU9GN02
	Ya2aRKoWvEjgASf7HDgJ7mzuyvTb3Qa1LeFar3lzchwBMR3iI9c8c6y2pV1kYtVDcGZUxNEz8VQ
	EYyWLwjaoadPQ6YRvsLIjAJFKuA/5eXG96BrwYgeU1xnaNn9WRFsxtYeKprAHhXUwUu9rs2c+cP
	JwnWiRenYiMJQINo0a0p5DJjpvsrJ0L/rXxgvXn8bMksR1p+RKoffpX2S17yreJtBjjSVpDjuy/
	h7c7fSIb/lxb8gRrzSUFpA+CgNFqXPu+fe8uiFvx8F5iRNrg4wrCjxtHQDhSP+BryvfnDJB8cxQ
	t24vdx0NwZa23n1VOvMTFtvjtC1kqFoQ8cgFNmMGOfFscmmQ=
X-Received: by 2002:a17:90b:2f0c:b0:39d:f08e:e6e7 with SMTP id 98e67ed59e1d1-39e1e308bddmr3723948a91.9.1789538666618;
        Tue, 15 Sep 2026 23:04:26 -0700 (PDT)
X-Received: by 2002:a17:90b:2f0c:b0:39d:f08e:e6e7 with SMTP id 98e67ed59e1d1-39e1e308bddmr3723876a91.9.1789538666197;
        Tue, 15 Sep 2026 23:04:26 -0700 (PDT)
Received: from hu-qianyu-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-33bfb19f8cesm4740083eec.2.2026.09.15.23.04.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 15 Sep 2026 23:04:25 -0700 (PDT)
From: Qiang Yu <qiang.yu@oss.qualcomm.com>
Subject: [PATCH 0/4] PCI: qcom: Align PHY init sequence with HPG
Date: Tue, 15 Sep 2026 23:04:20 -0700
Message-Id: <20260915-align_pcie_init_sequence_0916-v1-0-0b2195836f30@oss.qualcomm.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAGQxqmoC/yXMUQrCMBBF0a2U+TaQFBKpWxEJafqsIzLWTCtC6
 d4b9fNw4a6kKAylU7NSwZuVn1LhDg3lW5IRhodqam0bbOe8SQ8eJU6ZEVl4jorXAsmItQbjj85
 1NvVIPlB9TAVX/vz+58vfuvR35Pk7pW3bAQe4xpuBAAAA
X-Change-ID: 20260915-align_pcie_init_sequence_0916-571190abea56
To: Manivannan Sadhasivam <mani@kernel.org>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
        Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Philipp Zabel <p.zabel@pengutronix.de>
Cc: linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
        Qiang Yu <qiang.yu@oss.qualcomm.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1789538665; l=2301;
 i=qiang.yu@oss.qualcomm.com; s=20250513; h=from:subject:message-id;
 bh=Q85aXDMwvbpzbdqQZSLnN+pKhKHeKEyGsGA98e+i4Hg=;
 b=VanMV8I3b6x/UKi8Pi0uPylqTjCwhgLHtLLspbcP88b+CZT1gM9u0udCt6lZrEVLqwiiDCt3u
 OIkB+RytzmiAGVjxv/dp8txVevQMPr4OSRhvgqLg1w87iUb4GxONhWv
X-Developer-Key: i=qiang.yu@oss.qualcomm.com; a=ed25519;
 pk=Rr94t+fykoieF1ngg/bXxEfr5KoQxeXPtYxM8fBQTAI=
X-Proofpoint-Spam-Info: AW1haW4tMjYwOTE2MDA3NiBTYWx0ZWRfX+GwesCPR321B
 RtjDjLRL8Ju/HxEA6f8WX3zgKlmu8rcng55CnVuX8eTn4pCHFnIxGd/wXHb27sGih9/aT08bNfl
 VUqQSM2e04MBwJzyH0EIwqIaIdkZQEY=
X-Proofpoint-GUID: lRcMeheuJuo0yafQEylbAzKsoID3wL9J
X-Authority-Analysis: v=2.4 cv=ZINCCn7b c=1 sm=1 tr=0 ts=6aaa316b cx=c_pps
 a=RP+M6JBNLl+fLTcSJhASfg==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=VdqzKS8jKosA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=Um2Pa8k9VHT-vaBCBUpS:22
 a=EUspDBNiAAAA:8 a=Riq-LXKwlQ56QxmQOhoA:9 a=QEXdDO2ut3YA:10
 a=iS9zxrgQBfv6-_F4QbHw:22
X-Proofpoint-ORIG-GUID: lRcMeheuJuo0yafQEylbAzKsoID3wL9J
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwOTE2MDA3NiBTYWx0ZWRfX6VSe+JNkk344
 70XVJtNEZSVhhm6SIlyTksCB0Jgs2XNHwtuPZqPqkriTHv4/RC7CsYI+frqD0FY7vqwCUKnyfCl
 MmP4SHmri1syZoaszkM6ZtG6t5+otgH711+eXMs6aArgSy+HPbedR9hsKcPSQcdzM4dHv1xj4VE
 XwgoMqxFuSaIRfGqNrubpT2aTtTFGzqiIQmkh7MFMwdiD40eqJxsO5+Fe2zkJjdUPK9KXXMWTVM
 c1XxnQD4P6OYnkb49bIJHEF1f/36oPQxPlBu6nBBXHZ7SszgWh1c6ayhyueg2SPYMu34JPlj1MA
 eTVNCOb1qzysgJCPaPhjxzn/xqPRCjLknw9N9uoPaeDPppg5lUupWtf3qW/cT3nvFEHdpAHZ2Ro
 vUvBuj9L94n7C93LeY+KNXeguWGDR+SQpQv72+UWE9oLO35CBFFH/DpXtRpVsShHow282gMyedY
 QH/6SpVt3Dxk1KSYeMQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-09-15_05,2026-09-15_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 spamscore=0 clxscore=1015 lowpriorityscore=0 impostorscore=0
 adultscore=0 bulkscore=0 phishscore=0 priorityscore=1501 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2609040000 definitions=main-2609160076
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260915_230428_872221_C39E9B0E 
X-CRM114-Status: GOOD (  12.57  )
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

HPG requires the controller/PHY GDSCs to be powered up and all
clocks enabled, then the controller's reset and the PHY's reset
toggled together as one group, with PARF_DEVICE_TYPE set right
after. This series adds the callbacks needed on both sides to
realize that sequence: a phy_reset() call the controller makes as
part of its own reset, and matching phy_ops::init/phy_ops::reset on
the PHY side.

Patches 1-2 move phy_init()/phy_exit() into the RC and EP
controllers' own init/deinit paths, add a phy_reset() call grouped
with each controller's own reset, and move the PARF_DEVICE_TYPE
write to right after that reset group.

Patches 3-4 update the two PHY drivers these controllers can use
(phy-qcom-qmp-pcie[-multiphy].c) to implement phy_ops::init/reset,
matching phy_ops::power_on to what's left once
phy_ops::init/phy_ops::reset are pulled out.

phy_init()/phy_reset() are no-ops against a phy_ops without
phy_ops::init/phy_ops::reset, so patches 1-2 don't change behavior
on any platform by themselves; patches 3-4 are what actually change
the sequence for the platforms using those two PHY drivers. Other
PHY drivers this series doesn't touch (phy-qcom-qmp-pcie-msm8996.c,
phy-qcom-uniphy-pcie-28lp.c, phy-qcom-pcie2.c) are either unaffected
(no phy_ops::init/phy_ops::reset) or only see their
phy_init()/phy_exit() call site moved without a sequence change.

Signed-off-by: Qiang Yu <qiang.yu@oss.qualcomm.com>
---
Qiang Yu (4):
      PCI: qcom: Move PHY init and add PHY reset call to align with HPG
      PCI: qcom-ep: Move PHY init and drive PHY reset to align with HPG
      phy: qcom-qmp-pcie-multiphy: Split phy_ops into init/exit/reset/power_on
      phy: qcom-qmp-pcie: Split phy_ops into init/exit/reset/power_on

 drivers/pci/controller/dwc/pcie-qcom-ep.c         |  26 +--
 drivers/pci/controller/dwc/pcie-qcom.c            | 165 ++++++++++++++-----
 drivers/phy/qualcomm/phy-qcom-qmp-pcie-multiphy.c |  94 ++++-------
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c          | 184 ++++++++++------------
 4 files changed, 257 insertions(+), 212 deletions(-)
---
base-commit: e6e35979777d646fe3c7c94dca7dd32fb25d45f4
change-id: 20260915-align_pcie_init_sequence_0916-571190abea56

Best regards,
--  
Qiang Yu <qiang.yu@oss.qualcomm.com>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
