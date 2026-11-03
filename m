Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43D1A6082BE1
	for <linux-phy@archiver.kernel.org>; Tue,  3 Nov 2026 10:36:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=KCYgiWeE;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=Ec2W3F5R;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=C18w7Vne
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=bK1QsjCYfZdnPDtFrngW6jXArtDXUp2OjAGhD12LYqs=; b=KCYgiWeEoupQhYUf8aA73dOJKN
	vd+ooQdAbdQbYvEwbX06LLiiEdvSJJZsDIX/GRIvqH34c10Rq9DIfD4cQ83XEXlxPh2JFnMWaIEPR
	dkSFwmycwA+1mWixiLXXq3fJYMiBVQWdQbbf29AoxeREBzrd+gLFkqX97XCKKpQNHwmwB9TLO+Geq
	8t8KbD/7/eo91sodioPGXtZ0VO+msGqgJP5w+ss9TLOzxhOMAxTV80XM/Dm9JjtD6hjQG5eV/5KT7
	14vFcW8GZV1v5pttOuOdCSggvQkVcb0y+zrbZnl93IblNftR8NVuOJKsx/qob5C/QyEwop/8IHeA1
	38j3XwDg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xOBsC-0000000225t-4AAu;
	Tue, 03 Nov 2026 10:36:13 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xOBs7-0000000222l-052s
	for linux-phy@lists.infradead.org;
	Tue, 03 Nov 2026 10:36:08 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6A3AAFvN1476090
	for <linux-phy@lists.infradead.org>; Tue, 3 Nov 2026 10:36:06 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	yF0ZWdpj5Pv27R79H4400qc2xDr80hGmdAVzUXIJw4w=; b=Ec2W3F5RyrB1AN3+
	ezsFHivj/nmeOlonKuA10UKWUpVRGeqYisRkCVh0w767kEGA/V5CR4HXj4SSEkaM
	K6uLAc1I2SELy+HvSNhfDaRs5ru/BJuYcVeu+GQIco4HuMpSpGegnNAXYI33skF5
	78ZevwGfBpHwghw4ULbDtkf41/3UiQLqD5Ib323BsH4J0HsL9BmsAVyVfL9eqk02
	VFvrUMeOwZo8reIWbDNRV+vQanzrP9hPdKVFUCom4MzwHzm2RauH8fVziFcw2XrH
	Mlfkra2FLk88DMVMtxmpd/yxCWpvMwQofb+sq6UX2TI7uMh5c/QOg0IUadNWSpdd
	lniZxA==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hq8u5hbmw-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 03 Nov 2026 10:36:05 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-93ecdc701a2so460205185a.3
        for <linux-phy@lists.infradead.org>; Tue, 03 Nov 2026 02:36:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1793702165; x=1794306965; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=yF0ZWdpj5Pv27R79H4400qc2xDr80hGmdAVzUXIJw4w=;
        b=C18w7VneWsaTcp05jB2hWR9dUYd0jWtPBcepX0Ay4EbYlwUXL5jrGMmqcPNfeo8t3G
         St9BCrRaapTCNSmnDp9JB1scP+rL6/GARJCzGP7lK5+t4ZS5GSqxZNGicDF2otdaOUdN
         JR4sjDw97/6pksbWablAe/LAv3KXdS/JeH3hnU2BKW/iH1Wd/GlgwSM8BWE8LSU8jCl0
         7fUqY9AwgGktqVp7DKlvO+lLoRwO0dgfci5sa3ObP/HHAeQ1HfYe2/0AjzjM3GHx4eGO
         IITTsJQyk5JrPHVFg6dHcDGhgDxW15tR5zP+GyG8VLv9k0OLBX1YHxKo2YRF97FYdy2p
         XRWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793702165; x=1794306965;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=yF0ZWdpj5Pv27R79H4400qc2xDr80hGmdAVzUXIJw4w=;
        b=t5IX7p0v64B6ZLZwnCwzmJBFLWNJ0uY7cifWasdOmp2OnWjX8uGbCG3/twibusoM8Q
         xzORyVNfbVBthfNoYz9or5q1/P5LACP2hHpIQ9i58KL/Uf2p3GJKog0iMkLIAKP5x0Rb
         rnQl6GSuANxmAGOB6y9UkIOTVnw+yKtFTwiHcTRdH/23awtkVAAF4lodZoblrbJTDFzG
         VzBTRhAOaN3idCl0wXP1Vx/c+wpF5QIqEq7fXKTOYodSSUXT7TybX7iuxmtuI7IddAnf
         y9zqjyFmfqF3nxCP4sJWtNiKvL7xiHPNjgP3vaYEz+s4a49dAJvijESmQ1rD4usK5G85
         qOpA==
X-Forwarded-Encrypted: i=1; AKwUvBz+JRKLLB+IJYjKQrBKD3DD0qP0uhScX/5crPAe3bXFKqcPZgFVu/GlOZ/JxsbHqNYAD0zph2Ed8w4=@lists.infradead.org
X-Gm-Message-State: APuU4Z+LMgvD16O+CEnqh6+E2DIyCa0p4Pc6awR+nPBKpntcinMFI1bE
	Auqli3W9r5SYoB6qCoI8rAX98klSU7L4IK166ZgU5D6s4KoLOT6htbKkSw/rmJaHIZCIvS6Qz5S
	u6Kuc2wtVG8v+HHG5odrkqUOoUaYEG1JixIz9KV2MUEAOnpz5auiIiMPDS3kTx6Y6Lebt
X-Gm-Gg: AYBFou1GDnRqYMePJZOAVCUlIS83/D470cuuCrT3QqANcYtApUWoTPG557KvezsQMat
	xDeg2LcFM8a70gEntXn7i7Nq8AdEipWXjx9GJr1WLanVKX9F9DGluP/ZMp3w0cWqJwtUZfXADfe
	si6oxZ7MgQdGMwmfvpGMWGfF21PnMnyDWyCGhoZv4SxsoqqZAPLpbIS3ewtn5FG5LejLjikA09o
	UU9bRRe0KONuxZ0//oRTmzzhx7WRKsMaa22M9kGZWEZHvETytfXz3q6RjmFU09TXg2/oZofYXLO
	grw4KQO0mS1b6lod2GbC8LKM7yVQaVYBhQcLXu0jOrxQIRWMsdld7+JiP4ZNbRHN2IFz1psVYwT
	ukla6KeK4y7AQyy0ohoi1EtOzIoJ9ysemR2x3tPiApljmDWiOn7GweCPwjpezyL6ta4EEYmrpj8
	VvFA==
X-Received: by 2002:a05:620a:261a:b0:93f:32c5:69b0 with SMTP id af79cd13be357-94421778129mr1966769585a.60.1793702165256;
        Tue, 03 Nov 2026 02:36:05 -0800 (PST)
X-Received: by 2002:a05:620a:261a:b0:93f:32c5:69b0 with SMTP id af79cd13be357-94421778129mr1966766685a.60.1793702164689;
        Tue, 03 Nov 2026 02:36:04 -0800 (PST)
Received: from brgl-qcom.local ([2a01:cb1d:dc:7e00:8916:7b9b:97a2:6c96])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4b2a80e0fe6sm55210015e9.1.2026.11.03.02.36.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Nov 2026 02:36:03 -0800 (PST)
From: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>
Date: Tue, 03 Nov 2026 11:35:53 +0100
Subject: [PATCH v18 2/2] phy: qcom: add the SGMII SerDes PHY driver for
 SCMI systems
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-Id: <20261103-sa8255p-eth-phy-v18-2-b00cc2fa0404@oss.qualcomm.com>
References: <20261103-sa8255p-eth-phy-v18-0-b00cc2fa0404@oss.qualcomm.com>
In-Reply-To: <20261103-sa8255p-eth-phy-v18-0-b00cc2fa0404@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bartosz Golaszewski <brgl@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>,
        Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>
X-Mailer: b4 0.17-dev
X-Developer-Signature: v=1; a=openpgp-sha256; l=5486;
 i=bartosz.golaszewski@oss.qualcomm.com; h=from:subject:message-id;
 bh=61whbJ6roe6jnMO29YpKZScWJ7Pcy+oOdtoc98Zj+oM=;
 b=owEBbQKS/ZANAwAKAQWdLsv/NoTDAcsmYgBq6bkOCsrgGZK5hRB/SuHx+7t/Xl4LqOwWHcWqd
 vyTyiiDIUyJAjMEAAEKAB0WIQSR5RMt5bVGHXuiZfwFnS7L/zaEwwUCaum5DgAKCRAFnS7L/zaE
 w1PVD/0RMe5hYZbOrd8PyebzfNISPAVLFOoXfPpYKD1HPqGZVhlECZY5VIYAmxljdMEyVWB0/TL
 BU4gXFW5PjhjMM7ZUHVVPv41/BXTvrhR5/Hk3wYkT0heCA8s6vaoOIMdQGd2w8rq37dvxwy7fVH
 RZYvcEdGxJQXp7Jrcuc5MXoZ8nvGKlAyK2wYJ+eRb+7zHBt2yLhDLR28CJP5oXGsgavuNteQoPC
 hNeSbpoQy3gpwv6b30GEuUOsDz7C9TjQHYWlDlfH7tPxaqf+IdaxuEPI/7Aa+MtsmMZbRnTj8pB
 7CiG6NwUYg2X6w/Sq5YOQ4EL9tCDZfCnDqaeEb6Ve6hOvE0Nno9y+S6g4uQSIMxQwtBIJmk8gTA
 Amxjn8vlXdt74U1+FtoSZnv1r419c7rw/SKSJqGoohkDLXFvlsjpQJIhAcZ20L+uWQaTJhP7+JL
 cge2JWPpv1wYncX+i4MMvdQLIB1sE8bTLBM9f+WvzfRZam5BPIPkD3wGe6SSGxDw6I1+ONtVgK4
 ER2kZUHCa3aD9gOsp+Tru7WQhSKZYta1FAnsOHTVFoxZVVZJRP2wxWBaouZR2LV+9D9Wu4cvM+T
 GEExXhjP7LeKOLL8So7J5xuVGYw70y5F/nQbU9lRa0Rs6xDlb7nc4i1tL55g2P4xbRgJPBIc2Jj
 VIqc/UeVH8j5yOw==
X-Developer-Key: i=bartosz.golaszewski@oss.qualcomm.com; a=openpgp;
 fpr=169DEB6C0BC3C46013D2C79F11A72EA01471D772
X-Proofpoint-GUID: 72ck59ZJdAAtmIOnPwHzdKVJbkJ0RnKi
X-Proofpoint-Spam-Info: AW1haW4tMjYxMTAzMDA0MiBTYWx0ZWRfX3fJlt+o26LtB
 ohjThn9DeGd+6cNG36i0FFfs64bFpJ5/Fjp5GXMKJhGTxyAQbPKw0yBDNiGkAqIMS3lvwKLuPBe
 jvOaC1qZNgHkgtZVuffkxC1kwNGEBAM=
X-Authority-Analysis: v=2.4 cv=RZ0FmFtv c=1 sm=1 tr=0 ts=6ae9b915 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=zJRp6_cAMcgA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=yx91gb_oNiZeI1HMLzn7:22 a=EUspDBNiAAAA:8
 a=hTw9fJJfFBl441PWpkgA:9 a=QEXdDO2ut3YA:10 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-ORIG-GUID: 72ck59ZJdAAtmIOnPwHzdKVJbkJ0RnKi
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMTAzMDA0MiBTYWx0ZWRfX9opRdJseBb/2
 /EfTuXlMoqAlgpGrwoGR+W4SC4+Ie3bhWBFFtMpCUXu5+B6PiFGtW4xN8u8+Ivzi8J6G/n4Rz4W
 8ybUepOYTZL+N2H526SX5RtSf6/BGGHUQPf1XaRcO+bCxrALWh8aQkZcga8436HfCDHMgLtx+5C
 Z1VJ7Z3MAPmf1Py58iYc5K5/ezhenswiTK9DK6C/j1M76oNpmKTmyiZ1VZEQfy3BJRX2qGLQF6q
 uaEPZKvgnI9OjbBBINuNY1Iv7njNoZX2T5+/xBRrIeIElMSz1iuHYTmw4y53HDWCpBj9IJFTxNQ
 N0O5Szjt9cxv0sPm45sCHU/69tX8HR6Op5a1OAgY2doiXQICbiEVcFK07jr09gP4m7PMJufQ7sa
 x8W9/+uOkStGOlaz9a7Vz1tC5hGUyFtqeroUxPkxl3wkA+RLFS7G524nOb7eYtz9xCHFdA6TywT
 WDBRz2LWCu6echxgkLg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-11-03_02,2026-11-02_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 bulkscore=0 impostorscore=0 phishscore=0 suspectscore=0
 adultscore=0 lowpriorityscore=0 spamscore=0 malwarescore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2610300000 definitions=main-2611030042
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261103_023607_184470_35E92A01 
X-CRM114-Status: GOOD (  22.65  )
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

Implement support for the firmware-managed SGMII/SerDes PHY present on
Qualcomm platforms. Do this as a separate driver from the HLOS-managed
variant as they don't share almost any code. The OPP table is added by
the SCMI DVFS perf power domain driver after being fetched from the
firmware.

Reviewed-by: Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>
Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>
---
 drivers/phy/qualcomm/Kconfig                   |  11 +++
 drivers/phy/qualcomm/Makefile                  |   1 +
 drivers/phy/qualcomm/phy-qcom-sgmii-eth-scmi.c | 113 +++++++++++++++++++++++++
 3 files changed, 125 insertions(+)

diff --git a/drivers/phy/qualcomm/Kconfig b/drivers/phy/qualcomm/Kconfig
index 44a805361e35d..2486720b9ffc8 100644
--- a/drivers/phy/qualcomm/Kconfig
+++ b/drivers/phy/qualcomm/Kconfig
@@ -260,3 +260,14 @@ config PHY_QCOM_SGMII_ETH
 	help
 	  Enable this to support the internal SerDes/SGMII PHY on various
 	  Qualcomm chipsets.
+
+config PHY_QCOM_SGMII_ETH_SCMI
+	tristate "Qualcomm DWMAC SGMII SerDes/PHY driver (firmware managed)"
+	depends on OF && (ARCH_QCOM || COMPILE_TEST)
+	depends on PM_GENERIC_DOMAINS
+	depends on PM_OPP
+	select GENERIC_PHY
+	help
+	  Enable this to support the internal SerDes/SGMII PHY on Qualcomm
+	  chipsets where the SerDes hardware (clocks and registers) is owned
+	  by the firmware.
diff --git a/drivers/phy/qualcomm/Makefile b/drivers/phy/qualcomm/Makefile
index 4b5e6640a6faa..41f192c9f4182 100644
--- a/drivers/phy/qualcomm/Makefile
+++ b/drivers/phy/qualcomm/Makefile
@@ -31,3 +31,4 @@ obj-$(CONFIG_PHY_QCOM_USB_SS)		+= phy-qcom-usb-ss.o
 obj-$(CONFIG_PHY_QCOM_USB_SNPS_FEMTO_V2)+= phy-qcom-snps-femto-v2.o
 obj-$(CONFIG_PHY_QCOM_IPQ806X_USB)	+= phy-qcom-ipq806x-usb.o
 obj-$(CONFIG_PHY_QCOM_SGMII_ETH)	+= phy-qcom-sgmii-eth.o
+obj-$(CONFIG_PHY_QCOM_SGMII_ETH_SCMI)	+= phy-qcom-sgmii-eth-scmi.o
diff --git a/drivers/phy/qualcomm/phy-qcom-sgmii-eth-scmi.c b/drivers/phy/qualcomm/phy-qcom-sgmii-eth-scmi.c
new file mode 100644
index 0000000000000..81bed5702bc17
--- /dev/null
+++ b/drivers/phy/qualcomm/phy-qcom-sgmii-eth-scmi.c
@@ -0,0 +1,113 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
+ *
+ * Firmware-managed variant of the Qualcomm DWMAC SGMII SerDes/PHY driver.
+ */
+
+#include <linux/device-id/of.h>
+#include <linux/ethtool.h>
+#include <linux/module.h>
+#include <linux/of.h>
+#include <linux/phy.h>
+#include <linux/phy/phy.h>
+#include <linux/platform_device.h>
+#include <linux/pm_opp.h>
+#include <linux/pm_runtime.h>
+
+static int qcom_dwmac_sgmii_phy_scmi_validate(struct phy *phy, enum phy_mode mode,
+					      int submode,
+					      union phy_configure_opts *opts)
+{
+	if (mode != PHY_MODE_ETHERNET)
+		return -EINVAL;
+
+	switch (submode) {
+	case PHY_INTERFACE_MODE_SGMII:
+	case PHY_INTERFACE_MODE_1000BASEX:
+	case PHY_INTERFACE_MODE_2500BASEX:
+		return 0;
+	default:
+		return -EINVAL;
+	}
+}
+
+static int qcom_dwmac_sgmii_phy_scmi_set_mode(struct phy *phy, enum phy_mode mode,
+					      int submode)
+{
+	struct device *dev = phy->dev.parent;
+	unsigned int level;
+	int ret;
+
+	ret = qcom_dwmac_sgmii_phy_scmi_validate(phy, mode, submode, NULL);
+	if (ret)
+		return ret;
+
+	level = (submode == PHY_INTERFACE_MODE_2500BASEX) ? SPEED_2500 : SPEED_1000;
+
+	return dev_pm_opp_set_level(dev, level);
+}
+
+static const struct phy_ops qcom_dwmac_sgmii_phy_scmi_ops = {
+	.set_mode	= qcom_dwmac_sgmii_phy_scmi_set_mode,
+	.validate	= qcom_dwmac_sgmii_phy_scmi_validate,
+	.owner		= THIS_MODULE,
+};
+
+static void qcom_dwmac_sgmii_phy_scmi_drop_level(void *data)
+{
+	struct device *dev = data;
+
+	dev_pm_opp_set_opp(dev, NULL);
+}
+
+static int qcom_dwmac_sgmii_phy_scmi_probe(struct platform_device *pdev)
+{
+	struct device *dev = &pdev->dev;
+	struct phy_provider *provider;
+	struct phy *phy;
+	int ret;
+
+	ret = dev_pm_opp_get_opp_count(dev);
+	if (ret <= 0)
+		return dev_err_probe(dev, ret ?: -ENODEV,
+				     "no performance levels available\n");
+
+	ret = devm_pm_runtime_enable(dev);
+	if (ret)
+		return ret;
+
+	ret = devm_add_action_or_reset(dev, qcom_dwmac_sgmii_phy_scmi_drop_level, dev);
+	if (ret)
+		return ret;
+
+	phy = devm_phy_create(dev, NULL, &qcom_dwmac_sgmii_phy_scmi_ops);
+	if (IS_ERR(phy))
+		return dev_err_probe(dev, PTR_ERR(phy), "failed to create the phy\n");
+
+	provider = devm_of_phy_provider_register(dev, of_phy_simple_xlate);
+	if (IS_ERR(provider))
+		return dev_err_probe(dev, PTR_ERR(provider),
+				     "failed to register the PHY provider\n");
+
+	return 0;
+}
+
+static const struct of_device_id qcom_dwmac_sgmii_phy_scmi_of_match[] = {
+	{ .compatible = "qcom,sa8255p-dwmac-sgmii-phy" },
+	{ }
+};
+MODULE_DEVICE_TABLE(of, qcom_dwmac_sgmii_phy_scmi_of_match);
+
+static struct platform_driver qcom_dwmac_sgmii_phy_scmi_driver = {
+	.probe	= qcom_dwmac_sgmii_phy_scmi_probe,
+	.driver = {
+		.name = "qcom-dwmac-sgmii-phy-scmi",
+		.of_match_table = qcom_dwmac_sgmii_phy_scmi_of_match,
+	},
+};
+module_platform_driver(qcom_dwmac_sgmii_phy_scmi_driver);
+
+MODULE_DESCRIPTION("Qualcomm DWMAC SGMII PHY driver (firmware managed)");
+MODULE_AUTHOR("Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>");
+MODULE_LICENSE("GPL");

-- 
2.47.3


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
