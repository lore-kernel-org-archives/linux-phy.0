Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AB8BFC4451C
	for <linux-phy@archiver.kernel.org>; Tue, 21 Jul 2026 07:35:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vMw3MVwyp/z4WKhoavlY3c9AKZoBaDr24vX/EhWXcfI=; b=v3UCxkL9AFbLGs
	QYg+ro0qBT3Hv8M/BIarvMcsXIFbZj86MTJON/n1eccRwZclr3s9U8EI/QFtekBvv+IeTLMpA02eI
	G8XzDvj/BLNSn++DeIfB/ipzCnOcbH9zfpwHH57b8j0PTO5IZY8JYyGO5eh592VP5dBEHLX4+kX9g
	wrhfCcU6LMjCjhu1cP3d0q5c5vhNhgo0CY2yF8qVTe7sXasmNz9UhdIMovN9e9aPdpjtNKjXNdWsj
	j0pVll3Z8VW9d77XJZVY7/PT11CpuUd3DFvH4Id3KhtkelrWHfCVA5gYAcUTA94YOhADDSum6eiIu
	vZ8tU9DqF1/ati/9MAZw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wm511-00000008fAo-1egt;
	Tue, 21 Jul 2026 07:35:47 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wm50y-00000008f9W-1ji2
	for linux-phy@lists.infradead.org;
	Tue, 21 Jul 2026 07:35:45 +0000
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 66L6W9264151725
	for <linux-phy@lists.infradead.org>; Tue, 21 Jul 2026 07:35:43 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	3VOD5T7OaKyQmxUkKOE7sENrGCh7MXhM26C+rHheFBY=; b=PQ4KXhoOcEHg0eai
	ePHgQ/jaKepkvWObyLXfVNu6Q1dLS8a+t5bHwFhhSWmnkJGpQ+FLqz7/GrhTBfMR
	x9zNRTcUf1RQJGW5oBL9WWopWJuYBqJ0jFUFDdvBsMZY+h2g/ysNsjT9f+QpRr4z
	ipvpH++wtfv+4etSwWh1RkJYxqhu0VMJwRo3D7TBANRVrcAYDo9lM5SPFyvKvPd7
	rLVnBa4LBVuPF93maQRm6u3CEp07sl4kLj63sdTGu+zaTumP3kE9QzxdFFxHfKTY
	ICaipnA1UEXP2EaBwi6/Bgv+f8BeALhVnXnEQW9OF98au/fYwU29+hQfn6CfDtbd
	lJjA1g==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4fhqff355r-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 21 Jul 2026 07:35:43 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-2cefa1a2be6so91127455ad.0
        for <linux-phy@lists.infradead.org>; Tue, 21 Jul 2026 00:35:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1784619342; x=1785224142; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=3VOD5T7OaKyQmxUkKOE7sENrGCh7MXhM26C+rHheFBY=;
        b=hffWDUBqjnlDpyyPnL1HR6DVnvjsRRntkUNaE/XxkDwoTs7h8+fokiaRvpjKkVv2ap
         BjrMAcPX4WXNn3Yfk5O3M4rtqIY1PtmYfd7egan3GYD9TDVKKeIliHze/jeltdNU68Jf
         UOCWnf5/J09ZZvcML64ZnDFV6lpcOPt0GAbe2x8IgeIDCkRKLdVp32z0Hi6E/bZjTffm
         1anS676X31S3GyMihcvrYRdmAW7joPqseoWQOHCC5bmrA32RUkz3iDBOQirYR1VawHvC
         +F7vjCi/gtloPOAn4hT/DI5CTrX1b52e3VGTt+a1Jx3qw+7G8K34hELNsMYefVML5UTE
         9iXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784619342; x=1785224142;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=3VOD5T7OaKyQmxUkKOE7sENrGCh7MXhM26C+rHheFBY=;
        b=iNTSiyZoYHxByS6roRMfK5HGFQMqK4ieIm4obY+R6l9TvzbxAzFj4cFTZr4sfaVKVW
         7HTl7zyeILrFy2d6pzYQnxm3O+fujoq7Kn0tXgXpCxMQiUidDOXR/hMVBwT+DiovUCxR
         dOORxutW8+7abckNa5bkzfynf+9YMhxCIP5pPbNOD5yoRVkEQnHjSOmWPXEJZ9lIz3Ia
         M5z7fQZSD4EKzqLt3wqLfVRbdXyc4ZbJam7oWPxDvBjwuU+vb4PyBsfcKmVqNBwb/Si8
         C0pLgOLP/qrhyjPenN/V0o0pGByaOI4aBxYXWZj2fRJF0JBysCnDTMX79JwU67Dc72i2
         4Oqg==
X-Forwarded-Encrypted: i=1; AHgh+RqJNQQDVTHdILGddt94VZFqRHGmaNamv1MTvQW8OpL8ig/cnfK+NXfPbpZC4MJLButIutOWcVzLQf8=@lists.infradead.org
X-Gm-Message-State: AOJu0Ywy5bZSfWfgB4dj+7Lgo0b0ljMCZkwJ3XJwT+XAud9b4WbOwsn6
	7tEgTuU5uPmw/21Ag4jULpgMwHvdP+UdFDBnx1/fxtck4D3J2oLx0LfTg958DxbKqpoemGPAfBD
	Vqdm0xqMyb7Qe4drqxz4b8n8q8loylqc0NUFxNA6RzoybIR88GkPRwlFGCzJQiPvAHukf
X-Gm-Gg: AfdE7ckiImxluUL5ESQKFJrS+dPko7bfZVoWG1y7Qn34Mlnj66/vRXQcDxa6GikrQTi
	HACFzsWw+m9arGDeIbBLm4NsnsoT8JFem9bQ8fTqA0IafH7razxt+y2FpB6pjyiWkmk3/wsbFh+
	UYKdLji5oFAi67sySJYql+kLdEy8qV0QIx/p9DvOM7EOPvNjefa6NxPNhNk3gxac6J97qnj7LME
	VlASsc1TH/bc5UcxWesRKyLceTFk9eujqkyY8OJMXweC13wSZqciJIYAP8opYLwOH1h2u5pldEK
	ULNy8Ayyo2h/CFKcxzx1Z4w34VdX0S20T9NvcZHGnBtikAxnNKa6xMqdYkoKpan+AkR1EvfwkY+
	twf8y97x9hJJFf6CkwKo9rMoh1P43VKejooxz06He+P1xkbkcy2LhMiFbgC84cDKJYKZkdog2JH
	i72AHi/3ZGLwcAcCv9YAXW+PLJZ3FktA==
X-Received: by 2002:a05:6a20:e292:b0:3c3:6cfb:4ed7 with SMTP id adf61e73a8af0-3c3ad7ec516mr18246094637.30.1784619342345;
        Tue, 21 Jul 2026 00:35:42 -0700 (PDT)
X-Received: by 2002:a05:6a20:e292:b0:3c3:6cfb:4ed7 with SMTP id adf61e73a8af0-3c3ad7ec516mr18246062637.30.1784619341921;
        Tue, 21 Jul 2026 00:35:41 -0700 (PDT)
Received: from hu-varada-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-3142a210571sm45224271eec.31.2026.07.21.00.35.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 21 Jul 2026 00:35:41 -0700 (PDT)
From: Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>
Date: Tue, 21 Jul 2026 13:05:26 +0530
Subject: [PATCH v5 1/2] dt-bindings: phy: qcom,ipq8074-qmp-pcie: Document
 the ipq5210 QMP PCIe PHY
MIME-Version: 1.0
Message-Id: <20260721-pcie-phy-v5-1-8d403ef7e780@oss.qualcomm.com>
References: <20260721-pcie-phy-v5-0-8d403ef7e780@oss.qualcomm.com>
In-Reply-To: <20260721-pcie-phy-v5-0-8d403ef7e780@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Proofpoint-Spam-Info: AW1haW4tMjYwNzIxMDA3OCBTYWx0ZWRfXycNqSU0fmI7a
 7j7xjZL+ah1rup7Ysu2kPMzmPe7YzKmZ5Yva4vL6pGEXD0N7JVcb6HIiFvndq4Gsy3TbJwXYv8Y
 oSSCbQDCz0pDJ3CV2h+iZjSfJIhUaHA=
X-Proofpoint-GUID: 4Vu1Xkp7wMGQa2dPODIsTDKfWjQuBy8W
X-Authority-Analysis: v=2.4 cv=FJErAeos c=1 sm=1 tr=0 ts=6a5f214f cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=IkcTkHD0fZMA:10 a=RAioF0-LDSMA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_glEPmIy2e8OvE2BGh3C:22
 a=EUspDBNiAAAA:8 a=EF49ANZLUTmcXe5zpi4A:9 a=QEXdDO2ut3YA:10
 a=1OuFwYUASf3TG4hYMiVC:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzIxMDA3OCBTYWx0ZWRfX05y4rvlM6Lh4
 g6dDP73qGe1Lu9ww9EifT4iSf5Rvff3g4zmf0qDXDVKWdE49d2S7Sps8cXA3bpP7pzLoxLGTCfG
 RVPl1cwbm6LU8XHpKsCUZ7hcmLiG2hAz3ZKMd9dYfxKTX6R+uiLQhmHW1swe+cWB5WGqmZyrxvA
 yuTGPuPq/2OYMySocFGWmY86RNe5P8FPjpbhs1oE7AOxZXJxpPHxx6KeSQLYAEcMvhmdyW4ZBsR
 LCe+rgqXwmd4bWm8yvAtEKPeT1+pV9Q9+XThK28ZE6oRsQ3fpTfvE+tPCgUH7wkd7+WGr5N56b/
 XMOYcgifK2gKnxf682C0tNg7unKt1UERlc2UIiKd+uQN8/WV8WI77YmSOwI0R6aNtGL+FF0sZuV
 K23HUOIRdGQtlURdZ/Az2fpPbZc4PK2BCZV7ca2gvqzaKT5gO+lfscdrlQAXw5L9MO6ocy8tBUQ
 Fa0y6AuSbB0rR5ubuJw==
X-Proofpoint-ORIG-GUID: 4Vu1Xkp7wMGQa2dPODIsTDKfWjQuBy8W
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-07-20_06,2026-07-20_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 phishscore=0 spamscore=0 suspectscore=0 bulkscore=0
 clxscore=1015 malwarescore=0 priorityscore=1501 adultscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2607210078
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260721_003544_594568_A57E8813 
X-CRM114-Status: GOOD (  10.89  )
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

The ipq5210 has one dual lane and one single lane PCIe phy.

The dual lane phy is similar to the dual lane phy present in ipq9574. Hence
qcom,ipq5210-qmp-gen3x2-pcie-phy is documented with ipq9574's dual lane phy
as fallback compatible.

The single lane phy (qcom,ipq5210-qmp-gen3x1-pcie-phy) is documented as
specific compatible as it uses a combination of its own initialization
tables and some of the existing tables.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Signed-off-by: Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/phy/qcom,ipq8074-qmp-pcie-phy.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,ipq8074-qmp-pcie-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,ipq8074-qmp-pcie-phy.yaml
index f60804687412..fc155ad5fa6d 100644
--- a/Documentation/devicetree/bindings/phy/qcom,ipq8074-qmp-pcie-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,ipq8074-qmp-pcie-phy.yaml
@@ -17,6 +17,7 @@ properties:
   compatible:
     oneOf:
       - enum:
+          - qcom,ipq5210-qmp-gen3x1-pcie-phy
           - qcom,ipq6018-qmp-pcie-phy
           - qcom,ipq8074-qmp-gen3-pcie-phy
           - qcom,ipq8074-qmp-pcie-phy
@@ -28,6 +29,7 @@ properties:
           - const: qcom,ipq9574-qmp-gen3x1-pcie-phy
       - items:
           - enum:
+              - qcom,ipq5210-qmp-gen3x2-pcie-phy
               - qcom,ipq5424-qmp-gen3x2-pcie-phy
           - const: qcom,ipq9574-qmp-gen3x2-pcie-phy
 

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
