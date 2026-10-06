Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4D90ECA5FFE
	for <linux-phy@archiver.kernel.org>; Tue,  6 Oct 2026 05:29:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZLBdmBA2iSAP+ON+xZZriWRDWb6tZYL4B18Y8X8jE6Q=; b=bTozS+1UQxYzru
	LjTOC+v5Y+g568OI5g59eEWRaEXRFzGVSPeNfuDTbkMS4Ls/FwrVwCWJEsLszTe9qy0XGydTN2EGT
	oV63Nilw6I2lCkk2IRI4pMUKr2qtZApv7WH9hkgzhWX2IwtauDOm3w/0womVMdKbzsjdgQ+Hqn0Cx
	idYvw8SRL2vgGeOx7yNpJDpL2CsicACxLoibdWXjlcwESpxaov+/SpzFbrF7ajglwilC5sblVWQSm
	IuoMrs30xvgfek7OD1mPITPrV4Rg+PdlPr7KuC1QN0LrQjhVDLlrrzpjkwG74+6cabdSliGms9KXk
	ki7gahW9sJY07MpFTbWg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xDxkF-000000004Ee-3hvR;
	Tue, 06 Oct 2026 05:29:43 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xDxkA-000000004Di-3ANg
	for linux-phy@lists.infradead.org;
	Tue, 06 Oct 2026 05:29:39 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6963A48U2818085
	for <linux-phy@lists.infradead.org>; Tue, 6 Oct 2026 05:29:37 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	jrWr4WEEoDxY2QpPfvYR+d27cAyfCi80wCzqnJN1qlI=; b=KGm6v3XscGWir+j+
	DcdnJdkShndEyP1ZHB48EdljHIb5VD52QKGo81YTB8IzCjYkKm61PAUWgrN/07kt
	e353mJfs6EfrsVq9/s42R4SuCN+BmnJEd/2i1BfJQRo3mXNbiWU/OPUai6pr01LR
	/curnycN2Mo27itGJhIUrxmqJggUVQ3z4IZzr4RWk4DuTZZgAvkT7bTjruYPDrtd
	JAk+qyhx5rGRwG7EEDIdj+6VwxmDKlNZbC9iq4vjWkVTkgdmKUX/ycSkT54iQnGa
	ABLzU7bRAYugZR8l73BTdAwwrhcAU/pmf+E+X9rfo6QGyHkw0M9g+O+FuMsiTSTR
	yxWmow==
Received: from mail-dl1-f72.google.com (mail-dl1-f72.google.com [74.125.82.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4h4fkujd6r-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 06 Oct 2026 05:29:37 +0000 (GMT)
Received: by mail-dl1-f72.google.com with SMTP id a92af1059eb24-1383723dfddso3928489c88.0
        for <linux-phy@lists.infradead.org>; Mon, 05 Oct 2026 22:29:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1791264576; x=1791869376; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=jrWr4WEEoDxY2QpPfvYR+d27cAyfCi80wCzqnJN1qlI=;
        b=VR32NkmMDW0ssHfiGk/UqceKce3is7/JphMEVo+1IwEofSCrNr1n4XVfR6ZAK2tZnO
         Qf6UG3X47vRBJFjRS3/Hzo7t/qt9hWK00k9pdIXp2JqRxqlLczKqTSJbSmZxiO3gWCGQ
         gBdkOiIusjsaINCuWpPT39KFSAxG8S9/Khx1jCFRt4TWDMaaCEjB3ZznmMkye7HmnhcY
         QgQPwJs55MVCoaukhpXiEzMPYE7PnRm4cq8R4ufqybOcJ7nu6iXKO6NT8dv0PAPvxQJy
         jLQP+2itdumhYw7KVM5q1Za47ekbqpJklWLM87vQLD2r+5cjxvPGv5bA8OtvUWYibdjL
         7dXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1791264576; x=1791869376;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=jrWr4WEEoDxY2QpPfvYR+d27cAyfCi80wCzqnJN1qlI=;
        b=AcQWBH38rj4hQNYiMjaHPXqbyeLcTg3Ll7tTIFLrkpRqZlz9Ach0Y1WUjEOUfoXFx8
         eK1tA+Wgkf8YO8l/ut/hgu8ClZX7dwX0l3QNknqEXFvrj5MIrNwKkkQUdx8RFrPSt8VF
         o9H2GsLRMHCGGFeVcsTEk5x27mSr4tQB6o+STkA3h6HO9yNwuKu2XxMSRLBXRthoHpn0
         ZG6cylopYCr4mKxEw98NcUEu3sKQLMqHdzYPYVNXXRY2wc9luu+PwNHonPR5QPJbBv79
         hXBYDxlYvoG44o7Bk+AXOFApw7ptADfdVJHlqxzfjDMngwa17fABiopXiR6uTBNK/htA
         y35Q==
X-Forwarded-Encrypted: i=1; AKwUvBxaf+kdJJj1AB/dqKKTNGt2mikqjRdffRfQfEjwa+RZ7qFsl55LUi/wxixQZdaInQ2QYil1AecTmRs=@lists.infradead.org
X-Gm-Message-State: AFuF++mEzVYVKEGiLpN4vryJL8npWZ37Omvwkr62FqfSuqMc2HtInAIQ
	XQZYYjsqiPgS+K0zz0yUKWYhF/SOWQ+Fxiw2vwjwhDBjs9h+9xLo8oO433KNTt/4zUMeWoGbo2T
	HiPVTfqIewAURtJ9e75XTjeoYe7LEprohrclOgx8OqAgR+t7tUIHMKx064LJlzn6DgID6
X-Gm-Gg: AYBFou3+9rj0jmuipzlg09x2saCLxBurcEUUCVaP1MM5/Ky37krwfomZe70spi6atZl
	PBuWcK3GxdaY++PvaXaOA+zPviNd/bagfUCrxaNXgCpc5+3YwvItictLgi/FyBc5lHkWXz3KrVW
	Aqj95KtAxAL0E/xYvzuGVbPMEqCPx7kw4OVgw9VDRQxdhF7I0SZIU13+K6rgTZe0/vbvpA4rYEp
	7B3GzQbbiL9yxOSecgSg6gk5tRv05BZVzFjxd14jylu/ZQrGB21sbAMM3wobl6i3U0+CSWjpya5
	7UcOk5JsGEsMXALtTsCvGG6JY6pENwJpSC3JNTl+FmVyQA8JtdHjSLiFDspjllInA135eky3AVi
	PK+1LSa7wiudnHC68Gxh5ZDYfoZe9rgXzq2qopWewbVkjwWi5Z9Muc6GUCGFCP1xupX6yBbo+wu
	NxS0w6fVCPyUWScge7VRQLzm8dqsqy
X-Received: by 2002:a05:7022:f902:20b0:151:6e80:ba7e with SMTP id a92af1059eb24-151c0b1bc76mr13208127c88.4.1791264576468;
        Mon, 05 Oct 2026 22:29:36 -0700 (PDT)
X-Received: by 2002:a05:7022:f902:20b0:151:6e80:ba7e with SMTP id a92af1059eb24-151c0b1bc76mr13208101c88.4.1791264575932;
        Mon, 05 Oct 2026 22:29:35 -0700 (PDT)
Received: from hu-varada-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-15d85781d49sm4017403c88.16.2026.10.05.22.29.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 05 Oct 2026 22:29:35 -0700 (PDT)
From: Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>
Date: Tue, 06 Oct 2026 10:59:16 +0530
Subject: [PATCH v5 2/6] dt-bindings: phy: qcom,usb-snps-femto-v2: Add
 IPQ9650 compatible
MIME-Version: 1.0
Message-Id: <20261006-phy-v5-2-cbe9330a6449@oss.qualcomm.com>
References: <20261006-phy-v5-0-cbe9330a6449@oss.qualcomm.com>
In-Reply-To: <20261006-phy-v5-0-cbe9330a6449@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>,
        Manu Gautam <mgautam@codeaurora.org>, Stephen Boyd <sboyd@kernel.org>,
        Philipp Zabel <pza@pengutronix.de>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Authority-Analysis: v=2.4 cv=HtPjiETS c=1 sm=1 tr=0 ts=6ac48741 cx=c_pps
 a=bS7HVuBVfinNPG3f6cIo3Q==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=IkcTkHD0fZMA:10 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yx91gb_oNiZeI1HMLzn7:22
 a=EUspDBNiAAAA:8 a=JwZr8aepJa0OdLIFGX0A:9 a=QEXdDO2ut3YA:10
 a=vBUdepa8ALXHeOFLBtFW:22
X-Proofpoint-GUID: omqQF9ivlYYoKQ-PLMBtJYSXstiLCa20
X-Proofpoint-ORIG-GUID: omqQF9ivlYYoKQ-PLMBtJYSXstiLCa20
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDA2MDAyMSBTYWx0ZWRfX7CSjIuuw5cbL
 YhOzQNTfTJrA2g6os3JEkmkom7k7aZNEbC9AzdDZOYHbfSI6XG7ZEAvJRETEWIOTqLqkIn9pAcm
 UzgFQCVgIRVNJWznWqxSj4HvxcTLfGY=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDA2MDAyMSBTYWx0ZWRfX/4sAzCAWzp5h
 DJgn/GAwVu5cWlXwUnamnBXK4MfdtyBiF0r8z3+x+9iRbsg6+l3q/d/bwB4v3U2moEWQ4qa45Cx
 qhSGD+kpDfFAHjNkMfL1orKhgpLy/JTlJyFHRzzqWwQ/YXTFHyWv3wf4w4qCQ42s+DiRE8lRIhr
 5pHvw0qtIsXrOBUtcOT7LKRjyFmbd+cLEfHcmION63XDwtB1F7aUCLR0b/mib2FS9/mxYfG/CGb
 i253SJOZoYcdpTRwn1egpe6EttT2CfDXBJ8s0hRMPuXeN6EdGT+Ufr18h1iD2IEevXgmkS8rlQ/
 7WNx65qRDTODA1FhDAifFMsUxiMeG2BaMyoI746rJvvsJW6CLb3zObvbjhL0R4a0YzKzawgwiUD
 aHHAGoOwnLBwiA2eJJ3maQINhs0l2jCayiH9I0CK53v8ndNbdLIrL3DZ9Eg41lsuduXocH+tqpJ
 OasZPXKxcmI553p558w==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-10-06_01,2026-10-05_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 adultscore=0 malwarescore=0 clxscore=1015 phishscore=0
 spamscore=0 priorityscore=1501 bulkscore=0 suspectscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2609040000 definitions=main-2610060021
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261005_222938_907358_CED359C6 
X-CRM114-Status: GOOD (  10.18  )
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

Add qcom,ipq9650-usb-hs-phy to the list of supported compatibles.
Unlike the existing SoCs, IPQ9650 does not share a generic
"qcom,usb-snps-hs-*nm-phy" fallback, since it requires its own
tuning/override sequence, so list it as a standalone entry.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Signed-off-by: Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/phy/qcom,usb-snps-femto-v2.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,usb-snps-femto-v2.yaml b/Documentation/devicetree/bindings/phy/qcom,usb-snps-femto-v2.yaml
index 661759b25064..db00f5a99d80 100644
--- a/Documentation/devicetree/bindings/phy/qcom,usb-snps-femto-v2.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,usb-snps-femto-v2.yaml
@@ -15,6 +15,8 @@ description: |
 properties:
   compatible:
     oneOf:
+      - enum:
+          - qcom,ipq9650-usb-hs-phy
       - items:
           - enum:
               - qcom,sa8775p-usb-hs-phy

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
