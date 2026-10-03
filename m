Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 67EEBCA5FE3
	for <linux-phy@archiver.kernel.org>; Sat,  3 Oct 2026 09:02:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qa+RYaKn7UZHA5+7M4h1qbFwpttyMVEPAfSUKZ9SmDQ=; b=OO6tKBfiMbUBK8
	8cHNqehBt0ynnzhVpVlFZWTm9/LFfnOgYBI42qghbF1dNeZUHfYXzpYmOukTUr+cbbz6qVlZCsiwi
	KO0HTOFXhV0klfkzQKKJSCPTra/aLuA2cMcgRNg+ISwlRewoqbGPh7S5JsJBYgxx7lH25qCnePWaZ
	+Tc2S2y+r3tyG5q53kIMWSqFg0EIYTKJF0pjh1CfwvtWDoaPRTyJLtnw41Hg4Eu/U2akBio2+Cik+
	hTtyz6+cmzhWJ0lLfcR7WD1aXgQ42nl0bZ0lMX5jd0TnK0kzxkcDAOuh4+xcP95P4NSlqf4lAkvg4
	SphcqvrgYKDkAdBmHqlQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xCvda-0000000DEFS-3aAR;
	Sat, 03 Oct 2026 09:02:34 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xCvdY-0000000DEDp-42UL
	for linux-phy@lists.infradead.org;
	Sat, 03 Oct 2026 09:02:34 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6933lXwv2454763
	for <linux-phy@lists.infradead.org>; Sat, 3 Oct 2026 09:02:32 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	IbiNyzfqx0jGWwabN/+ItDIDzhYhWzZaMzG7MQNpHsk=; b=ogMdz9dtnkNt9NiF
	mncBgZrkk/PbUD9dUTBN48uxQKZ0MjsE+/0BLq52kGWwc7i9SmWmQzLIkrHFfnkE
	Nk6ma7f+QHUDePJhOclAf2h1ztTTDa7MKGIzHhTf5VmLTjKW9MBTjlUx071rwrlc
	RuZC4foss+uuuRfWLTy/9T8hqGtqP2WngEbmDbulTbM+Co1/ml6oqQWWtQoWqDF+
	d1ozFkMRi8fUZ2r3llKFKziBjARrkFFbd/J001cC3Gw0umXEPpaXEfJ958jeAz7D
	brtcH9Hwyq0ZqX2hgbXh+/VfTh6e0eLgH6JwuWDy9uUMkDm2og5GozS/+X0gj1lK
	nPVFuA==
Received: from mail-dy1-f199.google.com (mail-dy1-f199.google.com [74.125.82.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4h2t36gg6y-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Sat, 03 Oct 2026 09:02:31 +0000 (GMT)
Received: by mail-dy1-f199.google.com with SMTP id 5a478bee46e88-30f1b904861so479211eec.0
        for <linux-phy@lists.infradead.org>; Sat, 03 Oct 2026 02:02:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1791018150; x=1791622950; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=IbiNyzfqx0jGWwabN/+ItDIDzhYhWzZaMzG7MQNpHsk=;
        b=coUv3IqJrYcMCu6DBCu9BChdMySE+yYKRVCx7aMs9Sp11PGJONfAkxGV9J1RWliVJN
         ogVnbRJaGhlgLapcGMPek3iARFEVZpVoJHz62qywrKd4dgUOVMhp8U6tzjTIlKhRvvCH
         w3LG4i0oCctJYm0jzAIpLb+ucRuaxrXedoOAM7XiOHv8UMdjckQ3200B1fVF6qZdEXm9
         C4NDzvn97qIzl7XLDSGLd31s1OcxYS+kTy08/eOhDxhSQToIFfQm8FixsqYkY9ccVlk2
         BcUg96xcg5bs1hgMO2PJZuVN+M/GtYxroABh9LQ64qOI3ekw0uvevcmjKlwT/VgOOYzf
         0yEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1791018150; x=1791622950;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=IbiNyzfqx0jGWwabN/+ItDIDzhYhWzZaMzG7MQNpHsk=;
        b=nLe1hC8GiScD9av9EYwXxeW4ZCec6HcAog5k3vQTP6ebPE+TcWhDhBSDKViGQoPkL5
         rdiPHnehuW+LGeRQtbgvFex7anzNQe/WS/y+zxYYdw9S0rbI/w4j8k5JRXNMMHiuwiqY
         qHD8hCZUmb6gF86p/DwopeHSzhG5ANDxNufXB3G5bU4s0L3Qv8OeSvE49o7WG7UaBaXf
         C9AQr5F459njBxYT2KaA9RYzVYvs2JsoRtqlxsn1UXwVb2KjXSS/hMWFQcntPULRAU4U
         hQF+IuQlsahezTqN6IGM1pSkvHAfIMYJ9rl0AxpPqMgcXwjUKKUbsggcp4ew+DlHz0QG
         G2Qg==
X-Gm-Message-State: AFq9FYLSTt+ADuK64ksA9W0NI0cWLTZgqOIAgA2BnT4YY5fr5o0vAFxt
	mHN/MLIln8Ee77r0oBipoqtl9Bqwlj0M7rHa/VqUWLF9b5OmNJwEL+lhJzGorAP9mdUma1Cqq80
	CSJzucDC6i60anpuGXb+BHQwQCkqL8BjYh1KLQXV6rWTI8ialVHyAGE7IjSS1MBucK21y
X-Gm-Gg: AYBFou1BdWEOlyAlcRvrhIHTXT3DASvYzSgSWMAu9uNH0eGcf/upUsbiBHb9opHKWMt
	OpGjkpsbYxDMSPzikzMxqnq60bGXzPRuUn0+W0sPZYxj++oZ0XRYM6CwTfa9XkOZF5kWugdYPjC
	WEvz3CA4ELEzMvIdifdfR62S4jVkM6RQQoQJlLSyJ2vHlf2Gn5Nf6Pyk/2JhSossGvw+iW/yQZL
	4Q56sJm9g/RphWvz7NRf2DDaWMx8/SNpfYVXXwh58Vhm0n5U3pwrqUWRyzCvMAiruVrT2T6cEkO
	Xq9W+4YEAPYYWZzVD+TiG0BzfEF54Kg12ZYI5w6cbOhya/RuLJ17BpIDUAxLSodwLSEKA1zdNpR
	DBtKj1YwiZLfdDF5MUCKqeBFFpTIfAcH2cFbSfFWp+aGTgpzKabINIBLgasuueNv+xcuhyPEWOm
	VkypzKUGqiPQ==
X-Received: by 2002:a05:7301:4909:b0:351:1d8a:2bd4 with SMTP id 5a478bee46e88-3511d8a3743mr24974eec.21.1791018150128;
        Sat, 03 Oct 2026 02:02:30 -0700 (PDT)
X-Received: by 2002:a05:7301:4909:b0:351:1d8a:2bd4 with SMTP id 5a478bee46e88-3511d8a3743mr24919eec.21.1791018149567;
        Sat, 03 Oct 2026 02:02:29 -0700 (PDT)
Received: from hu-hangxian-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-34f14f9f2afsm29278695eec.18.2026.10.03.02.02.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 03 Oct 2026 02:02:29 -0700 (PDT)
From: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
Date: Sat, 03 Oct 2026 02:02:12 -0700
Subject: [PATCH v18 01/11] dt-bindings: phy: qcom,x1e80100-csi2-phy: Add
 Kaanapali CSI2 PHY
MIME-Version: 1.0
Message-Id: <20261003-kaanapali-camss-v18-1-87ba4ebe0db1@oss.qualcomm.com>
References: <20261003-kaanapali-camss-v18-0-87ba4ebe0db1@oss.qualcomm.com>
In-Reply-To: <20261003-kaanapali-camss-v18-0-87ba4ebe0db1@oss.qualcomm.com>
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
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDAzMDAzNSBTYWx0ZWRfX3j+J71MAaCR1
 w2lqUUUXutdteAB0B1I3QfLEHIpyz9l4OYj1LP0m7XibL5CkWF5+F+TDmmqBqXxxc9vn2WOXW2m
 HHulKBRISkt3jrseXQQPobPCVt2Zvxg=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDAzMDAzNSBTYWx0ZWRfX9C7cyGqi7IYC
 I+g2HtrWuLxkDchAIiJj3Ei6c9fkOQKOKEADZNYtoubuAQs7wa7PIrPcXn5N5O5YnkSD64hLzZB
 a6LWlQ/IbMKzdvspcKkcFz0ZnoLekCIGu1/0HNjTs8n+qu4xr4blJssMMesn7d9WrVHNhcjbn6S
 3lM1jnZouik3/QZ1HnsgavuAPm/jQY7Y2yzdIBs4Mr4sc38/LgKY7Tb1CHTBMrlAas0JaOwfuOa
 t6c3MdDdTmTF+tCsAsEWP0TSED9lLKrWkrjYnd7X4/mA2tspZaMz8ZabI4EYJ6czir5KJFLGIbN
 LnS1344cU8xU1Qy7NtCBItsTJJG7iuC4pOVBSFjVl2vIyqRmSAqRQRr7GIfwVGn38ifLDWceMR+
 sfrDhHc9I4DGyYp1Vb/hJmJcVMVDSG6/Sw3PMM749MSg4DpwKU+i4WujKP+xP1YIbdzL0QuH/bA
 ObTQWlmJhsnPv6PevZA==
X-Proofpoint-ORIG-GUID: hQftQD5YLkAfJv5_MwL6rbJJbm5AW3Uv
X-Authority-Analysis: v=2.4 cv=UpH2pOwB c=1 sm=1 tr=0 ts=6ac0c4a7 cx=c_pps
 a=cFYjgdjTJScbgFmBucgdfQ==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yx91gb_oNiZeI1HMLzn7:22
 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8 a=mZPZtqNPFm0sPOGUM0AA:9 a=QEXdDO2ut3YA:10
 a=scEy_gLbYbu1JhEsrz4S:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-GUID: hQftQD5YLkAfJv5_MwL6rbJJbm5AW3Uv
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-10-02_07,2026-10-02_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 suspectscore=0 spamscore=0 phishscore=0 malwarescore=0
 adultscore=0 impostorscore=0 priorityscore=1501 lowpriorityscore=0
 bulkscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2609040000
 definitions=main-2610030035
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261003_020233_120668_28F6DEE1 
X-CRM114-Status: GOOD (  11.36  )
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
