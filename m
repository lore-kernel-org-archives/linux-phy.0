Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EAC82CC6B03
	for <linux-phy@archiver.kernel.org>; Tue, 13 Oct 2026 11:03:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jp3mCRr5kY4Z+tPHpIdrwo7MeDnE3t6cIKLNUhO0064=; b=HL76ujtaCdcGuy
	DNMBwa4mfNIq6HEP1aGGXkdwthsV4XHWK6MH6WTMpy2SXZhmOV4Bdn4vR0kldFVIdkUMfiJqX651I
	Q+j8pko6FaUfjF313gu65903fw2eoOkzNUFsuYN9FUrHEpHFTN486JCiAY6c42Ep4c8JfVkDKpkta
	NbN2DxNyWb7P7lVrwaXEwtpOkDLRN73SDovjXhriEX3Ti1tMbRf4p9qVcx+y0Lz5XUoW1S1f/xlmj
	b4FkPPNSKclUD/ITyX+LhWs1Uv5XmXsPuaDDdATSCrnO4ubxozKVyJDMJd8LKk47ZgHZnnN2Oze/K
	YM15jot1QCCIG5WzyJLg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGaIA-0000000Cf2R-2aRV;
	Tue, 13 Oct 2026 11:03:34 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGaI7-0000000Cf1f-0xhw
	for linux-phy@lists.infradead.org;
	Tue, 13 Oct 2026 11:03:32 +0000
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 69D8jqap302932
	for <linux-phy@lists.infradead.org>; Tue, 13 Oct 2026 11:03:30 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	9J/rHMnqzSTznjnID/DQZdtKHmt6ZnAiVdjltxjn+5w=; b=lUn01nCHg+o0RZAd
	SnSyIPhjmuoSVtJ4PJwkt4Q7qZqdD89zQTaME7YbL5zg9EngqhoXaJIYMf2wJ+Yi
	iIgXpjgVv1g8FkJ9rimkIsnc9mir3zjMUIMLl4H11lvRrayJqLkF9fgG8qAYX/o/
	Xd8hG9OBAKLNSBQKfUXrdIeppE1Jz8m5szgUDOEyMVYPMujYylMmLLsKRAvhLyaC
	hC48MEGYSn2X302DknRIJ8ZhAhNiGZqqpwFF7VNrIDOH6hYSQ2ds8nxzhvrVuTq1
	oDNlfvtWtdQULakoWJt/H0uutzMYNNl18UAw+AA44375Z+NfsvIIKj9RrrwI2iqy
	8py8qQ==
Received: from mail-pj1-f69.google.com (mail-pj1-f69.google.com [209.85.216.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4h98sqahgb-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 13 Oct 2026 11:03:30 +0000 (GMT)
Received: by mail-pj1-f69.google.com with SMTP id 98e67ed59e1d1-3a8041a532eso2144287a91.3
        for <linux-phy@lists.infradead.org>; Tue, 13 Oct 2026 04:03:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1791889409; x=1792494209; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=9J/rHMnqzSTznjnID/DQZdtKHmt6ZnAiVdjltxjn+5w=;
        b=VN9a7gb+ioMEB2RB66FnfltCBbyORr7RL5zYpvtKId8WHaJPE+UcnHMLyjmnGmsJqS
         qY7g1Nlw82oLPD/I04XMCrk4j8P2lLCxCx/9RATt6qdVgLW5GF58YCIGbG2FT+usZT4s
         GBbz/tPpvzYWdlo6e4QFsb4INd5hFQ0eetXSia56bqpCd6MJC7UortWVOWZElWbXjirS
         1qg4/g28JgeF8vGMrEJqZ+qkCIdDShIrwSXu7GVbpvAFw6DFOvqUXc8XnGOTP2fNxMUU
         vIJbbPhVS7Sm9Vg1se3DN3qmUPZbEyOt7/ekiNYMn6q0owP9DgLCHZmAv3+V9oTYkJPN
         2Zqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1791889409; x=1792494209;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=9J/rHMnqzSTznjnID/DQZdtKHmt6ZnAiVdjltxjn+5w=;
        b=HW1TouhFUmSFuJNeMyBueemcjmcrvLG3vYuwvFpGNfT2QbMp8HN/ubEcm5PNyxahwM
         y+rF2Stx0NivOuN82pJXqQim9/wCnD76XQ7wge0ntkjMcTxHzLrOZbnAZvNBuI59u+xb
         GwHF/m8rWP/IebRL1hJD5Lb0NnksqsMfBaN03y3OOt31MqlRIUlvCIIA08V5e/P9bo7r
         3x+tgvM/FsinzOb7J0nkl10mEZ/1hkc+BixCcIzHTI7DHe1H2WAaswc7BoP8jGES6zbu
         fNQn/vI3c7z3jHJuw7TKdLFBWv92TZThv/jdFzJTdfzK5y0Jttk2cLWjXM8By0TICXns
         VleA==
X-Forwarded-Encrypted: i=1; AKwUvBwoC1vPrHmCebfAJOb7D8fVZpTUYOSq5BDshYbiec8zOM7BpqN/Se8Jd1vQ0LJmwiAbjcZ5AyZIy88=@lists.infradead.org
X-Gm-Message-State: AFq9FYKFmAVacbl0oQxPdjSZGRZ1l7tRkIybTihB1Wi8t05KQrA1Mo8P
	/+mBCs8aayDgNO2+EOVA7iyts9HVIGX48MNYK+tHR1ePSGNcp8hEzUdQ1n/k1ji7lN9d6VwHw7/
	/MYtEWgkjIftaOys0PHVoyT1k7xX9ZTvsbJWfvyOEwFzSTTJVXumGeeknO46vbToTnka4
X-Gm-Gg: AYBFou31w2xl2cJsQRl4A12GSeUAVwri02pScwqAvinnH/LzNWKSlUhJlTMTXpnf9oM
	Dn0rSh9qo5pKW4Iwkm/9nA/rRycBkHuFZllGPkCWw3DR4VRnpNNKiIbQDpSScbXgwmRNVbjEu1q
	0J/B8HbIGar5dCeWoLDq/H7gCWL3WYsJaTawy0/NMScST6ECpswZH8anQNOQz4+dj3L5sBmeYg5
	LRuPHzLVVWPmV+ZBbQpOG1qbEOOaG4aPW09l10hjXHw9emPmDfamRSMeJj/4Ciuq2s13T1pB3cH
	KWuzIilJLqzqJipGUt3R6ErtY/8ppq1DkNlK+/6il6LQIr9ovlz2Yz08LP7ftvegEH9WRRS5cLE
	QU1f82PiHeDb8aR13LkpY6qHwKP8oIYE=
X-Received: by 2002:a17:90b:4a45:b0:3a8:bb9e:f8d2 with SMTP id 98e67ed59e1d1-3ab3a9aa915mr9789887a91.64.1791889409107;
        Tue, 13 Oct 2026 04:03:29 -0700 (PDT)
X-Received: by 2002:a17:90b:4a45:b0:3a8:bb9e:f8d2 with SMTP id 98e67ed59e1d1-3ab3a9aa915mr9789834a91.64.1791889408475;
        Tue, 13 Oct 2026 04:03:28 -0700 (PDT)
Received: from hu-nihalkum-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3ab36f46dfesm20808403a91.8.2026.10.13.04.03.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Oct 2026 04:03:28 -0700 (PDT)
From: Nihal Kumar Gupta <nihal.gupta@oss.qualcomm.com>
Date: Tue, 13 Oct 2026 16:32:44 +0530
Subject: [PATCH v2 2/8] dt-bindings: phy: qcom,x1e80100-csi2-phy: Add Hawi
 and Maili compatibles
MIME-Version: 1.0
Message-Id: <20261013-hawi-maili-camss-v2-2-fc93222da89c@oss.qualcomm.com>
References: <20261013-hawi-maili-camss-v2-0-fc93222da89c@oss.qualcomm.com>
In-Reply-To: <20261013-hawi-maili-camss-v2-0-fc93222da89c@oss.qualcomm.com>
To: Loic Poulain <loic.poulain@oss.qualcomm.com>,
        Robert Foss <rfoss@kernel.org>, Andi Shyti <andi.shyti@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Bryan O'Donoghue <bod@kernel.org>,
        Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>,
        Nihal Kumar Gupta <nihal.gupta@oss.qualcomm.com>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Cc: Suresh Vankadara <svankada@qti.qualcomm.com>,
        Vikram Sharma <vikram.sharma@oss.qualcomm.com>,
        linux-i2c@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-phy@lists.infradead.org, linux-media@vger.kernel.org
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1791889386; l=1331;
 i=nihal.gupta@oss.qualcomm.com; s=20260608; h=from:subject:message-id;
 bh=HElkjSCZEjUxRh9S6WgPJ0hL+GG4FcM+5VPQWUU3Ask=;
 b=SO5o0ntyOogXjZdPNF8QPj/q3hLsuOA3X9J2TKV+Dq9GR7p4+bflb0L3COeVlONuL7E3xBKO9
 mGR9EwasLA0DZ7ZUd3z14SNpX7JAMVIukihJOdikCvM7HFpxtDds2hZ
X-Developer-Key: i=nihal.gupta@oss.qualcomm.com; a=ed25519;
 pk=DIbyFMNwqU/iMvU/0pCQp2wmRVgtHFBT3PcSu+A+Ncw=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDEzMDA0MyBTYWx0ZWRfXyZmZUFzD8x99
 3sZyFfI4b5ZilEGw8omvpmyoSB9oz+GKpTUOR2FK0Zgy1yU0lURv6tsFx2CS3/vpB4CBHlgvF6/
 K2ywT0/V9P4/hNIgWRAZhMpS7qjuwSXxAovX3EIPNmXrJVwNuCnu6SB6GvmD3p7Ww4M+Mm6cxk4
 wDgkdMGjBf9zvhkcsnz56o7pHJeICUFb0d8vvogxoHgtTPgjcNbObh8owEKjqR6uUJTvXMNt/4g
 z+savW7lQKHKTInMQAALgbKKmIQfEVbWz3UceoACnJHzfVw7QXdhBNsm1gmW78+Bo29DQOWSo+R
 Jpsw9rqltyLWu/a1oK9QAI4PRLPhi1sBJcaVKWirVHOEv9rBJMi2pMagxoqDiSWGOuNBZ7KDwW5
 ljtGFVr66QXQvNh+ACAYIMwuyiVhERBW7RHUR4wtd3em0BeL91r3sOXZXVaw5c6QrMTWyahxD+9
 eNcn9AazrrFIumpyK8g==
X-Authority-Analysis: v=2.4 cv=JN+uIMKb c=1 sm=1 tr=0 ts=6ace1002 cx=c_pps
 a=vVfyC5vLCtgYJKYeQD43oA==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_glEPmIy2e8OvE2BGh3C:22
 a=EUspDBNiAAAA:8 a=Qbo-v1IXpRF52dvEqNcA:9 a=QEXdDO2ut3YA:10
 a=rl5im9kqc5Lf4LNbBjHf:22
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDEzMDA0MyBTYWx0ZWRfX+kwyNfWYAIz8
 LBOE3YzhLiFj6EZRNX0850AdMw4W+WeQuaGCMVTIC3H0Im2EHLApRHDRPQfL18Wpr2V73Z2YM/J
 u7QnaIEdifUmdEazQ/fsA5MpDmfgOrU=
X-Proofpoint-ORIG-GUID: NZUePrpD34RLNab6o-rSFvFyxvi4ByZ5
X-Proofpoint-GUID: NZUePrpD34RLNab6o-rSFvFyxvi4ByZ5
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-10-13_01,2026-10-09_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 bulkscore=0 priorityscore=1501 adultscore=0 suspectscore=0
 phishscore=0 impostorscore=0 lowpriorityscore=0 clxscore=1015 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2610080000 definitions=main-2610130043
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261013_040331_392247_68406B2B 
X-CRM114-Status: GOOD (  10.17  )
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

Hawi and Maili integrate the same CSIPHY IP as Kaanapali with an
identical register interface. Add qcom,hawi-csi2-phy and
qcom,maili-csi2-phy falling back to qcom,hawi-csi2-phy.

Co-developed-by: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
Signed-off-by: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
Signed-off-by: Nihal Kumar Gupta <nihal.gupta@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/phy/qcom,x1e80100-csi2-phy.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,x1e80100-csi2-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,x1e80100-csi2-phy.yaml
index 6e9eb8e265df93b631101ae13f31f6365b6239b6..627aebc7cd9b7ca313457d3f70f72796e9671e8a 100644
--- a/Documentation/devicetree/bindings/phy/qcom,x1e80100-csi2-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,x1e80100-csi2-phy.yaml
@@ -18,11 +18,16 @@ properties:
   compatible:
     oneOf:
       - enum:
+          - qcom,hawi-csi2-phy
           - qcom,kaanapali-csi2-phy
           - qcom,x1e80100-csi2-phy
       - items:
           - const: qcom,glymur-csi2-phy
           - const: qcom,x1e80100-csi2-phy
+      - items:
+          - enum:
+              - qcom,maili-csi2-phy
+          - const: qcom,hawi-csi2-phy
 
   reg:
     maxItems: 1

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
