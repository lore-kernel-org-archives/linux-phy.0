Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5A148C624DB
	for <linux-phy@archiver.kernel.org>; Sat,  5 Sep 2026 15:29:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2ui9hABDswwTLIT05KvPS/Wxb7hQ3k4nn8UxP2xmaJE=; b=vocK+69URee+cl
	Wck/9cWQ9kEY/Jl4Mx76mnYIF4xDre9LpssZ1NpWV8sMeBUN1e5nG6EIcFBPwT2SkbJ93TcQ9tBIm
	yoQEvhDgrGkHunzXzxSySzFBThtencmArZ9bl/sWH2zax6CKBDj6vEpZ3Jx3phXeALHQtQsJnlof8
	OP/j7dRi5HHI4j4gkAwQVcle4T2C3NXs9V8L6aZbHhLEhLZYOhxE0bwcp8B5PeGKTWr4OvzzKfx9v
	Vq6bpcCsHFBRkGXEzZjrvu93BcbF0zWDms/FwbeBPf/5EiRo1gc1oOf+3hAn5qmUcVfvHc1Wvral/
	DsUTcg3GnlWCo8m3zO8g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x2sKw-00000004CNV-2xAL;
	Sat, 05 Sep 2026 15:29:49 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x2sKu-00000004CMG-0psJ
	for linux-phy@lists.infradead.org;
	Sat, 05 Sep 2026 15:29:45 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 685EjBRg3170065
	for <linux-phy@lists.infradead.org>; Sat, 5 Sep 2026 15:29:43 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	m1DYK2Eht48WiBu7IzlXKngOjp19WSTBRUJqw/HlGt0=; b=D0i9/Zc3VKRn5zg7
	tSHp3YUm8ykn6xaGVmpo2XbstGF8w/Dhj5PyeoT0XESIc5CglJ569q1UlTii14Tg
	Ake2PbFU2G/5uBPI4rjenWlGexBWvIK/cre5jH9jIpAloR9hRq/Cav1md85ow8Ky
	ABum3tHylsSXycP/5Vyw7nPAR0CkXRu9l3jNmoYWbPbLcklEcgx9tELoU2hNW9nl
	S60ndYsOjepGcIycvb1I8UBcYXOwCtq3R90RpCogLJ0dAvu+79280kVNCVX4gbVx
	1lH+wL+i0e3T6KvuCd0Ls1NeGCDLLq18U5dywJBNmu5OioZW9Kq68DpclEsCN4eF
	MiOFyw==
Received: from mail-pj1-f69.google.com (mail-pj1-f69.google.com [209.85.216.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ggany1ex2-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Sat, 05 Sep 2026 15:29:43 +0000 (GMT)
Received: by mail-pj1-f69.google.com with SMTP id 98e67ed59e1d1-398dc3d8f0fso3336478a91.0
        for <linux-phy@lists.infradead.org>; Sat, 05 Sep 2026 08:29:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1788622182; x=1789226982; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=m1DYK2Eht48WiBu7IzlXKngOjp19WSTBRUJqw/HlGt0=;
        b=cUpXfDCfirFju+O3HScm77Plry14ULC7YqHPH9tmALV1PZlokO0z/znpx3+QAXG2Bp
         FTAxikDS6CN+hSDuFW2kxfJUmeF65pQ0OmoQME09GVTkfvgtki3BFqpOxw5SJMip0ySU
         3g13suvvcFtU7+UckK8GePbjaodsD4a7kBtBaO8dsF3k9aECoUz7C7J0AceiiPoD073x
         IS1KlVYSguUnlyMcAo2ec9grXpSITzNX7SRHefl3ncrkBuCy8U+gBXCurYHApMAZI5rj
         g7EbHIPr3EC1d9mmwfjFWrqm2X/g7GurjMyqWkCxA0C8Gv8xi76NtRPc+fGOiRQm9G2I
         EP+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788622182; x=1789226982;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=m1DYK2Eht48WiBu7IzlXKngOjp19WSTBRUJqw/HlGt0=;
        b=EMzc33coDei6R+s+6+/jNa+ijd4SC1jgrq9P4skEh/TPc9Jp7xJ7i9DUASmhzvbMIR
         hacRar56YG3eRwNH4ZTQGwSkBQo01qD6yAI5MijQeySrp6EtrnzJDK82ij4gtPEOS5Hf
         KySWZvkG0Qt36R/11w4gKwKlEsjXV08D5lsrSvI2DoT29Jl86xKquPHPFLdks8GZmNDj
         hNoHbIf4t5IsHZDL2OLYxzqBaxasxLHXit7zm5vkDqlhIql74YcB5XMb4aPwOjEjUKIK
         M8UdIwe+l7Q/KCxMaOwNYDjKN4vFgz3ae0Ay/oTUS0VbNdvs9B91jQ7caijbkFHjCbWK
         MK4w==
X-Gm-Message-State: AFuF++ny4VA7CusBECtY8PBH+xv1DXnhMjw9Uutkgvd55CeKMaR+v+Vw
	VA0oKV5/9Y8YDVsclpYLmzQWZ/T363OYSEeNJlTSI3/L6hkUjNmRWXkXcw7Ngza6f/ZPODsclf6
	6L8BWySzn0LNZKfAL2ECvESsg7o7zP5kCQUejODo6PkN5VwBPkqMdTEteKswOawEHpdAS
X-Gm-Gg: AYBFou0msd/QskWTq6GbXy10+f2sUIJQ9EL5K+v+sO/tb4CbrKg7epoDgaELhtynBTD
	tMXTDaNbKrFmjrnc13bQyttGKbDogr6DeIyKKAZwHRyfcMtFJNS++toM/itfvgCw907YdLzeK32
	m6rsbxARCj5G2pveuiTIyOU/3FOBR+j7QYwbYywPqP69pVJQER/hg3zQZWGlXBS2E+Pdrb+Y+C5
	pzeiSQkflS24SCN4aXT2AI1th8ud3lgWFRUFdIAxtSHTbdg1gBGdY1cvoSlCfj1TqB97lRfb9NE
	eYHonaWoDd47GlhBym3qsHhBGR1vXnBfx6zVDZkWkBsEREEw04CGPzH/KuM+iZEsr84hQDZ4kV9
	q1M2THsfT+F0WJSWjM7TqTtdzWWOiaZxod8Nqaq1N9BjO7QcjD0v1wJstd+TD87YE7VoaRQ==
X-Received: by 2002:a17:90b:5804:b0:398:9beb:a2b6 with SMTP id 98e67ed59e1d1-39b087e4c2fmr22010634a91.24.1788622182141;
        Sat, 05 Sep 2026 08:29:42 -0700 (PDT)
X-Received: by 2002:a17:90b:5804:b0:398:9beb:a2b6 with SMTP id 98e67ed59e1d1-39b087e4c2fmr22010587a91.24.1788622181565;
        Sat, 05 Sep 2026 08:29:41 -0700 (PDT)
Received: from hu-kriskura-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-3339af25062sm23592635eec.16.2026.09.05.08.29.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 05 Sep 2026 08:29:40 -0700 (PDT)
From: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
Date: Sat, 05 Sep 2026 20:59:09 +0530
Subject: [PATCH v7 5/5] usb: dwc3: qcom: Modify interrupt handling for
 eUSB2 Phy targets
MIME-Version: 1.0
Message-Id: <20260905-eusb2-interrupt-v7-v7-5-820cf5377a70@oss.qualcomm.com>
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
        Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1788622149; l=6273;
 i=krishna.kurapati@oss.qualcomm.com; s=20260707; h=from:subject:message-id;
 bh=0vlezWZK4fA+Na166NVdgqHlRZAT3nhTjycS7km+CQc=;
 b=fqAYeayRuF80MQHmjWGW+p52Hhfe0N8b2XCwhMvq5pKCiatZ8e5jgunbPWytfIT0k+gB6d1gi
 bAgj4qvkvF0DWRCds99/v2AFIEAG/P3q0GAWHMD7oDU0kzoqjHoVrhR
X-Developer-Key: i=krishna.kurapati@oss.qualcomm.com; a=ed25519;
 pk=6PmiuwGCdov3wRO+bdmRlRxRtmJyDKz3ED57LLPVgds=
X-Authority-Analysis: v=2.4 cv=X45i7mTe c=1 sm=1 tr=0 ts=6a9c3567 cx=c_pps
 a=vVfyC5vLCtgYJKYeQD43oA==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=VdqzKS8jKosA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=3WHJM1ZQz_JShphwDgj5:22
 a=jIQo8A4GAAAA:8 a=EUspDBNiAAAA:8 a=Sf5RIT6NobiIG8tfIdUA:9 a=QEXdDO2ut3YA:10
 a=rl5im9kqc5Lf4LNbBjHf:22
X-Proofpoint-ORIG-GUID: N9hOjxbhdz1r4rgjSAaheBvBHH3mxm4P
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwOTA1MDE3MCBTYWx0ZWRfX8JxaLdfMpfzt
 ft6bwUR9SgSqeKj3fJ2qnKI6wDGnD1/Pti9/legewX6785J3Hn0ceV2dfNWH+0HtjUIlLDkX+ok
 NbcX/8QJOLGWzfDSj8rkftnpHN5zPsxuXt38OdRNoBQ5HIlJLLG9qFemoOOlwS2u/bu+A3RIvQM
 mH+Zd6QI5o+Sr3q57LRuI6HkpyawLQBdLqnzC7+AezQvvIyUvFq8Vmranr1Z/Rh0wwvu2yPMvRc
 ftOmDtuIvkJaYRqmZlMHMp+e/gMLfp2lHemtj/rvwTcHkuryq4d0hfGIqkflozt2wQ1GSGXzrsj
 ZyWM8q1K5/obao5JEu2KJwtNIIq7gWJ+chX/Ao9vNb1oVXnuUhmtnJQnUhyYEqlKbv3l9r6xNts
 YMFFDIZmdNM9KfOX6GOlkcH9mwIxkT30H8DNp4Fse9o4HKF/MbdPyJ7GdYgTXuM3VSGF4m9uPQP
 DYalfrNGMfrKYWQZxfA==
X-Proofpoint-Spam-Info: AW1haW4tMjYwOTA1MDE3MCBTYWx0ZWRfX1SW8ra5o0bk6
 V9R1LYfrwVskdd6LBXzXy+M5LDg+3V7KqRT2Xpvb6EnCE3pi0i3fX5qj4PcBo/04dfKawJAoR15
 8rdvYkJs2Y2bHmB5fvaQvqWAHM64lqA=
X-Proofpoint-GUID: N9hOjxbhdz1r4rgjSAaheBvBHH3mxm4P
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-09-05_05,2026-09-03_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 bulkscore=0 suspectscore=0 clxscore=1015 adultscore=0
 impostorscore=0 malwarescore=0 lowpriorityscore=0 spamscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2609050170
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260905_082944_522090_E5624D53 
X-CRM114-Status: GOOD (  21.70  )
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
Signed-off-by: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
---
 drivers/usb/dwc3/dwc3-qcom.c | 63 +++++++++++++++++++++++++++++++++-----------
 1 file changed, 48 insertions(+), 15 deletions(-)

diff --git a/drivers/usb/dwc3/dwc3-qcom.c b/drivers/usb/dwc3/dwc3-qcom.c
index ba26e61df915..2d1e66ff72ed 100644
--- a/drivers/usb/dwc3/dwc3-qcom.c
+++ b/drivers/usb/dwc3/dwc3-qcom.c
@@ -86,6 +86,7 @@ struct dwc3_qcom {
 	struct icc_path		*icc_path_apps;
 
 	enum usb_role		current_role;
+	bool			has_eusb2_phy;
 };
 
 #define to_dwc3_qcom(d) container_of((d), struct dwc3_qcom, dwc)
@@ -273,15 +274,23 @@ static void dwc3_qcom_disable_wakeup_irq(int irq)
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
@@ -290,26 +299,38 @@ static void dwc3_qcom_disable_port_interrupts(struct dwc3_qcom_port *port)
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
@@ -325,7 +346,7 @@ static void dwc3_qcom_disable_interrupts(struct dwc3_qcom *qcom)
 	int i;
 
 	for (i = 0; i < qcom->num_ports; i++)
-		dwc3_qcom_disable_port_interrupts(&qcom->ports[i]);
+		dwc3_qcom_disable_port_interrupts(qcom, i);
 }
 
 static void dwc3_qcom_enable_interrupts(struct dwc3_qcom *qcom)
@@ -333,7 +354,7 @@ static void dwc3_qcom_enable_interrupts(struct dwc3_qcom *qcom)
 	int i;
 
 	for (i = 0; i < qcom->num_ports; i++)
-		dwc3_qcom_enable_port_interrupts(&qcom->ports[i]);
+		dwc3_qcom_enable_port_interrupts(qcom, i);
 }
 
 static int dwc3_qcom_suspend(struct dwc3_qcom *qcom, bool wakeup)
@@ -628,6 +649,7 @@ static int dwc3_qcom_probe(struct platform_device *pdev)
 	int			ret;
 	bool			ignore_pipe_clk;
 	bool			wakeup_source;
+	struct phy		*phy;
 
 	qcom = devm_kzalloc(&pdev->dev, sizeof(*qcom), GFP_KERNEL);
 	if (!qcom)
@@ -698,6 +720,17 @@ static int dwc3_qcom_probe(struct platform_device *pdev)
 	if (ret)
 		goto clk_disable;
 
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
