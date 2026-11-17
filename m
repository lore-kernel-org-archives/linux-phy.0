Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BEFEF606A8B5
	for <linux-phy@archiver.kernel.org>; Tue, 17 Nov 2026 09:06:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=MpEOKGrb;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=lzNYJdCQ;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=TmnGZepO
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=B7G6YsalsCFB1KTrDBYwyc7KT+13Qh1yD2SWqaHl6sQ=; b=MpEOKGrb3QQsz103Aq7L4bEq5G
	VWuB+M8PzdvxWY0G5YoRaTWgYjxuAffgu3DKKCYDYlnpoRx+afxlGwoTWhfe58eEi96+FcwCnVlTG
	60NbRcvylBeEhAiM6IoFbPBwABAfw+WUF+GUXW5nZZCUrdqtEBOcStoieE+Ms2K94RrC+x2afO+YB
	JaPyeFIsJaEmZYyspHdHs2sHQHZfzVn+/d/jGTPgbgGhZM8l5vR0uzWRtyFWL+OSjXHKUFScecACt
	LgfvIgwOPlrUSQ86GWmsGBz7RhyQnjcWvqdeIF7yf1RhQFD8Mpy0Y5pwdw5TeEp5A8FbYt7a1eNea
	ohXEXTHw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xTF9F-000000051Xj-2CGm;
	Tue, 17 Nov 2026 09:06:41 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xTF9C-000000051Wo-1ueZ
	for linux-phy@lists.infradead.org;
	Tue, 17 Nov 2026 09:06:40 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6AH8Lvju200079
	for <linux-phy@lists.infradead.org>; Tue, 17 Nov 2026 09:06:38 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	G1aPL1MlNOGc/htpoxXZOBRFJ5I2czNFzBkTOlaU5EM=; b=lzNYJdCQ+22v8uiy
	hhXCrfC/TRosrojiSfVmW68T+xQ+kVNhKZ6z9BJtyFXWXrUmgX557PPBYZ/xL4zA
	nsTTE6HP6rVdsPhvwgvX6abtP7tninpBz3p1nIlL1LA3pFq76Z7vp5hQX2hC1O7U
	0tkbb3smj0mv68CjhHGqjmw07BkXr4FsPKV8Jvas0zsKDdqlui9sDnKrBjmzbd9h
	NloZqjuX84MHhFCPcZWvYng1dR1WBWs1lv/QcY/AmhFiGoZj7Ki2h/OakXTWORP4
	3ij0G/ueT2OGTOssKU6UXXvfPNyLVzEKEqz7rZvWKxvWKiKx00QRKN9fU6xgqyeV
	vdbBxg==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4j038mby6x-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 17 Nov 2026 09:06:37 +0000 (GMT)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-920f8fe046aso17844686d6.1
        for <linux-phy@lists.infradead.org>; Tue, 17 Nov 2026 01:06:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1794906397; x=1795511197; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=G1aPL1MlNOGc/htpoxXZOBRFJ5I2czNFzBkTOlaU5EM=;
        b=TmnGZepOIyAm8l6A5r12S9dypfX0cmPAorkNJmKVNqk+uaggilmn5dvMU188Woh00p
         w1n4fZEwoFa2/e9Q2D1XuSgJyV/sLT+wzRZ8DdiUCpatYO9GKaf3jL0cx9hamHl2Atlb
         tosQH0MoTb4/jyzK3sIP0Sv7tEVJiDeAwFJOLbVFtXOI0ErOQDFv7xje77UpzIuKXHS+
         x0rFlckH7//gyJJpLJwYdCgsmfaEp9g3EgzHVjX3XPWMKAMqxlfkcBlSVRvdgvihPyJP
         65CmA008ODaJmIKC1hFzkkC9WgWReBELTQABI0W5i4RREUzC+1utohtgfMst8JwB4dgf
         HJ7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794906397; x=1795511197;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=G1aPL1MlNOGc/htpoxXZOBRFJ5I2czNFzBkTOlaU5EM=;
        b=lF9kpQwlEyOlevq0iV5W0/v3hSTunx6zvJNySwf1ZUmzUXUwrIb34tpm3g7Tzs67CC
         sA0ldNS5/tmN7uPOnYIhgXRe1IRPKO/ggO5shhZonj8L3o+Wvdl6mNpZ4g5Q+V7cYnGf
         gJS6vF2xWEBGhpIYXHcNq+BQ/zTOajcrym5jwqBkO2ftjJeg+1WJQBKKAL2WkBv0FtJ5
         Iu11SXrwVNonLrsDKTHuiRMoKpH9y6yUpGTTXgODMeggOTY1XHP2rydk4yZtAKPdnzJm
         OIppK/GMoFURv6HdZWd34zndLNCx1Yk5sjJmWfTXRoCyTS1qeoqUD+bHMbcRkJagPqqo
         PUFg==
X-Forwarded-Encrypted: i=1; AL+hErGjYFiGzQgJAI1W9Bxaj603VpnaTVNem5TkLrMglBmWOc2ZRIReRe+uRzLUpJ7BAX3iePuop8Escx4=@lists.infradead.org
X-Gm-Message-State: APuU4Z+MvmPlkY48vpZ0PI/gJkRL6xGpR6DOBsRXFE3dWH2qpt44WXM2
	I3dq3fmMNJr2KxfkGkK/EmyVEbpsfyH+GYEr3Wn1my87QJmgdyu4OBHmQJ+0ChRgpCKzbrUpLzq
	wdUrpD3pemS20dBT3RHwNNBoM7ZvH9wf9D3K+jajcXa7gUvkdUPLY3bpYvYVQW8oU6Wx3
X-Gm-Gg: AYBFou0x+/TVK5cJFdojMvTE8T6cqkVUKFKa8e2f5lnkfaCIjfzJBu0cRiCIP0+GD1E
	E5Gw2yFn9hfRsqtlSbXo5UOvwYw17sof9k+aMCFSUzEyCKiI83txBlW2wzvowOpvAoZYsUyNLzG
	PL9TmiU5wQhLpdsupQXpgM4VAa2Zl64jYKoldCV3HfT29cX+O7H4fb99WFgHcMimJYHCmYWFfzw
	+ECgXym/yuiaYGoF4tU0gu1Jd9GgeC2g1Leim1TDJCLykijAOc3wJAKbxYp8iHBzHqOVVSBPIS8
	bp2GsYvB/B6UPPRbn3u6BORPzNAiF4hS0et8CJe5mcJrmXM9xwkXBfuHnq/z9TWpuMHyvOOz47t
	2ObuqePGLP5SsXx9HOqf6TVy/5NBLBQG0toQSSLsF3rzOK1VESKlX6gdlTmCyJR7pUnlXsHJSxF
	A=
X-Received: by 2002:a05:620a:8390:b0:949:7497:7c1c with SMTP id af79cd13be357-949749783a0mr1047336085a.60.1794906396905;
        Tue, 17 Nov 2026 01:06:36 -0800 (PST)
X-Received: by 2002:a05:620a:8390:b0:949:7497:7c1c with SMTP id af79cd13be357-949749783a0mr1047331885a.60.1794906396291;
        Tue, 17 Nov 2026 01:06:36 -0800 (PST)
Received: from brgl-qcom.local ([195.50.164.66])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-49c60f8d615sm27310657f8f.56.2026.11.17.01.06.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Nov 2026 01:06:35 -0800 (PST)
From: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>
Date: Tue, 17 Nov 2026 10:06:28 +0100
Subject: [PATCH v3 1/3] dt-bindings: phy: qcom,sc8280xp-qmp-usb43dp-phy:
 Add the cfg_ahb clock for Nord
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-Id: <20261117-qcom-nord-ahb2phy-clk-v3-1-ce5ee1073208@oss.qualcomm.com>
References: <20261117-qcom-nord-ahb2phy-clk-v3-0-ce5ee1073208@oss.qualcomm.com>
In-Reply-To: <20261117-qcom-nord-ahb2phy-clk-v3-0-ce5ee1073208@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Abel Vesa <abelvesa@kernel.org>,
        Shawn Guo <shengchao.guo@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
X-Mailer: b4 0.17-dev
X-Developer-Signature: v=1; a=openpgp-sha256; l=1951;
 i=bartosz.golaszewski@oss.qualcomm.com; h=from:subject:message-id;
 bh=O068p3qvY13gpO1dapynH3Vca4Ot7GTVTMBYtc7x7LU=;
 b=owEBbQKS/ZANAwAKAQWdLsv/NoTDAcsmYgBq/BkWaH0DVs6hwvZ7sOYbRSydJrmgAr5t8FV+A
 Gp/dGqHDFKJAjMEAAEKAB0WIQSR5RMt5bVGHXuiZfwFnS7L/zaEwwUCavwZFgAKCRAFnS7L/zaE
 w443D/9TbrlZs9tS3VbmqVk5HYrt3fS2uqe8ksEZV8PZAbNcz+UPZAC5gU1uYtHkiPYpvVnf6AD
 vzLkwE/U+kb218VDHh3A/HVNhL/16BpQjubHC2CCesAoaQDHqyEmhsamR4cbrwHCDc5t0x0GySD
 yOvQPe68WH3Jz+DMvd+I2n84K3QFTRbA2Zskx7o8eKiK7sUOYM1Z1A2pMyWUx8jTMIb+h15XxF1
 wZcw49vEJyDghi4SPkRMDZDp17zN8rAI2uWXx926io1kds3rI93zRjtWCzVZ33q2Sbea2ZmvKJs
 TZiB9LD89sg9ssvCYxk+mJjENzGvE7w4qiEO2MqOflEl+RH6P6pe9f67b6DHXPJj5x30ZjtwyMC
 NaeOsRXws4bio2w3KICUkzPDaRAVKvhdK74OZiUI6N/tfxC31fbGBmZvtwOiWswklDTE3iGgOs0
 mJRO/TaSYmQSH1mm1xpQ3waeHC3AfICnLZ2zQLfnL3ycNjQt967fGYnsmH78zZ3HCls0GAXQB1k
 Az+TX9py9CJiuIEBoN1WOcUX7NLQDi4g2Y9r4azCvjxqA9j561kwdhzd4U+lbvbFBpybosUeCRU
 nzY3tkGBQLcjZk43aVt67wUE0kuWr8oiQRqYH4i3CnH1yZZ5+MquZapgbdbJjohq4ecHwvtZzKd
 QhOVUodO7zGm8VQ==
X-Developer-Key: i=bartosz.golaszewski@oss.qualcomm.com; a=openpgp;
 fpr=169DEB6C0BC3C46013D2C79F11A72EA01471D772
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMTE3MDAzNiBTYWx0ZWRfX9cpix0xAPy0R
 GzENqvrir6rZ7+iehBQ2DAydmtJhdnHOdJRVLL92xAqKpZJ5Si6/2GvtiIMmZAOtAfrUEoYny1S
 KorEeZCsbj5F/VP0ek+W41HvPuPZjUpv5TKmtec1lTuEFVFM3hoHhdWaM/ZsMnp2FUqbooMRFRD
 WCbHIPByv435DhBRESNNhHgDkqoUg/OjZsR6waCnK+3Neojc+6Fn8y8q3xh4W/hVBKacitmhtcN
 sSTIJ57XR2ZEGV/T9EzhIDk9ssLEIHRv/GahbP4wYfVjD2ruiBYir1DR0rT58jx18fvYiFlBjzA
 PF9ppLPdKF29HomlP/LlC5eU2nKyKTeJzlcxoDrxs12G6lVFUdRNBR6G60K11dyb/tfmWqe1tVA
 O5BXFfQ/j9s57YFvN9YHbvQr4hTmgT8+LtD8otOFIFVjefsIDnPr+krjPtV2iocC5w9G5PSEsF8
 ZHIuij3A3kibR8NyRog==
X-Authority-Analysis: v=2.4 cv=TckDJhQh c=1 sm=1 tr=0 ts=6afc191d cx=c_pps
 a=UgVkIMxJMSkC9lv97toC5g==:117 a=Jk2/TV77q6/E6wQq2oQJxQ==:17
 a=IkcTkHD0fZMA:10 a=zJRp6_cAMcgA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=eoimf2acIAo5FJnRuUoq:22
 a=EUspDBNiAAAA:8 a=2jpwp6DS_NLBz8rowOEA:9 a=QEXdDO2ut3YA:10
 a=1HOtulTD9v-eNWfpl4qZ:22
X-Proofpoint-ORIG-GUID: P_8B22kG0QJxb_STiQhvQ8m7XqkcRDYU
X-Proofpoint-Spam-Info: AW1haW4tMjYxMTE3MDAzNiBTYWx0ZWRfX2bbxu7gtsSvE
 RhGnhWYkCsqcWNYvEljXBgT6EfZnGivJrEJg9anuV12oYUSx8u8P9Qe0on6lYBKiKnnEy5ko6+H
 XGWfM8XfgPeiqcRZSOnqGydNRdEVxco=
X-Proofpoint-GUID: P_8B22kG0QJxb_STiQhvQ8m7XqkcRDYU
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-11-17_01,2026-11-16_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 impostorscore=0 lowpriorityscore=0 phishscore=0
 suspectscore=0 clxscore=1015 spamscore=0 malwarescore=0 adultscore=0
 bulkscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2611040001
 definitions=main-2611170036
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261117_010639_385772_49C45071 
X-CRM114-Status: GOOD (  11.13  )
X-Spam-Score: -2.8 (--)
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-16.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

From: Shawn Guo <shengchao.guo@oss.qualcomm.com>

On Nord, the USB3-DP PHY registers are reached through the AHB2PHY_0
bridge, which is gated by NE_GCC_AHB2PHY_CLK. Describe the bridge clock
as a fifth "cfg_ahb" clock for Nord, using the same clock list as SC7180
and SDM845.

While at it: make the constraints stricter than the global settings: set
minItems to 5 as all three architectures require the cfg_ahb clock.

Fixes: 674e602140a1 ("dt-bindings: phy: qcom,sc8280xp-qmp-usb43dp-phy: Document the Nord QMP PHY")
Signed-off-by: Shawn Guo <shengchao.guo@oss.qualcomm.com>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
[Bartosz: fix constraints]
Co-developed-by: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>
Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>
---
 .../devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml         | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
index 13e64fe510b8f..8d09e6937fef0 100644
--- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
@@ -209,11 +209,13 @@ allOf:
         compatible:
           contains:
             enum:
+              - qcom,nord-qmp-usb3-dp-phy
               - qcom,sc7180-qmp-usb3-dp-phy
               - qcom,sdm845-qmp-usb3-dp-phy
     then:
       properties:
         clocks:
+          minItems: 5
           maxItems: 5
         clock-names:
           items:
@@ -229,6 +231,7 @@ allOf:
           compatible:
             contains:
               enum:
+                - qcom,nord-qmp-usb3-dp-phy
                 - qcom,x1e80100-qmp-usb3-dp-phy
                 - qcom,sc7180-qmp-usb3-dp-phy
                 - qcom,sdm845-qmp-usb3-dp-phy

-- 
2.47.3


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
