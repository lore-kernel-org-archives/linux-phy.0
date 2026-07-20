Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C0B09C44515
	for <linux-phy@archiver.kernel.org>; Mon, 20 Jul 2026 14:42:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=78tmXUvzIHFh/+EFA2M96ziz8DwUsnwhBRGYkGxzIfg=; b=2xSb1CRyIc4owK
	4y+cLYgPamExehuLtsuPdCiHZMulhOZlV/Hjrv2BT/cEdhoZzn0uHX/xom3Hfx2Bf8a644uRLiEqd
	O/HhF7YPc8/gXi/Xc1oZuH6WXqevlBe3KwepOIfgWNY2N/cNhNwPxqEjD6iPxh4cMrwmzI4dlG40p
	v6r43r2EJWBRznRKhHflKaLRXDbfEEOgVSEzQOUKzNpqh/RL69eBqjEoBGh3dNbKZhtYHP2X5hYKJ
	CG6mZ45BHo6Lq28gLd+PP3nsCM5+HYgU1hWMvryMrTIYLbYv0gMzhB/JhKbi1rKdfvpzWHAiEt99o
	9vF4g2sXr6i1glXUT3Vg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wlpBx-000000070wM-20pu;
	Mon, 20 Jul 2026 14:42:01 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wlpBu-000000070vL-1iVf
	for linux-phy@lists.infradead.org;
	Mon, 20 Jul 2026 14:41:59 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 66KDqfI62604356
	for <linux-phy@lists.infradead.org>; Mon, 20 Jul 2026 14:41:56 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	2BLpJJYIssKHWV80rmLOSVdZoUsiqPhLQXr2/gGzEvo=; b=guJskifDDR2Z1q3c
	7aEtzxRzBofasED68rgt1tMhjFdEoEj5jAmWxrwsC+KdRr6FRCCQf82A3I36Ng8s
	eSwRECIMDOJ9otlOKE9g68m3hKLA9NSSNgHeJGWsliqfheRZERAueTDamhIp5yZb
	xGxsScQvmOcuFKU8aLE4Q/FxbFFhAOVjmK5qgG/77o8QUlxlBkNb8tn9REWRj/JS
	UAzwCc/3vC43cxNQKgVoAIyFeUkoJswZ8Ye+PTS6OSv/NMMDctgZh1nxdROfDQMy
	mypGLgZ9JRnp+ujkV4Yqh9jWeHTJ+DeMuSJ5gX8Xf85bojW9iqCggeuzWnjISAU+
	yTLJhA==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4fhggg9n2p-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 20 Jul 2026 14:41:56 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-51e9d892f0dso14444861cf.2
        for <linux-phy@lists.infradead.org>; Mon, 20 Jul 2026 07:41:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1784558516; x=1785163316; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=2BLpJJYIssKHWV80rmLOSVdZoUsiqPhLQXr2/gGzEvo=;
        b=X+J9clXNKzEm8LAV7ujD1eGR2HsbqdGDQR+eWGDB1tx5fFkBMb5xMSdFtFYyBtvvUp
         LxcfMNvd7LW7pBdos/sYsON477j+f9IuMDGuuJV17Aqn497zEVhvOVmrwSikiDMbU5Rt
         FUj9px0LTnPn4ZEIcr8xkKObwIgOV92DI0iSb12pTxMZrH5mrVw368AzWdZV/VB87TcH
         cxFOFNFBRboZ4lUw91qM1hb2DA9/Q0n2v0Q7Qa62wQ174cvN8l5iQuMwA2fbuiZ0ggoe
         nHOCW9u6j9Qx1Kc8FLbUnaBpGCiyhZc4gGTaDkcweN5L87l5Wlj4pl33/04ns7wV2rYx
         PkSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784558516; x=1785163316;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=2BLpJJYIssKHWV80rmLOSVdZoUsiqPhLQXr2/gGzEvo=;
        b=Bu7GJ6E6++FgbZGsPfXPV+k15IDrccFrperAjccKY1flLTetaVaRIviG1Mll5MOLs0
         tM3iifH+D3dSoRVOi3PryFk0od1ZDopFg85BfzWNP/pABsuPIOObxDBXDZ9GZPctqy8b
         qa4KiRBGERehArGYmTrLCn5YW6Nu5GLw8G4X5sRom3AokEEHQH6rI9IiA7aXeOhRNqK0
         bmswOMJLtvmoS/KNLenzUCupwzyTcn+uhvWWVGEOOtysbwLuvQ+Z3x1/iFG4RNLyAJs8
         PK9XRLPPYflsAtQlrRUWpy+sO69fwbgvdapkhxm+chlwqxHQvzucPJM2lkVuccv2VyeR
         yBzw==
X-Forwarded-Encrypted: i=1; AHgh+RpsdPvXcfwpajp7LOwSeRIotcXUtHA3lQrYgueqZ+Z2c86OEp1QLejQVqt32ceDchB2YU2TCf3ACrA=@lists.infradead.org
X-Gm-Message-State: AOJu0YwLUjH6qIlAUC7nJ5EyAYWTSRZK8pugA39sjwgUrR0LMfZ7umxt
	MLYHFVLxcEDcC3PyD5ZqQ7hbhafTwgll6cLpF9LGjN0gkuHc3CiG5WZ9pU6JA7J6JUr1SL1+mPJ
	Xja8K1wMjiKwq3vxq63GmzAiQDPIy6XvkAfQTjKhBOL4qLZx0Tf26ccyLSFZt4CVbiveh
X-Gm-Gg: AfdE7cnQPxyrc7JSiPUZKGf+6LO1Qn5NWFH/vT8kLuUGyS081GDrtZy6XVlpTUx1/XE
	PL8t5Bw8W23OWX0QlkudfJy3r7fv1+C2MPYQYeNtMNpZwTRge5NX9iz84WEtuJDp60FTCv164wF
	+TGKvPXpSbUg3ECnGVxPdYhunQWALbCeFN5UdeLiUmtgezMokp1rXl0+5OFy7rU1Cc8Sj6I/pee
	WsUnlplUrfvr0ER0kXieTplm2u8HCqrvfzXWrnJxEs1avoUY8hAnY37vjF4uFdVQ8iTF85B7VLx
	7lGxlQqZAlhl1bvMOV+463IVcsXbX5rvLG77Iun2T2dGJo/inqjqFh48cQvQOXfq9l5PLDh1Vq3
	xDRhyhcHLrOSjjo2JsyI5Iew4
X-Received: by 2002:ac8:5d8e:0:b0:51a:8c9b:6494 with SMTP id d75a77b69052e-525fb957e1cmr8865121cf.11.1784558515466;
        Mon, 20 Jul 2026 07:41:55 -0700 (PDT)
X-Received: by 2002:ac8:5d8e:0:b0:51a:8c9b:6494 with SMTP id d75a77b69052e-525fb957e1cmr8864731cf.11.1784558514897;
        Mon, 20 Jul 2026 07:41:54 -0700 (PDT)
Received: from [192.168.120.193] ([178.235.128.140])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-c1734b1918asm466578066b.43.2026.07.20.07.41.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 20 Jul 2026 07:41:54 -0700 (PDT)
Message-ID: <a0e78c2b-0ff6-4018-9a64-229e7f68c0ca@oss.qualcomm.com>
Date: Mon, 20 Jul 2026 16:41:51 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/5] dt-bindings: phy: qcom,qmp-usb3-dp: Extend X1E
 description for USB4
To: Konrad Dybcio <konradybcio@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>
Cc: linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        usb4-upstream@oss.qualcomm.com,
        Raghavendra Thoorpu <rthoorpu@qti.qualcomm.com>,
        Mika Westerberg <westeri@kernel.org>, Sven Peter <sven@kernel.org>
References: <20260518-topic-usb4phy-v1-0-71d827c49dca@oss.qualcomm.com>
 <20260518-topic-usb4phy-v1-1-71d827c49dca@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260518-topic-usb4phy-v1-1-71d827c49dca@oss.qualcomm.com>
X-Proofpoint-ORIG-GUID: ja1u-3t8gE8l88z5bVXAxVDkn1dqhKWg
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzIwMDE2MyBTYWx0ZWRfX7Pv9NNq4FXx5
 SFKL/29xYeCTk8QTFBgW9+slTU+hT/Nea6u4BfMY0Zy6O7Yttkt8jVIWy9+9VVVwq9nYQQ4Q7bH
 r7GoMcPT44UbrbmF/b8v33hvThwkDkIMEdf89RUd91AikaI767H5LASAkfA0gTNskSRoBRthiXY
 ZSPWPTnuSzMS5+Ib4hB5YH2JjNTiWGpfpdG1U4F7z2Mf1FNmFzafMUYQtEg2N0nqh+vFc8a4gQS
 rmkrx8jX1XrIozIpN2rq/88wMJZ+56sf7kTagbvobCujjUrR4iHhth5Xyl/U2xgB5PEcdAKOkda
 MSOxBi2QRCyKVQssJLDMKaXpC4or17UqnIXRqMHwuLP7CKawIWzKA2MuTsVTABSMIy729yUYO5D
 XjiyYstbx0rBe4JibUxbEgJ7hNluq/052jClnLD647/j8FQH5LPMTxannGwnU3QKv/yuZMqexmH
 ymP37ryzwNvb7umA81g==
X-Authority-Analysis: v=2.4 cv=RPmD2Yi+ c=1 sm=1 tr=0 ts=6a5e33b4 cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=PRfkaYvzSr8QmIIGAkY2Sg==:17
 a=IkcTkHD0fZMA:10 a=RAioF0-LDSMA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yx91gb_oNiZeI1HMLzn7:22
 a=EUspDBNiAAAA:8 a=u94BZUI0yVsv4lWrxd4A:9 a=QEXdDO2ut3YA:10
 a=uxP6HrT_eTzRwkO_Te1X:22
X-Proofpoint-GUID: ja1u-3t8gE8l88z5bVXAxVDkn1dqhKWg
X-Proofpoint-Spam-Info: AW1haW4tMjYwNzIwMDE2MyBTYWx0ZWRfX2SUSr/3EVXvS
 9vn51bs76WxLy416mHoIKp0oEUII2kuVv8Zvq0CaHuOezP1TUpUoij5FO5DURyYto3Gb8LfJy0+
 qacIvhQPqOOL0BitA+KFNUyiGaApuio=
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-07-20_03,2026-07-20_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 impostorscore=0 clxscore=1015 priorityscore=1501
 lowpriorityscore=0 spamscore=0 bulkscore=0 malwarescore=0 adultscore=0
 suspectscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2606150000
 definitions=main-2607200163
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260720_074158_573713_387CC970 
X-CRM114-Status: GOOD (  19.45  )
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

On 5/18/26 12:29 PM, Konrad Dybcio wrote:
> From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> 
> Some instances of the QMP combo PHY (called USB43DP) feature a third
> functional sub-block, responsible for USB4/Thunderbolt 3 communication.
> 
> Compared to the today's state of the binding, one more clock (P2RR2P -
> PHY-to-Router, Router-to-PHY) needs to be enabled for the PHY to be
> able to switch to USB4 mode. Allow that for X1E.
> 
> Also, add a bindings define to let consumers access it.
> 
> Signed-off-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> ---

It's been a while and I see Vinod is picking up patches.
Krzysztof, could you please take a look at this binding change?

Konrad

>  .../devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml         | 3 ++-
>  include/dt-bindings/phy/phy-qcom-qmp.h                                 | 1 +
>  2 files changed, 3 insertions(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
> index 3d537b7f9985..eba4bee474fb 100644
> --- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
> +++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
> @@ -52,7 +52,7 @@ properties:
>        - const: ref
>        - const: com_aux
>        - const: usb3_pipe
> -      - const: cfg_ahb
> +      - enum: [ p2rr2p_pipe, cfg_ahb ]
>  
>    power-domains:
>      maxItems: 1
> @@ -186,6 +186,7 @@ allOf:
>            enum:
>              - qcom,sc7180-qmp-usb3-dp-phy
>              - qcom,sdm845-qmp-usb3-dp-phy
> +            - qcom,x1e80100-qmp-usb3-dp-phy
>      then:
>        properties:
>          clocks:
> diff --git a/include/dt-bindings/phy/phy-qcom-qmp.h b/include/dt-bindings/phy/phy-qcom-qmp.h
> index 6b43ea9e0051..1c3ce0c02b0c 100644
> --- a/include/dt-bindings/phy/phy-qcom-qmp.h
> +++ b/include/dt-bindings/phy/phy-qcom-qmp.h
> @@ -16,6 +16,7 @@
>  /* QMP USB4-USB3-DP PHYs */
>  #define QMP_USB43DP_USB3_PHY		0
>  #define QMP_USB43DP_DP_PHY		1
> +#define QMP_USB43DP_USB4_PHY		2
>  
>  /* QMP PCIE PHYs */
>  #define QMP_PCIE_PIPE_CLK		0
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
