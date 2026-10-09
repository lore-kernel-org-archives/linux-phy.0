Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BAA67CA5FED
	for <linux-phy@archiver.kernel.org>; Fri,  9 Oct 2026 04:50:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=3lxloRjDVWtuyAjl20xeRIgMQZaFZaamzdLwHfXmxHg=; b=jmGavkgQnshr40
	7VoLPfTLirnD6ZwoC0+PCo5McQFjvn7uXMY+5VY0UKa+USAI6XSTqmPHpH61vZuhhip/DXYdxI553
	H9LrwsMTP/eHAzrwpns7B3zKR5fbfubFgTLCcmH1nYLAf8ShvqDNbnuQMulhSTYncOLggvS/BsQrS
	OX6060sbnvyMirHwZn6Aq2KNuuIGTeZW3P7KH0zZfcgrsep2aUMan5IT7jbgzCfAlVMN7wUHJUW5j
	neoMSAcw20FUAHof81gncWfkRidv3l0VtomgWnAYXV3UH8RE0jAZpOlKze3+T6w5FZZo4ETilKPwz
	/YnZqCBIlrny1MccneXA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xF2Ye-00000005UFL-0puw;
	Fri, 09 Oct 2026 04:50:12 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xF2Ya-00000005UEi-3gqy
	for linux-phy@lists.infradead.org;
	Fri, 09 Oct 2026 04:50:10 +0000
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6993HYad3943485
	for <linux-phy@lists.infradead.org>; Fri, 9 Oct 2026 04:50:08 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=dthmHVxL/tRbBtpCCqegSD
	oLuoy6NnyQdhGorTIFVK4=; b=Ag6VQruvl1v+iIKaOa8KA11tEKcBYjzMqUBu+M
	CLog0HeYgj716kbRIT8e49OMY4Cd2z+bjgL9WWEqRnUTVQt39A6Dm98wtMy6uh70
	6L0PmsxgXoNCtC3tjR6RpguAld6lDttlviupVQFsafaDtiO3gQdBJ1smCw5ggu8M
	4c/1RkNNkNgsTsP1f353pfUSiU54cb70JpQaQwp++FwvnY1k/DswXCvbMXjI7KxZ
	rAEo9jJyLTMl8yw7V+FG4pVS/UonL/kkuEqeoY+W57PrSjAncdU2tht4XgsYzMQ5
	DYIKTXaGPBzwE0oO24OFCS/UEMfFO7GoCMWmFjng6EPS/tnw==
Received: from mail-dl1-f70.google.com (mail-dl1-f70.google.com [74.125.82.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4h6fxk1y9e-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 09 Oct 2026 04:50:07 +0000 (GMT)
Received: by mail-dl1-f70.google.com with SMTP id a92af1059eb24-1663fb7e005so1613321c88.0
        for <linux-phy@lists.infradead.org>; Thu, 08 Oct 2026 21:50:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1791521407; x=1792126207; darn=lists.infradead.org;
        h=cc:to:content-transfer-encoding:content-type:mime-version
         :message-id:date:subject:from:from:to:cc:subject:date:message-id
         :reply-to:content-type;
        bh=dthmHVxL/tRbBtpCCqegSDoLuoy6NnyQdhGorTIFVK4=;
        b=dBAVT4PDYKbiWUnbuSn4fveizMYd8ETIouFm9CwTOfVkqBnBmD+TNCIR0o1Gl/8ZVh
         p/woVSpa+M1lQCUmRR5T6Jd8fxpZfik1XqkG6jRRnAOFYYM1gwRe7yFa+jVuoLDeYe+j
         /vDpUPu+8MiwOko4R6vRy4zZBYeykkC22W9U6MCvVPJH4gtypkMmw9eHD+dlznZsKo17
         VVXPOwPDmIJkpMGrEwbtP99Upq7qINKojbys8CEzTDwx8YLcfkWKoJ9wUsmsI/hkgdrN
         lytmftOBWvvs87U98OsL7ExD8O/Mkrzl3llAbb0S54ttY+/9gSGkxLlFRdkyMFRiRubn
         MiIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1791521407; x=1792126207;
        h=cc:to:content-transfer-encoding:content-type:mime-version
         :message-id:date:subject:from:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=dthmHVxL/tRbBtpCCqegSDoLuoy6NnyQdhGorTIFVK4=;
        b=th6/7C/eoZyta1mWIc/tZVQWa97bON2v8Wa6ZRvUo+qZY9b8QzS+tImjOGJ2cb4J3C
         Di9qz9FexnHegex3BWCZIod7+MZif7lRAtGY/ssOOGo6CICO8fhp2TG0FVonpuzwYWtZ
         TY66Z4tvHLbN06uEKUzIFX8C5za5ItEp68y/6O9eZ9t0kjwwTeeu6frnZ1/TH/ZN+zpG
         jz6k0ny1DODVxsbKfavP6PqFuD+e5PRbC8TPpFzdlV80xg9saz6cnl1tFrQ9jmTF/IDT
         z1iLsM7REn04nUgbOuXsEdcitSoyEVK0LtxZbPXZZJPSTkK7T0y7FQPaNBiM5vkexJEl
         o84g==
X-Forwarded-Encrypted: i=1; AKwUvBxV5PGf39A5QE9IMWQXLzNvVprGMVEbUMp+bWclQGsS97XfMq9LlTay8kYluQrJeVccNGyQ61yLUlY=@lists.infradead.org
X-Gm-Message-State: AFuF++lhNsaVg77tYTXaJIhiom0aDcYQojxwjyPmv5EQUFpD2pjjcoKt
	9Cw8C1v4xmvG3CQwsuWo3LA2Yk/KmqNq1KVi2x2y4ww7DOWlbkYDOackpGuvPk7bC+QWeaLWUvJ
	2gmOqOxTvnjUE8SYkSdnCJy1Mr+12QG+mI5hJ3wKjmyiR7YYwk47piWhRM2p2t6YbZZtbVfS46y
	V4
X-Gm-Gg: AYBFou2C5vRZKteNC5+qmb7pETqf8favKvGRPVV8moXn59uf3MnYVlLEim3t67aDIKL
	GimQzRbEOBeT8cQW2RvraP9Bv3ht6v8xpwhz0kBgh8XyU2IN54OGdiTpz+WydRUR32oXOgL1iUX
	IpMd7S8Mzg09ESzoBaZvHGuSLu/DKc2dgiGiPmJ+0fQIjhdjVwFYnfca0LP84ATFmBd4NFRbnnW
	eV3xtDDdAshKfCcZvSTLGXt37zW21LTVjughUVcn2R64oG4WLik+GN5Yuz3crP4ojp/IZQ8rpm/
	9anhrItB9JydNcKL+xBmAL1To280mMStyxjzzJorI7cVPQ3BdMKbLHE0XjM6xvXEGeq4lvst+iv
	qsHf9vAwYWF461G0W6xn8Qavtf/G1bGBtZk6b+QA4SKORsCcmqqqCXrXbz6V9/IgMW4CrVXu1pz
	d3wGBkqPzTssCyAbP0FrjM094QzTsRoA==
X-Received: by 2002:a05:7022:1584:b0:143:4d12:396d with SMTP id a92af1059eb24-16a61a6def5mr1249016c88.26.1791521406676;
        Thu, 08 Oct 2026 21:50:06 -0700 (PDT)
X-Received: by 2002:a05:7022:1584:b0:143:4d12:396d with SMTP id a92af1059eb24-16a61a6def5mr1248951c88.26.1791521406019;
        Thu, 08 Oct 2026 21:50:06 -0700 (PDT)
Received: from hu-varada-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-169a442956asm4151609c88.16.2026.10.08.21.50.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 Oct 2026 21:50:05 -0700 (PDT)
From: Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>
Subject: [PATCH v6 0/6] Add support for USB phys in IPQ9650
Date: Fri, 09 Oct 2026 10:19:54 +0530
Message-Id: <20261009-phy-v6-0-50408e45bcc1@oss.qualcomm.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAHJyyGoC/3XPTW7DIBAF4KtYrEs0DD+xs+o9qi4Aj2ukxk6MY
 yWKfPdinLRZ1BukQXzvDXcWaQgU2aG4s4GmEEPfpcG8Fcy3tvsiHuo0MwQ0UCLwU3vjxiiqNXn
 ACll6eRqoCdec8vG5zgOdLylsXC+Zs5G474/HMB6Kjq4jXwIFQMkW0IY49sMtbzGJLB6FKhdOg
 gNHva9NaSUKcO99jLvzxX4vmbt05JgJ/2gFYqWYqPeVrLGRTrhmg8oX+myViUJZ0t4R+MbaDap
 +afqQXqlK1IHySqAk7+QG1a/UrFQvCzuqpARrlKr+ofM8/wAH2NZGugEAAA==
X-Change-ID: 20260820-phy-664ed5ec0292
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>,
        Manu Gautam <mgautam@codeaurora.org>, Stephen Boyd <sboyd@kernel.org>,
        Philipp Zabel <pza@pengutronix.de>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>,
        Abel Vesa <abel.vesa@oss.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Authority-Analysis: v=2.4 cv=fKesTpae c=1 sm=1 tr=0 ts=6ac8727f cx=c_pps
 a=SvEPeNj+VMjHSW//kvnxuw==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=IkcTkHD0fZMA:10 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=YMgV9FUhrdKAYTUUvYB2:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=tpprtx7nRKxrkFoMJnUA:9 a=QEXdDO2ut3YA:10
 a=Kq8ClHjjuc5pcCNDwlU0:22
X-Proofpoint-GUID: EdqtAo8OY1OeqTOOXX89HbHWFRfHE33U
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDA5MDAxOSBTYWx0ZWRfX5aAzAxBIozfo
 zfTl+3CExhNtIj0R4/T8xjmcILl4IJP9G814QAImMYYseIHCyDDDfHDobcV9ka1yH0flQy0O83I
 G8Vo0PrASDJ9hyJeL55tgXgQESC7jeM=
X-Proofpoint-ORIG-GUID: EdqtAo8OY1OeqTOOXX89HbHWFRfHE33U
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDA5MDAxOSBTYWx0ZWRfXx2YhH5389YVB
 HvOWb5Kl2D64eceGECuq1haLz9BarIgz/ynHQ2ea9qcjv51C8gVFnfab9rubCK6c4+lXdtVOWgt
 HzoPbWNMWy8pg7vZkMRFBoPAdB6+WYfN+B6+6cVfZhAEhZefeMzt2xViAaT7wzCNX8m7Sr405Yf
 an8UELkg9LH7ylDa4lrHtkBuyFynJx2Xq8JNU/U5N+jphFY6fCrKbAsOsJPMMItT63mWoVptOVS
 nPz8GpGabGwWeOXhirMy7cmE21VMAUSTqj2YPBbGKq/B0YhHdnumeFTiw7oYDi1peEdeOC8ahY+
 uIcseLWQnFqSI6XCLstZJEpTg1frOwmfUORWbIfF+Ur7NnX703m36ehsh1PsdKww19VvhOL8PA0
 ISjDn9ABm9znj2U7Lv1PtQp2b21CB6JU259TdI3QNdR7y830uA6BZrYTKU49PoOGBD7Ob1yARKh
 X/ypJCxUxtC2oF1pHVw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-10-09_02,2026-10-08_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 malwarescore=0 clxscore=1015 suspectscore=0 adultscore=0
 priorityscore=1501 impostorscore=0 bulkscore=0 lowpriorityscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2610020000 definitions=main-2610090019
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261008_215008_981784_7B5D4743 
X-CRM114-Status: GOOD (  13.49  )
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

This series
 - Adds dt-bindings and driver changes for the high speed and super speed
   phys in IPQ9650.
 - IPQ9650 specific init tables to QMP super speed phy driver.
 - The Femto high speed phy driver is refactored to accomodate differences
   in the init sequences between SoCs first and then support for IPQ9650 is
   included.

Signed-off-by: Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>
---
Changes in v6:
- #include <linux/bitfield.h> in drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c
  to avoid build breaks in other (non arm64) architectures
- Link to v5: https://lore.kernel.org/r/20261006-phy-v5-0-cbe9330a6449@oss.qualcomm.com

Changes in v5:
- Use FIELD_PREP_CONST to define FSEL_24MHZ
- Change commit subject to 'Fix order of arguments to qcom_snps_hsphy_write_mask'
- Use data->{pre,post}_tuning in qcom_snps_hsphy_init() instead of a temporary
  local variable
- Pick R-b from Dmitry for two patches
- Link to v4: https://lore.kernel.org/r/20261005-phy-v4-0-b04c4123ecb3@oss.qualcomm.com

Changes in v4:
- Rebase to top of tree
- Split 4th patch 'phy: qcom: snps-femto-v2: Move PHY init registers to config tables'
  as follows:
	phy: qcom: snps-femto-v2: Fix qcom_snps_hsphy_write_mask argument mixup
	phy: qcom: snps-femto-v2: Move PHY init registers to config tables
- Link to v3: https://lore.kernel.org/r/20260924-phy-v3-0-088e7be0cfaa@oss.qualcomm.com

Changes in v3:
- No code changes
- Rebase to top of tree
- Pick two R-b tags
- Link to v2: https://lore.kernel.org/r/20260901-phy-v2-0-cc93d2f3b1bf@oss.qualcomm.com

Changes in v2:
- Pick one R-b from Krzysztof
- Use qcom,ipq9650-usb-hs-phy directly instead of adding a 6nm compatible
  and falling back to it
- Change pre/post to pre_tuning/post_tuning
- Use array count instead of terminating entries
- Fix value/mask mixup in 2 places
- Link to v1: https://lore.kernel.org/r/20260824-phy-v1-0-257d68a3210b@oss.qualcomm.com

---
Varadarajan Narayanan (6):
      dt-bindings: phy: qcom,qmp-usb: Add IPQ9650 USB3 PHY
      dt-bindings: phy: qcom,usb-snps-femto-v2: Add IPQ9650 compatible
      phy: qcom: qmp-usb: Add IPQ9650 USB3 PHY configuration
      phy: qcom: snps-femto-v2: Fix order of arguments to qcom_snps_hsphy_write_mask
      phy: qcom: snps-femto-v2: Move PHY init registers to config tables
      phy: qcom: snps-femto-v2: Add IPQ9650 support

 .../phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml        |   2 +
 .../bindings/phy/qcom,usb-snps-femto-v2.yaml       |   2 +
 drivers/phy/qualcomm/phy-qcom-qmp-usb.c            | 118 +++++++++++++
 drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c      | 194 ++++++++++++++++-----
 4 files changed, 269 insertions(+), 47 deletions(-)
---
base-commit: ed06cc88c5e644da0f1ef397a836c7b1c10f41ac
change-id: 20260820-phy-664ed5ec0292

Best regards,
-- 
Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
