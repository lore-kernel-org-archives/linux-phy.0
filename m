Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 96980C369AB
	for <linux-phy@archiver.kernel.org>; Mon, 21 Apr 2025 22:23:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tC9JQ8NmpFnniwFGqBrPxVbiGZmWY/n2RNXR9efa9qQ=; b=VoBrKPN7+QoG4m
	l7QZtYVW2kHl7xgJIcRmyDIy+4Y4iDPAITZCrZCCqMLL8kDSH+0/RTX1JQOO2Vx26dqtxu05Uw4GD
	xf2MbfUdeR7mKTWDZulSbh0/+VYDo9DSjqzM0RZVSpl9WWq9izfHdRiTkJ34QyKztRTNtsm9nEyoK
	fNoPmn/S41rvwGm1WLKIJ52/YijewB6QAtj40lbME6VV6KtWeIv31aesgEoGtbjIlP4gnGPIv5YiW
	QehY2Oh+Vc0E30Yo7ecuXiBjzWwA9mJwOo+cfv7C1M5k/naWTwEcw/xMhQzpJ2xPWieVonVG8cMk0
	5Fm35FE7uetmgeKGT2Sg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u6zY0-00000005Jm2-1Vb6;
	Mon, 21 Apr 2025 22:23:28 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u6zC0-00000005Gfh-3Vq3
	for linux-phy@lists.infradead.org;
	Mon, 21 Apr 2025 22:00:46 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53LK3nT9026924
	for <linux-phy@lists.infradead.org>; Mon, 21 Apr 2025 22:00:44 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	qWTXURAP1xs3OjY3ekXdGEHaecX834c7vUjqi/j8RkY=; b=inqe26SMWzgk+olk
	8pb1BlcpihFC1gP192aJ1bTHekvehUB5atwg8oPVJHx45bycmq//3/05qtgYt5sj
	sqod74pnbPzZnGqQ1Tu4++7hglC9JaEi9Ncda4LPdGgPlqFdutsa+wPr3ZHOVg4z
	UGJRPhvg1xDpvhmoFIr4uOLPr5SicmhxxC2SZmFSpkkygV3f3hoQFrWOlVLGBxhY
	EzYTExkAYKDc4EGCku7UPeBBcA6zKdZ2iebVNVcSZKSF2ol/zr1nWSruq5/hzlDi
	DHsX3HNQT1D6RMTi3yV4mm8JctTtOEDEBnVq68g67O1H8MpHp08wp0yCOxrC9z9h
	z+OTvQ==
Received: from mail-pf1-f199.google.com (mail-pf1-f199.google.com [209.85.210.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4643wwnf18-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 21 Apr 2025 22:00:43 +0000 (GMT)
Received: by mail-pf1-f199.google.com with SMTP id d2e1a72fcca58-73917303082so3042047b3a.3
        for <linux-phy@lists.infradead.org>; Mon, 21 Apr 2025 15:00:43 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745272842; x=1745877642;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=qWTXURAP1xs3OjY3ekXdGEHaecX834c7vUjqi/j8RkY=;
        b=JTOuFlQCxw6FAK1Jc8sviZ2L/C7dotpRzqpBiQ34Ti4Te0TS0vnX9Uvyg8DINbYBzB
         aYTN4rWE1SsMp830ZYj/pJzKeoiViL/v8lTsdJkbnijvZl45+5+SrX95b7KTtiaWCZv1
         shXuLVG8dtCsWNCmhqT0P44oLY8g/NlJY6+rT4tWYflD5cWBik/gyKvvdsl23qQiEk4x
         1oG+T5zVGTdNx2vkrwCSzjCHuyc6wn959fCHEWELXr78F0oDiE56/vaD6+Sx1SfwD/pV
         imqTArto9mtaBvZeTSI25jAXC1+zoulDlG0V5ZXEL3C3SfP/n4UgCUVSMFLGZwiJ5pBy
         zZ1Q==
X-Forwarded-Encrypted: i=1; AJvYcCUhR4zATyt0YkOWgfdQ3kYaBqtQsa1tMaJU84qyWUf1blkVJJ6OzR5ajd+N07DG2jthnKID8N4e/Pk=@lists.infradead.org
X-Gm-Message-State: AOJu0YznFd6pGAjrofOL3elVgpf/zLtAbiS+DA8CMecM5VJA9d7ifubQ
	jJsHESDw/oI5v/14htqNgDTvXWLHjVaj/9u6qBFDOp3OzGhL6pT+sAoDdqzIxbf03RVUE3CP6Ci
	fKqLD60uFqg/etSRL2AmL1owu34xdrcOYjqNleTC3OJtmwpqLP7fNFv52OWdKwGV0
X-Gm-Gg: ASbGnct+xMEaynq2YB1RC4YeN/de0nXLrF73pvSH9Fabb9XhzHH5gA3E8A2GRaeym8K
	vuCFVysBKCPTo+D4y62vGN+ATWHH7CGwm73M+iwqYuwhp3fuEvMstip0fsx0X/iFQLXcX3W5ALZ
	IjzOBIQX8cEKIVmMxOEOq0XF0mpv8Grs5KYRvS/a4utMINXJOcTs1hwAwWMJTMTbC2LgCrpf7Em
	itLHgFZhRWID3i9FxdSBOAXr5HzdE0ztRahhc18NbwDi6MZD4/cV3izYAQXDMI8KMI7B24Qi2L/
	TqsC53hY6pODBzFFayXRFlOpqQrM4oTVn173ZVXMLNgtsiaBgN9dLMYQS5D8F+EWI20=
X-Received: by 2002:a05:6a00:8d86:b0:736:9fa2:bcbb with SMTP id d2e1a72fcca58-73dc15f1a87mr18386206b3a.24.1745272842537;
        Mon, 21 Apr 2025 15:00:42 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IH3LJ/nbFki9xpBGx4aK9cppDDFvMSSRS0eHYF1pJ6KN0f3/2PsOfl+A4A3toEqxCnFOpG7Lg==
X-Received: by 2002:a05:6a00:8d86:b0:736:9fa2:bcbb with SMTP id d2e1a72fcca58-73dc15f1a87mr18386147b3a.24.1745272842129;
        Mon, 21 Apr 2025 15:00:42 -0700 (PDT)
Received: from hu-molvera-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-73dbf8c04c5sm7107917b3a.24.2025.04.21.15.00.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 21 Apr 2025 15:00:41 -0700 (PDT)
From: Melody Olvera <melody.olvera@oss.qualcomm.com>
Date: Mon, 21 Apr 2025 15:00:17 -0700
Subject: [PATCH v5 10/10] arm64: defconfig: Add M31 eUSB2 PHY config
MIME-Version: 1.0
Message-Id: <20250421-sm8750_usb_master-v5-10-25c79ed01d02@oss.qualcomm.com>
References: <20250421-sm8750_usb_master-v5-0-25c79ed01d02@oss.qualcomm.com>
In-Reply-To: <20250421-sm8750_usb_master-v5-0-25c79ed01d02@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1745272824; l=899;
 i=melody.olvera@oss.qualcomm.com; s=20241204; h=from:subject:message-id;
 bh=V+if1JLkseIXHxqMs/xUBPBndUeGFuwmXk5nZsv0vMk=;
 b=P2msdcQ+cRrE1nqqLOLNemRor9mB4mfi/qU6Jdv8heLzSYFu9kZh7yW0+lYDdXdjlRFRSNa0F
 7kXdxM9uxuXBejERREp0R9xpV0FE7WRSvokr6+5C9Oawzj9wlxiv9qg
X-Developer-Key: i=melody.olvera@oss.qualcomm.com; a=ed25519;
 pk=1DGLp3zVYsHAWipMaNZZTHR321e8xK52C9vuAoeca5c=
X-Authority-Analysis: v=2.4 cv=IpEecK/g c=1 sm=1 tr=0 ts=6806c00b cx=c_pps a=WW5sKcV1LcKqjgzy2JUPuA==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17 a=IkcTkHD0fZMA:10 a=XR8D0OoHHMoA:10 a=EUspDBNiAAAA:8 a=kAC1uNjDR6N9yz4uFL8A:9 a=QEXdDO2ut3YA:10
 a=OpyuDcXvxspvyRM73sMx:22
X-Proofpoint-GUID: iFByP0_CRyDARFhQq9oXuZzA44YU0Hdw
X-Proofpoint-ORIG-GUID: iFByP0_CRyDARFhQq9oXuZzA44YU0Hdw
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-04-21_10,2025-04-21_02,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 lowpriorityscore=0
 spamscore=0 adultscore=0 clxscore=1015 bulkscore=0 malwarescore=0
 suspectscore=0 priorityscore=1501 mlxscore=0 mlxlogscore=570
 impostorscore=0 phishscore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2502280000 definitions=main-2504210172
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250421_150045_067699_0DAD8E37 
X-CRM114-Status: GOOD (  10.37  )
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

The SM8750 SoCs use an eUSB2 PHY driver different from the
already existing M31 USB driver because it requires a connection
to an eUSB2 repeater. Thus, for USB to probe and work properly on
SM8750, enable the additional driver.

Signed-off-by: Melody Olvera <melody.olvera@oss.qualcomm.com>
---
 arch/arm64/configs/defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index 9e16b494ab0e258908811be082f678099ed2cf4c..f0ab5ba8df045bbcbab16ab736342f3d261f4297 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -1575,6 +1575,7 @@ CONFIG_PHY_QCOM_QUSB2=m
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
