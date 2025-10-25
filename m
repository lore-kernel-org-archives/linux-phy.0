Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 989D1CCF9E0
	for <linux-phy@archiver.kernel.org>; Sat, 25 Oct 2025 00:47:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=y6RUjc+oJetPI9W08HBXUfi7tsPio5sQkne57E7QZRc=; b=keq/HuSii5FtdD
	TMNQK8XUzs4PuhvQQZOspaATpyftlX+nJrbQvbJ0FLSerZutxbrDgDwvCglUJnlsXrC23gcS1LBo0
	pNZFPIezkn4wYF8DRxxNdG+Rbaq+P9L1J+xEtVo7bzMWAcd45yAN/j0iJt4dCaWkzA4FgXs0XA/Jf
	JZRuZ0PDTHnY2lnrNZOrUJuMZG4KrbbQBuNZuFhZ4ZkwX82x/yvec7g3tn8iRqsYa7mVr20Ksra3b
	hKqIvUHibt9WUN/EyShVXCwtRKh3uoHCGKm8KKiRaJWCTyKhw8YGqYBxgxXx4mpYN1skQ3eTC2PsH
	Zn6u0Gr0mDez6rekEX5g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vCSRq-0000000Al78-1YbO;
	Sat, 25 Oct 2025 00:47:58 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vCSRn-0000000Al6X-4BeB
	for linux-phy@lists.infradead.org;
	Sat, 25 Oct 2025 00:47:57 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59OI9i8R024554
	for <linux-phy@lists.infradead.org>; Sat, 25 Oct 2025 00:47:54 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=L6IpjpS1e585bisXA7MOt4
	/08rdI0wiNtT+dUHbEzGs=; b=oyY0L3AByn15neH3IQr5o/AF/dmDLMz98+hDc+
	50WZf/hKbMH5zljy3tXr+mjrZe+rZaUyJCSvnHeRxs0EvFp+/lUEZwO+xsTiaLyF
	FxY3DMuPehYISneS72ofWIStlU3KmLk+K/wlM1x7Ehx1LQHWLczEFpQ9OHpeIg3n
	SO8J++AVjkPtXQ0a1mHZkBvUJCwdK1O7UxYgIWYItBBHxI83v45UMBKkhazGvPWp
	+1RJriUFEkMWhlLhnmEMkJ4eex8on6JE5vcC3Ybd6bjoFJ8vAIX99MhykGSUyAe5
	iHJA3LWJ4i1DyUNEjD0H2JIL+sSKyYCU/xvNvk1krU5Ttyyg==
Received: from mail-pg1-f199.google.com (mail-pg1-f199.google.com [209.85.215.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49y5x8qudf-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Sat, 25 Oct 2025 00:47:54 +0000 (GMT)
Received: by mail-pg1-f199.google.com with SMTP id 41be03b00d2f7-b5535902495so1584727a12.0
        for <linux-phy@lists.infradead.org>; Fri, 24 Oct 2025 17:47:54 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761353273; x=1761958073;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=L6IpjpS1e585bisXA7MOt4/08rdI0wiNtT+dUHbEzGs=;
        b=VH/+h6doPFQje51qhdLfxx4Pefuq7s1dG4X8la6Ay5ONCyirOpO3NewBv7YjobE8wr
         I5j4xDS9d701CGANORenFDyzyKnt4wYdN/FWc5tjxQVqEQTI/hc/Sd7NMswqby9WCglA
         WSJT0l2JAeHQPYjVdFaIu2KkImdgKrHbFQtFunHwYvN+bfyb6omtNzqawjff/MyfmwP1
         KGpsoOj5WEeLjdufGXXr3P4Rbevygf5jd4+SadYXS2i54oqKqLW7q9SwaB4DEefaQcWo
         dZMmqmGC9GD57paouIfUcA6TccSbjCDOgnD3b8T4jUiOe75pfGvt2OLWhmQqfTQQyzwg
         O9Dw==
X-Forwarded-Encrypted: i=1; AJvYcCWkNVg8Es85cJmhRjE0iI7ZwPjcK7aJrc0x5E7J7nfdAnOzKse4HA/s8DelfgADfHREEqOfUUmTn18=@lists.infradead.org
X-Gm-Message-State: AOJu0YxSwNdAdal8dryqLAis22W5pP9KkNT9520CSL/LTg6nuVrvtuy7
	gaHwshBUNjnE/iJdcsTg5nbXNWJcxRiPChAKOLOVxl2GnDri8v4ptxh0WDzPCEvEV2TwxXyCyeO
	DW6ZV6dVE/N8ICeuoT1qr3Yw7Xo6G76T61Q7idWE5YRfbjVZIWXS4Ej9MU0t3ymq/YYoL
X-Gm-Gg: ASbGncsng3kJz1Eac5Fsz/sjSPN8bnfIJ/cX7FxhtAk49rGKOZQHVwSwTALAj7hUcGv
	AukGPcqM/6pmItnkfBuyBQE70l0p87gGgUIquuYQ0Cr3zU1FranYwLpzdkvaCdlzMCQv3LTCI4f
	mZIjCg09BgyZyGPj2luz+Vq0eHDWPrrw+g0+4Uz1fYmDNMUY81u1jhh1NmIhIh67e3mUT5Nw5sz
	ARVZRM5kph0p9cZri7Iv50/z4fZAr8uMWmykS2JxEn6KvVHpqGbyG7FISUu0Y4yAtlXJBNe9LQ9
	JdqT4Z+0mh9/F1hr/kgEucy01AHAeK0tef1SD9HC/dEMatRC133uCZM7BxutRxy0hii8eFwFqhL
	aarYkbI6ZogpVIITOJB7cf1UqttSot62hKulMRFMockOOiBducG8=
X-Received: by 2002:a05:6a20:1585:b0:334:9649:4754 with SMTP id adf61e73a8af0-334a85462d8mr39971254637.13.1761353273324;
        Fri, 24 Oct 2025 17:47:53 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHaI6IX+J3gSXLi97PHwV59k1RCPN0Swx6E+HQYIPmwQxD+ZLzN0Beey+AMQrxU3ZXLo0dzww==
X-Received: by 2002:a05:6a20:1585:b0:334:9649:4754 with SMTP id adf61e73a8af0-334a85462d8mr39971228637.13.1761353272815;
        Fri, 24 Oct 2025 17:47:52 -0700 (PDT)
Received: from hu-wcheng-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-33fed3eca8dsm167352a91.0.2025.10.24.17.47.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 24 Oct 2025 17:47:52 -0700 (PDT)
From: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
Subject: [PATCH v6 0/8] Introduce Glymur USB support
Date: Fri, 24 Oct 2025 17:47:38 -0700
Message-Id: <20251024-glymur_usb-v6-0-471fa39ff857@oss.qualcomm.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIACoe/GgC/43Qy07EMAwF0F8ZZU0i++bRlhX/gRAaStpG6gMSW
 qhG/XfSLtCw68bSteQj2zeRfAw+icfLTUS/hBSmMQf3cBF1dx1bL8N7zgIEywTItl+HOb7O6U0
 2AMhU7GyjRR74iL4JPwf2/JJzF9LXFNfDXnjvHgxVINJgKhUMnNGS5bdPvV9V3fmxfZpSUp/zt
 a+nYVC5iB1bcA9YIguUypC2FYpzgv4v5HlLyrDWxCd3MH8CE3G+3mqjNDtniM8J9l5w+wMJCly
 iKE5csW3bLzE8uHWyAQAA
X-Change-ID: 20251022-glymur_usb-f222049165f3
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>,
        Abel Vesa <abel.vesa@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Wesley Cheng <wesley.cheng@oss.qualcomm.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Elson Roy Serrao <quic_eserrao@quicinc.com>
X-Mailer: b4 0.14.3
X-Proofpoint-ORIG-GUID: o0h8R29NfRg0nINvOKSIu7CyU23tTaMD
X-Proofpoint-GUID: o0h8R29NfRg0nINvOKSIu7CyU23tTaMD
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDIyMDE2NCBTYWx0ZWRfX3OQpaZ5Zy37Q
 T1JDvwMXXueO0YwH/SibrjB24uGc7az3MeQdNxKeGj0dGcnOFQWM15+lpgnKY2zi1cJsbxvaR9N
 inL+R7ZY+n8GdNSHL7o/scXsqC2HSk50QRAJskgUr7brPOcC7c8KSa92pM54wEufnGyhsPHlSNi
 fQykTrqADc85fnONoGCd/HX3pyPGgFZ7eX/vFrwR4Hf5WTGg9558mY33okzfcjiJjuHW1GK+OTf
 PDE0+jFAdqOSa4+BgBW0kmsIzs262xvWDqZQqOtG2nSrTgnQNmynckxAxzhOnz1EOR6rXAzQyBy
 IDc2yyTRD5iRFEYyeNuXqCHSE94sb5yxuebJIK8cSr6cLP38RTZNLtbbzdGMIuZ9+0VqL+kwRiO
 6ZkhiY+ilNO+n3rOTa//rUfKpUNV8Q==
X-Authority-Analysis: v=2.4 cv=UOTQ3Sfy c=1 sm=1 tr=0 ts=68fc1e3a cx=c_pps
 a=Oh5Dbbf/trHjhBongsHeRQ==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=fXH650Jz_15WDPxxfBwA:9 a=QEXdDO2ut3YA:10
 a=_Vgx9l1VpLgwpw_dHYaR:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-24_05,2025-10-22_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 suspectscore=0 adultscore=0 clxscore=1015 phishscore=0
 bulkscore=0 malwarescore=0 impostorscore=0 priorityscore=1501 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510220164
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251024_174756_187214_B4B81832 
X-CRM114-Status: GOOD (  17.13  )
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

This series enables the PHY level changes that are required to support
the type C based controllers and the multiport controller.  The typeC
ports utilize a usb43dp based QMP PHY for the SSUSB path, while using
the M31 eUSB2 PHY for the HSUSB path.  For the multiport controller,
it will utilize two QMP UNI PHYs for the SSUSB path, and two M31 eUSB2
PHYs for the HSUSB path.

Signed-off-by: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
---
Changes in v6:
- Reworked the reference clock requirements for the QMP and M31 eUSB2
  PHYs.  In the QMP case (both UNI and combo), removed the need for
  the clkref entry, as TCSRCC clkref switches will handle votes on the
  CXO clock.  For entries w/o a TCSRCC clkref switch, populate the ref
  entry to the CXO handle, while others (with TCSRCC entries) will
  the TCSRCC clkref associated to the USB core.
- With the reference clock rework, dropped:
    phy: qualcomm: m31-eusb2: Make clkref an optional resource
- Removed the need for a clkref entry in the QMP combo clocks list.
  Removed previous reviewed-by tag due to this change.
- Split non PHY subsystem based patches into a separate submission.
- Remove DP related init tables from QMP combo
- Link to v5: https://lore.kernel.org/r/20251006222002.2182777-1-wesley.cheng@oss.qualcomm.com

Changes in v5:
- Moved phy-qcom-qmp-usb43-pcs-v8.h into USB specific QMP driver
- Fixed DT bindings for clock properties for QMP combo PHY
- Link to v4: https://lore.kernel.org/r/20251001220534.3166401-1-wesley.cheng@oss.qualcomm.com

Changes in v4:
- Updated DT bindings change for QMP combo PHY to have IF/THEN blocks
to handle the newly added clkref, and fixed the commit message as well
- Added a new header with v8 offsets for the PCS MISC register set,
and refgen current load for the QMP combo PHY driver
- RE-added the headers for the QMP combo PHY
- Link to v3: https://lore.kernel.org/r/20250925022850.4133013-1-wesley.cheng@oss.qualcomm.com

Changes in v3:
- Fixed some incorrect patch ordering.
- Alphabetized Glymur QMP settings for combo and UNI setting arrays
- Link to v2: https://lore.kernel.org/r/20250925005228.4035927-1-wesley.cheng@oss.qualcomm.com

Changes in v2:
- Updated QMP combo PHY to properly handle the refgen-supply and to
remove the primary core reference/tag
- Updated QMP UNI PHY to properly handle the refgen-supply and added
a separate IF/THEN block to handle the new clkref
- Updated M31 eUSB2 to make clocks and clocks-name required for sm8750
and optional for Glymur
- Fixed missing PCS MISC table
- Added SMB2370 repeater changes
- Link to v1: https://lore.kernel.org/r/20250920032108.242643-1-wesley.cheng@oss.qualcomm.com

---
Wesley Cheng (8):
      dt-bindings: phy: qcom,sc8280xp-qmp-usb43dp-phy: Add Glymur compatible
      dt-bindings: phy: qcom,qmp-usb: Add Glymur USB UNI PHY compatible
      dt-bindings: phy: qcom-m31-eusb2: Add Glymur compatible
      dt-bindings: phy: qcom,snps-eusb2-repeater: Add SMB2370 compatible
      phy: qualcomm: Update the QMP clamp register for V6
      phy: qualcomm: qmp-combo: Update QMP PHY with Glymur settings
      phy: qualcomm: qmp-usb: Add support for Glymur USB UNI PHY
      phy: qualcomm: eusb2-repeater: Add SMB2370 eUSB2 repeater support

 .../bindings/phy/qcom,m31-eusb2-phy.yaml           |   9 +-
 .../phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml        |  19 +
 .../phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml         |  16 +
 .../bindings/phy/qcom,snps-eusb2-repeater.yaml     |   1 +
 drivers/phy/qualcomm/phy-qcom-eusb2-repeater.c     |  18 +
 drivers/phy/qualcomm/phy-qcom-qmp-combo.c          | 326 ++++++++++-
 drivers/phy/qualcomm/phy-qcom-qmp-pcs-aon-v6.h     |  12 +
 drivers/phy/qualcomm/phy-qcom-qmp-pcs-aon-v8.h     |  17 +
 drivers/phy/qualcomm/phy-qcom-qmp-pcs-misc-v5.h    |  12 +
 drivers/phy/qualcomm/phy-qcom-qmp-pcs-misc-v8.h    |  12 +
 .../phy/qualcomm/phy-qcom-qmp-qserdes-lalb-v8.h    | 639 +++++++++++++++++++++
 drivers/phy/qualcomm/phy-qcom-qmp-usb.c            | 163 ++++++
 drivers/phy/qualcomm/phy-qcom-qmp-usb43-pcs-v8.h   |  33 ++
 .../qualcomm/phy-qcom-qmp-usb43-qserdes-com-v8.h   | 224 ++++++++
 drivers/phy/qualcomm/phy-qcom-qmp.h                |   2 +
 15 files changed, 1495 insertions(+), 8 deletions(-)
---
base-commit: 15ba5ae3b0ede7e355c88ac074e946fc1aa21026
change-id: 20251022-glymur_usb-f222049165f3

Best regards,
-- 
Wesley Cheng <wesley.cheng@oss.qualcomm.com>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
