Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A3A5B60A5BDD
	for <linux-phy@archiver.kernel.org>; Sun, 25 Oct 2026 03:17:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=Lf33tRGk;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=SCzBh80/;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=NL9dLe/a
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=qa+RYaKn7UZHA5+7M4h1qbFwpttyMVEPAfSUKZ9SmDQ=; b=Lf33tRGkuoPberNKkjVWwwLEI/
	2iTdnmsGGM2R4g9xMUALFsHUqpjwTtOpfOnMa37UJZWq+04HX3frg9MML87KUmves9uqaoGxgRlBl
	ZGemWb5Ug/EuyrE5Os+b+PxOP0zExwus+b6WghWcpPK/FzwritHq9fVVT5e50mogDQ4JJ9qrn1EU0
	jvaCI8iSaOkneS7fVevCFdhcwooH6cYbPwv++gNr/+LJLHvYDgntTvuhkyG/XdS/0RlkW1pNt95LT
	zaTSFcjghwEi9H8fVqIV0ItNmmwrodbXBXDh02JbRldvM8fSYoSvazAu2U0WZ+2C2aGWk4WMONI1U
	gToOJP9Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xKojn-00000000gjp-1VTc;
	Sun, 25 Oct 2026 03:17:35 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xKoji-00000000ggq-1BGx
	for linux-phy@lists.infradead.org;
	Sun, 25 Oct 2026 03:17:32 +0000
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 69P16bNX3584519
	for <linux-phy@lists.infradead.org>; Sun, 25 Oct 2026 03:17:27 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	IbiNyzfqx0jGWwabN/+ItDIDzhYhWzZaMzG7MQNpHsk=; b=SCzBh80/mzYWZPwR
	yd9O6sltFqAZzsIQLIesE0CowOho+t5yQXE6m5mFKGspS8Fi2PZ7cm7zhyNR93br
	VVz6x5pz5LK20fiwBFKqPuyPjR9EwpBLbbng1bTWb4XFIuK1FgIoCpAjwXcksiGy
	Y4Q0gh5mcEQcYm3AmQDrlCk8zHDSrAnDQlIp60mHoX+1g6l4wwrkrqj3XtruHX+U
	sez03Wp8SqJOKLVKY5uDnZ5uTGlCHNYG10IP6hz2fDWvTDvABpKYxyToOCHDRpqq
	pH7asf69nlE9oX0TN0dBCsjGl+PUj3ZWXGcowljRlCChzU/WVGWBzlhmkMSvbY9u
	rXbO9g==
Received: from mail-dy1-f198.google.com (mail-dy1-f198.google.com [74.125.82.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hgkp6jdtv-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Sun, 25 Oct 2026 03:17:27 +0000 (GMT)
Received: by mail-dy1-f198.google.com with SMTP id 5a478bee46e88-35c5aef2a74so9408299eec.0
        for <linux-phy@lists.infradead.org>; Sat, 24 Oct 2026 20:17:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1792898246; x=1793503046; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=IbiNyzfqx0jGWwabN/+ItDIDzhYhWzZaMzG7MQNpHsk=;
        b=NL9dLe/aE7monNt9XZ0ET4C5bKCZ14P5lcbNlBysaF4tUZy4AqrMLPWyb3dFRP/oAB
         MXJNvy5kM/djZA+yTRxtzLGiQd4vjyqIwGDkdpC3zx7+RIi7kOXA0pw75nD3WAQnS7ah
         z/veY+MbRlCJj9wVFtqPxbTXkGeXLfMeOmpdkDAYTU66SrCaBUgdhBN/Scts5ROCYqIl
         EZbSqMC8AX6sPJSqFk5SPhGRpIqrbyO4g+G6IgxRTQKwBOwurC2znefKPRRgSBdvgmk8
         /1w+AK1dROSqN9Q8uAGDaUvQT9TZ8zb9+eAUAsGDwLm1wIHXuqq9tWeBsyWp/7UVvjq8
         +tJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792898246; x=1793503046;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=IbiNyzfqx0jGWwabN/+ItDIDzhYhWzZaMzG7MQNpHsk=;
        b=0tnEWMj+4RxGItIZfYayq/IOz21QNT+WChkqapvuVjm9S8Muvono0mni2MWL/wJW1Y
         Qlxkva16P3+iUvLjlQBQfV+3XLq5oRBd/WkyDfvv5fOVqW6twtofHPhTHzERpdS1aoap
         2k74/cF5gORxdT+ZJs+pviexEczx0xi31wv/OwLgxDvy1SwDoRXTVjM93G2EmplpNGrT
         ZUXtD6l92wlA3FruPL/7CCqE36NhGB6PTr5vsmOorYb5PKXpeiXSruCyadWErXan2IRY
         PVlx4QtCVVuziEcwXD9ncqflBxwX7uJ6yLOmiJtTr5pClwxGixbKtxIMWTDKX+y/SJLP
         ailA==
X-Gm-Message-State: AFq9FYLEaN1aTnnA+k7cYP+ILI5VQYrrNm9J72NNpp7IC5DZ/BMB/CJ8
	yORwMfqco4imrktOSniwbbDBb7PuLQdL2XMB9S6XaR0DaWGt9136s+1aUmLv4envd3dddsqoPHc
	pLRc3aEDzj8txtGZkHcCZ/vdg43nbbONFkzm9Ilk+VqdIaCnAQX8t5wN9Zl66seZkPaAs
X-Gm-Gg: AYBFou3KjXDMZKrupAp0/SpeVAW92ctDAX17Dby37zMlN3UF7lEcK9As2xRLqHjKCn0
	9ioLbuwEZpVVdD/tvfnmMnc5H4D2ZJ7O1yTZtLBusqEv8UtAs4osyrO6S93LQhpcJQfv8/5AI2B
	Iae1dYRfgaDWcvzxzEwYkkUF6t/rMWNo5Ep7W9lplMjC1keFXOl9avkUD0JAGWpkr5q9g2pJY/F
	UuGAXSzBs7UsAjFFHfnVh8XbqW7vJUMMKVwDAHlLh0+HdfnbAafTFv6kHayQ4I36V9rA03W0Slf
	9Va5mfFNBhld/hfyC7ksgIQ99/tsJqr5iqHOw0XD4Dj8NqwidjkU6xH5sPho2ctQpXRp6t5Yu1T
	QcJlcMv2a/iGhA39nRKIEt5htOwCn4BMrlv1k4rO+xjODCsVczozJ73iaW9kYC0rNlUHoDHtq4U
	i+F2Ov/uazGw==
X-Received: by 2002:a05:7301:2b06:b0:360:db68:3264 with SMTP id 5a478bee46e88-369e848b8a6mr7536798eec.6.1792898246494;
        Sat, 24 Oct 2026 20:17:26 -0700 (PDT)
X-Received: by 2002:a05:7301:2b06:b0:360:db68:3264 with SMTP id 5a478bee46e88-369e848b8a6mr7536761eec.6.1792898245931;
        Sat, 24 Oct 2026 20:17:25 -0700 (PDT)
Received: from hu-hangxian-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-369e8ec50bcsm24133054eec.23.2026.10.24.20.17.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 24 Oct 2026 20:17:25 -0700 (PDT)
From: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
Date: Sat, 24 Oct 2026 20:17:20 -0700
Subject: [PATCH v22 01/14] dt-bindings: phy: qcom,x1e80100-csi2-phy: Add
 Kaanapali CSI2 PHY
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-Id: <20261024-kaanapali-camss-v22-1-7da3ea49c8a1@oss.qualcomm.com>
References: <20261024-kaanapali-camss-v22-0-7da3ea49c8a1@oss.qualcomm.com>
In-Reply-To: <20261024-kaanapali-camss-v22-0-7da3ea49c8a1@oss.qualcomm.com>
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
X-Proofpoint-ORIG-GUID: CvDL6Wyf-rH6H4mdlkA_SiT38xzqaTn_
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDI1MDAxMiBTYWx0ZWRfX2cjK529L8Eix
 q5z6mF1H4A3141OUU1/n9xT9WtBc2PZWKJA8Y/FiZJldOWL6GF951ZhkHW3ySy09z3K+JHkXQry
 13ecowfBTBduIjJxSbKiS1g3G4EjEpQ=
X-Proofpoint-GUID: CvDL6Wyf-rH6H4mdlkA_SiT38xzqaTn_
X-Authority-Analysis: v=2.4 cv=bq/Zl0ai c=1 sm=1 tr=0 ts=6add74c7 cx=c_pps
 a=wEP8DlPgTf/vqF+yE6f9lg==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_glEPmIy2e8OvE2BGh3C:22
 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8 a=mZPZtqNPFm0sPOGUM0AA:9 a=QEXdDO2ut3YA:10
 a=bBxd6f-gb0O0v-kibOvt:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDI1MDAxMiBTYWx0ZWRfX38/xCTYdzUp8
 9pPzITkHtEouNnrBl6LffpvAQaf9S6dGqnh9+LiKruigpdAY1rGWe8QXrOgXK0nJv1bK7J2oxsM
 CJuRrEPrtsxtonY/7gimwA3cWaefHmssC0CpmHf0l6jjSZdfyIKYOK7kkuTjypesGd6QLnOLVOY
 VmX8A/FgWzPvvUbPryzB8vkj5pSgKjSePJZed4jXJ77zPAA0B3rdTO8u93K2z2Ys42QpfuyMoR6
 L+je6DxvCbu4JL2rTUiuHOQSgWAHtxk22OmQXPwI/vmQ/zBa1VerpUsaT4H8QXWy7Ziz/qlsCED
 L0/blGJySMozO8pxNWUVkclHbi6wnLw1fget0B+nJf/U0s0rJN+pyyR7cB+pnKQf/NiNzhB4J1P
 LSyNx99A29PpFhoFBXJl/KFqc1p4DxSbt87f68lNQUPloz8skbw9RCwbv8NcR7ODJF2bpHhMMmh
 hCKmAAkNp/ipvO85kYA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-10-25_01,2026-10-21_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 malwarescore=0 bulkscore=0 impostorscore=0 spamscore=0
 suspectscore=0 clxscore=1015 lowpriorityscore=0 priorityscore=1501
 phishscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2610190000
 definitions=main-2610250012
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261024_201730_442103_8A8FE52F 
X-CRM114-Status: GOOD (  11.11  )
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
X-Spam-Status: No, score=-17.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

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
