Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 866A0CA6010
	for <linux-phy@archiver.kernel.org>; Thu,  8 Oct 2026 07:14:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qa+RYaKn7UZHA5+7M4h1qbFwpttyMVEPAfSUKZ9SmDQ=; b=SAI4q4X2gznL5a
	KJ4NzWV+P6wOiEd95/6gb36KaoVVFUyDwv4ph+B9IsauqBBH7azap8TR9Wr++3gW0LUWh5Btf8TRe
	gjaNUJVvxQAVq8e7GHN2bghgXTeXfJkcQeRBdbYQWrrmJRUdx+QiuNnX7/PuCPhACnOoEsFVanVo+
	G/4yK0OAdLWHUaYQGfqkJVBxX9fefULUiN+u8ffTkt87zvO3ylu4rgwlgfxQYwlfsskZDv97jaqOd
	rp+liiqCUK2Xn/RGLsxnrnerCEH2cL6lE6vHjewPx8EE/kZqHbHRZUh+si4/NZJJZFiuUidPMjdZX
	ZmdogoKmWSGqoN+k8c2A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xEiKx-00000003iEX-084n;
	Thu, 08 Oct 2026 07:14:43 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xEiKt-00000003iBY-32k4
	for linux-phy@lists.infradead.org;
	Thu, 08 Oct 2026 07:14:41 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6984BUaa1775343
	for <linux-phy@lists.infradead.org>; Thu, 8 Oct 2026 07:14:38 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	IbiNyzfqx0jGWwabN/+ItDIDzhYhWzZaMzG7MQNpHsk=; b=T4LqJ73iX424NhwF
	OvaG60i2cpo7delpM/GwgtmTXxSsHL26iXAzduGSNUG7lSAVK3CZXwzQq4iH10sb
	n7PcComUKC3pOp3p59Rg2stI95rSPfJYutBHoOs0uHsPT7P6bz4ZTEQuS+7w/r79
	TGn/LVVqo2O2bdrPyQMsyZaspLiubCFAlSGw4UviVwgaakea0xGF4GiYAlwIfwYA
	sBhxDNj+P0SMtuqiluBjypx+Jcs5c8ohZcUqgr4KVWjAJOwamLCA5vCWoM3ZF/1H
	SAbS0ad8Yx4srzM42b8n0cm2xx4TrxCWkhU2T4l1Fh16xX6bN8XRDY+X/S+L7kGt
	mQ3G4A==
Received: from mail-dy1-f197.google.com (mail-dy1-f197.google.com [74.125.82.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4h5xe39kws-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 08 Oct 2026 07:14:38 +0000 (GMT)
Received: by mail-dy1-f197.google.com with SMTP id 5a478bee46e88-34ef5fd7934so13375453eec.0
        for <linux-phy@lists.infradead.org>; Thu, 08 Oct 2026 00:14:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1791443678; x=1792048478; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=IbiNyzfqx0jGWwabN/+ItDIDzhYhWzZaMzG7MQNpHsk=;
        b=AubktechZN02CruOFLlNFkMI5cNbktPYqyaYe2ytgF0VhMQJ+w7AQ486LZsiupjZXL
         qyuWbYmsIWGbqIFZ9NMCjZRzs4vgWxIL0vIyjDAW3jwfRfmfBqgovXU2ylIZQJGRHQTT
         GgebxfpctSQeNQXgof5kNSmLwmSG0fSWjj6kdGR5VqIKBDVdcAeqq075Kb9MW9yV+L/n
         S6PFGlC8JndZLAvdrni+GaYGSp7q0zzDEYQtjKuV9gdAc03taU00hVM0JsKWFN3rKkqA
         Lt5JUUSMBmafv2Jb9Do2BApkmPlp4cYgVUbo5wVC51pMQHXof54v8Fwyba1zdexSwzh5
         er/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1791443678; x=1792048478;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=IbiNyzfqx0jGWwabN/+ItDIDzhYhWzZaMzG7MQNpHsk=;
        b=nJPmC3C0Z3TKN2uXCoT171HY+P+W0sIE6HmTaRaq6eK7XlgAWOL6rBHlLPvlJmqWR3
         h77a6qi3AfEFT8Ds61wP2oSzMN8BVio6uh30NxgBZFLtFw+r+Mz7m3I4X9CvroWHgQDR
         m1KyLNVqkxwl8hclXi2ZVOW34b7hbqQv3+rAnBcBwSNYUXYwR3A9h/m/p4AeHKARUNS9
         rTrnERiWp8ZVGwgzjcs/LvSKfXfcVTNtVuC9AH0jstzEor50EPgwHLcHdWg3Wb7Kv2qM
         ZOzCXqgPPB0+F59Fft+FnnmR1gpVmodee0LtEPQ6QFxFG5QToCuabSVVD++ohiAew0xM
         9fxQ==
X-Gm-Message-State: AFuF++mOw0ufVYI+U70MwUwRHfw/3Xq/vjdjwlJpTK/ufjH5qMBaFrWw
	LEGPsvdWJ5QU/S1OJVUZrwniYcOvATEd2o4fT8nW1rykQKvIkzCqzhXr3o4tr4SVel5zJ5G8LuZ
	ZjQbQelDCIhOhC8CiDHA457RR2+iXFuIA+oov3eaBdye7Tz+hAD5x8PNjPa9MXUYxJwlO
X-Gm-Gg: AYBFou2Iqqd23U1odDDa4qUI3KkH9RT/PpjeLBIqXCILlh2h5EZCaKLbQa6AIUo5t9D
	cjjcKPZKiseIR5A+jIM9Oo71H740iQs37BxbiIzMTJUpo4iCrLaJAr/Zrbv+fdX02AzRHxb9W02
	m7QibvV1xet4XVqojNDk9MNJsPPyP5Qar7jg4W7PoriigDRI6UX82H91v3SfyadWX5ZriNAeYMC
	HOGGCCYe3QXXtASHy7Bejs82dEtWQwr4OXWDfQpZTs3xNvtOqwiXVdr8BpIfgWrbb7B78Nlt00/
	w0X1OtFBPgY38ybbXyOvbLkPGrUJm2Ij/BNBznkfK/eOw0tk/916UUVVjk+b6w3JD7nhZVM3b6S
	2S8jzlZYoee+6DIeM6C4GjRe6zMA+wOR0TzyDoDmeSGY8aPBf9Y0kA9qZB7ZegChdiwkOPUjJE7
	b+gHMzfbxODg==
X-Received: by 2002:a05:693c:8819:10b0:352:2e15:49a9 with SMTP id 5a478bee46e88-3522e154b4amr397487eec.33.1791443677778;
        Thu, 08 Oct 2026 00:14:37 -0700 (PDT)
X-Received: by 2002:a05:693c:8819:10b0:352:2e15:49a9 with SMTP id 5a478bee46e88-3522e154b4amr397418eec.33.1791443676710;
        Thu, 08 Oct 2026 00:14:36 -0700 (PDT)
Received: from hu-hangxian-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-3515af155b5sm12251625eec.12.2026.10.08.00.14.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 Oct 2026 00:14:36 -0700 (PDT)
From: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
Date: Thu, 08 Oct 2026 00:14:31 -0700
Subject: [PATCH v19 01/12] dt-bindings: phy: qcom,x1e80100-csi2-phy: Add
 Kaanapali CSI2 PHY
MIME-Version: 1.0
Message-Id: <20261008-kaanapali-camss-v19-1-b2c583ef50e0@oss.qualcomm.com>
References: <20261008-kaanapali-camss-v19-0-b2c583ef50e0@oss.qualcomm.com>
In-Reply-To: <20261008-kaanapali-camss-v19-0-b2c583ef50e0@oss.qualcomm.com>
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
        Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
X-Mailer: b4 0.16.1-dev-17221
X-Authority-Analysis: v=2.4 cv=J4s/fwnS c=1 sm=1 tr=0 ts=6ac742de cx=c_pps
 a=Uww141gWH0fZj/3QKPojxA==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yOCtJkima9RkubShWh1s:22
 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8 a=mZPZtqNPFm0sPOGUM0AA:9 a=QEXdDO2ut3YA:10
 a=PxkB5W3o20Ba91AHUih5:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDA4MDAyOCBTYWx0ZWRfXxAXPsgVFEkQF
 rzI25FclJhyoQ4x2G6ya+hm7ckfuBOZo9Zd0qu+lobePflDqdn+8MaWhp7+HMfQ6qz9Qm+Wd1ft
 M3opB4PU2+o+8hk+4x3fgMf5+mwRd+U=
X-Proofpoint-GUID: 9iQAyoQPjTuanHxxT8WSopTumb4Fs6ID
X-Proofpoint-ORIG-GUID: 9iQAyoQPjTuanHxxT8WSopTumb4Fs6ID
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDA4MDAyOCBTYWx0ZWRfX2ANzuYS0b6LR
 toUZL0ZjjYy5x/7XxKUfbdWeXQOWY2HrhiKMXAitbo3+3/ocJ0AkMuFVzpucPQnycxhYtbsNiVP
 goDNrqNmrR5XCI2a3oJWOTzNAQrxm5jxEJPEBDKLpbeQtu5Q/S/BAPmPgjj3b2Cl4twv1T/cyFY
 zE/Phjh5aF8CuokU5NlanMcDatkoGMdauvszTmwUpRIkwkAjNEoViI+y7VyGlmVp9tcfPXv3Y92
 QMyf2VQfh5zWEXUxzOOi/2Q0xy6TFZdLLUXkLMQHGk2aqp/K3KnaVuiU+MDwfoyiYvxtPUHymPH
 aOS9vIFf+DkQJZ+xFTJSRAAWTIpzOdt0pxQ6qVhoosm6BQnbhNS0HyyV+BOu3K060vSwh9F2628
 1jfoDCnP2U9Uiv1w3vCp7ujuOn5jEhJuzf5Se4OnIDquZGMBX0zfAZJgWZAY8YWZhGmOl7dTBYX
 4JwDB5hwTR8wYFu93dQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-10-08_02,2026-10-06_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 spamscore=0 phishscore=0 clxscore=1015 lowpriorityscore=0
 adultscore=0 priorityscore=1501 suspectscore=0 bulkscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2610020000 definitions=main-2610080028
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261008_001439_807023_7E45B8BC 
X-CRM114-Status: GOOD (  11.20  )
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

The Kaanapali CSI2 PHY is compatible with the existing x1e80100 CSI2
C-PHY/DPHY binding. Add the "qcom,kaanapali-csi2-phy" compatible.

Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Signed-off-by: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/phy/qcom,x1e80100-csi2-phy.yaml | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/phy/qcom,x1e80100-csi2-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,x1e80100-csi2-phy.yaml
index 1f1e2a4993b2..6e9eb8e265df 100644
--- a/Documentation/devicetree/bindings/phy/qcom,x1e80100-csi2-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,x1e80100-csi2-phy.yaml
@@ -17,7 +17,9 @@ description:
 properties:
   compatible:
     oneOf:
-      - const: qcom,x1e80100-csi2-phy
+      - enum:
+          - qcom,kaanapali-csi2-phy
+          - qcom,x1e80100-csi2-phy
       - items:
           - const: qcom,glymur-csi2-phy
           - const: qcom,x1e80100-csi2-phy

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
