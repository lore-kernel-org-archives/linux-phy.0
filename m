Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D0359C5DF97
	for <linux-phy@archiver.kernel.org>; Wed, 26 Aug 2026 17:03:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bYSbDbXXdv+8WU7XTBC1dWaDz13pBW/mizoNx1cDSzU=; b=Fq0YYtymzfic84
	xuT2sSGTNFtYMWM8KffYZDLhrs+xCTzIOP3Ucwmb3sTpDAnUDxj6Ds9fbIdblB90YvbLeMtgQmoB1
	WlxgY2DfbJK3nHlVysSzp9ESQJNfygA9Un7heazEHsM1gqGLnW1r/gZvcEFwSncun9f99g8ECkYBy
	G1/H7I0Qy1NSom6qkrQv+SZ3X4kSbhoPLrqpwDlsy0mHILmw3VvmvjOzXKy0ctqygahh7e36sMUfR
	5bO0/TBou4TWy9zVrF5R1i/tcosoiuqnWb98IpzdKNMWtu1Fza6s2bYvRgwl8EAQTh/V9iJpXmoOS
	qx84HUd250Q3qixDc4aQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wzH2P-00000002n4x-269o;
	Wed, 26 Aug 2026 17:03:45 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wzH2N-00000002n3t-0cAZ
	for linux-phy@lists.infradead.org;
	Wed, 26 Aug 2026 17:03:44 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 67QGuosN424862
	for <linux-phy@lists.infradead.org>; Wed, 26 Aug 2026 17:03:42 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	3vHGWFIJjsAFGHSNQdh3TuFTld2bWKDMvUtgnfDOI5g=; b=XH8Ie9sEiyY2JJK9
	nR6U3yck9t4ZaHsN7bRYcTAEnVpnoKWwHCJylqws03gl7PBdKPOz/yM276a8m088
	2cbZxg4TvGcqSQY4pE53gh7kVeCTttIfhsrzZylmLfTRByYRCC1Fh75Rq9BXozua
	dab0LxWGWOM2mG7mPWkn4LbNnvct9xGjuzvXFyBOdSm+cVdW9OeDbY4PNs0nllE3
	VBEavzG1thGbJhJyzP/e1W4Lt/mesd0blCVNCDXnk+0Z24VzINADL9tS+/CLSJap
	2reABX1gm7qN+nHXsGUIuPKJJWk+ZkPo8fYVzpk8D4DqzysK06TMV7Bun3nUjXw1
	gMWd6g==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4g9wmqssdg-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 26 Aug 2026 17:03:42 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-2d6f75c1219so24557995ad.3
        for <linux-phy@lists.infradead.org>; Wed, 26 Aug 2026 10:03:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1787763822; x=1788368622; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=3vHGWFIJjsAFGHSNQdh3TuFTld2bWKDMvUtgnfDOI5g=;
        b=h7B5NPmmRLS/+LZv4mNTEeBgLoXny6tr7Xpb5kb0U5fi/UE65ubuhc5R9MlDQfE4qf
         pOlKsfKKoGy9ss325+EamOB3oWRDgWax/Gd6vdcebtTP5gugEdv8fUKwIX/L06joxqLM
         GEHsiwCo74DyJEnIxgC2XPK/TdDRAuGkHIykM0fu/weriC9OlJTzcwH3VwfxfpDNzS7L
         kfloq1D/3I9w01gQQo1HNIxh7ytfCOcbX0BX161t7bQEP3d2MgBxZY44tUWmg60clNcT
         8gRd3QRWaCHFWvnvoBtENxPrmKVcoaQV6aGOJDfzhIiO5DVszuNJrAFq1yqRQnOuMSnC
         YANQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1787763822; x=1788368622;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=3vHGWFIJjsAFGHSNQdh3TuFTld2bWKDMvUtgnfDOI5g=;
        b=edINdpRd1/bu5BsnBl4QJegRwncROXyAOzdyTZ1fsMCAVBspGdEGpgKw7g108aRsZY
         uyYSXDtOrCYlwoxSgmlGRGbrmwnTcNdeRS9kubswrYvQYoW3HjA9RlEot+VAmq4g+BCV
         p08UURKrcx1+CRQqipSHwc8YVxLbqBTYfZczYnRJOvND3zPEoBWkSeQQyxG3berkQ8sv
         clm/eUSfmnaTaM9jIaNNFwo6oZMq5kGhMpgIV1HBcVhkxNEz+xqpXB9yS2xSEo203FgL
         hPdmK1h0Us5dB5q2gXkZtkPw3eqy5W6Nhc849+mRgjdYk6/tWelVURzsYmZqWXJrwgnu
         mWjg==
X-Gm-Message-State: AFuF++lc+C7ZM7fLD87U9g2zJl3qZjCtwpaSJdsWZV2AXFRwJFmyg2XA
	aDmcrUt6e4hvcV1bBcobE3YLQcwwAiAtyASOXXtS46B/0sK28PUpxPibVp1Q+EKSCvRlLCNwZvy
	VbxwWk7wUYqDq6Y9vK0gdi1a7gzLlDxklU3Smex5XgTtTED/H6wIqNwolC8yQ/k1rXphZ
X-Gm-Gg: AR+sD10LzRr9Tn66SxA0cz6d/IO7YSbZxV+fJvc977EHC+umN5uT+pFcm51+uJ1y8Os
	sOORFg9CqL7eAuhlAcYrOAPjX9KhGT+e1Ho1/BJ6ezhTUl2RQgVRSNNZ6oYww8PCIQKusFxoJ7E
	z+1fCZyNRbGsRmoCTxG8zDJ5XqeusYsQEJwHFRKukzgn3u3Wc/Axls2aRB6V0HTgenkohI+0Pp1
	xMXCaE64O8+r4p4sFVEe3Da3kWTsadjgZkyVTyT7VQ03ZVy/xRKHty2Fhd5/s/GW3cadl2Su/Ph
	WbUYWt2IScWRSrxAgOuD+DOf8SLXz4HP04dsIl8yszcqFZS0hLxzqrnRihqonfXOAZMJDTyKqEA
	N2HmO0zdRvCw43PZU/9zdslpDimNufcMmJq0k8qSFddPLgRUuI7Tc6aizH3BFTfzP8wIvuQ==
X-Received: by 2002:a17:903:8cc:b0:2ca:d9b3:715e with SMTP id d9443c01a7336-2d707aeafd2mr161456365ad.9.1787763821650;
        Wed, 26 Aug 2026 10:03:41 -0700 (PDT)
X-Received: by 2002:a17:903:8cc:b0:2ca:d9b3:715e with SMTP id d9443c01a7336-2d707aeafd2mr161454565ad.9.1787763821007;
        Wed, 26 Aug 2026 10:03:41 -0700 (PDT)
Received: from hu-kriskura-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2d70498ca3csm9938285ad.31.2026.08.26.10.03.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 26 Aug 2026 10:03:40 -0700 (PDT)
From: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
Date: Wed, 26 Aug 2026 22:32:55 +0530
Subject: [PATCH v6 5/5] usb: dwc3: qcom: Modify interrupt handling for
 eUSB2 Phy targets
MIME-Version: 1.0
Message-Id: <20260826-eusb2-interrupt-v6-v6-5-ae2601cfa80c@oss.qualcomm.com>
References: <20260826-eusb2-interrupt-v6-v6-0-ae2601cfa80c@oss.qualcomm.com>
In-Reply-To: <20260826-eusb2-interrupt-v6-v6-0-ae2601cfa80c@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1787763791; l=6255;
 i=krishna.kurapati@oss.qualcomm.com; s=20260707; h=from:subject:message-id;
 bh=PbkVzelh3SK4LAGc90lyEYBKrIbo8m3GcRVyvC3k60g=;
 b=sYeZFTG1MwrPBNun8Ymktc2hgHEuU4v83qe7dOLM3UnpKF9zK4mdDCQ9dM8CnsL7b1fV7xH/D
 Q9HrZa0GPNCC8lFTZ7IlaFzHeDlBz2ym8H/IgMX3pQW4ih6a3E91hwD
X-Developer-Key: i=krishna.kurapati@oss.qualcomm.com; a=ed25519;
 pk=6PmiuwGCdov3wRO+bdmRlRxRtmJyDKz3ED57LLPVgds=
X-Proofpoint-Spam-Info: AW1haW4tMjYwODI2MDE0MSBTYWx0ZWRfX+i9Sigr+tK1c
 4/yWdSRZdVhPSwyoy724s9JY6HVt40MOn/rkEtrWgetm7Dcbp/dtockVugS6MOIfxl2MlgWJEd9
 Gj24sYqRLgsJE9Isc5CnequrQM3St4o=
X-Proofpoint-ORIG-GUID: d2ukU98hAHSE02QPYvzY-qLBv3Lq_GPr
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwODI2MDE0MSBTYWx0ZWRfX6CV8OAP5Cc0U
 QsECn4eTTKCzwSOvYWg6mbOLy3mwJFJn7wNFKPJYkxtvhuMTTa9cPgnyEo9bkIF7OxQ1vnOqt+C
 aXTkk6WBdsCOroi/PijQsKS12vc/uuJRQZXKDSBbskHrn1EFJGyUUum+DzorRB8u6jtb4sXmmHP
 Lg3Ah/Omo/mUAyJmYnrcRZc+9vH1d490HNVnHtUY3fSTt0IkW5Dle0lCFuy2uKsFHqMr2sCOdRu
 yYckPMLhO/ICvW839GXGwIK2WAzeMlPRjcftkohbRNNs9Nwy9SdT7XfzJXU4AQo0qAV4YwqgYfo
 0mUj9GDtnSH3hKUNXT7ZgkfXtm9HV1PM6KK519lXrVfAJDHyVRv+YtXLA67RASIOGU/XWq4Vbov
 GPWXto3vQuu8julImTauoH4wkiaHwajMcVl8ZTXCx0Hgq5toQyq4F4cTeWwrsgDGSJinpKG/qbX
 mNjirj2gyvatiTiyD0A==
X-Authority-Analysis: v=2.4 cv=T9S8ifKQ c=1 sm=1 tr=0 ts=6a8f1c6e cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=Sv0fKeRqtYgA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=DJpcGTmdVt4CTyJn9g5Z:22
 a=EUspDBNiAAAA:8 a=Rua53wt-LDCXJtC3cl0A:9 a=QEXdDO2ut3YA:10
 a=1OuFwYUASf3TG4hYMiVC:22
X-Proofpoint-GUID: d2ukU98hAHSE02QPYvzY-qLBv3Lq_GPr
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-08-26_05,2026-08-26_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 suspectscore=0 priorityscore=1501 malwarescore=0 phishscore=0
 lowpriorityscore=0 clxscore=1015 spamscore=0 impostorscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2608260141
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260826_100343_226375_8D4EF095 
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

Signed-off-by: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
---
 drivers/usb/dwc3/dwc3-qcom.c | 63 +++++++++++++++++++++++++++++++++-----------
 1 file changed, 48 insertions(+), 15 deletions(-)

diff --git a/drivers/usb/dwc3/dwc3-qcom.c b/drivers/usb/dwc3/dwc3-qcom.c
index f43f73ac36ff..9ba7ea31b524 100644
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
+	qcom->has_eusb2_phy = phy && (phy_get_type(phy) == PHY_TYPE_EUSB2);
+
 	qcom->mode = usb_get_dr_mode(dev);
 
 	if (qcom->mode == USB_DR_MODE_HOST) {

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
