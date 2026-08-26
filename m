Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CC550C61DBD
	for <linux-phy@archiver.kernel.org>; Wed, 26 Aug 2026 17:03:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PPy9eKx/lzcg9YMYyzJxBla0PQNED2HRnTfcl1WHiVw=; b=QPHqW/mnBzb5+h
	XsEfjPE0hV0bjluYRDweuxpdaluzyFUYmplKCK8RrPDOoZCqE6LNgmol+qEa3tdB42Zc+9lu8VWzd
	1w1tOJjyI943X0XYLq9Xi79XZiQ41yNJaSwm/VBPTH9BvBhdoEw4izXAwGW3++Ynt19RQLy8XbEEz
	wAQi9Io/zW3MJHF8Ey9WkcFuySCXb2pXFxlZcPudvC1bqgwrcKHOpYNKRd3F0cnO8BPgrR4U5fSNM
	iyGMYyjBedsO+SY4ssbtujMrBnFUNAALhiv/4eGdzuaib9sKiYaH/1ElLCUe92RMDMKhWfRzox0/M
	x935+dKMdVPUfwWnTukg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wzH2V-00000002n6E-2QJI;
	Wed, 26 Aug 2026 17:03:51 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wzH2S-00000002n5b-2AgA
	for linux-phy@lists.infradead.org;
	Wed, 26 Aug 2026 17:03:50 +0000
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 67QGujq4343343
	for <linux-phy@lists.infradead.org>; Wed, 26 Aug 2026 17:03:47 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	0k3+H4B1qpu4qwyjsM0FEIjECEIpbpZmm2blkY+EjPo=; b=J2Ms9lGQoNzDyXdW
	1jty+4rgueJGi4vXkfNZluUY8TTj7tMwOFbBDIeVODLIdsHjOhGrLbz90xrYmxzQ
	HViZhxIVHEgfBSQRo9s5TnA4LThVNywsxwHTsid4SFDcGnOExL6wYQZ1C8iHkT7I
	nTgon60/shyhhXco3pdsGWeigqXXVMB78nK5i22smYTVT01VadIorRRnltSVhxMI
	zZ0K4bNfWz6YSk7DTZYS7cIyvDby9wcWOm+5I8i8vXB5+3EfnZua8iNDaeixxMQA
	/EpWIXxnElftHrEFrTBP0ekRLZcIV7NQyfr7w6vviVPmByUTaN2qmcicaznaTkgU
	8+LXyQ==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4g9utht7am-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 26 Aug 2026 17:03:47 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-2d6fb956002so16359225ad.1
        for <linux-phy@lists.infradead.org>; Wed, 26 Aug 2026 10:03:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1787763826; x=1788368626; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=0k3+H4B1qpu4qwyjsM0FEIjECEIpbpZmm2blkY+EjPo=;
        b=JoOq6JRudVJ/tcnKGcbgNKba5pTe31hlKQli96uM+OUND/J0w0/xWHhKGwHnu1uYjR
         SYztu0p/jzbggDqQdOvHfwVUQ/DPa+nEeG7A2UdG8Si9mji1uB0ly+HCwAZfORhsQi7X
         E1PloUnQkt8ke3CxHMuTNcp35WZHQiOkElLn/tiRnpJ/ZAbJ0qwygiMoBgnID7fBuE4b
         EwddKT+I1/lVb9feiCWR5z/YdQbBGkQPD5yVLHbdGFuuqHkKdBtUNISWbmab9LzTHoke
         b59dzh/lyhcv0GoVxwwDZPQzmydrXGPU5yToR0uSO1rh+CayYt0WymAuDh9p2zndc+rl
         aW0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1787763826; x=1788368626;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=0k3+H4B1qpu4qwyjsM0FEIjECEIpbpZmm2blkY+EjPo=;
        b=dKmVFTDMo12TmyAszfBXtkhEt4n3W1rO01/YNASQ/+sCn9ORMAybosu/7ZAwLM4pa3
         MsIHlPgjRKkoV4fmDTRuS/ch3jlmmBNP8VFQW49tKGOzwTJ09ByTYbTgZruKTuHDE+F+
         m9bSbm+fObNmgX6J2zlvXx69ahXmUg5o/BBO4hlgG8AxE2MzllV+dhpmdRlM7nPtvJrv
         KgSGMutolIrwX5Wj21EyAYrJQqK/uAw2EYLwFZrAT/mTdIAXSTxRWei+3XPhhjX3g8Nh
         t8iMecrSRr1BVVXtry8WbhwOiMj8kY5Ldp1KvRUe/GiPR+Sxt7+kSRD5UMx/9PADFtRq
         Jstg==
X-Gm-Message-State: AFuF++m4FzedVilaPvOwxq19hq2gZNBBakrE19IC4aOjyO4gV7mHKd6z
	68qlXkzwJREE1sczUQY8y5eWp/Bv5RKC/+Y/HIaK828MotanIWV07fK1DnGddA30fVvdL0c/V08
	Baey14tf6hI9guT9QcOwpOGN4vGn8lnASgtFSJf+2wZ5wcl/R1uZGgFk8sphmXGufzAp8
X-Gm-Gg: AR+sD12/4kInodWCQZmF69jjxkH+utBt1n3Dnf2QL1Bqv7fT+Ll/iqitfjkVw9aNVnW
	9Z6w9QH4qQ78BEF5r/Ep5NibfRAnEGq752jJCgoLiClFggypGfKLdPAWM0qzPl15enhJZC+qDlg
	pKxojCz9vxetiWLjKpVUMtEIaQdnWg57OUuQhdhULv1sPS/90uivqQS9yFVo5CqPi4PvIOMww6h
	Y3LTYzqkhrfxOfRNu9NnoDkDxSytcgjyLBU/S1BViEghL5/WDWxrmU7lX9fmcb2wGVWw9UwVwOZ
	MlfYZI8YP88nNL6wTGg32zG0aZ6EirLVImzqFZvdwk1tXtWoW4x3EsZ8oMV7bZAGVU3RK49l34h
	iQvf6Jpu1eRminXOLWssl4bGdVlL0bzX2WRBT2ww1AUYqiWe4+C2ZZjL8d7X+pBHROf8CMQ==
X-Received: by 2002:a17:903:3243:b0:2d7:2677:4355 with SMTP id d9443c01a7336-2d7267747a2mr9960365ad.3.1787763819568;
        Wed, 26 Aug 2026 10:03:39 -0700 (PDT)
X-Received: by 2002:a17:903:3243:b0:2d7:2677:4355 with SMTP id d9443c01a7336-2d7267747a2mr9926445ad.3.1787763806509;
        Wed, 26 Aug 2026 10:03:26 -0700 (PDT)
Received: from hu-kriskura-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2d70498ca3csm9938285ad.31.2026.08.26.10.03.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 26 Aug 2026 10:03:25 -0700 (PDT)
From: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
Date: Wed, 26 Aug 2026 22:32:52 +0530
Subject: [PATCH v6 2/5] include: linux: phy: Add phy attribute "type" and
 associated helpers
MIME-Version: 1.0
Message-Id: <20260826-eusb2-interrupt-v6-v6-2-ae2601cfa80c@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1787763791; l=2226;
 i=krishna.kurapati@oss.qualcomm.com; s=20260707; h=from:subject:message-id;
 bh=XU1ptAM6EfnwzxCKISypTLGtRTu3B+bY98zEVbWVya0=;
 b=nRTL3Gl/PRzPtuvHmkGijqsbLBwsSkFNJsrC/6RaBj8Eqzt4P2wULurs7hkAe03n1JhDZOq//
 hRYF9nz4eFDA/7aNXVlgMEAMFugpOdBb37GFCakBXzIiuq8K03X5sXH
X-Developer-Key: i=krishna.kurapati@oss.qualcomm.com; a=ed25519;
 pk=6PmiuwGCdov3wRO+bdmRlRxRtmJyDKz3ED57LLPVgds=
X-Authority-Analysis: v=2.4 cv=EMA2FVZC c=1 sm=1 tr=0 ts=6a8f1c73 cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=Sv0fKeRqtYgA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_glEPmIy2e8OvE2BGh3C:22
 a=EUspDBNiAAAA:8 a=YrurubeZKOWHlXb_luAA:9 a=QEXdDO2ut3YA:10
 a=324X-CrmTo6CU4MGRt3R:22
X-Proofpoint-ORIG-GUID: LxrmkBXq9a87_IPs181iJwqI_tF9q2LW
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwODI2MDE0MSBTYWx0ZWRfX26T3AMFHW8ah
 nUAKionwqZJTJ43FoNNlABuXATwt4/T8qxdHglAT1m9zL/Wdmqme9n/q8DHdIi5Vd2weC+3Tvdn
 BjlHAsn41BqDmFa2fjgdj39sSTvHJJ+z2+fN3goXIAjVDRf+lkk5pdnWjwR+yFkt9OF3GMSmwe9
 BlGkR/0eMxx1gRAYhHXeMesWtGXr4IJQDQ0ys7I/g/HRV5HxyMvWnidT4eaGmoyClPwK38eTMJM
 bxUGL1WvCzlSKeCdKPPH6a+uY5tBGVWyEbUeMPwXF8Lz2hRnffsbj3x0v3kYjXoiU7br6+vIk3W
 EE5K0utmQnHwKWMEdvbOcmbah8lA4bBiQwwSiHEoKUxM8GVH6uNsVhZs2i+xRaxbBl1wG09OUO6
 y8WNyUM6xIXo3yu9+bnsIX92UM1S+XWA6sE7tDEx02mcrA66ExOAG+XHMRHZ33hwdL/c2Qb3kx4
 87xtxriSrjWMfJpCvfg==
X-Proofpoint-Spam-Info: AW1haW4tMjYwODI2MDE0MSBTYWx0ZWRfX6q4imnDEegrd
 IBjvymyuc1rH8GDdK4Ai70NS9FjOIkc5ZoUmXt5mROw3pSbDlLltwAamq2REHW+LyCnLJhAq4z1
 pE1mJWgvyYrY7qtK95F/SRhiaQds4mA=
X-Proofpoint-GUID: LxrmkBXq9a87_IPs181iJwqI_tF9q2LW
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-08-26_05,2026-08-26_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 lowpriorityscore=0 spamscore=0 adultscore=0 malwarescore=0
 clxscore=1015 phishscore=0 priorityscore=1501 suspectscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2608260141
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260826_100348_683004_A52D39E1 
X-CRM114-Status: GOOD (  17.02  )
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
