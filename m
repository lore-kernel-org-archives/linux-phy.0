Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 775FBC55162
	for <linux-phy@archiver.kernel.org>; Fri, 20 Feb 2026 08:26:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Message-Id:MIME-Version:Subject:
	Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=bgdrmeptp1mY8e4EsfqA0Q+3jsD/98MjkWsPv19/FO4=; b=nM7YYQEM8qLax7
	5BJzexod1jAGK8lqIzVsDUyItAL7TSTPxFdZeXAWKgFysdsUHVHD3A97yP8kVrm8zz47gGsIz7uvL
	FdJOBMeGy+2QakBo5qEsWu17pSmldG+HUBj9aEaR6XLTSSiGLJY0ByCFyHK55hXuQkXYTHVpmLrhi
	7xXhyslui0DQSIEE89GC+qJ0ghXvwAOaVmFnw/+gZBBV63WQPOkYfo2GUGqwITTl6UoVRz/kU2/K8
	FhsP0s7iaso3ncfx5WcGnAdPUVNjTWbq5CJ7l85LH/RPcN+hFd7Bm6hraEalpRcUNg1DjUgBLEsnj
	bus1lkdZxSmKl7iW3+mg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vtLpu-0000000DPbW-0Fwk;
	Fri, 20 Feb 2026 08:26:06 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vtLpp-0000000DPak-28kz
	for linux-phy@lists.infradead.org;
	Fri, 20 Feb 2026 08:26:04 +0000
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61K84ASG3355204
	for <linux-phy@lists.infradead.org>; Fri, 20 Feb 2026 08:26:01 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=Wm5XzvZ/xVItQdE/vfTJiM
	juLsnr+3TCub4tu7D2mcA=; b=Zs5Zlr1yj7kHDwTFhPs3wXJBiuol9cwbgyoAIS
	h5A6N9tEldXxlIdPxqeAoRod6wSOmNC3N6UyhmaTU/sAx6k6aMFfLlxZuatQ4SUC
	wRmcynqsaukEo4o1LwsDe2AhIsONFhNE1b0TyMqS6eCMxMAaVN0ym7DK4nfBltkD
	/opX+se22k3EnB7Sh6a5r+RM6AlksWegvC0fyiGpwrq3SdxB+LdvK9zbXlOd/twz
	6uw6WWFD7RmUcE8QrO01mBwCoPz8x6IlcKivFq2mfc0umNnsz4jLZTx6/DelQ2Y3
	ouvq32CgsAMrovJAh7V5a75nyGPZ47wPuuCDZU6Zlx7IC67w==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ce6k027gn-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 20 Feb 2026 08:26:00 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8cb706313beso230616185a.3
        for <linux-phy@lists.infradead.org>; Fri, 20 Feb 2026 00:26:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771575960; x=1772180760; darn=lists.infradead.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Wm5XzvZ/xVItQdE/vfTJiMjuLsnr+3TCub4tu7D2mcA=;
        b=bpw16hC3uWTdWzhGqoQadu4j9+XK16ZmZfNg19Bt9qfdp6/Ers+YpVRBh6bWi+wgNX
         TkoDZ0f9qs1ajirRd4bSIEnoKb4R/Dxhi2hlcLg1mGqV4oaZCkkIHb8btxtGXJYXjH63
         KWFr4xGevCND+QeFsFyhB+ikjqt74irrb/b5tMK+ZqVfuxVkaVg/WMnokCAitqAvIVMv
         Do6PJnzqHB7bWCqzdfLGLtNW9PWkhHJ0oL0NvmekNkTMJv0eXpwhWqWUyhoodL71eupy
         DMjeOuh+8/7mrnHAoBBWb1wGfwaE1rHcMqNxOsNDYyJeeanYnUHpYPisioNoV2onbnRS
         Qd1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771575960; x=1772180760;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Wm5XzvZ/xVItQdE/vfTJiMjuLsnr+3TCub4tu7D2mcA=;
        b=OZ2YNJC08EDt5rGI1AqmPmRJuOjXsm8XAJr4TCuq1Bp3X1N2GP+f01By4urEc1OfY3
         0ubZr/Bm+f7hZMpMVGJUuhBVCMUWInsrvd4xIc7pInVHpTcZcB4hS8uncGHWExFYbbtY
         aFZdSvgyxbzfzaHqy9PvpFl/LxvsxXgdrqXlq92t5iUrhcj23QhliIXKf8akAEFd0E0b
         EuMIvV7fFAbHpm0blc90lks0gIvMkyIsrXhd5XRsPC2xP2B5LMwQ4N2pxSnzn7hgYrgS
         uG4BPq30uwUJAPvMsmH7wESbWc28HJKihKhhdV/3aiWlh6ZXstq6bRgFrTIsGfSEwaos
         Potw==
X-Forwarded-Encrypted: i=1; AJvYcCX6sIiiI5gb6dwfWtYdsABv5lbUO9lMWw4cE5RmTwMrrnaZSn6d+NM3TO47SK9tYW+JgrKB4hyYJhA=@lists.infradead.org
X-Gm-Message-State: AOJu0YyQirGCpcsPXCFHIMcRUn4Dsb2uhtMFym1eC+ZWP2UZheytAJ2N
	wYr7khnbXNey9RO6q5DHtQjxJRVAkQod/NoN/peHPCJFUGmdWT5m7+WIDgJpC5ReqWw2VEAw9VE
	vh9eHyuu+zBLc1H6Fv1wpqeQlvavFXoEy2u5Z1rNoEcosZM5dgk7MfwKu+xkIBZcDAKYl
X-Gm-Gg: AZuq6aL38qOcSB6OEoQP5JfC9UYSNq6Xta8jXquBS/JiXijlfUKAeCzq/0wIR1pXqlE
	zLcTGUCZrcKMFhqVO5FFjdM7ErtvMTXwnchyuLr+75VYx7yogsZja3GCgfF/i/RIK435FWNeyfH
	Tz2R5uC5WJ4nQr9AYJ8Q7Tx+dDBTKkHeYEiCxRlYUm6fPLRLoKctXxFRr1d/uCv9Xf4+0x+MbzJ
	DHADYlPYbduFxWxmSnSb1eKaXoy6Ol7/wRwzEpbgEWzPBKd4bzlh6hGVHA9n/fXANS4h1Rpj6du
	Qa/OJMHo+97sx+Gmj+T9t2hTgTZkk4c5Bi9eZMSIZKTNKMUFwvyF36+k3TvP8oFfgQnKPDtP/IE
	91+N2buiZ1v1bTDorrQJAJvR3yPal7g==
X-Received: by 2002:a05:620a:29cf:b0:8ca:123e:8194 with SMTP id af79cd13be357-8cb74043603mr1010057585a.33.1771575959901;
        Fri, 20 Feb 2026 00:25:59 -0800 (PST)
X-Received: by 2002:a05:620a:29cf:b0:8ca:123e:8194 with SMTP id af79cd13be357-8cb74043603mr1010055285a.33.1771575959276;
        Fri, 20 Feb 2026 00:25:59 -0800 (PST)
Received: from hackbox.lan ([86.121.162.109])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-483a3db54d9sm13329945e9.0.2026.02.20.00.25.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 20 Feb 2026 00:25:58 -0800 (PST)
From: Abel Vesa <abel.vesa@oss.qualcomm.com>
Date: Fri, 20 Feb 2026 10:25:50 +0200
Subject: [PATCH v2] dt-bindings: phy: qcom,sc8280xp-qmp-ufs-phy: document
 the Eliza QMP UFS PHY
MIME-Version: 1.0
Message-Id: <20260220-eliza-bindings-phy-ufs-v2-1-4910bdcc585a@oss.qualcomm.com>
X-B4-Tracking: v=1; b=H4sIAI0amGkC/4WNTQqDMBCFryJZN6JJVeyq9ygukjjqFE1sRqVWv
 HujPUB58OCD97MxAo9A7BZtzMOChM4GEJeImU7ZFjjWgZlIRJ6ItOTQ40dxjbZG2xIfu5XPDXF
 Zl5kRsigUaBbKo4cG3+fwo/oxzfoJZjrWjkSHNDm/ns9LeuT+niwpD8plBoXOZHIt744ofs2qN
 24Y4mCs2vf9Cx7avXfVAAAA
X-Change-ID: 20260219-eliza-bindings-phy-ufs-3d95c2377aeb
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: Nitin Rawat <nitin.rawat@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Abel Vesa <abel.vesa@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-47773
X-Developer-Signature: v=1; a=openpgp-sha256; l=2102;
 i=abel.vesa@oss.qualcomm.com; h=from:subject:message-id;
 bh=ZUucCeRSaFVt0BQ0n6MDh24qLCxuTbyM/jjmXjw4sI4=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBpmBqQWPwq/SfXOMqzmdkTxkqEGsWXkQ4EEC329
 fmCvog60bGJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCaZgakAAKCRAbX0TJAJUV
 Vl4zEAC2QFggdRY5zSV2xcsERCNqWN1PXPEZfofXKAZuJvFsaNOe94l47sdktnnxBe2BqPFpsBn
 1zg6YL7iDbGWpSdHkBWtNSEUrQ42I7fYd+e7PB9BBk2y2yXNiyrPbMuw/1lJE+jFEhcVuJ+gRkN
 U9La4Pi+gQGnW0Kvu+U2dbWDvvalcYh59aaLUB3rgU8sYJOe+xBlJYc8+JCCHmqUbGsYFQgD6vx
 pZpCncV4lP4mR9UfLFqVyjpIjXQJTP0b9kn2Oe4clWCEggF1xTzMl8N6V/NymoAj8LY+JoLS5Ut
 ExRdneqI72/R6tibAJzyfGARgaty9/82Nc/IWMRlTtm2BqnK/TEdXahRxtwANkZguCKLbf680m6
 +xEgQOevRzJ46nKW9MSxa3dj5llgdJE4mVNbFB+FOd6Myu9+CqKfqyrB9WNvbWPhQ+BmfyXT3Kv
 Z4BOGyyBxC1cK7gZsRNUxAFYHSlOKowYv5/qrDB0lNNmkWmHbwJlZkyevbE8UJEATc0qw/b1dfg
 YJzoSkg685htnDsuD2EJ9pWRM25teHdzdQy+oO9/om8xormLAs66nJOZtFzd8RaaiVFmQQC09mX
 zcAFpF0qhB38TNIrwa73WDCmGOWyZLFUmdxcMxFX+pfG7i5WI7CvmHfmCQ9L82gkjuW0DJTiS0U
 EX1qLXxsE/2GEgQ==
X-Developer-Key: i=abel.vesa@oss.qualcomm.com; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjIwMDA3MiBTYWx0ZWRfX8HZHk2nHT6Jm
 yii2w3FheOSt5wtZtRljl3FkOm7Avgadzz59N6ke2vfE8L1+/oB9if4dVIrXnulUKUhE1cUG3mS
 /YCcYSKvDR+54x0nRU+iG99W83wvXTjgMbNyNCv92/USQeyeknnUw/Qp9KAWdOgFUy0w1FOPMHo
 8btV1l38lr6RcJcT5YoNLYIqBeNc6vySGyHG/gDMyt9SNNkBiaJg0jjtDOpOE7l1MnC99HX0i2S
 WQqUe+fKzB/FLz0td1I0hpbZmEiY+s+6Ya0tiIeLpDNThiUCP7F+84IOhGGPTMsGbi9gZwm5hD2
 0pysQxS9BKpOE5Tqf+xE2xmxqBBJ+T3b3dm0hiGP3TLdRUw7N85ZK5IawF1fEJ1C9YI2U2PRBWV
 b4Slfrk9eFLEVCOLOTeD6+7NT7rkUricAZeGIuDNl4Ghc6LbHxUjNq7q7ry31h+PchE29wyzuJt
 3xFBZ6feN+swxdzAsOg==
X-Proofpoint-ORIG-GUID: pPeI8frGkJyihoxnpRPX0f2qtxqalttM
X-Authority-Analysis: v=2.4 cv=K6Ev3iWI c=1 sm=1 tr=0 ts=69981a99 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=oauzzCmhM186DRC0Y2yWPg==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22
 a=bC-a23v3AAAA:8 a=EUspDBNiAAAA:8 a=Sq0TCQXOQfRWv73L7AsA:9 a=QEXdDO2ut3YA:10
 a=IoWCM6iH3mJn3m4BftBB:22 a=FO4_E8m0qiDe52t0p3_H:22
X-Proofpoint-GUID: pPeI8frGkJyihoxnpRPX0f2qtxqalttM
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-19_06,2026-02-20_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 priorityscore=1501 phishscore=0 lowpriorityscore=0
 suspectscore=0 adultscore=0 spamscore=0 malwarescore=0 clxscore=1015
 bulkscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2602200072
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260220_002603_478946_E74C5F1B 
X-CRM114-Status: GOOD (  12.25  )
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

Document the QMP UFS PHY compatible for the Eliza Platform. It is fully
compatible with the PHY implemented in SM8650, so use the SM8650
compatible as fallback.

While at it, move the QCS8300 one so that the it is sorted correctly by
fallback compatible.

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Signed-off-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
---
Changes in v2:
- Fixed the order by moving it below X1E80100 so that the fallback
  compatibles would be sorted, like Krzysztof suggested.
- While at it, moved the QCS8300 in first, so the sorting of all fallback
  compatibles will be complete all the way.
- Picked up Konrad's R-b tag.
- Link to v1: https://patch.msgid.link/20260219-eliza-bindings-phy-ufs-v1-1-1635e7b53049@oss.qualcomm.com
---
 .../devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml        | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml
index a1731b08c9d1..9616c736b6d4 100644
--- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml
@@ -16,6 +16,10 @@ description:
 properties:
   compatible:
     oneOf:
+      - items:
+          - enum:
+              - qcom,qcs8300-qmp-ufs-phy
+          - const: qcom,sa8775p-qmp-ufs-phy
       - items:
           - enum:
               - qcom,qcs615-qmp-ufs-phy
@@ -26,8 +30,8 @@ properties:
           - const: qcom,sm8550-qmp-ufs-phy
       - items:
           - enum:
-              - qcom,qcs8300-qmp-ufs-phy
-          - const: qcom,sa8775p-qmp-ufs-phy
+              - qcom,eliza-qmp-ufs-phy
+          - const: qcom,sm8650-qmp-ufs-phy
       - items:
           - enum:
               - qcom,kaanapali-qmp-ufs-phy

---
base-commit: 50f68cc7be0a2cbf54d8f6aaf17df32fb01acc3f
change-id: 20260219-eliza-bindings-phy-ufs-3d95c2377aeb

Best regards,
--  
Abel Vesa <abel.vesa@oss.qualcomm.com>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
