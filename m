Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BBA65E75448
	for <linux-phy@archiver.kernel.org>; Wed, 24 Dec 2025 10:35:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6V3eqTDP8dv+FExq8RqMWjKxq0zuwrn3F12pc2i+FqM=; b=SHaVhJvcXKQLyW
	ja3q16hm/LuhX1X8MmT7n7ktWCbp1bvxgvHaLwkNSwh3D30MK/2isf5rp/HP5CtqgKrQMCIvY6ie0
	k5BrzDMduhRBI6bbo36bRHdz+xYhvy1OnMzqMPrfrPvisTIe4/Hkdvm5rm6KRuMGCL6tEhblUyDn1
	ap85NQ7hLUliwJ0lJ6Sb/B3D7xCmNNyRXt5pjfIpF9tWdjc3yfi4MwNgZ16CJ5Opu8Q6sfev7RS2y
	AS8EbXU7cDJzyb6+bQfBg42y6MwngY1GocKZ7gVowSYvSnU33ZwO4svkgvahURPgyew9lq6Vn4V0m
	tdBzcrE7+o+IHr0PS13g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vYMD7-0000000GhQx-3ff6;
	Wed, 24 Dec 2025 10:35:21 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vYMD5-0000000GhQ5-385Y
	for linux-phy@lists.infradead.org;
	Wed, 24 Dec 2025 10:35:16 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BO9sdZn561247
	for <linux-phy@lists.infradead.org>; Wed, 24 Dec 2025 10:35:14 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	YTxPY3TcxySOfY2Uu61rvScRPeMxccIhMlEzuAx3jSc=; b=CDUoObXEp4U5nRQG
	v4YYMOKj8lxFen4gEOzQC4A1kvJTV6tcPZ3eDpSut3guc2NtVkTft3gC+5u6iJMU
	Up/O7vkOoBKOeRDTx7nDU+Jd4ueQtKzkCpusm5RUxAGPpPhCy0RAdo3bcFfZOAA5
	UI3Ji11gFV8WkFr3SWIYWC1Hlvvdi2hrIM/PqPdC34b1CJu4mP6CGMQoEQtzgL2L
	3IOx5KQf/ik5+ywugpP4322HmcAkpPY2KpTfi1weVpjLnN1y8HgjpO2ztn0Tzxd5
	2iTIuMVmAjdBycxJhmSqoC2Om/HrR4f+T4QhRrD+faU8BGwszymcSfZlpkUhhAN3
	NMPrHQ==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b7u9cu970-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 24 Dec 2025 10:35:14 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4ed69f9ce96so187974821cf.3
        for <linux-phy@lists.infradead.org>; Wed, 24 Dec 2025 02:35:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766572514; x=1767177314; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=YTxPY3TcxySOfY2Uu61rvScRPeMxccIhMlEzuAx3jSc=;
        b=ZaGZaPPILQ6xh2C9JnYA6liSs/QfH8E94pJEFhcW3F3iWmksWLfLVTgV5B97g9KQff
         SypmkZVeJDxZZU95MS0G/JDntrGNbvfyMYRCD/OPC3qdGMxT6FAAy85RermbvkfqetpV
         pXQPR2KUIEA3t+DZazcwb9RH8GoF5zWkJ3+7OZ2zB3cG7ADzHgz9tsELfFOc/pQ7ut+1
         ltxYIBy4Uezkw4l9zSVLF5TPy4KPRGPblpT6KCCKv/RZUTNMb5ufS+tWrKHqUEb4iRCt
         BuONLWQWPc3ecoE2GTZrMZX49UTYNyt3FeaU3e0BVCRjbQrk43lL6EtDOnuNs8/iOzqS
         voHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766572514; x=1767177314;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=YTxPY3TcxySOfY2Uu61rvScRPeMxccIhMlEzuAx3jSc=;
        b=cKN4KkntMq4NAJBaPguRjAddSmtcnXVaa9Rm1L0RTnCjtednzLFc3lhoZ9LUFKEb8v
         5mtymbIhYJ89/8oGdAU9rQPHMIf87g7eg30V9EBbdgxspRErsiW7K7rARaKEH4HxiM1V
         GTHSR+fZRj4UE/F6L+N0BnRMTCOrdghOXM9q+16Zzb8DFKy/DLsK4rNk5lyLa2KolTRz
         ewFAoaQB3yza6FTYTSr61LiueKymxYg2ZhyWX0p3QP+0+mD6RQHTi+ghvTcAwEbU4DJp
         ZA7MgK4+CSH7RxGQRZTuP0W/itjbyYOKaNjezRVZoABCAbxm1xUpe5zx2WzO1nPnl3As
         j0Cw==
X-Forwarded-Encrypted: i=1; AJvYcCWGEb3cFAkHirbtHzN4mCYZlVWBkuUHBeOYgeo7uEO8d8n+/IPCsbRjL7kWvDpRhKmgPdOObnggqzg=@lists.infradead.org
X-Gm-Message-State: AOJu0YyXkqbG29RtTIa95639tNNDfjw/d1f7GTFSXFUykfsLu/e9CMzO
	OYJfQugdHpGRBCmr+GSZeayFSZKtWwcn1S6HaAA70OUVZUiTKWMbZh/UHYztfXv/GONe/bQFlMw
	DLs1pVrqdZvUWDDEYu5vJ1lFSdPywiCfNqr4f2IIjgmfqT53OGAllUT/SvIzKfgESe6d1yTtNfR
	Zw
X-Gm-Gg: AY/fxX6uZQsOZXxW2K/HV/Od4bObFWmuH/R8k+ibslTxLW+A22eecN8x1QAlvL9pUdn
	JygP5p9p0xSz9IH4+a62RuJ17FeiGFbDn8VnTKAAlbID3Sg2Mr08VyzwL0zAVppwwPBpK7FDuvJ
	RiQATNEB5UMWNafR8vBbQe6HRInRSRQ1KHvsPfcQBfFdF4OvOjEs2aF3MZ3hXw+8lD22MPfZbHz
	UX/vyFru/LOcuYsy0qHlQRYXlytpDjMro3g+ZEJVug8dvi4QbYWQIDJ6BGbP2bZ4KWwyLHVpwX/
	+NjfLfriCvFgP2h3AsWrx/swZ1JrJq5RPOmlltrIJXO7Ad7bjJj52fnGSNmbrw7rWOuIPEYsMQ8
	3G+HwGLKIP6w6UWc=
X-Received: by 2002:ac8:5f8c:0:b0:4ee:18eb:feb6 with SMTP id d75a77b69052e-4f4abcb8186mr248179421cf.11.1766572513688;
        Wed, 24 Dec 2025 02:35:13 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHNmGecmYe7lfwQD7aY/ySvDToHZzaHAWpuH7fGMeF6quoYCuVzWNykwPqgKdGOnNGBW7LIpQ==
X-Received: by 2002:ac8:5f8c:0:b0:4ee:18eb:feb6 with SMTP id d75a77b69052e-4f4abcb8186mr248179081cf.11.1766572513153;
        Wed, 24 Dec 2025 02:35:13 -0800 (PST)
Received: from hackbox.lan ([86.121.7.169])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8037ad806asm1729496266b.23.2025.12.24.02.35.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Dec 2025 02:35:12 -0800 (PST)
From: Abel Vesa <abel.vesa@oss.qualcomm.com>
Date: Wed, 24 Dec 2025 12:35:01 +0200
Subject: [PATCH v3 1/2] dt-bindings: phy: sc8280xp-qmp-pcie: Document
 Glymur PCIe Gen4 2-lanes PHY
MIME-Version: 1.0
Message-Id: <20251224-phy-qcom-pcie-add-glymur-v3-1-57396145bc22@oss.qualcomm.com>
References: <20251224-phy-qcom-pcie-add-glymur-v3-0-57396145bc22@oss.qualcomm.com>
In-Reply-To: <20251224-phy-qcom-pcie-add-glymur-v3-0-57396145bc22@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>
Cc: Wenbin Yao <wenbin.yao@oss.qualcomm.com>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Abel Vesa <abel.vesa@linaro.org>,
        Krzysztof Kozlowski <krzk@kernel.org>
X-Mailer: b4 0.15-dev-47773
X-Developer-Signature: v=1; a=openpgp-sha256; l=1541;
 i=abel.vesa@oss.qualcomm.com; h=from:subject:message-id;
 bh=7/wDNM9Wy8eGw1Oyh/WSaTVNuGnrhF08Nu1CqEGz104=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBpS8Hbcot/Ua1hyfW6r8Yb8ukYPY+csfkib1F3B
 vgHPh24oayJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCaUvB2wAKCRAbX0TJAJUV
 Vo+fD/9LqROlkgt1NbNR2JdPoI3T4gu/95gWqUwz6K9HhN9/d8SIrJHgSt7TBtlMPJSPR1Hfamr
 5uHbgKNKImRgcwrL+tfbPPzJ2H81EcJWDyOErxeYkpO2rohCvxtYnIm9c31wgHkoQ5S+n1gy3ua
 19ADzbGS42hR7gEkdSGn7XrI9UgWQqjPbbayhCPZWEv76oVnXKEHePvYir97wtHVZssZMz++GL0
 ZpuEMmbJWRU4wAr3CIWsMnNh9UHTueY/om6AZOtYjLGSylB0RX7rvyFqm8DcH6XVowEmyw/G8o1
 l3B+SnAs1EAAa+/AuhTnkF2SK3sjpTFcJciwol8lFVNGmhBWgaTLZkIN8KACFQ+N37P6HfJypho
 zjTCS5w7hcdi95UDYSJsbgIOifA04NDmvLrhKz/sLhFNxLR9TDsEjES4lLwzYkXMnke7DgopGtS
 dZ3jP4wXw7mijf6yK+g3GSur42aiNjZI5jQYq7m25OG1gkF0VWtP0nIDvcwvvQb33wUrQXP1fKy
 M7ihiKUVugB3Oazx+wzqJ+WhWMpEqHDGQPtLvBnjUCW4vLx8T3U4bvzqjmctIp0rPQIN6c89WFi
 jHXunGNoC4QZwelCN4bKPygcG090v6ly2KCFoyj1LLtBJrbKxBfg0cNO9uW2ahceWEUWhfl/n3O
 +A2ZtRgIqB3H3mw==
X-Developer-Key: i=abel.vesa@oss.qualcomm.com; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE
X-Proofpoint-GUID: mGTuc4nGk7o93fuNqU4-RcpKXtrDXRUL
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjI0MDA5MSBTYWx0ZWRfX7c0mO305hSZO
 BKVxsyD6s9WXffp5sqWsydQ/+Ps5CrwUH7WTZQKLHtUedYOSCv+PWMdWSnbyahdwJgy6DtjZmtu
 q07SRF7J5bjX9Ifs/j8DF7JQxVdhZOk7mjpBjhngGxeW3KttDKbREB/KVq5P6HnFWMJW8Vr31XG
 EePNtUW2JdL9c9nqQDaFdIXvdHJ0vWgq0PUNVCVERODNHGJUMu9W/9qqkivYymPYXc7PSitDbfB
 GHrQdgIKZ0saomz6WL/o5qwu+o5fLyFuXvKUF34z3TkHEptZmDOnYJRyM94rT+YNqawKDe8wVgo
 S/z3gGbgZl6v0kanlHxLG4qiH2sy+0khZ2r5te8AUKlV8m1UjdChF3KEUhJrGOKCA5agxkXeXDw
 Vodck4qjH533H0Cw/XrpOgexZMpJYJaOERK3cm23de8g/bC2k8gEmSGBbBvTQWGJDixKnMyO8n6
 fwO0yH2RumQQBdqN9JQ==
X-Authority-Analysis: v=2.4 cv=HsN72kTS c=1 sm=1 tr=0 ts=694bc1e2 cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=DdBtMnqNxkYIvXj6ev4VzQ==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=KKAkSRfTAAAA:8 a=CzDMsQTYOGAzJB-GoUQA:9
 a=QEXdDO2ut3YA:10 a=a_PwQJl-kcHnX1M80qC6:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-ORIG-GUID: mGTuc4nGk7o93fuNqU4-RcpKXtrDXRUL
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-24_03,2025-12-22_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 lowpriorityscore=0 priorityscore=1501 suspectscore=0
 malwarescore=0 clxscore=1015 adultscore=0 bulkscore=0 phishscore=0
 spamscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2512240091
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251224_023515_926593_7365C666 
X-CRM114-Status: UNSURE (   9.52  )
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

From: Abel Vesa <abel.vesa@linaro.org>

The fourth and sixth PCIe instances on Glymur are both Gen4 2-lane PHY.
So document the compatible.

Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
index b8f3b55efd6e..82316aa5e15f 100644
--- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
@@ -16,6 +16,7 @@ description:
 properties:
   compatible:
     enum:
+      - qcom,glymur-qmp-gen4x2-pcie-phy
       - qcom,glymur-qmp-gen5x4-pcie-phy
       - qcom,kaanapali-qmp-gen3x2-pcie-phy
       - qcom,qcs615-qmp-gen3x1-pcie-phy
@@ -181,6 +182,7 @@ allOf:
         compatible:
           contains:
             enum:
+              - qcom,glymur-qmp-gen4x2-pcie-phy
               - qcom,glymur-qmp-gen5x4-pcie-phy
               - qcom,sa8775p-qmp-gen4x2-pcie-phy
               - qcom,sa8775p-qmp-gen4x4-pcie-phy
@@ -217,6 +219,7 @@ allOf:
         compatible:
           contains:
             enum:
+              - qcom,glymur-qmp-gen4x2-pcie-phy
               - qcom,glymur-qmp-gen5x4-pcie-phy
               - qcom,kaanapali-qmp-gen3x2-pcie-phy
               - qcom,sm8550-qmp-gen4x2-pcie-phy

-- 
2.48.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
