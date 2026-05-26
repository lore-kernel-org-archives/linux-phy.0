Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E35A6CD5BD1
	for <linux-phy@archiver.kernel.org>; Tue, 26 May 2026 18:44:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tFTmT7miKpVCVl5m/KQPS4kobkpyNYQKSMbuWhCUh50=; b=A3bGCZPHWyJte2
	/FIEe2YQoWHuyohpVD6LA/D2ahxj/xXozeaKIS5qeB+8WdPvqkEgU3AcviYvmepAmT9urD7cmqDVE
	PXFLi/1UqTmZeTGHPywP5CXzYFzuN83ltt74kePPPa2fMegmpsINXUm2rlxBBNlbe5Wc+mbudvAbF
	GxslSdLEM6AB9pMgypd3xOVru4JMPFsp8j4RZ6duS4Hzx4Ct+CHpfRS9YQrXmQf64D2FXXRw4Qxkl
	TClIgN3ulVYDVilYXcjLwa5jBsincG01bnhcoZDXdV/tRPbZmKAgGDPshxGGaf03yCG2X1CN/zyDY
	9PpVkBN3jNH0Om5hTyww==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wRwlU-00000002s2j-224a;
	Tue, 26 May 2026 18:44:32 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wRwlR-00000002s1c-1vLJ
	for linux-phy@lists.infradead.org;
	Tue, 26 May 2026 18:44:31 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 64QH1em3069522
	for <linux-phy@lists.infradead.org>; Tue, 26 May 2026 18:44:29 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=ebSLJLn0Ajn
	KDVdWuV+bTMoNjWxQYHmA6naRcJL5OMM=; b=U7Qg8y4ISg5uFvom+4wT/4cWjYG
	ovNnIUBkw/pqVN0125Oft3dXxosYV1JD/ifdQ5bJ0KQ6nkmlCLw16Kbz46Z8x5x/
	TIkHt38VT98+0LusTeAyNnigCVqPRyF89tRWFrGUXJO/rg37qXUrk9HL8fbtNaAP
	Drm+efjjF4+O0MSDQR9NDTZ3VzrdxQ/kKC3IjGwVjH3aMjee3WtlEAT8jcJM7VSO
	jkMzUKF5mcuSeILce9d63X56LSanzs0+KJmtD8VGLyBsjZXbLrX0osJNvaRQasVT
	AHkc2bi6LKre/tmObZVXrWqBnMlKujrCQCleNH6vXEgLNeh7eOUF2u3takg==
Received: from mail-pj1-f69.google.com (mail-pj1-f69.google.com [209.85.216.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4edc2yhpa1-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 26 May 2026 18:44:28 +0000 (GMT)
Received: by mail-pj1-f69.google.com with SMTP id 98e67ed59e1d1-3660375e310so2681801a91.2
        for <linux-phy@lists.infradead.org>; Tue, 26 May 2026 11:44:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1779821068; x=1780425868; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ebSLJLn0AjnKDVdWuV+bTMoNjWxQYHmA6naRcJL5OMM=;
        b=go5SVGidMt1zojfEiaDC3dZ4fbND03EKEGAXllbwBPqD18+td5Y+406FIeXmKuv2o/
         n+jg7NIAATnuPYgPaydzThVNHCtIBCJTcyLY29mgR+n+R+OU7jaSFIa0gLVluXJ4j7ER
         OWsSmsBNAciFIiR/aMTsbCT6przeAGJqtpN+aE6GlslSYomV2J43jKB8l30FcM4lFg0B
         loYPLXiFhx+HXNpbvGWjhLdwpKa3KRvd9u7Z1Cqypiwt3Lpt3YtOjWjPdiMPiaos6phr
         sf/AO6YMysqdwoNAat8zGHuxnm2YUl4FoaI9KePgi10i0wC+qWro5z/wIuLdTe+raqlw
         uzlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779821068; x=1780425868;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=ebSLJLn0AjnKDVdWuV+bTMoNjWxQYHmA6naRcJL5OMM=;
        b=o7bSPynSOL2PoFrt7pINQs4HNNJJzUh1DBrJeWvL5vVGFyjXLi1FjeIMvkKoY6gTDQ
         YI6IS3UZ9x7e5hBP8PmkIMasXyM0iPt66TPiRjnsFX5Zn+rAmLvbrgqPtw8sLGyKCRYT
         MHy/zWJBqeJilAUjU0LM61DLwjJmAZXJV91YfKVxeRlya0vz6jZc6o215HqZJvc8JX9h
         nZTErw7AmFwThMJF8tk0KDyUUON4PLUxWtEb4wg7OTvpx8J+Y/6lDpIA3GPnDSoyprYt
         ikbDLQnGeTUEBwtWnOPbiYC1/Uhds+1ExfhCvxnqCzey6oOV1C3UOPm4musyLZ+hbzru
         OHIg==
X-Forwarded-Encrypted: i=1; AFNElJ/NsAn0xsqFUhMfuPhQp8pm8eA6YYoyplSoZypsY4SnGy/us2uOUFIojyjLGB3J2gXvl19Y84ieqLo=@lists.infradead.org
X-Gm-Message-State: AOJu0Yz4LAA9a0HtfZSlmQ/ejBuSwK17f9B8v/8mWX9087dQo8EM0S8b
	sZNulgXUckOYELrJ67vOZNIOslGqho4kPMpequUwSo92cxW58+pnblqLfjmosjkG3fXu+CJKit/
	+i5k7wb46fT0RD3nJxNBgz8GfPEHR0vq+kfVRFD5IGZ0B/3RyrYlUVBsh3PZVi5JZYBo=
X-Gm-Gg: Acq92OGpY8bVQ0CF7SoPyuRf31WgFgDR2WCQ51jt3gAk6Gx0R7x6ufFndF+vGafQE2g
	ZKETRre5KQqhUtK8LFm/Su4nuislJXRfjVFGH2k8Bicfc1kzXc32+S3WvOhrmd3ObLJ7XvdlXEp
	yXz2xudm89ZWPLm2/0D+6GklH/2HTEY8399ft2uGMJLNHVURey3N10WIPA/2I6AnLhUfdacOvJw
	9VqmiPkwJbjY+jcKHhLMe1WG8IQLBNAkIEAlbphULipLp1uSpN19b98xnpE4eWB/2e0kOXbnsPf
	pU9Mda3/MctBS4zHCnc1OVuqvJc+DD7jzMkKDsR8TT4WXw4PWhrXTYwc5CjzlTx4fKEpJJ49kLN
	jtXU4LXQTPaycWzxkF7sIa4kt9LqcZmRZEb2iJzyjTFwfUb0UsRGI8A==
X-Received: by 2002:a17:90b:3a08:b0:35f:bf50:b4b6 with SMTP id 98e67ed59e1d1-36a67449419mr10110992a91.1.1779821068298;
        Tue, 26 May 2026 11:44:28 -0700 (PDT)
X-Received: by 2002:a17:90b:3a08:b0:35f:bf50:b4b6 with SMTP id 98e67ed59e1d1-36a67449419mr10110973a91.1.1779821067803;
        Tue, 26 May 2026 11:44:27 -0700 (PDT)
Received: from hu-ppratap-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-36a721c7baasm16866628a91.9.2026.05.26.11.44.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 26 May 2026 11:44:27 -0700 (PDT)
From: Pratham Pratap <pratham.pratap@oss.qualcomm.com>
To: Neil Armstrong <neil.armstrong@linaro.org>, Vinod Koul <vkoul@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>,
        Johan Hovold <johan+linaro@kernel.org>,
        Loic Poulain <loic.poulain@oss.qualcomm.com>,
        Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Abel Vesa <abel.vesa@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>,
        Pratham Pratap <pratham.pratap@oss.qualcomm.com>
Subject: [PATCH v3 2/4] dt-bindings: phy: qcom,qcs615-qmp-usb3-dp-phy: Add support for Shikra
Date: Wed, 27 May 2026 00:13:59 +0530
Message-Id: <20260526184401.3959717-3-pratham.pratap@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260526184401.3959717-1-pratham.pratap@oss.qualcomm.com>
References: <20260526184401.3959717-1-pratham.pratap@oss.qualcomm.com>
MIME-Version: 1.0
X-Proofpoint-ORIG-GUID: EK6v638j3SxTwVeNJEw0DCexk7pYlrsJ
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNTI2MDE2NCBTYWx0ZWRfXzwiVqQmyov72
 xzde+/yBYa8D6DZnpob1Px6ZQ8WYFSDi2Vz1jqN2eAIUgWVDgn374jm/qkCv+fVwt26FZnm+cc7
 X4EejP7wn96nIN16qpyspfZU97s1N3QYhV3yXhEQ1375I4FKxAhsFueIvv7T1WP3MjrlSVIwvrE
 MvkQD1v8kfJ+D5WEdUSHqsG4CIK1YyxwN7q8y1XHpo/3iF1w3k66GHUbr18jA6FfKoQ3fEchqdw
 aj4ZyZMM3DXtq7Cu2YUwxe8UHA/d8orY9sBQwtBaPmwE9Jx2aixc3uaG0rTiXTsjfapfFB2Jee5
 ix3QGQCbUNG/oK4e5f5ZfXtMtq82h/8GX/i9pVkGDD8dYSKxYCjhYx2Eruc5hHMiqR2XDAE+Ywt
 qKDz66aDb+WSNdR9L2mVOtBeCNSZ0Tk4oUeoYNLAaIqyQ6I/Dq3Kh8vazHqEWBA2EYVHbycc9wC
 pUslx5GCpYtbm2TxpqA==
X-Authority-Analysis: v=2.4 cv=CYg4Irrl c=1 sm=1 tr=0 ts=6a15ea0c cx=c_pps
 a=vVfyC5vLCtgYJKYeQD43oA==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=NGcC8JguVDcA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=_K5XuSEh1TEqbUxoQ0s3:22 a=EUspDBNiAAAA:8
 a=xUBqWrrpq4f8rQ7XQh0A:9 a=rl5im9kqc5Lf4LNbBjHf:22
X-Proofpoint-GUID: EK6v638j3SxTwVeNJEw0DCexk7pYlrsJ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-05-26_04,2026-05-26_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 adultscore=0 clxscore=1015 bulkscore=0 priorityscore=1501
 impostorscore=0 phishscore=0 lowpriorityscore=0 spamscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2605130000 definitions=main-2605260164
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260526_114429_504223_0DD02206 
X-CRM114-Status: GOOD (  12.58  )
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

Declare the USB QMP Phy present on Shikra SoC. On this SoC, although
there are DP registers, the required internal pins have been removed
and hence DP wouldn't be operational.

Shikra needs 3 resets (dp/ phy/ phy_phy) to be asserted and de-asserted
as per hardware recommendation. Extend the bindings to accommodate the
additional reset.

Use QCS615 as a fallback since the software interface is compatible with
Shikra.

Signed-off-by: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
Signed-off-by: Pratham Pratap <pratham.pratap@oss.qualcomm.com>
---
 .../bindings/phy/qcom,qcs615-qmp-usb3dp-phy.yaml    | 13 ++++++++++---
 1 file changed, 10 insertions(+), 3 deletions(-)

diff --git a/Documentation/devicetree/bindings/phy/qcom,qcs615-qmp-usb3dp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,qcs615-qmp-usb3dp-phy.yaml
index efb465c71c1b..65ae4c6e09db 100644
--- a/Documentation/devicetree/bindings/phy/qcom,qcs615-qmp-usb3dp-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,qcs615-qmp-usb3dp-phy.yaml
@@ -16,8 +16,12 @@ description:
 
 properties:
   compatible:
-    enum:
-      - qcom,qcs615-qmp-usb3-dp-phy
+    oneOf:
+      - items:
+          - enum:
+              - qcom,shikra-qmp-usb3-dp-phy
+          - const: qcom,qcs615-qmp-usb3-dp-phy
+      - const: qcom,qcs615-qmp-usb3-dp-phy
 
   reg:
     maxItems: 1
@@ -33,12 +37,15 @@ properties:
       - const: pipe
 
   resets:
-    maxItems: 2
+    minItems: 2
+    maxItems: 3
 
   reset-names:
+    minItems: 2
     items:
       - const: phy_phy
       - const: dp_phy
+      - const: phy
 
   vdda-phy-supply: true
 
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
