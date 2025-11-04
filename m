Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 128ECCCF9E3
	for <linux-phy@archiver.kernel.org>; Tue,  4 Nov 2025 07:56:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QSKNyRwA34I6MDmuaqnWwZADdx3GF2rKcA5XtQiuoVU=; b=K08BzEB+dtNXpi
	HD/LOhPfyFe95RW02jLYYWOKD04Tt+mHOk6riemvqkkvJzSmYVWnXCRh430HkPyysYwZDitdt7vqZ
	7BzFB/FHENSMoT0uJ1FYYu71KMA9h543cGIpudW3ZncqN6qGy/xmO2JPFKbXOUvIZJoGiXCpgYjMI
	ulsMYqC6/4mYJujjZP9e92rbeR3VJUfGd8hPORD75zhqqNYUDI2ytelnQWKHw5Jg+jKfVZfz1ph1E
	Lq6n61dB0NWvbsxwwmcl76N+5FPHHDF5DAAo5oWHikqIGKShI1km/OEoIoJUdWV6kn2E/1hbc0qyp
	uN6HND7NMrdJ4RPyyXXw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vGBu6-0000000BMn6-0xT8;
	Tue, 04 Nov 2025 07:56:34 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vGBu3-0000000BMlG-01qW
	for linux-phy@lists.infradead.org;
	Tue, 04 Nov 2025 07:56:32 +0000
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5A45GM8i1059913
	for <linux-phy@lists.infradead.org>; Tue, 4 Nov 2025 07:56:30 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	RoHRt+4t/c3tdwGEDl4fclkJI4Vp+4dj/2Y0zI28L2A=; b=alQ8yu3xJ3FjoQj+
	elCtwvIDJ3iUNC3PN/L/FeSABIfRNwwvn8bkmx7rfM1jfgRLupb8v+9BtyFUV2Tx
	vFTl0GTmiqhoZlIBm6rwRZ1t6d/BcKhqCd+Qa+4OkjVP3PhlNlmsMWljIvRKBLQB
	OqRnnRgHK9R5r2G7iy9G8HX8lO3wIlBXn14V+NZY6czmzNLow/8QHfqBUPUnL58S
	RvhWyV5BXI3pXdZXuokR2Zxeara8E+qBnROd7cFMkgbFgZG6Vytm9EC6hXTlpZNO
	+gWpjKaqeflCsORSFyPJAycroooCS12ushbEJD9cwI4aYjYV0dW9ibajqweHL7Jm
	iyoODw==
Received: from mail-pj1-f71.google.com (mail-pj1-f71.google.com [209.85.216.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a7b6prdf4-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 04 Nov 2025 07:56:30 +0000 (GMT)
Received: by mail-pj1-f71.google.com with SMTP id 98e67ed59e1d1-3405c46a22eso5549058a91.2
        for <linux-phy@lists.infradead.org>; Mon, 03 Nov 2025 23:56:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1762242990; x=1762847790; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=RoHRt+4t/c3tdwGEDl4fclkJI4Vp+4dj/2Y0zI28L2A=;
        b=fSBhq9uplC24yVJOATFCZjDTohg3SVyNjuL8wc+SpGz8RY/3LPf7BQMtfC+iebU9Pb
         ZFIWYrLx+etI/I2ywKCTWSwWMCaGaj4PaIOhvDt/EyNXOTBLQ2dftxdyNkGKazt9aL7X
         /Pv1QnD6LbOPCHkX7tIO/AYKC8wlDcKZUKmO9Xy0/e3NEd18TjX/05AriTOXP5rw4Dmk
         zx33WAcqybhCrVAJ7warvcRE3kcxt3/kkcSnD33LOgE7hV26dKBvAmA+5sy6ijxtwid2
         rHmvK9ZpYdBlaUVozSj8sf45/hnQzipu0dYNJJsCa3FP++vw0SWEU4GguxdQdGQzupTN
         lRnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762242990; x=1762847790;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=RoHRt+4t/c3tdwGEDl4fclkJI4Vp+4dj/2Y0zI28L2A=;
        b=fI9UAjCBVzze+PRK4rfw7mi3u92tz9JbYysqI0o9A7vxme9ysSR80URbqj8IWIVknG
         AlUW5dZQyLp5kWNf7ZY14UdgNyu+lN08xkrX9Pk2JIMhfNVT63aK5VZZ89hk85WUPZak
         4ZRVYtclXb3OdNYU1rL88kM+upJ8CPuajkRd4KJDnkgfZOUnKoWJTXpt8YlS26XGeQ6G
         iZiosM/SOIvUObFK0l3x+qrOMrhZfiAxLjlK2D/VVPJA40Q67uo1S2Xv/NGi8qDCsmQ3
         pAWYqGPbUvFmoqdvtui+Cjb6SV3OglhXyA2Dn/8UoI4XUf7buHS+XRtFPLgdUThrE+cR
         OYqw==
X-Forwarded-Encrypted: i=1; AJvYcCW/xw2kIaaCJn6FNYC2+59G3mOyVpognBh2z1oSHMQUvx+XgrIQoe42RYDdDSfevZaO3ZANfMgK78k=@lists.infradead.org
X-Gm-Message-State: AOJu0YzWlHYkjpKmAP81t/TojK637Pau3DTp6nKsuyYE9ryp+GULEA3u
	5xnIeBLyAxfKhaw02VE0+IBSDQZt4iffL21WLWMhu+k8zO/rPwwaCqOpL2njPr/A0zEZ6nafGa7
	Z2wmxaxV3qY5vp5mrhtdmuFpAoVIxVDPNzfcfEIHHV/9xjJ16yiWvhjdpmhbSvwlbirOD
X-Gm-Gg: ASbGncvy8ojUNUJ4lDldzEsZXx5xEhki8e4+JSY0d51b9Ld6xKZLgMsf3edyTbFpzKJ
	Bye/TgX/pQxNMOzjg6+dK7doM8SnKG+mKBXg/41a+IJmXTMFwAcnLDSzLKkB5mZZ6kfE5AbGm8W
	Tt9RR6jz/FE5vOzOvHy9UuXD9wfAmdzMIMOLbz/7TzlScpTS3IHKgdVFbUY29MkSEJQSi2oKUS0
	XViX1nt6rZrIauyBEID+QDwGFAh/ieSIKIb4sWF+M8q3cQG9llPyW+dFp6yxCIzc/8KN+RP8LDQ
	kv8z3SHJfrEitpm0lSjMj6/VUtIKUmJsPnXdBjuzktMW7GLlRfWTGPr07QTWfUhGTB9CHOdJ0W7
	ylzsMYMhcKyuiQs2/lGZ1yN6+BBOHhdJnMX2PAhPiqK2Hcw==
X-Received: by 2002:a17:90b:2d84:b0:340:b572:3b7f with SMTP id 98e67ed59e1d1-340b5723c9emr14408694a91.20.1762242989731;
        Mon, 03 Nov 2025 23:56:29 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHblCsTh9EtWdUdTdA5S+5zt8dR4ohSG7w0SjM7q5S624Oo1ILhLcn4ytG8kX9EqOp8INvBCA==
X-Received: by 2002:a17:90b:2d84:b0:340:b572:3b7f with SMTP id 98e67ed59e1d1-340b5723c9emr14408667a91.20.1762242989235;
        Mon, 03 Nov 2025 23:56:29 -0800 (PST)
Received: from hu-qianyu-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-34159a16652sm3627951a91.20.2025.11.03.23.56.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 03 Nov 2025 23:56:28 -0800 (PST)
From: Qiang Yu <qiang.yu@oss.qualcomm.com>
Date: Mon, 03 Nov 2025 23:56:24 -0800
Subject: [PATCH v6 1/3] dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy:
 Document the Glymur QMP PCIe PHY
MIME-Version: 1.0
Message-Id: <20251103-glymur-pcie-upstream-v6-1-18a5e0a538dc@oss.qualcomm.com>
References: <20251103-glymur-pcie-upstream-v6-0-18a5e0a538dc@oss.qualcomm.com>
In-Reply-To: <20251103-glymur-pcie-upstream-v6-0-18a5e0a538dc@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Qiang Yu <qiang.yu@oss.qualcomm.com>,
        Prudhvi Yarlagadda <quic_pyarlaga@quicinc.com>,
        Wenbin Yao <wenbin.yao@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1762242987; l=1696;
 i=qiang.yu@oss.qualcomm.com; s=20250513; h=from:subject:message-id;
 bh=1mXglDsn+0xPeOIvS0urkFyaDKAG2hJUN/4wa3OAjrY=;
 b=GDVAIOjrtXgFxzq3uZDg8rQD0ct/+9J5e8bGi0lgeVcn5C6a0KNvzWvmp7eukWmwXw/i6g99h
 sLGPoRscagRDmBJWoDMGWX6jOH33rlVmLIRspi4B5THCcUdBlhNy+Ef
X-Developer-Key: i=qiang.yu@oss.qualcomm.com; a=ed25519;
 pk=Rr94t+fykoieF1ngg/bXxEfr5KoQxeXPtYxM8fBQTAI=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTA0MDA2NCBTYWx0ZWRfXzgaltUA994NA
 6Y5c4wsJAABgfTVB1olbcG6E03vXLLIgtFhqlcqecRZu76BxqXm8ogxUIF8vDs0L0lB6BAV7UeP
 V+eo9ECxdqMi1VlaNqSGZqnVB173w6pQjRovAYEv7y7DzEFxG3o5Q+0WsQ2psvJUfjGOErUFbbj
 Wy0nPkrX89aOTTt9NS8wC1XzneoekTPHQll4wgs4IQpulPHWlNtwJptr7HDECym/iuQMwfjymjc
 uezwkjEBoQIWOBv9vR/npJNbPgd8jS55Qys3KbI2rgdUgj9aD7Zd9j77RN4J43ZqccF1Lp9530Y
 d+Q8dos+B5kXNN9zd8Ut9goMbOxZjnE34KIoz5gBXV2Mc45Oy+CzRMwrS/OkA6dO1HwosSWpgd5
 IsNY+AqAaMabo1eDSPdcEdjHFGJwVA==
X-Proofpoint-GUID: 2q7CNUvhhLzs_IJeU1NaeKnBzqME6QIO
X-Proofpoint-ORIG-GUID: 2q7CNUvhhLzs_IJeU1NaeKnBzqME6QIO
X-Authority-Analysis: v=2.4 cv=Y4L1cxeN c=1 sm=1 tr=0 ts=6909b1ae cx=c_pps
 a=UNFcQwm+pnOIJct1K4W+Mw==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8 a=VwQbUJbxAAAA:8
 a=prgL3jgsdPShhDvlN2UA:9 a=QEXdDO2ut3YA:10 a=uKXjsCUrEbL0IQVhDsJ9:22
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-03_06,2025-11-03_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 priorityscore=1501 suspectscore=0 phishscore=0 bulkscore=0
 impostorscore=0 spamscore=0 adultscore=0 malwarescore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511040064
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251103_235631_055635_59BB63EE 
X-CRM114-Status: GOOD (  10.33  )
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

From: Prudhvi Yarlagadda <quic_pyarlaga@quicinc.com>

The fifth PCIe instance on Glymur has a Gen5 4-lane PHY. Document it as a
separate compatible.

Signed-off-by: Prudhvi Yarlagadda <quic_pyarlaga@quicinc.com>
Signed-off-by: Wenbin Yao <wenbin.yao@oss.qualcomm.com>
Acked-by: Rob Herring (Arm) <robh@kernel.org>
Signed-off-by: Qiang Yu <qiang.yu@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
index 9f5f9af6f6cd8373358ad7ec8303a62f006c1f95..48bd11410e8c2de664d47262b982473ee24cf09d 100644
--- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
@@ -16,6 +16,7 @@ description:
 properties:
   compatible:
     enum:
+      - qcom,glymur-qmp-gen5x4-pcie-phy
       - qcom,qcs615-qmp-gen3x1-pcie-phy
       - qcom,qcs8300-qmp-gen4x2-pcie-phy
       - qcom,sa8775p-qmp-gen4x2-pcie-phy
@@ -178,6 +179,7 @@ allOf:
         compatible:
           contains:
             enum:
+              - qcom,glymur-qmp-gen5x4-pcie-phy
               - qcom,sa8775p-qmp-gen4x2-pcie-phy
               - qcom,sa8775p-qmp-gen4x4-pcie-phy
               - qcom,sc8280xp-qmp-gen3x1-pcie-phy
@@ -213,6 +215,7 @@ allOf:
         compatible:
           contains:
             enum:
+              - qcom,glymur-qmp-gen5x4-pcie-phy
               - qcom,sm8550-qmp-gen4x2-pcie-phy
               - qcom,sm8650-qmp-gen4x2-pcie-phy
               - qcom,x1e80100-qmp-gen3x2-pcie-phy

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
