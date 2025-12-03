Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 29B34D1266D
	for <linux-phy@archiver.kernel.org>; Wed,  3 Dec 2025 08:37:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ru4hFh41KmBrRj79Lhfi7MYbopAvLvzrZrA62Wd0Ieo=; b=1nciS2p2PyRqh7
	w9QGAHylcIV4HN59ovKeV9brpol4jba/5Ue8ozd+G+4zpnNtX3fIAsi0IojnoCR8Lndmh14NeAoHT
	Vx7ohqssz51qXtFVsc5wopEMPM7WsnvvuEsK1GdWJfBnL+fE1GnF3Mcb0u//XAwiv51UAsaQdkUbL
	rgeYYWItq292yNKzPqdYQ6g+NoPB3b7QxfdX/I/2/q3FrK5qsn8AWIBAWuqCL/nqc4i2hGUJZgFvY
	6ZKc5MqE/4z3oNoY7Rxugty4aipE8vedosIBaU12WpTyg7dY5DSsJS1HF9JnQDFS/bHlKhE84vCgV
	duukJvj1/dLKLeUK+Wxg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vQiM8-00000006Jx9-3l7v;
	Wed, 03 Dec 2025 08:37:00 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vQiM6-00000006Jw3-22wT
	for linux-phy@lists.infradead.org;
	Wed, 03 Dec 2025 08:36:59 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5B33tuq73194560
	for <linux-phy@lists.infradead.org>; Wed, 3 Dec 2025 08:36:58 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=d6KQ332SY4r
	oUde3OPXCoCkBr8FmmOBZNjlgBZOAEB0=; b=VbOlu439wpGIzTQDA1WANwZj63c
	twgl4KAJXLQK/GPtky17VJewD4WCzru/6oVeSwJZtevM0zUoJuUi/NAFRzMlEOE1
	nnNZUm/oJV5TDI+RmB6vv1eV1R9RwtECNjOx50P8X+Ai1EbIFCr7xYMug2IZsb6I
	n31OGsatnywavimX7g3rzjq7og+lwfy9xNRYOmnc//WxyJ8BDoCpY/+nFwleH29I
	RtR9PUOG5x92GEkWwA4q/+a6AYe8aNAWkKIdl5ZtDVo3v8XnissxPd/uodsU++Kq
	h9JKfYLCpKJCYARoO/vWPzx12xfwGIt8UpAYH3qcoqoN2g8TkFu2loucV9Q==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4at3qjjhg7-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 03 Dec 2025 08:36:57 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-297f48e81b8so10475845ad.0
        for <linux-phy@lists.infradead.org>; Wed, 03 Dec 2025 00:36:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1764751017; x=1765355817; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=d6KQ332SY4roUde3OPXCoCkBr8FmmOBZNjlgBZOAEB0=;
        b=FhpxEU2UybhDCB6yQdLNtCV+8YxMLRDNfHM1GXbweTC74G56L8EW4ztPwd/Tyviygq
         PLtYM+ozprfOQ4S4o8/gPvE7X4/FnKJn3LJAMHel0xXmwfkLS15vMMd28tR2pRvAmICN
         9hfH1GDQY3ZLP+LJvNoOxKmRrO3f8rkM7XJDcmHo96dQUgNrTno7N6n4ETTWiSqWymVR
         I7KLnRoiyCmM3qg5K1LXJCh9iDnKBNBuFy8/XMxLFBSLrq7hXFj7mk7EQElqkJ4/y83D
         IbOB/GCCIG56+x12GbtMW+85e4tFYLfX3MQBd96v6drXX/avAKBGe6KsoNxVB9KYGtVG
         y5sQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764751017; x=1765355817;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=d6KQ332SY4roUde3OPXCoCkBr8FmmOBZNjlgBZOAEB0=;
        b=TnvyLqmaYhGs7CuZRhidY+mZy88vsK1ObfU4qDs/FRKcbzee/zXE+/Hfls+yIvViRy
         CTK1rP52ZfZGmZ4MdR8I4CjM/US4qhK651qPiEOpNA9non+ziV1u+ICXjnHqMAoEqBJz
         mip9e9Z042QI5UhEHJ2o2YePoNk+oqm2xw6z2c/qvtSriTNq22GylBERDiTrQPr6cWMG
         rtnAMiK1i4biy6FSU5KLkEBivzqCRWlaeyfwIvE13I8kDB5vq5vghK36YwCyPXfaNlXq
         SZ7VwMNqkgmfzA5Mqt64i3DZvtXEWJTMbKU//u0D8Wg/b5sFzGVRcdUehh0inpB+/Jn9
         c+Sg==
X-Forwarded-Encrypted: i=1; AJvYcCWVVnzC6dURPmZwqrh8+zHodiIN/ldALqSGQ0Zm5zM6Ieh48ImpVyQNDLrKxYyyTVphKCe/c52h/CY=@lists.infradead.org
X-Gm-Message-State: AOJu0YwazBVX1USzFNMjNLh5k0uB0PjhEpXtu7f8tTbamo2202/kLamK
	eoCMmpIVQ5CyTEvqzrbsmqUFEbepO4nwXECCXJGzgDNLZCKpfjHB1akEJ9sNWk1wqHx1vMYmzCO
	mOKUfflf4W8OzIsOtuAdJj4Oixosms1ncbodGyrnrUvtVmNKQYCgG/lHjibiudxLdNki2
X-Gm-Gg: ASbGncupLUhxDUUDKzUdChcAJw5ejKhbz+mZdxMfH5hRH1di39yQIw7eoKxp90BQUCz
	eHTWgD41uiJxQMEKw9oPE7ruOfA5bVW1tjXRUsi1FU0+cv06giKOhBPwQsIDom1Nb4CtaaIVgf3
	tM7HVvVr1cCDMwVM3BOddiiwk0cAnot1d2d6iRnjWV7iYyRX8nIzeKmNo5KWZ2na/3GRea71g93
	Oq5jzS54AUYtIiOC5V6Kl9XdgUq6PbboCd8ENT3fSr5AmrrELgyctgWP4wGjQmT0hvXJ/Dug7EB
	dbQM9+BnFXJObd91eh56cUq+uqW3uck/1wQi8n7/zHGXxF1lrDSios/vx5L/tCXGaTbB8W9FWwE
	GV+s+eTAgKY29EBf/cuiu+80PBgeY/q68eAZ/AQ6MDQYwfTw=
X-Received: by 2002:a17:902:e950:b0:24b:1585:6350 with SMTP id d9443c01a7336-29d67e715b2mr24140285ad.11.1764751017112;
        Wed, 03 Dec 2025 00:36:57 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFvnUwQGxzUwaUaVXvisTvu2yas0UaIAw6ZXo//eLlY4iKyWBDrY1+fylW8imkOBcqLQYzFSQ==
X-Received: by 2002:a17:902:e950:b0:24b:1585:6350 with SMTP id d9443c01a7336-29d67e715b2mr24140055ad.11.1764751016604;
        Wed, 03 Dec 2025 00:36:56 -0800 (PST)
Received: from hu-kriskura-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29bce41785bsm175707985ad.20.2025.12.03.00.36.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Dec 2025 00:36:56 -0800 (PST)
From: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Luca Weiss <luca.weiss@fairphone.com>,
        Abel Vesa <abel.vesa@linaro.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Johan Hovold <johan+linaro@kernel.org>,
        Pengyu Luo <mitltlatltl@gmail.com>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
Subject: [PATCH 2/3] phy: qualcomm: phy-qcom-eusb2-repeater: Add squelch detect param update
Date: Wed,  3 Dec 2025 14:06:28 +0530
Message-Id: <20251203083629.2395451-3-krishna.kurapati@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251203083629.2395451-1-krishna.kurapati@oss.qualcomm.com>
References: <20251203083629.2395451-1-krishna.kurapati@oss.qualcomm.com>
MIME-Version: 1.0
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjAzMDA2NyBTYWx0ZWRfX7qss2rce90kM
 Kkw7tKVeH/yKM5RX+NIAiZTS0dfcJsgQ6o+nn5aWK3PaqPKWl0k1U3H1Q4OONsdSJWTLlIAEBSH
 EDfQiXl2a5S193gImoLzz41FheOEEB/p96zW8k1nBKJmYiFH8+OKMFwYpdCwaOIalR72VE2I0EB
 hzmPkjdTM2tTmYGgCqVZ1JIpAtVtc/VbcW0urVHDd/8kFpGDPp37olSm2Y/jEG6cch4EeqvDgBw
 Z6kG09+8o2dt1gpqnHN14HlVFUO92QazaiSkbQisx7jL4zdpSKAp1zH275yAzofWIp5OPCuYNCP
 XOadh+Gr0O0zK3HVfHw6+O6iQpMkK/lz6c8EFNR9ybjQ6mm4P7w1fiM0EIrnaAzIBFSSiztoWBw
 MLfxxEm2bLSOP5fGzozyJG/8nbR1PQ==
X-Proofpoint-ORIG-GUID: oNBqA6lMBGiqCeaEltcjtwWGwK8-AM1s
X-Authority-Analysis: v=2.4 cv=QohTHFyd c=1 sm=1 tr=0 ts=692ff6a9 cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=1szMwrN-8cuOqQ1sM4MA:9 a=uG9DUKGECoFWVXl0Dc02:22
X-Proofpoint-GUID: oNBqA6lMBGiqCeaEltcjtwWGwK8-AM1s
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-02_01,2025-11-27_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 impostorscore=0 malwarescore=0 adultscore=0 suspectscore=0
 bulkscore=0 clxscore=1015 priorityscore=1501 phishscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512030067
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251203_003658_537176_6B2CE487 
X-CRM114-Status: GOOD (  14.90  )
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

Add support for overriding Squelch Detect parameter.

Signed-off-by: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
---
 .../phy/qualcomm/phy-qcom-eusb2-repeater.c    | 21 +++++++++++++++++++
 1 file changed, 21 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-eusb2-repeater.c b/drivers/phy/qualcomm/phy-qcom-eusb2-repeater.c
index 651a12b59bc8..e5812626a871 100644
--- a/drivers/phy/qualcomm/phy-qcom-eusb2-repeater.c
+++ b/drivers/phy/qualcomm/phy-qcom-eusb2-repeater.c
@@ -37,6 +37,17 @@
 #define EUSB2_TUNE_EUSB_EQU		0x5A
 #define EUSB2_TUNE_EUSB_HS_COMP_CUR	0x5B
 
+static const int squelch_detector[] = {
+	[0] = -6000,
+	[1] = -5000,
+	[2] = -4000,
+	[3] = -3000,
+	[4] = -2000,
+	[5] = -1000,
+	[6] = 0,
+	[7] = 1000,
+};
+
 struct eusb2_repeater_init_tbl_reg {
 	unsigned int reg;
 	unsigned int value;
@@ -120,7 +131,9 @@ static int eusb2_repeater_init(struct phy *phy)
 	struct regmap *regmap = rptr->regmap;
 	u32 base = rptr->base;
 	u32 poll_val;
+	s32 dt_val;
 	int ret;
+	int i;
 	u8 val;
 
 	ret = regulator_bulk_enable(rptr->cfg->num_vregs, rptr->vregs);
@@ -147,6 +160,14 @@ static int eusb2_repeater_init(struct phy *phy)
 	if (!of_property_read_u8(np, "qcom,tune-res-fsdif", &val))
 		regmap_write(regmap, base + EUSB2_TUNE_RES_FSDIF, val);
 
+	if (!of_property_read_s32(np, "qcom,squelch-detector-bp", &dt_val)) {
+		for (i = 0; i < 8; i++) {
+			if (squelch_detector[i] == dt_val)
+				val = i;
+		}
+		regmap_write(regmap, base + EUSB2_TUNE_SQUELCH_U, val);
+	}
+
 	/* Wait for status OK */
 	ret = regmap_read_poll_timeout(regmap, base + EUSB2_RPTR_STATUS, poll_val,
 				       poll_val & RPTR_OK, 10, 5);
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
