Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6370BCDB479
	for <linux-phy@archiver.kernel.org>; Tue, 23 Jun 2026 13:05:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=qkRRCUMBpsjnd0SNLkXs8IDmetOnO2rs8wnnVaELnr4=; b=ZiXi58lMGipqaw
	S3wKJwpuxr4kXd2M+aeS8wJWHHIc3ZuQokn19Z5JFINZzfOoljNrhIJFS2/I6NrDQpK+6XcNCkNHc
	WI0wtCH2Gl89VBXlJ5H0KxpZQhwO+FBhbvBOAVtU+9sWAbk2oqDD9lJneAK7WjYKZ/qKs+ojCs409
	GJRPEjvzJAL6vmsFZnJzpyRrrYLBc9z+n5y8M/gvrMDzVGHht9V4AJ1e6NS68bftihzoNx6HwkVdf
	5PR1FLBbAdQCAB90NbIdEW4AIa17VWvQKUar6nVTgfXX0ky/XSySOUXixqRnxGJIlnz/UrJ+CmyQX
	eQqhJqLRXdwURlNeg8Zw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wc0om-00000006JV7-46WC;
	Tue, 23 Jun 2026 13:05:33 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wc0ok-00000006JUA-15Nv
	for linux-phy@lists.infradead.org;
	Tue, 23 Jun 2026 13:05:31 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 65NBXgtK3753484
	for <linux-phy@lists.infradead.org>; Tue, 23 Jun 2026 13:05:29 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=DBViIKy9a0R4hZeNWh4F6w
	nIWTV470k0mjBWwWHsFME=; b=K0BKUTsmpy28hk2Qzau1vQI7o8Mcuf/p3GgwSH
	pCfqpmgchKHQkZlwIgGwt45IAh5sbhYVQ6ZSlOq44JSLh+vr/6ALYilouqhmDAgA
	JKW0+M8YEvezh1mgNiQpndX7xRd5luG8XZF/brK7bEfHdPhJTSRQtOuMKUdlX34a
	MyelkYYklMu9E6ls8fc1pzPxRpzom3ScPJMOVDI3gJVpobP2rVRkEjuXvqPyhIiw
	08El/MBU0STh7GpSb/NnP1bf8HnC/rE/tlHAXP2ukv9kuEWFszoBYRUA6fDAGB9f
	4BP+jnShavyU8EuE/GESU6oWUHhoJRtSzYAI10SbJerwYKJw==
Received: from mail-yw1-f199.google.com (mail-yw1-f199.google.com [209.85.128.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4eyp29h86j-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 23 Jun 2026 13:05:28 +0000 (GMT)
Received: by mail-yw1-f199.google.com with SMTP id 00721157ae682-7e9bb6a26d6so74855467b3.1
        for <linux-phy@lists.infradead.org>; Tue, 23 Jun 2026 06:05:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1782219928; x=1782824728; darn=lists.infradead.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=DBViIKy9a0R4hZeNWh4F6wnIWTV470k0mjBWwWHsFME=;
        b=KK9tuKFyUwz+QXkDJQY1/3VlnmezePf80dcdUPcIuWafdJ6YixZ7HvYMJ8rp3xf7qR
         Mw8IzJaXHy89pylpY9Vn+IdtzQHBUaUR7+v6I402dMyoY+/gpMrKA7ceEdi7w4J4xYkW
         ZXJUEV+owuPKNPTsTi4fTfrT9Qe+bgmXlocWudTvfEDl0K5ILgfh48SExtDpNhpnq0+f
         uvHjUnZJEvVjZTRNjlmWeCwxQOBuHkltvDiUsEflf4X99pnRmgMwac8Z51YcZxG6W+r0
         GrFQG8x4iWkJfe3BVuY28f7ZYywVaFaVsqbVQynMWe1ApnYReJds/mDP9bFda3nWFrE3
         3UtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782219928; x=1782824728;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=DBViIKy9a0R4hZeNWh4F6wnIWTV470k0mjBWwWHsFME=;
        b=FfvuPvtTpkHO3mQApE7oTp22ijPKLPHzY27dyrapW44CMk4Hv3gYohZYMlznzrzIdb
         1p+hugowiOEsEMeY+UKktcBGf79PYMvZ9RfHICtUTs3NJm5ERYVLdbj144Mtbup3Nb/G
         jefuPBCMHhPo7HX1mpGtKF5YsyemjpNmedEoQsPjjBrKyqkdXV3hLr9dWTW7AxbnzRAV
         IUogklpbpwTQINiusGya93/XpJ6KC59U1cHU7AqwSzFjVZV49otpinoLLnDIZZp6uahM
         v4mxV66CyiZ8PTrRmNZ62HWmxQME2cChgptZdyQf3lCKHpT+aTU5NlHlzukl5J4Uktgl
         m+8w==
X-Forwarded-Encrypted: i=1; AHgh+RpnEhYKztopgoYeaOAq+V/xySyg7aaqoNA9Om1tMcA2MZ3/dEsxvkblOIQdpSzC+dfEObGTVIx8mn4=@lists.infradead.org
X-Gm-Message-State: AOJu0YzkOT5I9Jaxe5r4tQ9vIvlSfjzE95wM8CZR0JJVBLpkaIu/uZS5
	4gwLA4Lif5pWJQsEWm2C40QcL4Wr3rSpq+5nie1x26acePOSGoR/0xsINpf46QB4Nmr2nXSH7+L
	YyRjdEZzex/LH1vpBVpxZl5Vv4JGn+LsnU2ZQ1tamqJtiHuIt5SyvNhGb0+liBlMIJFSh
X-Gm-Gg: AfdE7cmH4XHyQGR2LAx/uNRL7Ig6ZJGznyhmrkehJqHVCujw1gLGkx8oVit/2hS/Wzs
	1oh6OolAW1wlbBIwCDv0D/x6b/k7ejNLoQjLTORSq51NJqhZsXRnwoDvMtMiVBjskrIZwfR2UdQ
	AHBU+w3pDXY8mM7CQYsdSJmxxuFnhVUGUwiASS+Ba6ulCXp5hlnZDmz5Aqyi9IVZgEgt1sAbnCH
	zG6RhMGZR+aCsndVc2pUfHyyAU7uiQOSVO93OhU5JiF9tbsxGwGEcStSz0xmeU7jKsZHsHlEFeu
	1PBezpCTdgiyx5KEi9OTW0xUtKO2ihTie7Cy1AotOQ6wEoZFEWn+WsnTR/MuF/pa9q4JVmnZR8M
	AOw4Ioktk9nkN/n1YA0rAHfp9SSX+/3WszSgDPVegyWwRyw2nLNtmG05bcA==
X-Received: by 2002:a05:690c:e34e:b0:7f8:7e11:d0d8 with SMTP id 00721157ae682-806deb9d6fdmr22653847b3.51.1782219927716;
        Tue, 23 Jun 2026 06:05:27 -0700 (PDT)
X-Received: by 2002:a05:690c:e34e:b0:7f8:7e11:d0d8 with SMTP id 00721157ae682-806deb9d6fdmr22652837b3.51.1782219926718;
        Tue, 23 Jun 2026 06:05:26 -0700 (PDT)
Received: from hu-qianyu-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 00721157ae682-8025ffc700bsm44091127b3.36.2026.06.23.06.05.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Jun 2026 06:05:26 -0700 (PDT)
From: Qiang Yu <qiang.yu@oss.qualcomm.com>
Subject: [PATCH v2 0/3] phy: qcom: qmp-pcie: Add vdda-refgen supply support
 for Glymur
Date: Tue, 23 Jun 2026 06:05:16 -0700
Message-Id: <20260623-phy_refgen-v2-0-4d15983bf91d@oss.qualcomm.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAIyEOmoC/yXMQQqAIBCF4avIrBPMKKGrRETaVNPCRCsK6e5ZL
 b8H748Q0BMGqFkEjwcFWm2CzBiYubcTchqSQQpZiUrm3M1X53Gc0PJBK1XkCo0oe0gHl3Y6v1j
 T/g67XtBsbwHu+wGcgJW3bgAAAA==
X-Change-ID: 20260621-phy_refgen-db77317ec05a
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Qiang Yu <qiang.yu@oss.qualcomm.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1782219925; l=1309;
 i=qiang.yu@oss.qualcomm.com; s=20250513; h=from:subject:message-id;
 bh=DaHhfiRLFVU/fu3bWCMMNv3jDUDFySbSeji8kiG1hxU=;
 b=fBnBIKVwLJ4q/a5apyIBbKs9IPH6R5TzQIeU0p15+x/XMDSzdvtCIcQSBH+0VbqkRhjeTEEQW
 MEJZrkvkjllBI6uSI75fcV8mWkVS+7uXcDXKyBrneft3NQ0+homLm+p
X-Developer-Key: i=qiang.yu@oss.qualcomm.com; a=ed25519;
 pk=Rr94t+fykoieF1ngg/bXxEfr5KoQxeXPtYxM8fBQTAI=
X-Authority-Analysis: v=2.4 cv=LdAMLDfi c=1 sm=1 tr=0 ts=6a3a8498 cx=c_pps
 a=72HoHk1woDtn7btP4rdmlg==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=FelO9ux0wxsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=eoimf2acIAo5FJnRuUoq:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=w8xSe1B2Uj80E1ISm04A:9 a=QEXdDO2ut3YA:10
 a=kA6IBgd4cpdPkAWqgNAz:22
X-Proofpoint-GUID: rqkBnu2iNVNdNmt1Mkd0k7VCL4CNPJi2
X-Proofpoint-Spam-Info: AW1haW4tMjYwNjIzMDEwNyBTYWx0ZWRfX+r+S3T5UDvCX
 9/LMhRebbr0reRj36FcodINd/4Jr+DDrvq8rkqLlyIdUY+jlmohD4udevVYH8Iju7/XsFCtrJvy
 Gzpg90BrmdSvKYQknK3oxLZBmMRT5Gg=
X-Proofpoint-ORIG-GUID: rqkBnu2iNVNdNmt1Mkd0k7VCL4CNPJi2
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNjIzMDEwNyBTYWx0ZWRfX6C3bt5Nt0/nu
 fvlP82ZIZM2WsjkgyCtsw8gGs0AYgWEfzTwoWQcTj4ly9ZekbwOxrlx7MIbnS2bsib/Fr2pFGQd
 fQFBSlKKL0FMW896gJYF/UKo9m6iISUd5Sg3Dlgd9+m18pJ5/DPR48yjyrn1+da3LQlUkbgZNXs
 vcPN5kq3wRZu88xqaoAqe8DWWKGS9s62Y4PRc1oGgbZwoBVK85l4TXfIUPHLG/LUw1tLBST9krd
 jKMncu08+S1ze77g/q32N84fK+9Mg/V09c9736qPEZczJW1F3UroRaMhpgkOkwdJ3I4TCfo2vf8
 INBE2wuUvFecvW+rDFtQCdXVFI8P4vrsO5Akl8LeH35LM+wV46SCQuMdU5cDcZJ4CZr24yb82go
 P9/WnPtFllBEGkughHDiPichw3ikhLxI6+MMyDFy4ki7rtEnErRE5TkgO/Ea7mkUs8MP9ePHqOU
 6uj8o/Srtza+EQRc08A==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-06-23_03,2026-06-23_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 priorityscore=1501 impostorscore=0 lowpriorityscore=0
 suspectscore=0 malwarescore=0 clxscore=1015 spamscore=0 phishscore=0
 bulkscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2606150000
 definitions=main-2606230107
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260623_060530_330192_FE07C9CE 
X-CRM114-Status: GOOD (  11.07  )
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

The PCIe QMP PHYs on Glymur require both refgen for stable reference
voltage and qref for stable reference clock. The refgen requires two power
supplies: vdda-refgen0p9 and vdda-refgen1p2.

can be extended in the future.

This series creates a Glymur-specific supply list including the refgen
supplies and updates both Gen5x4 and Gen4x2 configurations to use it.

Signed-off-by: Qiang Yu <qiang.yu@oss.qualcomm.com>

Changes in v2:
- Add dts patch in this series.
- Reword commit msg of dtbinding patch.
- Link to v1: https://lore.kernel.org/all/20260208-refgen-v1-0-87ca84fd78b3@oss.qualcomm.com/ 

---
Qiang Yu (3):
      dt-bindings: phy: sc8280xp-qmp-pcie: Add vdda-refgen supply for Glymur
      phy: qcom: qmp-pcie: Add vdda-refgen supplies for Glymur
      arm64: dts: qcom: glymur-crd: Add refgen supplies for PCIe PHY on Glymur

 .../bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml         | 16 ++++++++++++++++
 arch/arm64/boot/dts/qcom/glymur-crd.dtsi                 |  8 ++++++++
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c                 | 12 ++++++++----
 3 files changed, 32 insertions(+), 4 deletions(-)
---
base-commit: 3ce97bd3c4f18608335e709c24d6a40e7036cab8
change-id: 20260621-phy_refgen-db77317ec05a

Best regards,
--  
Qiang Yu <qiang.yu@oss.qualcomm.com>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
