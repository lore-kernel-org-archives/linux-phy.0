Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 04E5FFF8862
	for <linux-phy@archiver.kernel.org>; Sat, 25 Apr 2026 07:00:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eZTgCgMIb2tD7HsGFzAZNyUy+GapNTToRi8KHuiub5U=; b=VwjfGB+X288XET
	3H7XUQfovi3QkR342qhTAWRfyl8gMjePm+Kc6SKCciOAewt8qyYVNlPVVnl+xuTKqVk6FK14jZX1o
	+M1eo+dMY4KUwtAMA3K52L6tk1KXUsnT6c1/6IiSewrj1qFdcpPpe+2ZQqXyu3uJGHGy2CgI3CWuC
	w0HWUJTJOjtzg4uGVoXSCPw49iv5qdLbvGc5tLid11NoSNHC7hLYvTPJmOrbt2LLFrGtcGDgppvnO
	z0j1QUHoBvSxHQsPU2fdVtT9Wjskzd9rIfAwIODIdYNoYaLW2in2rFDPY8WciZwT+3r4YWFw6lA4Z
	26X4k57qD7qLUj7kP4wg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wGX09-0000000E9Lm-1XBt;
	Sat, 25 Apr 2026 07:00:29 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wGWzz-0000000E95y-14IO
	for linux-phy@lists.infradead.org;
	Sat, 25 Apr 2026 07:00:20 +0000
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 63P3RfpR2952631
	for <linux-phy@lists.infradead.org>; Sat, 25 Apr 2026 07:00:18 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=uwC5mL1xfh1
	AHGE2caBgkXGnAkeW6s6MztU7SU+1oKE=; b=K6/Tg3KPq68RgCj77DQeBvg8LTk
	msfFsI/az+anqAs3FcDle+P9aOX12+UqxonBvoCdZugzhGPxHwNUDr2N1A83+WXB
	INAW7jkJI7zsUzCfArQKZLTkpF4GRSrX2EQA/N3zWL5DU1x0QO1g/d9UcyF63jZx
	MmZtvPE0q3Xa79Oc8s0f5UOAewaZ8TEcsGiyhl4FJp4ioVyjFi+rKfoujkQDATRk
	Asu62rHjwcz6QJILTZBmjneaoJe12azmSxj0icc484Qn09xrbdU1HdYWFOfQ995u
	quzNWi28WH2+NqTBVaZejixG7WUf0YB58z3RtKVVSKz5T58YAjlgBrCGbpQ==
Received: from mail-dl1-f71.google.com (mail-dl1-f71.google.com [74.125.82.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4drnqrgbgm-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Sat, 25 Apr 2026 07:00:17 +0000 (GMT)
Received: by mail-dl1-f71.google.com with SMTP id a92af1059eb24-12c726f4055so8675500c88.1
        for <linux-phy@lists.infradead.org>; Sat, 25 Apr 2026 00:00:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1777100417; x=1777705217; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=uwC5mL1xfh1AHGE2caBgkXGnAkeW6s6MztU7SU+1oKE=;
        b=gSNuI8e3BunplPdX6u95rFW4RcIs9ifXexhn7D9oXe83sMIYyxMuNnma6YHNGKhtsf
         VPD5a+Vb92ikrRrRDak233RtCaJjEeYBHc50R8xjRBBlnVHCMhR9E4q30A6Pf7heb3NG
         epVgOwGoa3tccPD/dsrXWadCrX+0CRJkoTpzdMUq6tbg4ThB0A0T9IUGlLdwixeQbAmy
         kK+qdo5yCKRURasMEA/fLVw9rmCQHmi3DyRssPrf8b9HkuI4Io/aGtOku319wlS2Fy59
         GQcH2hbZ1woa+p7tJ1zDSwe+pqV/wXpA51nhN+O0k7O+bIba7g+SSAKRCr2vaR925QB0
         21Ow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1777100417; x=1777705217;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=uwC5mL1xfh1AHGE2caBgkXGnAkeW6s6MztU7SU+1oKE=;
        b=RiK+H+I/UJnfRndgH0rYg/PSqxKJQjm797xgrGYhzCHP6LIGIcjqr4dhUeKUWwqd8E
         +F3aVhazu3Wg0hbMpjZTwO6pLdJSVw5ZgrUfjtXvr+B5tFM6ke0jjDpQGxWiGFO7g5ED
         RViCxoWq9niFrW/8U3aFg0Ybx808gVHaCOYm+5zxTq9xQ4axuSIQM8dZ2pqpCLk5spki
         tF3xfdr8jRXCZQn8SnoSHHU46LxvwwzTvKs4ojjX64fijmbUofxz23LqDz0g00rqXe6b
         qIbgHyuKTgzaK16XF3BMKxUsXVGjocLlP5klMwV+lfV0Yv/d/zvxuIMKCsawElpOKa6r
         6+4g==
X-Forwarded-Encrypted: i=1; AFNElJ/31Aw9J/FW8j8AnJPIILvhTRsgQa96aWbCS2q3cs88l8ME32dAvDGHTrL8U9+PUd5JDlUUYSdJl+c=@lists.infradead.org
X-Gm-Message-State: AOJu0Yy7BH6BIuP4KWJdjU16t2d24zFopwVkiS3wx9/asnDIgDvwrq+j
	/a8i8P94KFzy+P1crUVSSpEY/XCADaJ3uCrxT59xlArLPfOgjtFT65soiZ1+mCCO6mW3IOLkDLC
	NQaPtogTUQT42VRV8iinv+XFYDB/hDfccZps6iPQvkr+7VctFqG5xi48LbdGkDspe+pUP
X-Gm-Gg: AeBDietqwZstIDRTP7JDEi+XMTa9IHl2dDabL0PQyan2Ps2tr/MNqVeNx9DyAt7xnSQ
	AUikn6iynalW6koH1aRHtP/RYV6GAyxj6fw/UUPvS0vOC2k2Yi//Qk7nFRv9hT2laurWNd15kN6
	zKv5hdJymSkR7MhfNoAZZkOr3CACkUU952laz81/jAox9bAc1Fh839w8sbYnmrFoHVnp6KG4vVa
	l4FNQsdw2ai+a6dwKeYHRq0+RNFjFfhkuJBeIeUA02w5R/elhqKym/q0cyGjSCm1qJSOIHxODCo
	YOBJvdh3F3UcvWZ5SodRpFc35cItk50NmXcamFJU1yU+PnhAaVqUFFjKma7JfSdo3ktgjEDqvFn
	3q2JJhu7aCA5he/nPb+TdIobbz+vdiSFMnrPqp0tYXvi0rkwwoxiuuTV0/srL7JUf2idlVEF3qR
	uNHRHgntQO/g==
X-Received: by 2002:a05:7022:1282:b0:122:33e:6d41 with SMTP id a92af1059eb24-12c73f975e0mr15319115c88.23.1777100416364;
        Sat, 25 Apr 2026 00:00:16 -0700 (PDT)
X-Received: by 2002:a05:7022:1282:b0:122:33e:6d41 with SMTP id a92af1059eb24-12c73f975e0mr15319055c88.23.1777100414748;
        Sat, 25 Apr 2026 00:00:14 -0700 (PDT)
Received: from hu-rraheja-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-12dc2dfad8csm9430630c88.3.2026.04.25.00.00.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 25 Apr 2026 00:00:14 -0700 (PDT)
From: Ronak Raheja <ronak.raheja@oss.qualcomm.com>
To: vkoul@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, robh@kernel.org,
        neil.armstrong@linaro.org, gregkh@linuxfoundation.org
Cc: dmitry.baryshkov@oss.qualcomm.com, konrad.dybcio@oss.qualcomm.com,
        abel.vesa@oss.qualcomm.com, wesley.cheng@oss.qualcomm.com,
        ronak.raheja@oss.qualcomm.com, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH 3/4] dt-bindings: usb: qcom,snps-dwc3: Add Hawi compatible
Date: Sat, 25 Apr 2026 00:00:01 -0700
Message-Id: <20260425070002.348733-4-ronak.raheja@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260425070002.348733-1-ronak.raheja@oss.qualcomm.com>
References: <20260425070002.348733-1-ronak.raheja@oss.qualcomm.com>
MIME-Version: 1.0
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNDI1MDA2NSBTYWx0ZWRfXxSxeNiC1xWfJ
 J9RDLWtaNr5GkxsbSP3Qg4jzR/C7uTW/XCSlWv0D0vasrjbHV6f4/7kDxvt+RZDYBr2rQh9z2in
 ZI86BxNpwMW9V8mv6aoMi3HgHrSoO7VHcVzs15VciC0OoxEZt7dm+OGj5EU8K7J4qGHasjv8jp/
 JT1M3tp6Ob+MUFKzRjlxCm0Hkm64l+r2VebPnSe1IKl7gQSCL+bSruO4cFOW3ug+SiZbG7AhyC4
 jMhYPLGZOSqsXBPZPPmMWBeV9eSBL7JS5pWig3oMY4sr+UfH44ltpDiUFPCiN9G200taaY/1Ld1
 AbI/T7F3Qmdf/ggB5pH55+3TqjbpYoaBvSOReWpzizzPYVfcwbHLEpnYYG3JNiVOdn5tHV/DvEQ
 w68fM99+ChnCNLdob+i6hEvu2vB/VLbehiOmFGoZVqDndLQGAiKuXZXUS+eqQeBKkCOOztof/xQ
 6z7iv3GNGPD8BsBTdHg==
X-Proofpoint-ORIG-GUID: OxLggTtzYFJ6gGtH25akEK8ly0eI1oEC
X-Proofpoint-GUID: OxLggTtzYFJ6gGtH25akEK8ly0eI1oEC
X-Authority-Analysis: v=2.4 cv=UcthjqSN c=1 sm=1 tr=0 ts=69ec6681 cx=c_pps
 a=JYo30EpNSr/tUYqK9jHPoA==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=A5OVakUREuEA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=_glEPmIy2e8OvE2BGh3C:22 a=EUspDBNiAAAA:8
 a=6lSwUGAo5LeF7p0M46YA:9 a=Fk4IpSoW4aLDllm1B1p-:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-04-25_02,2026-04-21_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1011 malwarescore=0 spamscore=0 lowpriorityscore=0 impostorscore=0
 adultscore=0 priorityscore=1501 bulkscore=0 suspectscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2604200000 definitions=main-2604250065
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260425_000019_419013_B9421E9C 
X-CRM114-Status: GOOD (  10.54  )
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
