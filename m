Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 37394D5C0D1
	for <linux-phy@archiver.kernel.org>; Tue, 16 Dec 2025 08:25:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Q5kJTqBfeoCLb1HU2sLal5L7DtF44ASxfJxwtfodXp0=; b=IYgnU9aY8CZjGN
	uCqM4pKZrQ/lZ395vxjgZu+To220Uuk72v4RkKEI3nldbZef1tlEkivyRSbxU/mXXLjX2dkCyAl3f
	BVJiQtStrgq+N53Y5Xypy9mD64NtG1XBQPgiOpic8438ZyNWmNaGIUii8VoKAEVk/bGqLHe7dZSC3
	boyuiK3ZBtA+NqtOq/yzmXGK7iHVOa8gqA7lAZyfJyUHc4NNHGv7+aYRqiib4/qHN9B2/ypkQXnzh
	3qwSt+SLOkwZQ0b4YnxIJSsJHTaWd2rRp7J1N4RVB2fwl6IcFcmyGdx2i2eT7bT5Qr1SxgsV16WLQ
	6MSQVymbitkhPW2hFzXQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vVQN4-00000004v3R-3gCa;
	Tue, 16 Dec 2025 08:25:26 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vVQN1-00000004v25-2AWb
	for linux-phy@lists.infradead.org;
	Tue, 16 Dec 2025 08:25:25 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BG8Mvwa1682265
	for <linux-phy@lists.infradead.org>; Tue, 16 Dec 2025 08:25:21 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=oyaTY0kBanBmC4VLaFLugg
	ssvQQcgigTDjGjs2S/ih8=; b=cui2aSIPoNTOhQgZ804MoSlo1FUN74naoydohp
	vvHstMoLVtGhKUmSKwoFWgS4g2S4mrV/F2ZrnW6sIAKMkoBSqcn8+SKmuKlB8ysK
	7gd0z7jvebW8kbgZD7ErKfgZCjVkmZ4Xn2Pz4HC5YCvH/toQmN8K9IXPbNO1tfX7
	BkkHXx74bIy/2fi7gSHE0Ov2n2v7S0hfPftwcHtCwQ8wnsfr2kcInzGh+3ukUaiF
	w9DMorHD4Kh2u/XZIcuu5GZ4jeAZJgil9FYiv/NDF07ENCTSCQIu9GUuFjN7mn4I
	qy6d6L/h//i440zWBOuFCPKnFQFNa3CdMzwYaqaLuheqm7sg==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b2q7tjsku-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 16 Dec 2025 08:25:20 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4ed79dd4a47so98949431cf.3
        for <linux-phy@lists.infradead.org>; Tue, 16 Dec 2025 00:25:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1765873520; x=1766478320; darn=lists.infradead.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=oyaTY0kBanBmC4VLaFLuggssvQQcgigTDjGjs2S/ih8=;
        b=cVCScKGRKhgDkAbouy3Ayq2gFarvRoz8L3oqBPhpy/hYA9bxq8HJjqqlr2WmljfedK
         ie10/NyDQkOw/5dr61r5B/AQyPFUMTHy9QFwDh6vNh2+nXBaukLAvE5mlBWR1OyO5C1E
         qHqt7L/maU7a7jXuRdBdTGHScMc1u5KQ2YqDKYBl55jd+DhDfmadkQWUWS+GDt3qaOMO
         Ny1qMEALyGkKCMzxXlC0IMhzxzl6x5bdBvKJlgOHKKjL07bumWLSMppcVOxRHByLb1zD
         goBHCyazVtyYkBcGhXupRoke5kWU3d8C40gSqs98e761X/ogku3tONF6sZ2iK4Es2TbV
         mjsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765873520; x=1766478320;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=oyaTY0kBanBmC4VLaFLuggssvQQcgigTDjGjs2S/ih8=;
        b=rtbHLOafMtz8QKRg78dhUUXF+zWDt91ykS3FC/y2cLmko6M1xn6ydK39yTnJWw0byX
         EyhEAyRO/NAehcTBASWYG+QozsspZ9kCzp50r+Rfrl2DXSxk+6f4oFDx2Bz625wQDlVi
         Mc9jabIYcLoAvDYkcGMZnEZoAVwU3PJ/rXs7lRDuy0G4YP43lhFHDfOPmIGQGkMDvj4V
         SsAIinvBBchmr/s75wMMMBopJffquJthIIDu2S5z7EJU5u+XncRrbd7vDjV16hl8aLLK
         60xYkJMmgGI0C5q1a2K9RVmzZiHIKbXRfjIUDtCjodCahg7J1b9KNRgCzWsSs13EJM0G
         y5Sw==
X-Forwarded-Encrypted: i=1; AJvYcCXTH1wvcDTMeGoY68cbcn+D8fa3DRvjGfXamBy37DkoDsdJmQXfP9wuYnbKeGwbDkbr/PosYo5lqOo=@lists.infradead.org
X-Gm-Message-State: AOJu0Yz+1IHBBzhVPPqKTVyoFvTf/LrlV5C8AhG4KgUuOulpqNREKpkf
	sM3MvLiHOG50syk0pSyuQHEzrpOEaO7HP2ImawhBIJx57Q2ZXsqvDAU5xgsD2HLKdR06sUc1KME
	0Y2n51DQbdeNOCCYHkxOHI0AmmXxOhTWTdxjQivR+Iw0C0X3CBk5FHUdxCRECACp3zgWT
X-Gm-Gg: AY/fxX4wbZhQmHoW0NCFQ8UR97CkbwXDTp30T/LntSmeo7mBZIzL8XWfS+iCTOZNtVL
	xbXIR3Uuuke7mwQ66V7lqFxBHSx478FnwXrnnVH3LlKBdDoOETo2kafTxAy+wIJN6aExown8YWm
	en8MF81UjmggYiwYTOx0NtnKkFjLuoPUvnkOOIZ+G09TYNM1lijOB4WtNql9diwtmx6vgvaPLsH
	ROwEfSWVakiNhpyEjiIudpttkODHmMhR4yceFBwQE4BdcdFaG0mYskkrM3ofTSmMi0XpIwn6LKx
	HWxPYtM94VtnYltLMdd7zzjTT/wSTzBWlIp8LLtjaw0jFXR/VARAhMk4FP0CVD1jAZE9CG+Sn39
	Q+AqhwI9ywMg6oPk=
X-Received: by 2002:a05:622a:124a:b0:4ee:5aa:9c26 with SMTP id d75a77b69052e-4f1d060ee27mr177541811cf.55.1765873520304;
        Tue, 16 Dec 2025 00:25:20 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGZLjYQHWWjOBFVoqLKEI6xhAvdwz8gex573C8G2rYnDfL09RnGGOU7r1VAReLBY0wXhN+jYw==
X-Received: by 2002:a05:622a:124a:b0:4ee:5aa:9c26 with SMTP id d75a77b69052e-4f1d060ee27mr177541711cf.55.1765873519776;
        Tue, 16 Dec 2025 00:25:19 -0800 (PST)
Received: from hackbox.lan ([86.121.7.169])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6498210fceasm15134381a12.24.2025.12.16.00.25.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 16 Dec 2025 00:25:19 -0800 (PST)
From: Abel Vesa <abel.vesa@oss.qualcomm.com>
Subject: [PATCH v2 0/2] phy: qcom: qmp-pcie: Add support for Glymur PCIe
 Gen4x2 PHY
Date: Tue, 16 Dec 2025 10:25:03 +0200
Message-Id: <20251216-phy-qcom-pcie-add-glymur-v2-0-566a75672599@oss.qualcomm.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAF8XQWkC/42NSw6CQBAFr0J6bZtpECKuvIdhMc4HOgEGepRIC
 Hd35AQuq5JXb4PohF2EW7aBuIUjhzFBfsrAdHpsHbJNDLnKS1JU4tStOJsw4GTYobYW234d3oK
 qrp6VrUvy2kCaT+I8f470o0nccXwFWY+nhX72j+hCqJC0v3pLF6+K4t7zqCWcg7TQ7Pv+BUFRM
 BTBAAAA
X-Change-ID: 20251015-phy-qcom-pcie-add-glymur-096b6d951fac
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>
Cc: Wenbin Yao <wenbin.yao@oss.qualcomm.com>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Abel Vesa <abelvesa@kernel.org>,
        Krzysztof Kozlowski <krzk@kernel.org>
X-Mailer: b4 0.15-dev-47773
X-Developer-Signature: v=1; a=openpgp-sha256; l=965;
 i=abel.vesa@oss.qualcomm.com; h=from:subject:message-id;
 bh=X+Wi/7dfYFuQjLETokYHwl55pAtRQD39RkfFKO3yGwg=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBpQRdhheuvPn5TFdQkL+Sq3gVQamzhs5ELdjXdk
 D8g/PcARZOJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCaUEXYQAKCRAbX0TJAJUV
 VrMqD/92rCTQwllXb+RrYwrczOPKXjE/M5hJ3weNGf6hUcZgDMOeoG323xl4OjbHzuOke7uxTVC
 W+/NQIAO+CY3E55Ry63drpjmYLtdBGbnPHI0YnxE9PALAL3GmO14W+GJQPoDqKL4nKeLTTFhfC8
 5jbtBhjJLJKY/DBEFckVL6Ogo1772CCaKbic+3kPYd/XqBVGFG0AWUOVDpX2t9Eg5UJeWpeVBx2
 qzWspPkCadG30o7TWir/i1NWcy1eriRr/BoloLWCMSmmh3AisBY8dGqE0hY+a/mhwsbK4ya8Ib5
 EWrlnNCggkf7NEM4rdqZmOcyr9toKTnUatLtUPHWnAC5iavY4mv6VvzJXAM0Gl/YhHIZwjSeuCT
 53qUnwM+1Oxy79/m1x7ZelM72OS1609lHdI0/imWQDNxn7I04katAzrEieMXeTwOb9e3+eBB230
 E0yFFpWIvcYnCLXlPm0A8nQoJ48HKrm3p4vC9Cecl66gQfi/MjX6EMqtcTFgUN1vINGHx4KdQ5G
 Col+12mhXsTg6ThGdT6rwXvA5FCMk8LRd/hr45PB5eaTIwa9c5JNnHf2D+JlKkTzXtOhyjIM5DS
 cduvX5llJpmqXju52BiuIP2VDtwOec9tIED8qXQagTRhsLT3o6T16VAUHibFDWW7obX8S19RS8Y
 dR6a7z5EOPSPalA==
X-Developer-Key: i=abel.vesa@oss.qualcomm.com; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE
X-Proofpoint-GUID: T4isW8Cx1b_LmJGTnSbR5yhsotqSjFkb
X-Proofpoint-ORIG-GUID: T4isW8Cx1b_LmJGTnSbR5yhsotqSjFkb
X-Authority-Analysis: v=2.4 cv=Qo1THFyd c=1 sm=1 tr=0 ts=69411771 cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=DdBtMnqNxkYIvXj6ev4VzQ==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=VwQbUJbxAAAA:8 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8
 a=LUK--ORpqSMM-KfJUm8A:9 a=QEXdDO2ut3YA:10 a=a_PwQJl-kcHnX1M80qC6:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjE2MDA2OSBTYWx0ZWRfX7jMngtgV9tur
 npvd5ANENu284yVs08dZ7GA5q9Kvdklc/CJ2BeNXA3ssrlc6MVrVksOBamIczECnC9MtllYA33c
 JWhxxwqv2XMtxtX/LGeHmhiQOiUdJQtDQZYNaBv7JKPBylKChkxfiAbu7RCs3lekAwRL/mSM4eZ
 nbjPoJRdQSpT+fbPSxe9Y4HkGJIYYsi0zADrPCzcNOZ6DDi8ZjvQWnVwI8bg1eLbLCMuCj8Ct10
 W3n3O776TxUWVk1FKpa8c00QSZuEU+Y64V0fj2+cR0Y4Snqm/emAtQfpfhoUet8uO2bSRswViIq
 NbH1pDXC2M5U4CPiwPJ8cFFZfYYojmNGKKIXf2x3IRHg+/aMoiuWafhWcZwX9Q9UOISr/j950vY
 ujfgtM9PL0dLJkXj0n1+1rxLHfq5zQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-16_01,2025-12-15_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 spamscore=0 adultscore=0 phishscore=0 bulkscore=0
 clxscore=1015 lowpriorityscore=0 suspectscore=0 impostorscore=0
 priorityscore=1501 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2512160069
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251216_002523_704173_9BEEB57F 
X-CRM114-Status: UNSURE (   8.87  )
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

The Glymur platform comes with two PCIe Gen4 2-lanes controllers.

Add support for their PHYs and document the compatible.

Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---
Changes in v2:
- Rebased on next-20251215 
- Dropped dependency since it was merged.
- Picked up Krzysztof's R-b tag for the bindings patch.
- Link to v1: https://lore.kernel.org/r/20251015-phy-qcom-pcie-add-glymur-v1-0-1af8fd14f033@linaro.org

---
Abel Vesa (2):
      dt-bindings: phy: sc8280xp-qmp-pcie: Document Glymur PCIe Gen4 2-lanes PHY
      phy: qcom: qmp-pcie: Add support for Glymur PCIe Gen4x2 PHY

 .../bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml   |  3 ++
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c           | 34 ++++++++++++++++++++++
 2 files changed, 37 insertions(+)
---
base-commit: 4a5663c04bb679631985a15efab774da58c37815
change-id: 20251015-phy-qcom-pcie-add-glymur-096b6d951fac

Best regards,
--  
Abel Vesa <abel.vesa@oss.qualcomm.com>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
