Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5D8B0C5B543
	for <linux-phy@archiver.kernel.org>; Tue, 27 May 2025 21:26:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7r1JuRmPI6aIGi8aXVnG6SGwUbfEBYdgQgFItotZN+U=; b=hovPWsnUMe4FCo
	fXLNDb/zM2dU5GReniV4PZLWT91ALIe76kCKeZ1cKeqGB+1Kzfd71FgyA6GlI1rBGty9DUmFKr17A
	kSxu4BqDOAzx3PmLDuObt5h34FrIRRZO/GESTHYuU7imMl5l9RBHbOq6l+EWstXscKoy/NE/TiBdj
	jI1bXqXzDITY+E7rlcKXTG2oU6borIDNAqPoASGuFnS4tOobkSDZaH4CjtmjEBUL6C6Pzu+oWDiVa
	5B/5hyuWnqzh+JWMHFVN2L5BpaIdJ8BeSkbC9j24XszBPNNQSJGs3Gk0ScAmeNuYrxooIh+kQKOUr
	4DIXwuLiz0W0Ppx87h8A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uK1p1-0000000BbIW-0YKE;
	Tue, 27 May 2025 21:26:55 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uK1Tz-0000000BYz6-0rV5
	for linux-phy@lists.infradead.org;
	Tue, 27 May 2025 21:05:12 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54RCXpxC012686
	for <linux-phy@lists.infradead.org>; Tue, 27 May 2025 21:05:11 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	LPkqIIVJzTbHReDF6liD2MG4ODSDIeHW603+18LbzM4=; b=eFOUBIeAvN/dWFCq
	xOi2G013rlZ7UNJ9SVpmPsTDwPGAB0oEuAjvAfGdvYksbrdY0symWV4SsdCUOsvr
	H5m77PaAXjMPVVVdCT9P3/+YHl8oK9cv1yc7qN690fZPZXzsLObszn5SD3YFxVpb
	nsJ6boRRZavZhS8IKbberwTGTRdwJqN0P9P2MJiWDKgdSIlh4kro4o67+Cydu+Cl
	YA4eIzQHP/iwFdzCEDtfnZHghqC0g1ri76po2htmvubU5wzX8UV4jdokohDGlsNs
	M4HGeox6sJpySVWdUqXm3ocOEI96B+VrtD5xDV0fycJ/NciETksjai7aCIAzwQIq
	v0TNbw==
Received: from mail-pf1-f197.google.com (mail-pf1-f197.google.com [209.85.210.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46w691aq1d-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 27 May 2025 21:05:10 +0000 (GMT)
Received: by mail-pf1-f197.google.com with SMTP id d2e1a72fcca58-73bfc657aefso2527871b3a.1
        for <linux-phy@lists.infradead.org>; Tue, 27 May 2025 14:05:10 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748379910; x=1748984710;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=LPkqIIVJzTbHReDF6liD2MG4ODSDIeHW603+18LbzM4=;
        b=a5oqEGgzfUARIKyD5hvm6fJ0X6XjklVmgoW3Fx1ygoI5QF5NhIAFAp4KXpPCMmp8gh
         YeBkYYMizdTCR3s+gb5CEia5vJrr23qZK0JEe/Sca3bbmSAcW9WaQ0EZNzFurjjBvaVn
         lbx0t5visXFKBApy9SabqaEgI2y0CMRA18qnq/TksU7Upkh5VwXpaMIF1yJkkFqYZg1T
         s+wo976z2t4wzaTFdbsq7zzd0AdoRs7pYO24hjB0SiUE405W9qvI9oQ/GEzhddZ4W6i4
         0rhXEK9EaUcAdy4VvZkbj+gbukBOZXRnmelpCoeSMy/XFsd+Hejdf5hnUYCMhug3EjHo
         BxaA==
X-Forwarded-Encrypted: i=1; AJvYcCVIuf7cncQyl+0OErY9AFAghlHEgsavL/mWTIAV21kIXUQjm6Bq7yH//7InyS/n3Pr7fvSW+Q5MfH0=@lists.infradead.org
X-Gm-Message-State: AOJu0YwCjbtfdYYfOPZVWDcNgEMOaIZ5kXtI6GR/vuOH5njUE0QwVZ8l
	ty4AW0K/hjtRLixbJWCIfvhBAcbyMfSo50WpsMWAkTwFAdJH980TB5pOKQxmmPa2jkaKo1G2gKv
	tTm6RCI5GA/mj30pLS0AJc25dcKAx8Vboh17LkAwl66zvELlVbDFU8hM42W+yld+Z2OHl
X-Gm-Gg: ASbGncumMYSUssooD7bOZUDml/JY8ngUjFNBj78OHzBq6GoQMH6oOWbSwaprIp7n9AA
	FtOHGevs8WMQLNHv1IMYwwthX9n+ircbWEsZmnupFGE3GVR0lyOzcd4gHhAPtXVSj9GHbUeUO24
	Usw8y4r7YWo5k3TdeYGu1zTlF2OaGsmIkgu2809SjGmtJuDx1tES0ROe3Omj0HOv+Vrz8tzq8xK
	IRd2Rff3jPQ0oaLVgKY0fxDLqCbui99Xv9I6DMm3NSzVOi/nOIIRFMWnLw9S5dNOQMzNtwDBLbI
	fgj56fCi5X1qcn+Rzjz1j3O2vtebOaCPut3n3PF2T/pf2MSxY0D/xctU9RwR1+qptp0=
X-Received: by 2002:a05:6a00:a96:b0:740:6f69:f52a with SMTP id d2e1a72fcca58-745fdac80demr20724852b3a.0.1748379909718;
        Tue, 27 May 2025 14:05:09 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IE89XO/JDVl6rd3hud7F4tMJEpNAb1237KFGDPWMLXu7CEJYly3v5ShxkxUVfmWpgn+xSWY/Q==
X-Received: by 2002:a05:6a00:a96:b0:740:6f69:f52a with SMTP id d2e1a72fcca58-745fdac80demr20724807b3a.0.1748379909299;
        Tue, 27 May 2025 14:05:09 -0700 (PDT)
Received: from hu-molvera-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7465e64836fsm29167b3a.26.2025.05.27.14.05.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 May 2025 14:05:08 -0700 (PDT)
From: Melody Olvera <melody.olvera@oss.qualcomm.com>
Date: Tue, 27 May 2025 14:04:46 -0700
Subject: [PATCH v6 10/10] arm64: defconfig: Add M31 eUSB2 PHY config
MIME-Version: 1.0
Message-Id: <20250527-sm8750_usb_master-v6-10-d58de3b41d34@oss.qualcomm.com>
References: <20250527-sm8750_usb_master-v6-0-d58de3b41d34@oss.qualcomm.com>
In-Reply-To: <20250527-sm8750_usb_master-v6-0-d58de3b41d34@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-usb@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Melody Olvera <melody.olvera@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1748379891; l=926;
 i=melody.olvera@oss.qualcomm.com; s=20241204; h=from:subject:message-id;
 bh=wCdzpXsKw8zqQyaRyA8EfWIj8Ra4i9wLlBGWl4/WARQ=;
 b=JUlbr6mF6I6cr5T9ZHdAGEijiVb5Mu+5V1BZNQUxXDHvq3yjKg+SamgDa52qed7t8bmWdrkdW
 42TjvtABTDkAncpbXnX/wXXb06bSMRhHbxRyyU16AIFkDNCwCzClSUq
X-Developer-Key: i=melody.olvera@oss.qualcomm.com; a=ed25519;
 pk=1DGLp3zVYsHAWipMaNZZTHR321e8xK52C9vuAoeca5c=
X-Authority-Analysis: v=2.4 cv=WfoMa1hX c=1 sm=1 tr=0 ts=68362906 cx=c_pps
 a=rEQLjTOiSrHUhVqRoksmgQ==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=dt9VzEwgFbYA:10 a=EUspDBNiAAAA:8 a=yCBuECYR7Rf6QDnvud8A:9
 a=QEXdDO2ut3YA:10 a=2VI0MkxyNR6bbpdq8BZq:22
X-Proofpoint-GUID: Qpbc7TExDs-hhr6c9tlNy3dXuHvmisVs
X-Proofpoint-ORIG-GUID: Qpbc7TExDs-hhr6c9tlNy3dXuHvmisVs
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTI3MDE3OCBTYWx0ZWRfX69SSpEgIjLgt
 1B2x+s3tcSgMfKyqpOiDPf/pHWv6h/JUgZ14+NM067ZPxUdhd2Hx2x96EiYRe2ObC5zZdo7Fb7Y
 mdHhX7memmGVbRtZwpvTLWuwkBCkXPMetY1xnfBmsGbe9m5M+/XobYYmTC9redaZ4oyvdwQ2LKv
 50Z2nZCn3oX/77Re8ZlUTYpgg/02K9h43ppOJdYzv8e26A09cJOuQeeeVNQz8DGTiDOjU+Az7eT
 drjUsWV/qo5sOv2XOwWrQnlTaow63zyboKfThHxChk3PqsHJTLsOzuh4LzcbPavCeen0YZ5kEu4
 OARc27rr9fcFyzo9gg4LpNcTsicoMaMrqAZNhlEjk44RzE2QSMn0ttDwH3zqqA/ArohCeNeq8lo
 Qp5rO6i72e6sLbyNpQcWS/CRHNFLMEy79A8SCHd0zfCCKM6UjGLrPMrhPSlNSponmrhtf+bn
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-27_10,2025-05-27_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 phishscore=0 mlxlogscore=589 priorityscore=1501 mlxscore=0
 bulkscore=0 adultscore=0 spamscore=0 suspectscore=0 malwarescore=0
 clxscore=1015 impostorscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505160000
 definitions=main-2505270178
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250527_140511_253047_57AFEC93 
X-CRM114-Status: GOOD (  10.70  )
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

The Qualcomm SM8750 SoCs use an eUSB2 PHY driver different from the
already existing M31 USB driver because it requires a connection
to an eUSB2 repeater. Thus, for USB to probe and work properly on
the Qualcomm SM8750 SoCs, enable the additional driver.

Signed-off-by: Melody Olvera <melody.olvera@oss.qualcomm.com>
---
 arch/arm64/configs/defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index 897fc686e6a91b79770639d3eb15beb3ee48ef77..f4de2473b3078543b68b01387ac7e3ab6951e4a4 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -1600,6 +1600,7 @@ CONFIG_PHY_QCOM_QUSB2=m
 CONFIG_PHY_QCOM_SNPS_EUSB2=m
 CONFIG_PHY_QCOM_EUSB2_REPEATER=m
 CONFIG_PHY_QCOM_M31_USB=m
+CONFIG_PHY_QCOM_M31_EUSB=m
 CONFIG_PHY_QCOM_USB_HS=m
 CONFIG_PHY_QCOM_USB_SNPS_FEMTO_V2=m
 CONFIG_PHY_QCOM_USB_HS_28NM=m

-- 
2.48.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
