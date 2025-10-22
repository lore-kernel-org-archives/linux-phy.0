Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DC65ACCD1AB
	for <linux-phy@archiver.kernel.org>; Wed, 22 Oct 2025 06:50:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ml8z1q/+4pL54xoUbSid5/H2qSkan53Tz14XU5HmfZc=; b=DDTpJFn3hy3wrm
	M1Rk2ZOvA3gWLyxtbgTqtyFHIRwGu9kcqXBcSyHdQULDw6d7wJ95/pN/sV9seBpd/yzbCXzaIA7ax
	s+o3fsSfQRPPd3hHbdsn+XAKxxfBShP/vpz0HB0Rv/SkpbZSa7fxxLMTpdw5IyoxbZdhL84tXNWtp
	iY8ccHe+rMHF1nD3BUI3C2e4tvapFVH6qMSgw+K5xxGMuTJJRto3mLPPYYIEtSGrLg13QkYgblqCs
	20EOWxhQZAwxUOr5mv80deO/IaFErgA9wwsDFZhZnaT1iKcUOVAb35DI2zNHKCAYvf9GhunkjQ2g+
	6931t74cg2yQcQiK5LDA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBSgD-00000001iwV-2euA;
	Wed, 22 Oct 2025 06:50:41 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBSgA-00000001isu-1b8r
	for linux-phy@lists.infradead.org;
	Wed, 22 Oct 2025 06:50:39 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59LKf51h011570
	for <linux-phy@lists.infradead.org>; Wed, 22 Oct 2025 06:50:37 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	UZEDudDcCpTGZPPYZsISbbU3+prU+iJo6gJxhAsFFbA=; b=R+QzKRGR1NgelHIg
	OeYeqbbcd4hjwxWGhLyUMDHKfzdYksC6GvigQGUVH9RVPVGKhH5iPbpl35pXxWn8
	i+dTKgNzu7aEek3VvYOm1paZpey4yFiQINnNF9VsRPxCb4FvPjBn1el2nzQvetYS
	NpqTPfCnXjGU2grMwsWo2kYghVhPH4ZwEFav+fxBh68vRLBVK0lbg5UVC3b+rOyC
	Le8n5MBU1pm9qyKQRAJ7q9o0z1A2Gz58eNVbX8Pc4jFiPnSGJ5Gwde0u32TNkbW4
	p+tE6NzOq8/muskCumGJG2YUV5BOP5p7ZEGaL82Ud94behDDmBQbkMu4MoWRxxqX
	yLxvqQ==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49xhe0hdg9-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 22 Oct 2025 06:50:37 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-290c07feb72so51921125ad.2
        for <linux-phy@lists.infradead.org>; Tue, 21 Oct 2025 23:50:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761115836; x=1761720636;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=UZEDudDcCpTGZPPYZsISbbU3+prU+iJo6gJxhAsFFbA=;
        b=GqlhMLVgV5M0mLCYQ86jKallbXFGaJdenEriGIN/ap/Hls1Lbkvko57Ncaxn2R0w9v
         +/OG7M7voW9l5R01a0ZtMWZC+WotcnKqXdh5UmCuPHkx2wpauf0IC9vB4s4lMo6yY1ZT
         HTkWsEU7JyGy/wUf3xaVtW0kNImNcYb24cy7lkIHQlGjlCQ5aGUOmJftpcsagHA+SJHg
         FyejEwmqSWSLmriJ8Bp0baJs3VZrp/irb/mLyGpNx5t996IaIEEWamB/8vqONdOdOTNC
         kmuxL4U7+nUCF7PmuIbLetIF6oTJI5oudjC2HmLTPp0iRsljuo1leEPJFq1XvpJ+QKUG
         9IwA==
X-Forwarded-Encrypted: i=1; AJvYcCWtOpj03EyAT1sjdCL1PjobCySy7q4fHtY09AiUSaAQYk4bAW+I8c5rmsD5YBwOr8Jh8gmyAXvF35c=@lists.infradead.org
X-Gm-Message-State: AOJu0YwpXgX/l3tlckMWAyF88olmn2Z7pAtzrUX6XApktiHb5l0oVTSL
	xn6xzgl+e0IoEEkIA8TUihzksRkfQooYK6fyZQeXwHR1Q76pLj2g4nzGF05bccrXUf4K6mPhytO
	La7pWPLXoAwuPdMhJsuqPZ3Zx+ypNc1s9oviUWd0JxwuPouXPUV/DRulHzi4UV4GGz7ib
X-Gm-Gg: ASbGncvGgYfAI1CXPx8xBedWN/GWSc9Z7w8iv1D9VK1RXcvtJa7bHEblZNEcdWTdydM
	ZWMls37+QaI3P0viMwreyOSWrCLkR2I8V1rPi8f0KiqViQWzS6YIi3L35mHUki1nolvtlnq/WzG
	YD+fiVTSgX02LVSX3Wb0/FIU/eXNYaCsvYDLwrdQjvgduuAP4YPKNoldoQs+GkUsCcFxqzuJrhl
	/9T0NotoOP0V13H7YIbhQ8PRLa6C2b/t3aTDAdWUzCNongzc+Nc0hAWE4GoEr5lloK9lUSDIv78
	Mxpo4JEnBbOXehg20xqtZKLXH4CkFcjVjxjlc6EAH2ezVXhVa32azQoa4VIYiJreokvyxhzfdbH
	A3htXZ4iPUhtKBn+BQxOfShlzZCwHtCsimHbcX5a1tFKOOk8kHw==
X-Received: by 2002:a17:903:298b:b0:282:ee0e:5991 with SMTP id d9443c01a7336-290caf831f8mr255694385ad.30.1761115836280;
        Tue, 21 Oct 2025 23:50:36 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFCpodpjCxx4fmCbEkBSzBkPT2S5EgIPUUrmaWcMLrK/fxVAvVzC8itWrjTf66DpjqIW4r/8w==
X-Received: by 2002:a17:903:298b:b0:282:ee0e:5991 with SMTP id d9443c01a7336-290caf831f8mr255694115ad.30.1761115835763;
        Tue, 21 Oct 2025 23:50:35 -0700 (PDT)
Received: from hu-jingyw-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-33e223e334fsm1560285a91.8.2025.10.21.23.50.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 21 Oct 2025 23:50:35 -0700 (PDT)
From: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
Date: Tue, 21 Oct 2025 23:50:30 -0700
Subject: [PATCH v2 4/4] arm64: defconfig: Add M31 eUSB2 PHY config
MIME-Version: 1.0
Message-Id: <20251021-knp-usb-v2-4-a2809fffcfab@oss.qualcomm.com>
References: <20251021-knp-usb-v2-0-a2809fffcfab@oss.qualcomm.com>
In-Reply-To: <20251021-knp-usb-v2-0-a2809fffcfab@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: aiqun.yu@oss.qualcomm.com, tingwei.zhang@oss.qualcomm.com,
        trilok.soni@oss.qualcomm.com, yijie.yang@oss.qualcomm.com,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-usb@vger.kernel.org, Jingyi Wang <jingyi.wang@oss.qualcomm.com>,
        Melody Olvera <melody.olvera@oss.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-99b12
X-Developer-Signature: v=1; a=ed25519-sha256; t=1761115829; l=989;
 i=jingyi.wang@oss.qualcomm.com; s=20250911; h=from:subject:message-id;
 bh=N04B8FuADvzjDPvyuTKyodc40jM2jOda/r7xCjpf/i4=;
 b=lyc1bzXd8D3qrqhkPjdIO4ToLd856fsMOQjTqs+gbO9UGKnkm09XbzvKE5ab1HNflxNdwWWYS
 aCllmsoNgwDCGZ+KAUg1vYrJBono8GVFYpjDq1xuqz8mek8HQWTqdZw
X-Developer-Key: i=jingyi.wang@oss.qualcomm.com; a=ed25519;
 pk=PSoHZ6KbUss3IW8FPRVMHMK0Jkkr/jV347mBYJO3iLo=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDIxMDE2NyBTYWx0ZWRfX1Gj492h4W96m
 PQnSMXCEK1sbDDiynPyARrwH7kJF8xKF8bwbSR9oWoCUcwRBbgY8UFMufiuvUsBsAx0zDUt78NL
 B+U2lkHj+DVeM0fX9JBdSTbZapU3bd94WqEbQEs3V/Sjwtim4bJ1HRbBjZmTZgmivKHb107k5BW
 pQCUkzYQzpTODXTmphlPQzkHAqxD46IxH1G2hKdDpPAytTh7+sHWTY0M0KVGwlAdXDsiPbwrJ9R
 JQ1HAql6My8aJ+7dJYKd+6rpm3Ij8ArmrxKv9/xv3v0Outtof/qYyVlmGxP6IVInRjy0+R22AFn
 /wGyaWak8uLiBB3YW0Vt7x67AwEGl1m8FHHr0jY+isCGyZALtR2hmzJM3E5xBHKliq8DmKytyo2
 kLkGjyhUIbIO9goWwgKMjqt6AN80mA==
X-Proofpoint-ORIG-GUID: tHTxgFvW_5E9TtpODv6Z3Ba5g7xsuCUP
X-Authority-Analysis: v=2.4 cv=WYUBqkhX c=1 sm=1 tr=0 ts=68f87ebd cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=4ROhr7NTa0bsJorruOEA:9 a=QEXdDO2ut3YA:10
 a=uG9DUKGECoFWVXl0Dc02:22
X-Proofpoint-GUID: tHTxgFvW_5E9TtpODv6Z3Ba5g7xsuCUP
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-22_02,2025-10-13_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 adultscore=0 bulkscore=0 impostorscore=0 spamscore=0
 priorityscore=1501 clxscore=1015 malwarescore=0 lowpriorityscore=0
 phishscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2510020000
 definitions=main-2510210167
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251021_235038_555097_5F6649DD 
X-CRM114-Status: GOOD (  11.26  )
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

From: Melody Olvera <melody.olvera@oss.qualcomm.com>

The Qualcomm SM8750 SoCs use an eUSB2 PHY driver different from the
already existing M31 USB driver because it requires a connection
to an eUSB2 repeater. Thus, for USB to probe and work properly on
the Qualcomm SM8750 SoCs, enable the additional driver.

Signed-off-by: Melody Olvera <melody.olvera@oss.qualcomm.com>
Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
---
 arch/arm64/configs/defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index 630fc798570f..a600d9b86a7b 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -1680,6 +1680,7 @@ CONFIG_PHY_QCOM_QMP=m
 CONFIG_PHY_QCOM_QUSB2=m
 CONFIG_PHY_QCOM_EUSB2_REPEATER=m
 CONFIG_PHY_QCOM_M31_USB=m
+CONFIG_PHY_QCOM_M31_EUSB=m
 CONFIG_PHY_QCOM_USB_HS=m
 CONFIG_PHY_QCOM_USB_SNPS_FEMTO_V2=m
 CONFIG_PHY_QCOM_USB_HS_28NM=m

-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
