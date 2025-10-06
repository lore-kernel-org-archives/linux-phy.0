Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 090EECCA470
	for <linux-phy@archiver.kernel.org>; Mon,  6 Oct 2025 22:20:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aBh39l7z4L9tqK0a6aeXbq1Alssq7mqIHe+TO6Ur8dw=; b=tzqEQrFqrAftzn
	6FxoW1jFd1mQ9FjXv8gUkd/KLnAup3BbGYJ+LZ/Q+3qDGF9ZddR/i+MAvY5kkG31qyQaFEBcraLFZ
	NA582ivgOXyg7kBS0XPHFdP1bz1rejxHMzrQg/mHlGcpXk/8sR5E4PKBHnr8XYICI7vYmH3icLcF7
	oklt6DPYwhS2IgDXoKr1YfMrQiSBJQRAg3skex/Dkt3eELn/OUgOb3M+XZkhHoRwjlgJud5vcPFUg
	PjYbuJQgv5Er7iF4Kl2woTox8fzwQyAKEjKVtgtC8Ztbijcj/eVPzZ0qC/9kbA2KoU/qESe/mqf1Q
	t317JA3qH4P/anyUUlKw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v5tZ8-00000000uVT-3BrE;
	Mon, 06 Oct 2025 22:20:22 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v5tZ6-00000000uSj-1Y14
	for linux-phy@lists.infradead.org;
	Mon, 06 Oct 2025 22:20:21 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 596EB5CQ013071
	for <linux-phy@lists.infradead.org>; Mon, 6 Oct 2025 22:20:19 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=g6hGIMMv3wb
	uPomMpx8H8k/GiKEKmx7JPEl9gfJaIng=; b=ICoNp2R4zS26XwjqroKXK5XltGH
	CswvdsstUgTIoEjd12evPOYEDG/cUADcf/2e+dAvOIGX64SEGFu8+zagkdQsBYHE
	tTrLiGsjCDnMoPDr64FNK00D7jhudTTraCimJSZpOZyCrC+xAgZKjv7XSoxW2YsW
	mLrVwoLx/pVHZi1Fioa4mrxDlkrsUCjFPzR762PjZ3o4foM6n6z/7ExBPIHJ8+y8
	TZPPEHGYXUZBg9tMrAiwGKF0t1ZBdQtK/dRbaI+uZSOsz3trSFtZ9uT7Z/XS+kcz
	UucLm2y1evG37Rz4Y+4a/jDGLT4apOeEMbTvVj6cX9LZVOHbzftp/b4Tp2A==
Received: from mail-pf1-f200.google.com (mail-pf1-f200.google.com [209.85.210.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49juy6w92c-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 06 Oct 2025 22:20:19 +0000 (GMT)
Received: by mail-pf1-f200.google.com with SMTP id d2e1a72fcca58-7810912fc31so5034887b3a.3
        for <linux-phy@lists.infradead.org>; Mon, 06 Oct 2025 15:20:19 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759789212; x=1760394012;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=g6hGIMMv3wbuPomMpx8H8k/GiKEKmx7JPEl9gfJaIng=;
        b=dI6t8cycs+bUX2U8WQs/l0xVMjx6j7LS5uGHCPcRG/bbVB1pmuodsEuJUSbh7SDAmd
         uRB9tgGQfBrsJ3P35LL5Y2P1xspG0qQwJWdYvV7CAvW2HroYuQFzIOeQXrr2Da5vEnX2
         drScPJqbAzBXz74+oWAgjcRZ7L+pctEINUEBNhcHo9/ceFXRD6pHiuHodkRDNQZr7cj8
         PEFLho/T2KvAgGmt6c+zRwd5QiXecxB5LpbMGYOpsic3DawTJeCC6BMkbsUITK9t+7HQ
         4sTaMOFTqAHNPnhVkD97vixvlxaSrQaVxtnEztXNhZCxASnXZg6+uqIUJrzEH7zhbX2w
         LnTg==
X-Forwarded-Encrypted: i=1; AJvYcCVxP7aE38FK2CdzLdp1Qrt9LixX3X+OhHBPe1jV8WptacneDq03Y8K5iuU+yhKY25qu1m06oGO0kW8=@lists.infradead.org
X-Gm-Message-State: AOJu0Yxyyu467zoWYnOgiueFVl7FrdKY5RJkINTYTFaGQG3kEFDFaNZ3
	sDBjt5TMiq1nOAWEI25N5HYTTk82b6KG7gr7OCAOtkD80TnPAXgxoBYu2bwUFxap44BmmdNNPkP
	9npOACS+wMu/K0fVOcTNHEszrHfssBWsGlTzo5N3oSD3Ghl5Mp4ryb42Y3tz8Zaj0rl3O
X-Gm-Gg: ASbGnct7pS+n6aw98dtQ5jDHSD8m/ySHH7D8rs+03sjt4wtPB7S6q+VCu4eFleIGxLU
	TqxwjKyUgzbDJfKB0YguW1dhPPJ0gRfft/Up4Q0+rcIO9gFuuzYM+TuVEe9t80GCXcsVHRbC5ll
	Nhw86USglKEMbeq+rbF4+3Jj7baHCyUrvR8xLr6VQgFmfHVc9jFfzO+k9UttrTBxOmBrC3PmIPU
	fJA2J8nqjSVsfsndoa2OtooYNwGUEX7gziADLFsi6tE+5h5LYz5O4+uQZtQh+BtpTgQoGQuxcXf
	NwX2G3kdczJylbgj2hXBZfWThnCvva1wPJQNMgt/HTT//TknTsfSlDBOG9y6dy2aaDF27becFLv
	3ON2DoqhA1rPfkhzdnGFUqA==
X-Received: by 2002:a05:6a00:3e1b:b0:792:574d:b1d with SMTP id d2e1a72fcca58-792575c7065mr731267b3a.14.1759789212557;
        Mon, 06 Oct 2025 15:20:12 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFwVIZrtgir0jsxXPAjMTVqs04hKUgCAEt4yAQwrK5Enm7r/n2TXNbFI5l+MOzSFJexLm8MIQ==
X-Received: by 2002:a05:6a00:3e1b:b0:792:574d:b1d with SMTP id d2e1a72fcca58-792575c7065mr731243b3a.14.1759789212105;
        Mon, 06 Oct 2025 15:20:12 -0700 (PDT)
Received: from hu-wcheng-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-78b01fb281bsm13734968b3a.37.2025.10.06.15.20.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Oct 2025 15:20:11 -0700 (PDT)
From: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
To: krzk+dt@kernel.org, conor+dt@kernel.org, konrad.dybcio@oss.qualcomm.com,
        dmitry.baryshkov@oss.qualcomm.com, kishon@kernel.org, vkoul@kernel.org,
        gregkh@linuxfoundation.org, robh@kernel.org
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-usb@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Wesley Cheng <wesley.cheng@oss.qualcomm.com>
Subject: [PATCH v5 04/10] dt-bindings: usb: qcom,snps-dwc3: Add Glymur compatible
Date: Mon,  6 Oct 2025 15:19:56 -0700
Message-Id: <20251006222002.2182777-5-wesley.cheng@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251006222002.2182777-1-wesley.cheng@oss.qualcomm.com>
References: <20251006222002.2182777-1-wesley.cheng@oss.qualcomm.com>
MIME-Version: 1.0
X-Authority-Analysis: v=2.4 cv=IrITsb/g c=1 sm=1 tr=0 ts=68e440a3 cx=c_pps
 a=mDZGXZTwRPZaeRUbqKGCBw==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=x6icFKpwvdMA:10 a=EUspDBNiAAAA:8 a=JYTQWVwI1XGucIoeipMA:9
 a=zc0IvFSfCIW2DFIPzwfm:22
X-Proofpoint-GUID: -RMQ_blkhqz7nY5IXFm0QkHbRV3kMyq-
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDA0MDAyOSBTYWx0ZWRfX5s98bDzJj5mk
 omLsgnOGeBNf8Yvptfpe1gfNW5en8IwbYg5BDCykKjjuXn3MxU0086Bi4ny2yt7CkGnx1aAWVKM
 ru1A6695mssj6w6c+ukdlSg0rkosIvsCe6luYzIVGF9GObP1Ofqg1XabEh7yxHwa4qwY0oAScYl
 9qylgPjnzNfaojAZ4kRMAlfUL53GSCRGx/iV9uCvRV0nEl61AJIXsWbBwYWivFW9d/sNc3f+XSL
 tqsjaTPRzSHdYEdWNvP0s7GeMzcHMcytOjSYF/jGZw6LEbpwcPp1wFRghesoUUEQNeSZqRU7xOG
 9HERhts9Ij44HeJbsAmQBD47xJ+fjtrkewnALsaaaMrEA04FtJBvVujV7C93yS3CTEXWnZ185Dd
 AaUc1djerZu3ZJO64x5HRBH+96pxvw==
X-Proofpoint-ORIG-GUID: -RMQ_blkhqz7nY5IXFm0QkHbRV3kMyq-
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-06_06,2025-10-06_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 priorityscore=1501 bulkscore=0 clxscore=1015 malwarescore=0
 spamscore=0 phishscore=0 impostorscore=0 lowpriorityscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2509150000 definitions=main-2510040029
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251006_152020_531733_7C8CAFD9 
X-CRM114-Status: UNSURE (   9.55  )
X-CRM114-Notice: Please train this message.
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

Introduce the compatible definition for Glymur QCOM SNPS DWC3.

Signed-off-by: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
---
 .../bindings/usb/qcom,snps-dwc3.yaml          | 26 +++++++++++++++++++
 1 file changed, 26 insertions(+)

diff --git a/Documentation/devicetree/bindings/usb/qcom,snps-dwc3.yaml b/Documentation/devicetree/bindings/usb/qcom,snps-dwc3.yaml
index dfd084ed9024..eaa0067ee313 100644
--- a/Documentation/devicetree/bindings/usb/qcom,snps-dwc3.yaml
+++ b/Documentation/devicetree/bindings/usb/qcom,snps-dwc3.yaml
@@ -24,6 +24,8 @@ properties:
   compatible:
     items:
       - enum:
+          - qcom,glymur-dwc3
+          - qcom,glymur-dwc3-mp
           - qcom,ipq4019-dwc3
           - qcom,ipq5018-dwc3
           - qcom,ipq5332-dwc3
@@ -386,6 +388,28 @@ allOf:
             - const: mock_utmi
             - const: xo
 
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - qcom,glymur-dwc3
+              - qcom,glymur-dwc3-mp
+
+    then:
+      properties:
+        clocks:
+          maxItems: 7
+        clock-names:
+          items:
+            - const: cfg_noc
+            - const: core
+            - const: iface
+            - const: sleep
+            - const: mock_utmi
+            - const: noc_aggr_north
+            - const: noc_aggr_south
+
   - if:
       properties:
         compatible:
@@ -455,6 +479,7 @@ allOf:
         compatible:
           contains:
             enum:
+              - qcom,glymur-dwc3
               - qcom,milos-dwc3
               - qcom,x1e80100-dwc3
     then:
@@ -518,6 +543,7 @@ allOf:
         compatible:
           contains:
             enum:
+              - qcom,glymur-dwc3-mp
               - qcom,sc8180x-dwc3-mp
               - qcom,x1e80100-dwc3-mp
     then:

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
