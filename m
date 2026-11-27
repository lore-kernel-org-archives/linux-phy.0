Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8E344606A31C
	for <linux-phy@archiver.kernel.org>; Fri, 27 Nov 2026 11:44:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=IlEKeSJk;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=FI6tTpRr;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=LHTUcvEv
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=yi4Xj7ccGYELX/K4J4icb3yjj1C7ck9m6fEX1L46Jcs=; b=IlEKeSJk/+NzZFElxc6w3MkJmV
	NdNAczMRNElUhX55V/yTl0iIoRJZ65T45qiYo/vPJHqt+eiTGr/E7JVTe4IjGHsBR+SGf1vR2h72X
	jkV5TLd2Xd4LFCKO8zoCwlJQZ65RpsrsYuPuNh9v8TZU1mtdwl5R1C5AKg4aHTB4wiTM75zC3rDLD
	wi8ETnKLLL/yW6BItjQhBtr4kYWCFzsjvciQfY94QK7FLRgOl7I31K8xW1ueW1G/iJNRhjzkeHCBA
	9CR4jKgCmikqvVH4ybr7IL4m5kKuqcQ30i80/82Dyd3hC6k3JAIbmSPwtIZ9Ev7ppoKe99k8N7rp9
	sp5eZXuw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWuNQ-0000000FsRk-1Kwe;
	Fri, 27 Nov 2026 11:44:28 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWuNM-0000000FsQY-12nK
	for linux-phy@lists.infradead.org;
	Fri, 27 Nov 2026 11:44:27 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6ARApOCe273643
	for <linux-phy@lists.infradead.org>; Fri, 27 Nov 2026 11:44:24 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	IJPyYpIYmrR4ZHeGVfNDne7NhRPR7qG67vM1M/zaXQw=; b=FI6tTpRrl2APtsrf
	FWwkmMW5FBuOJ2srE0EuzaMzp1Hi+ZjfR5yNKUdUUmvriG/AC3BEuLbd4Irc6JvA
	ntJXUMxympMhGdUmCkxuSPtLb7duDa0+1ZhZqBoye1SIbrh4jqUwkboXutDoj0nR
	v7Lsgsu2Ep0C5zfxQvcaW80Ev66Hqyn9eo0JRDGMGvggKQzBZVR5SJzM9vd3nIyQ
	Phh48k5jSd5dNQWhmV5q5eCL7qg1Srv6NLo4aZXnM+Px5OoFtnZS9ErfxxYbBbLa
	GaYkjwhidqaLjBDhA7zsajZ7YEXDzwZzM0zTdaxoYEDIFGp/sMFGJlleBXjmbJgf
	UqSt/Q==
Received: from mail-pj1-f70.google.com (mail-pj1-f70.google.com [209.85.216.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4j6u49atw2-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 27 Nov 2026 11:44:23 +0000 (GMT)
Received: by mail-pj1-f70.google.com with SMTP id 98e67ed59e1d1-3b45655b428so7106239a91.0
        for <linux-phy@lists.infradead.org>; Fri, 27 Nov 2026 03:44:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1795779863; x=1796384663; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=IJPyYpIYmrR4ZHeGVfNDne7NhRPR7qG67vM1M/zaXQw=;
        b=LHTUcvEvhYRM9SxCB/QN8z3wukt7KA22hCggo5u2R4Q4fx3FR2BVgl83TMHPQgt79h
         jnOdh0EhJVrEmAhdfz25zAwu4HtcB2pahCuDZNXWHnKVz0ujfFanTLMoMfWgC0hrQ4Oc
         ERvXCo/eoAwALYXaJBCJgf1+uE58mulPqdu8Ie7o5S24kjqkss4q6Ii0pNNAZBzYmUXG
         VTx+vPwHfCNLKGa6JA5pMv4qZ2VmXmq0ukTOTjZm9/4JnNRfEtxNj4MFXGbDEFKlHTVw
         tiENO+/9Z0JZaTnmhmoEyb+k02dcY43a8XnsA4/h6D4vPE6CNgZDw5qod3BHfa3WOYlO
         nagQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1795779863; x=1796384663;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=IJPyYpIYmrR4ZHeGVfNDne7NhRPR7qG67vM1M/zaXQw=;
        b=j/T3qyxWaARqhsHncQGsnZsK/Rx5Xwz5J/pAUfGlSQYiCbb10BV5cvMXuK2xgPm3IM
         qpDOHCp1WpLHilRuxGvwXGu3RUDwDtiLCFGZw43asRBiIqQUWOcyX5h6Wps0SZFMKBWa
         MFaYkDgwOMmakOiGcGWDqWSnRxxiXBTlJocSkP6O0Pax9yQTf83bUYQQzo7m9/Fyu2S8
         snxcyNoLenHrcXREQxTLRL9j/0aa7Zdi2VhUGiEjjFfeKKZnL5S08OWdBrzO9onEmupo
         gKTZFSQ+pzVtgehGnAvoRZJOVkoi84LAhqYhMb+e3HgrOkSViw9IeKZ3orpMcgp5oyUR
         BLew==
X-Forwarded-Encrypted: i=1; AL+hErH5Y8l7faQHggls92Suj4zMSM1HXHFpJe0HU65+63A2aVhJDg6+VYuRb3HrQoFHuGaj14sQW5Nghak=@lists.infradead.org
X-Gm-Message-State: APuU4Z9Lw2mBMbwHsvLAiuBez///i41pOp6r0RfnYOgwr67H3J0ADCxv
	wksSyYBU4t0BiEUuCEVSA/XJPW9gOeSJYUz/0eqrQqEzClQ0ULsJqAe+XeOVoXGPE2XfpHDTDOw
	p9vsxrptAtdbkjqZZokkuA91SP7osPTIigCX2eeaYYNgPRSLtUrcuxLbr2rPL3pA/zQjX
X-Gm-Gg: AZFdTZfAesvO6X4+Eut79L5YaGK2Xf0fqx/6iEyhLYdHlNyQqNU0JC8MRiNaKxhgur8
	pwmzlNp4zuTzvqtV8dLbWz1pXPf4wzzelK7YY8HG8eI/dl4q++ftk+qaS5UximCm+KXxpQBxVF8
	qYBUR3+Uom3SWqt8keMAHLI8M/Z7JS3EZp/KiwQQSpxBMaZzUGJ9K7R74oxEvUzk+qYQz8sPB9I
	bpnSWg4VKtyunB91dNMqqLKPIAovc2GNPSPi67cSXD2n/UyjV1lz3+8V4iVPmltDmuz1oZxzZoW
	/4aZHSGysZaRo+AjYhdXleNp8/vgNPMSc15g8CzpoQl73UMErspHyQKtC4H0IdTmMwt0clXGrSJ
	vV5XnQvsaPWYAsOOdvMx2B5NzbP4INvcY4uQ+TU6mxLAYnFTSC6/Z+77JU9YFHqNqKBrbfplUuS
	9lK8Fn
X-Received: by 2002:a17:90b:1802:b0:3b4:e19:e127 with SMTP id 98e67ed59e1d1-3b41cb5009emr23189371a91.63.1795779863104;
        Fri, 27 Nov 2026 03:44:23 -0800 (PST)
X-Received: by 2002:a17:90b:1802:b0:3b4:e19:e127 with SMTP id 98e67ed59e1d1-3b41cb5009emr23189329a91.63.1795779862628;
        Fri, 27 Nov 2026 03:44:22 -0800 (PST)
Received: from hu-nihalkum-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3b41adcafe0sm40480933a91.16.2026.11.27.03.44.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Nov 2026 03:44:22 -0800 (PST)
From: Nihal Kumar Gupta <nihal.gupta@oss.qualcomm.com>
Date: Fri, 27 Nov 2026 17:14:02 +0530
Subject: [PATCH v6 2/3] dt-bindings: phy: qcom,x1e80100-csi2-phy: Add Hawi
 and Maili compatibles
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-Id: <20261127-hawi-maili-camss-v6-2-0f4844eb63b3@oss.qualcomm.com>
References: <20261127-hawi-maili-camss-v6-0-0f4844eb63b3@oss.qualcomm.com>
In-Reply-To: <20261127-hawi-maili-camss-v6-0-0f4844eb63b3@oss.qualcomm.com>
To: Loic Poulain <loic.poulain@oss.qualcomm.com>,
        Robert Foss <rfoss@kernel.org>, Andi Shyti <andi.shyti@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Bryan O'Donoghue <bod@kernel.org>,
        Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Cc: Suresh Vankadara <svankada@qti.qualcomm.com>,
        Vikram Sharma <vikram.sharma@oss.qualcomm.com>,
        linux-i2c@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-media@vger.kernel.org,
        Nihal Kumar Gupta <nihal.gupta@oss.qualcomm.com>,
        Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1795779843; l=1527;
 i=nihal.gupta@oss.qualcomm.com; s=20260608; h=from:subject:message-id;
 bh=VrCho42XU53GTqUrn16AUx0FovtMl7rE/ickbc+QQAU=;
 b=W5uq9E750RzUKhnaGzYYrCYRSi1zcSdV41r8VtcB9zOLrSDHmR229EBNX0VaZHK74x3ZUv/YG
 H/qLd+NcDIiByN4CvMriKujttm9KK3BN5LrjdhPHnwZU7c+Bx915XLv
X-Developer-Key: i=nihal.gupta@oss.qualcomm.com; a=ed25519;
 pk=DIbyFMNwqU/iMvU/0pCQp2wmRVgtHFBT3PcSu+A+Ncw=
X-Proofpoint-GUID: B4nK1gg-yixDtaC5M3wmYJWQ4aLDCH6c
X-Proofpoint-ORIG-GUID: B4nK1gg-yixDtaC5M3wmYJWQ4aLDCH6c
X-Proofpoint-Spam-Info: AW1haW4tMjYxMTI3MDA0NiBTYWx0ZWRfXyDXVb0EHY6S/
 OMycz/GDroGLO5EvRK6alAOr7JZgnpoBTD7Is5zPm73lb4eAlhKMHhGtVI9azs4hkTV8VBXC+TW
 OeHVwi+ePfn5fm6FB/p9KejxoILELCs=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMTI3MDA0NiBTYWx0ZWRfXw0XWs3yaFwZF
 CyRIVTNl3Dh7TjL8LmTEPSY17dfR9CFI9biXDq3rqdhO+JUaMwzhbeF/OgSr1wujey0VglrZ/nv
 gC9NTG3mXz0seLxtaEYTqq0iT0+Su72duP/yWaIU4VMtAkBdGszJ1T71uR+knRWI7rx9juUyg0j
 QcqibE+cZAnRl3ZDzlQZtCO3hN3rWLayRi/X/3wHa61vk8m5lNECwuBCB7uottnoSYR5tbrpO2J
 CN7lCPQjXdyC1MAVGOcMQGqGCgt1emP8fifLfH5EBMY7Ez0rnJzjq0SF+ss3CXX7n/yaGzqkv7e
 mxIRGo21DUTjFqxqddwmrcxtwjX35V9vbr0WCDKjOYESeUT8+Qhjc6MIKUvhXsC9RSa7LHod8Df
 5IO1xJD3AEgVagZv4YxRzPgCR1gPhNETXziH6GB6wAPu/ZzJVwFmsAJbUqk/HrxZdqazRN/oYWY
 Op2P+7FrWl2B4Vi/MJw==
X-Authority-Analysis: v=2.4 cv=A875rKWG c=1 sm=1 tr=0 ts=6b096d17 cx=c_pps
 a=0uOsjrqzRL749jD1oC5vDA==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=zJRp6_cAMcgA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=DJpcGTmdVt4CTyJn9g5Z:22
 a=EUspDBNiAAAA:8 a=KKAkSRfTAAAA:8 a=Qbo-v1IXpRF52dvEqNcA:9 a=QEXdDO2ut3YA:10
 a=mQ_c8vxmzFEMiUWkPHU9:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-11-27_02,2026-11-26_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 spamscore=0 lowpriorityscore=0 bulkscore=0 malwarescore=0
 priorityscore=1501 adultscore=0 clxscore=1015 suspectscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2611040001 definitions=main-2611270046
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261127_034424_308974_B2DF7BD2 
X-CRM114-Status: UNSURE (   9.09  )
X-CRM114-Notice: Please train this message.
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

Hawi and Maili integrate the same CSIPHY IP as Kaanapali with an
identical register interface. Add qcom,hawi-csi2-phy and
qcom,maili-csi2-phy falling back to qcom,hawi-csi2-phy.

Co-developed-by: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
Signed-off-by: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Signed-off-by: Nihal Kumar Gupta <nihal.gupta@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/phy/qcom,x1e80100-csi2-phy.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,x1e80100-csi2-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,x1e80100-csi2-phy.yaml
index 0dc8b7859447f378282732813aa6886bdb1ea4b5..40e9a1725d57644e480c2d25a5f1c0ee7e1f5dd3 100644
--- a/Documentation/devicetree/bindings/phy/qcom,x1e80100-csi2-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,x1e80100-csi2-phy.yaml
@@ -18,6 +18,7 @@ properties:
   compatible:
     oneOf:
       - enum:
+          - qcom,hawi-csi2-phy
           - qcom,kaanapali-csi2-phy
           - qcom,x1e80100-csi2-phy
       - items:
@@ -25,6 +26,10 @@ properties:
               - qcom,glymur-csi2-phy
               - qcom,sm8450-csi2-phy
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
