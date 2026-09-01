Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DF63CC61DD6
	for <linux-phy@archiver.kernel.org>; Tue,  1 Sep 2026 06:04:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Y0httsMXpk3LeEAtbt0jk17EBOc/3OF3QMCr2qeqpbk=; b=wm0u81iWzsxuGD
	5EkVHpUPLi6QVIQAQk+axFgp+4jMTEvx8E3NhyKfObxSf1Zz91pQ7TkqXvsJ/yIDuTZg6kb0L+yyo
	fK3jmF2kNBXDxy26nP+m6TfkYpGFsMxG4Rn7e40Nf0xV5mGq2AmMF5Dx7YfpNzkXtiKvYnWvcO39V
	xOobpTxCPO52UXxLa2oWW7JcVHVhR48kGNdy0HNaMBrmbof47p18eeGV4YcwHRDkOvcJH6938dV3i
	HOxJoFlOebLFL+5vP24iTIYjcUYNg0rJY2NZ1+GZKDjlaUUiEUd/7PgLZ6AIMcBrc6KllwVAn2yNB
	uvhvJV2RkrgM1cUUuSEQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x1Hbu-0000000B2fn-2YfF;
	Tue, 01 Sep 2026 06:04:42 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x1Hbs-0000000B2f4-1ncv
	for linux-phy@lists.infradead.org;
	Tue, 01 Sep 2026 06:04:41 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6810p0H31487681
	for <linux-phy@lists.infradead.org>; Tue, 1 Sep 2026 06:04:39 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	yxOiia23GtlGiNnaYrLL6nmn5DZZAppKMl6jIYoOE4E=; b=fJR4n87eqUAAMu0w
	dHoJjhk1y7QoSxuuUPx57GfNNBVTIg+MAa8WtGYdWIXTFMsVJI2+ZIiO+fHkJY2Z
	3lzMfu4ao33mXvpJ5GWwfn9aFGGXkKqB2C/ZQ7eTBTPK3tY8NSgBCrJ9mx9uy4qP
	qjqFtltOjR8CRWVuCWI7S1RAoyAA6YB7JBN7RCZiEra8uPGUpyos8dzC9nHTDSa4
	/76eAMAgbi9X4d7iM4vkyGGRW/7q9xAtVOWRPfP3wFqnGH0YYzua+kFgGzEVSO6j
	5sIlHZytlREX70dOOLe9tcKdhSkWJe5Y4MNRdad6mdFT0t2EotiaX8/Ja7kO+FT+
	vI0VzA==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4gdfchaa9r-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 01 Sep 2026 06:04:39 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-2cf1c86963bso6861175ad.0
        for <linux-phy@lists.infradead.org>; Mon, 31 Aug 2026 23:04:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1788242678; x=1788847478; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=yxOiia23GtlGiNnaYrLL6nmn5DZZAppKMl6jIYoOE4E=;
        b=VUvS5ou9rKoBsc2TJ/UUQ7PqN13MKQV1BtdumqmLWUXCZLHENGdWQ/ppLOK8MmB8C9
         JhDpMTa+PoS11SalWTQVclVXi4KwNrHfEcr8QYwuWciwGyyp+v9xLnKjsDGsZaNFjyD5
         NtFkSuDC9AgrW8ROpYsJqv4gm1cDdl7PYZlQJs+VIyqFjkPJXBZ9hUnjBpaOxWxUQI1w
         3zCqdg8c8ASAJc70HUPmToTXYChKp57RKCeVojYrLTvl7ME8OVjpMFzoe7UeUJXTgTr3
         /id7PF9m5O7klajWdpMwJpt1d4ag6r7SSEOQrZdK/g1GyrUEd7xzz1F54ut1FqlRRnBC
         7LyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788242678; x=1788847478;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=yxOiia23GtlGiNnaYrLL6nmn5DZZAppKMl6jIYoOE4E=;
        b=GgSuI5X3EarDlrW8w2prszI+jxV37zd//eHiu8YQzdt6EzT+Qt+11RTgx96JIJEndT
         SM+lo/wWU14pCcLfo5JzmwwQDiPIJMCdWB8aeTXnHJtOOSq3bPSsatAzVjdmABKYW2Ng
         2zvbnQCoMlMycASpPkKQPDeKhchxrzGL09y2gSIGRxWbigl1sykBEEQchzsRLAQevZKR
         FTKidIjQa4Vpf2E2teTcJu0BDHlvYDZmIsrDE8gB7GKH4jCSu+xum9jpvuFDkHFCEaQl
         U6/3jJ5RRyAPrMj3meuqtra00sTMGov1zRsW6r5xs3iO+XvciJiAFmldtPsw6ZVlw51x
         q22w==
X-Forwarded-Encrypted: i=1; AHgh+Rp3LoK1wW8IKcichjSfJuU5WmLp0wAY0zX5vBSSuZX45o0tCHZ15ZPWUhjIF9kECMeARSE9sXqM3lE=@lists.infradead.org
X-Gm-Message-State: AFuF++kRgKTrgIARDCphm2vc4glY06xBTHujxpdohlisEG6PxAqnNAsB
	sVuR1wrO76gLKSMSANyRLlftiywW0u/RilqvGzxZm6v665G5sC5GwUAfK8M5mq2q00aa9aNkOZR
	Vb41xGCjbJhQNPohaZ+38Y6XauEKmZb56OGQQ3mfDBwW3m8VoCiVglQ1cGGVN5NOFZw9j
X-Gm-Gg: AYBFou2O0AI0GfcJFc32ME1xCDaeJCDAtDYwd2MDHeaU437Pg7XZE5ywjlSHwAA9KBN
	Z6WIVlVU7UqTtG80egyrQMYimcFSUMM/3A4SV6pv/3EyWPmiv78RyvrAOLFsCYFUGQkIMmxntw6
	dtDPdjZWB1kga6pW7rHlfbC6AXrJCIW9Iru42UK279Ao8UMruWJeb4OXkVY33kQMjySSy+L5mzM
	za2w47/b1mE09EUGyretQQIKNwllAYxIuwE81YxJz3XoC+JC+AJhgYR0R3qi2WvK0BZ+liImtH2
	FZj32LqhyezIFybvbtCs7Z7t46bsaCh0Dd1YpgyzB7+t/CCKju3fgy3PACJplVKl0NrkcYRXkHQ
	KRl4KOvfQRS95Vimc+AUrQNGAjEMfPqtuao8es/CbRS1j0GyCVEh1HrWyvRFcyRmDSBKpxvGWsT
	VsFthHmnvIRFO+048bUtR80Vp3fI1Oaw==
X-Received: by 2002:a17:903:98b:b0:2d8:d4d2:d138 with SMTP id d9443c01a7336-2d95295bcb7mr34998835ad.20.1788242678557;
        Mon, 31 Aug 2026 23:04:38 -0700 (PDT)
X-Received: by 2002:a17:903:98b:b0:2d8:d4d2:d138 with SMTP id d9443c01a7336-2d95295bcb7mr34998545ad.20.1788242678142;
        Mon, 31 Aug 2026 23:04:38 -0700 (PDT)
Received: from hu-varada-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-3286fa20e2fsm35855800eec.28.2026.08.31.23.04.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 31 Aug 2026 23:04:37 -0700 (PDT)
From: Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>
Date: Tue, 01 Sep 2026 11:34:19 +0530
Subject: [PATCH v2 1/5] dt-bindings: phy: qcom,qmp-usb: Add IPQ9650 USB3
 PHY
MIME-Version: 1.0
Message-Id: <20260901-phy-v2-1-cc93d2f3b1bf@oss.qualcomm.com>
References: <20260901-phy-v2-0-cc93d2f3b1bf@oss.qualcomm.com>
In-Reply-To: <20260901-phy-v2-0-cc93d2f3b1bf@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>,
        Manu Gautam <mgautam@codeaurora.org>, Stephen Boyd <sboyd@kernel.org>,
        Philipp Zabel <pza@pengutronix.de>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Proofpoint-ORIG-GUID: G8g4rIe-2o70lX4yYsNqxA8q2I4YPg5c
X-Authority-Analysis: v=2.4 cv=G9Ms1dk5 c=1 sm=1 tr=0 ts=6a966af7 cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=IkcTkHD0fZMA:10 a=VdqzKS8jKosA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=3WHJM1ZQz_JShphwDgj5:22
 a=EUspDBNiAAAA:8 a=CyeWGLuohibXKJY0YOUA:9 a=QEXdDO2ut3YA:10
 a=324X-CrmTo6CU4MGRt3R:22
X-Proofpoint-GUID: G8g4rIe-2o70lX4yYsNqxA8q2I4YPg5c
X-Proofpoint-Spam-Info: AW1haW4tMjYwOTAxMDA1MiBTYWx0ZWRfXzWje1ThOxDOn
 X6QwTu2nYhuiMlhCIeWTxq4CHlSS0NV16t2ulnpTfPIADcoZGYrQ/6x9IfQb3d3WnG331f7jeGV
 bjZfJw6zqhYmW4ACQl7ViomfwaIpQnU=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwOTAxMDA1MiBTYWx0ZWRfX2+pRBL6IUU2b
 NVSabmVAR83uDJku7Qp6dr7Q/Tnr5KP/yfk9EB11Y/smaNQg9NzI7jj+04HgmOe4llUJDuNZMBW
 y3BUsh6D4GVLlwaU3e9DHOkaHP3TYEwIvAMeUvDDdpqeQ67GHEqguuF3wzXkCmpMIoLtmTvkzGd
 ULw51iWsc9BImdL+8j1fQwFCXLBpLxXYac9iMQbsnR6fxtJ93Y65SEEL5kut6nII6dzFe6knO9v
 w23AYMs6JI1tA3REr24b1fe2VtsWGBjYENl/58S8zt/+kIY8l3CKxKqIJTkwpHVJ1lZ8FTaH7TO
 ELZ0biSKlHILUca2ntGFSWzgnfAHDwXEy5G433Egpsz0nljiP/EBl97mWXRC7pJhTVDTGgJ2Mi2
 emPlTimv/Y38M7CAYzY/2GXw8mVY2/Hi/bxF9OoprEr8mx7tBVZIHHEWrRGv2mh9V5HECrxoRJL
 fcGAov9BJ4+FfmDfNMA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-09-01_01,2026-08-31_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 suspectscore=0 adultscore=0 phishscore=0 malwarescore=0
 impostorscore=0 spamscore=0 bulkscore=0 clxscore=1015 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2609010052
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260831_230440_586835_3BA91AC2 
X-CRM114-Status: GOOD (  12.33  )
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

Document the Qualcomm IPQ9650 USB3 QMP PHY compatible.

Use a standalone compatible because the IPQ9650 PHY has register
configuration data that differs from the currently supported SoCs and
should not fall back to an existing definition.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Signed-off-by: Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>
---
 .../devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml         | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml
index 01342823e57f..746c5a331f48 100644
--- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml
@@ -23,6 +23,7 @@ properties:
               - qcom,ipq6018-qmp-usb3-phy
               - qcom,ipq8074-qmp-usb3-phy
               - qcom,ipq9574-qmp-usb3-phy
+              - qcom,ipq9650-qmp-usb3-phy
               - qcom,msm8996-qmp-usb3-phy
               - qcom,qcs8300-qmp-usb3-uni-phy
               - qcom,qdu1000-qmp-usb3-uni-phy
@@ -102,6 +103,7 @@ allOf:
               - qcom,ipq6018-qmp-usb3-phy
               - qcom,ipq8074-qmp-usb3-phy
               - qcom,ipq9574-qmp-usb3-phy
+              - qcom,ipq9650-qmp-usb3-phy
               - qcom,msm8996-qmp-usb3-phy
               - qcom,sdx55-qmp-usb3-uni-phy
               - qcom,sdx65-qmp-usb3-uni-phy

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
