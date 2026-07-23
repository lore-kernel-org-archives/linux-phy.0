Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 588CEC531CB
	for <linux-phy@archiver.kernel.org>; Thu, 23 Jul 2026 10:39:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=fyXnTuh650IzXwGtFfjYrt7IVGoELu8NyXaQ2tqJRcA=; b=sLm0miBeoEgsIw
	dcjbzYdVOdfq3kbQuWngfHj+v+/jvLHwdFos6AE5ATpJup1Bg8Xa+gVTjge2qRxeKaTQdNA+8yJLh
	WiQNGOJ7xteqfV6wEgLjtGVLSB+DJbzOX5T8fvNnGICLteQyRvQy5OcdNqk+b0b7rQq3NS9tLqg9k
	Q/F1niLcXlIdTT5oMySVL68pjvIM/bRanMsyZNWINBAarkcOGmhhCns4sIfGGkpo84fvIPZXuxz4H
	8wT2YEWT6RrZfNZ2AU/B1K8WbokkeiSc4WTMbDvUxKWPqFPW5xY0F9HTVauzYVgybNjckglx10qfz
	M16UeP2ROnaG9Eb6EuCg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wmqpi-0000000E37P-36OH;
	Thu, 23 Jul 2026 10:39:18 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wmqpg-0000000E375-29WI
	for linux-phy@lists.infradead.org;
	Thu, 23 Jul 2026 10:39:18 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 66N8qWgZ467153
	for <linux-phy@lists.infradead.org>; Thu, 23 Jul 2026 10:39:15 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=SjKJs+Talp5i5s1FC33zjJ
	TMZ2uKeAJS7dad2YjJSPc=; b=SKOzv3FtVQ+I/avpr+mnxraoXYtZ/lL3/kdQit
	1PH207QgmUcTwUz0w3cNXF4RxF46Ut9XsEf4yEMf8tjaRi69fzSGo2ndYl7GWblK
	q7chxSZEYtZWJSnefp7mImXvNOR+4GjCjbazN1DhmCNccd29d/IfSu4xsgSHVEmd
	kJAU826gBVKA6xQnwy7lRLXfdK1MGXK3346NV1N8gy4t7e7kflOn0uGsa0GTg3SH
	HlemRph0UJHmAqp7kvKbECNKiZgMD7YzEnqTN8WKF2jZ9LqBMgt9FwqDiZhqBh6v
	ChLOHRgDS6W3zwlLECkWO6XQt/WkZf0Bk/OHwkuQwpTxV6yA==
Received: from mail-pf1-f198.google.com (mail-pf1-f198.google.com [209.85.210.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4fk28xum34-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 23 Jul 2026 10:39:15 +0000 (GMT)
Received: by mail-pf1-f198.google.com with SMTP id d2e1a72fcca58-84e048a801dso909610b3a.3
        for <linux-phy@lists.infradead.org>; Thu, 23 Jul 2026 03:39:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1784803155; x=1785407955; darn=lists.infradead.org;
        h=cc:to:content-transfer-encoding:content-type:mime-version
         :message-id:date:subject:from:from:to:cc:subject:date:message-id
         :reply-to:content-type;
        bh=SjKJs+Talp5i5s1FC33zjJTMZ2uKeAJS7dad2YjJSPc=;
        b=hh9GfMcAt7haN0xFhe1URA/cFW6dCT0wqfnIjxSJHISsRHLRdsS/59sMuo1QSKCRRv
         +TlIk9sMnF/JvAY9bbrg98tu+UNjBjMMNyuhrbc4rl4sF2EtdNKumc9FIhU7Xcmn30B1
         dZQ+gh0E3wanwu2x/Ch9J5pth4AwbRJ3hJwP0HU3g5geeFozp2F+GELO3JoECGw9S6fR
         5ceF9+03FM/4q1nTMU1xYgTKPhRgp6cpDKXv4Sr4uBVX5OVmF7uNgFs3xNUrT8UBJ+ht
         /kSDmNVFchjQAwHB8UzbOmeyuxpfu+7zSqP/dmgSDelMWlxYwsom9XLh9w1MdEx2Y2/F
         t6CQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784803155; x=1785407955;
        h=cc:to:content-transfer-encoding:content-type:mime-version
         :message-id:date:subject:from:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=SjKJs+Talp5i5s1FC33zjJTMZ2uKeAJS7dad2YjJSPc=;
        b=C+qwB3ronw7567mPDzOn77N6el0wtgQNmZOLZd4bG31ncNsP96g7BHhh9G1QGTiYil
         JzqCxNXttFBUgVupn4fxIffnfzgCNre0DGn02vCgiZlLiSgZjic2eS1si7uCMBBmxWPC
         tDaQv1dCURtpoH1ifl00muvcUIVaz+dqbokjP2dCI0TacPuwtg3BEu5gXBQkVSR9SGUv
         BAFMoUFQYaxlxC7+YB4Ll1L3l2qR1gQe7IzsJ7sI91L4rUEFfFXpBGtS6k6QCeEI93Vv
         vmExM/Vux46FwVjj0FIuup5gat8y+/SCRaR+BhoEHBLCVmZujxh0XaZ/pDwmEgI7nWzt
         aKKQ==
X-Gm-Message-State: AOJu0YxYJvlhF9S3MWc06GsBHtbwnpA4x5Prgxk7iI6p3KV5Ixx3BuTF
	Rw+FDjwhPOpRYWkdz4EhyVPze5jzdzCofG2ggDYPNBX1OYoYQVnumil3fLnv0tyEHisPQke/L3F
	ZjP3t7hSKgMavpcBeXS6R1ol2SeKMVoWwGzB289HWQTPeSo4OXweIc24jvIlgT0EVp8dtwPYZu9
	3B
X-Gm-Gg: AR+sD11LQE4QQw+VHsOAveteUGLP7ryVbBVabhufndSx9zvmSXqexVRRFSWHy4VYNSQ
	Wx3tHa+dmgcHWlne6pwPi3ha9GOsTklehxd9bUckkKZ9UfEwkWZUpH5mtOliIDh5DsYnVoxO4ml
	CfYvQtmHi8MaiyE/ixLg9Nd5w9CJUHBVNCMgpB/CNgm/EioWTA7O/Vpx24h+Oz3gSfCLZMFohGA
	c/JWhn8yHKrzejiqZJ/DzYhYKEEMYl+C1lri8VtD2rI6HyLmi5csWNad7g4A0Uat6XOSq9PvG6i
	MpskYz7uq/rUVnUxH1j7ZZiRuSww6f+Ew6FlUKOUu9j/2DwIpUiswagIRXWGI63PuXnsBbzd2IY
	JdyyKG81X3FjbWKs2ecZOVhcy72k3Qpk2pI/veM9j10htb5KE7z1y2BMr6eme3PDV8RSroQ==
X-Received: by 2002:a05:6a00:12c7:b0:847:902a:57c1 with SMTP id d2e1a72fcca58-84e2bb3282dmr2946925b3a.57.1784803154919;
        Thu, 23 Jul 2026 03:39:14 -0700 (PDT)
X-Received: by 2002:a05:6a00:12c7:b0:847:902a:57c1 with SMTP id d2e1a72fcca58-84e2bb3282dmr2946891b3a.57.1784803154461;
        Thu, 23 Jul 2026 03:39:14 -0700 (PDT)
Received: from hu-kriskura-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-84e17604a46sm2864469b3a.60.2026.07.23.03.39.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 Jul 2026 03:39:13 -0700 (PDT)
From: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
Subject: [PATCH v5 0/5] Modify interrupt handling for eUSB2 Phy targets
Date: Thu, 23 Jul 2026 16:09:03 +0530
Message-Id: <20260723-eusb2-int-handling-v5-v5-0-f32ea6c1a318@oss.qualcomm.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAEfvYWoC/yXMQQqDMBCF4avIrB3QKTHiVYoLY0adUtKSMSKId
 2+qy4/H+w9QjsIKXXFA5E1UPiHDlAWMyxBmRvHZQBU1la1b5KSOUMKKefZvCTNuBpmc9TSZ1tk
 H5O838iT71X32tzW5F4/rPwbn+QOQsClIeQAAAA==
X-Change-ID: 20260718-eusb2-int-handling-v5-e2b7d2f58b73
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Thinh Nguyen <Thinh.Nguyen@synopsys.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-usb@vger.kernel.org,
        Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1784803149; l=2757;
 i=krishna.kurapati@oss.qualcomm.com; s=20260707; h=from:subject:message-id;
 bh=95aRlnqGGcjXiiM0uMEb3A+wNWlk0AP0T2azwmwkXDc=;
 b=sFSifNo1uwvjssJXARa1tPt8jF0YG84JsenqWOBkD77tPe7VwWU7nWjZNj7bKC8Pwm/rmawVm
 U8KV6/0qz/rCKJWaWVOuUZzqLHYguR50rGUfnE8ga/7ZYz8gcKiLyD5
X-Developer-Key: i=krishna.kurapati@oss.qualcomm.com; a=ed25519;
 pk=6PmiuwGCdov3wRO+bdmRlRxRtmJyDKz3ED57LLPVgds=
X-Proofpoint-ORIG-GUID: vIPujjhG48ZdTjc_3_8339ufhpm2dww5
X-Proofpoint-Spam-Info: AW1haW4tMjYwNzIzMDEwNCBTYWx0ZWRfX6X12SzomcAI0
 KdAK3y5HgkmKpd2rsUAAOYHIX3MQzUbm/EplZ7S+1gEJh3KK4Oc/KxfT6e8VbmSjhPuAvv18Rcj
 f7jqNbeSJbuBitt5WpZG/iHUm2o5ZCI=
X-Proofpoint-GUID: vIPujjhG48ZdTjc_3_8339ufhpm2dww5
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzIzMDEwNCBTYWx0ZWRfX59FSW28u1taa
 ++LgTRZoJzwltmPtM2g6fYwszo1OsqMf7erMg5ptFC2BbhcPgGQijha3vdgAX127j060pvmx8gI
 +KDO4PGz74C760o8B1L4zJp1GUydCZfgnIQxxiZ3rf2a4zeFB5ltbJkb1Ht0NhuGJIC2dTWC7Lf
 H7HN+AWVsC+n6dbtUTO0wiSEK3n9PW9AGzGehSnSNl1GSsg+RoQo3wCLppbdZVEzxFbA7wxxCMf
 8IEqwI/YmuewjfHD6++CiVx/fosh1gSQF3gONzY0V9h5yXR6p1w0R02U6bZbutuiFDfFs5SnHdg
 EQtKNCWp08GzeFARrB4vfPvh5Cgvw4VswYDPnS6aVkc/2Acsf1uc+kFQTk1Ir5FowhYme2zPc+0
 RnMMYOEExOxOJOd0wKkaqFO0p6C6FsNKBIm79CIomOwrvcDcRH1UtnvmYqhYzcXxNYfaOYFsBKb
 HtEMcb0ZykWfRlHyIgQ==
X-Authority-Analysis: v=2.4 cv=WNxPmHsR c=1 sm=1 tr=0 ts=6a61ef53 cx=c_pps
 a=m5Vt/hrsBiPMCU0y4gIsQw==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=RAioF0-LDSMA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=eoimf2acIAo5FJnRuUoq:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=xjCIpWma6R3UThYtaJkA:9 a=QEXdDO2ut3YA:10
 a=IoOABgeZipijB_acs4fv:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-07-23_03,2026-07-22_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 bulkscore=0 priorityscore=1501 malwarescore=0 phishscore=0
 impostorscore=0 suspectscore=0 clxscore=1015 spamscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2607230104
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260723_033916_559352_FD97535A 
X-CRM114-Status: GOOD (  13.50  )
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

eUSB2 targets handle wakeup interrupts differently depending on device
speed when operating in host mode.

According to the eUSB2 specification, remote wakeup signaling in host
mode is detected via different data-line assertions based on the
connected device speed.

When a low-speed device is connected, the host repeater drives eD+ to
logic '1' upon detecting a K-state on the USB lines during remote wakeup
(eUSB2 specification, Section 5.5.14).

When a full-speed or high-speed device is connected, the host repeater
drives eD- to logic '1' upon detecting a K-state on the USB line during
remote wakeup (eUSB2 specification, Sections 5.5.15 and 5.5.18).

Since the eUSB2 PHY's "DP" and "DM" interrupt lines monitor the eD+ and
eD- line states, configure the wakeup interrupts accordingly

Add support for a new phy "type" attribute to be set by eusb2 phy drivers
and be read by consumers (in this case usb controller) and act accordingly

Changes in v5:
- Add support for phy "type" attribute and set it from m31 and snps eusb2
phy probes.
- Removed adding a new binding property

Link to v4:
https://lore.kernel.org/all/20260709-eusb2-interrupt-handling-v5-v4-0-d4f993925608@oss.qualcomm.com/

Changes in v4:
- Moved to using binding approach as suggested by Thinh

Link to v3:
https://lore.kernel.org/all/20260511094422.3561509-1-krishna.kurapati@oss.qualcomm.com/

Changes in v3:
- Removed multiple glymur-dwc3-mp pdata entries
- Replaced use of ternary operators with if-else

Link to v2:
https://lore.kernel.org/all/20260505194242.1947891-1-krishna.kurapati@oss.qualcomm.com/

Changes in v2:
- Updated commit message
- added supported eUSB2 targets

Link to v1:
https://lore.kernel.org/all/20260502095616.666938-1-krishna.kurapati@oss.qualcomm.com/

Signed-off-by: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
---
Krishna Kurapati (5):
      dt-bindings: phy: Add PHY_TYPE_EUSB2 definition
      include: linux: phy: Add phy attribute "type" and associated helpers
      phy: snps-eusb2: Set phy type to EUSB2
      phy: qcom: m31-eusb2: Set phy type to EUSB2
      usb: dwc3: qcom: Modify interrupt handling for eUSB2 Phy targets

 drivers/phy/phy-snps-eusb2.c              |  4 +++
 drivers/phy/qualcomm/phy-qcom-m31-eusb2.c |  4 +++
 drivers/usb/dwc3/dwc3-qcom.c              | 53 +++++++++++++++++++++++++------
 include/dt-bindings/phy/phy.h             |  1 +
 include/linux/phy/phy.h                   | 27 ++++++++++++++++
 5 files changed, 79 insertions(+), 10 deletions(-)
---
base-commit: dc59e4fea9d83f03bad6bddf3fa2e52491777482
change-id: 20260718-eusb2-int-handling-v5-e2b7d2f58b73

Best regards,
--  
Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
