Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E75F3CAC5AE
	for <linux-phy@archiver.kernel.org>; Wed, 24 Sep 2025 23:33:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=f3aVwqYNuNXuOK7vnfuYLySbKWyf/djbCFZom0XMksI=; b=IlxbR4nB5mkgrE
	V08t/Y0uAWt6eijerN4naLNpkhQcfU8I4b2wHLxuhGNO/vMj6QRcneNGTNi9SthLIGwA12v+Zy/2C
	5Pj6AaWboM+8f6FIoMd3u6Jl85/YCAjzptQlPsWK9/wSDC3euPZJ47xLp/KED5WDv5Zou1Zo9xUVA
	2StGlNGowPMeGfa6Nquxg/G/SmfICK+Gx82hOCvm/8KXyuUlFGng/tpUYbJoe4DYCDuGwp2eli0S8
	0x7Zle2IS2dyzLk0rpWbYGlvhsuaA1uU84ywgHk6EOWl0oru1/nVwpiBiP2TvhqaerdQDl+nENs9k
	c9XhPFC8hXWuPhB1Slew==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v1YzK-00000004iZy-301Q;
	Wed, 24 Sep 2025 23:33:30 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v1YzH-00000004iYG-2xXn
	for linux-phy@lists.infradead.org;
	Wed, 24 Sep 2025 23:33:28 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58OCO0Q3021670
	for <linux-phy@lists.infradead.org>; Wed, 24 Sep 2025 23:33:27 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	HYqxOAoB8NF5YCaEisytDjENjTj6bZ2vC8xEsIsfn6I=; b=gShXKr9fxnexgZ1j
	323gtm1ORSX+mhZIKqFiehvvOGitjdrSaJxVEyfWCun8U5yzn/5ANzYbiFoMh5W2
	bSA7bcwlR4n6W4tOLUzhu4QUknygOkG6i07INivhWaitkJPaOo/zMiZTDB3KGWc0
	B1xkQfOHnVgKzgy1VCj71NO8uch3toPozIbMSdnjdBwrpxmRhM+UkIqp90gSd6Ao
	nKR8Gm/Q/J6hFH1jYlVt3jhfygZTSOJejaQjPdeCkoHARO9Wja8VqPR4IN52+X+6
	Dpi/midkgzZo1MQnmveWd2n/qP6h/pXC2mWHM061LOkMm7FplSTjdWxd9cHwrdP9
	HqSN2Q==
Received: from mail-pg1-f198.google.com (mail-pg1-f198.google.com [209.85.215.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49budadkjf-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 24 Sep 2025 23:33:26 +0000 (GMT)
Received: by mail-pg1-f198.google.com with SMTP id 41be03b00d2f7-b4c72281674so200129a12.3
        for <linux-phy@lists.infradead.org>; Wed, 24 Sep 2025 16:33:26 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758756805; x=1759361605;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=HYqxOAoB8NF5YCaEisytDjENjTj6bZ2vC8xEsIsfn6I=;
        b=tdbSaCFkTBzLNsLwwzk+LnulwYrz5f9GK0PQ99lhM6IPGpilLJndIQyQnQk67e6KQg
         5sePQhtCq35IJ3RIHZLCaBw3Vr2uMT3EH9kkuKRphVHr8IBM8AqyrbiMPe2Z/oX0D6Q2
         fOcAlYOHexN5Obc1d7GdhQ5nNTn0jNKK3OtWq18WBC8G2pblaj3pi3TBZq/CbK6C6Rhp
         QIJqB8w9iwrvFW7RO1OnXQDhfOU2TON8zGOlkMz5O4XCcaxlKmvbc4cuxd8y1KgLj/Tg
         zBLXbTtWZZ4wuXxoqWrDXgp325XdQu5Q4MCb+UpWU8Oo76NzGaqFbGarot9VkbiVHqiO
         FQ3w==
X-Forwarded-Encrypted: i=1; AJvYcCW4nMY9U8zL7wRAJnVEfEjC/LgsCHFnkknXnk72UUEbKyt0GAkRype1uVSm/P/ymqlRsuLJl6Uj3jA=@lists.infradead.org
X-Gm-Message-State: AOJu0YwJSzkLuUsHTReUskRe2Qwxo27scliqvLTWP1ncuMxFhchzZWhO
	5II5ZtsV9kSmRj6nMK0Px8SKoyJmwDx+ZSxtkkevkOCNtYFhQvJ0NR5T2bt810hjTxKipcRm2TQ
	3VZYSJCcyGDdQZ2fYbKauGUB5O2dFiVuh9xzBK4wyfPa8QwmCUdLFR8gvtNwdMXAJEp2z
X-Gm-Gg: ASbGncuOyd+lo7bl5LFqilPHlGK/LFrVawCVPjU8VzH72M8RGsbVhmRu4lki93M3lSN
	xfg/MUtG2oxM+cqqsaCnMaCJ2ZAG2bzJgY79tFuaSbudOvyZbiFIRNeDoW5AUACfV37uhB7Hlg4
	aNaAj8jH54p73W/QbK7aXDRKOySYSUVVJ7JILPaqR8JG5AmDPoGw3+OtI72vjEQaxS9ApsgKS8h
	vCuwSeFVApFqBT2/K4KG7biaVzoAG34j7f8fSnzqBW4BwxzVE1EH10aHQ8+2Kw4OpP8vq08/Y13
	NpWhmQMD3QB6Xpvop2YEZuFFmR0wcOJBYIeNKtIqW9VnldEAjZepL5xAq9Dl1k2EfoExWrgPpXC
	ynUA/ZnYtk4LruYg=
X-Received: by 2002:a05:6a20:729e:b0:24b:bae4:9c7f with SMTP id adf61e73a8af0-2e7cdda1335mr1610559637.39.1758756805452;
        Wed, 24 Sep 2025 16:33:25 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IECoybaViLhCapWPusumzB49M2p2wmSBDVVWBFqtou9GiF67zRhFS+R8iX5/dihHSrDIMe7Dw==
X-Received: by 2002:a05:6a20:729e:b0:24b:bae4:9c7f with SMTP id adf61e73a8af0-2e7cdda1335mr1610521637.39.1758756805012;
        Wed, 24 Sep 2025 16:33:25 -0700 (PDT)
Received: from hu-jingyw-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b57c53ca107sm392911a12.13.2025.09.24.16.33.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Sep 2025 16:33:24 -0700 (PDT)
From: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
Date: Wed, 24 Sep 2025 16:33:17 -0700
Subject: [PATCH 1/6] dt-bindings: PCI: qcom,pcie-sm8550: Add Kaanapali
 compatible
MIME-Version: 1.0
Message-Id: <20250924-knp-pcie-v1-1-5fb59e398b83@oss.qualcomm.com>
References: <20250924-knp-pcie-v1-0-5fb59e398b83@oss.qualcomm.com>
In-Reply-To: <20250924-knp-pcie-v1-0-5fb59e398b83@oss.qualcomm.com>
To: Bjorn Helgaas <bhelgaas@google.com>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-phy@lists.infradead.org,
        Jingyi Wang <jingyi.wang@oss.qualcomm.com>, aiqun.yu@oss.qualcomm.com,
        tingwei.zhang@oss.qualcomm.com, trilok.soni@oss.qualcomm.com,
        yijie.yang@oss.qualcomm.com, Qiang Yu <qiang.yu@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-99b12
X-Developer-Signature: v=1; a=ed25519-sha256; t=1758756801; l=916;
 i=jingyi.wang@oss.qualcomm.com; s=20250911; h=from:subject:message-id;
 bh=f5d/tKNz4xRhH6PN5EHx3qLjVEk3ze6DJo2urPoB8ds=;
 b=w+hkMBPPUQq4P36jzBsLpA2YqJODM7WWQBRigQuS83N3PiZtdeKyxWT8T3hPfDuJWqcuIBS1G
 DlLzb4YfDctAqPe/xliHIj4V1ryO6sm0GGpHtZ65ZSTQ6pA8hho71Pb
X-Developer-Key: i=jingyi.wang@oss.qualcomm.com; a=ed25519;
 pk=PSoHZ6KbUss3IW8FPRVMHMK0Jkkr/jV347mBYJO3iLo=
X-Proofpoint-GUID: MpXqcxJiqgfOm7mP4AtHxWIsX2IQ4QhI
X-Proofpoint-ORIG-GUID: MpXqcxJiqgfOm7mP4AtHxWIsX2IQ4QhI
X-Authority-Analysis: v=2.4 cv=Yaq95xRf c=1 sm=1 tr=0 ts=68d47fc6 cx=c_pps
 a=Qgeoaf8Lrialg5Z894R3/Q==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=cOhV6jHuZs2i7JAHTEIA:9
 a=QEXdDO2ut3YA:10 a=x9snwWr2DeNwDh03kgHS:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIzMDExMyBTYWx0ZWRfX0a4bSeSX1PuT
 W/MVG5MEyA5Sf73desmSr7uz+4dHQKdc67HXVijVrViOg+r3WcIzJj5MXdCgnSeyV5wJHobIhw+
 yCiapiKipbAr1bdIMQNUuDlumRDiywp5J4wcVk0sSfWdoE0XG44JyodFQDGc57vDugub6b4O4b4
 PBKDxTFLnYdYy3Oanro4i3V7Z4ijN0haaynC1QwFJ8HS8DSm5S9LQc/tRNr0SJgOu/LoLtkrJqE
 LntHTFcch3ybqKqP8agdHbI2WnrIg3Ma/l92ilRnC37xFWpffMRS8X+ohVdVYBa4XAF4YcaZnE0
 GPg1CoMz4dpqyEzMeXiKyv2c2m6N4CH5VHfEiCcnp4kKFjGWtzpsNmiSxBndLoKdDUibuA0HHTh
 DfEORO5V
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-24_07,2025-09-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 clxscore=1015 suspectscore=0 priorityscore=1501 phishscore=0
 adultscore=0 malwarescore=0 impostorscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509230113
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250924_163327_865549_1116DD1B 
X-CRM114-Status: GOOD (  11.72  )
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

From: Qiang Yu <qiang.yu@oss.qualcomm.com>

On the Qualcomm Kaanapali platform the PCIe host is compatible with the
DWC controller present on the SM8550 platform.

Signed-off-by: Qiang Yu <qiang.yu@oss.qualcomm.com>
Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/pci/qcom,pcie-sm8550.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/pci/qcom,pcie-sm8550.yaml b/Documentation/devicetree/bindings/pci/qcom,pcie-sm8550.yaml
index 38b561e23c1f..8f02a2fa6d6e 100644
--- a/Documentation/devicetree/bindings/pci/qcom,pcie-sm8550.yaml
+++ b/Documentation/devicetree/bindings/pci/qcom,pcie-sm8550.yaml
@@ -20,6 +20,7 @@ properties:
       - const: qcom,pcie-sm8550
       - items:
           - enum:
+              - qcom,kaanapali-pcie
               - qcom,sar2130p-pcie
               - qcom,pcie-sm8650
               - qcom,pcie-sm8750

-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
