Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 970AFCD37AC
	for <linux-phy@archiver.kernel.org>; Thu, 14 May 2026 03:58:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Tm2VeScCB67lvv7emQv89Cn9lcnQhN+24Zpw8Xx+z14=; b=jEAYiAG7noWuea
	6U7CTvTB6+EM0ErlhSnoqPjTtNhLDxlPK84dfFibEo4yw0yq9z7sxGut8mkLumWQBjGBVfqKKtwDq
	S1TvYKe8wQ4yEA0OHXahGrrZ/LcyXMdaGBE95VNc+kwSIFWM6JCHYx2mTu9+qbWUtEtTmYvf+fUHO
	6ejbVGW+n21gBoQiQHlGbxHAovP8p7oZzvxNRY0RwYIAinMObcHEevzB4vdH4eXdb9AP/jDoiPeRF
	lj0dpTY54gyCR1xgj1iJ+6PtzQ392B9Be69xQR4rUG64rWM5MBxMHP4Y4yvgD0twMpt/DirdDfROj
	JlzDFOYhEM1qOmnR1MrQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wNNDh-00000004Upj-08o6;
	Thu, 14 May 2026 03:58:45 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wNNDc-00000004UoI-17JB
	for linux-phy@lists.infradead.org;
	Thu, 14 May 2026 03:58:43 +0000
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 64E3Dfhu1393025
	for <linux-phy@lists.infradead.org>; Thu, 14 May 2026 03:58:40 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	P2Dj87Y4whUJaBzEehE1Tqbo9ydbz/EdWzB0LJkcrAA=; b=jeNdQYfH0Dr6aosI
	w+8eq5kvhizZMj6dBuALXQFIVHUgfB25O4pZfwLuEUHxBKLQAdPGUvUnvxOT9scd
	y91vUhcpPvKBwA7fNd9ryfmEIoi0ADH2kL4fLzSkUKFZduH+vKOdwIR235DbElMr
	53AY0zCHEfWyQjz3tR50Tb0L3dbVPIRNGJfVZP5YNT065kJ9D86fugKJG7HQr6XY
	Wei4AZmrt/hfEf9trg8FWX3VdSET0c76JHhwe04ILCQONC1KVIpLnCaf1X8K0yIi
	E5DObtuM1SCa+oTcfM4aAPHJMo3Od9dYluNa0cEvKvGrgkmav0OKkum3jzNyb5TF
	5DpE8w==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4e4k264qyc-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 14 May 2026 03:58:39 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-2ba718173d1so130335085ad.0
        for <linux-phy@lists.infradead.org>; Wed, 13 May 2026 20:58:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1778731119; x=1779335919; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=P2Dj87Y4whUJaBzEehE1Tqbo9ydbz/EdWzB0LJkcrAA=;
        b=gR0eP46dD26lw5hlgyD/MWqU1Q86sjbc7LL7UIVEhJ3aOrj6Yupcy3Q6Kx78SwP8wq
         PWkT/lzWN5yJB/G85Nzaf5KlqVjDMIEOx1zu0OXb0JzGR/XH3Fv4OdGlFh7CynTaXxYG
         9cONqfynhpQHMXF1Ukqdkkqk/D3159/VXO0f61U4eSXXIOyfc1Y8fMCIfbtxa7d6Guyq
         LVqTAg4N8DhC2YL0MrxJu9ts7MQwB7SXPWewISYHGubmVAZADVQq4iZ6WINX4z19MRXj
         mR8S+ZV3OFBAFqAKE4YqRSn3t0DB3DYM2sl4v4fLjhdoJjSaZoZUvHDUYQIXXTjINAPS
         uPpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1778731119; x=1779335919;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=P2Dj87Y4whUJaBzEehE1Tqbo9ydbz/EdWzB0LJkcrAA=;
        b=tGNWY9v7v8r0sRsb7N0FkqHbeGGGCIBvXNMiPLgu0yNTNWZBPzaa92GtgtY/g00FZX
         W1O3xZPb7k8BkCzNYyR3SFA8TDYTZF7lfXp4rg8ubyZ98uDWTwbslABKtkycqf7rJthM
         WwR84h5ori857SMxGHkocBPrBXYGglEi2A+9FyqldzQkmdH1bQa+7Xa6UHMybR6ugKsw
         N9IjGXwQ+XBoIea2oehvgCOCt4L34oGxlPiuGeIkGQLkty2rOuSyfR/GzhMqOHCEM6cv
         /Z2OqbeNWv93JBeO9nCVrU/Xt9aUPq4E28N7plgILzFWpbokYjO5Xik1O+H0fyFQW+el
         OGtw==
X-Forwarded-Encrypted: i=1; AFNElJ/DTkV8p2ptKSDlEQhT9w53brJh4TIAY3BhbVv4mZlHs6pAOhF6HpS96O3Yqd+tVEv132Zn4JzIhTo=@lists.infradead.org
X-Gm-Message-State: AOJu0YxnYSrmVLTvC1wsSpR1PA2Zkuv7zKCEO5s3KJxGeZAAamKUZU6v
	fRa3d+oOhrBwhdQYl2nL9yRIgO+r/gQ8Bj6t0dTb6ktOtMs3El3R66saOwTcIsfKeLe9JLbjEhf
	ic/WH2n0mrShEw9GJsCn7W4D9aPbHqilgtT1g7SQ+U26JTw18bymFcFxswJiZMkcINk3w
X-Gm-Gg: Acq92OH3qGpVJb8RwF+RpfW7j2DhHmKobMlmW/Tt1nfzeHiYPdPki2qgtjKPnJbnyrJ
	dkp5N0ueWQUBQ/x8wDtLuOYo/nIlG72QA07aoETnHp6tLXXO1qzHzBtb4Cy+IyI6Snlpg5WlX6Q
	CQi54ROLI48DJpWt39uiBubf2cpDgKLyHtvMpxf/k9WL0IA8mMpbJPh5rs+ck/rjA7qirG1+ZCr
	VZ8ci7NqXlSUpj3fLb9CHBkJ+HPEE7r7bw3VRG/F+nt4E2CdXIZdKevJGBm71Fv5YQMZZbkSl+s
	sPpsv3hgVsA2sp7pgE0k5s2LVp5res3BWPJJiFEQJfenHRBQdkh/b+QHvxCGCud4+A8TzJm7oeM
	q98KXgbD6nHU51HXjZjI9/44HGG+GSfztNdncW75sknccP37JYqlwBHZrzYvn3QT3dDOoZq8XPP
	Hs5G4edSm/G5OmtNqNPK+4ZTLY5QH4dXCC1FDAWU8/p1FawC4kQFot6yd8Xhle2g==
X-Received: by 2002:a17:903:2284:b0:2ae:55eb:f82d with SMTP id d9443c01a7336-2bd2f4f700amr59619805ad.1.1778731119178;
        Wed, 13 May 2026 20:58:39 -0700 (PDT)
X-Received: by 2002:a17:903:2284:b0:2ae:55eb:f82d with SMTP id d9443c01a7336-2bd2f4f700amr59619695ad.1.1778731118741;
        Wed, 13 May 2026 20:58:38 -0700 (PDT)
Received: from hu-varada-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2bd5bd5fe44sm8313965ad.11.2026.05.13.20.58.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 13 May 2026 20:58:38 -0700 (PDT)
From: Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>
Date: Thu, 14 May 2026 09:28:28 +0530
Subject: [PATCH 1/2] dt-bindings: phy: qcom,ipq8074-qmp-pcie: Document the
 ipq5210 QMP PCIe PHY
MIME-Version: 1.0
Message-Id: <20260514-pci-phy-v1-1-482429192746@oss.qualcomm.com>
References: <20260514-pci-phy-v1-0-482429192746@oss.qualcomm.com>
In-Reply-To: <20260514-pci-phy-v1-0-482429192746@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Authority-Analysis: v=2.4 cv=M/l97Sws c=1 sm=1 tr=0 ts=6a05486f cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=IkcTkHD0fZMA:10 a=NGcC8JguVDcA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=YMgV9FUhrdKAYTUUvYB2:22
 a=EUspDBNiAAAA:8 a=WUYZBL7PiKyslTlvAlEA:9 a=QEXdDO2ut3YA:10
 a=GvdueXVYPmCkWapjIL-Q:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNTE0MDAzNiBTYWx0ZWRfX65o60ykCUWBA
 SA0FXNuCMLEttz05BWvCkWjV2mEBjfAAdXF1xOvNYuBUadzYczCu5m+/jeWS9a09shcNKYpM9Lm
 pHVeBvr+Pyy8mlTGtNfKs+3qd0kHusXwccmdgU2S+RLZDY531EEYq//FscarupBKzDZuyiK+s/8
 DtOdND+nxpDGuqfj5zXfFzHPejmzbEGC9UNmQQ82fXm2JRNrWqKu5OQQRor9YuTsCuQosKuNzER
 X2sijjXrZUKIA3kdaKuVIqqeceqYqGJceGnavTr8BoiSU7sm0MTq+Ct1G8nCLqaM89Cl7Oba0+P
 yYsSn5UPkf7MmFJEn4bCdcrg5OT/hSWuVs93I8gpc+V7ifOsT2ZSEUF1al0w6EzVfs5CD8hLcHC
 3AtVkL/56T+UwkerQQ4M1crY0OR6CmgFdRUPDK+vuUm009Qj58oC/zG+N6kzFi4R8fjrHp8dGAN
 h65aWw+Q0G2fqsaRsUA==
X-Proofpoint-ORIG-GUID: CH68rsX8KHWc7YRjCYp8iEawf6nHytLQ
X-Proofpoint-GUID: CH68rsX8KHWc7YRjCYp8iEawf6nHytLQ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-05-14_01,2026-05-13_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 clxscore=1015 impostorscore=0 malwarescore=0 suspectscore=0
 spamscore=0 phishscore=0 lowpriorityscore=0 priorityscore=1501 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2605050000 definitions=main-2605140036
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260513_205841_036048_09E9BDA7 
X-CRM114-Status: GOOD (  10.87  )
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

Document the PCIe phy on the ipq5210 platform using the ipq9574 bindings
as a fallback, since the PCIe phy on the ipq5210 is similar to ipq9574.

Signed-off-by: Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/phy/qcom,ipq8074-qmp-pcie-phy.yaml | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,ipq8074-qmp-pcie-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,ipq8074-qmp-pcie-phy.yaml
index f60804687412..1ac31439c20a 100644
--- a/Documentation/devicetree/bindings/phy/qcom,ipq8074-qmp-pcie-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,ipq8074-qmp-pcie-phy.yaml
@@ -17,6 +17,7 @@ properties:
   compatible:
     oneOf:
       - enum:
+          - qcom,ipq5210-qmp-gen3x1-pcie-phy
           - qcom,ipq6018-qmp-pcie-phy
           - qcom,ipq8074-qmp-gen3-pcie-phy
           - qcom,ipq8074-qmp-pcie-phy
@@ -24,10 +25,12 @@ properties:
           - qcom,ipq9574-qmp-gen3x2-pcie-phy
       - items:
           - enum:
+              - qcom,ipq5210-qmp-gen3x1-pcie-phy
               - qcom,ipq5424-qmp-gen3x1-pcie-phy
           - const: qcom,ipq9574-qmp-gen3x1-pcie-phy
       - items:
           - enum:
+              - qcom,ipq5210-qmp-gen3x2-pcie-phy
               - qcom,ipq5424-qmp-gen3x2-pcie-phy
           - const: qcom,ipq9574-qmp-gen3x2-pcie-phy
 

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
