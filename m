Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C7BD9FF8867
	for <linux-phy@archiver.kernel.org>; Mon, 27 Apr 2026 21:42:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RsRYHRna8c/UCe8vjLkz9Imn5Z6dwSthbada0ojs+8U=; b=2oCWLUYKpgHSEJ
	NSMdi18CdO6VTYUC7AzY+MsigGat29ChSOIfEBzdTZyp0JTTePhgIqgugndKhivCkKQXdoDtbbQug
	oXqEkX0qdzP3aHP+vwAUeimif+Uaua0W6+GvsqzWwTTyvnf8pR4ZWZIcOkBukuqJdUhD1rOQwYbJp
	xD5yr0Dq9aH4c7YIIVcoiMIIz2lQchFkGwlXstBtWrd7+BgpXwjjzoUWn3fkzclMN1mh+yGBeVEy6
	aUh7RTeA0PNJZbF7RUqGV+sikJX420l1Pk460+PYL3WawHcb1mi46HUk3xHGdhzIrbPCTd0k+pQpH
	FrEsfYmhGZztN8nKLYDw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wHTj4-00000000BuM-2Lx3;
	Mon, 27 Apr 2026 21:42:46 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wHTj2-00000000Bse-1COO
	for linux-phy@lists.infradead.org;
	Mon, 27 Apr 2026 21:42:45 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 63RDte5v241086
	for <linux-phy@lists.infradead.org>; Mon, 27 Apr 2026 21:42:43 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=EkH62hBfkTl
	pUoyRaZs3w4Fu8ixJncnkuN92AWiCoMo=; b=DvfSHd73+kAJ0ftwmb6AtqLiKZl
	/OZsa6Zcf8dspJzo8pFLJ0U5Hfm06LdhFRbks506p9SOAP5GTmjuRq2ipIwaw8b8
	1X/nt1tUNsgtjLUQzbhFR8dDiBZtAdY/BNji647aFuis6PdLwxKQwWzTt+1L+Y8C
	9JMfdn10as15aPT41HY+AfLBYv+u7g/pFz25r+W8HmdSf1mI2hwA+Q+xyt39FUpJ
	4fTSknMLwz9/LIm6YLcLViHiKV2o/kpAq565evuI4s9oi8XB0QvudS3XYnnx+CU9
	nzJtVZOMOHEkY/gs/jwrAhpKtvQiUnY4WC+80ST07/LoajcmTmvktJuDczw==
Received: from mail-dy1-f198.google.com (mail-dy1-f198.google.com [74.125.82.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4dt946sps0-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 27 Apr 2026 21:42:43 +0000 (GMT)
Received: by mail-dy1-f198.google.com with SMTP id 5a478bee46e88-2ba9a744f7dso13896213eec.0
        for <linux-phy@lists.infradead.org>; Mon, 27 Apr 2026 14:42:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1777326162; x=1777930962; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=EkH62hBfkTlpUoyRaZs3w4Fu8ixJncnkuN92AWiCoMo=;
        b=SQa9jHdBgeNZtmnw3wq1QSk8vZ/T47h5sOV0Tx0xhS+incEh1MD4cPVTfbA3rUXOIH
         Zo4kZir+oq/Fq1wKRbtbzZVBVViEd0xnLJ9cNFzMYGb9Y967Dj2z5EqJ9PsSvnbXUCGw
         cOLOHfWM/DUcaBKKG8UAYQtkhDju/dymrqW8xpgeCmjMv22CchUL8HqXRB7J2shQbqNZ
         3TX4E2mJbYr5XB56t6XGJa9gtYChrLYVCDRmAfiA1HVbh5kUMn0SYtGLKkk4GfdxHwEI
         RykFUHqai308kvxt4VmB+TlnMBhd5KGj0/idXI+rpTW7hlRbz1YJwwc7p+bwwYzt8f7L
         YEoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1777326162; x=1777930962;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=EkH62hBfkTlpUoyRaZs3w4Fu8ixJncnkuN92AWiCoMo=;
        b=ft9fu8giB1JA7o/SUYSLEPYNoN9Ji5vONCLU/IrHJhigBAPpmSl1pya/VY0941fxW8
         6Exm4FK6WAB+151dXGyA10QGNdDVQ+GK0TOY3EtxJJp4/uIV0rFdq7esS0TsAaLEjYHQ
         Q5k/p1S1nPoH4JmCxiILCI0RHIzAYIUCB3hHnmNXWguWLv6I8FggTGI378Emk8+oEGw8
         DpRbwcOxu38O3HFeqwheLe7flo5/fovImX4az5Hk7RvE+850rMagyvNlSByq66t8kYIF
         3bQ68nVVB/8LpqwMMBe9c7tiMgRqVpM5/V+8z0ZcNJtj3YDNbpPtckqwreNNe9t7XkxL
         HkzA==
X-Forwarded-Encrypted: i=1; AFNElJ/MFIaTKBvbFkNGMGQzm2YUVdO7GSwd5FynOYa7staBJXds67ukUg+UxzLnLTLhcnR3/L/+qDVgmWU=@lists.infradead.org
X-Gm-Message-State: AOJu0YxI8Ezn6mByhULX4HH5Sm1DRWU/9opot1MQtEax0KwbfjatumQ7
	kLCRLO+dR93MME7O/YNcfGjbzaBH/OXZzVcDTCSYI9cp7ADYziNptUndd/8OwkTg4j9qiF84z/v
	0wWwkRcV24Jl6Tqf4pGL93j6Dwrsw4J6DDyYHC8X7D86mxiewD8oWcMa5MvqE305w0TtD
X-Gm-Gg: AeBDiesGYT8aEEnZPD/Qh2zVKuqV1C4SKIGQB9voEZB+usYIPGtGx6HnvhdaGwD2Nf2
	66xTb13tQtUjppiyk2rmMXNg7JLQ95BLEjGTYK8Nfc94IPRtuS3sgvSmQxT06uNm65xV5GWF9tY
	n6B5Ij+CfdBSiOv5tsapf7L2T7ohPuyt3SEPqW4OnZb7ALyBgKWDp5zFXqszMmyjlsRkFTAuh8R
	76GKUVSKuiL8+Z4dDbWa9Tcsiq+Vsog/PuRrUkU9kXZH+FpGjRUNHyZj51FJPgQvHqELza+/ktL
	dHxp9Nanl1yeFx+jOMc2yIxNpzqCuWBKw28PQOowtrVE9gGB2ehPA3jc3OReN3ua/WYaE2Pwao+
	Tt6npu+JdA38dBmznN873+/gu6o5RvZUWIv8q/zVjUyHEj3Lv77i/UbHuB3o86tf1/gCY3F5z+b
	A8ksTvPPw71g==
X-Received: by 2002:a05:7022:4188:b0:12d:b2ca:a9ef with SMTP id a92af1059eb24-12ddd987d35mr379656c88.17.1777326162250;
        Mon, 27 Apr 2026 14:42:42 -0700 (PDT)
X-Received: by 2002:a05:7022:4188:b0:12d:b2ca:a9ef with SMTP id a92af1059eb24-12ddd987d35mr379630c88.17.1777326161730;
        Mon, 27 Apr 2026 14:42:41 -0700 (PDT)
Received: from hu-rraheja-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-12ddd927bbbsm653119c88.2.2026.04.27.14.42.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Apr 2026 14:42:40 -0700 (PDT)
From: Ronak Raheja <ronak.raheja@oss.qualcomm.com>
To: vkoul@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, robh@kernel.org,
        neil.armstrong@linaro.org, gregkh@linuxfoundation.org
Cc: dmitry.baryshkov@oss.qualcomm.com, konrad.dybcio@oss.qualcomm.com,
        abel.vesa@oss.qualcomm.com, wesley.cheng@oss.qualcomm.com,
        krzysztof.kozlowski@oss.qualcomm.com, ronak.raheja@oss.qualcomm.com,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-usb@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: [PATCH 3/4] dt-bindings: usb: qcom,snps-dwc3: Add Hawi compatible
Date: Mon, 27 Apr 2026 14:42:16 -0700
Message-Id: <20260427214217.2735240-4-ronak.raheja@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260427214217.2735240-1-ronak.raheja@oss.qualcomm.com>
References: <20260427214217.2735240-1-ronak.raheja@oss.qualcomm.com>
MIME-Version: 1.0
X-Authority-Analysis: v=2.4 cv=YcWNIQRf c=1 sm=1 tr=0 ts=69efd853 cx=c_pps
 a=wEP8DlPgTf/vqF+yE6f9lg==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=A5OVakUREuEA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=3WHJM1ZQz_JShphwDgj5:22 a=EUspDBNiAAAA:8
 a=6lSwUGAo5LeF7p0M46YA:9 a=bBxd6f-gb0O0v-kibOvt:22
X-Proofpoint-GUID: 7itcMHOIO8VD0Mc9UajB1PifP94i0JAJ
X-Proofpoint-ORIG-GUID: 7itcMHOIO8VD0Mc9UajB1PifP94i0JAJ
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNDI3MDIzMCBTYWx0ZWRfX0CVvA7iRqGEz
 www5JjVrkBAUeUvb+5p2sjXd0RvLdJOtTtTMKOryoq01rdXUdZvl/rFWK0Pr9PYadM7baHXYKs3
 e0fGgLbALb67TYpnzxZe2J8SGrF+3YglZ9C1bGJYtGm74PgWkkTnFfaDITLIRAmX35jHfkx3QRk
 s0WnZypMmi0QhYnNPUeOj8LD1l+99Va7V4R68quE/plj1d+nMI8OHla7I0LqpgiL+ilR9bgp1P9
 /uyoapGa3urcvHXMX9VkFO/hrZ6Vei4rUeQdKajNOAVhwe8z9aKlqz+fh8ZUp1/a4ndmXyE7pEM
 2nPSM5Mlxrh6U375tLEB9cno7iyJy1EVg3dvVYQ0jkGMgK9a2Rr+Dbwf41Pt6sOm4X9F7GAXl+5
 KF8KnNesjN4kcL6+zZk1OPhCHEK5j1b1F4V0R77Hn6lMBCc4LXiABmKbcnhBd4AiXHFXsXZpOkT
 DbZu8P5mwQ76FDY8dkA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-04-27_04,2026-04-21_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 bulkscore=0 clxscore=1015 spamscore=0 malwarescore=0
 adultscore=0 impostorscore=0 phishscore=0 lowpriorityscore=0
 priorityscore=1501 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2604200000
 definitions=main-2604270230
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260427_144244_440542_D23BD111 
X-CRM114-Status: GOOD (  10.68  )
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

Document the Synopsys DWC3 USB controller found on the Hawi platform.

Signed-off-by: Ronak Raheja <ronak.raheja@oss.qualcomm.com>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/usb/qcom,snps-dwc3.yaml | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/usb/qcom,snps-dwc3.yaml b/Documentation/devicetree/bindings/usb/qcom,snps-dwc3.yaml
index 8201656b41ed..2d10994f7b44 100644
--- a/Documentation/devicetree/bindings/usb/qcom,snps-dwc3.yaml
+++ b/Documentation/devicetree/bindings/usb/qcom,snps-dwc3.yaml
@@ -27,6 +27,7 @@ properties:
           - qcom,eliza-dwc3
           - qcom,glymur-dwc3
           - qcom,glymur-dwc3-mp
+          - qcom,hawi-dwc3
           - qcom,ipq4019-dwc3
           - qcom,ipq5018-dwc3
           - qcom,ipq5332-dwc3
@@ -203,6 +204,7 @@ allOf:
         compatible:
           contains:
             enum:
+              - qcom,hawi-dwc3
               - qcom,ipq5424-dwc3
               - qcom,ipq9574-dwc3
               - qcom,kaanapali-dwc3
@@ -540,6 +542,7 @@ allOf:
           contains:
             enum:
               - qcom,eliza-dwc3
+              - qcom,hawi-dwc3
               - qcom,ipq4019-dwc3
               - qcom,ipq8064-dwc3
               - qcom,kaanapali-dwc3
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
