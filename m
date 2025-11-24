Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D49A9CFA466
	for <linux-phy@archiver.kernel.org>; Mon, 24 Nov 2025 09:26:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qo9V6UbPbuyFYRlpyv+30U+a3GTPrLs450eM+3znJfs=; b=hkA1cmmi7BW63F
	rhxrQqfPJ/MAToBDdUahlc+NsFetNaP3uvlYHydcTwtaCiJPyfb4ADyP1PM6SZ0CuigSAdhgy0XkO
	ro/9EsoPA4U3DpDDm6fvUPuQPzq6ASg9n1poZwguDBn3yyCo0sP6SRGVwTdP4QgPbdvDy36sdH/9i
	lJWEGHYL4BdSJF1BD1wL17AGe7JGxK4uYXNTaQANj/25oU9RzUXhs2U+sfSGaSC4rH5VMXjBCUC5j
	ospr8+fsBve0IdoxE7nTLtbcPQzGyV8T+uJYnpxPiqTMnIZVvgNNW2jgRFJooQxZlopTJJdOsvaWb
	XASCJhOHfdjqyacM52vA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vNSpk-0000000BLER-1zV9;
	Mon, 24 Nov 2025 09:26:08 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vNSpe-0000000BLCY-2fYV
	for linux-phy@lists.infradead.org;
	Mon, 24 Nov 2025 09:26:06 +0000
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AO8QhDD2447434
	for <linux-phy@lists.infradead.org>; Mon, 24 Nov 2025 09:26:01 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	/4CWX6OdoBZLxQ6ecd23dMQTvFuZp1FvoqDG5znoQSE=; b=nmAxxz3prhVVYvUA
	GweweaM6mKmkGK74CSyMqRa46dHIAVU7nOOmDiPb2cw5DXPYg2xYACD52Dbm8PUG
	rDyZVppBASyhH1vqj8TM2fmz12aN8Y6wgXcN+YPhZlEk5ognsZzSA6VD24LDRVUj
	jTYXWjhOt3AIIE1ohwuaYmsGiAhS72bbOnrN7rvD921bF3Ejchzr0CLZ+UchI0aZ
	oTPzTwK/hX1EC8oAnPrhetuDOkfmR5gTGj5x5QlZH2J6GbszydQVgisZRZJa+Rb6
	RoX2Es/3cXvNEYVcrh9T4VJ3h6FE8HGJSk5baerBiBZFaEiFQ4Ox41XIbHo1Wx2p
	Y2yjtA==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ak69smeby-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 24 Nov 2025 09:26:01 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-299ddb0269eso52813615ad.0
        for <linux-phy@lists.infradead.org>; Mon, 24 Nov 2025 01:26:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1763976360; x=1764581160; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=/4CWX6OdoBZLxQ6ecd23dMQTvFuZp1FvoqDG5znoQSE=;
        b=CYPJCvklcZNgkblHHwNakXSU5gyjkU+drLnR8yxtX2zaTGtYbv55NOBdVK/fjsFj/q
         SGKo1L9QH3xajRw/vEel0J5b+URr2fDlSelPteevFFuQsEtlfv951F/Ebq6a6o9MtMr/
         HxNCg9NOioBq3HQzyXxeun6rPc7PvG4sjg58jJYTmAQg9a+KkdsDcKRJG1fGV90aYNyK
         lGMpQT/Y4Pg4lF96dqUIQR/D2+7uwmoUkQpFJ6IHU1L2XtDWArdSk3IJh1Cv/dftrMt2
         AMddnkvcpTQlbi67B2VsUUiiV7ILhmjhEuUH9vmTYqgUCF+6GqigLSfdRXJR493ozh4p
         KY5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763976360; x=1764581160;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=/4CWX6OdoBZLxQ6ecd23dMQTvFuZp1FvoqDG5znoQSE=;
        b=UlPwbWuADulwy8C02tsaufNlHAlMDTJ1+iIgg6hdDNGG0uTcIV+Zj8pDInI5vsurgt
         VFjwK1a1YLfBsqZq7CT6iBXJueZ0egAvsVCobNaAcrbVDZd7WTr2Ru9fw94ngES6z/jo
         AYqbBhnh4pNg4V7tpOXyQJEULVa/VWSwHeO0SlanGv4LV+NxY8tQ8/qOpJzvNhtYlTHi
         FATOyRanlJsx/tI6YUZdUeICzak8oJL+QASKm6fF5Nrawzu6mleiceLpE/Qh4S83QoDD
         IpGUP00sgW23m/JoYLtjlQtxpgKoQUIMrVuEKN7Y8GwrTnWJluQePOm3GU2hd7RJ7M5q
         /3kQ==
X-Forwarded-Encrypted: i=1; AJvYcCXe+fOC3ySDZ2+4Geg702WY6nxoRQ2ygpJL3xez7OuzF54Kl11Yje9oSn7lc96CINWGzChlyRtYvRM=@lists.infradead.org
X-Gm-Message-State: AOJu0Yxk5GzQci2Y/A1mTAwAyPbVD2liucH3GNwoBJvxc+pU1br76QWN
	X5xBzQmAgBXryki/eQBabqOkjYSpBejTU4cYn/85epcqYIFMgNtiMkVT+jw4Izx3o6ZIAWAbuUZ
	CX9aIN/P+vKK/21MUeW3GQYE6xMNPbMeszZS/1AJoOXJDScGwnn70U4pAnz+s4t9eu/E0+rHPWT
	3u
X-Gm-Gg: ASbGncui9y6ywUqw375XgshYG9GiQAQ6olujz9VPjPVUYhgGeKBnfl1VmSTWV9T5eK6
	1Ain9Xamfx0kAxFCX00WMhFtaNR5V5mNs8b0xWHyNCLZhkSPfjNCTTT+iwHUGSIGKOeGN4C0Uv6
	KwLr2tqSuJkDuvIWYvurTsrzO0ImEGSJFa8/Batznce4x2KQnhV1bRja5AklpJYORPB3Y07t8i1
	ny2t3sCnLQ50TvRS3AeYzm5N9M8GCMybREmROgyPQA9vZFKuxr87INDFvyVPg2Lf0KN6W3PyoF2
	bEg3gD9kQK4kb4m4UQnIxjSvgwJnYWeyc+56nDemi8kpcLp3P+3ELlsbRF3Cr++izZJsWLJkRFN
	D2daRvLIam+f4J8prA4GqWNsS0eH5V51lLZC096A=
X-Received: by 2002:a17:903:1a08:b0:298:8ec:9993 with SMTP id d9443c01a7336-29b6bf3bc84mr119263295ad.38.1763976359948;
        Mon, 24 Nov 2025 01:25:59 -0800 (PST)
X-Google-Smtp-Source: AGHT+IG70geKhony8KJbXDyYD6UKHrItW47p5VqtsLKF3V1wFMXAWLx5NBW6GM0qYYY/9jWECteyTg==
X-Received: by 2002:a17:903:1a08:b0:298:8ec:9993 with SMTP id d9443c01a7336-29b6bf3bc84mr119262785ad.38.1763976359375;
        Mon, 24 Nov 2025 01:25:59 -0800 (PST)
Received: from hu-mohdayaa-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29b5b29b1c2sm128444675ad.81.2025.11.24.01.25.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 24 Nov 2025 01:25:59 -0800 (PST)
From: Mohd Ayaan Anwar <mohd.anwar@oss.qualcomm.com>
Date: Mon, 24 Nov 2025 14:55:17 +0530
Subject: [PATCH 1/6] dt-bindings: phy: describe additional regulator for
 Qualcomm SGMII PHY
MIME-Version: 1.0
Message-Id: <20251124-sgmiieth_serdes_regulator-v1-1-73ae8f9cbe2a@oss.qualcomm.com>
References: <20251124-sgmiieth_serdes_regulator-v1-0-73ae8f9cbe2a@oss.qualcomm.com>
In-Reply-To: <20251124-sgmiieth_serdes_regulator-v1-0-73ae8f9cbe2a@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bartosz Golaszewski <bartosz.golaszewski@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Wasim Nazir <wasim.nazir@oss.qualcomm.com>,
        Mohd Ayaan Anwar <quic_mohdayaa@quicinc.com>,
        Yijie Yang <quic_yijiyang@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Mohd Ayaan Anwar <mohd.anwar@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1763976350; l=937;
 i=mohd.anwar@oss.qualcomm.com; s=20250907; h=from:subject:message-id;
 bh=CCxkbHvWJEDghx45U8Kf39BypvfvW4rXTmv2PjQ5BYk=;
 b=AVRuX8rbxMfdPKZWnX8Ca9CxXlSWPic1aRKYI0Eg2r2VsUs9IVuWbryR7WY4HbYJ3ALKQfrwW
 KYhQlkgj+HdAsLDARZRF372aqYPzn0J8a1KTBH+Ydf16klRvdNyjKVd
X-Developer-Key: i=mohd.anwar@oss.qualcomm.com; a=ed25519;
 pk=7JNY72mz7r6hQstsamPYlUbLhQ5+W64pY4LgfSh9DJU=
X-Authority-Analysis: v=2.4 cv=PNMCOPqC c=1 sm=1 tr=0 ts=692424a9 cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=7k2arxiymalmIiNRug0A:9
 a=QEXdDO2ut3YA:10 a=uG9DUKGECoFWVXl0Dc02:22
X-Proofpoint-ORIG-GUID: 1sfcnDxG2X1zgit5Th0ROLGy8S4oTVC9
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTI0MDA4MiBTYWx0ZWRfX49c2mMmiCHUj
 h5anOZlJ32rinnEpp/ND2dqrcKSVhZ+TjKQGGj/ye9mdw594B0aKB7Fw9zOH/7F1NT/xr53bGem
 4AFcr5fx0dWdXJJRqqt9+F+M3vQHo35TP/5K0sI52PFNYW+olt1PVSEZxhuN9rqY4rBbGLVk0EX
 IbIaYWpusPkQbVwXhe+ypRpGThSYb1BTfwG5eEO2G6eeJgcwKayHzADPa+OIQV+8YWhjBszfsAR
 9NXRM60LRshHhjODDAoA1JAQhzd8W7Bu/rF6IoAbk9Ax7WaiBmAGs8Dse+m5c8JnwwjRM8LjmZj
 f4/yzHraSlI5P7E0dAHvmL88GCYMfDBP5Z5CrRTvWh/o1wkDN09oWsqzMQ7r7Z0q1zBlxQ+/aaF
 ouTE76phSKY/C9WBPqVeXGgUXyfdzA==
X-Proofpoint-GUID: 1sfcnDxG2X1zgit5Th0ROLGy8S4oTVC9
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-24_04,2025-11-21_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 spamscore=0 priorityscore=1501 malwarescore=0 lowpriorityscore=0
 clxscore=1011 phishscore=0 suspectscore=0 adultscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511240082
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251124_012602_824688_43B35AD4 
X-CRM114-Status: GOOD (  10.43  )
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

Describe the additional vdda-0p9-supply for the Qualcomm SGMII PHY.

Signed-off-by: Mohd Ayaan Anwar <mohd.anwar@oss.qualcomm.com>
---
 .../devicetree/bindings/phy/qcom,sa8775p-dwmac-sgmii-phy.yaml         | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,sa8775p-dwmac-sgmii-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sa8775p-dwmac-sgmii-phy.yaml
index 90fc8c039219c739eae05cc17108a9a2fc6193df..0a1330b9118d63cf5400325c58bca05ebc641055 100644
--- a/Documentation/devicetree/bindings/phy/qcom,sa8775p-dwmac-sgmii-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,sa8775p-dwmac-sgmii-phy.yaml
@@ -36,6 +36,10 @@ properties:
     description:
       Phandle to a regulator that provides power to the PHY.
 
+  vdda-0p9-supply:
+    description:
+      Phandle to a 0.9V regulator supply to the PHY.
+
   "#phy-cells":
     const: 0
 

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
