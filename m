Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DFE67C88E65
	for <linux-phy@archiver.kernel.org>; Sun, 13 Sep 2026 14:41:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=O/6cEDDBRAYDNvpkjEHRioR3Ykzf05HE+/jStS2NwH4=; b=GCoPI1NDDbPvXc
	v3Lai1xS/M9m/Q2qNPrQ96LA8ag2lhSIK6F4Bqbkcj1OpPZkw26t29VmK9VZhshSBIvbk8a6FnDLX
	BmUAVN3Ud5KqzVWxNILw8jq2ezi24YkW7Dchy5aPMbmmx7QnQgd2wYubG6WXiX6aZhro0WYKXddB/
	UzUITI8TvqBsw19fylBcax76iZPEgg1WAXTl00Wl2x9cxqlvjZUE2iGainT0zVPZ5172rfz8eM+3z
	kL93kEd3wCyCFt9tNtj+v9BBnHq3SZFnBMN36Vyyeg8jgoqd6wV+NQijTg3a1g/sunSJAmIEJPYm1
	Rc8VkmO+ZFdEdvLZZF6g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x5lOY-00000001ijs-2WWN;
	Sun, 13 Sep 2026 14:41:26 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x5lOW-00000001ijV-36KM
	for linux-phy@lists.infradead.org;
	Sun, 13 Sep 2026 14:41:25 +0000
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 68DE06Zg2786756
	for <linux-phy@lists.infradead.org>; Sun, 13 Sep 2026 14:41:24 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	kYFyJ1F4SKsDsBiyEupbuIpq62nd+4MH7xdAqe/Aqkc=; b=NGS6pZ/DhxHc0z3V
	jVMxrLOMYQDK+o9rec23ltfYtrZJlknnLIj4jAR3/PpXc2z3xxDYK56a4SIsjw1A
	Wr6FP4CB2Bu/LoqIjfzTK+eXQrMam6Ll1Kuz/H+7oiB+2THI8QQSnABaF0kEa/tq
	uzi7EfmAdZ0sMg7EyIXPiiDB+PkZVB87Rs/ynqWoQDaowiOTDqPOUCNcX0JkrHeJ
	JcbBgCD0nZscs48RA13X2Le0JW24SF8H6DbuHoRGCN0V48Q639L+ru4RtWz6VhRi
	N1mLgdHUtrSw7LDrqi9AIajZliCcd069aSZdcQCIi5AhlqE9jL9pi+lYu4561H63
	3eHs+g==
Received: from mail-pg1-f197.google.com (mail-pg1-f197.google.com [209.85.215.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4gmy9cbh7q-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Sun, 13 Sep 2026 14:41:24 +0000 (GMT)
Received: by mail-pg1-f197.google.com with SMTP id 41be03b00d2f7-cbe77d6864dso4092627a12.2
        for <linux-phy@lists.infradead.org>; Sun, 13 Sep 2026 07:41:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1789310483; x=1789915283; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=kYFyJ1F4SKsDsBiyEupbuIpq62nd+4MH7xdAqe/Aqkc=;
        b=JV6DfJVdQtkLZeElA9I6r1CuF4uosoSEKV8gAyaCrc0HwyyFVOEve5DXFMHk5GTuaZ
         dZipb/LQ3OzIQjPWhD9bHs1UpAK8OU0YpQEBADLZfmt8Gmt6xBNY2SV89+3vrtKqhzhy
         YHfqFtLt7nlv5PGMKdKr/rB8geltW15uaO/iijY9EPFhjGARgU9TmgKwSAxtBHUWWyiW
         NjarziFKEbtI+GGB6KCdt/AaBhlOPpZOvpN6DiYJedwFNvfNaYW0IL7JIBeHNW++/TqG
         /nbB4eG52M2wc3yZXrBW0Ikf93+SHp0gtZsFKvtjC9QUquRI+IjHAx7AATiCdfB1Ri6r
         7Sxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1789310483; x=1789915283;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=kYFyJ1F4SKsDsBiyEupbuIpq62nd+4MH7xdAqe/Aqkc=;
        b=CwGVUInK1ubfdOyIrzlKn/tyGthu3aYp4ZEgTx1RqDZUr2Lnh3t5VNDZAb2s/nA7td
         TfbPbngPQXNCDlE+LuUVjdtBqVpfWprOfRvbv09jiXWYvwcwraVIBsAK74JrYCptNn7N
         1u77VwxtJ1G2sEpUEVC902BIkAUWrC4yT6gTnP102qfi/sW6NV3WzS+AE48BU0ONWmRT
         z1NrQt1yZBKo4u0wVI7EpUxZdt4+ya3rXlbsXN/bsa9iGlW6bYe6tKcneX2a4rHtbqbc
         owipCzKlG4BwdwOrjIi+MDe8LsXc1YPFKUhWk5K7zJ2lYGTJrDoTb59HUjXmBJsMCKnW
         WWbA==
X-Gm-Message-State: AFuF++kvRPCIsYvP4QvU3k76H1iq2OpUgcg66Q2QWmFUUkKh3o3SkI+H
	k0Z6ofSb9Ts7UQiBt8JZX+FRy9tilBO2ejdmqGihoqU+3EAAa+eL6In0kLJSuv2O+xeZPK0Wfhn
	J2mOjkn2gSsnnT7wRXzszBkVUBIyXY/ntQrlXX+oM5uXbTyFJDLy3Bcm64losUki/Ah11
X-Gm-Gg: AYBFou0qzM6y/NUptVGLKhspsFhCRxRTtAKm091/4U78aCrKyMwzo7KOQeHjoAUYlBH
	12+zr9n4BjKhuFtmOzfEZ/WEer/mcBxeBxWOiflOZAMvZacVhbjC+MskyRvO1AAW5kF97qW4sxQ
	+q6y1hGkO8HrqzW8+SZ9t8SCMeV38Xa3ZWonxFKpFTPi4iXJeRGAiP82UpCNP4/QILklCMcvWYW
	CKPdBOkHCbq8lnEGD6/ZjSS8SkrYF9w18OmQ49cs3iKmG7FSpyVza6YJUMYuAnlyPFL1dQSsicO
	ANZ6p7QeGYPbVLuDUPcRM/CwTviBRrZqJuD1FdkM3rHTzcuchs5nnpUk17QbpE2ciOjjE3shun9
	F5G2fawfpg2hEMnWfY299Lmn/c4EvBVNeBaucZqjqyOGpMBwfnQpebme66YnJAzTo7ruTHA==
X-Received: by 2002:a05:6a20:1590:b0:3d3:ae50:97cb with SMTP id adf61e73a8af0-3daed84ecc8mr27525195637.24.1789310483535;
        Sun, 13 Sep 2026 07:41:23 -0700 (PDT)
X-Received: by 2002:a05:6a20:1590:b0:3d3:ae50:97cb with SMTP id adf61e73a8af0-3daed84ecc8mr27525141637.24.1789310483159;
        Sun, 13 Sep 2026 07:41:23 -0700 (PDT)
Received: from hu-kriskura-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-14382741839sm2904705c88.6.2026.09.13.07.41.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 13 Sep 2026 07:41:22 -0700 (PDT)
From: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
Date: Sun, 13 Sep 2026 20:10:48 +0530
Subject: [PATCH v8 5/5] usb: dwc3: qcom: Modify interrupt handling for
 eUSB2 Phy targets
MIME-Version: 1.0
Message-Id: <20260913-eusb2-interrupt-v8-v8-5-0f505b9c394b@oss.qualcomm.com>
References: <20260913-eusb2-interrupt-v8-v8-0-0f505b9c394b@oss.qualcomm.com>
In-Reply-To: <20260913-eusb2-interrupt-v8-v8-0-0f505b9c394b@oss.qualcomm.com>
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
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1789310452; l=6358;
 i=krishna.kurapati@oss.qualcomm.com; s=20260707; h=from:subject:message-id;
 bh=ZxUNAsUxlczNYSQtVpJk4jpYB7XXII4MY97qOtw6FW8=;
 b=c0ptxnRcLFIuw80x/cdK3JLwkGCwrUNYbYwWIuOFuebHYUTSwpeeiXbZqx05wICe8gviolqNu
 EAKX09K78MoAZT2m75YoZKeITkyw0hW0IZXl48Uv7BKVB8WvSFzk8/K
X-Developer-Key: i=krishna.kurapati@oss.qualcomm.com; a=ed25519;
 pk=6PmiuwGCdov3wRO+bdmRlRxRtmJyDKz3ED57LLPVgds=
X-Proofpoint-Spam-Info: AW1haW4tMjYwOTEzMDIxMCBTYWx0ZWRfXx6MctFS15WTF
 rHefu9R1Zj+wuRYzhcWo13uvOTzlPARlZwW9CQBkSW2ZokeYmZRsuXmLtw1k91sr3pA35cW/s3e
 aADFl30F3vcsJZn/iR0tt+sAGzMOTMY=
X-Proofpoint-GUID: gPGO8rvAKog-hglUsE-kgiA7mWaeh0xZ
X-Authority-Analysis: v=2.4 cv=BdZNQbt2 c=1 sm=1 tr=0 ts=6aa6b614 cx=c_pps
 a=rz3CxIlbcmazkYymdCej/Q==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=VdqzKS8jKosA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=Um2Pa8k9VHT-vaBCBUpS:22
 a=jIQo8A4GAAAA:8 a=EUspDBNiAAAA:8 a=Rua53wt-LDCXJtC3cl0A:9 a=QEXdDO2ut3YA:10
 a=bFCP_H2QrGi7Okbo017w:22
X-Proofpoint-ORIG-GUID: gPGO8rvAKog-hglUsE-kgiA7mWaeh0xZ
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwOTEzMDIxMCBTYWx0ZWRfX4G2CIk6BqnAI
 vfJovIcL6tb5yQkUxBPahJC5j6deF6GLm63WmZdTZcrcxePAAYBdalDwMoW+vwU35n7MFDvJyGz
 vncfvxnt8OoxDSt6QpSeFLaI5t01MHJMhIwpVfLVm8F7DdSBkR6scc2or+aMNHAv50mR+LAeBEF
 9eq5GooO1qCPrKFdSpJRLLFvCD8oz+uITN+02aPMdnlbvtU/RsxPWD0ljRpTMeUMJAiHZ/S6Bdn
 Sk2hmOZm13TyD+lDr0cdl5jrR1Vs13rav0jtHtTQbiMQJLex9txoHYGZUh+C2SCCSwenH++KIC3
 H/ygOyxFXfxAxcJfLR1mQaTRlva8PUHF+AYVU95b4YnSxk15x2QIfD1Z079mrsqukySIfLqEexw
 qSwMMb4sW395suLEIt+DBOzWKNtOYlfZbJ/GUetkKLOq2hu1A91B+b17OjYzMM1G/dtcierQZ4O
 2cUNwVGMeNWFaENK3pQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-09-13_05,2026-09-11_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 suspectscore=0 adultscore=0 malwarescore=0 clxscore=1015
 spamscore=0 bulkscore=0 lowpriorityscore=0 phishscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2609040000 definitions=main-2609130210
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260913_074124_797303_1A4BD703 
X-CRM114-Status: GOOD (  21.89  )
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
eD- line states, query the phy type and configure the wakeup interrupts
accordingly.

Acked-by: Thinh Nguyen <Thinh.Nguyen@synopsys.com>
Acked-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Signed-off-by: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
---
 drivers/usb/dwc3/dwc3-qcom.c | 63 +++++++++++++++++++++++++++++++++-----------
 1 file changed, 48 insertions(+), 15 deletions(-)

diff --git a/drivers/usb/dwc3/dwc3-qcom.c b/drivers/usb/dwc3/dwc3-qcom.c
index ac68b4218b56..e6b6beb38fcb 100644
--- a/drivers/usb/dwc3/dwc3-qcom.c
+++ b/drivers/usb/dwc3/dwc3-qcom.c
@@ -85,6 +85,7 @@ struct dwc3_qcom {
 	struct icc_path		*icc_path_apps;
 
 	enum usb_role		current_role;
+	bool			has_eusb2_phy;
 };
 
 #define to_dwc3_qcom(d) container_of((d), struct dwc3_qcom, dwc)
@@ -272,15 +273,23 @@ static void dwc3_qcom_disable_wakeup_irq(int irq)
 	disable_irq_nosync(irq);
 }
 
-static void dwc3_qcom_disable_port_interrupts(struct dwc3_qcom_port *port)
+static void dwc3_qcom_disable_port_interrupts(struct dwc3_qcom *qcom, int port_index)
 {
+	struct dwc3_qcom_port *port = &qcom->ports[port_index];
+
 	dwc3_qcom_disable_wakeup_irq(port->qusb2_phy_irq);
 
 	if (port->usb2_speed == USB_SPEED_LOW) {
-		dwc3_qcom_disable_wakeup_irq(port->dm_hs_phy_irq);
+		if (qcom->has_eusb2_phy)
+			dwc3_qcom_disable_wakeup_irq(port->dp_hs_phy_irq);
+		else
+			dwc3_qcom_disable_wakeup_irq(port->dm_hs_phy_irq);
 	} else if ((port->usb2_speed == USB_SPEED_HIGH) ||
 			(port->usb2_speed == USB_SPEED_FULL)) {
-		dwc3_qcom_disable_wakeup_irq(port->dp_hs_phy_irq);
+		if (qcom->has_eusb2_phy)
+			dwc3_qcom_disable_wakeup_irq(port->dm_hs_phy_irq);
+		else
+			dwc3_qcom_disable_wakeup_irq(port->dp_hs_phy_irq);
 	} else {
 		dwc3_qcom_disable_wakeup_irq(port->dp_hs_phy_irq);
 		dwc3_qcom_disable_wakeup_irq(port->dm_hs_phy_irq);
@@ -289,26 +298,38 @@ static void dwc3_qcom_disable_port_interrupts(struct dwc3_qcom_port *port)
 	dwc3_qcom_disable_wakeup_irq(port->ss_phy_irq);
 }
 
-static void dwc3_qcom_enable_port_interrupts(struct dwc3_qcom_port *port)
+static void dwc3_qcom_enable_port_interrupts(struct dwc3_qcom *qcom, int port_index)
 {
+	struct dwc3_qcom_port *port = &qcom->ports[port_index];
+
 	dwc3_qcom_enable_wakeup_irq(port->qusb2_phy_irq, 0);
 
 	/*
 	 * Configure DP/DM line interrupts based on the USB2 device attached to
-	 * the root hub port. When HS/FS device is connected, configure the DP line
-	 * as falling edge to detect both disconnect and remote wakeup scenarios. When
-	 * LS device is connected, configure DM line as falling edge to detect both
-	 * disconnect and remote wakeup. When no device is connected, configure both
-	 * DP and DM lines as rising edge to detect HS/HS/LS device connect scenario.
+	 * the root hub port. For non-eUSB2 targets, when HS/FS device is connected,
+	 * configure the DP line as falling edge to detect disconnect and remote
+	 * wakeup. When LS device is connected, configure the DM line as falling edge
+	 * for the same. For eUSB2 targets, the lines are swapped and rising edge is
+	 * used: DP line for LS and DM line for HS/FS device detection. When no
+	 * device is connected, configure both DP and DM lines as rising edge to
+	 * detect HS/FS/LS device connect scenario.
 	 */
 
 	if (port->usb2_speed == USB_SPEED_LOW) {
-		dwc3_qcom_enable_wakeup_irq(port->dm_hs_phy_irq,
-					    IRQ_TYPE_EDGE_FALLING);
+		if (qcom->has_eusb2_phy)
+			dwc3_qcom_enable_wakeup_irq(port->dp_hs_phy_irq,
+						    IRQ_TYPE_EDGE_RISING);
+		else
+			dwc3_qcom_enable_wakeup_irq(port->dm_hs_phy_irq,
+						    IRQ_TYPE_EDGE_FALLING);
 	} else if ((port->usb2_speed == USB_SPEED_HIGH) ||
 			(port->usb2_speed == USB_SPEED_FULL)) {
-		dwc3_qcom_enable_wakeup_irq(port->dp_hs_phy_irq,
-					    IRQ_TYPE_EDGE_FALLING);
+		if (qcom->has_eusb2_phy)
+			dwc3_qcom_enable_wakeup_irq(port->dm_hs_phy_irq,
+						    IRQ_TYPE_EDGE_RISING);
+		else
+			dwc3_qcom_enable_wakeup_irq(port->dp_hs_phy_irq,
+						    IRQ_TYPE_EDGE_FALLING);
 	} else {
 		dwc3_qcom_enable_wakeup_irq(port->dp_hs_phy_irq,
 					    IRQ_TYPE_EDGE_RISING);
@@ -324,7 +345,7 @@ static void dwc3_qcom_disable_interrupts(struct dwc3_qcom *qcom)
 	int i;
 
 	for (i = 0; i < qcom->num_ports; i++)
-		dwc3_qcom_disable_port_interrupts(&qcom->ports[i]);
+		dwc3_qcom_disable_port_interrupts(qcom, i);
 }
 
 static void dwc3_qcom_enable_interrupts(struct dwc3_qcom *qcom)
@@ -332,7 +353,7 @@ static void dwc3_qcom_enable_interrupts(struct dwc3_qcom *qcom)
 	int i;
 
 	for (i = 0; i < qcom->num_ports; i++)
-		dwc3_qcom_enable_port_interrupts(&qcom->ports[i]);
+		dwc3_qcom_enable_port_interrupts(qcom, i);
 }
 
 static int dwc3_qcom_suspend(struct dwc3_qcom *qcom, bool wakeup)
@@ -617,6 +638,7 @@ static int dwc3_qcom_probe(struct platform_device *pdev)
 	int			ret;
 	bool			ignore_pipe_clk;
 	bool			wakeup_source;
+	struct phy		*phy;
 
 	qcom = devm_kzalloc(&pdev->dev, sizeof(*qcom), GFP_KERNEL);
 	if (!qcom)
@@ -683,6 +705,17 @@ static int dwc3_qcom_probe(struct platform_device *pdev)
 	if (ignore_pipe_clk)
 		dwc3_qcom_select_utmi_clk(qcom);
 
+	phy = devm_of_phy_get_by_index(dev, dev->of_node, 0);
+	if (IS_ERR(phy)) {
+		if (PTR_ERR(phy) != -ENODEV) {
+			ret = dev_err_probe(dev, PTR_ERR(phy),
+					    "failed to get usb2 phy\n");
+			goto clk_disable;
+		}
+		phy = NULL;
+	}
+	qcom->has_eusb2_phy = (phy_get_type(phy) == PHY_TYPE_EUSB2);
+
 	qcom->mode = usb_get_dr_mode(dev);
 
 	if (qcom->mode == USB_DR_MODE_HOST) {

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
