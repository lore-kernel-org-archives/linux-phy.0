Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 74D92C531C7
	for <linux-phy@archiver.kernel.org>; Thu, 23 Jul 2026 10:39:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5dYz3m+uz9Ofb3fErJGripU2jpglTzhaSZKc3NCGtdk=; b=bvOpz675RgSSEa
	/f4iGYLkmovsIcxj5NqeDTqDLUBMO9cYz6dX7fZiZXMtAZU59CeMm91aNjlkS1PAcSx+6OxbKNYs6
	MSmCjXqLnB60OXB4Vf1WbtVhHrzeBCX7/eo6rSAqEXfY0bcyoB0VBtAOFdLdgFrVs6GH3GlEGEHWo
	mesNlel610JBSVhOY5kwt0Rd8S3iyW0s12kK+Gtzw6iWvXzRPLCTx2KZTJ/DhCPElOZYuSM68t/Nh
	8TucXsQPtE3vgpPbJJCy6nh7r6IkJM7pzoBXT2E1R9sYkJOyi1VwWzkmXVmTtdo2ssmHC5WtM3JWT
	a1At2yPBoJojlnAWrQ6A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wmqpt-0000000E3A6-04Mj;
	Thu, 23 Jul 2026 10:39:29 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wmqpr-0000000E39K-13A6
	for linux-phy@lists.infradead.org;
	Thu, 23 Jul 2026 10:39:28 +0000
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 66N8qSGe3260925
	for <linux-phy@lists.infradead.org>; Thu, 23 Jul 2026 10:39:26 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	RCiwavlWx7fmZTlnPc68q9XviW9MLGTcHd39AeRwIB8=; b=kQ53gVRKeEpDfn8u
	Wr1Dd1vXBM8NgI2o91cavyKGbL6+KIZ3j4fT1bX6GSLjAIp3cGY8kyJCpfOR84gm
	4/GKcYA0Q6Aj+9MH6fPKtclxQ6yL9zMsDJYNR7IzTDAini6uBnTPRLlvQf4E2SK5
	vmeps3KA7YXnEXa+8GgH6Nx7ULG/D3RQCkm+WH3V79h8LhlBvi67CyqDhv9wngSt
	elmRTlmnnJw4yOlhiCE/pqsujxJJhe6ysVuegyIeQA928NkHAMbppSWmk7cgn18g
	OlFNQrWkp/rdjJXIgG4/9lfcptipuiMzyGDCjGsoPwYMxZ5fmH1Nz2k8w8QogY3L
	TgRO6w==
Received: from mail-pf1-f198.google.com (mail-pf1-f198.google.com [209.85.210.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4fkafw1q78-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 23 Jul 2026 10:39:26 +0000 (GMT)
Received: by mail-pf1-f198.google.com with SMTP id d2e1a72fcca58-848662cd2a1so663296b3a.2
        for <linux-phy@lists.infradead.org>; Thu, 23 Jul 2026 03:39:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1784803166; x=1785407966; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=RCiwavlWx7fmZTlnPc68q9XviW9MLGTcHd39AeRwIB8=;
        b=YXQ8df3agSwEZXWRQAyODkhIhN4DhkG8VAqsVJTob5mxhlPEbnX6+xGXA6vCMRcP46
         be2o+JDaI89ck+Blc+bbIRT7grE2URjpYrYaz6kO1yOtdajpFINtVnLQFMz8r3YWp3mG
         Yn7ZpbauvbjHHEwpVhV3yUhI1TQ2ZNVmcmpDLu7AYHDV9d1qtRm1Yiz/Jiw/XVdld9LE
         kbqSNTt9aRpXj7sTiMmRI/myn/UiDZ/sB9yRiJWkgOsMaNEYXWOxrxR4muInM83hIssW
         6MPBZOlGsJ1e5+QFDLM9nTKAQcQPtn+Nw1EhhoYQUlYv+OFZcG/1y0/0rXod+2jpf7SO
         thkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784803166; x=1785407966;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=RCiwavlWx7fmZTlnPc68q9XviW9MLGTcHd39AeRwIB8=;
        b=rekKXaRV4TSCJoHbiOu8qjqEGYew3dsBbbEqBv+BZg4KU/fK7RsuNmLBCXNhVJJNhg
         6jdvE0VII8K03YXgS64wuA6AXKdAv4JYaR6PliGgI/GrEvx5MdO7T0NEitEGhYFVjH02
         BabbCCBzBzVrMnXYv8j9a39iqmT20+ePNDltIGoKolDFyL/bECuhlIxZ9LDD0FFqEk0q
         2kb/+VPnEiobWrka0lMgxfV9xuXOBq8UdbmeeO7d7Fv748R2Q72fYfluzME4MdunWs96
         TV3ffBSukuDIOU4sS/5MSxNuu11S99j7RyYEmqMdwsV/M61oCG5WuXDV2NwkTNky+H1b
         PGMQ==
X-Gm-Message-State: AOJu0YxmFZpFdOj0sFrNzImfvW7ouqB488mhomlgi6svLbedJLUsNxvK
	13ldgVR/pOnvQafTnvTZ5YKmK+fxz0FDB9WdQAdM0GV7XSAbrQhe2Em+44vvrRVlNfxHj99Ic5I
	ASTad3YcA6oyM9kcm3GSPv9Qy4lrM3w26wEoZx1e15Tx/TBfc2njs9d8SYG8/fuYHtGyI8i+gxf
	hw
X-Gm-Gg: AR+sD12uZ1zCuVU8D+UrDcubCZ1ri5jikkjacYPjyP8gXlt9JfA7BSeKUiSdiw5UV2a
	VF4XpllvtmEylaX54A2CWedc5B4eNsSJ4IV4uJSAzCKoyWifOIIWs3Y7KHZHE8n8IxvU5WSHBWD
	JVjZwaVPooFgRK6bi7YF0OG9iHbyFtBzg6DYaJ7X3B7rQZGPq4kwG6sBNueKxMdEaLx8/J6HCOP
	3wA5P71PXdqnTwpqzaOgBrYDZBpXqzUG24WdCVxsiRL7ylK8+TgBJqHKFvXUh36CgnLjgsYLqsF
	OgCCZka2InZcqD+Ag5LU5VR5vqUcBm/5x7zzL7uG2AcTVXGWeD/GXJ8yDYUOG+JYWJKXEZzIaGM
	9PSFKlbYtmKPB2tXcf2CudkDkZojFiuYWiS48QQvGy/QTuqOoycd6tXEhU5xkF/SCkjFjQg==
X-Received: by 2002:a05:6a00:428d:b0:847:9315:fb8b with SMTP id d2e1a72fcca58-84e2b7fd971mr2755405b3a.6.1784803165754;
        Thu, 23 Jul 2026 03:39:25 -0700 (PDT)
X-Received: by 2002:a05:6a00:428d:b0:847:9315:fb8b with SMTP id d2e1a72fcca58-84e2b7fd971mr2755375b3a.6.1784803165175;
        Thu, 23 Jul 2026 03:39:25 -0700 (PDT)
Received: from hu-kriskura-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-84e17604a46sm2864469b3a.60.2026.07.23.03.39.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 Jul 2026 03:39:24 -0700 (PDT)
From: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
Date: Thu, 23 Jul 2026 16:09:05 +0530
Subject: [PATCH v5 2/5] include: linux: phy: Add phy attribute "type" and
 associated helpers
MIME-Version: 1.0
Message-Id: <20260723-eusb2-int-handling-v5-v5-2-f32ea6c1a318@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1784803149; l=2137;
 i=krishna.kurapati@oss.qualcomm.com; s=20260707; h=from:subject:message-id;
 bh=faea8Mbb2kXKgIHJRv7HjgYpvWzfWD9zJupPwvcdcrg=;
 b=fEMu9zZnFd3/YJy6BMGAe8bE3WOzBECRnZpms5zx4J/LBjcblGjKYuZa6Ifl1BByEOWU+9ZsU
 ih7iU/m81S4DMESCtDpdZbTpwBohgm3L41WrCyx4tvQykIVi8shv6uY
X-Developer-Key: i=krishna.kurapati@oss.qualcomm.com; a=ed25519;
 pk=6PmiuwGCdov3wRO+bdmRlRxRtmJyDKz3ED57LLPVgds=
X-Authority-Analysis: v=2.4 cv=XNkAjwhE c=1 sm=1 tr=0 ts=6a61ef5e cx=c_pps
 a=m5Vt/hrsBiPMCU0y4gIsQw==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=RAioF0-LDSMA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=YMgV9FUhrdKAYTUUvYB2:22
 a=EUspDBNiAAAA:8 a=sXPWvSmTxj0M_2YBHNwA:9 a=QEXdDO2ut3YA:10
 a=IoOABgeZipijB_acs4fv:22
X-Proofpoint-ORIG-GUID: Xr53Z3KEIw6hFeDeLqY9XgxJXfPJOQDE
X-Proofpoint-GUID: Xr53Z3KEIw6hFeDeLqY9XgxJXfPJOQDE
X-Proofpoint-Spam-Info: AW1haW4tMjYwNzIzMDEwNCBTYWx0ZWRfX/sqsZdb0btwt
 yeSZYzpGYR5YEz/Ejc6Ql9TTM+WRaBrVZBIbhFheOzqnPHQasRaF3kfsYH+L2JWgK1blRNLqjx4
 /xEstckE/KgkRyiLYNvXeBxiiO4CC04=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzIzMDEwNCBTYWx0ZWRfXwm4OBGtXr9e4
 p4mAtMUZFK0tgvcW5i8rq++ee/Y3UyMkofIA7Ha/ROcnCUtaCli5HqdT+buKwWOml/TlsKKu5HI
 DZjN1TydzIwnWOMSlVYRppLxNAXfK4plu6seKJ/RxyVO6s9MA5dNn3atvjWPsdQSq3ilQqjMyU8
 m9SCHvgvn1TP1gr/x024EJEkv0SWX4aciwxJlgq7hT8DX2hFxOOg47YQXldf+mWv7mbjtf9YWEG
 qz0HTrV8YIPPU9c3ZC1JXdy3HPXujGVAT6V+7+fcxbs5ZUsr7C/fOWA1w5HILVWz37Ep6RKXrKT
 2euIwEAVxjf8BxpOXHooHKUNGEdLjB/GQOYuS4H3pkQsrm2ARwtEfcED0BIP6Ih7tSIdTR4eQYj
 6+X0s+77tkSvG2bwVUwE8EnLVlgxRmJJ9xpW0FM+eDs78VVAyfuPcivgoSJjDufq+HjjGVl8RHO
 3pwZoQdD2IVEGH0Hbbg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-07-23_03,2026-07-22_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 impostorscore=0 suspectscore=0 bulkscore=0 clxscore=1015
 lowpriorityscore=0 phishscore=0 priorityscore=1501 malwarescore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2607230104
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260723_033927_319494_BC2C65D1 
X-CRM114-Status: GOOD (  16.22  )
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

In cases like USB High-speed phys which can be either USB2 or EUSB2, it is
required to know the type of phy (rather than the operating mode). Add
support to cache the PHY_TYPE and add the following helpers:

- phy_set_type() for the phy drivers (like m31_eusb2 or snps-eusb2) to
declare what type of PHY they are (in this case PHY_TYPE_EUSB2).

- phy_get_type() for the consumers (like USB controllers) to query the
type of phy connected to them.

Signed-off-by: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
---
 include/linux/phy/phy.h | 27 +++++++++++++++++++++++++++
 1 file changed, 27 insertions(+)

diff --git a/include/linux/phy/phy.h b/include/linux/phy/phy.h
index ea47975e288a..038c2b58bbe1 100644
--- a/include/linux/phy/phy.h
+++ b/include/linux/phy/phy.h
@@ -21,6 +21,8 @@
 #include <linux/phy/phy-lvds.h>
 #include <linux/phy/phy-mipi-dphy.h>
 
+#include <dt-bindings/phy/phy.h>
+
 struct phy;
 
 enum phy_mode {
@@ -152,11 +154,13 @@ struct phy_ops {
  * @bus_width: Data path width implemented by PHY
  * @max_link_rate: Maximum link rate supported by PHY (units to be decided by producer and consumer)
  * @mode: PHY mode
+ * @type: PHY type
  */
 struct phy_attrs {
 	u32			bus_width;
 	u32			max_link_rate;
 	enum phy_mode		mode;
+	int			type;
 };
 
 /**
@@ -262,6 +266,20 @@ static inline enum phy_mode phy_get_mode(struct phy *phy)
 {
 	return phy->attrs.mode;
 }
+
+static inline int phy_get_type(struct phy *phy)
+{
+	if (phy)
+		return phy->attrs.type;
+
+	return PHY_NONE;
+}
+
+static inline void phy_set_type(struct phy *phy, int type)
+{
+	phy->attrs.type = type;
+}
+
 int phy_reset(struct phy *phy);
 int phy_calibrate(struct phy *phy);
 int phy_notify_connect(struct phy *phy, int port);
@@ -393,6 +411,15 @@ static inline enum phy_mode phy_get_mode(struct phy *phy)
 	return PHY_MODE_INVALID;
 }
 
+static inline int phy_get_type(struct phy *phy)
+{
+	return PHY_NONE;
+}
+
+static inline void phy_set_type(struct phy *phy, int type)
+{
+}
+
 static inline int phy_reset(struct phy *phy)
 {
 	if (!phy)

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
