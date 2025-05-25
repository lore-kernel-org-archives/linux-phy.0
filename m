Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F0960C54E90
	for <linux-phy@archiver.kernel.org>; Sun, 25 May 2025 05:57:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=P3UjsGf5vBSWmPB4qq86RD5HQRJ+yTR77DLQ1quh0Ng=; b=Xtj46qqe4w/5zw
	/G7JYYUWaszcz9FBs5nwiTQukBzDtySIQWBMmKxR3ITUU9CJkL20xM77c7WboW8XIQjsSFxumXHa3
	37ApqPrtN/gzTBLTftNSwnyIRK0Y7ih+UpTbSukeaSVmA3jsI4I0TgNUbF2+978SGKI+dUNBwZmJc
	EQ0V7aw5cEuR6w9SMvAsck6URCHj50N6iI0sm0DJP2+IMrvnPWMoN6eVjBs41FJYmVW4Hqv5vRdob
	20jy9kSJXljL3nguYzaxIkvM7oueV5G4gCrPBwdUoVdMECR4R7XnssYBFgC4rbX1lmD037NZ77efT
	695WdGZ1fm1+wr15MLkg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uJ4Md-00000006bf7-30iW;
	Sun, 25 May 2025 05:57:39 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uJ4Mb-00000006bdS-0ROk
	for linux-phy@lists.infradead.org;
	Sun, 25 May 2025 05:57:38 +0000
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54P5NSAf017566
	for <linux-phy@lists.infradead.org>; Sun, 25 May 2025 05:57:36 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	zCBrRVec53XJAJcr8a7rcd7CgHI9045Hz8PKjdUV4vM=; b=GB7hrnOh7GM7LAYR
	m62gizWlb1RHncaAKE0ua+Rt/1OnsmXG3YbO+WTjuKU70W1BF0tgB1+Mq4i+i6hW
	q9/3sIZEYZ3DGLLRhwgkLZDkAhKM9FzGQekbLKuj++ZLh30+9swLWdNN4iH/3RfF
	1f9zCKYpEAXcEbGfUkLFGlZDfKVEyh2iK56oye8LNwFscG470Q4ALQ46lSpyf8WQ
	7AsmD2YSu1suOrlRR9v68J0W8xk3u4GvBsyaGS7lfZgEj2gqMjLCHr0isQiiDVww
	sHVp3qjF/Rsxl2dnZecY/U2YI1SFWo4JEgJgmnCO/2uB7U1tXkCXJKIug2QWWtDM
	DLbBZg==
Received: from mail-pg1-f197.google.com (mail-pg1-f197.google.com [209.85.215.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46u5ejsjps-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Sun, 25 May 2025 05:57:36 +0000 (GMT)
Received: by mail-pg1-f197.google.com with SMTP id 41be03b00d2f7-af534e796baso593270a12.3
        for <linux-phy@lists.infradead.org>; Sat, 24 May 2025 22:57:36 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748152655; x=1748757455;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=zCBrRVec53XJAJcr8a7rcd7CgHI9045Hz8PKjdUV4vM=;
        b=kjtdrNXDIwuvg+i29v1ZSO12HsevyWLN//XvitZamfxS7wlclaFf1m99oYe0wbYUiN
         Kdw+HiAaN70dAEOLN3bL4shgR/PzMVZGVah5qcUX6QL2aEATNn2iC46TsIhcGpacV+5A
         E5lQyh8dMyeNBb1VWfIZtkjts21WhgYjS6oTD8tr2HTz1LQ+gAJ0oYk2iL09K2Murhjq
         bQfrYiu2frnylv4S85KQ/y/dllixTQaBTksbBQsxZnsuVLxlUKmXn4d6KDT3jK+fRrYD
         YeGKKA40sCP6lXJ24si4NPhLImWhMJJSfJrYXrZGEQJveepnXiaHzxPl9GsW7jbak12d
         QS7Q==
X-Forwarded-Encrypted: i=1; AJvYcCVF6lYfFS9s0of7Ccas0LmV7bWK8KFt0Ul7Pf1qK1MK8Ha1HWP3ALdsuCE5XMw4pq5Dlsp1A7ikmdY=@lists.infradead.org
X-Gm-Message-State: AOJu0YymcsOgMVwGApD+shFShweyK8N/oQbrdmTLMKLIlO0uBkXEY3BN
	4npU7POYUd5WnyqbtRub0P3UgD/i7GdTZDfsIXoR2oLziDEeDIEPXgxs67FijY8GdPudrsoCKoo
	H/8NChy7SAKoa1a24/Bz4+04e638GZd7GpwUKO85B6LESv/ma/wGU0iqdw6oewfGExpg3
X-Gm-Gg: ASbGncsJrS1nO+cIQOLp8Ji16BSkDi1fcyK1WRHrCR032s/JgtsgrjWNJM40e5vQtcY
	le9OWSnedPXGYmPJvhn7dVu7UZ+HNqRUNeigyddsLq5lbT6VyyNPNeFf9iIbnEzoN4yr57Ps+oS
	8KL/FpXxQCDXpcYHixBViGHstmOgYcX74oyicrYrYSTosABN7ehLgYk19o5mhm79XM3v3qx7XJO
	dibkkjkhwa1BHYJv2NajhmPFZx6psn+M21nnfWSr8TFMAM0QMtQdE5wB7JDO8bw+S9h/1m+ZCJr
	b5wF9ej9QJBhBK0WGBrAoy3wFli5IPbwEEjH
X-Received: by 2002:a05:6a20:6f08:b0:215:f6ab:cf77 with SMTP id adf61e73a8af0-2188c28ac6fmr7979909637.23.1748152654959;
        Sat, 24 May 2025 22:57:34 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHYB9ys5LU41WMsUNzEUbblt6pbgRfq0ZbrNTfi12+yDo2o8NBvJF6v2pb7A79rQ2Bbbd2jZg==
X-Received: by 2002:a05:6a20:6f08:b0:215:f6ab:cf77 with SMTP id adf61e73a8af0-2188c28ac6fmr7979885637.23.1748152654611;
        Sat, 24 May 2025 22:57:34 -0700 (PDT)
Received: from hu-msarkar-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-742a9829a4dsm15594030b3a.107.2025.05.24.22.57.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 24 May 2025 22:57:33 -0700 (PDT)
From: Mrinmay Sarkar <mrinmay.sarkar@oss.qualcomm.com>
X-Google-Original-From: Mrinmay Sarkar <quic_msarkar@quicinc.com>
Date: Sun, 25 May 2025 11:27:18 +0530
Subject: [PATCH v3 2/2] arm64: dts: qcom: sa8775p: Remove max link speed
 property for PCIe EP
MIME-Version: 1.0
Message-Id: <20250525-update_phy-v3-2-5b315cd39993@quicinc.com>
References: <20250525-update_phy-v3-0-5b315cd39993@quicinc.com>
In-Reply-To: <20250525-update_phy-v3-0-5b315cd39993@quicinc.com>
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        krishna.chundru@oss.qualcomm.com, quic_vbadigan@quicinc.com,
        quic_nayiluri@quicinc.com, quic_ramkri@quicinc.com,
        quic_nitegupt@quicinc.com, Mrinmay Sarkar <quic_msarkar@quicinc.com>,
        Mrinmay Sarkar <mrinmay.sarkar@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1748152639; l=1254;
 i=quic_msarkar@quicinc.com; s=20250423; h=from:subject:message-id;
 bh=ZrWCEywu0mWwC+jWkykM+m7UXWwtOyeU4GP0qpQ4gdA=;
 b=Nol7LDvUZeI/WcrBH10lNY/PP4g26x7BSa57S+p9a1rFdJ1BMFs4YC/57HgFFjJAxnjdGJUXG
 Jov7H1oROAaBPWVX374fo9Rx4rBOEDS7JAQ84wyluHeGu5RQUOFn4aJ
X-Developer-Key: i=quic_msarkar@quicinc.com; a=ed25519;
 pk=5D8s0BEkJAotPyAnJ6/qmJBFhCjti/zUi2OMYoferv4=
X-Authority-Analysis: v=2.4 cv=GIgIEvNK c=1 sm=1 tr=0 ts=6832b150 cx=c_pps
 a=rz3CxIlbcmazkYymdCej/Q==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=dt9VzEwgFbYA:10 a=EUspDBNiAAAA:8 a=A2jF9ndpTPISZJbatkMA:9
 a=QEXdDO2ut3YA:10 a=bFCP_H2QrGi7Okbo017w:22
X-Proofpoint-ORIG-GUID: 8qOUS44Q9nwnKvVptY3ylsqCpyakY9ZN
X-Proofpoint-GUID: 8qOUS44Q9nwnKvVptY3ylsqCpyakY9ZN
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTI1MDA1MyBTYWx0ZWRfX3nLHY1YIqIJD
 l7ad4wddhsffs3kuHXFyZ4GuhPcLKy5ZM8lzrAJ6yiEpd/Ni6BfUQr2WSyBPMLdgM32gLlyIi6J
 Jh/J0uXvn31Y06/jrH3HbfotTHB7rKtif87EumsjHzk7vLr4punGctMDwDOoR6E8SSVErLLqiPS
 kKk40sWHWc258IJYf6zJZTQ6CjKMkOk3kS/EZNmzncxRnylzVNr436EDwWrsfP1uudXt1IQ5sgq
 6kRM97YLT3NcQrvA8jyYdQa9uySD6VZMTYDI3SiymTxlg1TSI7uDfmoM6DsXr70hg1fg85F68Lb
 Kg2ZuxsvCmBkAOb1s4SlqliigZJzhBSano/kD+Tf324AFxUM7evCiIHWtpo2NEKRh1mTcyR3lNg
 czh6y1fQBTsn/sMqO66iR2dMkgV6RkCvjqxE8tyLF53837wtrSxJ9REoCM6cHMGTrlbX0lV5
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-25_02,2025-05-22_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 malwarescore=0 bulkscore=0 clxscore=1015 lowpriorityscore=0
 adultscore=0 priorityscore=1501 mlxscore=0 phishscore=0 spamscore=0
 suspectscore=0 mlxlogscore=999 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505160000
 definitions=main-2505250053
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250524_225737_267168_18A6E7CA 
X-CRM114-Status: GOOD (  12.86  )
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

From: Mrinmay Sarkar <mrinmay.sarkar@oss.qualcomm.com>

The maximum link speed was previously restricted to Gen3 due to the
absence of Gen4 equalization support in the driver.

Add change to remove max link speed property, Since Gen4 equalization
support has already been added into the driver.

Signed-off-by: Mrinmay Sarkar <mrinmay.sarkar@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/sa8775p.dtsi | 2 --
 1 file changed, 2 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sa8775p.dtsi b/arch/arm64/boot/dts/qcom/sa8775p.dtsi
index 5bd0c03476b143444543c68cd1c1d475c3302555..b001e9a30e863d8964219c8bd61bc328be71b256 100644
--- a/arch/arm64/boot/dts/qcom/sa8775p.dtsi
+++ b/arch/arm64/boot/dts/qcom/sa8775p.dtsi
@@ -6462,7 +6462,6 @@ pcie0_ep: pcie-ep@1c00000 {
 		power-domains = <&gcc PCIE_0_GDSC>;
 		phys = <&pcie0_phy>;
 		phy-names = "pciephy";
-		max-link-speed = <3>; /* FIXME: Limiting the Gen speed due to stability issues */
 		num-lanes = <2>;
 		linux,pci-domain = <0>;
 
@@ -6620,7 +6619,6 @@ pcie1_ep: pcie-ep@1c10000 {
 		power-domains = <&gcc PCIE_1_GDSC>;
 		phys = <&pcie1_phy>;
 		phy-names = "pciephy";
-		max-link-speed = <3>; /* FIXME: Limiting the Gen speed due to stability issues */
 		num-lanes = <4>;
 		linux,pci-domain = <1>;
 

-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
