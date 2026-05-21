Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 60D1ECD5BB1
	for <linux-phy@archiver.kernel.org>; Thu, 21 May 2026 12:57:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Cej+pH10php4VlxFGikjr9plvipW8nTgrWuVMnR0Dbg=; b=jKsVmJqSInTnsg
	Mwahx32P7xEUq+3RwFRtYQMZPg0rqu0pNCSVigrZgSGKKjbxCNstAjXu4risNkCEBzdCY/ieOYmIC
	lWMwRaRYmyQsSiPsgsMvNUGSGe9cZcp/47lcUhJUXmI6XZAgnwLt4aGR27mbXxUEZgdDfjTD4Yx1G
	2b2lggWKWJRg1HPtlJnjpw8p5PKTnApsJHziSx24sgqD8vnXpP1M9ya0FzOPGAV7Q+iSfA/3ONW8n
	RWgCP8JzTGHnRJHHqV0YY0VyfrLkRxmZiGVa3DVWFJQnnTihpJHRHAoL6OfyZUwVuYvyk+YSzeKou
	8/XNyZKwxUWjZODFq0/w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wQ2xe-00000007nDt-0Z2S;
	Thu, 21 May 2026 12:57:14 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wQ2xb-00000007nD6-1eih
	for linux-phy@lists.infradead.org;
	Thu, 21 May 2026 12:57:12 +0000
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 64L99nJw3009516
	for <linux-phy@lists.infradead.org>; Thu, 21 May 2026 12:57:10 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	eaF1DDc6ubWUrA0leEh9fmSU9s3FEthmlcwUOHBpY60=; b=jTzGK+53vZy+fALu
	XH/4BIMUCsYaOxLobAdl5lLyJ/LroLUyArodCX0XDM61C23KUlSBAOBK+z6YU/Ek
	XM10W83SnfGSxRe6XpQWhhsWvOc63YDnIcaSQAktozqv+iDPQtVjkULOlXPbp8+6
	bYj0+0jj1LNq+kSGzxa1ILlqBpkjVlU+4JrDR8LmKDxwSZK6NlukHlKhBug3YjcV
	JxfXQmWLRx2USK2MbV/N9/TuHT8hP9+8aKpRyAN/aGNJxNQwxWu/FHr1hLIAoKvA
	VRIzXdvmjIGAXX6e6mScsH2CIVvk4j8qx1rL4m9bJN0i3pqTUF7CU1El+ZP8WePv
	hvN5kQ==
Received: from mail-pg1-f197.google.com (mail-pg1-f197.google.com [209.85.215.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4e9sr328ct-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 21 May 2026 12:57:10 +0000 (GMT)
Received: by mail-pg1-f197.google.com with SMTP id 41be03b00d2f7-c823549b1fcso10313266a12.0
        for <linux-phy@lists.infradead.org>; Thu, 21 May 2026 05:57:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1779368229; x=1779973029; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=eaF1DDc6ubWUrA0leEh9fmSU9s3FEthmlcwUOHBpY60=;
        b=YSVFTlP14Jo0YZj8adam800aOA2mzhRiLFN1pKfUYDV0vNZvsiaRNZ3O06d6qtuNdo
         +NWEwzmjtC7yro9BU2wW3jb5y8ittTi9mLSIr/nYsgksjgogcdDhRqZzNf9r5afs16fX
         oxbs0L5wARP1AmnuEQDK496CjOQibmafoMAl/u4mAoDrm79tA1U/bbSQNpiHE1szwPo8
         Lz1rW2tYqK6OBaIY69v8draDi/dbQ4Rheveh/WnfdXWRaUApgk1JyLaZF1sZqrjz2iPb
         9dcQIhFNGgBEi8Wc93ieyfgBl42NUhnaEXTZWODfPNxB3yGskgECbm6sJI7tymkSgQoR
         NT3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779368229; x=1779973029;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=eaF1DDc6ubWUrA0leEh9fmSU9s3FEthmlcwUOHBpY60=;
        b=U31+HWjse6FNwM5lKof/+asVqC1S7BPQHQaO4i3PVaxTDHYB8qnHT/e3AbaNUhtdH9
         YNOvp9XahyOrT71Gj0nSdrzmhu+K/jZAWa2YThCEu/w4wyaDh75yy+IiyZsLLFFBUeOg
         Vjkd9+4xncN+jCAXj7A4XaWbjp0C4Z0gzbqnS8ss974Tz9Ke2o6gVfsyyVMxgNEqb0Kz
         LWLsL6O7uwKzohUegWZjJ9RLlqKopMA4qtfkLLGdFC2EJwxzwYSGkxCmvHDq2BK0BHpr
         AVdfcWPCo0qofTve9Ibdm/i1vx0bKwhwaVudvRwtb73sJWuNyMrUAUgC9fMmwHYyMFmA
         Mjyw==
X-Forwarded-Encrypted: i=1; AFNElJ+tpfwhjTYxGfgH3F4KM3Zn4qQx0ChgqkBHnlF7yivLsWJ4vBEpDDAqT+LejqERL5enfcEW/kgtr6Q=@lists.infradead.org
X-Gm-Message-State: AOJu0YzwH8sYuAwr7RwF5UeKcZNsfRHD6jt9mAvQgpY2kcSqw6gm+m8I
	1bptbKnue55x/gQA0d6LOK5GN7NTdjBVwkwzdq6QIbhbmw4rIS/RMVwlY2KU/S/cNihGbyNM6VT
	9SGnvwPJtnAKz0/DsdqayDFx62u25BxaIQxkQsuDkvKCnUfnwaJgkeTVb/5e5B1J9x+q7
X-Gm-Gg: Acq92OEn5h/QGMmxQtiFY80F2pyayvq/0xj7Da1dPLpLU2x8chOYn1PYHQVTT2McY8M
	4UaXZl2rtXF70XrndGDh4Uewrk5hg70MpZbSHVEzbHtcp6iXuFYzkxUv5rQtB1/28QLVYwJ5g1F
	jX3KBbIRHP8ke4exSBPkCAjo7bCms6EbVrVfZEp8dga1YYZJfSLfRnjTFFpH+A64nQasjgjVk4n
	GsAWJygvcsLF1K0ooPGcuRiFADlBF/1W6Di8XGxHrL99pnenyZIhAHWb3f5HJ14vEJPyCLmddrJ
	S219nYOu9JZCj7w3qOO7twbcQjUOg7HYVjFK1See5DutxOifmat5X2HWdMLJ+JsaO60te5hldJv
	lQSh4SUADYHETk9GWONgidi5pAwTBBwE5r2K+iwUJk12EiiXATXEN22db
X-Received: by 2002:a05:6a20:e293:b0:39f:3efb:e888 with SMTP id adf61e73a8af0-3b30878f3efmr3393717637.25.1779368228900;
        Thu, 21 May 2026 05:57:08 -0700 (PDT)
X-Received: by 2002:a05:6a20:e293:b0:39f:3efb:e888 with SMTP id adf61e73a8af0-3b30878f3efmr3393672637.25.1779368228395;
        Thu, 21 May 2026 05:57:08 -0700 (PDT)
Received: from hu-krichai-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-c85198f508bsm357984a12.20.2026.05.21.05.57.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 21 May 2026 05:57:08 -0700 (PDT)
From: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
Date: Thu, 21 May 2026 18:26:34 +0530
Subject: [PATCH v2 2/4] PCI: qcom: Keep PERST# GPIO state as-is during
 probe
MIME-Version: 1.0
Message-Id: <20260521-link_retain-v2-2-08ed448b081c@oss.qualcomm.com>
References: <20260521-link_retain-v2-0-08ed448b081c@oss.qualcomm.com>
In-Reply-To: <20260521-link_retain-v2-0-08ed448b081c@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1779368212; l=1719;
 i=krishna.chundru@oss.qualcomm.com; s=20230907; h=from:subject:message-id;
 bh=yPovg+NF82r2PTFn5jJ23qnB94f0op4A4x75FCu5p2w=;
 b=UJOfMHyj8g6i+MjsTcuZrBZlxT3uum2fmETZmxbR8XciABJyMNU67dRa29dfz4/uZK12B4lqE
 F9bA502GmjGDVBY9dJ5lNDEjRcrWR+pt+aNRq6HqdlZ8WuvWDhFPGCd
X-Developer-Key: i=krishna.chundru@oss.qualcomm.com; a=ed25519;
 pk=10CL2pdAKFyzyOHbfSWHCD0X0my7CXxj8gJScmn1FAg=
X-Proofpoint-GUID: SISlOgVx_eGDxN1ybc0E694TGU3feKYb
X-Proofpoint-ORIG-GUID: SISlOgVx_eGDxN1ybc0E694TGU3feKYb
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNTIxMDEzMCBTYWx0ZWRfX24KKPqFqstRQ
 +KNZVq6P7bvAGZC5XkYlI1ZWpGrGH95OP+ekej/FpMKpszV1z0WM9HJjyr+tmca0A0ZZbd8Mkk0
 BA3qDw5c7mmR6Zb88+Oy9TF6IAsqy0qDU4U//dm081t7NlNIXuf6w4jyx4FU23Bbu/s3HH7EwQQ
 C/pXYlOIBm/x+8qtLwvSW6PNROopgKnTEP9RjVGXW8yAsHBS0vchXKGTup66N18uTjOywsH4B+l
 LBo+3Mg/nmzJRoMqjCzBHMEievFcPqCCts2CP6HSt7+3gKO3nVhH2MnS9oStDRIzaFuLVyR/yaT
 7eyB4R4EKW8iPFmXq0EW/xf7/tmMjTriwe9jMOHBXDge54K+HkNN0hK8jIEVb9b+3UCUPCmwV4i
 +LF6+kQGXtaXd9ifxRqW8xQH9EgEMP5IVhyo+V9qsoFazOZsUavAIGt1EbMUYS5fApfwjWe/pnH
 CCaLEsiJ8rHJj6OQwow==
X-Authority-Analysis: v=2.4 cv=L+YtheT8 c=1 sm=1 tr=0 ts=6a0f0126 cx=c_pps
 a=rz3CxIlbcmazkYymdCej/Q==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=NGcC8JguVDcA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=rJkE3RaqiGZ5pbrm-msn:22
 a=EUspDBNiAAAA:8 a=Py5lcOcq67Lbq8UMOfUA:9 a=QEXdDO2ut3YA:10
 a=bFCP_H2QrGi7Okbo017w:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-05-21_02,2026-05-18_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 suspectscore=0 priorityscore=1501 malwarescore=0 bulkscore=0
 lowpriorityscore=0 phishscore=0 clxscore=1011 adultscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2605130000 definitions=main-2605210130
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260521_055711_555651_5AC27B6E 
X-CRM114-Status: GOOD (  14.78  )
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
index af6bf5cce65b..bfe873cbf44f 100644
--- a/drivers/pci/controller/dwc/pcie-qcom.c
+++ b/drivers/pci/controller/dwc/pcie-qcom.c
@@ -1707,7 +1707,7 @@ static int qcom_pcie_parse_perst(struct qcom_pcie *pcie,
 		goto parse_child_node;
 
 	reset = devm_fwnode_gpiod_get(dev, of_fwnode_handle(np), "reset",
-				      GPIOD_OUT_HIGH, "PERST#");
+				      GPIOD_ASIS, "PERST#");
 	if (IS_ERR(reset)) {
 		/*
 		 * FIXME: GPIOLIB currently supports exclusive GPIO access only.
@@ -1812,7 +1812,7 @@ static int qcom_pcie_parse_legacy_binding(struct qcom_pcie *pcie)
 	if (IS_ERR(phy))
 		return PTR_ERR(phy);
 
-	reset = devm_gpiod_get_optional(dev, "perst", GPIOD_OUT_HIGH);
+	reset = devm_gpiod_get_optional(dev, "perst", GPIOD_ASIS);
 	if (IS_ERR(reset))
 		return PTR_ERR(reset);
 

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
