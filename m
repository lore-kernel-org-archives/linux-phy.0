Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 08884C5DF70
	for <linux-phy@archiver.kernel.org>; Tue, 18 Aug 2026 06:16:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Js488e8fNqkq2G5JMGPXs6uDAnIQfv+SPIb/MutXMwg=; b=0fJrEls0fFhB0m
	JbLKrWPAL2/GL2AmjzBSMO3tirbKlIqBGwx5oyu0ZVGmbTKOtAv6pz1BaKVK8IzKFA8FblqPBO7NT
	oHBRIOMEcWKtKp3qkPHGsarLmE0FL6aGkaMf+iRwb/qds89y2P6mJQzJ6GmRlkA5IB3hjGzbmrDPc
	y+x79BfveOuaZMD+id+NBQhh+7jXXkLWeRMoAJ9dijgqGuPPAg0hR5tATkqEMSfPTNOQBY4H2aLXR
	G3XwNkF2siNFfNlNWcMaI1W41I+yzh7VLBdaPRJRe0OrmCnadeCUgLB3JuF5OYYpWG0G1OXZHFgZb
	17O7AecxYHOLGWzSpd8w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wwD7T-00000007OO8-2xnK;
	Tue, 18 Aug 2026 06:16:19 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wwD7R-00000007ON1-2Lrt
	for linux-phy@lists.infradead.org;
	Tue, 18 Aug 2026 06:16:18 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 67I2YPrV3761843
	for <linux-phy@lists.infradead.org>; Tue, 18 Aug 2026 06:16:16 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	wnwKj/cpjqzP2EkjJrznRodw4/AjM4xdBiQY4QDGF+8=; b=SXbccHd8ACFqUp1q
	wvv4hg+5bzjHMwsUcAcW/fXQo4WBWFiRRbkK71EO24hiGWXTOJV5RMlQw3iNd6wp
	r5Nt0UxhjnA9zSlOtlliphWID/4J8vEuLDmSrX5RGDtS8e0YCPB2TutPGlvtY5ki
	7O4CUwujK52Q2ib4QV3FBCEnI5e9LuM5qCiP7eC8Vn3M4lyMard2EUfbenlTovZd
	QiaM76w9k/sIjKSPJOWrWuCu4lFKrA3BnG2163WY+cH+bwckyqKXTmrTDIWFTdXx
	OaqPWOVY7a+erf7Le92GtKSk2rKBL3yKgXXU8xIpMZxmIB6xxq3+gACgA4Dea1ly
	orda2g==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4g4eqtru3b-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 18 Aug 2026 06:16:16 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-2d02df2bf09so43304025ad.0
        for <linux-phy@lists.infradead.org>; Mon, 17 Aug 2026 23:16:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1787033776; x=1787638576; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=wnwKj/cpjqzP2EkjJrznRodw4/AjM4xdBiQY4QDGF+8=;
        b=Cwr6M5pBFOKJKpad6XYeXsHbb1ka+HXQjKgEIdY333rRYx7AgJUOA7DRg6xPMIDHQL
         6w5xbROqKs/J/LmZLbGbOTefuG/oVZ7pIcK42j5oCQ90nTDFnVQTUNQr8fympYoWe0Q1
         n0f3QgwCMvM8jCZLldJYu48v23wN2VXmb58pEHB/1TqegHaoEjPfvpOpDry2U5P5TzS7
         20nuDTMs+07TvTefTDW/KmawMWrSupKVXhPpjr5VRB1Eh3RCWy4qs74BbGj/7EwAsyBn
         /tPLufjKrkHvWkj6mCw1DZ4Rt+tEM+BzZeQuQW5QeK7l43vig7jHZ+xrsW2vssEQccfI
         QpcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1787033776; x=1787638576;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=wnwKj/cpjqzP2EkjJrznRodw4/AjM4xdBiQY4QDGF+8=;
        b=ltoMRlMTpfimxUjFDPKZ7YmtGzPYs378kCWBe8ueskA8BaF2Mn/P5NkiJZe+KfCuMj
         L5yroqh+N06UdjAtm3LrqJdHg7kxThWsmzMy3xbN9qcP/jZ870FDt+XgUkFd5tG5xL/k
         RnPNyiEuafL55PIfRP53J2cMn/Fj/L0xaFhUDi6PlvjXYND0sr6kK0g9bLWmnSQPGKgL
         yJ/pcAfMsUjazZT27fqPxBwfZwGb4tb1tmLRxnVzLOwa48N/vjjcBA0s0fHVq9l+9xVT
         zbWHSyaFCpECe1Zi8w5bxXv1NfP2jNhyN79k3+rVBtZHJHMUHYB5uaJip+yBMgs3Nd02
         2xIw==
X-Forwarded-Encrypted: i=1; AHgh+RqxRoWZKoPw6S5Z8pw0AfqDo3owGM67M3zWdphkau+Dzwu0F9I2QwbLIeNo0ZMk7W2YqeGvKPg1cDI=@lists.infradead.org
X-Gm-Message-State: AOJu0Yx7NCuiGXrgzOJEyoZX9J3FNtIvwYhXQ/WeXHjjGMEih4oD97Pc
	PhOUP4fTTCTdI19oznoAt7LyYKjv1nfK9lYCIttL8Ud6yhjPHpwPCP788Awqns4BZVP5i58CsZw
	htAdP6HQnzgA4Y8f1PYRyNdLez3rxT1bc2Mol/mhhndSDSkLFjEZ/ZovBuIQdcaaOnuyI
X-Gm-Gg: AR+sD13iJhfbBnhdF4LSsgF4dFrStIILWK9ZFNXBFTxCKewMlJmL4+Acv3jsihwTdwn
	0+drYMRA4519iYdXSP/9kjQBw39xnePL09g2ug2RL5Qhhbvlcw/GU56c22a5Du7Ad5KU4AZHkmx
	Yye6pTrAy1aKowzSJAa0D4f5plwqg3AncYb9yifS6Y8GfoI86MzTMB5ZqcmQWysHT9VtF9YUAry
	8VatNoJtCSsYV/bM2a/4tMQi6DGnSOgc5lKrnZlIBhUQ6VqoTDSyJJvnbQOLjBtWYAa/ZoZby9t
	lgPN7E3GsP/WMz8yNkbrzvmlxVPBHp/TuQWJmSNvPM8ysKtErKI88WJxMfeSQvUPPnsn1uCkLgf
	3ZUfQJoxr2SLO2p/4ZTncv859V2u0chLykObYWNDdd4h0PJaJAeg=
X-Received: by 2002:a17:903:19eb:b0:2c8:1f58:55dd with SMTP id d9443c01a7336-2d5c4f3d45cmr77390305ad.9.1787033775611;
        Mon, 17 Aug 2026 23:16:15 -0700 (PDT)
X-Received: by 2002:a17:903:19eb:b0:2c8:1f58:55dd with SMTP id d9443c01a7336-2d5c4f3d45cmr77389475ad.9.1787033775127;
        Mon, 17 Aug 2026 23:16:15 -0700 (PDT)
Received: from hu-jingyw-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2d5bb499d7bsm13719685ad.3.2026.08.17.23.16.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 17 Aug 2026 23:16:14 -0700 (PDT)
From: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
Date: Mon, 17 Aug 2026 23:16:06 -0700
Subject: [PATCH v2 2/2] dt-bindings: phy: qcom,sc8280xp-qmp-usb43dp-phy:
 Add Maili QMP Phy
MIME-Version: 1.0
Message-Id: <20260817-maili-usb-v2-2-97d7317f64b3@oss.qualcomm.com>
References: <20260817-maili-usb-v2-0-97d7317f64b3@oss.qualcomm.com>
In-Reply-To: <20260817-maili-usb-v2-0-97d7317f64b3@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>
Cc: aiqun.yu@oss.qualcomm.com, tingwei.zhang@oss.qualcomm.com,
        trilok.soni@oss.qualcomm.com, yijie.yang@oss.qualcomm.com,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Jingyi Wang <jingyi.wang@oss.qualcomm.com>,
        Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-3d134
X-Developer-Signature: v=1; a=ed25519-sha256; t=1787033771; l=1065;
 i=jingyi.wang@oss.qualcomm.com; s=20250911; h=from:subject:message-id;
 bh=KztRx0ikqSziac1/mJYrT1Hz98BWoCR2B3clcv6ptyU=;
 b=vLCyx49Zwam5PzdPiUf7rV9nET3lcI6r9nE3Rzm9e4pHmlUHfSyRJP9cpOhGf15E9V/ZSwYZe
 Hg4gHt+6t3LDjNPMqwgN3bGerEusqohcv4OPMWmTL/6u5juI+iTsLJB
X-Developer-Key: i=jingyi.wang@oss.qualcomm.com; a=ed25519;
 pk=PSoHZ6KbUss3IW8FPRVMHMK0Jkkr/jV347mBYJO3iLo=
X-Proofpoint-Spam-Info: AW1haW4tMjYwODE4MDA0NSBTYWx0ZWRfX2n84vDEVWkLK
 QKr/tM5Rl0vX2ZEau+mnEQsyksGoQUP6iHcIii6jn2Po8cKukSKdu8/wWmuChXMQ/PBYU+e2gJ3
 KAAaTvy9mFS1yHx7t4FadcgVpD7uI6Q=
X-Proofpoint-ORIG-GUID: 5pjfm0yIy_QZgHikxmFefqHgmuhfBvnF
X-Authority-Analysis: v=2.4 cv=UfFhjqSN c=1 sm=1 tr=0 ts=6a83f8b0 cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=Sv0fKeRqtYgA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yx91gb_oNiZeI1HMLzn7:22
 a=EUspDBNiAAAA:8 a=c48FE4Zzs7BoiMeBshYA:9 a=QEXdDO2ut3YA:10
 a=uG9DUKGECoFWVXl0Dc02:22
X-Proofpoint-GUID: 5pjfm0yIy_QZgHikxmFefqHgmuhfBvnF
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwODE4MDA0NSBTYWx0ZWRfX/0Zh8VsBeiOz
 Y1lm3NtC68HNnkhihVWdHI9Ldr4EDFDcmf5jTMSGtMG5QIsnB7PzVmReFFlLKqCoexWAFsWz1Gz
 WHCLlhw82/21mfylA94kME4RGG+nlazLJTmOXwRnN/CxoqT9ijdpYCRknn5emz/ZFKbDaThRWI4
 4SHUtWzsr0Tpr61M6gymzLWqYAx2GqnLrPgvZmLIdUkkV5Q2xV+Lr4+fNtZAm4+IwdcpZRInsam
 GhaB+rZ4g1HMXxh4gyJYGOHVVTup5rqKDbolSUpe03xgVqx/MSwrzOgEfz/1wYMLCTNigQz0KXS
 kpcuyzxsPi2fdI6VStHByRHG9gGtyM4z2h4P0qRkaMCtElHZAY1zsepsR8O8MQCDpYCfNneTqUa
 065aAVWUgJShwqZ7RiRdScomo3Wtu5g2SkaGi6kxjjsVUBj1PiKKBXtMqt7ljJFiqlf9li2B5RY
 /SzyAm7yENeU7/VC3Tw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-08-17_04,2026-08-12_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 malwarescore=0 impostorscore=0 suspectscore=0 adultscore=0
 spamscore=0 priorityscore=1501 clxscore=1015 phishscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2608180045
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260817_231617_722917_B427CF00 
X-CRM114-Status: GOOD (  10.55  )
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

From: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>

Document the QMP PHY for Maili which handles the USB3 path. Use fallback
to indicate the compatibility of the QMP PHY on Maili with that on Hawi.

Signed-off-by: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
---
 .../devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml        | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
index 8adfc78108fe..1c6e8e9b9a7e 100644
--- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
@@ -16,6 +16,10 @@ description:
 properties:
   compatible:
     oneOf:
+      - items:
+          - enum:
+              - qcom,maili-qmp-usb3-dp-phy
+          - const: qcom,hawi-qmp-usb3-dp-phy
       - items:
           - enum:
               - qcom,eliza-qmp-usb3-dp-phy

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
