Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7F9D4C531C7
	for <linux-phy@archiver.kernel.org>; Thu, 23 Jul 2026 10:39:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0aVUAOXBaIHcYHcRWdVAdIZkNLMiQ1o/7nZnGioShis=; b=LsqIv65TSh68Ox
	ERN/752WtBY3W4NdtAmR3HQbiHai0zywCS5hx4NbsBvEbO3Ijd4LOoDFhjvV0vZ7g6TgUGI/FROLq
	sZKhQFynPuWq09DMd6fofZEKEKuWlzfQl5eujIt2Ub4av4ABsimleVq5sOpbWWlUVUNFH+5PtsJgV
	LX8oKqCao8M1ulZFdOln6liR1bEMhLkPIKOVG6elpyQDBsrJF/kKlpqxW/l79qDZE/PJhkMKYQMYE
	km3PqrXtyF4bPVx21ClSp9ceq2q4xgTRg7D1pLhms1Wd+kq/tp4CjggNSj9DjeSZAZzo7HrxwK23I
	rwsOjgcudkXLc8hiotmw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wmqq8-0000000E3DF-0pF2;
	Thu, 23 Jul 2026 10:39:44 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wmqq5-0000000E3Ci-3q53
	for linux-phy@lists.infradead.org;
	Thu, 23 Jul 2026 10:39:43 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 66N8qWLj467146
	for <linux-phy@lists.infradead.org>; Thu, 23 Jul 2026 10:39:41 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	3901XEGmQiKkhj7Gt79p/OwEJfMNBnlhSEeTs6H8Ci0=; b=nQsulRy7K3OQxKmt
	aOVmytkEB9Qof8xZMkjokIZLUwVOWJtpAw2RcIU3f5ArFInM8t3CEDh4tWQTjJCB
	eq1U/uHx9aiiNcDIiGY/Fzs8FmE/xweUJEiSjLRp4NR5DRhTErubPzNZ5qDb/tyy
	K11MUz1gmpsmVd4bODdjLYIY/LbDChJguyACnIkKaV5CmXsb4ulGxwLC75OwF3rA
	i2axHpLAMIyRoA7cu4T1DE9LtKPLpWq8S0mMFq+tena1INnWDVsO65djd9qROeso
	cw+EaYQDb/1A0b3lJLJ2OoJeUjx98LrOcc4u4yExYqVlwb2n5FB60zFJlxt8DPz7
	jfREvQ==
Received: from mail-pf1-f199.google.com (mail-pf1-f199.google.com [209.85.210.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4fk28xum4n-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 23 Jul 2026 10:39:41 +0000 (GMT)
Received: by mail-pf1-f199.google.com with SMTP id d2e1a72fcca58-84e375d9736so364421b3a.2
        for <linux-phy@lists.infradead.org>; Thu, 23 Jul 2026 03:39:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1784803181; x=1785407981; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=3901XEGmQiKkhj7Gt79p/OwEJfMNBnlhSEeTs6H8Ci0=;
        b=OVor4tm2+vEZdf4PCGjmvV/tAc/eBdN4OVmdtEd4DZEOkYPb5r4TdYNB0nSM3sZ5Ma
         KchDixuZQyj77F1ZunsYpgMZmtAah+WFH4cL32MHPJyCMB7gFeJ9KdCpbelQcB3CU+yF
         Vwb7xTGY1xxHdKjdJV0CJy5pNsa4rlhGq4Q9SMJp1575RGG1RaI97L7tKrIUJGzix8vo
         cEDeYJ7OwFYy2SjZDAJvSZwGj7iTX/x04eHuSqTeLSAcsgls9Jr7PHXRpUaErHg7b9Iv
         xkVANpln8uvCFvFReEGaVbE5SXmRry7B+YLyIBtteMr34mTrh2Zmo5qPIN+NlGUwDukW
         b/FA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784803181; x=1785407981;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=3901XEGmQiKkhj7Gt79p/OwEJfMNBnlhSEeTs6H8Ci0=;
        b=MtIogLcrLVFdFHriFLkxBg+l7H7FJ31IWo2YZChAkDvNU9UahviYa6Aud9lO3GP5nC
         pueaefie07mkKDjduXhOV24XxEWi91cX754Ld4DfMp2f2KrSY+FxiXtGGw5fWVvoGdG3
         usmS5jFn29tl/ofzONq9vtZ1KfYrd/7TssZh2BKv7ZRkJ//sBGjF34LeL8wlluxoyLRJ
         +N6usoOF7GIAl9ghxzIRjhmb+FZK/FrmVtqj2GsRL3yFUIHpoIMVZ8LBfAEezwLt7+31
         zsusW9VaB965hOLUBHs6KcElr+kAPndnkTrbFZBEJC3DAcvf9FPq1Q3+cEmCJEjIoftg
         epyA==
X-Gm-Message-State: AOJu0YypV0SissDdSV2VmwsPR3o7fkZYL5qJOKBUJNHrSCcS2BS8LWqm
	QhhrqLq/5duH7t5oJrrmJHXBDhfunFA3mtRroUr4dCUFuSj9CfoEwoP0W6NsK4ADoSvX9Hfh4ru
	eZJ/47yfEN+BB/PWwUpC0NE12Lo+HZby7xQ3XHKL/GVJ8jy7qaB9+awQOmKsg8nVclDgzhQOzVH
	du
X-Gm-Gg: AR+sD12Uf+SNvb+x4bV803z14P0oUvCSmC6Y1C91VytFWgN9bZ8m/54xN7mJwwz2nUu
	fq0zAUciIi2dshvGocm1rJWl15StaYGBlsDDdz4N57yh3bIGTmn3UxUnZAjhmGuV6uryNLRCCQ+
	+uBT45QTnpC4wciFikrfrw0LfLDNwNDn7Ko/GvvfrQVAZLXQb8ZWXG4k72z0CUAodFFXLMJYW/Q
	ZBtKIV/rV5Akb00wqg1iOZrxTRfgeQ3pelFI800CNTfo3ANq6xRBL+pAvkPZfyGr7ASnMXxy011
	RBDZJ30UkJC06KDORoMUx6m7+npDkvR41VK79zdfhUxR5iKhGq3WDkOeAHEaNXMt6yQrmrlPIbo
	kZzO7JFtG9LYXgNUnonKW7G5mffRFOet0/HXa9tJlIFkbeIQ4b4GEp0ZGJzjavO9LXj4HCA==
X-Received: by 2002:a05:6a00:2906:b0:845:bcf0:118 with SMTP id d2e1a72fcca58-84e2bb37382mr2679172b3a.41.1784803180645;
        Thu, 23 Jul 2026 03:39:40 -0700 (PDT)
X-Received: by 2002:a05:6a00:2906:b0:845:bcf0:118 with SMTP id d2e1a72fcca58-84e2bb37382mr2679141b3a.41.1784803180017;
        Thu, 23 Jul 2026 03:39:40 -0700 (PDT)
Received: from hu-kriskura-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-84e17604a46sm2864469b3a.60.2026.07.23.03.39.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 Jul 2026 03:39:39 -0700 (PDT)
From: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
Date: Thu, 23 Jul 2026 16:09:08 +0530
Subject: [PATCH v5 5/5] usb: dwc3: qcom: Modify interrupt handling for
 eUSB2 Phy targets
MIME-Version: 1.0
Message-Id: <20260723-eusb2-int-handling-v5-v5-5-f32ea6c1a318@oss.qualcomm.com>
References: <20260723-eusb2-int-handling-v5-v5-0-f32ea6c1a318@oss.qualcomm.com>
In-Reply-To: <20260723-eusb2-int-handling-v5-v5-0-f32ea6c1a318@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1784803149; l=5394;
 i=krishna.kurapati@oss.qualcomm.com; s=20260707; h=from:subject:message-id;
 bh=/vNSx/6fYrenbbzMg1/o8tyUB/wub5c1VyoCs/xcSIY=;
 b=eIShKgSBJrXNqQbYNNeuoHpaucLc82HIefQs74oK1Atygk+felV/GUSMi3bCnf4yFP5HV1emJ
 k8W7/h4M4wZDMJ+ZySP5mele8rkRmhxydy31S2p8z2f3vg6Dmr14NNl
X-Developer-Key: i=krishna.kurapati@oss.qualcomm.com; a=ed25519;
 pk=6PmiuwGCdov3wRO+bdmRlRxRtmJyDKz3ED57LLPVgds=
X-Proofpoint-ORIG-GUID: bX0YXpOVMwizrFe0ArTKO7HQrE-bCI9P
X-Proofpoint-Spam-Info: AW1haW4tMjYwNzIzMDEwNCBTYWx0ZWRfX4cJP50uW6Ifu
 fdDPep6qRIokwmqpqCHt7RF17EdeXIyQeMltI/2xgu7Fe6JGf5Z5VljWwCTm+5V+1m4i6ctZ+Ln
 RuTvVjIfiOO9bQuzpdRiIfLGuFTJqYQ=
X-Proofpoint-GUID: bX0YXpOVMwizrFe0ArTKO7HQrE-bCI9P
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzIzMDEwNCBTYWx0ZWRfX4Uj+7StTavG6
 vk8gEhpXCbtWXwQSoEh7B/0gOcSRKbEjCS6eZ15VEqN5igHXd1Hwr9vpgbkzdkPh7Xtze0wqdS9
 /lTFG8ooAbdio99cLzmboC6lxQvFY5SIT/bdcCwvj3MMabCCSk4/0qWf9vjHGylPHlyeYdT3mkU
 vIcofqdambsHxp/f3q/pE5YpNxhDZ9y58PWepUNVpHhLzTEc3obu/AjiwCG3Ghwc3CFeNOQGI4o
 6zR3xrI7Uh3jImQieOJG0D5rIVscTGWQUW1uDOt14trv7cYdUxRuVVkmlqWaW1V+69SAojtm8B9
 DM1Ej0hOD1AWiYN3JwDXn3+DK2Ok1AYnkIBq1wQ1H4+SauNXboo42sJ0rki2D0KKTENvmDFbZRi
 /GKIU15Y1DNwikc9CmpD6QxjyROKmM/Na3UFEU/QqYMSSvlRhZmsXUmcSL5ebmYoQQ0ox+RuI6f
 jGofXyO8OcsqHe8LnjQ==
X-Authority-Analysis: v=2.4 cv=WNxPmHsR c=1 sm=1 tr=0 ts=6a61ef6d cx=c_pps
 a=WW5sKcV1LcKqjgzy2JUPuA==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=RAioF0-LDSMA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=eoimf2acIAo5FJnRuUoq:22
 a=EUspDBNiAAAA:8 a=DHBbv6Y4lRnqcSD3puQA:9 a=QEXdDO2ut3YA:10
 a=OpyuDcXvxspvyRM73sMx:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-07-23_03,2026-07-22_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 bulkscore=0 priorityscore=1501 malwarescore=0 phishscore=0
 impostorscore=0 suspectscore=0 clxscore=1015 spamscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2607230104
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260723_033941_965090_E9C2F139 
X-CRM114-Status: GOOD (  19.34  )
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
 drivers/usb/dwc3/dwc3-qcom.c | 53 +++++++++++++++++++++++++++++++++++---------
 1 file changed, 43 insertions(+), 10 deletions(-)

diff --git a/drivers/usb/dwc3/dwc3-qcom.c b/drivers/usb/dwc3/dwc3-qcom.c
index f43f73ac36ff..4c559b97c627 100644
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
@@ -289,8 +298,10 @@ static void dwc3_qcom_disable_port_interrupts(struct dwc3_qcom_port *port)
 	dwc3_qcom_disable_wakeup_irq(port->ss_phy_irq);
 }
 
-static void dwc3_qcom_enable_port_interrupts(struct dwc3_qcom_port *port)
+static void dwc3_qcom_enable_port_interrupts(struct dwc3_qcom *qcom, int port_index)
 {
+	struct dwc3_qcom_port *port = &qcom->ports[port_index];
+
 	dwc3_qcom_enable_wakeup_irq(port->qusb2_phy_irq, 0);
 
 	/*
@@ -303,12 +314,20 @@ static void dwc3_qcom_enable_port_interrupts(struct dwc3_qcom_port *port)
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
@@ -324,7 +343,7 @@ static void dwc3_qcom_disable_interrupts(struct dwc3_qcom *qcom)
 	int i;
 
 	for (i = 0; i < qcom->num_ports; i++)
-		dwc3_qcom_disable_port_interrupts(&qcom->ports[i]);
+		dwc3_qcom_disable_port_interrupts(qcom, i);
 }
 
 static void dwc3_qcom_enable_interrupts(struct dwc3_qcom *qcom)
@@ -332,7 +351,7 @@ static void dwc3_qcom_enable_interrupts(struct dwc3_qcom *qcom)
 	int i;
 
 	for (i = 0; i < qcom->num_ports; i++)
-		dwc3_qcom_enable_port_interrupts(&qcom->ports[i]);
+		dwc3_qcom_enable_port_interrupts(qcom, i);
 }
 
 static int dwc3_qcom_suspend(struct dwc3_qcom *qcom, bool wakeup)
@@ -617,6 +636,7 @@ static int dwc3_qcom_probe(struct platform_device *pdev)
 	int			ret;
 	bool			ignore_pipe_clk;
 	bool			wakeup_source;
+	struct phy		*phy;
 
 	qcom = devm_kzalloc(&pdev->dev, sizeof(*qcom), GFP_KERNEL);
 	if (!qcom)
@@ -683,6 +703,19 @@ static int dwc3_qcom_probe(struct platform_device *pdev)
 	if (ignore_pipe_clk)
 		dwc3_qcom_select_utmi_clk(qcom);
 
+	if (qcom->num_ports == 1)
+		phy = devm_phy_get(dev, "usb2-phy");
+	else
+		phy = devm_phy_get(dev, "usb2-0");
+
+	if (IS_ERR(phy)) {
+		if (PTR_ERR(phy) != -ENODEV)
+			return dev_err_probe(dev, PTR_ERR(phy),
+					     "failed to get usb2 phy\n");
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
