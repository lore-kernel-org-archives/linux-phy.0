Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0A024C43458
	for <linux-phy@archiver.kernel.org>; Thu,  9 Jul 2026 06:35:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=H6BFd84FS1peIt+jv9LxdZTgYqIU7jzkIWr68bXbf4w=; b=aJVVWAjOjCa/Zy
	RZVLQ1MuMIvOCA2EiNy+CTKkKFdzsplRj4lrcjjPkDhW1e6fW3DDPBOVkcbCI7xll8XnyVHGdZE+c
	T0oFhAerWI+pA5VmjEZFbp+sSvI0LbFavA/vXGbqHbrYngrLwe+sOgyPLgyCR0xiLzAn71cTfK6FV
	Go2t6MXyhGkYYJUP7xKKjuQAihKWiTqaFItX64Me9CmDs7Tg1MgCdZ3X8PAW49l1DXiHmuPZ1W/vo
	DspldEXNMraz0GWbdzXne4fm9mfVmSmlTu9wgQQBbnsw7tezBTsuJRw3YfvYJLmzDsuWYBtCOAWP1
	ZRCbnHERTOl5iY0FTkEA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1whiMO-00000001BtH-3LGg;
	Thu, 09 Jul 2026 06:35:48 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1whiML-00000001Brv-41XM
	for linux-phy@lists.infradead.org;
	Thu, 09 Jul 2026 06:35:47 +0000
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 66961BGj892252
	for <linux-phy@lists.infradead.org>; Thu, 9 Jul 2026 06:35:45 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	z0EqAPxjwdtcQIJ6xwVHlsStlD7K7EQBa7wviyRj3cA=; b=T6ljj75+RZN42Dol
	W6WaouM4UXt/sxxgAwcbLRB2jhkpunGtATTnog74/YcynuGCmDpEQo40NLhg5BB/
	kO7LNIJfvahRMtSz2vC8+4kTy/NV0Z+0iOZPnQBbDYebtoJxx6IYo4RGCzZZaXpc
	pB+PczWr4UPWrIrMitIgHF3yFD/2JCYcp7OfOaP+yO0blVduJ9+olZqP0+keVrIz
	GJgzsH4zdm4Osjs/ywwBJEGSVLNkaGmg1Z28elb4r/u+LosstnXAlvTVGgSpxnST
	z7hBeGeRMk1bLIzlUnMblPuyUB1NpXgI37nL1rxl4Fqxguv+clKh05IcecbZYMf9
	4Qy3Ow==
Received: from mail-pg1-f199.google.com (mail-pg1-f199.google.com [209.85.215.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4f9urvt5uf-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 09 Jul 2026 06:35:44 +0000 (GMT)
Received: by mail-pg1-f199.google.com with SMTP id 41be03b00d2f7-c88ad1558f4so1354384a12.2
        for <linux-phy@lists.infradead.org>; Wed, 08 Jul 2026 23:35:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1783578944; x=1784183744; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=z0EqAPxjwdtcQIJ6xwVHlsStlD7K7EQBa7wviyRj3cA=;
        b=WOJwPwKU9K87BCFCDKQpNucsMlukDDwD7P9OwshZ3w6en+9/l+XzyMmJ4ExzfDhwfP
         z/waeKNYrM2WwznPZZdFOLOK5+XSN3oHiyQrMrsJsJlc4v6D76p+jJva9Tk5JvK8gmYN
         un/MESaiRV8YvDc51RmBlnYTTLLoQ/U8VJ7OSK+uXcIqicUSV2aO6QAGGTTi+ekOjssi
         cAl8ophCOGf4qGV6AlopCHUG5u81M08gTo+I8UA0YJozzjziO6AmIeXImHFIFi4EZZC5
         8SrGEeyap4JM8GyJAHA79tc8Muw9Ml8YecMYtCOcjtQiT09LQv4EKmqy62QDN4w0K6tk
         35sw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783578944; x=1784183744;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=z0EqAPxjwdtcQIJ6xwVHlsStlD7K7EQBa7wviyRj3cA=;
        b=JZBoz09CHkm71dKhvHUVmp2r5s26VYZ9j+mTZBOZY1MN7ICuklFkDdlFR7bf0g/jlJ
         GQgE8C40piIT/f1tz2Fhlbf8F4Y8NTHM3syRigKE3NgmNdx5WvJy7NP+mWL3tDowPix8
         wdKcwGpyEbA/CDHX4tUUOHzjNgRO2Pt6GjH5OLEStZsNDuGyw+wz+f3eYxeXlSDbDxU7
         Gns6OFakkPMcuTZMZrBGKrqU7ntwp1XjJoG/zU0oFkPrdDDGX9s/Y4xlpvCHFGd5G+F8
         DdDPhhE7qaJTXw+tsHnKfZqJ8EOorNQxK0ZsdsWzZyEOjeCSC2zDagoSYOlRr3n9n6N/
         SEBA==
X-Forwarded-Encrypted: i=1; AHgh+Rrg1ch2O9fi2YyhI0uczSn1HK2L8p3W6+8hLSGY1NcgNNp7bcXx8oUJ5bb+AEMJlGo88Fr5pY5z2qs=@lists.infradead.org
X-Gm-Message-State: AOJu0Yy4puLsEpADBIhEIynws421kd88syQ0GUaj6STPgKp7Eg/Z/nTS
	pnSbfSGhoYqR4YotrekbykYcpBsDkr8IOtedZ+1fIXP0FooEYgySHhNwJ4gGFQW1IonXfmsF+f3
	JpZ4e0znhpbsKfUcDrf5vCxkrHSFLYey9qS9WB9O8aKva8RsB8TSnfSG+wMr8Hce9w7nl
X-Gm-Gg: AfdE7clTRyxYlbfICGKfuu+fYyQ+fyl403XeylkzZPSo/nJRGrrQ/VsHmeZOJYCLZs7
	37SDYxYSjUZTP05VfcdGRH9hjMLUsishHIOyWhSFjL89/KWoMmVpH6jnK9sHq/8l8xaIAi/bFuF
	HFnyLn7vCavaFn/WCkxD7XEj4+3lDIqwCeHVC4Zd31LcA7wS9B4j230yxQIcYYS6CcFShZx0hEx
	il0Bw3ZRLCqfLwXJ6zr7UejYvrco3wKlg8up1K86tCD71hEl+9cURvt/WlIi7LItqtY+ljD5+Kf
	J4RyBVLa40krWCYeQsmPEW0eQVVHFcyGtco1xAlhGJfGaZy4Cx1kuFdiyrndU0OjpuSxaRzBgAA
	NSthZ3skSvYmWMjWY5yZwm8Q2M1zk1p7y2tEOgT+xPikgAA==
X-Received: by 2002:a05:6a20:c998:b0:3bf:bdb9:f602 with SMTP id adf61e73a8af0-3c0bcc6a270mr6656534637.22.1783578944022;
        Wed, 08 Jul 2026 23:35:44 -0700 (PDT)
X-Received: by 2002:a05:6a20:c998:b0:3bf:bdb9:f602 with SMTP id adf61e73a8af0-3c0bcc6a270mr6656493637.22.1783578943419;
        Wed, 08 Jul 2026 23:35:43 -0700 (PDT)
Received: from hu-krichai-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-31174a56848sm28304294eec.16.2026.07.08.23.35.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Jul 2026 23:35:42 -0700 (PDT)
From: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
Date: Thu, 09 Jul 2026 12:05:17 +0530
Subject: [PATCH v3 2/4] PCI: qcom: Keep PERST# GPIO state as-is during
 probe
MIME-Version: 1.0
Message-Id: <20260709-link_retain-v3-2-81a9d187bb61@oss.qualcomm.com>
References: <20260709-link_retain-v3-0-81a9d187bb61@oss.qualcomm.com>
In-Reply-To: <20260709-link_retain-v3-0-81a9d187bb61@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Jingoo Han <jingoohan1@gmail.com>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
        Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>,
        Qiang Yu <qiang.yu@oss.qualcomm.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1783578926; l=1729;
 i=krishna.chundru@oss.qualcomm.com; s=20230907; h=from:subject:message-id;
 bh=QG/qBYGp1CFoAUEioBOEm/0Vr40BG+zvspOBhc0KLXE=;
 b=ihJm48Lda5dcP9vNT/LESX/IJC7zDKsME7N6tASM4TbxgsiS59KnttAt8fxhcwoUzfu2ZuZ15
 wGw9wT+ApGhC8+FIcaD3nm6FkRbwQfRlCz+35C53uYonymK6P6GdDHl
X-Developer-Key: i=krishna.chundru@oss.qualcomm.com; a=ed25519;
 pk=10CL2pdAKFyzyOHbfSWHCD0X0my7CXxj8gJScmn1FAg=
X-Proofpoint-Spam-Info: AW1haW4tMjYwNzA5MDA2MCBTYWx0ZWRfX/lh+rg0QgwMZ
 Hyk4W7nbiKn5am3Dhwk2SD8mE+R7MlZusPBDcc2uXGtQWuk4He29KjJBZhQda9pipevAX3a4H++
 wcibisCzQ3EySKG0dJjxldizhcaCH+E=
X-Proofpoint-GUID: BZASn10DRwYOE7AdBMl6rUPeSMBR6Vp5
X-Proofpoint-ORIG-GUID: BZASn10DRwYOE7AdBMl6rUPeSMBR6Vp5
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzA5MDA2MCBTYWx0ZWRfX7JzN6vUZr8ay
 hER+NaDf/8kq70c/wo+pTtZETATKBcOQlNWxKR218AQvYQdGOZrcFd7STcCe4NUvox9RKV3/UnY
 9Ik47mhxWfTQK5Iofq0+Ofg95sw9RTUF/hy1Ak8cLYw26n/h0eWl/RVZa1zuHqJZPEyFt43DuWs
 09qjV9OCEOYq0X67/Dq91uFochcjhNBt/i89LKMqQVWCmuWQef4e3E0CJCfMJd6sitOdSBjNrOy
 qtvtlgTfoh5KBOK1/YLBFfn7LeucmiNkcSrkfdYcV5J9bGp/BpiRfyDamklhz9h0KPlmPs0Ma55
 mO6Uk8crbyNXSPpgFKjXEc3NuwiRhaE4xkp3110Bmp7NgzbOhaPaAJ3rZ/UbgFnwYGRudxD1jCb
 nFCWsuq9nQ4yCt6BFfHMHqxWO46NgGtKOj46X/6JVDBKuyBAI0vCyWijj0YTT7zFpqvrVv6zcT3
 aSR4OR4VDZt3cP/VL0Q==
X-Authority-Analysis: v=2.4 cv=H43rBeYi c=1 sm=1 tr=0 ts=6a4f4140 cx=c_pps
 a=Oh5Dbbf/trHjhBongsHeRQ==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=RAioF0-LDSMA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=ZpdpYltYx_vBUK5n70dp:22
 a=EUspDBNiAAAA:8 a=awRzx6-DDdmypIrTvt0A:9 a=QEXdDO2ut3YA:10
 a=_Vgx9l1VpLgwpw_dHYaR:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-07-09_01,2026-07-08_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 impostorscore=0 adultscore=0 spamscore=0 phishscore=0
 bulkscore=0 priorityscore=1501 malwarescore=0 lowpriorityscore=0
 suspectscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2606150000
 definitions=main-2607090060
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260708_233546_131456_1B3BA1AD 
X-CRM114-Status: GOOD (  14.75  )
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

The PERST# signal is used to reset PCIe devices. Requesting the GPIO with
GPIOD_OUT_HIGH forces the line high during probe, which can unintentionally
assert reset on devices already out of reset and break proper link
sequencing.

Change the request to use GPIOD_ASIS so the driver preserves the existing
GPIO state configured by the bootloader or firmware. This allows platforms
that manage PERST# externally to maintain correct reset sequencing. PERST#
is asserted explicitly later during qcom_pcie_host_init(), so forcing it
high at probe time is unnecessary.

Tested-by: Qiang Yu <qiang.yu@oss.qualcomm.com>
Signed-off-by: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
---
 drivers/pci/controller/dwc/pcie-qcom.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/pci/controller/dwc/pcie-qcom.c b/drivers/pci/controller/dwc/pcie-qcom.c
index d8eb52857f69..9ca620d4746a 100644
--- a/drivers/pci/controller/dwc/pcie-qcom.c
+++ b/drivers/pci/controller/dwc/pcie-qcom.c
@@ -1841,7 +1841,7 @@ static int qcom_pcie_parse_perst(struct qcom_pcie *pcie,
 		goto parse_child_node;
 
 	reset = devm_fwnode_gpiod_get(dev, of_fwnode_handle(np), "reset",
-				      GPIOD_OUT_HIGH, "PERST#");
+				      GPIOD_ASIS, "PERST#");
 	if (IS_ERR(reset)) {
 		/*
 		 * FIXME: GPIOLIB currently supports exclusive GPIO access only.
@@ -1918,7 +1918,7 @@ static int qcom_pcie_parse_ports(struct qcom_pcie *pcie)
 
 	if (of_find_property(dev->of_node, "perst-gpios", NULL)) {
 		pcie->reset = devm_gpiod_get_optional(dev, "perst",
-						      GPIOD_OUT_HIGH);
+						      GPIOD_ASIS);
 		if (IS_ERR(pcie->reset))
 			return PTR_ERR(pcie->reset);
 	}

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
