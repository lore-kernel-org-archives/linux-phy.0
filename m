Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7BC62C87FCB
	for <linux-phy@archiver.kernel.org>; Sat,  9 Aug 2025 10:00:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BLfu2LEkCJkVbY83ajhqywWRTX+QvX4mLufJKAUmRig=; b=ROXwAwHg7EBzz3
	DjnSKnz2Ik85P7XquBWr/wC4SsmPaOKuv8QcmspuDf2KAm60vyGWSB22bQjgHIB60yniu8tpNmiaO
	hnmbzt0oh0IuAbxjL4ZLsPezrXXQT/uKmeIRe+SjZIIc1ypT+g2U4n20bLHVwL/+24pzFaE+ryigZ
	8KSE4ndXCo1w8ULW2eIOi2Z0lEaym3IsI3wA3zDCEeAtqGQgwoY3DDEiVea1cAClv+W4QHvdD+29o
	UiV1j6XCFPNOHPyLsExlGfdYHtgr5HY8GzpWuXUHmjlqguB7KtFzXKbefWPCCJbT5MdFPNjr5lOsA
	d7wFt1o1DjFbGJMeDQCg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ukgMs-00000004LGO-13Vc;
	Sat, 09 Aug 2025 10:00:02 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ukgMq-00000004LEx-12Vt
	for linux-phy@lists.infradead.org;
	Sat, 09 Aug 2025 10:00:01 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57997N2n017704
	for <linux-phy@lists.infradead.org>; Sat, 9 Aug 2025 09:59:59 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	o84ehtqBVBZmVKt19QIWtMIRk8uHsOjkSCs7whgckXU=; b=jdFO7fwKcoFS04Uh
	l1TAi96gPHVqHpox9gHpMTIt+lV+9g9oeEEt5UCZabhIYSaP1DNIlwjqcodAXRDc
	ad5iS+khF6Qo/sTtLQFV1Rws9s9WmHrifedCdOWMQPuEPCgMKRPx71t5Apu07+wE
	GBf5P0mhjdxSn2JG4/avFRVFWWRL+2lq0RU7X3HKgUMowjRE5Y7+lSEenj/rGPcP
	1jpITAes9wMbEHIOTSQ0PHksD0xTolo0GPQIjGf0ZNTuuGlieM8UoaIDZqSKqYlY
	3uFi6I4oArVNrYmSsAEYtkW4DRUKn4eDOmrKt5XOypoB98OZS6P9j2n5TPCXJO8Q
	ptZzUw==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48dxj40e8f-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Sat, 09 Aug 2025 09:59:59 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-23ffd934201so23065405ad.3
        for <linux-phy@lists.infradead.org>; Sat, 09 Aug 2025 02:59:59 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754733599; x=1755338399;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=o84ehtqBVBZmVKt19QIWtMIRk8uHsOjkSCs7whgckXU=;
        b=M3eIeROtvcSCn1PWCwE2aON+P8FNfhnHHmNGi0JgqZVdmoVsnSECnlRNM/nbxJqOGY
         6Hm4bzGcjtiAhHzW+wzDVGqUDDdjXCz16ee7YfJ37fowUaeJ7wtBMyQGm4Y9zARJaklV
         x5PI4ZPZu5b+evD4X40U3RpRCVyrpMPEnlDU9p4s9iXxYj5g1s3u5YkazYCyleu3WVkE
         ijzpzZC9Is5dvtwCKfy1pUxgD9NLDeyWXMAF8ultDGUYAn0sAOH5oZVuefgtEaf3C530
         6GlBjY5MAVBer7Vm0lhR91NOLEqnQ22zs8NJQNYdpvDl1HxY2qr+2FG+1X6xYLmtnXiC
         IDQw==
X-Forwarded-Encrypted: i=1; AJvYcCX8kOa/PLNnOdf8oA16L1Mpv8hzy1DnFhjOoe7e/VttkiUjkxUVk5ejOsP9z3hG/jhNfbTqeMHsWJs=@lists.infradead.org
X-Gm-Message-State: AOJu0YxlAVzVPwsfB0d3fLWqAliRSlHMFwUjKdVSLOYxepeJHd3bFDK1
	MSJGh7tKXpY9Rnfr32eAoIk8fLnAT+a+HUfnOsIo6AOs3htaTPPCzs3k82CVJxnDXvgJpttr0hU
	AiGLVWx6CPnlZrvyfpVQgVjgi7oezyyyI/cATYvr9eGhvlXjeQpwnACsz+Pg5DG7ifhCh
X-Gm-Gg: ASbGncv4lW/3goHgL5WaUeMrmyq8/h2Ya4vw/urr/uI9Tn1Jkn8r6ezRAYHe7EdmNE/
	Z14YLbswqbHwtiTHSZAiAfl9RBYRY9xNJCmTB/qcevWY9Zxl6BHzVZsNoDa8gUKglwIOIBv4kxU
	QlJZ/BhQxIxe2biMZ+wHQpuQI1WKSp+fhhtTl9pELxIO93gdIJHd9/qBhwl2xMuK8DKIq7vRZPT
	gq0VxopOzGL8PSrIRVvmd9L361YUrhlLr/sRJSmnt1cfqZ8Y1XX/tp+8geF/kBsCnmdkmUH3cBf
	yQyiD8gevDBsrB6eQCoiDbsly8MDIrUnG09ZHSwd1IJvt+M8AXJIBiyqE1bTckLTsB1C2xWDqCw
	=
X-Received: by 2002:a17:903:40cc:b0:240:3f0d:f470 with SMTP id d9443c01a7336-242c20440bemr81621035ad.20.1754733598898;
        Sat, 09 Aug 2025 02:59:58 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFI8IHqimLHr7wh2wQyI+Q0XVDvkBIylGOeXLKFZACnOrlfoFT+ysYaqiBD387svYbfkd+bJg==
X-Received: by 2002:a17:903:40cc:b0:240:3f0d:f470 with SMTP id d9443c01a7336-242c20440bemr81620735ad.20.1754733598457;
        Sat, 09 Aug 2025 02:59:58 -0700 (PDT)
Received: from hu-krichai-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-241e899b783sm225962845ad.133.2025.08.09.02.59.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 09 Aug 2025 02:59:58 -0700 (PDT)
From: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
Date: Sat, 09 Aug 2025 15:29:18 +0530
Subject: [PATCH 3/4] dt-bindings: PCI: qcom,pcie-sm8550: Add SM8750
 compatible
MIME-Version: 1.0
Message-Id: <20250809-pakala-v1-3-abf1c416dbaa@oss.qualcomm.com>
References: <20250809-pakala-v1-0-abf1c416dbaa@oss.qualcomm.com>
In-Reply-To: <20250809-pakala-v1-0-abf1c416dbaa@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Bjorn Helgaas <bhelgaas@google.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-pci@vger.kernel.org, quic_vbadigan@quicinc.com,
        quic_mrana@quicinc.com,
        Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1754733575; l=894;
 i=krishna.chundru@oss.qualcomm.com; s=20230907; h=from:subject:message-id;
 bh=D98uYM9Z60IMUSi6ICuga1Gz5L3qO2+oE/TUIJZiRHI=;
 b=gwn0lQcGmzLXQ2MXzzYuJm+/nUNsSuse+BknbwSa3jTeXGEUH9LwXwJokOA4GGTXYiB0fuw4P
 GdXwSPgi5sMCf+G5eNlCvWOacfyXIUz8Jdwc3r/BLfu1OH6ZQTtDlg6
X-Developer-Key: i=krishna.chundru@oss.qualcomm.com; a=ed25519;
 pk=10CL2pdAKFyzyOHbfSWHCD0X0my7CXxj8gJScmn1FAg=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODA5MDAyNyBTYWx0ZWRfX5Ss7F/gbWxRe
 wneI7oTjaT+2jnHVNawkYdRAdzI22Tmt9+2nK7rB/KCpmluOUSmfWN7RtTrcBV3grH6RomdQJef
 OTJuPQzUDAtuYorbAjjOGu/SDnFn9kx6DOVd8uF7PV4IBqDyLhIvBfMx6BSTA6GCXrRhGvqpuh/
 gb3LWoWZzR5Qk/XzkEyzN5jR6OQhMwmtvIz+9HnD4pKs7q307ji33MCtKtqVE2oq6SBl0EakSOK
 gcLRTZjr1FAnHWtk6fRwpxTub7uQ0GrBd6R+zAaiXGpaXLIUO0/ImewXRRpizxUNC5tQnl+3iBX
 /YTzHQl6eoOmNqnUnN2f/qUXNh4tD1+rIwPsH0D0Ms1yO2eAToJIDziNThsxEQeNPiCo6bfsuf9
 EeNVzPJy
X-Authority-Analysis: v=2.4 cv=fvDcZE4f c=1 sm=1 tr=0 ts=68971c1f cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10 a=EUspDBNiAAAA:8 a=ly1VyIkaSgMpB_u5KqwA:9
 a=QEXdDO2ut3YA:10 a=GvdueXVYPmCkWapjIL-Q:22
X-Proofpoint-ORIG-GUID: UwiVCyNMT8XMkcGSeTArKpiOzioxR__m
X-Proofpoint-GUID: UwiVCyNMT8XMkcGSeTArKpiOzioxR__m
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-09_03,2025-08-06_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 adultscore=0 priorityscore=1501 spamscore=0 suspectscore=0
 clxscore=1011 phishscore=0 bulkscore=0 impostorscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2508090027
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250809_030000_293682_6F052ED5 
X-CRM114-Status: GOOD (  10.02  )
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

On the Qualcomm SM8750 platform the PCIe host is compatible with the
DWC controller present on the SM8550 platorm.

Signed-off-by: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/pci/qcom,pcie-sm8550.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/pci/qcom,pcie-sm8550.yaml b/Documentation/devicetree/bindings/pci/qcom,pcie-sm8550.yaml
index dbce671ba011c8991842af6d6c761ec081be24cb..38b561e23c1fda677ce2d4257e1084a384648835 100644
--- a/Documentation/devicetree/bindings/pci/qcom,pcie-sm8550.yaml
+++ b/Documentation/devicetree/bindings/pci/qcom,pcie-sm8550.yaml
@@ -22,6 +22,7 @@ properties:
           - enum:
               - qcom,sar2130p-pcie
               - qcom,pcie-sm8650
+              - qcom,pcie-sm8750
           - const: qcom,pcie-sm8550
 
   reg:

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
