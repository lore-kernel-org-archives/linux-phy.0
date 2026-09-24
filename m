Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ED4D6C98314
	for <linux-phy@archiver.kernel.org>; Thu, 24 Sep 2026 06:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZLBdmBA2iSAP+ON+xZZriWRDWb6tZYL4B18Y8X8jE6Q=; b=eJWyeLVP2kRWh+
	krSJE5Qw5MUYxqS4treMWwbHsi2Rz+LZZ2jhyLP/yRuHeQiIelOZwR7XlSFsmjBNGSGBXcuJ7K9fk
	9wO60spn0Hs8McEexzBrQ2OuyVSM8U7ZRcoG534i8nOyAGh0qkxLIfTUPLhNnxBygm79wBZUAcj9w
	FIaSVTUxBGvU6SgWiZC9qN7ezUVhPDlF03VaZEFFZLayrYuFNQd4Xd+BulX4hqbqfSm3J1+pWj0ch
	33TvtfxUYosZBmUc019mweMe/u+ndIZjpu5cbKYgz0duMm0jaq+AguIP8jxnntD/99lfKLxqt8SD7
	e//HkriJOKDtv5hl9X4w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x9cfB-0000000A7i4-2kXU;
	Thu, 24 Sep 2026 06:10:33 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x9cf7-0000000A7fE-1L8D
	for linux-phy@lists.infradead.org;
	Thu, 24 Sep 2026 06:10:32 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 68O5eONZ1898873
	for <linux-phy@lists.infradead.org>; Thu, 24 Sep 2026 06:10:28 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	jrWr4WEEoDxY2QpPfvYR+d27cAyfCi80wCzqnJN1qlI=; b=bzZhDI07zkIv0RJk
	KFVzL7qcXzsEHyoICLuGCy6ORCMhcccHjwrImh79sAxUta0mG1V0Baf5bSt6OVio
	xu03OP8xXgcbyP4zR1d543hyMai8mWFPR8T6stRKMBqSNfLUgJDnzXKY0of+/gvo
	dkORfrsKDIOLRdo7PpmxUL6AbwgapK5DR1VnbuTasG05P3lOxhHlc41xUYlRoCIR
	u2d/QiabYzSgxffonDOtwpqaMTSCkHbqiZ/PSGy6FXYtTbb3mMH9oYGiBllYZWgA
	SIqz7epK7FroP3Yt8Ct240LIgKtkWJWfAmeXqx/UCP3lv3ncVIeDPrMqYqAgi5MP
	Ug4u1A==
Received: from mail-dl1-f70.google.com (mail-dl1-f70.google.com [74.125.82.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4gvdb644eb-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 24 Sep 2026 06:10:28 +0000 (GMT)
Received: by mail-dl1-f70.google.com with SMTP id a92af1059eb24-14388794dcfso848412c88.1
        for <linux-phy@lists.infradead.org>; Wed, 23 Sep 2026 23:10:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1790230227; x=1790835027; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=jrWr4WEEoDxY2QpPfvYR+d27cAyfCi80wCzqnJN1qlI=;
        b=TtND92ogD3wYN2g7z7Vfe35YcZDo4wxXhJ+vTxYLpCIXdH8TMgwyKtnJXpURo8qaHM
         7ndHNNfUCq0lGlicO7phigxCI8XX1nLV6jEOGny/v4BZHkfEtC7y7CpmCK7y4GNmz74o
         zmgUyQQ36NzvArm43LbvG41rKRkBgFvS2+fV8V+AW0ojAH2qn6y9GD3mEYEXtBcfDs0A
         L4ANK6E8f8ImaynDmcdrwJUAT6Et121M+ApeSESKidfZmX5ymn2kx5ydOS5emtFRJSp7
         F5cM6WocrD4bQJsZhxDK8frVrMA9bGkpHITIp43OJ8f+U0y7W9aNvW1giiEHvzZltLi3
         v7dw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1790230227; x=1790835027;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=jrWr4WEEoDxY2QpPfvYR+d27cAyfCi80wCzqnJN1qlI=;
        b=PLV+Cq7pUefmIhpsFtqT02+xokv6gptZ8/KRT2EIc41QVl8nwrqqySrKO8HbxKY4Mu
         wiY5PGXGoA9zH4JYe81JpCjhbCR0EwRMLBsQPhmVxjfL+rlcBr1la2mWLe9wWu5ky096
         stoaYT+gmfjYiRBt9XFwpIbjm0M1RbNNoZro09fyfxJ0S7TyNCRAmNlia69i3FZl3MPI
         PnKxFyVLT09X8cbekaF7gbi9mkvRivu2OIDrb7FZXx8vFUN28+WhtgzdAvNX70QcHSr/
         oD6+qFlJ+AnOntuMx8FlU9r20qaIPE6uqMp1F0yk2y8i5+aLlcYm4zyydtGO1ml8QVbm
         GTcA==
X-Forwarded-Encrypted: i=1; AKwUvByOqQSI3WKcnvMfk7K932uldljVef0luvH0yIJUzapZ0PYNYHasE6tGtY3Uj3oBaGS+eCElxBZyfug=@lists.infradead.org
X-Gm-Message-State: AFuF++mHHnaZgeO30Y10foQRKZEr4i0UghagpRoSx+4nqhIUFr/JcCOx
	W+fmYj45PUuYzF9BAE+9yyTh2Gq8xzBkNjKHinOUi3Rl2XYTEZd07w6A+fEkUZuimZxI55ipMrW
	Ro8f2mSk5UCNAQ+HWbKvktGePYglyCONqHWZnPFMt3c3Y5sAec61onGmHl1bP3O8VFlU7r+jp1K
	tm
X-Gm-Gg: AYBFou2jj62QPOyqTlT/eI26bmGPOiHXsdi2kGytaIVv51k7gSeBAvE2k3iagQqKuP8
	8XSEQIILh7IxCUw/2le6rIxuH6QWE558R7/HlmFGU45BVcOlhgP5zgO8l8tjVb0ucLhmKvPe0N1
	byHYflnfo2qkoYeT12UPOx0thMwcYcz8GFGlZ1PxvoKaQHv/2JicrLnpLW+si6B+VkV/vxht40r
	vhlsFUhXIEXauw1gUiTeK+qJ12xYZZLPRSeXD8QPURndS7MOknm3Ymg/JKllnv7+Yw1l8EePLti
	d3vZQg710FfMwGuy4+Cu+lfes4bfIJNB7lw8Gzxy0X6CKGR2CIJEJFhOmqtxtmY6G8cWyZwKaIl
	NNjiuXjjnd24NUkr1I1A/XmhzrRtnKSQbkSbPtKeHctzL0p5uuhwbNruIrF16fu4/i8KHRJ4O7o
	mb1KbAYGz22sYCxTLQDWf37Btb27J1
X-Received: by 2002:a05:7022:ec84:b0:144:eb46:be0 with SMTP id a92af1059eb24-14503fd2d16mr1503677c88.13.1790230227183;
        Wed, 23 Sep 2026 23:10:27 -0700 (PDT)
X-Received: by 2002:a05:7022:ec84:b0:144:eb46:be0 with SMTP id a92af1059eb24-14503fd2d16mr1503643c88.13.1790230226604;
        Wed, 23 Sep 2026 23:10:26 -0700 (PDT)
Received: from hu-varada-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-144f9895c1asm10197680c88.12.2026.09.23.23.10.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 23 Sep 2026 23:10:26 -0700 (PDT)
From: Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>
Date: Thu, 24 Sep 2026 11:40:03 +0530
Subject: [PATCH v3 2/5] dt-bindings: phy: qcom,usb-snps-femto-v2: Add
 IPQ9650 compatible
MIME-Version: 1.0
Message-Id: <20260924-phy-v3-2-088e7be0cfaa@oss.qualcomm.com>
References: <20260924-phy-v3-0-088e7be0cfaa@oss.qualcomm.com>
In-Reply-To: <20260924-phy-v3-0-088e7be0cfaa@oss.qualcomm.com>
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
X-Proofpoint-GUID: wemQD1AJ9DYlOiqEKYokfDz1wAcv5uG1
X-Proofpoint-ORIG-GUID: wemQD1AJ9DYlOiqEKYokfDz1wAcv5uG1
X-Authority-Analysis: v=2.4 cv=QeXzLcbv c=1 sm=1 tr=0 ts=6ab4bed4 cx=c_pps
 a=SvEPeNj+VMjHSW//kvnxuw==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=IkcTkHD0fZMA:10 a=VdqzKS8jKosA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=3WHJM1ZQz_JShphwDgj5:22
 a=EUspDBNiAAAA:8 a=JwZr8aepJa0OdLIFGX0A:9 a=QEXdDO2ut3YA:10
 a=Kq8ClHjjuc5pcCNDwlU0:22
X-Proofpoint-Spam-Info: AW1haW4tMjYwOTI0MDAyNiBTYWx0ZWRfX87OH4Put9Kkf
 3VPFAEGO19DPQfjAypKlyzon3SfMTABEOioDyEecSchULCS5I7AiDYFWsZ2Nh/dedj68WDKYMFa
 Zw861P6/TfLxl2Mz9eQJVWZi9Dm4zcc=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwOTI0MDAyNiBTYWx0ZWRfX4Ge6mrbAkmsU
 pes+UNX51kIVftHTeqga2vM17HR/LxG2c9QsFGPtWEBLEh14Z2wH8iNcgtLNaBxaOAcGiKKPznX
 QsSt0Ps7Tv3mvuJ6LZz4K+NIJ4CxVoAFs8NsW1S56LKOlqTveJM3r0zMVnaj1b8ALoY2X/XZQGP
 EPHG/S392/MfnCYJcnH5oY3acQBQ9Oiio8V991TNwDq5KuJcil3jEAW4wVjUGCki1jPzjC8RjPw
 dnhv+spaNczrOnSh/LItJIfWClZmAtIVm9ZOVzIyvGS5YBPeadb96cqcnKbwycB1Wfs9F37boVa
 vk0/UABAOL5BHABS8SXP+dImfJLqyG27tqWlbG5czqDirfv/OcAVrLv1Fw+yEna8pKhoATq31B9
 dqkZJoT9XBvTeGmRY6ZtL/a7bHV3W8aLKvctqvfYm/9lDEbmcUtiFzOHYjBWGXwpKbD/ktHVHWN
 yxpEnlUnnGh6Bpz6IVQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-09-24_02,2026-09-21_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 priorityscore=1501 phishscore=0 lowpriorityscore=0 bulkscore=0
 impostorscore=0 adultscore=0 clxscore=1015 spamscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2609040000 definitions=main-2609240026
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260923_231030_524022_6C2327CE 
X-CRM114-Status: GOOD (  11.51  )
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
