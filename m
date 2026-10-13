Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 98A49CC6B03
	for <linux-phy@archiver.kernel.org>; Tue, 13 Oct 2026 10:17:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=GqSkR7dYC4vmoHVYZtRcRWtNDgkRpmbtkzSRija0k+0=; b=BOu4nTdmj/3MVM
	7dkl9kQKa2+iVTlLa7sNeXA2Ur3eH5eQrzNff7rCxFs3Atfuvo/+iPnCIBTNifexNjehcLfNmveTt
	BHX2hgR5yjv4/ND5KO6ulZhRGZ895ql8A+dWER/aYc5RyTq3I+V0nqA57+U4sP1+3xfrjXasFyLVS
	dHTKKmjM7MxhsjE/3XvEFFKKb9DPKhey51oAvnACHagtYrbIWaX25NaRZrqaRYiW7Y+2U7sa2EjIy
	qt0JUYWsTxgMElvSzYISWLNS34yBsYRvj+WJEdCALnMkr1S55kek6OsObLU37YZfp+P0kWISd2djl
	4YsNNUSR0Z4yE62it22g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGZZX-0000000CXac-1GAe;
	Tue, 13 Oct 2026 10:17:27 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGZZR-0000000CXYX-3fEF
	for linux-phy@bombadil.infradead.org;
	Tue, 13 Oct 2026 10:17:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Message-Id:Date:Subject:From:Sender:Reply-To:
	Content-ID:Content-Description:In-Reply-To:References;
	bh=Iyghy8MFwYNuGQDyF9Cj/pHPGN/MU2WtXwUAR2dYSmc=; b=gFbmNzRWLk4u9PIb6Trw0mdA5L
	+5iclc0WBvne5nORgnCqagqgjlMKSop2io9OJfPRBRzbcIPolEFUhvvndA/KTCynBLhmEZN1H8rQj
	FlUNSOesXuLaSMKl5fEygVid7g5tnQxJce79K+gae/Uv6JFmzqP8xT4nHmoxHATRy7P94RZuDCToE
	sMf90IO8SttKP5YOjdxI+NdZZXGZFNX30bCacOdmA2HqmYmzsH9+fmg3y2PN9I5m2wA+Mr7xpvz7g
	tBT6MIrOBWHFr/DTFvifMlQ9g/Axi9fH9EvrgNuCHDQTcVyRwq0JRbN+kL3nung5obbDZN2O189dP
	S1cxf/3w==;
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by desiato.infradead.org with esmtps (Exim 4.99.5 #2 (Red Hat Linux))
	id 1xGZZM-0000000FPIA-0jOL
	for linux-phy@lists.infradead.org;
	Tue, 13 Oct 2026 10:17:20 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 69D8Ohbt3055513
	for <linux-phy@lists.infradead.org>; Tue, 13 Oct 2026 10:17:12 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=Iyghy8MFwYNuGQDyF9Cj/p
	HPGN/MU2WtXwUAR2dYSmc=; b=QikgHeQHbc3tpD0I1eJEHI6jgE680Fty8o73dP
	pSqipWE74RRKYLhGr99uOKiS2zpUS+Ydr7t9oClXyHGQ/wgNkUXkHan2eK39ZEEb
	4MvW1mKBUW2q3ki9GsVEMu3uLA8a9ffVBSqcVvkjICBTPWTyHWzpK/3XpgEdda2F
	xq+EcpiXBv+8Q6/UO1vy9IvEFBMJfIc5wzzXUY8Rn/UT2jCdnCTsKj3lfJU7w5Sv
	FWnWPAkBDmPawYww+3wmEg/xIQQ5YMyJiQk5aNWQMGdtx/Df+K3M0f30fYpzbGnK
	sCrGz/yePcqVMZG/OmpDhw0BXzMW92NjSvYchicDKjBvX1cA==
Received: from mail-pj1-f72.google.com (mail-pj1-f72.google.com [209.85.216.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4h93aeurbb-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 13 Oct 2026 10:17:12 +0000 (GMT)
Received: by mail-pj1-f72.google.com with SMTP id 98e67ed59e1d1-3abb4c24125so2422020a91.3
        for <linux-phy@lists.infradead.org>; Tue, 13 Oct 2026 03:17:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1791886631; x=1792491431; darn=lists.infradead.org;
        h=cc:to:content-transfer-encoding:content-type:mime-version
         :message-id:date:subject:from:from:to:cc:subject:date:message-id
         :reply-to:content-type;
        bh=Iyghy8MFwYNuGQDyF9Cj/pHPGN/MU2WtXwUAR2dYSmc=;
        b=SP+t5K79QSEGoQka+gX8WRPTAgIviCDqGATtIMNie/hFnSRpZkexPA0gw4T7Jqxn2w
         3oMln0dzUB3wBsksYtxX8QI5adr1FO1DlkmzZHUG860WH2CsL9q5WICiie1Aik6q4ptK
         sfjpF07Eu7ruDnLCfNWVKI9njjKQ8yP+ZECOdg8PERt9rSNjafjcCtGqthBIbK7Wdr0y
         OJ2zlQbjpD5WZtafqwQZpRmZ7pqy3BrPRbizgJVcQTrak+EO1N8LrY8PBADVlutAN1r9
         xEQRQWkZNx7vNays2SUB7rUKLOxvT8rhbD7D1J0GfcjKD0WbIDWtknOKcR3laVYrEwEN
         9FIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1791886631; x=1792491431;
        h=cc:to:content-transfer-encoding:content-type:mime-version
         :message-id:date:subject:from:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=Iyghy8MFwYNuGQDyF9Cj/pHPGN/MU2WtXwUAR2dYSmc=;
        b=BraNLo6iMVHgrR9HyEv+CiJvVcJBKArUuQ+dwngGtklRz09oFgCTwoy3tjvHt+nTe9
         8IosT4E9s++1lgG729DbGH+vYcb+y9sDTjy0gZ2d6ZUuvEgQk7SNH7jlVvRdk0tOVlpg
         f2pm05kxf8cPXfQWCN4QPdqMZiSbIN4zrgq+vYQzaNlk53h67/9BpMOzvllRKJx8AIlj
         6/KlU7QSuV4RV4E+T6VbhZ4nynqY6cBIi4jU896FkuVjWcfyUhTYX9jm5LuaBt6FNu6n
         GE/rOyNkwM6bG5W+myIFvHE65EYottBXRkK0/nA3ASSWcuBY08cWl7ilM16bwcbUC4jX
         T6IQ==
X-Forwarded-Encrypted: i=1; AKwUvBzwHc39bkGxZlMyWctVUAtqArlmEbcUuirmHoPOcgoHmooX+aGnlo4FshvIrJznTdF0DiG0huxCrms=@lists.infradead.org
X-Gm-Message-State: AFq9FYKt09FcNVU5GTHimleGPAjBGcFcnnhtcenWdAWQc2Klljz4OrXR
	8B49eQfh9Qw0+I3DnFyxlgapTYwQ2xxEPgCkYjkGktQ33Wr6kKY+cWaTwnChoqJdpqFJ3BuET9E
	xn9PR0iYNIY2KRlLwBcYgYBGQwiZTnHumufnlrUwnKXnYLlle/iHP2g43jsxUVZwomg8E
X-Gm-Gg: AYBFou0KeO0KOsqSU/0WZuNr15zRU4jAYdKZLdtVsl18Lww36lPcul75BQYUpdjwSxz
	HE0t3bNEq2mEs+fsaYtfQ5yQrch0D6q0ldPGQXdW6ZevE69m+l10IopSzNjILH/DIt1GVyh0cic
	HsgmhL3ukSxV0iaZnb9aMBRsWeH50WHXe7VHUdposumzclomI2aP1q86RJQj5dmmmubqg1vokwe
	ScsVpaaWK65TT+QooY0zG6kfNsOWuwLiifqrDyvaoZIbT802fFH0K6pJguYg2xzXYQbVLO6rRO2
	8/GvPo8AkF1pfHBwoZNasUgfK+5BfcYWRKAceTWd2Vlld04N1tgOmpNygyiuGNMFkvuv7GSCPqg
	NuWuA4I5grLOnOTXDVW70fMdI7QxdCgQjGVAl/Fl9SZUApSM=
X-Received: by 2002:a17:90b:35d0:b0:3ac:450a:fa46 with SMTP id 98e67ed59e1d1-3ac450b7738mr1018313a91.10.1791886631083;
        Tue, 13 Oct 2026 03:17:11 -0700 (PDT)
X-Received: by 2002:a17:90b:35d0:b0:3ac:450a:fa46 with SMTP id 98e67ed59e1d1-3ac450b7738mr1018281a91.10.1791886630551;
        Tue, 13 Oct 2026 03:17:10 -0700 (PDT)
Received: from hu-qianyu-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-cd5dadd0986sm4186777a12.18.2026.10.13.03.17.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Oct 2026 03:17:09 -0700 (PDT)
From: Qiang Yu <qiang.yu@oss.qualcomm.com>
Subject: [PATCH v3 0/3] phy: qcom: qmp-pcie: Add vdda-refgen supply support
 for Glymur
Date: Tue, 13 Oct 2026 03:16:44 -0700
Message-Id: <20261013-phy_refgen_1012-v3-0-f28305289499@oss.qualcomm.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAAwFzmoC/yXMyw5AMBCF4VeRWWvS1i3xKiKiTBmLkhYh4t0Nl
 l9Ozn9BQE8YoIwu8LhToNkxkjiCbmzdgIJ6NmipcyWVEst4Nh7tgK5ha6GkLXJrZJb2CPxaeKT
 jK1b177CZCbv1zcB9Px6p+5JzAAAA
X-Change-ID: 20261011-phy_refgen_1012-10f76fb054de
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Abel Vesa <abelvesa@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Qiang Yu <qiang.yu@oss.qualcomm.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1791886628; l=1971;
 i=qiang.yu@oss.qualcomm.com; s=20250513; h=from:subject:message-id;
 bh=YP+18ZtwjtU3nUHwx+tBGgStmo1pSIBVMNOd8oxFD+s=;
 b=6frf+yFXAaqyaPmdIMAnDHUDfI1y1k+enC6eYkVgkgwXK+bAtirq4hJ2csHaAqmIn+syIomZF
 29mOtBxSC7pAmRLvlxvB1iL5wicGJueQVPw9Dj+sFldDwnqxrF2p8l5
X-Developer-Key: i=qiang.yu@oss.qualcomm.com; a=ed25519;
 pk=Rr94t+fykoieF1ngg/bXxEfr5KoQxeXPtYxM8fBQTAI=
X-Proofpoint-GUID: kE6EbQwFehqxGtb48GwX8xMURfP3nD4l
X-Authority-Analysis: v=2.4 cv=JJuuIMKb c=1 sm=1 tr=0 ts=6ace0528 cx=c_pps
 a=RP+M6JBNLl+fLTcSJhASfg==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yx91gb_oNiZeI1HMLzn7:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=IXTrTkLk_8iMRye1LOkA:9 a=QEXdDO2ut3YA:10
 a=iS9zxrgQBfv6-_F4QbHw:22
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDEzMDA0MCBTYWx0ZWRfX/lh2jQU2KIU4
 0nDGmGW5zYe0UdYoNqRLpE9Pe0JXgcUWyb3PRkKdwqUODRbqhKPOaSR6Smfe3uyQd5b5BcSRQX1
 bcKqe60z1fP/915x3bksEQM4UoGAiNo=
X-Proofpoint-ORIG-GUID: kE6EbQwFehqxGtb48GwX8xMURfP3nD4l
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDEzMDA0MCBTYWx0ZWRfX9swewEU8RWKx
 kOZByqIjRLEbP0A6fz9q9ghXZxXMlvDJusodyBCbmaSrjHL3u7sBAbxQnDfrpvqS055UTmjiwvw
 bFZP7X1+tztgx7BTfRBqeaBqwZnXsIW9GOueTFVUOZtqO0g2pt2XtW+qu/oxJGUApsvQzAItxOe
 fs2FO1CovMQkGwA1vc6oVa7GLligGekHp3jNAme3j6g0brqGrVQmfn25CIrmUx6ohuel8c5+Tov
 M/zRuFQnc1YaniuxXp0o6B3p5k6npz4QHaR+s61/zmVA73aifCi84qqJHibmRdHdUO0roFcUfMz
 n2IlyIRJkIgYIVonoBWaVXW3Av8VDQRWpU3Zar/w+h7vlWu3uk2Vd8vNqT2eLdZkpnugKxOnJSC
 hFbcUM7SW4mjyakvlXi302VeHQVvE62x8gM7s++tbHGP8QLrf7QLkB6XjwxPshYpWqYJ4l5PfEk
 gibrwLragTUDdNjmsNg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-10-13_01,2026-10-09_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 clxscore=1015 malwarescore=0 lowpriorityscore=0
 impostorscore=0 adultscore=0 phishscore=0 priorityscore=1501 spamscore=0
 bulkscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2610080000
 definitions=main-2610130040
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261013_111716_578366_E94D100D 
X-CRM114-Status: GOOD (  11.83  )
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

he PCIe QMP PHYs on Glymur require both refgen for stable reference
voltage and qref for stable reference clock. The refgen requires two power
supplies: vdda-refgen0p9 and vdda-refgen1p2.

This series creates a Glymur-specific supply list including the refgen
supplies and updates both Gen5x4 and Gen4x2 configurations to use it.

Signed-off-by: Qiang Yu <qiang.yu@oss.qualcomm.com>

Changes in v3:
- Add vdda-refgen-* porperty in all glymur and mahua board.dts.
- Reword commit msg.
- Link to v2: https://lore.kernel.org/all/20260623-phy_refgen-v2-0-4d15983bf91d@oss.qualcomm.com/

Changes in v2:
- Add dts patch in this series.
- Reword commit msg of dtbinding patch.
- Link to v1: https://lore.kernel.org/all/20260208-refgen-v1-0-87ca84fd78b3@oss.qualcomm.com/

---
Qiang Yu (3):
      dt-bindings: phy: sc8280xp-qmp-pcie: Add vdda-refgen supply for Glymur
      phy: qcom: qmp-pcie: Add vdda-refgen supplies for Glymur
      arm64: dts: qcom: Add refgen supplies for PCIe PHY on Glymur and Mahua boards

 .../bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml         | 16 ++++++++++++++++
 .../boot/dts/qcom/glymur-asus-zenbook-a14-ux3407na.dts   |  2 ++
 .../boot/dts/qcom/glymur-asus-zenbook-a16-ux3607oa.dts   |  4 ++++
 arch/arm64/boot/dts/qcom/glymur-crd.dtsi                 |  6 ++++++
 arch/arm64/boot/dts/qcom/glymur-hp-elitebook-x-g2q.dts   |  4 ++++
 arch/arm64/boot/dts/qcom/glymur-lenovo-yoga-slim7x.dts   |  6 ++++++
 arch/arm64/boot/dts/qcom/glymur-qcb.dts                  |  6 ++++++
 arch/arm64/boot/dts/qcom/mahua-crd.dts                   |  2 ++
 .../dts/qcom/mahua-lenovo-thinkpad-t14s-gen7-lcd.dts     |  6 ++++++
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c                 | 12 ++++++++----
 10 files changed, 60 insertions(+), 4 deletions(-)
---
base-commit: becb95e45ef0dda9ffb35156d909d3da7a2789c3
change-id: 20261011-phy_refgen_1012-10f76fb054de

Best regards,
--  
Qiang Yu <qiang.yu@oss.qualcomm.com>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
