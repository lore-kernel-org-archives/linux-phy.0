Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BB652CCFA13
	for <linux-phy@archiver.kernel.org>; Thu, 30 Apr 2026 11:53:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Nzg2fAAHAIBKe0WcFiPZCMSMDYmO9vId+Llado5XKTA=; b=NDeIzU0tWjLqW9
	QLIBtAVrYHrXVXD1eZtoRddex3u3SBFx247YiDS4g7BX/jh6D36JBgRhXpgLKg8zBUvltB4UZ0JiU
	FtlhO/k80AcNaB8XAgGanRVa4cUIqBCe43IucXyD+sQJqfG6NkJRbmtN+sd1ZjgBmFpEv2ejGwJUS
	Sm6y8sEf93YPbeZZCva224WL/zWnEGHYOhj0nxMgvn7Bkew3aBPk9tQeYNwyGnoKXmI/PnOftnzPW
	MBUeSCx9xxTKvowoQQZzogzqwTR2jPAbPsShsJyXm6EwKLXvkxJYKtYZ8UYDTzNI3ftM6IQb4Alf/
	/lpsW+UH6ewY4qkTneFg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wIPxK-00000005PJY-0DkR;
	Thu, 30 Apr 2026 11:53:22 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wIPxH-00000005PJC-0er3
	for linux-phy@lists.infradead.org;
	Thu, 30 Apr 2026 11:53:20 +0000
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 63UBkNDX1820724
	for <linux-phy@lists.infradead.org>; Thu, 30 Apr 2026 11:53:18 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	VvMdomiGHeP87qTT+uqosOoO7iddjbAchHskXLUFUTA=; b=U0At4fTdrfl8QdP9
	JQsKIphtRxGzsjY27YXJu5B9VF4ru5zEPv8S5HvjrN5TjZs0G3L17HcKX3DBzseH
	vSHF9/N/T7lFiASwUOJSOs6QfrG3L0nwheGTMw2uzmKw2BOlPnmX4X9Viw8fTYQE
	cRhzhPYWB4OYo672bQKUcr1oIXNkRsfctKpBrkftKQUOdq0sf3ls3WS95OvBHiCo
	mgf+kpNzS6rkJH8cQJt3L0WLu/vQSuv60BPrsPzJdpvCV+t5CfH7ZQ7PmsHbNpax
	+axDM3qdYPJ5iwS7ufLyRmJguhR1b2mNXiLTE8PXJRn3dsdLV7XSNl1fiUwpNusI
	TP9/Xw==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4dv6ger0q4-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 30 Apr 2026 11:53:18 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-2b2e6ee9444so8357555ad.1
        for <linux-phy@lists.infradead.org>; Thu, 30 Apr 2026 04:53:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1777549998; x=1778154798; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=VvMdomiGHeP87qTT+uqosOoO7iddjbAchHskXLUFUTA=;
        b=X1zEMCYExPPNESA9L41Zlf48Sj0Pq99E81JMIWo6rVWANh1ZC1mMDru9ORIr3tu/l5
         ZzuNeV9nXad7QuRv0/dQebTC6CWst+cAf0Bp5kHtVtyIpbL6YePxuo5s9nIxldrXZ4bl
         RycOgL9dMpBjeebwIVfUvQ42FS14aArWrfrafNF2VBfmaKHcjLynHewck12BC9TBK+Au
         mqH40YlPYOus8xWtbp4URT0/w0XjVQszzNphSFlxouMVCrZccXmpGi6FRu/O8tOD12o2
         kD4tnSnBqcHt1XmWWn4FHw2zy6QvacQP42aL+XgTUN7HKUGSTmpvrtf/9Y1dJubRq0C1
         fI+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1777549998; x=1778154798;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=VvMdomiGHeP87qTT+uqosOoO7iddjbAchHskXLUFUTA=;
        b=Ybu9QqArlksSEBGmdl/kqXL1Fc+Bd2I/xsF+oVGaS1TTip12xZ3lX2O84lc4iz3FZV
         q1YrLhneaDX8BZZzTaYY4PbqkptkiEqIx0EUU+K9BuVMZ4tXqwmzMQZlKlG+KCOauglk
         qfqxdRn7EtJC0Q/HfIeJZsVWGkU0WwOY/capoUrfOZeg1dIq6qo4JSzEqzX29df9wo+b
         abgs6N8B6303QDrTZH4EtANSJ8cJCzZEmeQ0k8/mTg08iagU379/PyNe3DsBT+nmWlG/
         9sKIknWJL+v1IQu5tHntxNaOJNftBHXt+IymK5Lenkduw6Rybs2oTD/gT7I1OxRRCZ5S
         YSIQ==
X-Forwarded-Encrypted: i=1; AFNElJ8EwPAm9n39Hg7g8yRNW737tulWb0hEHJbsNJp/stlbXOUW1PcGE6Os8T8fxy+sjBZyt62omFrKB6M=@lists.infradead.org
X-Gm-Message-State: AOJu0YwsnQF1sYe8O7eZnlhH0gXOVVeLcuAebDZGq6PeIEW4XEWUDMQc
	u613aVUF6xY2tVY89tdPs/dp0wKc8Nj7aNAiCtbKsNgKYM40A8HqBhVSzZqPR663ZHdgMBlidrj
	0IOkp3V99ZctSYvf9vV0wtlICOIm6JD+XfFaesCjHFSGR/Zj1MLeJqEZrDSZNadtW4Ego
X-Gm-Gg: AeBDiesYy5gxzFKwiLcRDv+bzlGGvwAjGQ5SRpfW+o9x2tqyjEKW81OseIG0jaczLxj
	zi6BhqxTH066PwKoS+F97b0YsIB+HbQ3QoI/jV4VLwhnsfzIwTKJEEoWC/Nin8kk45xYu7AIXmE
	s4jA/O2Zw1LYCnp2H0d0XyAzhTMHmDVGPeZXRozd3rhuZxaNFWIGL9PQwuocY1ysqM2Cghlahms
	rzxzj6oaH8+Oh77fUxCUudKi1TlI7C83DU1H6vOWkatonm1J6RszQ3gOac+E99iPetSUTZkfOnV
	ZTdL2MxzMPb+Y7Ld0zr12tx1fi0I8r+Ko6de6tpB7qJozmlqv6UgTEPVWVGbO9HhkJJBjy/j53W
	7PQ55Ll82E6++wSAhNA85sBzPScADQFI9ieQ6X9ioztN2DP8=
X-Received: by 2002:a17:903:7d0:b0:2ae:cd8c:bd04 with SMTP id d9443c01a7336-2b9a43103ecmr13838075ad.10.1777549997912;
        Thu, 30 Apr 2026 04:53:17 -0700 (PDT)
X-Received: by 2002:a17:903:7d0:b0:2ae:cd8c:bd04 with SMTP id d9443c01a7336-2b9a43103ecmr13837835ad.10.1777549997476;
        Thu, 30 Apr 2026 04:53:17 -0700 (PDT)
Received: from [10.213.101.118] ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2b988971138sm53834955ad.70.2026.04.30.04.53.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 30 Apr 2026 04:53:16 -0700 (PDT)
From: Komal Bajaj <komal.bajaj@oss.qualcomm.com>
Date: Thu, 30 Apr 2026 17:20:27 +0530
Subject: [PATCH 2/5] dt-bindings: phy: qcom,qusb2: Document QUSB2 Phy for
 Shikra
MIME-Version: 1.0
Message-Id: <20260430-shikra-usb-v1-2-c9c108536fdc@oss.qualcomm.com>
References: <20260430-shikra-usb-v1-0-c9c108536fdc@oss.qualcomm.com>
In-Reply-To: <20260430-shikra-usb-v1-0-c9c108536fdc@oss.qualcomm.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, linux-usb@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-phy@lists.infradead.org,
        Komal Bajaj <komal.bajaj@oss.qualcomm.com>,
        Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1777549983; l=837;
 i=komal.bajaj@oss.qualcomm.com; s=20250710; h=from:subject:message-id;
 bh=jPWQHE6KxD1TKLInNu/I4iHlxuYT8OtLcKrqMYmEjfk=;
 b=ovx88w9T+mcFNC7WEAoQn6UBWfH20QIo458COMnNSXaqu+iBLyiJBQHt5LLUDfEzb2MVWXzVW
 Xb0LKnj8h0dCcpEu0CkyF0hf8oXDBgKjNdD2FPA1scb5SmsFZPjM4Gp
X-Developer-Key: i=komal.bajaj@oss.qualcomm.com; a=ed25519;
 pk=wKh8mgDh+ePUZ4IIvpBhQOqf16/KvuQHvSvHK20LXNU=
X-Authority-Analysis: v=2.4 cv=f6V4wuyM c=1 sm=1 tr=0 ts=69f342ae cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=A5OVakUREuEA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=Um2Pa8k9VHT-vaBCBUpS:22
 a=EUspDBNiAAAA:8 a=bYrxjfJhQvMAygBm0bIA:9 a=QEXdDO2ut3YA:10
 a=GvdueXVYPmCkWapjIL-Q:22
X-Proofpoint-GUID: SOzzjIJIGvfwt-pNyrkR947LItYmxMMa
X-Proofpoint-ORIG-GUID: SOzzjIJIGvfwt-pNyrkR947LItYmxMMa
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNDMwMDEyMCBTYWx0ZWRfX6kPV9oPvUgJu
 FJ7auSRnLmDDEByOZlDGcDf6qL553YKL4ALjOVc1NbPSBnV1nomQAGCQP+ncCeZsqIVqmQycg+Y
 6A7PSeQXaTYSmIxa5Cb66+2dfm5wopKp5qekRANB/Pk+Rt0+01OTw3I0fNeEH06qJO9hq56T/r/
 6bkKrdO5iJJMKoO/pFlixalUDIXVKrkd6vMBmTb+bReigx3CIb9ScX+785wBKbY4ikbn5TyExwE
 me0TTnA2N5x3zAfmJ2hUvq1H7F11kZOp1oSQT8b78mWgOZJm5GITsOcZsH4/+8xbzEOcKbaNFKK
 6VmacOKA+LovEvyNhPkqbQ9NUS0Q06rmuxvNQ/2UGEshh3nWgxNR9qszi8fAIVp7SYmX1NLzhOG
 2R3XC99ZUBlmsGzj5rbEj9Vyb6JsXPcZOO0Fy7TZcZiZhBSk9cqyVlDHdBDfclPHic88VGPxxDX
 5SmADio2QoaMIe/0rvQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-04-30_04,2026-04-28_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 impostorscore=0 suspectscore=0 adultscore=0 spamscore=0
 clxscore=1015 lowpriorityscore=0 malwarescore=0 priorityscore=1501
 phishscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2604200000
 definitions=main-2604300120
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260430_045319_605821_2396AD1E 
X-CRM114-Status: GOOD (  10.06  )
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

From: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>

Update dt-bindings to add Shikra to QUSB2 Phy list.

Signed-off-by: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/phy/qcom,qusb2-phy.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,qusb2-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,qusb2-phy.yaml
index 39851ba9de43..ddbddeec6fb1 100644
--- a/Documentation/devicetree/bindings/phy/qcom,qusb2-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,qusb2-phy.yaml
@@ -28,6 +28,7 @@ properties:
               - qcom,qcm2290-qusb2-phy
               - qcom,qcs615-qusb2-phy
               - qcom,sdm660-qusb2-phy
+              - qcom,shikra-qusb2-phy
               - qcom,sm4250-qusb2-phy
               - qcom,sm6115-qusb2-phy
       - items:

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
