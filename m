Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 52B56C624D6
	for <linux-phy@archiver.kernel.org>; Sat,  5 Sep 2026 15:29:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=f5IMidm6ZM9uscm/IvEU7/AEnwadQtqVSl1LHWsYpxw=; b=1Xkufvmj/EPdWa
	gmQshaVoLWa9+iFxmFwb31BaMx65i+xiD0FrBlxbKH9T7ZoeFBI25u9XcOo/MvkNLOztkLvrAmivj
	nH9BtuZ8qX9+93Ve4uxDF4U6f6u0egcpLObZxD18TrWGuruCO/G9sRXNr5H+UfpTCjQC+6vyAepki
	0lD66Woc0Na+6OrZXOOPomjHWD8IIlaDKi03YrEg/atWONi+vV+FW3GTulKkJYoIPhyAaPqP89pSC
	9PqlqJaet5/SQfz2s/HN9aHo/DUxtMjdPkpQTua2M4EspdUf9xHr1SKbjGYGELh92ysBYXmgb73JF
	BsCE4TnfDAU38Whqgn3Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x2sKg-00000004CIu-3R4V;
	Sat, 05 Sep 2026 15:29:30 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x2sKe-00000004CIR-27Jo
	for linux-phy@lists.infradead.org;
	Sat, 05 Sep 2026 15:29:29 +0000
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 685EgULD2540027
	for <linux-phy@lists.infradead.org>; Sat, 5 Sep 2026 15:29:27 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	tTZTpwickzeEOAwCmlEb7yO25dW4SXzxijxCeKA4O0A=; b=TuzICB/wAXrp8Auc
	kwsrO/t2aw8fVvtUQ0z9ewxvcdYOx7mwlTxf6BT4wy6hFLCGEldJVOpZ7cvSlcGz
	WTfhOiGXYpRlaFwh5yJe0E5cBK4WUBTQEKLITfLV0AgL7SMiN3MchU2nKuLKezkX
	lopDAHhDBrHKdh2hpjVn6aO027Jledi+sACKgWu2EgJ5EDrGChJ6tSQtvlcsqZty
	bDPnWCmnD3SyFNq3eDhoTahU+BApQBXZ8C7bxHXF15FB27hQ8Rh5gAFWhzVIIOJS
	xufNEkGCIz2chRcNV7uEA1wRAITPwLAT3xhJV2p3nJJvWaUQzflRJND9HhD3aGHG
	hmKKlQ==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ggadhhgae-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Sat, 05 Sep 2026 15:29:27 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-2cfca8558d2so25299225ad.2
        for <linux-phy@lists.infradead.org>; Sat, 05 Sep 2026 08:29:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1788622166; x=1789226966; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=tTZTpwickzeEOAwCmlEb7yO25dW4SXzxijxCeKA4O0A=;
        b=D06gTMJ0YPloTep15MEhTXOzOze3oimxo524VCBsjvYr/MEcWHnB807I9mS8FBI35o
         3CcnwcZW++4tYEZwk0evoLYF61JHk9u+WKgfYMTYll01+qg7OR/AH7bOOuekpS96qJ3i
         s1QBnytsQ6k9T/q9+3UY+/WRWZLtLfjzxAr4OQByQnS11qbPwN7safRuv2ERPFJZ08YD
         5nqz0Z9G34td+J1o1oYIfOitoQlMrHYhyYluSXY7jKjA3rHUfp2gcSg99rsaQWtvMits
         Pl27cgrcLOaQOn4H5wT0GyHzg90zE7UgXbIQXbcpoQm43n6mmJicjZRlPzpo/KVw1T7z
         /R2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788622166; x=1789226966;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=tTZTpwickzeEOAwCmlEb7yO25dW4SXzxijxCeKA4O0A=;
        b=QtcNDMMp/0ip9J6jO120rxEmdOwwwM4oyWjhFl2nDuDebLLRQU6jw2BuwuoQ8KzF2P
         5FcJSu+BJeF+6WLvB7Iccg47QPjAItmFOb4+DUqs+UVGsRiL5cQgBhboDgu90cbvinon
         zClVVPQKD935Epl4S9bt2xl26toV8emLPUspDcITPZHqqQ6yw9Xm5WS74UnlnCPgNVkz
         bKhC0wEU+PJBr1PIC9WAyT/Oa/BOrybR1QbsHGrXruieMqs+IPhD9A6KQZxFzNGuGXAM
         WPRmxqOuydj8jyvHZLSyfwmEjrowqGpRCB3Za0XfvfJQWU5Cu6RU1c/FHNbJott6sWs+
         CPUg==
X-Gm-Message-State: AFuF++n9Ec8ZVQR170bgb5V1pnOQPoOSR2W3y3QVClC+u+uZc6a3tuGJ
	Aw8CFHHiwCMQ7RsBOZnyp8nVFGvtRldlG06xvtQJqfAakFS3Cdjv5iomlUQmxLLQ2B7QZ61nJtH
	jCmpRH0VQG2Dg7MBrqm805/ngQhV/+AnQzuiEGoQo7x1kDDiFiFiT23BH8xpO+DOpD2Ha
X-Gm-Gg: AYBFou3kpgPhkOTj1jEYfVboax2AuxtQRyIhPCx5S78gWo8J8yAUdmwV0lIKDqgk+bQ
	ZhYdt+YS5PAooVcnXRbe+2Xf0xxnAVoFJI4BxJMKnYgmolCOG3Ay+M6LEejboKmy445RAqzMtSA
	6uMreEDq4NDt+faH34Fm3b06ifHmhA5wz6e3ydfZeYRbt0uSIq0ycGUWK3q6sOkFM509dkYS5PZ
	n/qD6iVDBnElC+/DGeulx4gNEFj+Vu81ahhGXbS9KiXg8jLuBso06GzgHXd4B6mYOOTZFmCB50F
	i0Coc0mmOugSATaYlRNhdDEGLJ4SB3KLHmtyy8QkFMkiQgUlGl7L0NAWqe99+c3RLmgr7AqH7o7
	X8yX3yeaO6AtKn+CdWM6pJFSs7zXHeyZ0M11MJ7ex3YEYCgDbfSkeGtAGrMKfg7DgtW5XXw==
X-Received: by 2002:a17:902:ce89:b0:2da:e967:7953 with SMTP id d9443c01a7336-2db125f1626mr175066015ad.12.1788622166533;
        Sat, 05 Sep 2026 08:29:26 -0700 (PDT)
X-Received: by 2002:a17:902:ce89:b0:2da:e967:7953 with SMTP id d9443c01a7336-2db125f1626mr175065495ad.12.1788622166057;
        Sat, 05 Sep 2026 08:29:26 -0700 (PDT)
Received: from hu-kriskura-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-3339af25062sm23592635eec.16.2026.09.05.08.29.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 05 Sep 2026 08:29:25 -0700 (PDT)
From: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
Date: Sat, 05 Sep 2026 20:59:06 +0530
Subject: [PATCH v7 2/5] include: linux: phy: Add phy attribute "type" and
 associated helpers
MIME-Version: 1.0
Message-Id: <20260905-eusb2-interrupt-v7-v7-2-820cf5377a70@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1788622149; l=2281;
 i=krishna.kurapati@oss.qualcomm.com; s=20260707; h=from:subject:message-id;
 bh=Uyo7hXJaEAF1gH4XY+cmoRAczUbVpxvWUGMccuon35U=;
 b=5QchFc35Jg6+fBq4P788nJWtG3L3Yo+D9VMtZnp/+4UXnmsYyJtl1KAulTFo3ukVADJW8/zVL
 EO9jE2yBSFXAqy2xcHlyjnIwE1iH+gBwcfKMLdKiiGKeMp3F+K8ENgt
X-Developer-Key: i=krishna.kurapati@oss.qualcomm.com; a=ed25519;
 pk=6PmiuwGCdov3wRO+bdmRlRxRtmJyDKz3ED57LLPVgds=
X-Proofpoint-ORIG-GUID: fwXTQ64Sn5VvkchBWcaWxhHWnhJFQOP7
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwOTA1MDE3MCBTYWx0ZWRfX3kYyYL8nCN1t
 2py5j8zzq7r2QC5qZWWEAi5nfvx5zOhyM04evGr3AGgwwWa5AR2adamUDJUHPbjoJI3qb8kEagZ
 qHP9OhS+fOxXxTGxS7hW2QvQDIYuku2nwlki2PKF5cXRmWNy4R40wNZXq/VBCeR81Bp96nEIh+h
 kS66pyF3hGcbqwswRns87oQSMsQqkGCv68EshRcpltFLhLvjwMDXp5FuIgGO95n/C0m82H4N332
 fiz0Db4Dqyq38bNXqI810D26+9svNTM8yc/TIXV9YcsRLm9xnPx124CPhbydFYLXcuwUwIL2iGk
 P5wUlfzVa6iqHpznTyjF9ooUCGD6ddh5nne4x6VCo158+Iy3yusxNj5lB/2N6/W5Ca6BJ9o71/d
 n92P7lBtPYdAGvYp+jJnjOCJq9ch2xohrtNAhksdhLmCgva3UaHf0RfBe/WS7UMrGL+Bi0vAUsN
 yGjFmMElcQTx2U4p6fA==
X-Proofpoint-Spam-Info: AW1haW4tMjYwOTA1MDE3MCBTYWx0ZWRfXwqEDqbijcZSj
 g5dIrp81Ch3Yq0zq05PyBzGkJL7K8qx5N63VTEiLy7VzkVJeor7wD8W6elyooDeQIHgCUYXHfrC
 j3gEZAKZITSXBDIBanDn+oEh48X5WoY=
X-Authority-Analysis: v=2.4 cv=OceoyBTY c=1 sm=1 tr=0 ts=6a9c3557 cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=VdqzKS8jKosA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=ZpdpYltYx_vBUK5n70dp:22
 a=jIQo8A4GAAAA:8 a=EUspDBNiAAAA:8 a=YrurubeZKOWHlXb_luAA:9 a=QEXdDO2ut3YA:10
 a=GvdueXVYPmCkWapjIL-Q:22
X-Proofpoint-GUID: fwXTQ64Sn5VvkchBWcaWxhHWnhJFQOP7
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-09-05_05,2026-09-03_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 bulkscore=0 priorityscore=1501 suspectscore=0 phishscore=0
 malwarescore=0 impostorscore=0 adultscore=0 spamscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2609050170
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260905_082928_689146_385DA916 
X-CRM114-Status: GOOD (  16.23  )
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
required to know the type of phy (rather than the operating mode) because
DP and DM interrupt lines need to be configured differently for each of
them.

Add support to cache the PHY_TYPE and add the following helpers:

- phy_set_type() for the phy drivers (like m31_eusb2 or snps-eusb2) to
declare what type of PHY they are (in this case PHY_TYPE_EUSB2).

- phy_get_type() for the consumers (like USB controllers) to query the
type of phy connected to them.

Reviewed-by: Thinh Nguyen <Thinh.Nguyen@synopsys.com>
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
