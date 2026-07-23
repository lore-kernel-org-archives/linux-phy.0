Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 64BCAC531CB
	for <linux-phy@archiver.kernel.org>; Thu, 23 Jul 2026 10:39:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=r8UekUypF83lYPvjLrdrWtBC7ymJsysNmEdPEzWvXpo=; b=KPIxfKgQf+PxN5
	xeP6q3zUHQRVso8n2yIK9+eEjF91+Q019QweioBniNIHH541md3PXhHakgFXfelrDid4j9oSU9wMD
	agCeAAGRvBVnel23MujkueYhSaMjASUPwcTEbcT7ZSakJD1Qm86qBu2bGXwj9f5+oc5KIVmx/VUWO
	0vBu0HRlcOQW/BH5Q+0MJU0A+oIu5RaAuwf71NLl/CGbD0lJY11l82qR4CRDqYgY/hoIErUCv92Xd
	WW/FOdRfdP4kxUFIp6p83h0ojAEz9T339+vRDDTdcW7Gt2L6Q2vGHC4OMrSQVHLR+ENhA7D1LqYai
	p6+dKXE7Qypo3ipGDyEQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wmqpy-0000000E3B2-0LAE;
	Thu, 23 Jul 2026 10:39:34 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wmqpv-0000000E3Aa-2zf2
	for linux-phy@lists.infradead.org;
	Thu, 23 Jul 2026 10:39:32 +0000
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 66N8qxT73789846
	for <linux-phy@lists.infradead.org>; Thu, 23 Jul 2026 10:39:31 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	H+7dF2lLb7dqWsPeNHtr0YlPoxYnTk1l+rcmlZpTPpk=; b=Zj6fyLMV4Oj9ZjWa
	kO7B35dVsQ29fr/KD6bQkwsBBNFarsEh65TrDBlJ1Y+XRxAQE4aGFzP2tqzcspJz
	0dsTu1aJ82/UAnmPKUH2zvXMWSNeNnmM5wUbZ/53T1g3TyJg1i0xdPje4ufPZUXI
	fxt+CcOXSvfI3smxVUwqAdXaGqhL3hn+kqJJED2+/a99oMW/aNydMjj2Ab5sLdwE
	QfFqMNsDczk3ramMTBhkGaPjLFpudFlioABaTs3LZQQ8UjqKNaDfjBeh3tpvH5cK
	Nq87rrCl8Joqunq//bqLnKA3UpbLNsIpQ1npjGFVVVGpJsnADaLuWuggGnlKon/r
	LSvvbA==
Received: from mail-pf1-f199.google.com (mail-pf1-f199.google.com [209.85.210.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4fk7b52c9k-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 23 Jul 2026 10:39:31 +0000 (GMT)
Received: by mail-pf1-f199.google.com with SMTP id d2e1a72fcca58-84e375d9736so364271b3a.2
        for <linux-phy@lists.infradead.org>; Thu, 23 Jul 2026 03:39:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1784803171; x=1785407971; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=H+7dF2lLb7dqWsPeNHtr0YlPoxYnTk1l+rcmlZpTPpk=;
        b=R1TRreIxIDLoofMvej7gQ0mN2WIKOFYPPhLTzaDAahd8e5SxcPJBvSttIM3+oy8s2M
         uAHuA0yLuSB7kULatkmWrTizVLiDFcoOOvO281Wfrgm4fWg5S/RieU7lDIBzgoRB2Fu/
         OriZTyFaCNgcS5+s+Pq0Rm2h4w8iYZVQbdbOgGhb+xYfsO+mPSSmR1Jb1UfEQWtsXi51
         y7pt+nPIScebMhB1TcnwzKD1BbWIpcoqPKibl5sLGIrG+j5uRZLHnAji6BLAy603qudO
         QGJ4dfmUeo0TBAu4Ag+VZdKKIfNYpAMDmRiCKgGh9MwREFhjFP+TaP9bIrRsicUGFmgb
         FFuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784803171; x=1785407971;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=H+7dF2lLb7dqWsPeNHtr0YlPoxYnTk1l+rcmlZpTPpk=;
        b=aXwNjNMzY/FoRKV9rzhGUwBGUc/WH4v/CnqgnbnfIVDt90ycPkp1CtJdw1ocHD1Yuu
         lWaqID78fpV2uX0Ma0LqTI7kvbdifZ4RFu/z6W1yq0Y/efxI+W21J9JNDAvXotW8KSsb
         QxdNTyo6phDch7USJaI5ecjY6LBc64rlzKCbSXGT39iPk7Thy538CAvoKb8bZhUqq7Xf
         y6PiwxtCHOpfptDe66eazQYIXNX/U9TDFRdpHj8vd3WqDKA0dklTQhnBlqYvA+LnNeoM
         ICWynzYsacDqRrZi4RPeIt+ipVZ05SckDHBvPrqMZYnk1Zpv7aDtMolGy5nmRI+fYMXG
         DRTw==
X-Gm-Message-State: AOJu0Ywe4tQxtnl2QhMvSvCGzsE2RELY2JZzKq+tYskIbg3YuxtndSt0
	Wb7pMkV4gLZmURQx0emz9jXSKXcVvhzwesByn0l8jpflKJBgYHf+Ypz3fxZHAKiQAVevVo6O/vb
	oGZVZbGS93QWKbGEDUFzJKomt3dkVORS2ZL1AsFHCyXQbr1ZENx/r0YKkAEdFa87S1GFw3kSKtO
	6q
X-Gm-Gg: AR+sD12DAbHttXuM+oYV6UInMxEsXmjf+GaOAvecIJMaLENsZH3Ymz5UhBzPGRdWdj0
	scrSAjYpJNe4fzl0RvcIGGT5alY3Q0pCX3Kko4OHzWn7QXWPgqWm2c8ximVj8Izz/pDokyzW/rN
	iyH/PIqmnIpaf4coHX26UhR+d0NQVQ6JDMU+7d21K2z4M6MlsLuL89CPBrmIy/jNMqGifhhBHEd
	9d+RqOpqI/8Wrq6lKMuqZNsVU+y0MxSjWX2GvLpjUa/7RLtjWMusMlh44VB6R1LDBcpRiI/4mJQ
	A9RqVqArL5WJHCZdu7v+6Gm2nrpG/mgIwjt+9gkkEXiZy102/H+HCIeMtWq5ALkH04H0xQiImkS
	SD+J664eyLnwz91T2kuj0y383boUeVGH6DtJR0aLAm7ynWdSnwSAPQdD3i3oYgskK5zn8pg==
X-Received: by 2002:a05:6a00:e0f:b0:847:7f3c:b5f5 with SMTP id d2e1a72fcca58-84e2b7f6c4cmr3099740b3a.11.1784803170569;
        Thu, 23 Jul 2026 03:39:30 -0700 (PDT)
X-Received: by 2002:a05:6a00:e0f:b0:847:7f3c:b5f5 with SMTP id d2e1a72fcca58-84e2b7f6c4cmr3099721b3a.11.1784803170118;
        Thu, 23 Jul 2026 03:39:30 -0700 (PDT)
Received: from hu-kriskura-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-84e17604a46sm2864469b3a.60.2026.07.23.03.39.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 Jul 2026 03:39:29 -0700 (PDT)
From: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
Date: Thu, 23 Jul 2026 16:09:06 +0530
Subject: [PATCH v5 3/5] phy: snps-eusb2: Set phy type to EUSB2
MIME-Version: 1.0
Message-Id: <20260723-eusb2-int-handling-v5-v5-3-f32ea6c1a318@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1784803149; l=1048;
 i=krishna.kurapati@oss.qualcomm.com; s=20260707; h=from:subject:message-id;
 bh=N3OAJXy/DJfnjpR6c+bQ2PAdkb6tUhmZWSabZ7Y5klE=;
 b=IrTCqLlDsSng9czw0n3+5OOJ9rdmt9xIxdfQaiZt8bHlQYnXCGKX580gHG0QeUW2qyZBbxbJu
 /wbs1oEGWSNBQRK2lt9kYaK4oLr9Q0zxCxPMsucCeht7FKKTr2dU0HQ
X-Developer-Key: i=krishna.kurapati@oss.qualcomm.com; a=ed25519;
 pk=6PmiuwGCdov3wRO+bdmRlRxRtmJyDKz3ED57LLPVgds=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzIzMDEwNCBTYWx0ZWRfXwnfK2V/8FV5K
 68CUM0Ji9zyzf1ZpNp59ngteSsCg5eKvwAvRNWKdgixT+SVyEVIzN4ntG3YKcSO7ppgiBGfSYjn
 gZ6rAUQjhM70dr+VowS9xzYNLdNEkb4PA3WPhVNyrlIMmzSExOP+FOtDeLyA8rR1Qh+436gNbeF
 ktpREIa3CiCnLU++bwXSF98alIzeXDZZSoHREk14u6aoAgWilo8TvSrHjRBMLWxUIThmuL5e5pq
 aFP7QSLD/zXhCmlG2jChEiPQUqEwPcQPe3gWIYk1RUjDQPhnA3+gjcpg6imz+d2S9M8Dw5S4reu
 PjJOmZ+tnicZgI+Kp4EpMaJEoYEm3cLqSzsf2ROKVHSd+xOjinE4Eifo36pntbc7+N3D9ZKSbi7
 tCciZ/Q8WPWlK2OU87BAqPN86iBV2hxJPOxwXEzbIyd0vCRSG5R1zaftbxA9Cx1k2bk2ZnpaBkN
 eFSSi7k62fRtaly4+Jg==
X-Proofpoint-GUID: 588MlQGlNkF7Ih0SED7uGCTRUVtC6kdJ
X-Proofpoint-Spam-Info: AW1haW4tMjYwNzIzMDEwNCBTYWx0ZWRfXwS6ZQ5tgmYgJ
 fsJ3J3udjuR7RdZ/2hGbfTQ7qUnuCVm3dtHebRDGWVb6Mjzc30SP3SUbu3Cv/APeGsBajJ/STFR
 UFvmlgglGVX/1fgJ82AJCoYY/Mpx/gk=
X-Authority-Analysis: v=2.4 cv=btx8wkai c=1 sm=1 tr=0 ts=6a61ef63 cx=c_pps
 a=WW5sKcV1LcKqjgzy2JUPuA==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=RAioF0-LDSMA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=Um2Pa8k9VHT-vaBCBUpS:22
 a=EUspDBNiAAAA:8 a=XHtVRzMgxm0A3APenEAA:9 a=QEXdDO2ut3YA:10
 a=OpyuDcXvxspvyRM73sMx:22
X-Proofpoint-ORIG-GUID: 588MlQGlNkF7Ih0SED7uGCTRUVtC6kdJ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-07-23_03,2026-07-22_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 malwarescore=0 adultscore=0 lowpriorityscore=0 impostorscore=0
 phishscore=0 priorityscore=1501 spamscore=0 bulkscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2607230104
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260723_033931_759100_760C1785 
X-CRM114-Status: GOOD (  12.85  )
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

USB controllers like DWC3 are agnostic of the kind of phy (USB2/eUSB2)
connected to it. Set the phy type to EUSB2 to let the controller know
the phy type when queried during its probe.

Signed-off-by: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
---
 drivers/phy/phy-snps-eusb2.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/phy/phy-snps-eusb2.c b/drivers/phy/phy-snps-eusb2.c
index f90bf7e95463..e139b17bcda5 100644
--- a/drivers/phy/phy-snps-eusb2.c
+++ b/drivers/phy/phy-snps-eusb2.c
@@ -13,6 +13,8 @@
 #include <linux/regulator/consumer.h>
 #include <linux/reset.h>
 
+#include <dt-bindings/phy/phy.h>
+
 #define EXYNOS_USB_PHY_HS_PHY_CTRL_RST	(0x0)
 #define USB_PHY_RST_MASK		GENMASK(1, 0)
 #define UTMI_PORT_RST_MASK		GENMASK(5, 4)
@@ -597,6 +599,8 @@ static int snps_eusb2_hsphy_probe(struct platform_device *pdev)
 		return PTR_ERR(generic_phy);
 	}
 
+	phy_set_type(generic_phy, PHY_TYPE_EUSB2);
+
 	dev_set_drvdata(dev, phy);
 	phy_set_drvdata(generic_phy, phy);
 

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
