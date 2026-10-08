Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 70DA8CA600C
	for <linux-phy@archiver.kernel.org>; Thu,  8 Oct 2026 01:51:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=raAmIuX6tNA4702luDv0qHlWppcDuXOe4LjjmfEXs3Q=; b=NKKULSit9J0309
	bTFpbPm0OqskzPntpx84VaO6xu/QgVxYrFOyAwDuweWq4mmpWu6GkS7YIyt6UADov7nGeszUlZo4o
	cwhN7gGyhpYsZMnmSU6aAuHNN9TijKBldOTPApwqCXOmsU7cRZZe1jomQam7s+05QS7qykmQmm0JH
	O+qwFlkGUMUTr3JRe2rV72Eo8bIL4/XXHSMJwv/rSudiM6zJbJrMKp2rX0axWMunneVw6vb8Pm1cq
	KhKKEYZv6S6Cid1favcFK2leFSix0BePpIerTu9SrFCQsG8zKHglYOL71tu1hav+Z6AzSl+/uKDWh
	fYZDwgpxR2BLDQyBrVKA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xEdHj-00000003NLW-0GqN;
	Thu, 08 Oct 2026 01:51:03 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xEdHf-00000003NK7-3at7
	for linux-phy@lists.infradead.org;
	Thu, 08 Oct 2026 01:51:01 +0000
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6981hLVA1334260
	for <linux-phy@lists.infradead.org>; Thu, 8 Oct 2026 01:50:59 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=sq1jFandZRs
	D5YZ+BLbArAFYRvw6o4r3gf1nHfXPy88=; b=GckDxWNBME3sbgnc2qvaSuT0L8n
	ipi3DE1JjRFn1eyuoQP3+QMJs9WNxBht84k0eiloFn8SoRocbJSbYA9B3007i4K2
	3rKAzpT8oeL+6QMK/a+ezbW2iy+d69fpzKu6igvxs3BjxJk9XWEXoIbNcALG56aH
	lyltAft3HVUksY52Kz5ZZm1rrIAwNa55cNqHVw3gHJe6iQPqqDyKhgAg6Nrzrtj1
	du6sf+CCHCaanzjOVYFP5o8vtFjgteBe2Np1ZMpnQBPlt0G4127+6O27dNWOqvZu
	+qCS40aW9dm9g7IwONrKqphYF5Uwe6nXoHGDqxPVmllVCg1fpJPfhjQy/Ow==
Received: from mail-dy1-f198.google.com (mail-dy1-f198.google.com [74.125.82.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4h5xe3gnc9-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 08 Oct 2026 01:50:58 +0000 (GMT)
Received: by mail-dy1-f198.google.com with SMTP id 5a478bee46e88-33c35f5ca6cso8978160eec.1
        for <linux-phy@lists.infradead.org>; Wed, 07 Oct 2026 18:50:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1791424258; x=1792029058; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=sq1jFandZRsD5YZ+BLbArAFYRvw6o4r3gf1nHfXPy88=;
        b=TgSWlddWU/tf78A7gv5rlk2m0luY/GhGP3zPb6Yz6WqEUHk9jPWdAlPlYeAYa9fFWI
         GG4mwl/ZaxlHZ6+RRioGp0QNish5Ob7depQESOZjtpXfgKGN4Myda6cOdePTArdxmwmz
         BAt45/iuSJ2nDzGQBoX4006NKTsiGeplUQ5ikh1L7WxfXRw6A8YU8+ptdy63heag2dzC
         GCo7vZ3Kkj+cb2dg2Jstorr06j19dX88TPvrunBXZyCTe8ERiJQ/YpkpRt65gWCrLAP6
         yjO42mAymF8+VgEuDf9aaSFxI68gRCM9XfoOmru6SkWfXV2uGUBtj3JAXGmQljq2d9p7
         ScCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1791424258; x=1792029058;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=sq1jFandZRsD5YZ+BLbArAFYRvw6o4r3gf1nHfXPy88=;
        b=E1Om1f4qadrf7CRzp1wzXvf6NYInotD8qQfoIAf3BhewqA7eVgBjSxOhtPZAC8V2kc
         9tiB4USL8gsqMALgiYm79FpJ6zRRDppgskPUWCPUily6EsgQFOZFa+G8P7/W2v7e/mOc
         +TEJ5GQWIg4b1qoVssCiAf/w/5ljaGW96PNluKS0w+UsH4kEyY62pb0ZvEfsMNCjN2XU
         OD6BMKULZTSOb6NGFBPwYz0MyeG9gG9ir/jM6GuIfzmcFyOgEVAOR/bUYWzAqb9AoZ5o
         OygBSFtNWxDIMIh+LU9ZMkrjRAQoffwQGVcapBMXTNeNJldkzV1ESqbqtV3+IVuuG4eT
         +Mjg==
X-Forwarded-Encrypted: i=1; AKwUvBxo0dVIU+bC8AoGbFboY5QO6vvHHVzSvrJXlwpPGcx7YI18kU05vCIGIJkpEEQrp/4U9ri7TG2NkE4=@lists.infradead.org
X-Gm-Message-State: AFq9FYKNvIaGDkpTeB0btJXtTqlGklsvbHF2vP2TBPuT86/1/o6K/nrx
	NTtsJFY4jAoGsH0rBPjvGiiexFByT/Dkt3eyFCTtgdhCNxog13NX/vYANHRzU6mD1Js8Pv2NXEJ
	+Yo8KsXT5hpV/1mHkqsIJoP6HXkuDzsIwvT7YiFCCKdVxGseUJOh+nRKVFnVg/NU5oE+U
X-Gm-Gg: AYBFou2BXoSVSy82ZMoVJBtj2FIop+12nvgBE31sbAC0nNoMKg8AZRWw0E7SGyXGxI0
	/0UidDhccwP7rGtyy+mg5IW1MPGjfhM1S73EkyntuC9i6NMAr7JzDxykwMz9yA3JxHIIQcNmRil
	DC559aQ6FZgtMB07vnfwE/COiz/VXKeZYXEJKrFlvuwGBeeUPWFx8ko7rZAjfo4vCXhw3maCbQR
	rX5BqvSYio9AMc2mbk1r09FNGwSeoYjzkLOPxfrm0Np8guKzJLzfkf/HTde6+4Ii4F9S4Nke0AQ
	P4xNtMPBqcMmNTQV2WJZW6U2OBDcxhCidmI3fCIc8pE521ibtcJESlQOJgJzgDmmMdg29ndWR71
	hXPo8QDa3QDzB7rllXsMVFMSTGgypmQAvoV2xG5usIyXm5B/qp0exy9xtvCU=
X-Received: by 2002:a05:7301:4208:b0:342:39f5:f9c5 with SMTP id 5a478bee46e88-3515dd7e704mr4466009eec.18.1791424257720;
        Wed, 07 Oct 2026 18:50:57 -0700 (PDT)
X-Received: by 2002:a05:7301:4208:b0:342:39f5:f9c5 with SMTP id 5a478bee46e88-3515dd7e704mr4465976eec.18.1791424257171;
        Wed, 07 Oct 2026 18:50:57 -0700 (PDT)
Received: from QCOM-aGQu4IUr3Y.qualcomm.com (i-global052.qualcomm.com. [199.106.103.52])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-3515abb7117sm11761823eec.3.2026.10.07.18.50.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 07 Oct 2026 18:50:56 -0700 (PDT)
From: Shawn Guo <shengchao.guo@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Abel Vesa <abelvesa@kernel.org>,
        Bartosz Golaszewski <brgl@kernel.org>,
        Taniya Das <taniya.das@oss.qualcomm.com>,
        Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Shawn Guo <shengchao.guo@oss.qualcomm.com>
Subject: [PATCH 1/3] dt-bindings: phy: qcom,sc8280xp-qmp-usb43dp-phy: Add Nord cfg_ahb clock
Date: Thu,  8 Oct 2026 09:50:15 +0800
Message-ID: <20261008015017.3359804-2-shengchao.guo@oss.qualcomm.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20261008015017.3359804-1-shengchao.guo@oss.qualcomm.com>
References: <20261008015017.3359804-1-shengchao.guo@oss.qualcomm.com>
MIME-Version: 1.0
X-Authority-Analysis: v=2.4 cv=NchzRGD4 c=1 sm=1 tr=0 ts=6ac6f702 cx=c_pps
 a=wEP8DlPgTf/vqF+yE6f9lg==:117 a=b9+bayejhc3NMeqCNyeLQQ==:17
 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=rJkE3RaqiGZ5pbrm-msn:22 a=EUspDBNiAAAA:8
 a=8IMiPDtIn6OAJiDpRukA:9 a=bBxd6f-gb0O0v-kibOvt:22
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDA4MDAwNyBTYWx0ZWRfXxl2kwmosKFn0
 m9jSmzOew9qjIFdRubLMxKzpedrv8EixKlkbxgaFohz91KpxonaAJYBHHwCkIhoA3f6dKtv1gFA
 V1kyOUzCQc5E1eYSoOQsNZxhTCxJoe4=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDA4MDAwNyBTYWx0ZWRfX9zS8InWvcwfo
 lzPNfc/5vDcXH8h9qtScbNX6M5sJv5Sr/VhDb5R7uO4BZqrO/nxTLUyVRAB8QcDKQBNDBrEeSFI
 Q9w0DfdpJXzsc803ACj4arRkGvAunKmlGwmCEc8P7RjHH6MGHTtUjo75WW+yUJjGHYlWxEJfpOm
 5MYqu6QuCYUS5k1K51jRZYb4NmY+h8oG3MnWcRcGN2ZG0CzYDcHKh2sZccnWiPqZ08oSUJ5cIQp
 l70taoIQr2A/UTk0yTdqqRFK0vcQqxEZfm3eYbsDeZVddnzhetWBP/I8gELGX1MFsFKulOwFL14
 2uaySNoaRstGvp7sMEOBI4D0ZCkulEzHYR1YoT9CERVsel/RcULfe54rjplP0B0PphINvcnn9Fe
 bsYBqEasv0TIMhwD3WrEnEdk7bohy2lJu8UFBRydrxW7L334QGO/OsbK1gSX6/mFZFCoiWn5iUU
 DpSjaTBYs68So5P2mCg==
X-Proofpoint-ORIG-GUID: t8dpIFvNOGKdm7gFlvysUzwDzfTF1HXx
X-Proofpoint-GUID: t8dpIFvNOGKdm7gFlvysUzwDzfTF1HXx
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-10-08_01,2026-10-06_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 suspectscore=0 bulkscore=0 priorityscore=1501 spamscore=0
 malwarescore=0 adultscore=0 lowpriorityscore=0 phishscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2610020000 definitions=main-2610080007
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261007_185100_101603_8F16933F 
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

On Nord, the USB3-DP PHY registers are reached through the AHB2PHY_0
bridge, which is gated by NE_GCC_AHB2PHY_CLK. Describe the bridge clock
as a fifth "cfg_ahb" clock for Nord, using the same clock list as SC7180
and SDM845.

Signed-off-by: Shawn Guo <shengchao.guo@oss.qualcomm.com>
---
 .../devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml  | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
index 13e64fe510b8..809bd4e1090a 100644
--- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
@@ -209,6 +209,7 @@ allOf:
         compatible:
           contains:
             enum:
+              - qcom,nord-qmp-usb3-dp-phy
               - qcom,sc7180-qmp-usb3-dp-phy
               - qcom,sdm845-qmp-usb3-dp-phy
     then:
@@ -229,6 +230,7 @@ allOf:
           compatible:
             contains:
               enum:
+                - qcom,nord-qmp-usb3-dp-phy
                 - qcom,x1e80100-qmp-usb3-dp-phy
                 - qcom,sc7180-qmp-usb3-dp-phy
                 - qcom,sdm845-qmp-usb3-dp-phy
-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
