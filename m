Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8C726CD343F
	for <linux-phy@archiver.kernel.org>; Fri, 15 May 2026 10:47:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=lHHa0+9+sa5rw2m9BwGOyQjGG24kjkvczxUhxnCD1NE=; b=FfE1apw0PBDfcZ
	OjGEvnKE5OMcfpnT9UiwttiiOovJ/U1PWzwHmfltlJp/OkcuI4vHR/b5bDLLahf3z7BrQyU7CYsZz
	Sl6dHoM6gRndhPM2XoxnurwVaSJJB47EYRQv6sIZj8+4xqsTtQFEoFU7NAmDwm7yb9KDPcJEQc4iM
	4dYZf12VsH434FsqBPTEZvAmhlInE7lmWiaD5pdfVajapahH5q44eiNnPebJzui1RMiiqxZQBWA5c
	zxzpiaRJhDUUfT+R/2Mjb8dc+OpvRAFt9y51G6ZQhuvaDeZYbSUnbzvLg0bzW6mwqCmCoev75qPS4
	fp0yyb04PPJS9qsd5+jg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wNq5C-000000085Ve-0Qo5;
	Fri, 15 May 2026 10:47:54 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wNq5A-000000085VF-0weX
	for linux-phy@lists.infradead.org;
	Fri, 15 May 2026 10:47:53 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 64F4UYt2654911
	for <linux-phy@lists.infradead.org>; Fri, 15 May 2026 10:47:51 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=H/XXsyRxgO0llNZtCTaH5Q
	dQ6GC0REVLGnyPyOphXoo=; b=CE1/2tgHEt2G7N/4gq2ywgMg2/ZZOrHf3VAgSf
	IEpkbXyv51RylnXz/PT5dJsKdWxw04hniMQDH9vycr49ahGfAFjUU8vPAtcch91L
	XmfwKtvMNU3xOLHb590yB7LR5EBBTm3XylbsssbgsToi4HxaW0R7kuqwSmdYSIBJ
	pxPjggOfptSgZnm2azUIXCDnOwzozd5KGx/kYD5ctJcUFrhv8RUYdgns8OvRWlgZ
	b20ytJhNC6mnjc//ADbaqTPmY8Q1g2SipzoUDIQFqi33wMYlEHxMgJRP1VA06iQA
	lP/+29ztZw3GhARRZKsBqb3K1okWBmhMxDDw24VwdH5gJ2+A==
Received: from mail-pf1-f198.google.com (mail-pf1-f198.google.com [209.85.210.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4e5m1pty40-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 15 May 2026 10:47:50 +0000 (GMT)
Received: by mail-pf1-f198.google.com with SMTP id d2e1a72fcca58-83ef22f8e8bso2792372b3a.0
        for <linux-phy@lists.infradead.org>; Fri, 15 May 2026 03:47:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1778842070; x=1779446870; darn=lists.infradead.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=H/XXsyRxgO0llNZtCTaH5QdQ6GC0REVLGnyPyOphXoo=;
        b=BDw6kK50mlhKtWhZH/K91C1dxTni7Y92Bua3vYQO+RITEeivivZAqL86jhiH57As2Z
         o9UK098ED4noGxsL9BNYIih71pG+ULEPfu3GAeqyIwLIedBDnE8gGtiYOWLTlUtJ6yV1
         0wy0zJzlKKi4tV2NVRnHxrc+7CZOsrxgnSAxdg3W27MsVq78sxvZ8biedWka8rtHsQ1t
         qjuofbBRL1lolSDMmWh29eLIBlSNgQo/WOrs1X0EKlXCYtfysPmSu/K9VGDzLHb8q2Lm
         UXMgNskNxhgsam22wvzu28x1hFdREc3Wtab9Q0sDqyunE0GbjlBYJ9QhP1iym+aaM65q
         7PDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1778842070; x=1779446870;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=H/XXsyRxgO0llNZtCTaH5QdQ6GC0REVLGnyPyOphXoo=;
        b=SNjxr+HrLu/krjifHlgiRD+hyafQvjVVyFhb+r8vQhPQLW3OZaRZrrxb5UCoTjdGzH
         qDAc8fNtr5jDBrsIm0bpxB2kwwF/5bL70dilfA5B4C1naczF2VFUzzmgNpaY2sPjudV4
         3yk1wcvAGD5W7YvZfobJbYrwPPAOQ+GvdBJkmJvWtfMu0C36MGVxQgHKs23Tt1EBH+fm
         2zwL36wllmg3UxBa74Wg1+oV4JwuNk6paYvqSaaEAEcSMQn3oXexsWGn3/jULgZv1PyB
         yofPpatcwq6KYsp3Ofw8BrDfqdXG1q+7yxGO+eQXYOkCu685KOLGtp25ZSGEg5O9in9b
         uyAQ==
X-Forwarded-Encrypted: i=1; AFNElJ/1TL4zls2OZRS3bSyIOMWJbO4pSjP6FDb0h9crxzSL9haZlwy8SIlU5r14PfV7VAUFflUooPMEF1A=@lists.infradead.org
X-Gm-Message-State: AOJu0YwOVbbISxWVt9iuH5cYgZ/eniEcGlr7X9v7PrzspnoQpKuuHRrt
	yv+vmETXdsdfCKaPWCwaOBXx6f49OaglMkN2N2lVnQsR91txh/WF1xCb4352fst6pDMbTeZ9BtK
	E9tg5GqzLLBwRjcNO3cfuKLA6W4YH0sQQ/hqfsqXMxRjVe2M1zzTRiSSFQ3WqGtVbwrFL
X-Gm-Gg: Acq92OHXH+Uk2fsnR1nxFpuk4/wKeMF0dBbtgrTgVtKiOiQe/w48d3Pappp0CD+bny9
	QVOCXGjlZs+FpXXVjLWiVSi4ofXDGSY2AMHCWcdcksbsB6IWhOe6RusC2/AQ+rfPCwk45Yd0hjD
	sJH0yRr3UWVlnMw0tDDung0AnaDvy2l1pl1flbAjIU4+gsFqAJHXVosLDWnC+Lw8bXNqKs7P0Er
	gG2YxtsFzQ/Prjbscz0yYHrweeiV5a/Jy1TlnfI0dFWBnoefDku0M42rsCdg2tBzZeI03C6mOPM
	hp2yYYLqYBP1KyGYCy0fckW+9kVSZpqqvejOWyJDmULpJoUh84bxI2rOrZGkO/INl5OyLxpokaJ
	0ccZ70LzhdNvun3vUKF3NtLSIJYynfxxOgsf7pnl8wiWClUmLLYbXNjBAaZERco8nBP4Du13D1d
	4h3E46eCdWBoKipeazngjz7ZUtWIWIgjf/M+tUUfy/day8LDKd1B8=
X-Received: by 2002:a05:6a21:33a3:b0:393:74ed:7de9 with SMTP id adf61e73a8af0-3b22e66471bmr3673856637.3.1778842070098;
        Fri, 15 May 2026 03:47:50 -0700 (PDT)
X-Received: by 2002:a05:6a21:33a3:b0:393:74ed:7de9 with SMTP id adf61e73a8af0-3b22e66471bmr3673829637.3.1778842069588;
        Fri, 15 May 2026 03:47:49 -0700 (PDT)
Received: from hu-varada-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-c82bb1006fbsm4955221a12.21.2026.05.15.03.47.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 15 May 2026 03:47:49 -0700 (PDT)
From: Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>
Subject: [PATCH 0/5] Enable ipq5210 USB support
Date: Fri, 15 May 2026 16:17:41 +0530
Message-Id: <20260515-usb2phy-v1-0-5f8338d466bf@oss.qualcomm.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAM75BmoC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDIzMDU0NT3dLiJKOCjErdpBQLU4NUw7Qk45RUJaDqgqLUtMwKsEnRsbW1APe
 eit9ZAAAA
X-Change-ID: 20260515-usb2phy-bd850e1fb3de
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-usb@vger.kernel.org,
        Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Proofpoint-GUID: qAzfKqV2w7JqvN38D7_oIUib0-koEgp3
X-Proofpoint-ORIG-GUID: qAzfKqV2w7JqvN38D7_oIUib0-koEgp3
X-Authority-Analysis: v=2.4 cv=GrhyPE1C c=1 sm=1 tr=0 ts=6a06f9d6 cx=c_pps
 a=m5Vt/hrsBiPMCU0y4gIsQw==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=IkcTkHD0fZMA:10 a=NGcC8JguVDcA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_K5XuSEh1TEqbUxoQ0s3:22
 a=EUspDBNiAAAA:8 a=6L2eJvA39pK3U4l1HDAA:9 a=QEXdDO2ut3YA:10
 a=IoOABgeZipijB_acs4fv:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNTE1MDEwOSBTYWx0ZWRfX7akzpKQf/KtX
 zeELAryNO/Z+QjAwMXvDtYSCCPm9HJY9kh4nKoyr0GGsmcPeUp4MhTiBGqBiT5JZXVSnvN9oXkz
 AEuMLYGsd6KUOxXnWvWk1ym17RfGcdiv6d/PYArlD9F8BGMbM48oUqH4roJ80M6zMAsIxiiqOB+
 bL4+sZY1Y01HcwTK6QniS2O5vcMTTV4NfFuPNVhc4QdWjRQRDFFQZFojIkpsSXaKweEspAuIDSL
 TIbRwARLoVxHnsh3tzHwfLH/qMEpTTuITnK7QpwkbPYHouQSr+4ZtH8GhxH9E+B0CxCKzaZC2az
 Z2joAqA7N2xhBlbf/52Lf/TQ7PDlbWyUoYEyImvahaetEfUEYsyo8RyKpV1YqW1d3sa5TqmmYDF
 gu73UmqMohr2Cgb4vSwxDRAoPm57G2PXTUOuH0O+BRzMybfiB5E0Mu9I40f8Rm5mJlS8IsUAks1
 0DQlXCJCu4R3QgLtwyg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-05-15_02,2026-05-13_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 clxscore=1015 lowpriorityscore=0 adultscore=0 bulkscore=0
 spamscore=0 suspectscore=0 impostorscore=0 phishscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2605130000 definitions=main-2605150109
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260515_034752_280611_A54AF2C7 
X-CRM114-Status: UNSURE (   9.29  )
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

The ipq5210 SoC has both USB2.0 and USB3.0 controllers. The USB3.0
can connect to either of USB2.0 or USB3.0 phy and operate in the
respective mode.

Signed-off-by: Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>
---
Varadarajan Narayanan (5):
      dt-bindings: phy: qcom,qusb2: Document ipq5210 compatible
      dt-bindings: phy: qcom,qmp-usb: Add ipq5210 USB3 PHY
      dt-bindings: usb: qcom,dwc3: Add ipq5210 to USB DWC3 bindings
      phy: qcom: qmp: Enable ipq5210 support
      phy: qcom-qusb2: add QUSB2 support for ipq5210

 Documentation/devicetree/bindings/phy/qcom,qusb2-phy.yaml              | 1 +
 .../devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml        | 1 +
 Documentation/devicetree/bindings/usb/qcom,dwc3.yaml                   | 1 +
 drivers/phy/qualcomm/phy-qcom-qmp-usb.c                                | 3 +++
 drivers/phy/qualcomm/phy-qcom-qusb2.c                                  | 3 +++
 5 files changed, 9 insertions(+)
---
base-commit: e98d21c170b01ddef366f023bbfcf6b31509fa83
change-id: 20260515-usb2phy-bd850e1fb3de

Best regards,
-- 
Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
