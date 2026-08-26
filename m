Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 653FEC5DF97
	for <linux-phy@archiver.kernel.org>; Wed, 26 Aug 2026 17:03:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2ZWxV+yDbGNj+5dsrl5LV/uPvDnZTYYDx8RGsJEKe8c=; b=Yw73+wXA6Ah7pQ
	kLh7CHDdwjjpikNG6smTo//Uaz+7nPKbgFEye/ByQH81dYup3/LrBZR+TZ8OtSz9oiNJs0N/P8f4R
	d5Rcvm+tfkMvc8YTiwYQ72d4EKaIOp4Bv1sPs94Y2kj8uEEEJST6Gp+U2I/e95f0NkC0AnX3VksuN
	QLuNEZ83QsQcavVh7a0ys7Y+YKe3UCEfmtDhZzIv9VU2t2L3WrM2pYba3KbGwnW5DsuFVFNtSkXRQ
	8saS4eQE1c4N69k3YFJGPtMYQANi5dX+na7pHSD6CITedbZrrBgIbIrWqiFSqO7py8ktSJd1ausJY
	2qOExtXc3SiK/FJo0UvA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wzH26-00000002mzb-0Dj1;
	Wed, 26 Aug 2026 17:03:26 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wzH23-00000002mye-2kLG
	for linux-phy@lists.infradead.org;
	Wed, 26 Aug 2026 17:03:25 +0000
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 67QGukCE343372
	for <linux-phy@lists.infradead.org>; Wed, 26 Aug 2026 17:03:22 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	5AJD+AzP+JrrmWgE0Y5phGOHovi+llbm6aiOxr2aNhs=; b=F0bRzxKriPz3/sTj
	2WfrgNYsR+/ABpVIeI8jZe4zgbl+25JRBrkhYloN+vFFnleIHAEvbxW3HOBFMSbd
	Lr3FaX5JPGoBNO4AXNvchMIeI91yo6MGnzYNXe+6vKFvc0cbsfEWWEvQNVQ78EK/
	q2cPluhf8OZ+e9tMgdZXucEsy97p6Bi3vTLqPbmv8W+empWGB1BiIHjCDp6dErEF
	TZsNF4jzQb5NrIMIyEH8wNzERo2O2APJivTK3ngv6Ivd0q8VgtSJ2cW0m7qmdUQd
	5ksvnXBY+XFGK9Zx5ssnRE0DwWxorDryf+eNPLF+Cvy1GKoqUy6B+4Ko1pbJyZMS
	GEvBAg==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4g9utht78x-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 26 Aug 2026 17:03:22 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-2cc6dd43737so16125645ad.2
        for <linux-phy@lists.infradead.org>; Wed, 26 Aug 2026 10:03:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1787763801; x=1788368601; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=5AJD+AzP+JrrmWgE0Y5phGOHovi+llbm6aiOxr2aNhs=;
        b=XuyNYSxlcdGBKp7T9v4DVJcDBjQhpKqCCiddBkIVbH5pNNHrmMnYwuN9M53H2+OZNF
         uCt4FHH06WkCVpZzscXxPiaC360/1R2JERF3/aMEgLIvukBMQFTypemzgteXQZZitcVY
         2HLKBQVwBxTxmnGDO7yFeGO4pl9zxqQoIAVRzZf71cEoYcFsCKcBG4xikrq/xqnB7NDR
         7Y5SYyRQgabT28Ndv5uqCqL4I5zEbTG5lXj6kJGVX9LQpOzD2ZRrXyP0M3wzEONkhKnm
         L2qw6PmC9IwUrs6dKqF/OhSk8i9YFh2Rep4ue0N/QMyoEsVQyzHKYEIAFEVtTmn8VXXY
         6pSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1787763801; x=1788368601;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=5AJD+AzP+JrrmWgE0Y5phGOHovi+llbm6aiOxr2aNhs=;
        b=KRQdyh0qU/5JKq8oglMmyN8xLc9pq8sHZlMkTC7v6C+Ptl252D1EUoMcsqUX6C0/U3
         foG2kC4VXF8DrgDOuegznDlWEN1EQ2bkCXh+r7wykMS8BPAOrkJ+poQLIbhmG+WcC/AC
         yLJ+Kyq7Kr4A2EBDsb7V708uYEE/D6W0mW1OFtwvvmgb0qLogT9mu5Ea4V6pZOC5BfZE
         jxPkTKnCVtLr7YyQ3im6t4z4dKnMaF4WCSAv1dqIGWnhLUQx8g4EjJlr4dT2JW4ZUTzF
         mBN+fNc347ach8uBPbQOujZkt12K3pzSetWAhez9pVY2rFPcUBknRJld+2EJO45F+PJg
         jpQg==
X-Gm-Message-State: AFuF++n9iQ+wvQSS989B+qdw39zrp1qI6PxhJF8idmrKyw4FGTtJLX0+
	YuuECJMhe+LETecLPvWx0+aNnJhPbFGkL0fQ8AuheyOZo53DKI2NZ/MvTkKcTWOUYB+SXotJbh9
	2rxOlHkCQ8ARmSHHuVCYfj2CiWy4qa2xuFRwvW3qw8dwL4vu0fsTJGN3knjLQgsejlTy0
X-Gm-Gg: AR+sD12bybLoXfe+Nrvg1UsJ6Sik80BjSUWvbl0KS/FbusRx9vITyPe0881A9TGE5QS
	sduBtdnjKVFlk9BOs4nksTvWu/o5vpEd0gZZ3nNM+40TeiHr+SojT6kKm7CGU1QtA5DhM7Q293g
	jp0VtWt94TmiwAcUPAcjyr3Lm4kd4YMsk5XbgwampTOGRXVcP/mh58IhSQC6lpJoqYt3IDREzej
	+/9yqBWJNwY7FYMQZmtjE+e7tt0oi9BudGbhON7C3PepQ3+ncgiA/juJmA6LMHEtHZPprR9di5a
	QV0dxXCI+sIuq6M21K8sf9Q5WduKNUTJlESYLThnQKR523bZ0uprXvbSZFHzRAmSR23Erx/h64e
	sRE+uzqaAxi/F3TTFRmhYTDX2ZT+ma6Y1jDhu0LLyl5+DBbmFxa7gky/pFX9id1Lbas6pOg==
X-Received: by 2002:a17:903:4b24:b0:2d6:d3f9:d394 with SMTP id d9443c01a7336-2d707833c29mr149993675ad.0.1787763801472;
        Wed, 26 Aug 2026 10:03:21 -0700 (PDT)
X-Received: by 2002:a17:903:4b24:b0:2d6:d3f9:d394 with SMTP id d9443c01a7336-2d707833c29mr149992545ad.0.1787763800999;
        Wed, 26 Aug 2026 10:03:20 -0700 (PDT)
Received: from hu-kriskura-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2d70498ca3csm9938285ad.31.2026.08.26.10.03.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 26 Aug 2026 10:03:20 -0700 (PDT)
From: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
Date: Wed, 26 Aug 2026 22:32:51 +0530
Subject: [PATCH v6 1/5] dt-bindings: phy: Add PHY_TYPE_EUSB2 definition
MIME-Version: 1.0
Message-Id: <20260826-eusb2-interrupt-v6-v6-1-ae2601cfa80c@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1787763791; l=1817;
 i=krishna.kurapati@oss.qualcomm.com; s=20260707; h=from:subject:message-id;
 bh=Lg7dXbsjKWPkmEu+dtLIuTi/8F0mqFp8EHzxlsCI39I=;
 b=GIIEjwxF5gDLt8j08B+e2UqpwO40cuL6q6UDIW7iwYrh1atZKUMPjOEFGIZJiGVjqxJdkQW2O
 fIfW2rXT9nQAG5baVP94QA21FpyFq3cW+fMYUKBhbuwECiTvLZ2tk+E
X-Developer-Key: i=krishna.kurapati@oss.qualcomm.com; a=ed25519;
 pk=6PmiuwGCdov3wRO+bdmRlRxRtmJyDKz3ED57LLPVgds=
X-Authority-Analysis: v=2.4 cv=EMA2FVZC c=1 sm=1 tr=0 ts=6a8f1c5a cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=Sv0fKeRqtYgA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_glEPmIy2e8OvE2BGh3C:22
 a=EUspDBNiAAAA:8 a=L1EOSesq0gyy4kqEYQ0A:9 a=QEXdDO2ut3YA:10
 a=GvdueXVYPmCkWapjIL-Q:22
X-Proofpoint-ORIG-GUID: Cyq8RnWuYrDZKA6hb26OVBLyCkMO9Znt
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwODI2MDE0MSBTYWx0ZWRfX1nzqU4CAPW63
 PaP0Iy+gwGtn5d3tYvnajlVs2CuR41EnWBOeA515r6Pv31Vt37VXCvMSxKqymCv/rN4KcNVUGaV
 Kr4Qb39mSv+8f2RAW4MJbPG7NGoSxB92GX7eBGfdISq7ScQRjqIRHqd/QvE4ih7cT8djIxRc3R0
 ZQl6Oumf8OZ3d7uapvSbnKXnfdgvjAP46L2xu1metGGtKMOxFyM9mzgq6Y6ApoQRmKP87GnTrIi
 ljYCeUod036zTSOD+ztz+fTb/VvTrfG/2/cKSfOjs8YW5FNVWMYooPi823no2ZlMW2GBd3qPgtW
 oTwLu4pkG8fNMDLOlGzXDOEo6fC+qiMVnzwwRe7AYdJos3g5qGfi1Em0b7+80tBoktt7ciwWZ3Z
 l5nJ5smxgc2p/MuHKVkHNN3w4+6S3FHU8KYA2l5vZoLI+80nl0uu97IT4SDzl0g7EBFFbGYTLD7
 bjJN/Vc+/hynt+/hJHA==
X-Proofpoint-Spam-Info: AW1haW4tMjYwODI2MDE0MSBTYWx0ZWRfX+/oXlnKsrsY2
 H07onNkcVrZkpup0aKmq07nVcF73L++DcMqGsuPjJSn30fRTDyTbrX4Ms0ugsm7V9vJWjtML0CS
 eEfP9ASvOKq8JMtHekLvJ8RRKvKSztw=
X-Proofpoint-GUID: Cyq8RnWuYrDZKA6hb26OVBLyCkMO9Znt
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-08-26_05,2026-08-26_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 lowpriorityscore=0 spamscore=0 adultscore=0 malwarescore=0
 clxscore=1015 phishscore=0 priorityscore=1501 suspectscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2608260141
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260826_100323_838354_581C9844 
X-CRM114-Status: GOOD (  13.41  )
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

eUSB2 (Embedded USB2) is a MIPI Alliance standard for chip-to-chip USB2
signaling. Unlike standard USB2, which uses 3.3V signaling, eUSB2 uses
low-voltage differential signaling (~0.4V) and requires a repeater to
interface with external USB2 ports. Because of these differences, eUSB2
PHY initialization sequences, voltage tuning, and register configuration
are distinct from USB2.

Additionally, eUSB2 targets handle wakeup interrupts differently
depending on device speed when operating in host mode. According to the
eUSB2 specification, remote wakeup signaling in host mode is detected
via different data-line assertions based on the connected device speed:

- Low-speed devices: the host repeater drives eD+ to logic '1' upon
  detecting a K-state on the USB lines during remote wakeup (eUSB2
  spec, Section 5.5.14).
- Full-speed/high-speed devices: the host repeater drives eD- to
  logic '1' upon detecting a K-state during remote wakeup (eUSB2 spec,
   Sections 5.5.15 and 5.5.18).

Since the eUSB2 PHY's DP and DM lines need to be configured differently
from USB2 PHYs, controllers should be able to query the PHY type and
configure wakeup interrupts accordingly.

Add PHY_TYPE_EUSB2 to distinguish eUSB2 PHYs from standard USB2 PHYs.

Signed-off-by: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
---
 include/dt-bindings/phy/phy.h | 1 +
 1 file changed, 1 insertion(+)

diff --git a/include/dt-bindings/phy/phy.h b/include/dt-bindings/phy/phy.h
index 979b5dfd8353..555a022c8c0b 100644
--- a/include/dt-bindings/phy/phy.h
+++ b/include/dt-bindings/phy/phy.h
@@ -24,6 +24,7 @@
 #define PHY_TYPE_CPHY		11
 #define PHY_TYPE_USXGMII	12
 #define PHY_TYPE_XAUI		13
+#define PHY_TYPE_EUSB2		14
 
 #define PHY_POL_NORMAL		0
 #define PHY_POL_INVERT		1

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
