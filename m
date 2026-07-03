Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0E721C43458
	for <linux-phy@archiver.kernel.org>; Fri,  3 Jul 2026 12:08:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=P2w4dfOoM1vG01lhcHBhTIbVe9Gr6Y7iDlpHit7X4u4=; b=jauTXVUUutl+nE
	bRr5R7dbKUpEgFY87cO4dUIico0R5EyIecHmb8Pbk9o5h3zbDpqJqYWkF4S4BPozlOQDPFchFSB5I
	KoJoBHEIq4Ru2s+DxjeuYPdrGM4G01qquFMeMplCMTZPxINFXUDcZpDjkRBWD5VF29m4k0NwAJ661
	X/rQJcqEnAWG3u61qQl93RmZn1R5ch66DhOr/aaGpB9pht9xSR1DRmHwN1FKUc5Vyl0MT+u4LjqkW
	4PByMB68/SPF2vVwACpb6oMNpzIspUgz6+N2sS9uu4S7osKkY4gMbsIxG+/vHWhoXwDN2H1X2vK8p
	5aARcoJSd4UwA19r2T+g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wfchS-00000006u7H-2cGp;
	Fri, 03 Jul 2026 12:08:54 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wfchQ-00000006u65-0P4W
	for linux-phy@lists.infradead.org;
	Fri, 03 Jul 2026 12:08:53 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 663BqhWH4091029
	for <linux-phy@lists.infradead.org>; Fri, 3 Jul 2026 12:08:50 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=bgimtSI4aro2GhawYEE98j
	B/geFpQ8EBMgBfF8FzehE=; b=lqrSXaoX1UEei3eG8FEcJ7G2MaTbKPG6Wikb9T
	WuyIhFEerATSshhir549oADX71e1RXjE7X/HYb9Fz3flTfb5dSriEze7rYj2DXxT
	CBnGKYArmTIrNyMR9AEhLKhRpjZXf+tiDqpSbZpjEWxGAuEhh3ie/zUqxwSfbwoo
	iLZKE/chhvMwvbagxYtnpHJPPSofEVXbmCbK2lF3geEkhnp18O/kWGTCpbGViajW
	LPquW0SF+8rskfeXySfvQFNvpoICOjw9gD87noBDKZSA4moazue6StXXxpXnN/6k
	qoMimt/m7/YaV4j7P3dbKJw/8Y7qbyRGpBzkX5vJd4ctLYZw==
Received: from mail-pg1-f198.google.com (mail-pg1-f198.google.com [209.85.215.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4f6ckj02bt-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 03 Jul 2026 12:08:50 +0000 (GMT)
Received: by mail-pg1-f198.google.com with SMTP id 41be03b00d2f7-c856470fe9fso529113a12.2
        for <linux-phy@lists.infradead.org>; Fri, 03 Jul 2026 05:08:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1783080529; x=1783685329; darn=lists.infradead.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=bgimtSI4aro2GhawYEE98jB/geFpQ8EBMgBfF8FzehE=;
        b=kFcoy4jv3r84jvN4SWRvzpdXensdMY1Kfi47d+fxGTvVn5GkNrY+nGMWtQSADggNOo
         BQ5t7wxLR35lWUzwUmJYm2gJw640F8XGn3lZ7Ucn0bYz9mJuKoDJcBym89JqFIgFB7zd
         xN7ZG/5c6MlIOfHkOsmOy9tOwjMXL/Nvg7+MK/zEQejP5LAeSK2kivJeXEFHn5TWSm2D
         UZQXQ/Mrmo4R0KfJ5tUDE6fDL5zhWNrmCIQKX2twMHR8gcH3cjt/HOanbqCbu8BXX6zH
         JdW6tojbPT0R9molZ1r28HZqLyFm2iOCL+ftCy395YVZPtoXypASVCS9BWpKVl6KYGfg
         yYig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783080529; x=1783685329;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=bgimtSI4aro2GhawYEE98jB/geFpQ8EBMgBfF8FzehE=;
        b=DwArzhzHhddTH8p1jWmp32wOkca53XXFokDiLmmtwQzTGUc0CXkpq4YhcptvW2R6yN
         aCq3C7mkzTdb/m61ra6ey6HRjyKWAtX8WDkWz4SvJvce/MF0ZAYAPg4nwb5f1iCK7qJd
         DV/lN823HvSBttLXzsiTzBx5ucmHyhPqqQcG2cuHRSu9xYsz3NqpSd9Um5/kM0nkno0T
         KAmr4QN+/OcmmGVxjvqfpNBokvVoTO7cKuzwWAKN1Nnr7d1jTQZhEaYu/cXUPMveRjeu
         eJ7AkNNNgxRoHJjDZV0jy7FIlD25YJmiiuI/SxPnvTIadAeKhGT/ZYCiIgUSA1J09idp
         mUmg==
X-Forwarded-Encrypted: i=1; AFNElJ/WlPxBNRvwwKubVK+j5hR9KIjrj/jKYfkwVOsjbZlcFmt8ticUL6p3FsEH0t+gY4ahaCipXZhQPKw=@lists.infradead.org
X-Gm-Message-State: AOJu0YwwdVLsBRRWsfOr+L0QgOmjp1FKLXR5u3WLCBdrsQsTz5YfRQaB
	nWyzizfs7u268dhrMbfgGxJPtBza6HyTrJIi7FxuYJ5hXkdtk529NaWgm1Oct6jxvE8gY0Xgp5H
	b/ncLuZGn6YIpoGtnK/MROWj0Bq7dwTwLLcA+7MZY8BC/8VIqWHcGl49F0cIKtXZBQWDE
X-Gm-Gg: AfdE7cmccrHRO77/F8+b/DKPcw5mxdXxXdOhml2kD828JIfijato0uovwt//BQKukIG
	rAoXaV62wZ4MsCRSZ25mwYNV1IZQANSXRrRtXHybwPsNqgGQ4lt/y6zb10FStop2yU0SkOb/jsE
	H2TFV4kfHKC1C8S/nHz7QrJpqJuqu3thFAEC8Qgi/3/3CPlESPBHX6utZIMpfNsM4osC9PpLSsm
	I0xItoZkAOoZjbjowH7dP73/Yy4UF6xH0Ffk59z03bAsvoC8eDghp6BVVmxey7efUtKWUdxHlYF
	9JCpebl+Qok+BmXwAPXla1+2I+n4UI+p9ryGhP5n6hfcbcLiHcfZxozBon446x6NXKmRWUtHHY6
	ZItehKGAqIVPS974jvtaz2w2zlDV0nB93rTjK3L2+Sq2OQFTo
X-Received: by 2002:a05:6a20:2445:b0:3bf:a489:1483 with SMTP id adf61e73a8af0-3bff4255df7mr11649242637.33.1783080529193;
        Fri, 03 Jul 2026 05:08:49 -0700 (PDT)
X-Received: by 2002:a05:6a20:2445:b0:3bf:a489:1483 with SMTP id adf61e73a8af0-3bff4255df7mr11649190637.33.1783080528550;
        Fri, 03 Jul 2026 05:08:48 -0700 (PDT)
Received: from hu-vpernami-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-c9e8eb10638sm2530779a12.2.2026.07.03.05.08.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 03 Jul 2026 05:08:48 -0700 (PDT)
From: Vivek Pernamitta <vivek.pernamitta@oss.qualcomm.com>
Subject: [PATCH 0/2] dt-bindings: pci: qcom,hawi-pcie: Add Maili PCIe
 compatibles
Date: Fri, 03 Jul 2026 17:38:39 +0530
Message-Id: <20260703-vdev_maili_dt_bindings-v1-0-c9df0916cd5e@oss.qualcomm.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAEemR2oC/4WOywqDMBBFf0WybmSMWh+r/kcRSXSsAz5qommL+
 O+NdVG66mbg3Msc7soMakLDcm9lGi0ZGgcHwcljVSuHG3KqHTMB4gwJCG5rtGUvqaOynktFQ03
 DzfAUEJIQmjTMgLnnu8aGnh/xtThY47Q4/3yEX33u/cpb+aDyaA0XSVzFWZOAalRuA7a7WjLzq
 F+fzS7aZf/m2YADB4hSmUYKVSwuozH+tMiuGvved4cV27a9ARxJl7sPAQAA
X-Change-ID: 20260702-vdev_maili_dt_bindings-80e0730f8390
To: Lorenzo Pieralisi <lpieralisi@kernel.org>,
        =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Bjorn Helgaas <bhelgaas@google.com>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-phy@lists.infradead.org,
        Vivek Pernamitta <vivek.pernamitta@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1783080523; l=1468;
 i=vivek.pernamitta@oss.qualcomm.com; s=20241114; h=from:subject:message-id;
 bh=BUnkY/0PhRAAb4fytqk7lD65By8W889aQEAnDJ7aUVE=;
 b=IIvPLEPo3ILp9Ml/IKyB60FD/DR1nBHlasElwM1yCiueOsNQb+FaXoYLj0BA8j5VrgH1TnA1P
 nRIggsUh3VGAp7smc+TYGlcTGklmUuwDq1XxSbXaEbmsXjLqaV0aShA
X-Developer-Key: i=vivek.pernamitta@oss.qualcomm.com; a=ed25519;
 pk=HDwn8xReb8K52LA6/CJc6S9Zik8gDCZ5LO4Cypff71Y=
X-Proofpoint-Spam-Info: AW1haW4tMjYwNzAzMDExOCBTYWx0ZWRfX1IsOycYWJe6b
 FD7xD/HCtGS3Fz5B9lgicV62uNikXdKkEt4QBPI3jNVGaPCZHSmq+3mP69PuL8nmh80rvcho0pG
 h+0gF5BYY7QQKjN2uS6/d/AAqC1tQCc=
X-Authority-Analysis: v=2.4 cv=E8v9Y6dl c=1 sm=1 tr=0 ts=6a47a652 cx=c_pps
 a=Qgeoaf8Lrialg5Z894R3/Q==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=RAioF0-LDSMA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=3WHJM1ZQz_JShphwDgj5:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=suQaG4udzKv4wnHqcH8A:9 a=QEXdDO2ut3YA:10
 a=x9snwWr2DeNwDh03kgHS:22
X-Proofpoint-ORIG-GUID: KovDwTSx6u-7NCMrCux9uPEgC9q53K0F
X-Proofpoint-GUID: KovDwTSx6u-7NCMrCux9uPEgC9q53K0F
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzAzMDExOCBTYWx0ZWRfXzXzvZs/G1FjQ
 KW8CGpA42/TpT5KXI32CkSLgkj5wcKOB2ih+7VsjkIZYI73w5i3M2SopEcsp8aHSacrCYNG5cij
 CpvdfTFZtgmUqYK52pGA9ut98uEchQwumlsS+obcWntfHoeTFLDO7bToHSZ+DJAgHd1O207znqq
 R7DS+jC3yGBmimh/FB2WX3aEOS9oUhdVbcgNBADr1q2VLgKdSno2xpo4iqfOQBCJgwfP+UeH06Y
 SKWcRW53xW2QObgdbm+lJA/AWCYz1xshfFQ7e0TZiW+1TiKuvekT5qpO124TOGJQy9qL1qyGOKj
 Lf9XfQrs090wRWK10IkvgRD/QA+dqgIAznlVUL4bgbRBFG/Kf52bpeD1ryRlorZpvVzds3eED13
 b47jrb1l3KY2OKOPmkhNI2Oe5oaVJj+yDHdgjQ141IZpyj+1dQZMjJxfMYkksTcYW2iAbQtU+SG
 pQcpU89ixjmbuaVNSHQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-07-03_02,2026-06-26_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 phishscore=0 spamscore=0 clxscore=1011 lowpriorityscore=0
 priorityscore=1501 suspectscore=0 adultscore=0 malwarescore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2607030118
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260703_050852_255107_84C9E379 
X-CRM114-Status: GOOD (  10.37  )
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

Add the qcom,maili-pcie compatible string and make it fall back to
qcom,hawi-pcie, as the Maili SoC reuses the Hawi PCIe controller IP.

Also add the qcom,maili-qmp-gen3x2-pcie-phy and
qcom,maili-qmp-gen4x1-pcie-phy compatible strings for the PCIe QMP PHYs
used on the Maili SoC.

The Maili SoC is a derivative of Hawi and shares the same PCIe
controller and PHY architecture, allowing reuse of the existing Hawi
PCIe DT bindings.

Dependencies:
- PCI: qcom: Add PCIe support for upcoming Hawi SoC
  https://lore.kernel.org/all/20260625-hawi-pcie-v4-0-1a578603cd86@oss.qualcomm.com/

- phy: qcom: qmp-pcie: Add PCIe PHY support for Hawi
  https://lore.kernel.org/all/20260618-hawi-phy-pcie-v3-0-3fa42ca45ea4@oss.qualcomm.com/

Signed-off-by: Vivek Pernamitta <vivek.pernamitta@oss.qualcomm.com>
---
Vivek Pernamitta (2):
      dt-bindings: pci: qcom,hawi-pcie: Add Maili PCIe compatible
      dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy: Add Maili PCIe PHY compatibles

 Documentation/devicetree/bindings/pci/qcom,hawi-pcie.yaml          | 7 ++++++-
 .../devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml        | 6 ++++++
 2 files changed, 12 insertions(+), 1 deletion(-)
---
base-commit: ac5f929f2f373245abe6fac242c8d3fec4ca38af
change-id: 20260702-vdev_maili_dt_bindings-80e0730f8390
prerequisite-change-id: 20260702-vdev_hawi_changes-275c59f70bfb:v1

Best regards,
-- 
Vivek Pernamitta <vivek.pernamitta@oss.qualcomm.com>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
