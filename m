Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 11A70CD342F
	for <linux-phy@archiver.kernel.org>; Fri,  8 May 2026 23:31:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=PhnOubrD4+bRg4DRN+4/813w3/lL3n74AXTxDHQfLw4=; b=LWYlYRNlJ+D0Ni
	SySYwBfHdr7lP2/NUdxpP1wOmlw+DLD715S3mnsZhugHjLZWLVzMzRPbFYoB6t8tP7d3fV517+GNi
	SPnu45COOkcZxl3cfV1P/okfU/eoEavSzMWZZcAF2AFPes6b9OR5Y8OneTL0957wrmiYbC51lguhs
	zDS8RzjpetjXO+usCwRsqXuaEdCISOFr01nPh4KS21N9bWNKU4NBjuVc9YxxQGb/c60QYUXGIzZPR
	hbdiGXeuJ1xamEEfrwqwsw9Ku4cSP+zliWRms67JHmN0LTHf3RS3xAwSrh99nUwu84aq7DB0FEPAK
	OZneeQ5/hmfbWcaiRp5g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wLUfI-00000007kvx-31x9;
	Fri, 08 May 2026 23:31:28 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wLUfF-00000007kuR-2W00
	for linux-phy@lists.infradead.org;
	Fri, 08 May 2026 23:31:27 +0000
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 648GTeDC145180
	for <linux-phy@lists.infradead.org>; Fri, 8 May 2026 23:31:24 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=4t92/qX9kUehyfMH3mnM36
	DEtVPBgU9oqlpwHP9gFjs=; b=MgO4mjZpb9vTRGQpEIzHi1/5l83GFRdVDU4IKJ
	hd4AjQZVKpvd0bEOUbD63Gej0nUspthiQglmKa1tD/4KQ160uDXBqi5/CbC4H67e
	i/WfntjqvlES1kQ60CykUDr6buYwSHm5zE61RHkeg2b4E7cx9MogoNoMk2BwneK9
	ydMWAOeymQz9RY3P1WITD5NJkNSJ4SjaUt47zZ+nEEuzMSJDg9dOr1YsFvSBtkNg
	2dGzD2rHBqXGgjH7Ts5dFMwzg0uQEa794QOYnGdL77CHHMlEYeFIqoz1KtvlcEsZ
	ArnL57uVJojkQgFLzqSyPJHbxscaNdi0SbvEBzSUJ0SJOPdw==
Received: from mail-dy1-f197.google.com (mail-dy1-f197.google.com [74.125.82.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4e1kdc16pd-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 08 May 2026 23:31:24 +0000 (GMT)
Received: by mail-dy1-f197.google.com with SMTP id 5a478bee46e88-2ee34588671so3728636eec.0
        for <linux-phy@lists.infradead.org>; Fri, 08 May 2026 16:31:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1778283084; x=1778887884; darn=lists.infradead.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=4t92/qX9kUehyfMH3mnM36DEtVPBgU9oqlpwHP9gFjs=;
        b=Jfjps/fXQb07zxO1HxZRUEVfwVbSb7vfF9jvHHun8hifRrrnsNlXrMY3QDvi1d+K89
         uQGZDk5N70ZVmCnmBZziYF1mhLP3jOkv6Dvw/Qm4nlkX+pgLPq1jkdxE0dvi2mTNwQV0
         PHerwxc9VX5MZ3+xGSHrc0NUXYuquub4KCR6Lgh4n2HoTGpgyN8YZ7J3v7nFnQSNrcgq
         qzpWKWXhsX6vPd/pJh4VmPIVqnxYakIPP4IZ0JU3knNhsluqjjUbpUR7H7iu5UtOaUta
         Naxob4+q5S2XtreNJMoH+K+jONS4OMtmBC2u5FQrbSwRA/eGgpu/GqyzG0+T1ItJyZ+D
         LbbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1778283084; x=1778887884;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4t92/qX9kUehyfMH3mnM36DEtVPBgU9oqlpwHP9gFjs=;
        b=sSHPhubEENtYnzhGsgN6u00DCRR3G5Z2DWL5nt66IOJt2yZyGXfUHwvKBYdu6y94Td
         FhJvz0ecC7MTRzAoFkdJe92dkp7vYydIgc7dIn+h9LUibk6Ic8u/q4hEmqB6HuImU+21
         s79qg3pbiK6tVUrJi+hNhwokxeD210PCbZ0dahBJCgnzOJ0Tw4XPc5zm7AgA2tnWkY76
         UmwwCunfYh9nk46hLP2NSVGJ0m6m88PiFLx8En1mp3JUuk/nhSf20FeZnq+LkjMMpeT1
         I4F/wKuXgU/T20BBkz20OavoRLVA/efdGW8VZVSH/m72RRFG5e4UBuoavukId+2V5hLl
         +AdA==
X-Forwarded-Encrypted: i=1; AFNElJ+rofNAQWfWGPwi6/vlqf1X2FrmfCmDknmUiz1GqHB54CY4GAbJuykVDkxJ7aqkl8YpMaP62lpSePI=@lists.infradead.org
X-Gm-Message-State: AOJu0Yz/G0XUFKhzSTEDAn81IjXRZT0Ok8kpTy5+M2Y4FFh7XGACxHwg
	WkzmFrqozJVLU1P87M6+3IEP3grlDbflXlNPaNoX6UMpWdJyLVGOyTscIybyUk1eeoUkS4IRJSv
	A2MuyvANydDIqdociuCDExP3LMR11CGBNtRsdh7P9jqKzuCb/OtaKbnxaG6IdMcS4fHLy
X-Gm-Gg: Acq92OHZjzESNb+hM5Xsr6pNU2xbOwqcGT1QOnwyoXHB75lX69qCRlVbmElv9ZOm+td
	il88PLz3YKN9REF2+NGotL/Yg3PKkBMHMewJ3ZPGhHOtt57YWqHQXuUMFCIg3lM5lasYfxCG40s
	sLNl+tRIgLg5uWatuz9erU/hGyHz83IXk/zE8Er3y6rAs3P6G2HAjNpb6MXvXlzO+Bsp2wesSLX
	J5ABheq29DSBPFmytiO6x2/d1RpQfzBzF3vN1ioMb9e3sO9GVbzdLoAt08KDRPkQG+BC+nDppfl
	CzQ1k+molOrz3X6SwRrcgTSh6zPGlY30IVB8lIBQV5Aq/rs7hALeeGS2bp+Omw76kB9MF0syf7b
	C2lNaloqcZN62x7GUL19CrWli+V8d9IN/56UECRG8atuDXjjE/9mMRRTPSXc=
X-Received: by 2002:a05:7301:3f07:b0:2ed:e14:42e9 with SMTP id 5a478bee46e88-2f54b57793bmr7581897eec.34.1778283083898;
        Fri, 08 May 2026 16:31:23 -0700 (PDT)
X-Received: by 2002:a05:7301:3f07:b0:2ed:e14:42e9 with SMTP id 5a478bee46e88-2f54b57793bmr7581871eec.34.1778283083309;
        Fri, 08 May 2026 16:31:23 -0700 (PDT)
Received: from [169.254.0.3] (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2f88885b87dsm5033122eec.21.2026.05.08.16.31.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 08 May 2026 16:31:22 -0700 (PDT)
From: Matthew Leung <matthew.leung@oss.qualcomm.com>
Subject: [PATCH 00/10] phy: qcom: qmp-pcie: Add PCIe PHY support for Hawi
Date: Fri, 08 May 2026 23:31:15 +0000
Message-Id: <20260508-hawi-phy-pcie-v1-0-237b894353fc@oss.qualcomm.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAERy/mkC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDIzMDUwMz3YzE8kzdgoxK3YLkzFRdIwtjS2PjJBNDQ+NUJaCegqLUtMwKsHn
 RsRB+cWlSVmpyCcgQpdpaAOIItllxAAAA
X-Change-ID: 20260506-hawi-phy-pcie-283933b4113e
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Matthew Leung <matthew.leung@oss.qualcomm.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1778283082; l=2557;
 i=matthew.leung@oss.qualcomm.com; s=20260428; h=from:subject:message-id;
 bh=FpOZVILuZdKgJAFxsw9h/rPIUNFgYb8dRtvt8QqP9Z0=;
 b=zISOr8IB5ta3VgjDqkWMsbaZncXLlgITdeAIOxr1F6HLT9iX94noIF3XhYRlttW32yw5rlE5m
 DAb3mVjQeKfCTa88BX+irQNytlAtLaNU8tzuew6K2KAtfaQ+l/vmAye
X-Developer-Key: i=matthew.leung@oss.qualcomm.com; a=ed25519;
 pk=aT25ggJo5PMHLN9N+TsZ3s/BVU++kEYuiFebPWe21+o=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNTA4MDIzMiBTYWx0ZWRfX3Bla8dpie+Mt
 Sj5a9uw+sX8jwJ5jYCb49b/np8SvwtmTbPhD9dUXQ5RmEcH5GtJGXd3iH/u0h+ydmLJElfSoice
 e/YrGn0qN13Iq5DTSWI0jBoeReDU5Ug+CyKl2rayhZlYpUqJFYORFCUFXxPuRbSw0PRfzG3fgSx
 4S1gOnJ0yZGty5IQKBJ4Yr2YgFYuRDs5ESlFf704U4V7afvTXPwZ0OyD9OSZ5d28YEFkBDKsDdn
 N9J8pq/26wj8/htRyWG1h0rlFmi4+rsX4C56lNwi/pywnt1y/39UM5DK4qe06ORziAvdzEu7q4X
 fy3AWY/AKwjEMKiYcnTkC0U6agyGgQ57JtFo/v2VojcjsMKYYBoorbMeR1TuFs3tK/gPCI5leng
 qPbeXj4inAZiPxOjP+BEG8Jt7WeB97I1UOemjctFskNeh5Rr6KBeKHs2rUD9lpFt7XxJoocog8p
 FUvUvkUYLHD3pxPyE7A==
X-Authority-Analysis: v=2.4 cv=RZOgzVtv c=1 sm=1 tr=0 ts=69fe724c cx=c_pps
 a=Uww141gWH0fZj/3QKPojxA==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=NGcC8JguVDcA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=YMgV9FUhrdKAYTUUvYB2:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=SUFyVy6k7XmgMTdL_LUA:9 a=QEXdDO2ut3YA:10
 a=PxkB5W3o20Ba91AHUih5:22
X-Proofpoint-GUID: 2XurBl-04zGvPSP6UDhYjY0qkeJ6M-pv
X-Proofpoint-ORIG-GUID: 2XurBl-04zGvPSP6UDhYjY0qkeJ6M-pv
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-05-07_02,2026-05-08_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1011 bulkscore=0 suspectscore=0 impostorscore=0 malwarescore=0
 adultscore=0 phishscore=0 spamscore=0 priorityscore=1501 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2604200000 definitions=main-2605080232
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260508_163125_650572_2E6D56ED 
X-CRM114-Status: UNSURE (   9.82  )
X-CRM114-Notice: Please train this message.
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

This series adds QMP PCIe PHY support for the Qualcomm Hawi SoC. The Hawi
platform features two PCIe PHY configurations: Gen3 x2 and Gen4 x1.

The Gen3 x2 PHY uses v10 register definitions, while the Gen4 x1 PHY uses
v10.60 register definitions.

The series adds:
- device tree bindings (patch 1)
- v10 register offset headers (patches 2-5)
- v10.60 register offset headers (patches 6-9)
- driver support with PHY initialization tables for both configurations
  (patch 10)

Overlap:
The series has overlap with "phy: qcom: Introduce USB support for Hawi"
by Ronak Raheja (see link [1]). Both patch series introduce a subset of
v10 registers (this series for PCIe and Ronak's for USB). I have
coordinated with Ronak regarding the overlap, and we can update the
series to resolve any overlap based on the order of merging.

Link: https://lore.kernel.org/all/20260508213234.4643-1-ronak.raheja@oss.qualcomm.com/ [1]

Signed-off-by: Matthew Leung <matthew.leung@oss.qualcomm.com>
---
Matthew Leung (10):
      dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy: Add Hawi compatibles
      phy: qcom-qmp: qserdes-com: Add v10 register offsets
      phy: qcom-qmp: qserdes-txrx: Add v10 register offsets
      phy: qcom-qmp: pcs: Add v10 register offsets
      phy: qcom-qmp: pcs-pcie: Add v10 register offsets
      phy: qcom-qmp: qserdes-com: Add v10.60 register offsets
      phy: qcom-qmp: qserdes-txrx: Add v10.60 register offsets
      phy: qcom-qmp: pcs: Add v10.60 register offsets
      phy: qcom-qmp: pcs-pcie: Add v10.60 register offsets
      phy: qcom: qmp-pcie: Add QMP PCIe PHY support for Hawi

 .../bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml   |   6 +
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c           | 382 +++++++++++++++++++++
 drivers/phy/qualcomm/phy-qcom-qmp-pcs-pcie-v10.h   |  18 +
 .../phy/qualcomm/phy-qcom-qmp-pcs-pcie-v10_60.h    |  26 ++
 drivers/phy/qualcomm/phy-qcom-qmp-pcs-v10.h        |  22 ++
 drivers/phy/qualcomm/phy-qcom-qmp-pcs-v10_60.h     |  23 ++
 .../phy/qualcomm/phy-qcom-qmp-qserdes-com-v10.h    |  49 +++
 .../phy/qualcomm/phy-qcom-qmp-qserdes-com-v10_60.h |  55 +++
 .../phy/qualcomm/phy-qcom-qmp-qserdes-txrx-v10.h   |  47 +++
 .../qualcomm/phy-qcom-qmp-qserdes-txrx-v10_60.h    | 109 ++++++
 drivers/phy/qualcomm/phy-qcom-qmp.h                |  10 +
 11 files changed, 747 insertions(+)
---
base-commit: 17c7841d09ee7d33557fd075562d9289b6018c90
change-id: 20260506-hawi-phy-pcie-283933b4113e

Best regards,
--  
Matthew Leung <matthew.leung@oss.qualcomm.com>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
