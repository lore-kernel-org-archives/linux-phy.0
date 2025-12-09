Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 202A2D3B9AF
	for <linux-phy@archiver.kernel.org>; Tue,  9 Dec 2025 23:09:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ReeVBUlvEWxmqYLPr8sxBO+joXqJr81S9hBIGw0oMIk=; b=mF03OjqKpnfytH
	NPY7wLpO5ijbv8hLqOIn5rMvQIT4WvD+p0JvoAyr/0Z/rk4HkZJTP0EjW5g0X1k17BOeje8v1E29q
	fsUmK4ePxTg7zRezuHuGEXwbrWaVC7G1Q3qx4jNpQ8xl5TtzcGwSYQnDPrtrpjfqxETeDZYrdp5GX
	Lhgc/zCFMQ91rKZUMOLzLmNu00Thbkz7/5GRvxyy6/6UVClme667xDWEdgG225cmkz4M6Sic+yFAn
	4GhMkJtM4Wo8EBGWT7BFO8jmj+d9yYJC9NbRTVCd1WrljcVzO8sKwfDXDaT9HicCNy188j5/CzU2m
	l9mxCaVrut6jAhX2y6PQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vT6qD-0000000EtcF-3Bmq;
	Tue, 09 Dec 2025 23:09:57 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vT6q9-0000000EtZV-1RH4
	for linux-phy@lists.infradead.org;
	Tue, 09 Dec 2025 23:09:54 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5B9MmBgl104135
	for <linux-phy@lists.infradead.org>; Tue, 9 Dec 2025 23:09:53 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	qYJqlwO1uvOnWPq0wZwziCSJV2k+4S4j8CeuNlbAgeM=; b=Ciro1ck0OwjThuzg
	9AD975F5TVfzzkJG4mHW1UBZplR+r3pocNU612PnHwR7zrkhQd42QwFYyVpMeQqd
	01KXIfdcmxuGXkLJFblLla5SiImB0zH4a5VozuG516C6P346kNOtBOyUSqrs2ADR
	8btrVKK70VdVGiJlAvXqDfezr1o9CrGg9+OG1KsKtEZTxrki+uItr8YyttuH4ht9
	CyexMoH+C+ZDLkC1fiOUv8wneHDuytS0uaC7OfkDi/VK9zlaC89I9XFefJazk14Y
	HYxDYu+HICO1JRwfQxnKBJdEwbV0FJm7okc2H/bFgEHoRAnNFRbZgusReTznDHWq
	zRkVSA==
Received: from mail-pg1-f197.google.com (mail-pg1-f197.google.com [209.85.215.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4axesf2y2r-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 09 Dec 2025 23:09:52 +0000 (GMT)
Received: by mail-pg1-f197.google.com with SMTP id 41be03b00d2f7-bdf47c10220so10470351a12.3
        for <linux-phy@lists.infradead.org>; Tue, 09 Dec 2025 15:09:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1765321792; x=1765926592; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=qYJqlwO1uvOnWPq0wZwziCSJV2k+4S4j8CeuNlbAgeM=;
        b=b8vH0xvhDt4uvBfO24VOXOI4gciBSNMwIDYdpeW7n/K59bCJzemYonfH7TplFY1/FZ
         C986eOPx+uBP3987MjPDul+dnrO9qkiySKiSXC668R82yyUrUmAbNw5PZ826V+HueCrw
         BxypQ6p0RXq5TnQVWOQgX+GCqYR21N12OXHT7zJVgNxi1T5NvxF7Hm/+/EA1XQW71MzN
         1I4aphyYRhov4V1OzO341j45NjBfVc9VYtRLYj7t/Jq29TK2lBKpM4+d8GVzTFa4B+yI
         5OY0y+QsQHog70DlEA5FbLPYddsf/E55QwI5i7oIVdVy5FI/aytUYeahy8+UgMPgWfU+
         OiOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765321792; x=1765926592;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=qYJqlwO1uvOnWPq0wZwziCSJV2k+4S4j8CeuNlbAgeM=;
        b=VZ9XYovJd1iDyEuoYk7IsmYAWzLnDkTlWU/l4OyAafyH5ZMoyDUiBaJlZMeABAodJr
         CtmjqL2/7ZOXNA2POIBPuvA6Mo6sHSjghO1xlkPvUkuVusG0d1K9x5FMs1ZKEDlCHCo6
         Qfp44+6Sp0lWg9SE21uiKOFRxlxjQB7zm9/s3XsyzO8YdcawPs3zX5UnsZG3+XUqEhDd
         QNgCrq9Rz1EYn0QsPjZ1BY3/ma3h7P6W8w7xmPEJEM/5FXB0Msxa5gVyOudh5IfJ4n9g
         rpuKRpNDPl1/pvmtqWlP0iIT4RLC/DguxNlSnqrZ6zj7JHVB6OzOTATh/8ejOYiTT/zm
         oy0A==
X-Forwarded-Encrypted: i=1; AJvYcCVB89c/xVWXYNSOCE2AUL81HpUCxZ6zhp11v2/CIyRHKxbzvH2IV2lnnay4nUsgD5+y4PStwbXKQKY=@lists.infradead.org
X-Gm-Message-State: AOJu0YyfuWs3LMxUGFkGmdAQkJu78SZSzvk5lB8TU7Pov2QEm1a9m4Sa
	JI8qKJvGBT6AI/C/KKbyzTSTwoNLj8fEU3jdUSYPb2QJiUQjA5XxlJx3K42Uo8MillIgPUKime/
	/YFDDUGFVB+/liLBJFrwLUl3RTSA5kBf0beY0wEXq15A/WafAugwNuNFXxO3xxaZQpQDD
X-Gm-Gg: ASbGncsxvxeZvoIKLVqJIYtZPe1hOd1C4JvhkSOCDBMx48DHL0KVEtQvFA8Nyqb7CLn
	rJDxfinuVfePVdTHORY8NK0+xd05eSkFZzZdK6/NHqJkRpzWNzQsyfpkE3q3tTC2g/W7RFZ2FFI
	ur80gL9r9thE7Sa1AK1ZD1EC6Z7Lbw0dvkK0WYGKgVfQWhPfW1Dm/iOh+RjLA6zLT7hdUB3Fp1p
	fNUrDHaouhr0KBoFnNhpC2g/5F/n0AMQwY/sGucnv1ZVAKBbPt8qftgmYr6zMVi7fvk7KP/R9au
	BuJdaAGeg2p/BJbQFarWa2iH8wMQ3solH0OlMdMtx98baiM2onAzU5mRu16jHmSxWRcx5cxO4UH
	ixULSzW27bktRa3M1N1aIClFKMTK5ONokmcdNwWP7iZPK1Di2FU1/ZsGS0vFYeQ==
X-Received: by 2002:a05:7022:3844:b0:11e:161:c008 with SMTP id a92af1059eb24-11f296cb6aemr260009c88.26.1765321792133;
        Tue, 09 Dec 2025 15:09:52 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHaKLb2qtxxFn4YweXdB0+CLDDiFZIEeR/bRWCJyv09vWfhRAGjiHiD5Zz1lmE625x+DL2MkA==
X-Received: by 2002:a05:7022:3844:b0:11e:161:c008 with SMTP id a92af1059eb24-11f296cb6aemr259984c88.26.1765321791500;
        Tue, 09 Dec 2025 15:09:51 -0800 (PST)
Received: from hu-wcheng-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-11f283d4811sm3338933c88.11.2025.12.09.15.09.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Dec 2025 15:09:51 -0800 (PST)
From: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
To: krzk+dt@kernel.org, abel.vesa@linaro.org, conor+dt@kernel.org,
        dmitry.baryshkov@oss.qualcomm.com, vkoul@kernel.org, robh@kernel.org
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Wesley Cheng <wesley.cheng@oss.qualcomm.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v8 3/9] dt-bindings: phy: qcom-m31-eusb2: Add Glymur compatible
Date: Tue,  9 Dec 2025 15:09:39 -0800
Message-Id: <20251209-linux-next-12825-v8-3-42133596bda0@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251209-linux-next-12825-v8-0-42133596bda0@oss.qualcomm.com>
References: <20251209-linux-next-12825-v8-0-42133596bda0@oss.qualcomm.com>
MIME-Version: 1.0
X-Proofpoint-ORIG-GUID: N1iK_fsu9UrKuQZGTb6IRncfoHl1-FVk
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjA5MDE4MSBTYWx0ZWRfX92K6rceR6VTk
 LGUpVDsMHyb5dnHGk3fPXos8dit8S2M8DXmUyjhGQGVU+sNSDhxfqUxjk+YgHjQG5s9/MvVRqhz
 WOH8u4xdRzC5Yj/cAuyvZsOvWz2RBSp+Xgi3WlMkHKUaMNVynXG6OtBg4SbQQnZRxDNO/XtaGAf
 Ao3NORVQRCZS3qcWUUnI6AsPzXLQz+l2CIXSk10Yfl/YcM5SjcbK1KQy7eEwrTfI5Mq/xCAKhuC
 O4lJBt7rFYKh5r850zP29BVsSwoaYvtW1ucS5aUFg1h8xGPJfD9wMwGERCnYsGp1nvnP4ios53t
 K46czKRaProGcWAPsSTl+UZSoL5dN0zLMmdnR2tVpSvDZkyKouo275NBSRU0aDiBpzwAQ9iEfsm
 KkwJtGj2+MEsKifTFrXG3TguuXNN5Q==
X-Authority-Analysis: v=2.4 cv=fMc0HJae c=1 sm=1 tr=0 ts=6938ac40 cx=c_pps
 a=rz3CxIlbcmazkYymdCej/Q==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=KKAkSRfTAAAA:8
 a=MNFpXpnAGPlOs8bYK0sA:9 a=QEXdDO2ut3YA:10 a=bFCP_H2QrGi7Okbo017w:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-GUID: N1iK_fsu9UrKuQZGTb6IRncfoHl1-FVk
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-09_05,2025-12-09_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 clxscore=1015 suspectscore=0 adultscore=0 priorityscore=1501
 lowpriorityscore=0 bulkscore=0 malwarescore=0 spamscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512090181
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251209_150953_382220_56E61758 
X-CRM114-Status: GOOD (  10.93  )
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

Add the Glymur compatible to the M31 eUSB2 PHY, and use the SM8750 as
the fallback.

Signed-off-by: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 Documentation/devicetree/bindings/phy/qcom,m31-eusb2-phy.yaml | 9 ++++++---
 1 file changed, 6 insertions(+), 3 deletions(-)

diff --git a/Documentation/devicetree/bindings/phy/qcom,m31-eusb2-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,m31-eusb2-phy.yaml
index c84c62d0e8cb..409803874c97 100644
--- a/Documentation/devicetree/bindings/phy/qcom,m31-eusb2-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,m31-eusb2-phy.yaml
@@ -15,9 +15,12 @@ description:
 
 properties:
   compatible:
-    items:
-      - enum:
-          - qcom,sm8750-m31-eusb2-phy
+    oneOf:
+      - items:
+          - enum:
+              - qcom,glymur-m31-eusb2-phy
+          - const: qcom,sm8750-m31-eusb2-phy
+      - const: qcom,sm8750-m31-eusb2-phy
 
   reg:
     maxItems: 1

-- 
2.34.1

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
