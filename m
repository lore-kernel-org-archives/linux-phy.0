Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B802CC55184
	for <linux-phy@archiver.kernel.org>; Mon,  3 Aug 2026 09:15:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AXWjEBAfTLIm4YCglKm3vwk77qgLK9NeuzyDOnoOoFQ=; b=uUsRHUgn8u5XX8
	TNQMZdokJraDwY7jZBldPA9gULBVH2iWlAzuyIvnA3j2RifH81G2gdFNeZOHpPb4+8o78vKHO/mpt
	dVN0fT67YaPAl8uZZ1vrXgK/uCntP9GoZJyY3ikzL9sudOlPO65HULRYRa2ioEK1mwloFQn1Sn19j
	ERpA22HxzwFNhzydh3Scdj0QpCfxCH++yZRQzg/BQy706JKDzePJyJd4HLRQmDTqzMgv3Z6ShklK4
	DpSWkJqBkzZJTSRvoaZ9PYdw0NkDLMdQX25b0hKbg1dxibcJSnHER54XdEkBftYCranKyrv+pypEB
	OsIJSMcEUccD2CRGZlJg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wqolK-0000000GfUu-1esR;
	Mon, 03 Aug 2026 09:15:10 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wqolH-0000000GfUK-3iEn
	for linux-phy@lists.infradead.org;
	Mon, 03 Aug 2026 09:15:08 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6736ks264123780
	for <linux-phy@lists.infradead.org>; Mon, 3 Aug 2026 09:15:07 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=qhQ5X4XsQLF
	KGbaA430bYByFdkn1wqwhTXB5LdY079A=; b=H6s+po2p2lbX/FAsj9XCPvZT7Gx
	+jneZlN0ByF1DlHkBKjE7gQM5oeXZURh2XVUghRKAZ3642OxCojuVkuMidplt/Az
	GaQVM8DVL4nNNMdl6sm+1NjkTcuB1YrEf3QqzTnnuzuhRo8zMA8a+psBxr4vyBCe
	E3rf4fScsIEY5IdUVhCe1MYfs2ngzIMzv51FpHuAMQjMT3H11ysaQLk4V682quv6
	SGEMJ416u/jA8EqGtrsfmZ9WuJDrX3G1e8rGecckzg6Ot/NVGfKFBqyTPGOMQNtz
	d8KZFSfoL/IebPWY34OimutB79UZ3qrut8DCUEAYSlvzJHDMu6ocovZxd/w==
Received: from mail-pg1-f200.google.com (mail-pg1-f200.google.com [209.85.215.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ftp168nks-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 03 Aug 2026 09:15:07 +0000 (GMT)
Received: by mail-pg1-f200.google.com with SMTP id 41be03b00d2f7-cb4cdf95b5aso6501564a12.1
        for <linux-phy@lists.infradead.org>; Mon, 03 Aug 2026 02:15:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1785748507; x=1786353307; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=qhQ5X4XsQLFKGbaA430bYByFdkn1wqwhTXB5LdY079A=;
        b=aBgA2nWzDXXwA0FpSj62m6IY8S+3r+ul+hd253/+R1iMGgT8/kW5yePH4TOVuP9pPM
         XhK8v3yT7rQRJVU6qAem7TBTgikgFokZ2TWSXJRPQm3ijFN2cDZ+SFFI/CbfqBDwQ0Xn
         96wPy2pMmoPljYzc6M2SuHcP6gqGEGi1CK0FUT9eX+Wb/jvWs8UjHO2reWbsSo/auKEi
         mnG+qpvrN+BNCTiCF9qyoOs2IoMRWrXGy9ahVJbeFiSf2fKKMlvrPE4BAryNBckslF/K
         X0kgVo/p3MkxoCmj7ZBEExIjiwt2WjoFfQ06HllGcLQzbFRujxDrZDqi4OVs/CqkKLji
         E+bQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1785748507; x=1786353307;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=qhQ5X4XsQLFKGbaA430bYByFdkn1wqwhTXB5LdY079A=;
        b=OWrGg1bgxirWxde5TpXmLYpPr06Xl2ege5sCfiYx8a7sqQ7ogqBLiSZR0lszU1B0BS
         C/i6zz6UCWLXwvXJA0ZRIKxsTTjMCsrbb0Os8iX5L5CW+io1tDmPJEGl+CF9KTLpigVP
         RjLxRGhuf8i82frAkrlpkNOzZSjb9oJlHmGaVNz1b1R38FuX0NlZ2QktBeYEHBsElYij
         as2z2Rm1HYuq+tbT/yvtKX/JkCK/+oNeuGT8KTmtIGoFqRqhrVTG/ZbLKw4x3kblr42x
         zZNbXpOQLiJojSZvKAxahwW1Gt6hQ//bE9epJ7RHdECkTf0pckfmYCx2rNDcbz0MalRV
         hwQw==
X-Forwarded-Encrypted: i=1; AHgh+Rq/WlPLSlzCjhkut7qCeFCsvXCmX/kMXUMwmK5RRJxnFQ4/5tfROvCsteNYzOjO8hFbaLlwbX8HMo0=@lists.infradead.org
X-Gm-Message-State: AOJu0Yxb4hQU1K78JhpGQB9iPP8o80jW8L6Qp0hNqa12//AA5KtaHy0Q
	/Ar7buev5KaXUDpfBHAN1KMkFwsJLcp+8wZDG7uHywxnIOL5p3FeEYmuQmbrPxNsHrusPqc1f0R
	DZoE8H2FV6O38RniZbD6vpJ9H7aLPavFmchCl6fe34FPAf1CClMNLP5APPDuYYCKvUBw2
X-Gm-Gg: AR+sD11pEvFlpVm8nhJWVbuAzx6mludE/9f+IwX1vVt+f8BcYB6FRorOLnq71iurf+6
	H1gzK/o5NIyhWMiYL01WeizcmjYaj9wHDh/E30lWwZ1HyGTKTiJ81EldoVvnaWhWascihnjf1g4
	goywD40oZcvF5MMrtUerOxjMtA8MAY1AYUFN1UiyctYGEUO+s+Rk7HZWBNBKCwC5X0htWfMXoNv
	mzWn7hXosXwh3ujGNo4S/CveuNQPUu5NsxUtKckLk1BP6h9pjMd6QqP0md1EeA6ES2V1Mnp6GA4
	yppwCMERcpsyb9DWed6CR0mZRRTvPntpsK9pW246VwaDTWQcdEEouIXtBts8pj5QzTlNd42EMs8
	Ln5+yw0dEst6uVMkQrQNIQ2CBEaI=
X-Received: by 2002:a05:6a00:4c0d:b0:848:76af:db34 with SMTP id d2e1a72fcca58-84ee49b4d9emr8730024b3a.76.1785748506770;
        Mon, 03 Aug 2026 02:15:06 -0700 (PDT)
X-Received: by 2002:a05:6a00:4c0d:b0:848:76af:db34 with SMTP id d2e1a72fcca58-84ee49b4d9emr8729992b3a.76.1785748506175;
        Mon, 03 Aug 2026 02:15:06 -0700 (PDT)
Received: from hu-mojha-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-84edbe572d1sm3516376b3a.18.2026.08.03.02.15.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 03 Aug 2026 02:15:05 -0700 (PDT)
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
Subject: [PATCH v4 3/4] dt-bindings: usb: qcom,snps-dwc3: Add Hawi compatible
Date: Mon,  3 Aug 2026 14:44:40 +0530
Message-ID: <20260803091441.3040830-4-mukesh.ojha@oss.qualcomm.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260803091441.3040830-1-mukesh.ojha@oss.qualcomm.com>
References: <20260803091441.3040830-1-mukesh.ojha@oss.qualcomm.com>
MIME-Version: 1.0
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwODAzMDA4MSBTYWx0ZWRfX4D1a6kWFvcnO
 1/gXlBnQaBjjpEshEi1FuLL94JMNwXCCZn9DcdkyLwCLi1l9i4471gGNzxMExguijwtdtJoI/+n
 5Bhw4ZBPneEMCF9WuS/6tYerY2WmILc6mxItjVCU/yQLEtpYAJkcNDL2NfqR/y/PPYQLXnQKff+
 uhgbifNxEc4gflUTMTYfhdR4NDw3I1J5jKXOlhCOgPooTwX9vZfCUJUrlhpgYKGEJzX6oIhMbSE
 Tf0z2nIpJIAsL2tkgPRcR2aMU5K0V/gPgo9Rw9KMcXTWL4RDHWK8RqaW/uKPu6T6Yj2S2Haw5yd
 t3NcAd+eSAA+7uMotHPH82WbdGY/Vy1Eq8y94phv3Z7yeOfi9Nn9YqGWGGWCyzPNvgv7wyOJ0sY
 Jq79B7JGmf6QcxnfFyLIXSh3GIWLoCm7Dlftj/SElZw8/3ATD4ssHY0nbFBTixGvEYkbY5mVYC7
 O1goxjL8j67HWUdU6Ww==
X-Authority-Analysis: v=2.4 cv=Wpob99fv c=1 sm=1 tr=0 ts=6a705c1b cx=c_pps
 a=oF/VQ+ItUULfLr/lQ2/icg==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=Sv0fKeRqtYgA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=yOCtJkima9RkubShWh1s:22 a=EUspDBNiAAAA:8
 a=xJ7_bQKFY2SeBR32x94A:9 a=3WC7DwWrALyhR5TkjVHa:22
X-Proofpoint-Spam-Info: AW1haW4tMjYwODAzMDA4MSBTYWx0ZWRfX3LUCTLikJulv
 S3gSXkGLHno9Ux4sVUsWpirhk0TapnWsTVjJK1krn8vdrfMZ3BH+7TduY1ONj0gyA/4y354T9Oo
 GWOUigXygtBTrofcP6r/KBmmNoU+two=
X-Proofpoint-ORIG-GUID: a3ZJWGvj931NxqfHJfUgfepqjDjfdhnD
X-Proofpoint-GUID: a3ZJWGvj931NxqfHJfUgfepqjDjfdhnD
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-08-02_06,2026-07-30_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 malwarescore=0 suspectscore=0 priorityscore=1501 impostorscore=0
 spamscore=0 clxscore=1015 phishscore=0 lowpriorityscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2608030081
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260803_021507_961199_18D599A8 
X-CRM114-Status: GOOD (  11.24  )
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

Document the Synopsys DWC3 USB controller found on the Hawi platform.

Signed-off-by: Ronak Raheja <ronak.raheja@oss.qualcomm.com>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Signed-off-by: Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/usb/qcom,snps-dwc3.yaml | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/usb/qcom,snps-dwc3.yaml b/Documentation/devicetree/bindings/usb/qcom,snps-dwc3.yaml
index ea60f7220afe..de50d7a3c999 100644
--- a/Documentation/devicetree/bindings/usb/qcom,snps-dwc3.yaml
+++ b/Documentation/devicetree/bindings/usb/qcom,snps-dwc3.yaml
@@ -27,6 +27,7 @@ properties:
           - qcom,eliza-dwc3
           - qcom,glymur-dwc3
           - qcom,glymur-dwc3-mp
+          - qcom,hawi-dwc3
           - qcom,ipq4019-dwc3
           - qcom,ipq5018-dwc3
           - qcom,ipq5210-dwc3
@@ -206,6 +207,7 @@ allOf:
         compatible:
           contains:
             enum:
+              - qcom,hawi-dwc3
               - qcom,ipq5210-dwc3
               - qcom,ipq5424-dwc3
               - qcom,ipq9574-dwc3
@@ -547,6 +549,7 @@ allOf:
           contains:
             enum:
               - qcom,eliza-dwc3
+              - qcom,hawi-dwc3
               - qcom,ipq4019-dwc3
               - qcom,ipq8064-dwc3
               - qcom,kaanapali-dwc3
-- 
2.53.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
