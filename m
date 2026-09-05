Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 156AEC624D6
	for <linux-phy@archiver.kernel.org>; Sat,  5 Sep 2026 15:29:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=L5X2/ZPPj39qmeuE64eXV/byvlpA6d2xn03oIYeh1hA=; b=IZwNQtDho9DDD5
	EXxPZjYR5Y6OCsIXIRhAO4Q/vjPV4WhbN/URS3WJuY6jC9uUMD2gvNxVQqZYVbz3ACNxD4aL1cfXf
	LK1nfgyUWi4LohX4gg0AK5qR2TXQTUaPb3z9y9iIDcZoS+bnLpl56Nqg991B8wjYLWhslrQORq1Jz
	L0L2Q1ThvY14ctCSBv86njQE6e/T2jh9yDbwtjW+PM0OvQCthWun4YeGMixuMv2ZhzLLb7v7RyP9S
	JvmLizdoEKJ2wghHQCGpQja4bWpuoNJuu8d8wDIWxcNgeRXX/Lk+08Qs3FbkDndjXbyZW8c1MqJ2I
	WGr+B1aS6k4W7QrNEnow==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x2sKb-00000004CI3-33Nb;
	Sat, 05 Sep 2026 15:29:25 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x2sKZ-00000004CHW-0Prg
	for linux-phy@lists.infradead.org;
	Sat, 05 Sep 2026 15:29:24 +0000
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 685Eh9rO2935093
	for <linux-phy@lists.infradead.org>; Sat, 5 Sep 2026 15:29:22 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	RTWsGeOsKcKPKKrUyN9zOsyxDt3cWAghdf/v1vcKlIw=; b=Soxe5nsuE1MnuEHc
	H3N28K9LsUe5uFQbHRzM0VgiVJZAgTe3l6kIJsWXY5+lQqM9TGJwmF283u6/SYRw
	Fg5wrTXozULA55HOOnkwJ3HW9OhvRRvqiVZxwUC8l+6AOvxtu7Lmea5v9fT1aRST
	JZMm2kdWopNAsd4Us3dVhB3ehBn/GEgzQ8JSrk6YoYZ0gxztRxcfB8GBBVg4IFT/
	GceuN/q0x/wW1Oh4XtZOdYUeY5QEKYnTmkjU3SIYliYg6DBJdiIExF1W6aU7MwMk
	UW0GTrDHYqn+TkiY64ha7mtDCCvhB10fLVynvZTyXb09jKOU8SNe9LZcFYGzPqRo
	yw7dSw==
Received: from mail-pg1-f198.google.com (mail-pg1-f198.google.com [209.85.215.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4gga371je8-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Sat, 05 Sep 2026 15:29:22 +0000 (GMT)
Received: by mail-pg1-f198.google.com with SMTP id 41be03b00d2f7-cbe77d6864dso2962728a12.2
        for <linux-phy@lists.infradead.org>; Sat, 05 Sep 2026 08:29:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1788622161; x=1789226961; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=RTWsGeOsKcKPKKrUyN9zOsyxDt3cWAghdf/v1vcKlIw=;
        b=YVEoWZeQsK0TyPE4eOpJdPJzZpVXOQJptmjPLBSZYzu7OFFWG3rb/ernx85eo3qRjQ
         TezZOfyz/nP2WEWWeCGmKKqFXR9sDNWCeFmu5eIaOtCjWEf306oi8aj4BOWpxT4LoRLl
         890DX4nyzzPkwW84HRqMdPvNTBfRWuaOfMXRRh8c87UaeqOwnupGbSAmO5QEd2a2o9aW
         cUIEWAtUwU/xCUXMfLVVeyQ6YR5bl6SST8RkxovKeBXP6LrCWKjYg2owB57XnJxzPLpZ
         12sOqMB/kIt5aFtxjPQ3iDND0ZytX0gMQajoK1Aeh3krgNJnXkJobKk2t6ZdL6+t0UFV
         EJ9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788622161; x=1789226961;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=RTWsGeOsKcKPKKrUyN9zOsyxDt3cWAghdf/v1vcKlIw=;
        b=GRPlp5YigrLff/HyN+SJzC/ff0NUjuZPRAq3Ts8bixoehMURa/ZnUHoHsLiTvlx5Rw
         R3vu1erbO21qXAzD6tGW3+wNNnrxwTpO3s0mNKN5OJXocsWLgfSzC9Eimj69qGZEeGMM
         wgL+wDL38vIvchCDwoKdcFGn+N7atqZFR+BABVGQrut6VKsl3BgSE1/X2FiJzLFTcodr
         ooTL6/qXclSb39w+q/7CB+1r6SDtnuqObRlwlSxUNNSaTsYvvIFp7AAoKOl7mwczULzs
         plTMaTGHRgrUHIB34L/wIQvQr5s4h2fMBXe9CclCqod+5NEQH2O7m++xRp1WG71UBmoF
         tbjg==
X-Gm-Message-State: AFuF++n4mmQxSefsxiu/3suQv21W3lFj5SGjqxUOas9hEx1Z8DMysUsN
	PMV19ngXGl1J1NEpipqe1t5codBp5JKVNRuD3I49dmd/zWmLvNz8vkOeRrPTZStFYOK2m3Zl32H
	/PV6d48NxqOMd1xR26jJ16xDoncNLulNr4jD5EUcfhp53R5bnhpTbXPh40zxEMPWFHdMu
X-Gm-Gg: AYBFou2zH0+ffuQRkzL+yfxsg7nyjCQStnRYFlynVwoOcfGN2vm4ubyyvY/WZ0U3GLI
	5NprZf1MOTggWrwJTNpGF6PLj8MMDeh7LyQo3tiKTr2vAMrmX/zMSjrxgzUoa5EGhFY/4h3mt1e
	uqywRkX8BvZG7zw7ApXRt7WE1Z1Rkn0h/noV3ch6MwM55AkkisxXu2O0COdIXSNtNRRJJflLaRJ
	h5JRm/k+A18PSO+JzG/6AyFSsdXBMHovXOz6XO4HENE5hDTxeluDW9JvNYSYI6FRjzAgwkuSgTc
	4yBRhAthvW4nJhiXpow3SGSY5BnH7TnnITRdZHre/7fCONcu08LVhmcsQY6jgzw+3/fgb+edkIj
	rP7RORJbI/CxrtR3wdpqs13BethbrB0Lhr7ilbFGENyPmCC4d5qn9pgLoWxEi1S4R3kPSEw==
X-Received: by 2002:a05:6a20:914f:b0:3d0:88f5:f813 with SMTP id adf61e73a8af0-3da39ee3852mr19354216637.11.1788622161176;
        Sat, 05 Sep 2026 08:29:21 -0700 (PDT)
X-Received: by 2002:a05:6a20:914f:b0:3d0:88f5:f813 with SMTP id adf61e73a8af0-3da39ee3852mr19354164637.11.1788622160739;
        Sat, 05 Sep 2026 08:29:20 -0700 (PDT)
Received: from hu-kriskura-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-3339af25062sm23592635eec.16.2026.09.05.08.29.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 05 Sep 2026 08:29:19 -0700 (PDT)
From: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
Date: Sat, 05 Sep 2026 20:59:05 +0530
Subject: [PATCH v7 1/5] dt-bindings: phy: Add PHY_TYPE_EUSB2 definition
MIME-Version: 1.0
Message-Id: <20260905-eusb2-interrupt-v7-v7-1-820cf5377a70@oss.qualcomm.com>
References: <20260905-eusb2-interrupt-v7-v7-0-820cf5377a70@oss.qualcomm.com>
In-Reply-To: <20260905-eusb2-interrupt-v7-v7-0-820cf5377a70@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Thinh Nguyen <Thinh.Nguyen@synopsys.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-usb@vger.kernel.org,
        Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1788622149; l=1887;
 i=krishna.kurapati@oss.qualcomm.com; s=20260707; h=from:subject:message-id;
 bh=WnXZK+/CafaIjClk17Obq+5PjwYns6avlw7ViAZaMp8=;
 b=FvNIJcoQHUvV30JecgI00eVRWrAFvuhbeEqY1R2x9CkSMksgbKoVLmmcGvrUMz7mPvcbNYgvH
 q8fcOFQ3pynCDxp66AGyc1Vjzoq+3wzdGt7swoMB0BUtvODU1uBFOBK
X-Developer-Key: i=krishna.kurapati@oss.qualcomm.com; a=ed25519;
 pk=6PmiuwGCdov3wRO+bdmRlRxRtmJyDKz3ED57LLPVgds=
X-Proofpoint-GUID: sIe3_8x_ho--N72S9_dD1Hd5nr8JUr5O
X-Proofpoint-ORIG-GUID: sIe3_8x_ho--N72S9_dD1Hd5nr8JUr5O
X-Authority-Analysis: v=2.4 cv=CbQ4Irrl c=1 sm=1 tr=0 ts=6a9c3552 cx=c_pps
 a=Qgeoaf8Lrialg5Z894R3/Q==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=VdqzKS8jKosA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_glEPmIy2e8OvE2BGh3C:22
 a=EUspDBNiAAAA:8 a=L1EOSesq0gyy4kqEYQ0A:9 a=QEXdDO2ut3YA:10
 a=x9snwWr2DeNwDh03kgHS:22
X-Proofpoint-Spam-Info: AW1haW4tMjYwOTA1MDE3MCBTYWx0ZWRfX8rZDDgfcie4o
 nStY/A52qR1deqhvTO658K7KHcBjyEdbj22Uso5OdsNPhJl/utL29n5pxjbXdkx309RMKNXtMcK
 XPhxTe72COEO+OeAQVSD3o01yW084cY=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwOTA1MDE3MCBTYWx0ZWRfX7M4Ms2AmhiXX
 q9ObbJ7q/fYEQmbRCpovYFxc7xnFu6hKtlaUPTRYxJuhH5wXgUN1VLZ3HVt6nXgXvJofepE/cbq
 qz01LkKEOChqZABrAqF0GMDZaG24us8KU/qo/XCJ1ryP+Qt3GCBMxh32NFmDKkMBB2CGQJ+2VjD
 5eMVyRE3gd6v6BynAMw9vH9m5KB6n0Cko3UCO+O1P6o06BMw5nV9oktIlbfz4/8xXP05GBgy9DB
 SXFVFDbES4/PgfExy2Tg5YI+sNphpw5rwSovbsUn62S1Zgf+L/BANwCzzpRMQRnySsFNI47sfbb
 jQ7OhCEYX+jT8BoEw98AG6eKxAOE6yGf+9TscF4TR+9Whsy8xC3q6gD++VXY054k80PAcDEJDNp
 h59+I638KvHd36UZ/hWec9RI3KfAxgrYfjTkCnYxgAqGM3W848YwTtLRmW7dZJj/d06ECEccpkV
 hWZsyxZKzJPgdcMbgOA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-09-05_05,2026-09-03_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 adultscore=0 spamscore=0 lowpriorityscore=0 priorityscore=1501
 phishscore=0 bulkscore=0 suspectscore=0 clxscore=1015 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2609050170
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260905_082923_279933_895DD04A 
X-CRM114-Status: GOOD (  12.82  )
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

eUSB2 (Embedded USB2) is a MIPI Alliance standard for chip-to-chip USB2
signaling. Unlike standard USB2, which uses 3.3V signaling, eUSB2 uses
low-voltage differential signaling (~0.4V) and requires a repeater to
interface with external USB2 ports. Because of these differences, eUSB2
PHY initialization sequences, voltage tuning, and register configuration
are distinct from USB2.

Additionally, eUSB2 targets handle wakeup interrupts differently
depending on device speed when operating in host mode. According to the
eUSB2 specification, remote wakeup signaling in host mode is detected
via different data-line assertions based on the connected device speed:

- Low-speed devices: the host repeater drives eD+ to logic '1' upon
  detecting a K-state on the USB lines during remote wakeup (eUSB2
  spec, Section 5.5.14).
- Full-speed/high-speed devices: the host repeater drives eD- to
  logic '1' upon detecting a K-state during remote wakeup (eUSB2 spec,
   Sections 5.5.15 and 5.5.18).

Since the eUSB2 PHY's DP and DM lines need to be configured differently
from USB2 PHYs, controllers should be able to query the PHY type and
configure wakeup interrupts accordingly.

Add PHY_TYPE_EUSB2 to distinguish eUSB2 PHYs from standard USB2 PHYs.

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Signed-off-by: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
---
 include/dt-bindings/phy/phy.h | 1 +
 1 file changed, 1 insertion(+)

diff --git a/include/dt-bindings/phy/phy.h b/include/dt-bindings/phy/phy.h
index 979b5dfd8353..555a022c8c0b 100644
--- a/include/dt-bindings/phy/phy.h
+++ b/include/dt-bindings/phy/phy.h
@@ -24,6 +24,7 @@
 #define PHY_TYPE_CPHY		11
 #define PHY_TYPE_USXGMII	12
 #define PHY_TYPE_XAUI		13
+#define PHY_TYPE_EUSB2		14
 
 #define PHY_POL_NORMAL		0
 #define PHY_POL_INVERT		1

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
