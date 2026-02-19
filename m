Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E67EBE9A03B
	for <linux-phy@archiver.kernel.org>; Thu, 19 Feb 2026 16:17:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Message-Id:MIME-Version:Subject:
	Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=DHfdPL92dPAJdTo6vv6ySOtxgzJ6QiWJk7LB5wT61rU=; b=4Imtf8Vr25Thb4
	wuAgJV+84sPdndSgsUt8fCxi9Jo6NfEJpp2I9mOEksRQwsrxYmQvq33JlQl6Wrro7QxIuw/r3CYjW
	lcHLQB+byFl2Q75vAgAyT4uuE0SxjlOMLXcZhmUegfz7+Vxi5/i2XbJwnQlNGbkdjkQmCqcZ02Fr6
	cpKm/rfYiJfkr/HYF8IkTQSKCPJCsP0xaF3BKGfarjXjp28PPML/bJ/r3tgWJ7BkAuOtizYQxLg4q
	dJyfycuWEG/EnBtON96fA0MzgcqWJqiw2A6dc87PrAdJsPePQE3wTzLpxN51uZ6/sNq0nd6A6GJMi
	OPqRq0mUzKMD4XyPIMXA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vt6iW-0000000BcZX-1dKh;
	Thu, 19 Feb 2026 16:17:28 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vt6iT-0000000BcYl-0XYN
	for linux-phy@lists.infradead.org;
	Thu, 19 Feb 2026 16:17:26 +0000
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61JCxH1U159909
	for <linux-phy@lists.infradead.org>; Thu, 19 Feb 2026 16:17:24 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=K/qjftrJ7egzNOf+V0sy2E
	e5M5WSCZBJaR1TkGh+UCM=; b=SPNgeHT2F5yhnRZngJbHs73hNrd1aaBKu+9OVT
	lZj7PwbiI5+0Sc0qvCixTYwypXQnCno8EQEnA/pyZQtopsgEXzmyLQHk+UcK+TdC
	ysfMQq35sGxV3/PaSBJhG7Fo8udoxKdyAeveYT0TbBaRzFbKhk8qPp3dXfx8D6Z5
	XkwoxMhzaWnTmGWrUyQXHM+kQeaK3Tnnn3d178J/Gyp6fegGpvFWm1e9TgiTFdqI
	qVRyt6xVV5l3uEVfI4mvQYm1B+As3KF4P4WcvcX4nk4P4FTpzu3+ob5IdqhpHSqu
	24tiGlBb5LSkkM2m335O2Am48K0tcsIVHtuzqpXtnC6Cy2JA==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cdrpga478-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 19 Feb 2026 16:17:23 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8c71655aa11so1099648385a.3
        for <linux-phy@lists.infradead.org>; Thu, 19 Feb 2026 08:17:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771517843; x=1772122643; darn=lists.infradead.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=K/qjftrJ7egzNOf+V0sy2Ee5M5WSCZBJaR1TkGh+UCM=;
        b=g0l3oblh/GjPa/BBOt9/bmOdQDru2aUivuUKoYt4rV/Rd5OHQY71woMF1csjjn36VD
         gY6CNylIvufCngGovBpj1n9XWsNxAmBA5McHeFxNlfIWnZyCazty+hUc+YJ8a2TKOLpL
         zLcDV8hHfRTHWruMAFyFlg52UAQYYlHx/uxWfXfwztVOD/r6vNHmCgrE4BCHiJei1iPm
         L3kDoYrDPy6F2M+JYkA4ZFuhTsCk0GTHPRBlR44SxgaKmXGNC8F+/99ulPgQweGpOGgY
         YKvRFG9UNBRuAyb+PceJvV9sZRZdl/vxwSkLYNY5+lteRGWrSuq87B36C+/pwbNJnNCV
         nMfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771517843; x=1772122643;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=K/qjftrJ7egzNOf+V0sy2Ee5M5WSCZBJaR1TkGh+UCM=;
        b=TSqot1Tn0VZFfRypP/5Pa2DXHtvi1Mc3OjRTtUJg15m+Y/+B7lAX6YdL5PC8/03crI
         SH0vw2IzAusavwxEs6SRbjNhOXila93yq2DHk7/3z7Czh+seasAgs86wtRabIRPng+y6
         gBoHMRKDRIRIQVu015f32awzEgFOsuDqmsTbGm2Th+qR7QdQiqzu9rfbB3k6ngmltZ94
         FOcl6yhUP5ApoqEniD+dIiYz8tXuApvww8t3lmlbjbgbCB7Fm1CC3CPNAaviCYbrSGnu
         3qyd87gyUyc41p4mkpLWidqSuLCZLF0XbHs5WFXU/C0MOi6OGYp02FKOQ4m0AUXIFL/n
         DQtA==
X-Forwarded-Encrypted: i=1; AJvYcCWZQHpQWzJ8DEX7ZLebgcmYK+5L4vPFATuTSMLeeas9BfcWYzYjnSYB1Df/j/u7InULmnLULogTz8U=@lists.infradead.org
X-Gm-Message-State: AOJu0Yz1Q9Y6LDvC+Q9Cq2AN6JbxXc45DxqtdywxdhjyIjKqAm7LKy3c
	xcUKxcC0A3UGSpaIF00snVnGGIkKiqwvjoLz1K33P7BM8+87bO1w5VP1wVysm22pCbYK6klmPw2
	OJeZBBBBm3J5Pkn8fwDWNHEW5cu1n3EtxsL6YoYdfoefQQC9NRy1ogiZYIzzZxbTfM6Dx
X-Gm-Gg: AZuq6aKmj8Q2hK9ovIWHqz1t2yPxeCxyFXj6B3+8f3bkE1++8Im183yQLWKDDWpN0Rd
	HCEKAb+Z6wZ0frlTYGBOXre028j5FpXcaQwM5O0s377sSLeiD59q1LN42q1hVRPdU4qmPn+qSvF
	JQb110dJOYMYh6jZ+PgdeNNvh+Dlth/nkGSVVy0FmyDLtgzmpNPulnkfPc7ZXcUrRht/pkaPzSA
	HEJcgknDYJX7yFryYmrOEmEp0Ecu5G5ESiRGbRxsaPNX+Bc1km0480CVZdXrU7O/THhzEGHmXGR
	y7oliRm3svoEtSCWq83fy9iGJa8PiA+v0EyeS+s/DiIgvwkm9DesEF0mErM4nXg7iE055JVRE3l
	v4IN1IGbAGymRHyO3gM2uSsZ42Th54Q==
X-Received: by 2002:a05:620a:4143:b0:8c5:311a:2023 with SMTP id af79cd13be357-8cb7405771amr694507585a.22.1771517842971;
        Thu, 19 Feb 2026 08:17:22 -0800 (PST)
X-Received: by 2002:a05:620a:4143:b0:8c5:311a:2023 with SMTP id af79cd13be357-8cb7405771amr694501085a.22.1771517842389;
        Thu, 19 Feb 2026 08:17:22 -0800 (PST)
Received: from hackbox.lan ([86.121.162.109])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-483a31bfbd0sm11365355e9.6.2026.02.19.08.17.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Feb 2026 08:17:21 -0800 (PST)
From: Abel Vesa <abel.vesa@oss.qualcomm.com>
Date: Thu, 19 Feb 2026 18:17:11 +0200
Subject: [PATCH] dt-bindings: phy: qcom,sc8280xp-qmp-ufs-phy: document the
 Eliza QMP UFS PHY
MIME-Version: 1.0
Message-Id: <20260219-eliza-bindings-phy-ufs-v1-1-1635e7b53049@oss.qualcomm.com>
X-B4-Tracking: v=1; b=H4sIAIY3l2kC/yXMTQ5EQBBA4atIrVVCyxCuIhb9UyiRJl3IzIi7T
 w/Lb/HeCUKBSaBJTgh0sPDiI/I0ATtqPxCyiwaVqTJTeY0081ejYe/YD4Lr+MG9Fyxc/bKqqCp
 NBmK8Bur5fY/b7rHsZiK7/W9wXT/dXAKCegAAAA==
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1149;
 i=abel.vesa@oss.qualcomm.com; h=from:subject:message-id;
 bh=w1BZRiXo12G6i9XeilLkcRvoTub29f90OZK87AyD/z4=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBplzeLO5Fsgiyqm2zNaxpGTQfME/4XcuRH9t2C2
 fDSz4m4ZYCJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCaZc3iwAKCRAbX0TJAJUV
 Vmc5EADIYYpN/xUQo2gf2A7DHVNaZtwSx/BA47l2HhpEARwmyUj1hq/n6fJTyTsQcyCRRSdXC72
 10u2ikmdP48bYVK15uviapfSptanNs5rKjg1pl5NG14IJOvUFZGWWkVPZaxXpAzbWbFiRj9V/B4
 waqARaF//bykoYLTx1XjFEhWZTZg+UiBwVP19h0E6f0Dn7F8nUBmlurNnd+4HGj7ezytUvr0Z2R
 YKuF28wkwk7KOU4mqeEkN303Yf2EINrFMofaVmbFWuokfN7eFeT4pApn3/KA2QoQSIsVPuC2hrc
 hEktb3uzJbdCdvODG3c6HkahLCAq53NYNDP76xU14k1XxcBIR7NSQGznYdSjx1e96ebcyMoMPhd
 C0UhShNj5UouATWETTuwXTHjE7IjgA0YqCqesrjRA1pvXJoIfAXDu+dFFTtbIZVfneunvshdX1Q
 +08YUOZajDISVtCvIIgObAO4JBryxepmxHAc0uMuvTyDTKZ0dnt5XeJ7MqhhsHRI1pRN0BPw/9u
 beeUmorWrHydCRYFw79GkeOBJnkDhRkbqd5Jn70zWBPUACFxxmUu9cG0nCrE+phkuuMOfAZdnOa
 jYm72e2jIEXNHG5Vbq+F2OH+b7UL1UPY9lDVNnjP/BQAGrts6jX8Gp6ubb3ZNK/QDcamrrrBazl
 S6Afb5UokTvit7w==
X-Developer-Key: i=abel.vesa@oss.qualcomm.com; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE
X-Proofpoint-GUID: KVwDmc22uO1Ybe7j4GAL9euQA8LGW87d
X-Authority-Analysis: v=2.4 cv=JrL8bc4C c=1 sm=1 tr=0 ts=69973793 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=oauzzCmhM186DRC0Y2yWPg==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22
 a=EUspDBNiAAAA:8 a=aQZWcQzGOWkNwrqkSlQA:9 a=QEXdDO2ut3YA:10
 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjE5MDE0OCBTYWx0ZWRfX/kf4FSM8YrSx
 UqdjODS8urg2WKpPYsxn8Mgw+HVU5PO2tCGvrQRSdijpAHiOJs2vWJzagz0JOImJpXyeJJI6/Ah
 UynE1VWJCyWbMYeIU92F64ESmI7/9ZnkMSClej6gUOcRYRhcrL6KCW/QV+0F56DhtJTkx2fA8Ot
 kzr5z6hrZY2dOwZOaY9zd2jmmokJCXUoSpSZzP3h7OHRm457OQjruosG6v0kAarUvFdCq/yuHLo
 yp6lbGzEJW99awtH74pMHTy2uYAJCzuIMo2cmH1QLUtLWmTdFJUVG36WiZDMWvKOIdkXTOQS9EJ
 TwjVfWtYK4igARznGxYOhwl5IZAt6lCvjsb+6o0am39XvGStu/bHa2VxrJjvNvhl1A8G76Ni/2p
 2yhVX0G+MOU4Ng8NuHZ9/3cXDfjdPKGStxyfqCuHCtF5jurhaCNl3opunP9ovqw+NKQlN5GsoFJ
 aagHh+a8VAFlPBysebA==
X-Proofpoint-ORIG-GUID: KVwDmc22uO1Ybe7j4GAL9euQA8LGW87d
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-19_04,2026-02-19_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 priorityscore=1501 lowpriorityscore=0 impostorscore=0
 phishscore=0 bulkscore=0 clxscore=1015 spamscore=0 adultscore=0
 malwarescore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2602190148
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260219_081725_317754_212759C4 
X-CRM114-Status: UNSURE (   9.67  )
X-CRM114-Notice: Please train this message.
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

Signed-off-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml
index a1731b08c9d1..7120741ea092 100644
--- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml
@@ -16,6 +16,10 @@ description:
 properties:
   compatible:
     oneOf:
+      - items:
+          - enum:
+              - qcom,eliza-qmp-ufs-phy
+          - const: qcom,sm8650-qmp-ufs-phy
       - items:
           - enum:
               - qcom,qcs615-qmp-ufs-phy

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
