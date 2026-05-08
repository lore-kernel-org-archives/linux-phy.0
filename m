Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 110EACD37B5
	for <linux-phy@archiver.kernel.org>; Fri,  8 May 2026 21:33:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RsRYHRna8c/UCe8vjLkz9Imn5Z6dwSthbada0ojs+8U=; b=C6J/u4TuuuM2L+
	99rH3E1y6z6JEg0MdLzvKpHgoZcU50Qci0I50Tq5Ae3DtsQrCcuu80csgRboOt07vU+VsIsdN8eoN
	Tb98FPTGkdTuFGWccuitGvGSaNusg8xXrjo8ISjwY0lgBdfTVGzlJFNGlaqc2vvscbBdjSi+yXrVK
	pZAnGN6i9kut+lURK1pDwF/cpK0SWM+Z/SzA6F1BVN5M7V01cOhYUEh4m7bs3sLCvY7o+pT2JmqX5
	zhBn+RVElmmO7zDTEdtIxn9m4BpxudNcRhY6PW4A9tGEZjzPub6ywuRmH0qpb0fFOVySJyknTkOrU
	gCODfjZRK9NNMrCh+ISA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wLSoo-00000007Z8D-39CG;
	Fri, 08 May 2026 21:33:10 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wLSom-00000007Z6Q-0OQZ
	for linux-phy@lists.infradead.org;
	Fri, 08 May 2026 21:33:09 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 648DE68F258436
	for <linux-phy@lists.infradead.org>; Fri, 8 May 2026 21:33:07 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=EkH62hBfkTl
	pUoyRaZs3w4Fu8ixJncnkuN92AWiCoMo=; b=c/Sg34Z13JGJrprRrYmjoW2KJlQ
	nCxnH11PY1RZxiTbM0zzIVYt8RPK2R8OsqE3yXy9T+7j7F6AxI/Rro9kd9ykKMKc
	YoRbKHx1d9bHmtE12dRvXrJelcfehh7+DUALqp+rNnazYV3vUjZrdkOg/tcnbpAy
	jKSNKHHvdJ8MyqInASOa3Mcg5vCQ0z3XIsK4P/k/4KnrOeWFl+8rl3n6eiFKWnPe
	PcAG8nDbSOF9qczxOWoF5P/Z5WYFRG3rv0nHqyxanxRzAMNLXMmwCbaPYaaSo7xj
	arkOyg8d65PJkKf7dtzZhTCrJfJXKDeHsBLy25HRdSDpLi1w8NiGcQcpVnQ==
Received: from mail-dy1-f197.google.com (mail-dy1-f197.google.com [74.125.82.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4e1auek6nm-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 08 May 2026 21:33:07 +0000 (GMT)
Received: by mail-dy1-f197.google.com with SMTP id 5a478bee46e88-2ee34588671so3618760eec.0
        for <linux-phy@lists.infradead.org>; Fri, 08 May 2026 14:33:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1778275986; x=1778880786; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=EkH62hBfkTlpUoyRaZs3w4Fu8ixJncnkuN92AWiCoMo=;
        b=cYgAL2x9UqnTsgi4EggHP/4HWBViNm8t24DVY6rjMnsl1JfnMAWCLJkAohFR0X5/WC
         IEZqyCtrSoEuzu1lc987Ru5pLxGXvZYXR0nQ94dn2C2/C6fjoDDWBPM+jCcw2l6aD8AZ
         oXaGAxuD8SjS1HT6KBRkaIo5H1XxklFL/b266fwmCTvHk3o2nlYMU9q4gP1NU3/FiVIa
         CdX0yUU2h93LPJKZP4+nrTblcSnC+SPtdX9+wny2mU4r1WFggkywf4GIClLtwj5qAhX3
         cUZRkiOY+vq9yS9xMOprW9KIgJej39BE2jDJdbSU3EXq7ZXKsddcG9CS9js2YhOOSN2z
         Pi3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1778275986; x=1778880786;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=EkH62hBfkTlpUoyRaZs3w4Fu8ixJncnkuN92AWiCoMo=;
        b=TFDDwKfUj0ES58oOstD2DwqEGPyiJKlgG+GAjOAojxA8f+JlsBb808tfmVrz+4ePkf
         mfDx8RcU3i4/iXdFAXkRX/VUdOKO1MMppeRAPkajFwKWKtT41KHG5J8zRnRUbhyH0ZMo
         V61DlMEvCzMf7LltGvDU7NLpiRqIX1yFVYBOiqAQuQKjbqQmUO44SlJvpq7K/63QtRI9
         0eMjGUHZj3flbH3Ayny/oudBsL1MpvrwbTibQVEYEVjLSyXu/YeeIhcMuxt388WnpGCn
         HzFS1JSREOQyJpX3azxB+iXdyOSrDCnuiys2vBNXcBcxxwgbmZwcOKO2UhZ5o2AaCxqy
         LbGQ==
X-Forwarded-Encrypted: i=1; AFNElJ97BauEfEmsnNDgdNma7N3Rwviad+YXTi6nnjyTgmDRNWDtvV5gQdK9BtRUW4Wevu0+wY3thUMD7G4=@lists.infradead.org
X-Gm-Message-State: AOJu0Yx4tBvvHplqJO6dLjNu/TlzldSI1CDoCJJrlupPG0Kwk4SklPAV
	kcco5OB1olIqXGFMO1Z9pQ+A2GPJCflg63tnzUiHl6ytDNyQYAyyM5TijLSDfYFm0XLn4QpkTZz
	aNG3kNM1+5K/4x+CElidhLo+/AtEVkB7d7XYTFPYAxM9p4YZ4h3juZpF7xd9yI+xyngSG
X-Gm-Gg: Acq92OHlf2dEoOxbA3FoYJJfRBrK2M4lB8UUWfK5hxGIhPHSX152FZnN4tNbj2XCCRq
	HO8znCnuTn0XN46EOI+RNFOunojk4e+3D+wb4HzeJgGph1zMfL4utBYmIxdl9t85c9t80+TB+I8
	rF/SuoHvyxGpKrH1QoE7WHzBIDtoCEkK3TufUFqbf4mDjLnaOVHDjml0SgU+fYpANcZAxqRRtJe
	Dg2cGGR1wTckJQ5Zd1eGK2hrd8okCWTrCER1ygnXfV8KDhorUnSfQDOu+GxvP2x7hoSAqHZHIQJ
	OneW+c9C4oB2syZ9F6qvufpPclRmO8DukUlWbDA+0j2122OKeNTJ+VO9/ZHeYc+LKzBQyxx1q6P
	EBObZxgMNedIguH34RwPf38AXyxgAf110j/EDdg/T5tujllWpKaZdjFptH0ScEbHzTwDG1/Y/7e
	M=
X-Received: by 2002:a05:7300:4313:b0:2ed:e14:42e7 with SMTP id 5a478bee46e88-2f54b068c4fmr6969112eec.32.1778275986125;
        Fri, 08 May 2026 14:33:06 -0700 (PDT)
X-Received: by 2002:a05:7300:4313:b0:2ed:e14:42e7 with SMTP id 5a478bee46e88-2f54b068c4fmr6969082eec.32.1778275985563;
        Fri, 08 May 2026 14:33:05 -0700 (PDT)
Received: from hu-rraheja-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2f888e3e285sm4871285eec.27.2026.05.08.14.33.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 08 May 2026 14:33:05 -0700 (PDT)
From: Ronak Raheja <ronak.raheja@oss.qualcomm.com>
To: vkoul@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, robh@kernel.org,
        neil.armstrong@linaro.org, gregkh@linuxfoundation.org,
        dmitry.baryshkov@oss.qualcomm.com, konrad.dybcio@oss.qualcomm.com,
        abel.vesa@oss.qualcomm.com
Cc: wesley.cheng@oss.qualcomm.com, krzysztof.kozlowski@oss.qualcomm.com,
        ronak.raheja@oss.qualcomm.com, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH v3 3/4] dt-bindings: usb: qcom,snps-dwc3: Add Hawi compatible
Date: Fri,  8 May 2026 14:32:33 -0700
Message-Id: <20260508213234.4643-4-ronak.raheja@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260508213234.4643-1-ronak.raheja@oss.qualcomm.com>
References: <20260508213234.4643-1-ronak.raheja@oss.qualcomm.com>
MIME-Version: 1.0
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNTA4MDIxMyBTYWx0ZWRfX+D2IIMITqYb7
 B12TVe78Q6wTAuF2q7BU8TmhsHfmhqT5rXWCY5fbIcTXs9Qj+z/0ahvtlH4iAvqyCsejSHQ8M1i
 6abQAoz21bNC1q8ip2PV3Zqx+sW2pADLtEtAc2pbieCwuonmUNVWLVQcKyfF6MTYF7Mswwq0G6J
 YX/YmHEn8CbKDBc0iqBbJqBMARkPNmIdS893ukrmiYgLKjhL7S1xheSMp+yb8xflsryp0I+OZxI
 mT7IscdujhMm2XyFTpwk/9iOun4mZ6c+GHWJHL9viCaOy6mRZD13z6+dCvPbCeD3P6gRWaqygZ0
 8ZXsWIysCDELaI3nTYiR5YPm8xpR4Iz9neIaMk3OG3SnNhLrUwu6+0jRbah49nRsoiWBiVlw7V8
 ITI8IxKugzQyqp+Z8SZRM5Z+7mWl29K8dCa7+NVWcljg6EPMu59zXqwLGemyqn7nJ9m63ThENsm
 eURQCVljv2MkgNcht1w==
X-Proofpoint-GUID: eAlIMEgzddkYIjGEv_p_sTcTdKunV_1A
X-Proofpoint-ORIG-GUID: eAlIMEgzddkYIjGEv_p_sTcTdKunV_1A
X-Authority-Analysis: v=2.4 cv=fcydDUQF c=1 sm=1 tr=0 ts=69fe5693 cx=c_pps
 a=Uww141gWH0fZj/3QKPojxA==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=NGcC8JguVDcA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=3WHJM1ZQz_JShphwDgj5:22 a=EUspDBNiAAAA:8
 a=6lSwUGAo5LeF7p0M46YA:9 a=PxkB5W3o20Ba91AHUih5:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-05-07_02,2026-05-08_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 spamscore=0 bulkscore=0 lowpriorityscore=0 phishscore=0
 priorityscore=1501 impostorscore=0 adultscore=0 clxscore=1015 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2604200000 definitions=main-2605080213
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260508_143308_249185_697A47B2 
X-CRM114-Status: GOOD (  10.26  )
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
