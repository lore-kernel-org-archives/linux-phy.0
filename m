Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AF906CFA466
	for <linux-phy@archiver.kernel.org>; Mon, 24 Nov 2025 09:27:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SYlLEx8BV2erQrOT3PnX8DuE+B71hjKP8ArhW7bHek8=; b=HCgjwJjadiKLlj
	xAIKuvUEKePORONN5bwl1EjX/+UACuHiYko1LxqlMw2KsPltFc5m+ZHH7nU0pnjHRQOd5WeE9g/OU
	Ld7hHtimXr74ilKfIVvj6Dhfg8Crd8reIEss9y6mslqhYnegJSJN9BDbBWkf3PkIuCLgcjzdQp/3a
	MdRvidhmgjY9zjhBWipK2d6coNiU+NHW85j1fCWdVfDoCvuYdBU0PZ1I5X1TQcHAK+O09Qah3oe4C
	i8sQ/n9WvSpG8q6BY3GI8rtD7MFOVz6gCsWwwXWs2MoHpnjRGYSoNvZUhjHAH300IVSc+SkLsxyN0
	V6Mu4Hcd6JoXBka7t6xQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vNSqo-0000000BLLL-1kEO;
	Mon, 24 Nov 2025 09:27:14 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vNSpm-0000000BLFJ-24u2
	for linux-phy@lists.infradead.org;
	Mon, 24 Nov 2025 09:26:11 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AO89otg1912255
	for <linux-phy@lists.infradead.org>; Mon, 24 Nov 2025 09:26:10 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	NkR5u0Ko85vl+TubCEviuFZl6vNlDg51wIZWE3oBrtw=; b=jsFdks+gOdnsOZLH
	7p0ZT7un7OWYLwUC9X+9t0w1M40HHKCUeXS6MXyWg1kzRmOr5OHaOr34MFq5+3KJ
	lSHF/vH7rBYz59xaoSm7bLp7iGnxm8XvwKVg22pL4KvyoADKa7jROUG57NYHCqzG
	VgFH7Yx6SMOBPHlnZ6h6dCSsrn+d/s6AJnT1C2ZMWEVtu2ryWoKBxc74j0QP4q2D
	YIFUiexdM0YB34zaDDa2Yg7ARTv531PewfpZ0KlktZKFbS5ImlhJW6qh9KBJfvTG
	lBrX2mlOcNyYYcBoAw8im4yE6xJ7/dlRg4C81EV/C9O765MVW30cnRuwdzdgCQW5
	/nH2Mw==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ama099fc7-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 24 Nov 2025 09:26:10 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-2982dec5ccbso93012915ad.3
        for <linux-phy@lists.infradead.org>; Mon, 24 Nov 2025 01:26:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1763976369; x=1764581169; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=NkR5u0Ko85vl+TubCEviuFZl6vNlDg51wIZWE3oBrtw=;
        b=eNwHlUMQGnw/2G3eQMdteBHH/ebqhTvYTa7FVHqnuH21f59ytTpokDlBaJ5E38anNg
         6dDnQLPRFrcEDaxWd1FPcTagNDWtxw8zQKCd//eqWruevnYK+RvQaFambkLbtqm0o8MH
         HyqvmGi0oKU2owAx8xdEorUPkBewhE+PLG5tEC5s7UvPTRLysVPvZh8cZnPrkJeRZmhs
         0NJWdXnv0nmStY3Pn1Td9h1Q6PZOYtEL+zIIV8zFNoUwSYN8Iu2ft2iz4gW6eNABqXg3
         mCRxkkyNbo06bTEvE1bL6I143HruT9uA8tafawekDsZ67j4UGQwZLyxd0wAcg+YJ79fo
         l4aA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763976369; x=1764581169;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=NkR5u0Ko85vl+TubCEviuFZl6vNlDg51wIZWE3oBrtw=;
        b=oKX9pZoMSQS7Ab4aAcXoyD3AAg1KxmTi5TeohpMZOT30ygWi7seTHopeeqYC0uVG6/
         bnSrX2j9hpScRUraSdfxSBi0VomwEGPzNTQDZKQre9RQQHyLeEDsKE95vp4vjVgB9QU6
         A4Z3e5ww51+EnZ64YRYySGAx7C0+/y+6D62HFiBH9Lfo7/o325re9Xcuio3yaCv8ZqGa
         wHY8bpuRv7K4pE7N4Uwt7JhUcWKT+rj4ffRH57FzyBLsaKyaZXf5F2rh/4aU0D4ioPt6
         EPWFCwOFbb3GsKyUuutD9JiYK0YHlLFCOyg/cTB8e9LdjEcsZ+E5I6OBZ8GGxmXJdQTA
         DT9w==
X-Forwarded-Encrypted: i=1; AJvYcCWMmKOhSQQw19ryQSHOxp9vn0toBfFg40vESg41QwEf8CqmuzCEUvUCiHLbtBWm/TyoBF3t0rE8YsQ=@lists.infradead.org
X-Gm-Message-State: AOJu0Yz6BkpwLOyBWJ/cj9yM3c929QuolZTR/UOd4u+HSmQA4WSHPhCq
	m7f45ojCYaRuIqtu+6dSQh8NmwN6ifmdHjaDJsuYkycCDGxnlB52C7WH3fBSVs49KsuoTKnQD4L
	4LrW9Yb0m25Zf6Lnz0W8+htf4jsc2igYH/hvObyyiZjWz5qdwvCEqJbXgJ6/iPkK7CD3EJ4mfZj
	Ts
X-Gm-Gg: ASbGncsK9XfbNhLsGzQYSjRBx4V2vFrniU3IqJz8gXEUO7+zAQHHkkSLyOI1OVbYKLt
	dOYfXU+KN6k/OlqsyQEceOde/7UUXZSb/pfcOQE/iNNyrhWCaKJK4aYlAfIjVnzuY1Q8PL12UWX
	49VRZPchkRKZjsUdEipi3hWcP8zj3/pfCgW5W1PhqQPuFa7Ol2iykLYoRz6UBO+Au+ZITtY/9Ju
	4FMlY3UaJnELQbH5K8QM1ytiufXY6nYGCkcekziVTDl2DZUljBTna2rcPyI6m7zQZqhs2ZSgBhx
	Vlbl/YjgRrdp5epwZB0/lzUPOyPZO8YM7XFXpTy3z2Rb79DrcfNkcovQs3dEYRlcL0G/LuRvu23
	M5Vvu3Cfv9AYB78I8GfH0TqcruRL96a1bb8gUYaE=
X-Received: by 2002:a17:903:2ec8:b0:24e:3cf2:2453 with SMTP id d9443c01a7336-29b6c6f1d7dmr117208475ad.61.1763976369101;
        Mon, 24 Nov 2025 01:26:09 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFL0Aji0TqRSkyUsUgyFYkIRXsgkNDKqDb4CChR/dGgKGO2yJ/tiJxfM1s2zq1jIYw+2WmUXw==
X-Received: by 2002:a17:903:2ec8:b0:24e:3cf2:2453 with SMTP id d9443c01a7336-29b6c6f1d7dmr117208115ad.61.1763976368603;
        Mon, 24 Nov 2025 01:26:08 -0800 (PST)
Received: from hu-mohdayaa-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29b5b29b1c2sm128444675ad.81.2025.11.24.01.26.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 24 Nov 2025 01:26:08 -0800 (PST)
From: Mohd Ayaan Anwar <mohd.anwar@oss.qualcomm.com>
Date: Mon, 24 Nov 2025 14:55:19 +0530
Subject: [PATCH 3/6] arm64: dts: qcom: lemans-ride-common: add additional
 SerDes PHY regulators
MIME-Version: 1.0
Message-Id: <20251124-sgmiieth_serdes_regulator-v1-3-73ae8f9cbe2a@oss.qualcomm.com>
References: <20251124-sgmiieth_serdes_regulator-v1-0-73ae8f9cbe2a@oss.qualcomm.com>
In-Reply-To: <20251124-sgmiieth_serdes_regulator-v1-0-73ae8f9cbe2a@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bartosz Golaszewski <bartosz.golaszewski@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Wasim Nazir <wasim.nazir@oss.qualcomm.com>,
        Mohd Ayaan Anwar <quic_mohdayaa@quicinc.com>,
        Yijie Yang <quic_yijiyang@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Mohd Ayaan Anwar <mohd.anwar@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1763976350; l=914;
 i=mohd.anwar@oss.qualcomm.com; s=20250907; h=from:subject:message-id;
 bh=oAMGitWIAgfVFPtosAScIxBCMBHgKBga2T/t+cTzfqE=;
 b=V9wP2UHoUmX59aIYgCIuhLtnMyt9fWYCXBzo8KcQrxxZuoik44ltwreFE4ro7M6T89N88ERZq
 n+R6EJVabgvAnwcr14sPpCtygPr/PDQbidvUO5nZgAzo9UgQILYQ7tK
X-Developer-Key: i=mohd.anwar@oss.qualcomm.com; a=ed25519;
 pk=7JNY72mz7r6hQstsamPYlUbLhQ5+W64pY4LgfSh9DJU=
X-Proofpoint-ORIG-GUID: o-oY1t7SWuIZGFGdS2UAXl4xDIllCU3g
X-Authority-Analysis: v=2.4 cv=PdHyRyhd c=1 sm=1 tr=0 ts=692424b2 cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=WayAn9FBvrSidyY0FQcA:9
 a=QEXdDO2ut3YA:10 a=1OuFwYUASf3TG4hYMiVC:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTI0MDA4MiBTYWx0ZWRfX7jIT4Lcjnyf2
 RiMGCBnBm0zZyjNUYeSRi7S/5A8EzfTBtLLayCm9Ir0OetqJLZhHsj9eXHkW7zJMldWMHYO5Kfs
 La3qWDcZGdgb5bmcDLLsfhel+yUv8BTpMUA2hVh9Iuiqqkl5ebHSpqZCRN3+2QQCp3Xi+SXM/3k
 Y3r6sNOu1hapLwacTGIm+Ti65+nAxKjQwAUvAFqSegz20oLG+lKdBJWBPIkDTmoXyrLAAd5t0HM
 m+i/oaXesdYnYdK+gllAQmpN6R/zU3ep/+y5XyZNwdL6eNATWrIxyH3Gc1jVLvYDXneGXXEbTZg
 lEgQKd506mt/gIzJvzm6Mlb3fj9wijvi3yFUiWHi4WwGZS377lvvjRdDCQ/SiN5Bpgxi6mg16Gr
 RfEjm84B3QfjqVNT4jhrC6FNcFzaLw==
X-Proofpoint-GUID: o-oY1t7SWuIZGFGdS2UAXl4xDIllCU3g
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-24_04,2025-11-21_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 bulkscore=0 spamscore=0 suspectscore=0 malwarescore=0
 clxscore=1011 priorityscore=1501 phishscore=0 lowpriorityscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511240082
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251124_012610_542769_D027C7FC 
X-CRM114-Status: GOOD (  10.90  )
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

Add the additional 0.9V regulators for both of the Qualcomm SerDes PHYs.

Fixes: 5ef26fb8b3ed ("arm64: dts: qcom: sa8775p-ride: enable the SerDes PHY")
Signed-off-by: Mohd Ayaan Anwar <mohd.anwar@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/lemans-ride-common.dtsi | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/lemans-ride-common.dtsi b/arch/arm64/boot/dts/qcom/lemans-ride-common.dtsi
index c69aa2f41ce29f9f841cc6e6651a8efc38690e19..17b5e79036161212f60e9f1f728c1af2448d1b4e 100644
--- a/arch/arm64/boot/dts/qcom/lemans-ride-common.dtsi
+++ b/arch/arm64/boot/dts/qcom/lemans-ride-common.dtsi
@@ -779,11 +779,15 @@ &qup_uart17_rx {
 
 &serdes0 {
 	phy-supply = <&vreg_l5a>;
+	vdda-0p9-supply = <&vreg_l4a>;
+
 	status = "okay";
 };
 
 &serdes1 {
 	phy-supply = <&vreg_l5a>;
+	vdda-0p9-supply = <&vreg_l4a>;
+
 	status = "okay";
 };
 

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
