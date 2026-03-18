Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E10E4103D924
	for <linux-phy@archiver.kernel.org>; Wed, 18 Mar 2026 09:54:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Message-Id:MIME-Version:Subject:
	Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=sDL3Ny24g2ffyHdx4BSwS0r9kXpDQuUPvprgAfREcdQ=; b=Imwi2So405AODL
	j4pjochCVPqciW9BvPP9LB0P3VRGDTiX3+uVMf6s+r6gFGrESRWOoR/ZPEfBE9QpWUYm2XhhPTypa
	MaYkS+IjPKyhK0I5nGelT9Up8xjjgyjhxVODwfWIHAG+/p+yWGcs0DgFH/DnT8dPM1dAfmfRT5mOc
	NQLCKEkAEeSmg/VYoa5iY6lw3pB/8w5fe5RO2ta0pNex/tIer6/76ErjpxFE8IEC2EPR1bT4QL+Ug
	dbWDNtpj+2qkg6ifpy9hNCtuAwgTC8waPuGILfFMy77HvITCz7IYLIhr+wBRrOBCKOEUCxmRFoqSl
	ZMiiJr99F9m5bohNI6ow==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w2nbx-00000008AYd-2CG3;
	Wed, 18 Mar 2026 09:54:45 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w2nbv-00000008AYJ-3DtN
	for linux-phy@lists.infradead.org;
	Wed, 18 Mar 2026 09:54:44 +0000
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62I9325Y402533
	for <linux-phy@lists.infradead.org>; Wed, 18 Mar 2026 09:54:41 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=8XfzVj29lHxO49M8WtATy3
	1Kwc7gqWKnVbOEPxpunMo=; b=hXTYARutZBjzjPf6EuKmAhr3OBwZT9YzMrSPrN
	gszTNRTHjRjWUKU+z+rhm+hx61fq9XcPbD0QMfNGeMZ5ATOv8OaKe/nZJtFSdrmL
	kWTSUwRzesahfSRt2UimyvS8FaqqzDieVuRUKsyx6S/ppoPEdkr3Z2+n45rrLTS6
	N4CdnFr/wgjBknm46eHfYgSI7x+z5kqOaoog6juPLDzgTYLf4NSeSfwtiNZLBgE0
	goj+iwNumglIm3/WJ4gq6QlodcI4mPZsse6UG+D3r/deW7f6je9WmPjfzqeGbTvi
	icWnLUNn0/JS13DhsH4NFertfPiKZgDFFf2keT/Xu811XeuQ==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cyc4du6b8-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 18 Mar 2026 09:54:41 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-50917afa521so48497061cf.0
        for <linux-phy@lists.infradead.org>; Wed, 18 Mar 2026 02:54:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773827680; x=1774432480; darn=lists.infradead.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=8XfzVj29lHxO49M8WtATy31Kwc7gqWKnVbOEPxpunMo=;
        b=HGGFPX8bREQmWAEPpmeVi9+TEpKbHETtu82ins7SyXbyYHP2AEM4ZtGZV8Oag0bAtH
         JfbHASJsqlD02xWGS1pZYpHdXUHY6RtElj86UkVVJWSgciBoxlRu80YHpxoVVJ3mbx5V
         kH5ic2sZJo2kQRltENae4dfqULst7UYI2xAmjmHUPMMyk9IAE9Zi62XYiokfw2jlqUFA
         GnlSVWljwJePVkhSZj2zDLjZhvrwcfRlpdgSipJSVMEoBt47EvC6gZYOrBRE6Y8bpLIi
         IOBNCykkBe7BndC3zXIeZMeQiRkPaBuUwBKS5fsYuXiYjKgEgRBkGh88e9ToxsNNKVyI
         POMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773827680; x=1774432480;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8XfzVj29lHxO49M8WtATy31Kwc7gqWKnVbOEPxpunMo=;
        b=I0xNo1f18JghQzWHEtZzIQdvKt+d9DbW25aQw9z/RxeoWChq/aHaxN7L/G21Qo/osV
         su3dxdeaHT5ZL2/PsRjZQ+3MlmzpcYPJmP2JcATHNsuMYBH+xwYguYw18kxmJCy5HklQ
         XNqMhBFUsPEwAxBBEWnqFSmJ3gYwMjO/3sXVDD6Vx9H6rjuJVRHuWB/q0mNBRn6y9Xf8
         XoM9rpAH+N0k+XQyfIcXwFupi1yKbctt/n8tud69838LcXimTP8JTei340Cytt2M6Tme
         R9RFHk0hG21nPrkIwR9TzyaniPCstJUSmSafjzUUa7tHZe62t8otQDMzLa2wbFfc9aue
         QL9Q==
X-Forwarded-Encrypted: i=1; AJvYcCUVcqGUQE48f1JgenfYhySfGNNoGnz0aZnHf2hRi4BKPuRDEPSQnoo1YDNVZly9LxbKmA28ecZRHm0=@lists.infradead.org
X-Gm-Message-State: AOJu0YyA3c3v+diZvlLRwgCdGiB37qlIt9S1RcTUDrUAhGM1Fa3Yni3e
	Row+Hrv17I/fJdSF4V/Vc1Ty/iC+ldKL6TKG/XqjDspuxzbdWwRvyg+EWqwCBL061tBxR9rgleo
	JjHVNSXEka0hYKCojf4vn0J4yIV4o535Dpr4yCDUvcUNPcRPMDp00+wG2uJovYr35CGM3
X-Gm-Gg: ATEYQzycmq6tmGugYI3DsYPe6/UbaVQZ3e7GFBX5RYbKi3VqjK/k2hf2tfEDSa6qOks
	rXAf0Trs3Dt+ZfEJ8LGAyZYZgIYoNg00YsJLPGj1TtgZNUim0qROrnf30v6MlzlOZxWdkmKpqjG
	Z2V+Rso1P5tyqh/jGI64jNZ4Bvgj9ItIa8KQaDnxRZt1p0kzWUZjw/J4l4jPA+yk2njDhKfWUb4
	eSfe1Hd5OO7Z1aGvPSwrSrT9nu1FrHFBGGO+0eNXVv1fAvp7/Mx59D4W0vip5fVzTH/FTCKXVeK
	7OR2rSspss2t7N0fECiJQbuVdhpbklRGawhKEN5evisZzhn8zzKcZVltcNjWa0vhYAVYsU21xdy
	N8+7Efo4Kpavy8axDg4Sg83DYAxE=
X-Received: by 2002:a05:622a:d3:b0:4f7:a06d:c4df with SMTP id d75a77b69052e-5099811a15amr88913981cf.33.1773827680333;
        Wed, 18 Mar 2026 02:54:40 -0700 (PDT)
X-Received: by 2002:a05:622a:d3:b0:4f7:a06d:c4df with SMTP id d75a77b69052e-5099811a15amr88913641cf.33.1773827679807;
        Wed, 18 Mar 2026 02:54:39 -0700 (PDT)
Received: from hackbox.lan ([82.79.95.133])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-486f42149f8sm57009035e9.5.2026.03.18.02.54.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Mar 2026 02:54:38 -0700 (PDT)
From: Abel Vesa <abel.vesa@oss.qualcomm.com>
Date: Wed, 18 Mar 2026 11:54:36 +0200
Subject: [PATCH] dt-bindings: phy: qcom,sc8280xp-qmp-usb43dp-phy: Add Eliza
 QMP PHY
MIME-Version: 1.0
Message-Id: <20260318-eliza-bindings-qmp-phy-v1-1-96a0d529ad2d@oss.qualcomm.com>
X-B4-Tracking: v=1; b=H4sIAFt2umkC/yXMQQ6CMBBA0auQWTtJS8EQr2JcMGWAMVprB4xKu
 DtFl2/x/wLKSVjhVCyQ+CUqj5BhDwX4sQ0Do3TZUJryaJxtkG/ybZEkdBIGxec9Yhw/6GtHXJE
 h6yzkOCbu5f0bny9/60xX9tN+g3XdAPn2KnR6AAAA
X-Change-ID: 20260318-eliza-bindings-qmp-phy-c53be4b0b131
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Abel Vesa <abel.vesa@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-7ae85
X-Developer-Signature: v=1; a=openpgp-sha256; l=1201;
 i=abel.vesa@oss.qualcomm.com; h=from:subject:message-id;
 bh=5ZwfK5qPkxzf0gpr+xJeTTj/BL+hR3QWamHSvnR3AU8=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBpunZdAOtujtpTrHBUHLjuzJpocVnAwKoZd1kHq
 07PW11nOMyJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCabp2XQAKCRAbX0TJAJUV
 VkCcEADN8nVxS8KzgKSfqFNYYy7HEaTKSHhznGLtYfgmWTStkQJ35udoGM8cI/e4MVffa0MMp1f
 RQPcC1M3TTR5ZJGW5frilWZkyzkQclSTF3iLiLv/TvZlJsuCCqjGM2sm0HEH1uvcvZVrx3MnjVd
 MIpWyCOo7tDc5cz8nZun96GubVB1yEX/f34zXatEH0/XCzVeWLo7lCgYySGsInMpk0vK73T9QvC
 c9gEds6hv2JnPpUQIV09qNy5W95m0YfsTdee6DfNvIU9h70LsGIYExeGNKekmySNHkHHQtIxd9Z
 8vsrKkANJMdYurqDQHTwZCkdG9qkUYLijqeKnv4TFNDjnG6QCWT5TBbKmjQQMu0lLWuwlgnrade
 B2eh5yY1lSCjpOpIEKAJMX/Y/vH/PrAWc3O4Mrp3qkYXg4KbAMFX806HAJbn7/Hw6txlTVv0M/G
 xrHcX8JHAsqe0UUSTFtfjFNU12Koam0Ih799hcI9vRKK0Fk4wck0NBMJjy/q0nfthsk8myZCe3P
 if1rAqEyGfsUPqwNBNtC93d+jNop8RMKEbXNWLFUFleQdSEi0uAcoyrdceaWkxL0hM65bcrgKo5
 IslxXadbD+gE27wgyDTZ0BRtiKopYElHNia/OziWkutnYS0pYnuvpitnSBtUkjr687uwrRY3hCF
 ofSVlCkArx+GrgA==
X-Developer-Key: i=abel.vesa@oss.qualcomm.com; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzE4MDA4MyBTYWx0ZWRfXwmTSQL4lKW63
 StOzQBKhp/oD3PGToWtQGslNZv/4vmToLrv1M3di/AjibEU0FAO9zhsMAgk6FvVEEVB4LcOdR8O
 SEQ7p7wE53SVShL+0Z6l/oBx2OcK3ABct2BiJBphynxs8mxt8d92zOz5LedAItPY0UTCFj4DgKv
 C2TnJJDKAgjYhTtzozh+dDfxsR+QeA34JWlsq/G+iMoqXIsn+OsVjrnijxxypcMQQ0LS7gDToCI
 GHQXefWWELG6Jb5jrw6Sy8e7J47jUgO7n8MQuT5zrwuiwLzYi/NpcKVWRqW8w/gqFmkO3ahXDmG
 4XpF6/csa4ulB50zDSV4TzNI9EehCF4bxuOuIEdg8D29lohR0vza2VIp+eD85a8L2YPCzBXIGcV
 vPg00C0D3TSfAbfRzk0BHqnjHwcpZMe0+9Xciaq2SMGjQrPs0tfcTHiRZ0Wyb90j4ahqFk0NMPT
 RboeZ0BVuTf8nlRTZBw==
X-Proofpoint-GUID: nWvXPeut-5I-boXjQvATA1-3juOaWq6-
X-Authority-Analysis: v=2.4 cv=DfQaa/tW c=1 sm=1 tr=0 ts=69ba7661 cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=iKs3dpp2RB4k51ZqCjcyjQ==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=ZpdpYltYx_vBUK5n70dp:22
 a=EUspDBNiAAAA:8 a=K6OwPNha_kR0oLd0V9oA:9 a=QEXdDO2ut3YA:10
 a=kacYvNCVWA4VmyqE58fU:22
X-Proofpoint-ORIG-GUID: nWvXPeut-5I-boXjQvATA1-3juOaWq6-
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-18_01,2026-03-17_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 suspectscore=0 impostorscore=0 lowpriorityscore=0 adultscore=0
 priorityscore=1501 clxscore=1015 spamscore=0 bulkscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603180083
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260318_025443_949677_932443BB 
X-CRM114-Status: UNSURE (   9.77  )
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

Document the compatible for the USB QMP PHY found on the Qualcomm Eliza
SoC.

It is fully compatible with the one found on Qualcomm SM8650, so add it
with the SM8650 as fallback.

Signed-off-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
---
 .../devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml        | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
index 3d537b7f9985..4eff92343ce4 100644
--- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
@@ -16,6 +16,10 @@ description:
 properties:
   compatible:
     oneOf:
+      - items:
+          - enum:
+              - qcom,eliza-qmp-usb3-dp-phy
+          - const: qcom,sm8650-qmp-usb3-dp-phy
       - items:
           - enum:
               - qcom,kaanapali-qmp-usb3-dp-phy

---
base-commit: 8e5a478b6d6a5bb0a3d52147862b15e4d826af19
change-id: 20260318-eliza-bindings-qmp-phy-c53be4b0b131

Best regards,
--  
Abel Vesa <abel.vesa@oss.qualcomm.com>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
