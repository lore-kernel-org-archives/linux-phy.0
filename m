Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ABE00CD98C5
	for <linux-phy@archiver.kernel.org>; Mon, 15 Jun 2026 09:12:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ep4isu+Kxw8xMimPFU77Ftrb82P3EvEjd6NIHBsxjuc=; b=J6i8/0IUl9aCSJ
	8lwdbLqPiOHdE53nIFdAyBO8K6reP8uGtmj6HUeDEUeQiTQqS2nUlVAs4Hxv+Zi53dePl138XgMgz
	E2do1mFkGkbaKhMh3sGs4maXHgJ6ArVkfKmNILuIKVxW7kKBeuW/t2NnvyvrasZvdcQOiTxlPOfAV
	+o+dDkGYBj2FBDm+xicz4eyCHmApqNvLUYkpAihvsR+Ru8Vvfk/kOlh2oNpCStpAw3JnF2Z6v7PrC
	ybKlzVcgYeEC+60jUwjOx0X16U3btwsAymFue3Z+2qO9e5uyC2yurLWRt72IGCLQ16r72fAVBb+Vc
	GBvIGOgQQCXvQVkEZz/w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wZ3NJ-0000000Dx8W-1Kyw;
	Mon, 15 Jun 2026 09:12:57 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wZ3NF-0000000Dx7K-2noD
	for linux-phy@lists.infradead.org;
	Mon, 15 Jun 2026 09:12:56 +0000
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 65F6Kxi03888466
	for <linux-phy@lists.infradead.org>; Mon, 15 Jun 2026 09:12:52 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=PfJKg8Yakt8VpLjLlx9CcAmkKLgOzxTG617
	/8JeNaAk=; b=YYdGFnq26kH5QqyU8bjvqxWiQ+kGldvSHy9V8u+L3iGduUfgIeS
	oiCdcwF0BOTjTWZN2SHu2iThVTpeMVHFk6nnsqr2vWPETQEsE6V+3g7XWarBY86h
	n31Fl6TiQ4aRr2IQlXqPWqdbBFaMq9LFlKhZqsBqdOeNjbuiveGNydolP4KDy2QR
	XrOfGUd8esgJmES+sN3ab+qoCXpLl0TaVShhPYmVQp8F5uGfSWESSH76tu0THOxs
	wYYMfPv6bd62zcX1+4CYq49kYmU1GDKTtxspkFGtt1hDj3EWiM33QejDxTt4G6c4
	AX0ch0KFeFCxX/JNGw+jgiD+YBJswfCgyhA==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ery8wxkxs-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 15 Jun 2026 09:12:52 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-2c0c20f7581so32480045ad.0
        for <linux-phy@lists.infradead.org>; Mon, 15 Jun 2026 02:12:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1781514772; x=1782119572; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=PfJKg8Yakt8VpLjLlx9CcAmkKLgOzxTG617/8JeNaAk=;
        b=fZ1UGQ+t+slnC3c3rFTcfcbXtI5rwiY+9/RZlRezgVuKU+ncqxI5lc7peBRS6bjfSR
         hnj2Ie6eLTd+0Nqi5+E3fCQ27agN83EJpR9w5QWcHof5zsIfit3Sl5wfyLljqCVhT+C7
         8pyLUfutfXucp9TRK/npWHvHCUG/c578U7VyUsAp783OFXxkeqHkLgT9o+SzYVaWH/j5
         ve1GveChjb3XIIEVD/2pU8PMGDoKxz4fGFqv29JoyqxEMBUcgZDn7Hy+EK9zj0X2n+5n
         3picdqxZAzM8RkBSWKMZYEP1r6BSzZAbyMqMyIqT0jg4Ir0t4zlfk3RnBm7P/olAN64u
         EsRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781514772; x=1782119572;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=PfJKg8Yakt8VpLjLlx9CcAmkKLgOzxTG617/8JeNaAk=;
        b=ax7kWus8/ldJhOq4Lkbn+p9ZdgaTtZxYWpwgsCgmJmwZ7nqPbSDUKqzSwoM4TENhaZ
         RdaA6Ui5jYPMTInwN02ML5iy+y+EMN5SYRMmX6yRC+9sry+2sS4xPNQQ4HKgQtczkyoI
         6OLs776v7wb37FTHOzSrO4pygirc2jv59rkLajG26Kb8t3gHyWgcgPzJiJYQfLUF4tlf
         I2WYz6s9QgqKbB2eTXT5J8KBrASXPbFHAXDaP76pddKSX7iq+GawstucYRw61jmAHf0w
         KtyEDZGaPLn0W8bVG+xFm4+FLp86to6kfGYmh62gViglJy+n0fhAF0Pp+aSY+T3KAoZw
         z4lQ==
X-Forwarded-Encrypted: i=1; AFNElJ+u8X9l0zc86w+/+zLUb5qIuILsObgO2KnJWwuSN3V86o9ol1RTNNDWtH0KbTdOQqxjcUs67pyxWwU=@lists.infradead.org
X-Gm-Message-State: AOJu0YxmXJNnha9lOVRQCs1xcnqHHflqej7P8C608SFBzdt327N1Iuw6
	4S18WdETpWdBCpIRBfTOEopNhJbqX/ot6Gg8z6E2jXY/gHpodprk+5SHK9jzFobE2jZRkgczYzf
	JAO/UrneOrLl5+80m1DP/wVptn5ZRpjuRHtyV7XfB/zXp+OssfxVePv8iExeVlHXVXBFN
X-Gm-Gg: Acq92OF7dT85IfNWzv2PCrNfeoacYaIMC6o7DEptN+iKnTO9XbfxHbPHVxcZD0GKSDV
	uX2Kct7uTLoKVT/eXEn3Y9EMgqJ6rHYOaom3+xd7YvZ9Fs5Qkz5IPuhQSKEdh5ZgJA2L88U6zSd
	l/wtk5vEFo1OdvXtQ60U3Z4S/stXqoqEpU0BvhTwOvQSXFMgK+ZE00tvWbujP87LMwJZlhxFgkf
	fQPSCs5FkrcySFxlrINwTFPKJ9WClTIBdE/n0XnB89fOYWLGkPldTRAPHntVLDmFdVlAciyXd0M
	1tH/bxebFczfJVnDmnGs0h3mnbSPYyko8J52juqd7Zh3+SOTI5yfgh49pHH8yBELqQkXxu8ylmA
	UYxc9LNrTwGZwHoUiYVidRB9T8iX02bAmaVr5AweoeUlEfYvuZ5jfyg==
X-Received: by 2002:a17:902:e808:b0:2bf:281c:d2d3 with SMTP id d9443c01a7336-2c4104137c6mr147565305ad.9.1781514771579;
        Mon, 15 Jun 2026 02:12:51 -0700 (PDT)
X-Received: by 2002:a17:902:e808:b0:2bf:281c:d2d3 with SMTP id d9443c01a7336-2c4104137c6mr147564875ad.9.1781514771145;
        Mon, 15 Jun 2026 02:12:51 -0700 (PDT)
Received: from hu-pkambar-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2c433079999sm91669065ad.66.2026.06.15.02.12.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Jun 2026 02:12:50 -0700 (PDT)
From: palash.kambar@oss.qualcomm.com
To: vkoul@kernel.org, neil.armstrong@linaro.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, mani@kernel.org,
        alim.akhtar@samsung.com, bvanassche@acm.org, andersson@kernel.org,
        dmitry.baryshkov@oss.qualcomm.com, abel.vesa@oss.qualcomm.com,
        luca.weiss@fairphone.com
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-scsi@vger.kernel.org, nitin.rawat@oss.qualcomm.com,
        Palash Kambar <palash.kambar@oss.qualcomm.com>
Subject: [PATCH v4 0/2] Add Hawi UFS PHY and Controller support
Date: Mon, 15 Jun 2026 14:42:40 +0530
Message-Id: <20260615091242.1617492-1-palash.kambar@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-Proofpoint-ORIG-GUID: j1M5h4kEWxrmJuk3pBDXBCgOug-OUPD_
X-Proofpoint-GUID: j1M5h4kEWxrmJuk3pBDXBCgOug-OUPD_
X-Proofpoint-Spam-Info: AW1haW4tMjYwNjE1MDA5NiBTYWx0ZWRfXxivStW08QUZt
 eLMwEUxHxxjzY1tQyIxoHLaepNxPQ7Wmr+oSicN83zFNiEztTLUloHReHw+QE00xQXHmCrBcyJ/
 rKt705OcLcJP7Df3ay22VXgf2GhQ954=
X-Authority-Analysis: v=2.4 cv=IqAutr/g c=1 sm=1 tr=0 ts=6a2fc214 cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=FelO9ux0wxsA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=_glEPmIy2e8OvE2BGh3C:22 a=EUspDBNiAAAA:8
 a=wRtOOnJjwWicnHpPwtUA:9 a=uG9DUKGECoFWVXl0Dc02:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNjE1MDA5NiBTYWx0ZWRfX9qvnrHOY0kRU
 jAKpEHj0IDvsPRqmzVUjrjZBEt0WolIWHg7fCeb+g40T2HFTJM4lzotUM5NVH688+oFWPfrtVg/
 o9BiSVFXr9hbLfpwyFdbkYkJI6xLy+YKtdaDcp6wmfl17vxur1zlQ4lWjVVWB1WHbWh8UHLNm2G
 F9zmvuAJEpyv9x1oRAVWU5VmcJn57WHGeDBHmXeOm4jWcY+3B9ElzcJgEvyeKGvSmr9jicOOS4T
 aGWqBVOaNNyhoWPyNHKtpxDjeo7YfIoGkme5eQqUnPH42upu7Q8JJk4/AGEPesJDRBjeeUOTOHj
 DTifsEsbJP5dz+fUcYHu46vmkl9Y4EDqebfD9SfOWfki3WJ8/a+jmKTov+y6v/J8YDxXz3p5E5B
 l7KtPHmhvbqPPNYJBx+tNt9s1MdyTEF7RwZe1f0PmAapxElsiwP0peI0JCpWLQww2BEDsl8Zsua
 sw1SyqAjbliT9KKqSWQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-06-15_02,2026-06-12_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 suspectscore=0 priorityscore=1501 malwarescore=0 phishscore=0
 adultscore=0 lowpriorityscore=0 spamscore=0 bulkscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606040000 definitions=main-2606150096
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260615_021254_937191_118FD8FE 
X-CRM114-Status: GOOD (  12.77  )
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

From: Palash Kambar <palash.kambar@oss.qualcomm.com>

This series introduces devicetree binding documentation and PHY
initialization support required to enable UFS on this platform.

  1. Devicetree binding documentation for the QMP UFS PHY
     used on Qualcomm Hawi.
  2. Initialization sequence tables and configuration required
     for the QMP UFS PHY on Hawi SoC.

---
changes from V1
1) Addressed Dmitry's comments to fix versioning for PCS and qserdes.
2) Addressed Mani's comments and fixed missed compatible string and
   binding name correction.

changes from V2
1) Addressed Dmitry's comments to remove whitespace and stray line.

changes from V3:
1) Addressed Vinod's comment on missing macros.
2) Binding patch for UFS controller has been merged, so removed here.

Palash Kambar (2):
  dt-bindings: phy: qcom,sc8280xp-qmp-ufs-phy: Add Hawi UFS PHY
    compatible
  phy: qcom-qmp-ufs: Add UFS PHY support on Hawi

 .../phy/qcom,sc8280xp-qmp-ufs-phy.yaml        |   2 +
 .../phy/qualcomm/phy-qcom-qmp-pcs-ufs-v7.h    |  24 +++
 .../qualcomm/phy-qcom-qmp-qserdes-com-v8.h    |  13 +-
 .../phy-qcom-qmp-qserdes-txrx-ufs-v8.h        |  37 +++++
 drivers/phy/qualcomm/phy-qcom-qmp-ufs.c       | 139 ++++++++++++++++++
 5 files changed, 214 insertions(+), 1 deletion(-)
 create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-pcs-ufs-v7.h
 create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-qserdes-txrx-ufs-v8.h

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
