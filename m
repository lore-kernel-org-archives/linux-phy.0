Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 732BCC61DBD
	for <linux-phy@archiver.kernel.org>; Wed, 26 Aug 2026 17:03:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=b5Gy/cvEtnkXtdOuy1l2me6qsi852yblZOyDxHU/5wI=; b=cZ/0UhYKS5Ipbi
	/7PjgPJ/yLFndvmmB7kqCGYj9OdrHcp1251+2ujZPlGg2O25I7JSS3jDdBFzDQpzTu/s4rShvTvuE
	nKtEIMuUQsYwOwJgAMLfp/t98w7eIlrP+7U1c7EmnTOikVbofyfOSYcOptjhGvXfMMNJVilACoAVC
	hU581x0Gm0euxmNM36vcdRsgWDimUcSSHkTqehKUh2BCJoxKEvib8DXP4mb94x/dje9TKNOjV/9Ut
	hJWcSBwSxqezV2eCW+g3y6B66UaetXyW2O+L5n64vTFjgFfIMTI5cbXZTuvivwDBtZdMQV/WU8gO1
	1U1cMNaI2NULCyJYoVxA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wzH21-00000002myI-3dK8;
	Wed, 26 Aug 2026 17:03:21 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wzH1z-00000002mxZ-2obw
	for linux-phy@lists.infradead.org;
	Wed, 26 Aug 2026 17:03:21 +0000
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 67QGukrD1408930
	for <linux-phy@lists.infradead.org>; Wed, 26 Aug 2026 17:03:18 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=LmNdSIC3rzSREG9XYk3I/s
	eFKqFe5W7iVUlByjfc2Dw=; b=j1rUq9snaiDIcZ6SEq9t2TXHxtklK1pG8UhQob
	2UhM0tvdZrziTJ5arh3qGxCfH8oSDzYB/NFFF60yBHSlnFk19CwvDSMMD+GilijR
	4xgZXCaYrsvE/lZ9dM9vPDy7fpgxXuyyihjNoXQy5d4s93wcVGLnbw2aJ8v3jMNo
	wsRz9urpM7g7wVUUm3NyEqzixjaEzIDf2O/Y+TNs/os1aNjctsaVvL+Tbup6IQ0N
	x6dylSdEVLj+xNpjNmLJZb9+NXYoI1OHoRWOoRtMGDfp8rnY+8yX4pB7mDoJ92zC
	qxniy484VPWps9AnsimkpmX537ZTnBSVnAbs/X3LTyamMQ4A==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4g9x2n1n2e-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 26 Aug 2026 17:03:17 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-2d52734fc41so24382245ad.1
        for <linux-phy@lists.infradead.org>; Wed, 26 Aug 2026 10:03:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1787763797; x=1788368597; darn=lists.infradead.org;
        h=cc:to:content-transfer-encoding:content-type:mime-version
         :message-id:date:subject:from:from:to:cc:subject:date:message-id
         :reply-to:content-type;
        bh=LmNdSIC3rzSREG9XYk3I/seFKqFe5W7iVUlByjfc2Dw=;
        b=TeJGvD7pX0wU6FEtjZtc/h6uN0LfrgEgO7minDGkepM7EtxrUk/3K+/OIA100nv4cS
         NncmyGbZ/UNEcZQZIS5PpglA6kBNUN5K/GrWqywDOUx/51Opw06O6MTOmLftiDTHeITK
         nA6Wtw8w592MB36NB5wdoEbxPk/4Dqi09D/QBxptCy/jqvhqA1W8YCszJ0DzkYiB9RvZ
         8TkEB7LA/e1r7FZ4efK2bB5heonwB/Nc/B8ea8cC0IStR31ddTA/gXO3OF7/x//Oa7xx
         O34gmFmFuS/3I9FRqWK/FLCdIE0AnKBcuCqz9RSVWo3m76iEb9nlnluKNaVitevKD1Pj
         vzXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1787763797; x=1788368597;
        h=cc:to:content-transfer-encoding:content-type:mime-version
         :message-id:date:subject:from:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=LmNdSIC3rzSREG9XYk3I/seFKqFe5W7iVUlByjfc2Dw=;
        b=VKEBxJz5xsNpZTj1J9DQMWFYsNMu7eOm1FvH5Z18Eipfzz/T7920R16TZW1YpvpZwm
         JmPvqYR2tPxxnE8pVs+2Oef/QDq2uq72EsnqoGlUbDLYdgVgeX7mzd+GCq2+7nmehtdy
         qEtKsDaCAie5Wfx8rrSNwQNavb/5LTQzlemHBkeFgK+S5Z751fHz/ztZOtEIH7eM2Rx8
         TxPMAW78nK+b17RYMRcZnob96Z5HyWYNZFl7BzwT6rCpu0gUCBo+S7dNJ7GAxluTwNak
         dw6p+7Dv6/G2+xWux5ajN9kvaMwrqAdXR9xmAvWWEm9QHkBZXkOsRcJFGlzBkBaRh9P+
         EA4Q==
X-Gm-Message-State: AFuF++n8sEC8CWxXisI32f0KisCc4xg0xq+/o7ROjB4ORowP+XEfnil8
	YHx5oP82WuGTYRSYDE0BQnxxHLLcRR84QPtoA4vpBcnd+QZCiB4fvpk0am2jl4G/ANtu1RPuqiP
	GGQikpo0irb/NN1tcOplpFlyuZ1iv9mOOURJfaKSo4fgpFEAiO6GVXVMJf5Jv1zy+LNlw
X-Gm-Gg: AR+sD102Z8q7JAov2h/S6zsaEoJ2IjO5/yxhsEc1+Vr/6SvPN00S/p8/t52+BSLOKRQ
	M96PWK6v4NyVNi/qJmvPsu0shSvgDAbznwXSISbUaOsI9e/RvNuHqKyWlzGR+SuGgfG7ubDG60V
	VkOgw1rGPYKihBEMGeqU8gBbnwZBwUH2MLOuOo61zCp/b/E8U9hgXfHwkZ0fWzsc3+nH6dLu740
	u9Nahfm6NFtznmd87gX+qJyKQgLpTyysle1ec8tI5DtQm6gUUGf8XraPd3OaVURIR4qaK3iXDU2
	kgm3zijPyJMi6VlQ+M5jDHOsRb0R+5fpSvnfcCguS4eIqX0/rARgO2OgvVf54ozo5HzaKOGn+l1
	2QAM01G82SEtAea4/gRnEuE4bVyWZiX4uVvrf9mhRiurR01bo9LrvAtv6RHkQzgwmttIs6w==
X-Received: by 2002:a17:903:32c9:b0:2c9:df1b:e948 with SMTP id d9443c01a7336-2d7079eb7e9mr147013075ad.4.1787763796672;
        Wed, 26 Aug 2026 10:03:16 -0700 (PDT)
X-Received: by 2002:a17:903:32c9:b0:2c9:df1b:e948 with SMTP id d9443c01a7336-2d7079eb7e9mr147011215ad.4.1787763795999;
        Wed, 26 Aug 2026 10:03:15 -0700 (PDT)
Received: from hu-kriskura-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2d70498ca3csm9938285ad.31.2026.08.26.10.03.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 26 Aug 2026 10:03:15 -0700 (PDT)
From: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
Subject: [PATCH v6 0/5] Modify interrupt handling for eUSB2 Phy targets
Date: Wed, 26 Aug 2026 22:32:50 +0530
Message-Id: <20260826-eusb2-interrupt-v6-v6-0-ae2601cfa80c@oss.qualcomm.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIADocj2oC/yXMQQ6CQAxG4auQrm0CDUyMVzEuHPzRuhhJO0NIC
 Hd3xOW3eG8jhymcLs1GhkVdP6kinBoaX/f0BOujmqSV0J5lYBSPwpoyzMqceQk8SAT6KH0nHdV
 wNky6HtPr7W8v8Y0x/0607185v8h0dgAAAA==
X-Change-ID: 20260825-eusb2-interrupt-v6-52bee4b24121
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Thinh Nguyen <Thinh.Nguyen@synopsys.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-usb@vger.kernel.org,
        Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1787763791; l=3052;
 i=krishna.kurapati@oss.qualcomm.com; s=20260707; h=from:subject:message-id;
 bh=iRMieqTLpzSimePtFDUM7IYXtNUy6nl19l5tmntBsn4=;
 b=8Hi4lnh+nhaU79Mve1F6xuAiE8FRDM3Pl+datid4o4gWdyBZ7IBa2TC2v8D88KUqqgVqCJZ1y
 xkQA4nXpFsPA90gB99x/0WHHlpaKcPLf9VQEBfW0iMvXn4WYU5qehdr
X-Developer-Key: i=krishna.kurapati@oss.qualcomm.com; a=ed25519;
 pk=6PmiuwGCdov3wRO+bdmRlRxRtmJyDKz3ED57LLPVgds=
X-Proofpoint-ORIG-GUID: VU11iUAn9ejNFQcWkaPOqPQVl5gnKNtw
X-Proofpoint-Spam-Info: AW1haW4tMjYwODI2MDE0MSBTYWx0ZWRfXzIQUFBUNjMyl
 E/1GXSdCR/NZaUeN+dNs7h2OUWfPdTrsPZWF01WGKA9EKFMNPYM5a4tcLLIvu/rwPB4Ev6O4syZ
 jbINt8W5QBio9ynPZTN9PJnX+gyMn4I=
X-Proofpoint-GUID: VU11iUAn9ejNFQcWkaPOqPQVl5gnKNtw
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwODI2MDE0MSBTYWx0ZWRfX4ycc0CDbWZOi
 kO7xRWWRz9YXB64AIdjJYWQVgz0/lPsHzFk/o7dw9Rdi+sA+0D7W4yk4kS56NglxYoBhYhbLCzb
 ONQNL8bRRC/okLXqc0PVX6RhVUyWuoraK1jytJm3RknZGloOX4WrZq9SHbSD5GvvwZzbLtcCRGK
 zv64V1p+mhtw6giAlhUgGOq+afKjWRTaelLi8cnbQ/mVKH8OH1521q8DNK9xjynxOhZovOoHZG5
 KK4aiNUaBg/naeG+8hCTPoTRLeVJkBD17GQNTOxFF/L44PxAfuUa4JMMA7wLwDzDn/xISksGTtN
 FWHbpZprKh/PBApzG776PbvCfLlrFn4Gx3iQ26pbgadQDbSpudnU1g75ZaLlQTStTv0Zri9pW3j
 arO1BEuYUZco7OW4dWg24rLkBlOy3Sgodteq9pVCE8zvswCZ7fjbWMMxYXc1LfbJRXuMFPKU3Pd
 Mvwaed29N6TuAzWZk+Q==
X-Authority-Analysis: v=2.4 cv=PPQ/P/qC c=1 sm=1 tr=0 ts=6a8f1c55 cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=Sv0fKeRqtYgA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=rJkE3RaqiGZ5pbrm-msn:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=xjCIpWma6R3UThYtaJkA:9 a=QEXdDO2ut3YA:10
 a=324X-CrmTo6CU4MGRt3R:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-08-26_05,2026-08-26_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 priorityscore=1501 malwarescore=0 lowpriorityscore=0
 clxscore=1015 suspectscore=0 impostorscore=0 spamscore=0 adultscore=0
 phishscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2606150000
 definitions=main-2608260141
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260826_100319_843665_7E957168 
X-CRM114-Status: GOOD (  14.82  )
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

Changes in v6:
- Update commit messages to reflect why new EUSB2 phy type is added
- Update phy reading via index rather than by name
- Remove redundant header files in phy driver changes

Link to v5:
https://lore.kernel.org/all/20260723-eusb2-int-handling-v5-v5-0-f32ea6c1a318@oss.qualcomm.com/

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

 drivers/phy/phy-snps-eusb2.c              |  2 +
 drivers/phy/qualcomm/phy-qcom-m31-eusb2.c |  2 +
 drivers/usb/dwc3/dwc3-qcom.c              | 63 +++++++++++++++++++++++--------
 include/dt-bindings/phy/phy.h             |  1 +
 include/linux/phy/phy.h                   | 27 +++++++++++++
 5 files changed, 80 insertions(+), 15 deletions(-)
---
base-commit: ba8376e8c76c6512c98949dffbf4ded0b782a365
change-id: 20260825-eusb2-interrupt-v6-52bee4b24121

Best regards,
--  
Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
