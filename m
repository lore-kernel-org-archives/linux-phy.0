Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 08793CCFA13
	for <linux-phy@archiver.kernel.org>; Thu, 30 Apr 2026 11:53:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=fAHRnhS+4wtldpNGBKZCiXV0FNaHM7JC/7ZNRUgvzng=; b=seYJIfuPG0gLBd
	VzSPMZSaMXE9NKmEMrWjJaga/mT8dfo0SkVehGAYAfxOH5v5MpQ5hUh341AGx3u5wJa9VcAWcPUXd
	mHpxaqjsaaExa8x1rcaTh8fq/jwGGQZI9QK9K/sZknIVsyATt39ZNqK3C8QSX0FHI08PZ05CveHG7
	TggccReBID/Hn1NAevXZOzx/AYXxSfRUq//0/3sy5k6D2zK2MfcLeAGFiuURdSunFy6KTeasNL/5V
	5B5dJWVPx/Aua5/Qo2WH5MU6aS3HwIm+RA3LMC2f4mxfpmCUUIrDv13aGZqDvfNSQzw68B//gDKAt
	qm4vfo/s7i7Y68ncT9pg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wIPxB-00000005PHL-2MOB;
	Thu, 30 Apr 2026 11:53:13 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wIPx8-00000005PGe-48IW
	for linux-phy@lists.infradead.org;
	Thu, 30 Apr 2026 11:53:12 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 63U7DhFC3885006
	for <linux-phy@lists.infradead.org>; Thu, 30 Apr 2026 11:53:09 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=S4gD0cycTGKSJtK98/zmKq
	rbMyKEPcJ5+g2Xd9XvCl8=; b=Jp8h/2DmmjhkcdXnovykDDmIcVBQ2HL6cZ8DPq
	git6edin9YkdGhUvPEdJu18DIl2HLHLnCRBxDOqu6QuIJs5tjg/au5DP1M21PCsA
	VtciYYdVMsMv9OrR4PThipusOBq5LuAI+D43FIoZsrQd+DOMWFaKUtt26LBzsgmh
	avHDZ+kA4hAYEpIxVtBohN/ILemJGG8h7oKc4ETs49ylvM98orE/gnvYbNGLdjph
	6n4vfdZTnP6EwlrtwspHhLqkxfW1RLwOCV5iY2suQGjw79nGebtX9T9x/tGcCxNe
	c1cwK42khYDr+fZye8WgGoWQI3fGW5nXFCztOZAMY+UusVcQ==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4dutmajrx8-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 30 Apr 2026 11:53:09 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-2b2d83e7461so14956305ad.3
        for <linux-phy@lists.infradead.org>; Thu, 30 Apr 2026 04:53:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1777549988; x=1778154788; darn=lists.infradead.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=S4gD0cycTGKSJtK98/zmKqrbMyKEPcJ5+g2Xd9XvCl8=;
        b=dQM4OEQAw565FrIL+49mj765d1+cgni0zpk85eTjbHJI96S08NrT+zSWL1+ywSA3zu
         2nclmJIikp+Qz9TRyURqhHpfAaGgirRHqzfC7hnkBnw6Badz2TrHGq0xbllhSJlJ5bJv
         7+dAEa995bfio8Xxs7i88Sa2lVG0UI5mU3BANtCg0fraIh7NTdx3agB0UAENy2t9ERtl
         NZ1yq8YlbkUp3KyiN8g678/wMiBR9ksGRgEV643v4zC6iBsCKhduvKKSqmOQ4Vc8AGpB
         maKdMv1eOjCY5rkHeU7L345lWV8pauiecsM60H0o9uEAY9mhzVFvuigYtJrqnLRJ0dSv
         cFeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1777549988; x=1778154788;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=S4gD0cycTGKSJtK98/zmKqrbMyKEPcJ5+g2Xd9XvCl8=;
        b=U/tSvYoHjTyXP0+FKhKzD0oWYXvo+6lERK35dzg+ofICLtSncf8IeLqW/l+GHICF1F
         y04KaHj2qNEwX/xTvKIccYDNpuBv2ndfjzam6mMJKsAarz6FP3xQr4rkRY/8vNXzrZoZ
         jjaMBTCGj1HklnIiK85nDVQlBFA6mjfKRKi31FVBM1wu0JsMYKjB74UZ98QGA0HNwgoE
         /sTTwqbdrYOMyxhPDngiYRRh4VWnpqWBVvcuIiFDZF5MzHf7jFI2LTr5KB0x45/xIK1d
         /KdE0tQYn1mg4huUsZZe58WpEQ7mAhkEpvChEz8eC0sMDqdpi2u2k0bkyHLkaUSIWEZI
         Jh9g==
X-Forwarded-Encrypted: i=1; AFNElJ/f/cpi7ZufgAe3mButcN6QZQxu/Jzm1TVCVnmhnILCAIVTTZD5DCjzuJSqOOmyT/Lpb4CIEKbCeYE=@lists.infradead.org
X-Gm-Message-State: AOJu0YzAPODHWOBS8OZ7z37C4cFGLajLmRt/bmoya/OmUmZW3mCC9Ypm
	WLBdczQtDSxWuBzX2AMes5oYYLwdB61NSwwTXeorhVVd0Vbz4Wn7ryUZgEp3Re0e+jZMpArDoas
	esX6QYCbe7yGPFnYUJOQgZWrHUwNjx5M5gUCHPlVfI4uMTsCvr/NnR/rIgAbGyoGivGQZ
X-Gm-Gg: AeBDietZ6pvGfTtWmPqPidfDlV6WPEt5G50D/Ufp06ENkBpTYXQF6CCr3W8PoiXOSGD
	di6XdFmnUoNhHxPBM79+9ovOEnJrqi5WjNlcXxp1Zp9Inqx0NxS0CSA5erxoi/sQgNFmZEZhhER
	QgbFNXeFgSMbLVmFRsCvtHT4EeaI8YodBVoF2Go3TUXbaANdS1WnHhM6unOz7OjoVWpTyHk/frs
	McAu/gkwP66E6fwUMeHo71ntIuZqWNfAvCB7OI699IP9FDVUrq9rpJwwc72bbOMg8L5WiQ1b8y0
	7G6EMYZVbwZlb48ueId/lLXQV+bQjLNXVstdv3ssXAuQAuIOANh/4IZt3Cw+BwfuceTW7zsNZmb
	PzTzBIG9AVTJb710O9V2Vlo4RsaMjsZWtvHvsv7zweMMp+10=
X-Received: by 2002:a17:902:f20d:b0:2b2:81aa:f6c3 with SMTP id d9443c01a7336-2b9a24e293dmr22500155ad.29.1777549988504;
        Thu, 30 Apr 2026 04:53:08 -0700 (PDT)
X-Received: by 2002:a17:902:f20d:b0:2b2:81aa:f6c3 with SMTP id d9443c01a7336-2b9a24e293dmr22499885ad.29.1777549987989;
        Thu, 30 Apr 2026 04:53:07 -0700 (PDT)
Received: from [10.213.101.118] ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2b988971138sm53834955ad.70.2026.04.30.04.53.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 30 Apr 2026 04:53:07 -0700 (PDT)
From: Komal Bajaj <komal.bajaj@oss.qualcomm.com>
Subject: [PATCH 0/5] Add USB driver and binding changes for Qualcomm Shikra
 SoC
Date: Thu, 30 Apr 2026 17:20:25 +0530
Message-Id: <20260430-shikra-usb-v1-0-c9c108536fdc@oss.qualcomm.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAAFC82kC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDIzMDE2MD3eKMzOyiRN3S4iRdw7RkgxTjNMtkQ0NzJaCGgqLUtMwKsGHRsbW
 1AJa0b9NcAAAA
X-Change-ID: 20260430-shikra-usb-1fc0d3f9c117
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, linux-usb@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-phy@lists.infradead.org,
        Komal Bajaj <komal.bajaj@oss.qualcomm.com>,
        Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1777549983; l=1179;
 i=komal.bajaj@oss.qualcomm.com; s=20250710; h=from:subject:message-id;
 bh=Wy35dkk+x7J7hVzibp+tGhexsVcSnAJWVDQsf3OwioY=;
 b=EzKgLLmHkhOhpXWlxFsqT4An/gtiBGVcCoWJug4OSDZdbwaJtBRecdGA7cSDgH8odE6pmNwWV
 SOihEZOIutnDBqlGrB93QQ/0mg0nNUd08Ih2mip/nRe9m3yrjPYSe9f
X-Developer-Key: i=komal.bajaj@oss.qualcomm.com; a=ed25519;
 pk=wKh8mgDh+ePUZ4IIvpBhQOqf16/KvuQHvSvHK20LXNU=
X-Proofpoint-ORIG-GUID: sx3d9baEhGC733yQANbV0pwS95eMMBUa
X-Proofpoint-GUID: sx3d9baEhGC733yQANbV0pwS95eMMBUa
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNDMwMDEyMCBTYWx0ZWRfX3cI3Zrfzf8uo
 IW8RBVBdUCApYbTlPQKA10GWoPAbhQ7XyMiSwgiHeBQlfwG2A72ywnTj1yhm+MTRBgke646hGer
 pNeCDIT36mtAy1B2RZuPLdnxmaHmSJ9Je3hsbQJpRJ4Vm0rLIWfoafgroVMjNC6caHXgcjWH6Nw
 6/OKnFPxPYDGvPKddSY9PqrhsWE6x+iwweGGqVCucCKPBgGoCenA0IWBlUTworkBPF6geFHdbEe
 TC3wOj2DH7iGKvBAorV9nvg178OHQMRpUw1B6ni/0qBRWS/lzagh5NsilXoGjKXDohN44sV2Vv0
 v9iJuRrzzww+gTOzpCS7PmtA05Hjo2FVfDUZHneybVaYNOZ/PwKgGOvzLpv8E7hBHUwCcq2Dkah
 JDHRDLrE9GYBfPoqIUIhztliyfmakNRqflI/38NhX4297rpCkmIEdYtW5G41scjcYX1x6Ds6ssb
 56stwX/4VNDXN4wm/gg==
X-Authority-Analysis: v=2.4 cv=Fpo1OWrq c=1 sm=1 tr=0 ts=69f342a5 cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=A5OVakUREuEA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=DJpcGTmdVt4CTyJn9g5Z:22
 a=EUspDBNiAAAA:8 a=UoB5GuWjjGMfoql652sA:9 a=QEXdDO2ut3YA:10
 a=1OuFwYUASf3TG4hYMiVC:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-04-30_04,2026-04-28_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 impostorscore=0 suspectscore=0 malwarescore=0 spamscore=0
 clxscore=1011 lowpriorityscore=0 bulkscore=0 phishscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2604200000 definitions=main-2604300120
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260430_045311_034775_4D00B93D 
X-CRM114-Status: GOOD (  11.83  )
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

This series adds Driver and binding changes for USB controllers on
Shikra. There are two USB controllers - One of them is SS capable
and other is HS only capable. The ss Phy init sequence is same as
that of Talos.

Signed-off-by: Komal Bajaj <komal.bajaj@oss.qualcomm.com>
---
Krishna Kurapati (5):
      dt-bindings: usb: qcom,snps-dwc3: Add Shikra compatible
      dt-bindings: phy: qcom,qusb2: Document QUSB2 Phy for Shikra
      dt-bindings: phy: qcom,msm8998-qmp-usb3-phy: Add support for Shikra
      phy: qcom-qusb2: Add support for Shikra
      phy: qcom: qmp-usbc: Add qmp configuration for Shikra

 .../bindings/phy/qcom,msm8998-qmp-usb3-phy.yaml          |  2 ++
 .../devicetree/bindings/phy/qcom,qusb2-phy.yaml          |  1 +
 .../devicetree/bindings/usb/qcom,snps-dwc3.yaml          |  3 +++
 drivers/phy/qualcomm/phy-qcom-qmp-usbc.c                 |  3 +++
 drivers/phy/qualcomm/phy-qcom-qusb2.c                    | 16 ++++++++++++++++
 5 files changed, 25 insertions(+)
---
base-commit: 39704f00f747aba3144289870b5fd8ac230a9aaf
change-id: 20260430-shikra-usb-1fc0d3f9c117

Best regards,
-- 
Komal Bajaj <komal.bajaj@oss.qualcomm.com>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
