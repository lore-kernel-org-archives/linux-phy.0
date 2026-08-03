Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9A640C55175
	for <linux-phy@archiver.kernel.org>; Mon,  3 Aug 2026 09:15:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xEARBW6mSBVgndoRJKUOAv5K2TfHHspq2fa4FowF2sQ=; b=qVQ+0pWc75rspx
	k3wiqf+djkXHA/bbGSHIYAN9gWtFC4GALk+7uy6ubscYX/Ztaj2GLw6aiYFaovtn9XrBUx4HWp58D
	X9XehycmZKe7H6UHRaBt/f9uaXA78ZOXGn0JtBIjDoQ/1x9HhrnPc5QgT9rgVEN4gaTjLsafLiRSH
	6vR1LLv9Oh2srSBtZ/g8irc38mYoeZ6aNOURKLV4miPYyBwh4UR0PV9VKn1kjRRmaVS3zDhhotf9f
	C6zt8bdLwbZ+kPnEUzXLdfJnF050C1+xnw+n60ngbcZJ8MyUNl3h+Ev1UJkgljpDSiYiPMUkXV0DP
	VjdKAh1YhRJYZnUaMS/g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wqolF-0000000GfTU-18w8;
	Mon, 03 Aug 2026 09:15:05 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wqolD-0000000GfSr-1lLc
	for linux-phy@lists.infradead.org;
	Mon, 03 Aug 2026 09:15:04 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6737CWNB2211315
	for <linux-phy@lists.infradead.org>; Mon, 3 Aug 2026 09:15:02 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=ScPbgvWeqe8
	PB1Ah8C4F8tQbu05CNfR9C2b9DwtUBqg=; b=iHOHN23k6NrFTgAqQe2JrOjL9nu
	rjUDXa1WD7u2hr2ZSr41j4Qukv/wN81OAGrB3zEUX/u++wzbaWLdJxczDYDod3Nh
	DoRviKUn+Nq4uIhiRMF3zIlduo2EaQksoxULfYiNthrbWAk4egM7H4nXPfAH+B9X
	eP2vcAOTb5+XqAbHgwl+3jr0CXl1s7iaNgNc70V4Sm39KtpP5mSeSVjFDgNhNfU2
	czkoFUkNE5167nfGr8bVYkVzjd6uKSMPaUPTh+0hrkepalOxiXngWUKIZvfhOLsB
	3LRUBDCKZD2IfgsRenNnDqVjU1gcRfjpHsg2VQkzd3eR0tXeGu3PZAuLO1Q==
Received: from mail-pg1-f198.google.com (mail-pg1-f198.google.com [209.85.215.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ftdmx9xn8-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 03 Aug 2026 09:15:02 +0000 (GMT)
Received: by mail-pg1-f198.google.com with SMTP id 41be03b00d2f7-ca6bd8a190cso3973118a12.0
        for <linux-phy@lists.infradead.org>; Mon, 03 Aug 2026 02:15:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1785748502; x=1786353302; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=ScPbgvWeqe8PB1Ah8C4F8tQbu05CNfR9C2b9DwtUBqg=;
        b=Tf7eVadQURsD4FFg62Ig4SxmPdnmhH1Tl+5ubB4knx3eZ08qiwGURl3TudLWyakYF8
         lUqQUFf/IjOmbVCG/UaNMMy4v++TBiGBpSI6WhsXAWP9tyPu0LXs8RYp1BVg4LUGgB12
         6kqykNcXnhwMDxaP/ES8ws1H+Rbg3zcr+mXcHIFnWRnUZ9WpLqJL9/v80WYTVaJMyvHl
         RkgyZTo4bvwbHFjw/AOWLPliq2ta9h006jXSFVJq4zYpfza0LgEjdFMQpYv/baxzuA5j
         LNK1Wy3VpWel7SXPwv0FXVeOXzptd3lzWy90V3kRIf1uNt4VmaiuBfHsvYu4rlFy/Zet
         2vWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1785748502; x=1786353302;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=ScPbgvWeqe8PB1Ah8C4F8tQbu05CNfR9C2b9DwtUBqg=;
        b=XeSomw4oa58sMUDoQBHBYrQaGzbTYS3wP4ppKEuHKVAfagmYVITzZb4Y7+fV/oIdSX
         K7xDBCu7rHbmelPZBftQvHbLwUt2VSVTebBx2hIz58gs+o8DatxKVyKUo50dzZ7pOjZv
         PMYuohsr+heZwmfTRNJKQgdqjMujAHSm/7WSGkgJTaOV/+6jiuXu3ROFVGlZe0vs8G6i
         P0WjNfwZ8lzdRUvcF/6zVvF7gPQqelsy4A7Poi7MgIa0d+QAqy1sPMeLx5FsTDLwwOeZ
         nzWluqOD+XR8RcXoVg1lGp9vYdvfeTzx+BAU5vZFANFvLFQ4HDg6JWKqLUN5P9n299W6
         hJ9Q==
X-Forwarded-Encrypted: i=1; AHgh+Rp0+r6uPJMnyY7GSWBh8Q+2R1ola9wJCYJWRusQxMg7gM9tGoYzhoR8vmyRZKC1UdIRIPeXYnbNpG4=@lists.infradead.org
X-Gm-Message-State: AOJu0YwcmbhaIwDYQkRRbO936hwPjvkislzql53BMFoWI9UHFnOMsQfP
	lZXuy9mdMtE6h8OE4TrFh188oIWVeuosd+RcQ/8ZEvjm6YaOB6I52GD+uDCDgWZFLegmFOewWhh
	AELX3eOVYWQ6TIIgGJTmWNuE6s28y1Wa2R6ZhuJoWAEhehBN+nj/T3npO4vDIe5RmNzOy
X-Gm-Gg: AR+sD11xxyXGUXZM8TKYXZvFpiETWSZpUpuG817clTvTuQsvb0Hwgp0fPnycHT6jBOy
	1PVaMp240Ba+UYayLvwtX2XWUZDf2o28r/995GmDd8m01SKCf8vDqQ61dcLaxB4GlK4v2kpbUAs
	ecOw8Lr9yLMfYPsbnzguWes03kyynmpexoDXEObmSTNRp5K7eKyF5JMgFewFb9Uan/tT5IVrQNT
	GW7AlxyoKSUhaw+OVu1aTEjKAiPFbZMI6UiuffuBN9/YrY/KYvNN+wH1TagTVrwhJLeqrtMafj8
	bk59mmPuYggW4ljgZ+SDFDOxR+nUOUdWk0QvkY5eH13noBAnnJz6HmhBh1wUWug+Ni9DgEyAqL5
	h/CufjEmqFho1FG81jVE8W7RcdzM=
X-Received: by 2002:a05:6a00:94f5:b0:847:83bd:6676 with SMTP id d2e1a72fcca58-84ee485a3f5mr8135584b3a.17.1785748501548;
        Mon, 03 Aug 2026 02:15:01 -0700 (PDT)
X-Received: by 2002:a05:6a00:94f5:b0:847:83bd:6676 with SMTP id d2e1a72fcca58-84ee485a3f5mr8135558b3a.17.1785748500983;
        Mon, 03 Aug 2026 02:15:00 -0700 (PDT)
Received: from hu-mojha-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-84edbe572d1sm3516376b3a.18.2026.08.03.02.14.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 03 Aug 2026 02:15:00 -0700 (PDT)
From: Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>
Cc: Neil Armstrong <neil.armstrong@linaro.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org,
        Ronak Raheja <ronak.raheja@oss.qualcomm.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>,
        Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>
Subject: [PATCH v4 2/4] dt-bindings: phy: qcom,m31-eusb2-phy: Document M31 eUSB2 PHY for Hawi
Date: Mon,  3 Aug 2026 14:44:39 +0530
Message-ID: <20260803091441.3040830-3-mukesh.ojha@oss.qualcomm.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260803091441.3040830-1-mukesh.ojha@oss.qualcomm.com>
References: <20260803091441.3040830-1-mukesh.ojha@oss.qualcomm.com>
MIME-Version: 1.0
X-Proofpoint-GUID: u71eFM4p5_xfJ8mYfoYpLpJA8zYjBgJX
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwODAzMDA4MSBTYWx0ZWRfX9aw9vUaXgaAA
 WVu6JaLKY1XAdzX+DQql8L5lduh5a1y/qQNuERrbV1KwAa8VSFL1QiCxwGTcqeOMjPiorLmS4YQ
 BADhF5Lax+hH7piaIwIJOw15YWAV4XD2WUhy+O/abi6Oi2bDGnD8KN8Tq5gHm8o+Z/0J9VJ2mcQ
 orZq2ayrj3v8z0RgaxpmXYvcmcj9vxdz3Dxd1bSxHVUlNyb9Xy5zD1iFEqS657dn6WNM4wLeXQT
 ZnixBYOpjZvzGzzbikukd6HD4i9PmHw37E38bBogEWKR1gomydusSmisWXDHJ2kqMJPsA68ctBt
 dXzXb0x7CId2VfzQbQoZQQD61y1zhGcILHXf3FvjwB+NeGIUwPaB3rZVmeIV1sceJUbWCbQFdJv
 rix+7ai5F9/07xC9G+qSKx8pjYtQ/fJUxKJkmKsSSOW53EfdGnURRo7vN2HUL9Scmtsc+sd8eO3
 RwHnPNVfkz2xDY8BUZA==
X-Proofpoint-ORIG-GUID: u71eFM4p5_xfJ8mYfoYpLpJA8zYjBgJX
X-Proofpoint-Spam-Info: AW1haW4tMjYwODAzMDA4MSBTYWx0ZWRfX6GSfeBSGUhn4
 h8LbTLVubyltWEpRwK3mp7CvpOz5LfJ2CARvGf0oRa6oFaUBSdGr590gH8u8aztULQbEwvD3GD1
 k9MLeOVTnlOib8ScRqiqJX9C8AV2zlY=
X-Authority-Analysis: v=2.4 cv=L7MtheT8 c=1 sm=1 tr=0 ts=6a705c16 cx=c_pps
 a=Qgeoaf8Lrialg5Z894R3/Q==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=Sv0fKeRqtYgA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=DJpcGTmdVt4CTyJn9g5Z:22 a=EUspDBNiAAAA:8
 a=vC2bFTPnYnLVIQvTftgA:9 a=x9snwWr2DeNwDh03kgHS:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-08-02_06,2026-07-30_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 clxscore=1015 malwarescore=0 bulkscore=0 phishscore=0
 priorityscore=1501 adultscore=0 impostorscore=0 lowpriorityscore=0
 spamscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2606150000
 definitions=main-2608030081
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260803_021503_471545_5238B43D 
X-CRM114-Status: GOOD (  11.29  )
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

From: Ronak Raheja <ronak.raheja@oss.qualcomm.com>

Document the M31 eUSB2 PHY for Hawi which handles the USB2 path. Use
fallback to indicate the compatibility of the M31 eUSB2 PHY on the Hawi
with that on the SM8750.

Signed-off-by: Ronak Raheja <ronak.raheja@oss.qualcomm.com>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Signed-off-by: Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/phy/qcom,m31-eusb2-phy.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,m31-eusb2-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,m31-eusb2-phy.yaml
index cd6b84213a7c..c0e7e2963ce6 100644
--- a/Documentation/devicetree/bindings/phy/qcom,m31-eusb2-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,m31-eusb2-phy.yaml
@@ -19,6 +19,7 @@ properties:
       - items:
           - enum:
               - qcom,glymur-m31-eusb2-phy
+              - qcom,hawi-m31-eusb2-phy
               - qcom,kaanapali-m31-eusb2-phy
           - const: qcom,sm8750-m31-eusb2-phy
       - const: qcom,sm8750-m31-eusb2-phy
-- 
2.53.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
