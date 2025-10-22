Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ED2FBCCF9E0
	for <linux-phy@archiver.kernel.org>; Wed, 22 Oct 2025 06:50:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sEoymNO1KhRtuI4DFk0Dq4iLrEEXyXfI9UMMXdbzqPo=; b=BL+obbHtTPUMvB
	t0QxFey7vsHRUJ1teEboBtanB429rOwhMhDQfQoi3yez1cvBnR5uJrmxE8Mv5tdXB9Gr3zTglDvc+
	dhlIVqlU8MPkbLOnRQBY4s+Vhc995rAe5EP4o8qJ/3CkQzXUufVY9fksmRIsavSYgvd9KcoRRprO1
	u6ipzY7JS7RjHcjJsryj8tWlLEXzf1nWZMqfPPVQCdKqO8G+mGVHKNmmreuPNDA5dJVvFbVEFra+E
	4edz5XDgepsolKf/ceWZp30qn/y9vOuCfufPWW7VTA5kgs5FMGb1HRbiTODZ/5bXc3u4XnfwBsLWY
	/9BH2Gy24em9FmCvrI6Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBSgB-00000001iuO-2NfX;
	Wed, 22 Oct 2025 06:50:39 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBSg8-00000001isK-1cTB
	for linux-phy@lists.infradead.org;
	Wed, 22 Oct 2025 06:50:37 +0000
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59M2h7CL032759
	for <linux-phy@lists.infradead.org>; Wed, 22 Oct 2025 06:50:36 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Aqqkie38Io4hu0mb64dIZJD1IDcsSkJekF9bBtAk5ic=; b=acozxuFWNNyrZicH
	stc8JyLtyz6HSKaKUMQ0+36x/4J6OrwZlVc63q5PS7sCATZgF8jc3N5F8qjl6yk1
	SiPNiuWCcSbCNrmyvxaAU8SJb0znn6R5KPX5WgxNAOrY8Jslxhw5V9zF9c4/64L7
	28Ea8XnPbY8najId7WF1G9ZgzmsLdbC5NHLh3qoGgjvWxEHtbh2WeVXmBQ3cVp2R
	v+vjTjV5c+5L81VS2L9p1EYgLBIgBEONtKGeRFnroMu1UH7oO/mGqxjJ4WQeLbyZ
	Pf2lwwLeqHfgnmn9AV9T8Cn6gEAZvW62YZtk75069AjGsTTEf6bCYhDQP4/NxNDT
	SjnStw==
Received: from mail-pj1-f70.google.com (mail-pj1-f70.google.com [209.85.216.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49w08w95qp-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 22 Oct 2025 06:50:35 +0000 (GMT)
Received: by mail-pj1-f70.google.com with SMTP id 98e67ed59e1d1-33bcb7796d4so5913296a91.0
        for <linux-phy@lists.infradead.org>; Tue, 21 Oct 2025 23:50:35 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761115835; x=1761720635;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Aqqkie38Io4hu0mb64dIZJD1IDcsSkJekF9bBtAk5ic=;
        b=Mf35l50QYCR2w+OGktRRTSHgc/WF6qeTNgMsbA3oDxmBUqofVsGaqnJvSvZUDC0JGs
         j7b1WFPQpoJTWnLeYTzTgGRJ54/Ym3B4fPg8cgthZkvR/G+M6RU+fBsDIMdXb9u3bUfe
         XX2gKs9kYEJtXImfE+lAJSqjQXi+mkAp0kDZDoseIPtrcaikum3eM13M7nmC02XXLepx
         koP9Hr23rdzPa0Y9TwRolk1w+Ijlh19uHgMTtoMScQOaMoXEtXpfppFBhogELelifxDg
         CLJYL6bSzk+2gsgcC94wzQIMlMR1ipL7aCROzzBw7lIK/JiU9/fOsSg8qBZJA7ZR5QWg
         Zuuw==
X-Forwarded-Encrypted: i=1; AJvYcCVxzN8Usx5zXCiGmIKbvisg0avfC9Pz4CEgmGNsLZdNreIurqVWgWCCSjggQbXgIgKu8pWL3oUly5g=@lists.infradead.org
X-Gm-Message-State: AOJu0Yzohpx9LO5g95L1wY7O8WIw4QNnj453ZYa4yh8xI2z3JrRbxb7W
	m38KvoAoroLewDCKjkGZHz0LvR0JHTV+GXwUfeeoYAuCN+R40OWrEBqFT4wZT+kvGKYwz+M3WVn
	Wvkouh3ONwhJqSW1teScLaHw5xhqgAn27dMnB+Zoi5Z9BhL0lkES0zhYgZ1Wr7U7YMPuWhmQ9u2
	0+jyk=
X-Gm-Gg: ASbGncsrr0V1lJI+P87PmyCc/xN5kUrpxF1lD317TfvzVs0YtIXuvzD946tuHgK0qGg
	wt2+l6EpomM/ADEwdgm3Z2S2Ii2E0iRQ/5H8ZsQq734A/oesoAw3MWHJyJvYdTyM0ZIrK0yeKvJ
	jGruhgVw8gb/sEwgE6OK2a/wAVuCpKPPLXF2xEkEHzC4URvM6cK22SvqN0ESnNqo+vxQy0Ll/h6
	90VsUR/K4Kzd1W3K59TryfUs5KsYknJ1eXKcSGhCOQFmv5oebs+RFSjFLWbk8UaWWjZM7sJNXso
	Ikwb2JM92a7l/GpfVrWsPNNvxB4lBddGm+8Scm5NEKJK7YWtU9eyIk6tD46qtWj0LotmTN9U/ZN
	TmMEkHkccJ28BryRPTit0mFlNwJmjAYWJFfQlDruDxb/2/zGICw==
X-Received: by 2002:a17:90b:28c5:b0:32b:6cf2:a2cf with SMTP id 98e67ed59e1d1-33bcf8934ffmr22879421a91.14.1761115834820;
        Tue, 21 Oct 2025 23:50:34 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IH1MCPo5x+mW04/fDDzB+zbN3zM7FjsI1S5Bd83h/Ux6zbFYXkZe+R+NWCCsh/3pGGknR+VEA==
X-Received: by 2002:a17:90b:28c5:b0:32b:6cf2:a2cf with SMTP id 98e67ed59e1d1-33bcf8934ffmr22879401a91.14.1761115834395;
        Tue, 21 Oct 2025 23:50:34 -0700 (PDT)
Received: from hu-jingyw-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-33e223e334fsm1560285a91.8.2025.10.21.23.50.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 21 Oct 2025 23:50:34 -0700 (PDT)
From: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
Date: Tue, 21 Oct 2025 23:50:29 -0700
Subject: [PATCH v2 3/4] dt-bindings: usb: qcom,snps-dwc3: Add Kaanapali
 compatible
MIME-Version: 1.0
Message-Id: <20251021-knp-usb-v2-3-a2809fffcfab@oss.qualcomm.com>
References: <20251021-knp-usb-v2-0-a2809fffcfab@oss.qualcomm.com>
In-Reply-To: <20251021-knp-usb-v2-0-a2809fffcfab@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: aiqun.yu@oss.qualcomm.com, tingwei.zhang@oss.qualcomm.com,
        trilok.soni@oss.qualcomm.com, yijie.yang@oss.qualcomm.com,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-usb@vger.kernel.org, Jingyi Wang <jingyi.wang@oss.qualcomm.com>,
        Ronak Raheja <ronak.raheja@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-99b12
X-Developer-Signature: v=1; a=ed25519-sha256; t=1761115829; l=1499;
 i=jingyi.wang@oss.qualcomm.com; s=20250911; h=from:subject:message-id;
 bh=UA20oYIe2aKRt+hHDRY08ujyC1lJkXJo8K94H9otar0=;
 b=3AVv0Hfux1vndXJGtkEvrd/sB7HaosEIWlJIlOD3TbcH42qfehFrdp6qrGC0K1hG9Ctaz8zaO
 Q70neP76ZRYCGuBw0YFNtxN4BJd4ySveUfc6Iiw+esY64N3KZlI9G6N
X-Developer-Key: i=jingyi.wang@oss.qualcomm.com; a=ed25519;
 pk=PSoHZ6KbUss3IW8FPRVMHMK0Jkkr/jV347mBYJO3iLo=
X-Proofpoint-ORIG-GUID: Sxbeej5Fq58n1OSMmf6D29_lY0hc1Pf_
X-Proofpoint-GUID: Sxbeej5Fq58n1OSMmf6D29_lY0hc1Pf_
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDE5MDA5MCBTYWx0ZWRfX3riBSQYRJ5Vl
 ZgnrJN4CMRR8iIY4oK/HeNhvENk2CH+2dly1TjWeqG0oJl0hRZgqwCt/F0pKHAPRzJVd6dmVMsr
 swh1/z8IwigkrQfqlif4svBq71GqK+Pr7i82LIxLvuYIYreJZ1tuzl5vjwA9ItueDz2muOimoS3
 IBflaC2yiTOv8tsw7ktFk7de7lDcS+fsMDcGYpHTnKzGuejIcO7MxlO9MIzbgkKBB2DYRvX5U2T
 PoT+s3AgjcJBIbAspgb/F1/VAoxXcBwaB1HCl6UOSdLHXeDS7gjLjTmDk9GKWji7pe3tYO07Wg2
 wX+hdZuz//Ns1UgstjG2ks1Y0Jj7fmChxUnJ2x/j4S1myWPSPW04vHK+CRUH3nIVwRsL/BDAWSf
 exeLj9rhPA2jvvmKvyYc0nxr2YOL7A==
X-Authority-Analysis: v=2.4 cv=V5NwEOni c=1 sm=1 tr=0 ts=68f87ebb cx=c_pps
 a=0uOsjrqzRL749jD1oC5vDA==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=cFzXH3D4Jfz4SSrHOhAA:9 a=QEXdDO2ut3YA:10
 a=mQ_c8vxmzFEMiUWkPHU9:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-22_02,2025-10-13_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 malwarescore=0 adultscore=0 priorityscore=1501 lowpriorityscore=0
 spamscore=0 suspectscore=0 clxscore=1015 phishscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510190090
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251021_235036_811392_1E72A113 
X-CRM114-Status: GOOD (  12.00  )
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

Kaanapali uses a single-node USB controller architecture with the Synopsys
DWC3 controller. Add this to the compatibles list to utilize the DWC3 QCOM
and DWC3 core framework.

Signed-off-by: Ronak Raheja <ronak.raheja@oss.qualcomm.com>
Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/usb/qcom,snps-dwc3.yaml | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/usb/qcom,snps-dwc3.yaml b/Documentation/devicetree/bindings/usb/qcom,snps-dwc3.yaml
index d49a58d5478f..8d1ef81b3962 100644
--- a/Documentation/devicetree/bindings/usb/qcom,snps-dwc3.yaml
+++ b/Documentation/devicetree/bindings/usb/qcom,snps-dwc3.yaml
@@ -32,6 +32,7 @@ properties:
           - qcom,ipq8064-dwc3
           - qcom,ipq8074-dwc3
           - qcom,ipq9574-dwc3
+          - qcom,kaanapali-dwc3
           - qcom,milos-dwc3
           - qcom,msm8953-dwc3
           - qcom,msm8994-dwc3
@@ -200,6 +201,7 @@ allOf:
           contains:
             enum:
               - qcom,ipq9574-dwc3
+              - qcom,kaanapali-dwc3
               - qcom,msm8953-dwc3
               - qcom,msm8996-dwc3
               - qcom,msm8998-dwc3
@@ -479,6 +481,7 @@ allOf:
             enum:
               - qcom,ipq4019-dwc3
               - qcom,ipq8064-dwc3
+              - qcom,kaanapali-dwc3
               - qcom,msm8994-dwc3
               - qcom,qcs615-dwc3
               - qcom,qcs8300-dwc3

-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
