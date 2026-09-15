Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E46BCC982C7
	for <linux-phy@archiver.kernel.org>; Tue, 15 Sep 2026 10:10:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TUaJ+OqNyzboJ8ZpmfFe4oTSx993e6p5CDtkF5RYY+g=; b=njcdY9n6uByuE/
	FSjRNHIRXuAQ4d9t99l3PPdvaZknDnaMiu3+j4h0Rg90c4o6NoGXmljQj+NZC65FABwiSM9Pk5V6e
	p7XeD+UuJBwmBqT8nLZNmycW3/LtAAzL0mT2NWkMQolHvSi3lcK0hNYx8QqwshqAKyed9OUtNjh3C
	CBCa77LIfcweWBNC5cB41cty5vEv3Vl5RMLte9XPJr0v0M5e6AQpv5ediNQ7JCc/rLqflBfU34WB3
	eQgxd+HcqSlV/vZ09Io/ftv+feLxwrtqtBktWytC/SbpefreX2Ivp83RHDZKr6nJj4rKNRrDD0nw9
	65e5hW6GoWjeuymDOmXQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x6Q7o-00000005rkK-1YUo;
	Tue, 15 Sep 2026 10:10:52 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x6Q7W-00000005rRf-1WwC
	for linux-phy@bombadil.infradead.org;
	Tue, 15 Sep 2026 10:10:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=Lh/wKlqB/WPrZqByXGDRHGphMVPY+G2Z9l40mUOu//w=; b=kL1aRFQxit33dM6txB8QJhXeLh
	5G1cI8d4EZmsBRjse5w8nusLzBa2oTCHANrzPSo/KkQ7gpF1O5YMxgq+hRtp0CgWw1HRx9mubOQaE
	Zi2QhOTG2++x7YSrIEZ8lhLgcOH082K3qLT0YVwCBAEkpczQSRU5pHoGQLfjoonzY9MapiWiaH4kG
	9aiDE7oiBLyBz9VuDDG1nANRiert258A+LohF9p8YLCyg1evN9sj4yYhA14GAGPlapqsun9IP2ly+
	LnvrL63VsmanDIBNJmgCqAEG6wbTnHFQG9TUVBiy9/jKKmo3dcRJ6n0JKApBC1iF53e1jbY0cGSfs
	Qi0KOUWw==;
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by desiato.infradead.org with esmtps (Exim 4.99.2 #2 (Red Hat Linux))
	id 1x6Q7R-00000006XAA-1ewn
	for linux-phy@lists.infradead.org;
	Tue, 15 Sep 2026 10:10:33 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 68F9gueb275467
	for <linux-phy@lists.infradead.org>; Tue, 15 Sep 2026 10:10:26 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Lh/wKlqB/WPrZqByXGDRHGphMVPY+G2Z9l40mUOu//w=; b=Try80uKE3AqxgzO6
	LT1kc7H03NYF+NaeUg2uTLB/SDV7u1zcatbAmZkx47HlMS9JulzciYA7zCGL/pPn
	Qlfo35xK4sC2AXK6X1HJYIx7EGh2rxY8dvv4fBu65p79izGeonU9iWgZ6mueB8YX
	DTNj+9ziWFArlMeOeYeY+rg3seQBkPemsjoB0TIvEJk5E7TdOpmpVewkm0XwT0fX
	Ner5xbGJI2O+6sciRrbGaVnLD2FqSlOBxlCFQ05Z2fSWdSRjR/ZlJCn8V6i1qsUL
	wPZTczi8M6jk04X/WjittjYHdsf417CFK9GeQeyhxmOw6d3wxBWKaQFVkLWbmx3P
	jXXeFQ==
Received: from mail-pj1-f72.google.com (mail-pj1-f72.google.com [209.85.216.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4gpyea17f5-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 15 Sep 2026 10:10:26 +0000 (GMT)
Received: by mail-pj1-f72.google.com with SMTP id 98e67ed59e1d1-39deb05ef51so2578953a91.3
        for <linux-phy@lists.infradead.org>; Tue, 15 Sep 2026 03:10:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1789467026; x=1790071826; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=Lh/wKlqB/WPrZqByXGDRHGphMVPY+G2Z9l40mUOu//w=;
        b=TBPAbykEbKiklhJWrJ4LsofBta39c3Ay0DmuW0SklnAHtkc71JWEgY1b67SLQuv/o3
         A1arUTOAfnv95J4mWm6/BSYdAhru8LAOY5Y4l6cohHBswdD0ZJ1iiPPCNj6kbenJvBMO
         RkAKjpbGhiPLtbcLSJMx/d+K3iY0t6cogLZwTHe2vvryqL+G3+ZC2kJh1Gg+VIgVBO0E
         2TJv7AH/HtxmnEZy+0MviWhhUyf5UzBIWvLJx07vjX06rPuu1Uwt7fyBQu3GYTmAKNYx
         4Da/yqbdnOpSl0WQbp5C5JwX3u+vnHTog/scdQjRiPIAuGRdyv4LxQ9Xs9oMkn3YetXY
         ZmWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1789467026; x=1790071826;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=Lh/wKlqB/WPrZqByXGDRHGphMVPY+G2Z9l40mUOu//w=;
        b=LLp63IitQ2uygF3sPtRHxegzx4kaDuJfzKLwSY7kDNYE91kG1m7EenolftWTMoMx7O
         Qzt0zZKJUd3T8/ypKOjiQtzr0epYviUutLXdYwCHRx3fyNyBsFJdFA4AZAe43H1KctKU
         uTXWmnDib2Kie80gaIcpQ+4hq8Fn8Hg25XWeTo8HBx0XM9Q3F0YQP3LHvCpftieZuoeQ
         a27sKsOs3Aj+CRNUh8AKuZxUJUc2CbtYToCUlBsqXEMxzmFLbjdaY+1eEQPz4TvpD7hm
         sYw2XjFefAz7hFEz1s8jZ3z6jYd9BJWKwQpMeKYR4t0l1Z4O2aPsw1gJl/PcNGwwezQW
         VXCQ==
X-Gm-Message-State: AFuF++mbTlvicpFDcZtXTWm3UC2W3os2ZCX2NL0WuJF/egeHFaDnArjK
	gFdYNeExXo7LzbcEYwYREf9LOnyFRvARkpjlW2VygPgq/MvX9NrOK6/39OUWxihk7n5Aqney6Ad
	rrkfeI87Xy86NzSLvMiFIJSxPPw1l6w+HSP6Bn2MYz8n5BZZW5vAngXj4JPheiYajUVqw
X-Gm-Gg: AYBFou3W+1eeC3qafC+xmDVZbg0jKmwyD14Kjul4OiA99hRW0b98X0ZdiFrLnme+01s
	xj0K9l0PJqmY7eTrBEuBKziL7iDc8uNDTWDmxf6JxgIx5iBAwwRfh2KBwUtnnHXT7BxYF16oeJt
	pqVPvzTqdPLztUTZyR8J8D5lCAN7/B51WcZJW5aEjLsgKpExS5j8byKUxZHCTwa8YTaY48hx6pJ
	/h7LaTVdA/vYNsZN4T2EjqZTtDpFgwAy/mjaxgDSb9wkY4QcynQv3jS/XcBtpmfpsSBWcQKmsl6
	zwkc8lLvI9vjNfoEyhs1THWOQrOkwUKT+eTxX4nYPLUBMGl028kk0iUmCGY74daoLYlnArNF9Ln
	NBBUXqC7+FO+KPrZoTPheg/rqiIqAuHJ1D/d6+rLnUZ+gpY2Nl3LGeyPoWlHr0KUXtMbmr+IUIA
	kSmkgqN0yGioE=
X-Received: by 2002:a17:90a:e48:b0:39d:ee20:1e28 with SMTP id 98e67ed59e1d1-39dee20248dmr8657158a91.21.1789467025539;
        Tue, 15 Sep 2026 03:10:25 -0700 (PDT)
X-Received: by 2002:a17:90a:e48:b0:39d:ee20:1e28 with SMTP id 98e67ed59e1d1-39dee20248dmr8657102a91.21.1789467025049;
        Tue, 15 Sep 2026 03:10:25 -0700 (PDT)
Received: from hu-hangxian-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-14382741839sm14244091c88.6.2026.09.15.03.10.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 15 Sep 2026 03:10:24 -0700 (PDT)
From: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
Date: Tue, 15 Sep 2026 03:10:04 -0700
Subject: [PATCH v16 09/11] arm64: dts: qcom: kaanapali: Add CAMSS block
 definitions
MIME-Version: 1.0
Message-Id: <20260915-kaanapali-camss-v16-9-c9f3f6f4180c@oss.qualcomm.com>
References: <20260915-kaanapali-camss-v16-0-c9f3f6f4180c@oss.qualcomm.com>
In-Reply-To: <20260915-kaanapali-camss-v16-0-c9f3f6f4180c@oss.qualcomm.com>
To: Bryan O'Donoghue <bod@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Loic Poulain <loic.poulain@oss.qualcomm.com>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Abel Vesa <abelvesa@kernel.org>
Cc: linux-phy@lists.infradead.org, linux-media@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        jeyaprakash.soundrapandian@oss.qualcomm.com,
        Vijay Kumar Tumati <vijay.tumati@oss.qualcomm.com>,
        Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Proofpoint-ORIG-GUID: qQ-w6-raYWzF37zOoNYXFhf8N6cEemSO
X-Authority-Analysis: v=2.4 cv=cehHPXDM c=1 sm=1 tr=0 ts=6aa91992 cx=c_pps
 a=RP+M6JBNLl+fLTcSJhASfg==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=VdqzKS8jKosA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=eoimf2acIAo5FJnRuUoq:22
 a=EUspDBNiAAAA:8 a=K4jxk-CqiRrnENM1qOEA:9 a=kZHQiraHdqabkTWc:21
 a=QEXdDO2ut3YA:10 a=iS9zxrgQBfv6-_F4QbHw:22
X-Proofpoint-GUID: qQ-w6-raYWzF37zOoNYXFhf8N6cEemSO
X-Proofpoint-Spam-Info: AW1haW4tMjYwOTE1MDE0NiBTYWx0ZWRfX+l7fGcSUDSln
 E9Drh5MC9F3wmCDSsmrTaWBDU8URNTIOCB4Sp/LMY7zQakeWyHlNw4LfpXpCkIs/iIv6kVY6dZU
 y6m+EDW1tyRUErQAzEvfrYOxhgkxvgk=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwOTE1MDE0NiBTYWx0ZWRfXyUDMKAA+JuCY
 I28++3lYuHt/7E6Ak6fgJTXL8ApMuIJxgZkIFhukZ51owbVINCY8RLODpb5yErJlAzcvz8AGqwa
 uIipBgktDgUf0wzhi25l8VaNlNxkmlAhIMeEayE2BamifC1T49VUzAcHATcuODfoQrT6jJ4iK+x
 8Ayc2KfhU3CCUVps/0TTXz/lgVE7rsNoco7yswlBOOl1EXuNukjugLzqkypXrOIjTPIGHTWS0Xo
 u6au91FAGhOPWIt28UXmjc/94wjQ+U1awh0DXSgcJaVDpGO1iTzxs0uE4+/8jxuAKTuNY0RTavZ
 sSOU4IOY7k8UXEbj32cCFQdLyZ0oQSQuoR1Nr0yfO7/rVeNDYlBAorX6NOTYrbkSEO9pivwLLAz
 AYTiyhuK9YD+Aj3t5FuDB36iwE47keeea9Z+P3VZG8Q/MEqgK4fZBzeI8xH/8NhhsRCBjyLfmR3
 7Jf6M0IXVENF910HhKA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-09-15_03,2026-09-14_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 adultscore=0 lowpriorityscore=0 bulkscore=0 clxscore=1015
 impostorscore=0 spamscore=0 phishscore=0 malwarescore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2609040000 definitions=main-2609150146
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260915_111030_920315_CAE49200 
X-CRM114-Status: GOOD (  12.46  )
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

Describe the CAMSS and CSI PHY blocks on Kaanapali so that camera pipelines
can be enabled by board device trees.

The camera subsystem contains:
- 6 x CSIPHY (CSI Physical Layer)
- 3 x TPG (Test Pattern Generator)
- 3 x CSID (CSI Decoder)
- 2 x CSID Lite
- 3 x VFE (Video Front End), 5 RDI per VFE
- 2 x VFE Lite, 4 RDI per VFE Lite

Signed-off-by: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/kaanapali.dtsi | 372 ++++++++++++++++++++++++++++++++
 1 file changed, 372 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/kaanapali.dtsi b/arch/arm64/boot/dts/qcom/kaanapali.dtsi
index 131fd2a16c54..84b93914ad53 100644
--- a/arch/arm64/boot/dts/qcom/kaanapali.dtsi
+++ b/arch/arm64/boot/dts/qcom/kaanapali.dtsi
@@ -20,6 +20,7 @@
 #include <dt-bindings/interconnect/qcom,kaanapali-rpmh.h>
 #include <dt-bindings/interrupt-controller/arm-gic.h>
 #include <dt-bindings/mailbox/qcom-ipcc.h>
+#include <dt-bindings/phy/phy.h>
 #include <dt-bindings/phy/phy-qcom-qmp.h>
 #include <dt-bindings/power/qcom-rpmpd.h>
 #include <dt-bindings/regulator/qcom,rpmh-regulator.h>
@@ -3314,6 +3315,355 @@ usb_dp_qmpphy_dp_in: endpoint {
 			};
 		};
 
+		camss: isp@9253000 {
+			compatible = "qcom,kaanapali-camss";
+
+			reg = <0x0 0x09253000 0x0 0x5e80>,
+			      <0x0 0x09263000 0x0 0x5e80>,
+			      <0x0 0x09273000 0x0 0x5e80>,
+			      <0x0 0x092d3000 0x0 0x3880>,
+			      <0x0 0x092e7000 0x0 0x3880>,
+			      <0x0 0x09523000 0x0 0x2000>,
+			      <0x0 0x09525000 0x0 0x2000>,
+			      <0x0 0x09527000 0x0 0x2000>,
+			      <0x0 0x09529000 0x0 0x2000>,
+			      <0x0 0x0952b000 0x0 0x2000>,
+			      <0x0 0x0952d000 0x0 0x2000>,
+			      <0x0 0x093fd000 0x0 0x400>,
+			      <0x0 0x093fe000 0x0 0x400>,
+			      <0x0 0x093ff000 0x0 0x400>,
+			      <0x0 0x09151000 0x0 0x20000>,
+			      <0x0 0x09171000 0x0 0x20000>,
+			      <0x0 0x09191000 0x0 0x20000>,
+			      <0x0 0x092dc000 0x0 0x1300>,
+			      <0x0 0x092f0000 0x0 0x1300>;
+
+			reg-names = "csid0",
+				    "csid1",
+				    "csid2",
+				    "csid_lite0",
+				    "csid_lite1",
+				    "csiphy0",
+				    "csiphy1",
+				    "csiphy2",
+				    "csiphy3",
+				    "csiphy4",
+				    "csiphy5",
+				    "csitpg0",
+				    "csitpg1",
+				    "csitpg2",
+				    "vfe0",
+				    "vfe1",
+				    "vfe2",
+				    "vfe_lite0",
+				    "vfe_lite1";
+
+			clocks = <&camcc CAM_CC_CAMNOC_NRT_AXI_CLK>,
+				 <&camcc CAM_CC_CAMNOC_RT_AXI_CLK>,
+				 <&camcc CAM_CC_CAM_TOP_AHB_CLK>,
+				 <&camcc CAM_CC_CAM_TOP_FAST_AHB_CLK>,
+				 <&camcc CAM_CC_CAMNOC_RT_TFE_0_MAIN_CLK>,
+				 <&camcc CAM_CC_CAMNOC_RT_TFE_1_MAIN_CLK>,
+				 <&camcc CAM_CC_CAMNOC_RT_TFE_2_MAIN_CLK>,
+				 <&camcc CAM_CC_CAMNOC_RT_IFE_LITE_CLK>,
+				 <&camcc CAM_CC_CSID_CLK>,
+				 <&camcc CAM_CC_CSID_CSIPHY_RX_CLK>,
+				 <&camcc CAM_CC_CSIPHY0_CLK>,
+				 <&camcc CAM_CC_CSI0PHYTIMER_CLK>,
+				 <&camcc CAM_CC_CSIPHY1_CLK>,
+				 <&camcc CAM_CC_CSI1PHYTIMER_CLK>,
+				 <&camcc CAM_CC_CSIPHY2_CLK>,
+				 <&camcc CAM_CC_CSI2PHYTIMER_CLK>,
+				 <&camcc CAM_CC_CSIPHY3_CLK>,
+				 <&camcc CAM_CC_CSI3PHYTIMER_CLK>,
+				 <&camcc CAM_CC_CSIPHY4_CLK>,
+				 <&camcc CAM_CC_CSI4PHYTIMER_CLK>,
+				 <&camcc CAM_CC_CSIPHY5_CLK>,
+				 <&camcc CAM_CC_CSI5PHYTIMER_CLK>,
+				 <&gcc GCC_CAMERA_HF_AXI_CLK>,
+				 <&gcc GCC_CAMERA_SF_AXI_CLK>,
+				 <&camcc CAM_CC_TFE_0_MAIN_CLK>,
+				 <&camcc CAM_CC_TFE_0_MAIN_FAST_AHB_CLK>,
+				 <&camcc CAM_CC_TFE_1_MAIN_CLK>,
+				 <&camcc CAM_CC_TFE_1_MAIN_FAST_AHB_CLK>,
+				 <&camcc CAM_CC_TFE_2_MAIN_CLK>,
+				 <&camcc CAM_CC_TFE_2_MAIN_FAST_AHB_CLK>,
+				 <&camcc CAM_CC_IFE_LITE_CLK>,
+				 <&camcc CAM_CC_IFE_LITE_AHB_CLK>,
+				 <&camcc CAM_CC_IFE_LITE_CPHY_RX_CLK>,
+				 <&camcc CAM_CC_IFE_LITE_CSID_CLK>,
+				 <&camcc CAM_CC_QDSS_DEBUG_XO_CLK>;
+
+			clock-names = "camnoc_nrt_axi",
+				      "camnoc_rt_axi",
+				      "cpas_ahb",
+				      "cpas_fast_ahb",
+				      "cpas_vfe0",
+				      "cpas_vfe1",
+				      "cpas_vfe2",
+				      "cpas_vfe_lite",
+				      "csid",
+				      "csid_csiphy_rx",
+				      "csiphy0",
+				      "csiphy0_timer",
+				      "csiphy1",
+				      "csiphy1_timer",
+				      "csiphy2",
+				      "csiphy2_timer",
+				      "csiphy3",
+				      "csiphy3_timer",
+				      "csiphy4",
+				      "csiphy4_timer",
+				      "csiphy5",
+				      "csiphy5_timer",
+				      "gcc_axi_hf",
+				      "gcc_axi_sf",
+				      "vfe0",
+				      "vfe0_fast_ahb",
+				      "vfe1",
+				      "vfe1_fast_ahb",
+				      "vfe2",
+				      "vfe2_fast_ahb",
+				      "vfe_lite",
+				      "vfe_lite_ahb",
+				      "vfe_lite_cphy_rx",
+				      "vfe_lite_csid",
+				      "qdss_debug_xo";
+
+			interrupts = <GIC_SPI 601 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 603 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 431 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 605 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 376 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 477 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 478 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 479 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 448 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 122 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 89 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 433 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 436 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 457 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 606 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 377 IRQ_TYPE_EDGE_RISING>;
+
+			interrupt-names = "csid0",
+					  "csid1",
+					  "csid2",
+					  "csid_lite0",
+					  "csid_lite1",
+					  "csiphy0",
+					  "csiphy1",
+					  "csiphy2",
+					  "csiphy3",
+					  "csiphy4",
+					  "csiphy5",
+					  "vfe0",
+					  "vfe1",
+					  "vfe2",
+					  "vfe_lite0",
+					  "vfe_lite1";
+
+			interconnects = <&gem_noc MASTER_APPSS_PROC QCOM_ICC_TAG_ACTIVE_ONLY
+					 &config_noc SLAVE_CAMERA_CFG QCOM_ICC_TAG_ACTIVE_ONLY>,
+					<&mmss_noc MASTER_CAMNOC_HF QCOM_ICC_TAG_ALWAYS
+					 &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>;
+			interconnect-names = "ahb",
+					     "hf_mnoc";
+
+			iommus = <&apps_smmu 0x1c00 0x00>;
+
+			power-domains = <&camcc CAM_CC_TFE_0_GDSC>,
+					<&camcc CAM_CC_TFE_1_GDSC>,
+					<&camcc CAM_CC_TFE_2_GDSC>,
+					<&camcc CAM_CC_TITAN_TOP_GDSC>;
+			power-domain-names = "ife0",
+					     "ife1",
+					     "ife2",
+					     "top";
+
+			status = "disabled";
+
+			ports {
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				port@0 {
+					reg = <0>;
+				};
+
+				port@1 {
+					reg = <1>;
+				};
+
+				port@2 {
+					reg = <2>;
+				};
+
+				port@3 {
+					reg = <3>;
+				};
+
+				port@4 {
+					reg = <4>;
+				};
+
+				port@5 {
+					reg = <5>;
+				};
+			};
+		};
+
+		csiphy0: phy@9523000 {
+			compatible = "qcom,kaanapali-csi2-phy";
+			reg = <0x0 0x09523000 0x0 0x2000>;
+
+			clocks = <&camcc CAM_CC_CSIPHY0_CLK>,
+				 <&camcc CAM_CC_CSI0PHYTIMER_CLK>,
+				 <&camcc CAM_CC_CORE_AHB_CLK>;
+			clock-names = "core",
+				      "timer",
+				      "ahb";
+
+			interrupts = <GIC_SPI 477 IRQ_TYPE_EDGE_RISING>;
+
+			operating-points-v2 = <&csiphy_mxc_opp_table>;
+
+			power-domains = <&camcc CAM_CC_TITAN_TOP_GDSC>,
+					<&rpmhpd RPMHPD_MMCX>,
+					<&rpmhpd RPMHPD_MXC>;
+			power-domain-names = "top",
+					     "mmcx",
+					     "mx";
+
+			status = "disabled";
+		};
+
+		csiphy1: phy@9525000 {
+			compatible = "qcom,kaanapali-csi2-phy";
+			reg = <0x0 0x09525000 0x0 0x2000>;
+
+			clocks = <&camcc CAM_CC_CSIPHY1_CLK>,
+				 <&camcc CAM_CC_CSI1PHYTIMER_CLK>,
+				 <&camcc CAM_CC_CORE_AHB_CLK>;
+			clock-names = "core",
+				      "timer",
+				      "ahb";
+
+			interrupts = <GIC_SPI 478 IRQ_TYPE_EDGE_RISING>;
+
+			operating-points-v2 = <&csiphy_mxc_opp_table>;
+
+			power-domains = <&camcc CAM_CC_TITAN_TOP_GDSC>,
+					<&rpmhpd RPMHPD_MMCX>,
+					<&rpmhpd RPMHPD_MXC>;
+			power-domain-names = "top",
+					     "mmcx",
+					     "mx";
+
+			status = "disabled";
+		};
+
+		csiphy2: phy@9527000 {
+			compatible = "qcom,kaanapali-csi2-phy";
+			reg = <0x0 0x09527000 0x0 0x2000>;
+
+			clocks = <&camcc CAM_CC_CSIPHY2_CLK>,
+				 <&camcc CAM_CC_CSI2PHYTIMER_CLK>,
+				 <&camcc CAM_CC_CORE_AHB_CLK>;
+			clock-names = "core",
+				      "timer",
+				      "ahb";
+
+			interrupts = <GIC_SPI 479 IRQ_TYPE_EDGE_RISING>;
+
+			operating-points-v2 = <&csiphy_mxc_opp_table>;
+
+			power-domains = <&camcc CAM_CC_TITAN_TOP_GDSC>,
+					<&rpmhpd RPMHPD_MMCX>,
+					<&rpmhpd RPMHPD_MXC>;
+			power-domain-names = "top",
+					     "mmcx",
+					     "mx";
+
+			status = "disabled";
+		};
+
+		csiphy3: phy@9529000 {
+			compatible = "qcom,kaanapali-csi2-phy";
+			reg = <0x0 0x09529000 0x0 0x2000>;
+
+			clocks = <&camcc CAM_CC_CSIPHY3_CLK>,
+				 <&camcc CAM_CC_CSI3PHYTIMER_CLK>,
+				 <&camcc CAM_CC_CORE_AHB_CLK>;
+			clock-names = "core",
+				      "timer",
+				      "ahb";
+
+			interrupts = <GIC_SPI 448 IRQ_TYPE_EDGE_RISING>;
+
+			operating-points-v2 = <&csiphy_mxc_opp_table>;
+
+			power-domains = <&camcc CAM_CC_TITAN_TOP_GDSC>,
+					<&rpmhpd RPMHPD_MMCX>,
+					<&rpmhpd RPMHPD_MXC>;
+			power-domain-names = "top",
+					     "mmcx",
+					     "mx";
+
+			status = "disabled";
+		};
+
+		csiphy4: phy@952b000 {
+			compatible = "qcom,kaanapali-csi2-phy";
+			reg = <0x0 0x0952b000 0x0 0x2000>;
+
+			clocks = <&camcc CAM_CC_CSIPHY4_CLK>,
+				 <&camcc CAM_CC_CSI4PHYTIMER_CLK>,
+				 <&camcc CAM_CC_CORE_AHB_CLK>;
+			clock-names = "core",
+				      "timer",
+				      "ahb";
+
+			interrupts = <GIC_SPI 122 IRQ_TYPE_EDGE_RISING>;
+
+			operating-points-v2 = <&csiphy_mxc_opp_table>;
+
+			power-domains = <&camcc CAM_CC_TITAN_TOP_GDSC>,
+					<&rpmhpd RPMHPD_MMCX>,
+					<&rpmhpd RPMHPD_MXC>;
+			power-domain-names = "top",
+					     "mmcx",
+					     "mx";
+
+			status = "disabled";
+		};
+
+		csiphy5: phy@952d000 {
+			compatible = "qcom,kaanapali-csi2-phy";
+			reg = <0x0 0x0952d000 0x0 0x2000>;
+
+			clocks = <&camcc CAM_CC_CSIPHY5_CLK>,
+				 <&camcc CAM_CC_CSI5PHYTIMER_CLK>,
+				 <&camcc CAM_CC_CORE_AHB_CLK>;
+			clock-names = "core",
+				      "timer",
+				      "ahb";
+
+			interrupts = <GIC_SPI 89 IRQ_TYPE_EDGE_RISING>;
+
+			operating-points-v2 = <&csiphy_mxc_opp_table>;
+
+			power-domains = <&camcc CAM_CC_TITAN_TOP_GDSC>,
+					<&rpmhpd RPMHPD_MMCX>,
+					<&rpmhpd RPMHPD_MXC>;
+			power-domain-names = "top",
+					     "mmcx",
+					     "mx";
+
+			status = "disabled";
+		};
+
 		camcc: clock-controller@956d000 {
 			compatible = "qcom,kaanapali-camcc";
 			reg = <0x0 0x0956d000 0x0 0x80000>;
@@ -6253,6 +6603,28 @@ pdp_tx: scp-sram-section@100 {
 		};
 	};
 
+	csiphy_mxc_opp_table: opp-table-mxc {
+		compatible = "operating-points-v2";
+
+		opp-300000000 {
+			opp-hz = /bits/ 64 <300000000>;
+			required-opps = <&rpmhpd_opp_low_svs_d1>,
+					<&rpmhpd_opp_low_svs_d1>;
+		};
+
+		opp-400000000 {
+			opp-hz = /bits/ 64 <400000000>;
+			required-opps = <&rpmhpd_opp_low_svs>,
+					<&rpmhpd_opp_low_svs>;
+		};
+
+		opp-480000000 {
+			opp-hz = /bits/ 64 <480000000>;
+			required-opps = <&rpmhpd_opp_low_svs>,
+					<&rpmhpd_opp_low_svs>;
+		};
+	};
+
 	thermal-zones {
 		cpullc-0-0-thermal {
 			thermal-sensors = <&tsens0 0>;

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
