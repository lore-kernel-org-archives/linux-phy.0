Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 37C8AC369AB
	for <linux-phy@archiver.kernel.org>; Tue, 15 Apr 2025 04:23:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=sO7aQjO7+uU7xrLnT3O31A646n7Xfkg3CBKscYn3l5M=; b=FvUr8h4g5yHFhM
	ghMI+uMC8V3g9XFSmDwTImsu89at6g9ykrIAs9gjOnWI0N3PsvP9mzCW3E6cby+KRawS/j5abqqnJ
	2zESYUByJt2H+Xi4feOiS52MpvDD+Wje5nx1xyCnsMIvp0Mgn+Sl4OH5lF9axt+xmAWtkJmGO97lj
	RhBaoHc8f8G5nAXEmATD6MyeUu3/c4ADzzgNVAZvogSJl9cFz0bZjKELB1aZAknBr7YA41gyimIBW
	kaA1sCoG81iyXXsJrfy1uNvAW8jF7xjemXE5h1iYEIfMRdiaV/2SUD1Kz81YNaia7bQvonOCFllgD
	y29r3oHZxZYIdQ6Q0p8A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u4Xp6-00000004QkI-2tEC;
	Tue, 15 Apr 2025 04:23:00 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u4Xp4-00000004Qjl-1bnQ
	for linux-phy@lists.infradead.org;
	Tue, 15 Apr 2025 04:22:59 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53F15Pjx020421
	for <linux-phy@lists.infradead.org>; Tue, 15 Apr 2025 04:22:56 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=QK5ggKjgEaGC+RdtEJ/3TC
	Ttyzna3JscU/P1oJ6de7Y=; b=VfyLCInoqbRmKp7Ehv7Oa+eiT0Y4PjdIOZl/gv
	T6q2ABWmf5HpOzU+ry+dkwxH5b3XbgqVdOpGOcIURkUpIMiSch+Req9pMmfgKHkj
	SpQnDJWFnzBcPL1xf0re4aTyEpjWjalnxRbmH6uR7wcSuVSk6OSJlFRj3xukBJGL
	GbfvQioOrKGEhWQ2Z9GZvQI+lY99oBocplALouEtGBMgsAgoC9hD5p75ZYhT4tI3
	VhIbeVfVAS86pPS1EdErmCi12OV+CmRUQhr+e6TZ7zq1fg/mzxPrE543czqMAibr
	TtrqwkkuqeNW4nvqI4wYcXS0fk3YtRSKpkGXVcTBR18eKxCw==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45ygj96kgq-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 15 Apr 2025 04:22:56 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-22650077995so71367525ad.3
        for <linux-phy@lists.infradead.org>; Mon, 14 Apr 2025 21:22:56 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744690975; x=1745295775;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=QK5ggKjgEaGC+RdtEJ/3TCTtyzna3JscU/P1oJ6de7Y=;
        b=I/hdj02wDO/fFfZzNamKkPSUNNkVFIJaThhxc9lF4MXf+Ltf9PE3eVmWVtNmsZTwJT
         ldvwcM6hOB3Ho8vxk121/DOCZJpXfd+ob7Vbs3+MQtm/gbXpJRqwCjdF5wP/itCRoUb8
         4Ns2z5kpasaeOmsV0a2S8MT2ZUn6p4o6xupLlaihZZEXr+sEPFVj0g/wfdD47vsRV/lK
         66INGjpfAwmLKID9zDdjZBVX/aFVudBf0DJtbjkQSAig9S7WQO+qe7cZeORcQl/rJNIt
         EV8x7Vx52QXK6xSqpSi8IciEkEY3wQRxZ9v8Ng4KI1yj3bV7fxTCFaOTHqTJghd2fsof
         l6cA==
X-Forwarded-Encrypted: i=1; AJvYcCUssVNxDDRqcmGiD3B40K/+G/UON/9oaB9Eh05MdflEftGvNnu9F+DcMOuJUvgppLRtzzItCFnKQbY=@lists.infradead.org
X-Gm-Message-State: AOJu0YzLWi9O7DEHGUsrBrFW6IWDVW0rjjG2vmvmyYtLpAOqX7Io31h+
	0HzhItew6KnRyedA+fxAhQZ81pH8GOMNizc4H2KorfiVVV02LRlAWiDLeyhbB5QwQkPUX5vwwjF
	wvle+s08qImb5zWeQpaZOrDq/53l1ksEa5YYt1BbJKtqfWgTRNGOEqUfkU9AE9Jz9
X-Gm-Gg: ASbGncsPVHlF55ZsqM//Nmlv3xO9zpk6PJf7N8YywTcWPR6P0oPygheRFZ3dnva2aIG
	7roaZCgsRgB8qrBcNCGR/851v+T7DbmtjlHrzo2MyDFeujm9Cf3NtZmPiv/8TMpV5v9YlVSfzjm
	KqS3PSVW5JZVwxV/XcHMKyMlMkt9hIT9sCva0Tc8X83cj2Nzs+tEe22r3Y4rk1r9ALEawcy021n
	VSX5T2wtdjW/0YO4YoOXRMXVyIfRZHLhrm3m4A+9bsE0E0IOssg6eaMeimITjlwqK3MkBsDuXNw
	xM3RiNr5h3hkRuJCCWxY0sgk4wfu9Sec3doUX4SsOckCyttTBOYoEgI7L8EjLVWasmoW5MDETBk
	PGDxEep3NdS5NaEDrjZxgTf5stbAqf2g79X91yqMVTXwpxSI=
X-Received: by 2002:a17:902:d58b:b0:223:501c:7581 with SMTP id d9443c01a7336-22bea4ab90amr210194915ad.16.1744690975359;
        Mon, 14 Apr 2025 21:22:55 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IH7+uvkdGknQb00oQUI1NfaDMk4fzN02uM7D8bZc8IMJdJh2THCZXSQRaS1L2fXBEdTdfKOLQ==
X-Received: by 2002:a17:902:d58b:b0:223:501c:7581 with SMTP id d9443c01a7336-22bea4ab90amr210194655ad.16.1744690974929;
        Mon, 14 Apr 2025 21:22:54 -0700 (PDT)
Received: from hu-kathirav-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-22ac7cb5047sm107381865ad.170.2025.04.14.21.22.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 14 Apr 2025 21:22:54 -0700 (PDT)
From: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
Subject: [PATCH v3 0/2] Reuse the IPQ6018 QUSB2 PHY settings for IPQ5424
Date: Tue, 15 Apr 2025 09:52:49 +0530
Message-Id: <20250415-revert_hs_phy_settings-v3-0-3a8f86211b59@oss.qualcomm.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIABnf/WcC/4WOywqDMBBFf0WybiQvte2q/1FEUh1NoBqbSaUi/
 nujq0Ip3QwcuHPuXQiCt4DknCzEw2TRuiGCPCSkNnrogNomMhFMZExxRWMIfKgMVqOZK4QQ7NA
 hVUWuZCPqIrtpEp9HD6197eJrGbn1rqfBeNAfOlb80k2ccgr1SYHkOWh+ujjE9PHU99r1fRrPV
 mIsBufnffwktqq/OydBGY2RYw6Caanlt7hc1/UNrV9NLhgBAAA=
X-Change-ID: 20250414-revert_hs_phy_settings-47643d2c75ba
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Varadarajan Narayanan <quic_varada@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org,
        Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1744690972; l=1328;
 i=kathiravan.thirumoorthy@oss.qualcomm.com; s=20230906;
 h=from:subject:message-id; bh=UySY5QTJHVg5GTrBaYA2PTmlS4zMHyVLJFT/hmWX9lc=;
 b=SjKOYhH6N5+aNsnBq8lsBu/EjLKWHVVfmg98xJODXNImkUJXu1K5vNVvJ9ZpeHZIoNkwAEPEy
 8ZCGdEF7QgCAxhRUg4Yb6LHZXffABOj0A6UChS7Vq+ZZW9Jalpy1XsY
X-Developer-Key: i=kathiravan.thirumoorthy@oss.qualcomm.com; a=ed25519;
 pk=xWsR7pL6ch+vdZ9MoFGEaP61JUaRf0XaZYWztbQsIiM=
X-Proofpoint-ORIG-GUID: c8MH9HrhdRT0LT9OKSAS5iWHE7OtHxzE
X-Authority-Analysis: v=2.4 cv=PruTbxM3 c=1 sm=1 tr=0 ts=67fddf20 cx=c_pps a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17 a=IkcTkHD0fZMA:10 a=XR8D0OoHHMoA:10 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=5a8PNGn9bNKLW8I9e00A:9 a=QEXdDO2ut3YA:10
 a=GvdueXVYPmCkWapjIL-Q:22
X-Proofpoint-GUID: c8MH9HrhdRT0LT9OKSAS5iWHE7OtHxzE
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-04-15_01,2025-04-10_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 suspectscore=0 bulkscore=0
 priorityscore=1501 malwarescore=0 adultscore=0 lowpriorityscore=0
 impostorscore=0 clxscore=1015 spamscore=0 mlxscore=0 mlxlogscore=754
 phishscore=0 classifier=spam authscore=0 authtc=n/a authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2504150026
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250414_212258_611126_47617CA3 
X-CRM114-Status: GOOD (  11.12  )
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

With the current settings, compliance tests are failing, especially eye
diagram (Host High-speed Signal Quality) tests. Reuse the IPQ6018
settings, as mentioned in the Hardware Design Document.

Merge Strategy:
--------------
Both the patch in the series should be merged together to avoid breaking
the USB feature.

--
Changes in v3:
	- s/complaince/compliance (Mukesh)
	- s/design team/Hardware Design Document (Mukesh)
	- Link to v2: https://lore.kernel.org/r/20250414-revert_hs_phy_settings-v2-0-25086e20a3a3@oss.qualcomm.com

Changes in V2
	- Splitted the patch into 2 patches, first revert the commit and
	  then reuse the IPQ6018 data (Vinod K)
	- Dropped the R-b tag from Dmitry
	- Link to v1 -
	  https://lore.kernel.org/linux-arm-msm/20250407-revert_hs_phy_settings-v1-1-ec94e316ea19@oss.qualcomm.com/

---
Kathiravan Thirumoorthy (2):
      Revert "phy: qcom-qusb2: add QUSB2 support for IPQ5424"
      phy: qcom-qusb2: reuse the IPQ6018 settings for IPQ5424

 drivers/phy/qualcomm/phy-qcom-qusb2.c | 27 +--------------------------
 1 file changed, 1 insertion(+), 26 deletions(-)
---
base-commit: b425262c07a6a643ebeed91046e161e20b944164
change-id: 20250414-revert_hs_phy_settings-47643d2c75ba

Best regards,
-- 
Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
