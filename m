Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 67251CCF2D6
	for <linux-phy@archiver.kernel.org>; Mon, 19 Oct 2026 09:25:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+INP6K+vEevDZq+0WVyCrRRLtME5YdOnq//WddMpAA4=; b=jNtovzItQcg7T0
	aiLWC+MswjSVsM7l3OP4VQwZsAtCU7ZHpzALwy09Sln2De9piGIyt14sBMo3SVLwHoNkrUdRv46bg
	2cPet3R/eoUv5ub3au9pTSKMV5zD12SvDahAS0wBT2fL5TklKDa5O/M0pC787xKRFA79stzcL8uVf
	3seBwAa3sA7biMLON7sZH2NAfmIMi/dmuViqejxEoc3nHHgyaxHtTpDRNCATUUJh/v2VGIDXfNGgo
	AXzELrrhpWS7WI6tEhaq8i4ycNeFZy6540jrxyPTSF644P+m1j2P9zP6Vu6Vm7HRmK8bYzyMsE5ei
	v4Krc58fqHJyRknVZa7A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xIjck-00000006zfz-0NQJ;
	Mon, 19 Oct 2026 09:25:42 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xIjci-00000006ze2-0QgF
	for linux-phy@lists.infradead.org;
	Mon, 19 Oct 2026 09:25:41 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 69J8OxP71168075
	for <linux-phy@lists.infradead.org>; Mon, 19 Oct 2026 09:25:39 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	M16eCydctTBsxx4X2Yc0HeC0QuajReVm95RWjvQ7sNs=; b=mqO9ppiyfnFBXPOH
	8fCdmJOAlWbT/IuRkfFgT0LXN1O4BFSUWo/ZInA0Os92X20CNnTlg2SIYfajjwYC
	jpGXq/4psNhzh091LCtzuKg9RQII+QcV+fhHZeO+bUMHboonR/xojjJkw7KlTDiz
	dGSuQPMYmIw2AI8vpCAeDQnczQ5cIPschIZB4Esr5p0aaCJbeHcoYgnps7HuVfwk
	qNSzkq39UVsoq5EM1CXp9EMcht66NZrAJl4H7HZ2434Qu6MZAiKRQDBmcLGnNBzA
	f+QyH8+jjbCWDrtK6YadPt1/ArOFxMTOfMsqZpkxd3QpIrYZygXoEO2ieGRBE3uO
	b7kcPg==
Received: from mail-dl1-f69.google.com (mail-dl1-f69.google.com [74.125.82.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hdf5c8c72-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 19 Oct 2026 09:25:39 +0000 (GMT)
Received: by mail-dl1-f69.google.com with SMTP id a92af1059eb24-154e9d2d94fso2768966c88.0
        for <linux-phy@lists.infradead.org>; Mon, 19 Oct 2026 02:25:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1792401938; x=1793006738; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=M16eCydctTBsxx4X2Yc0HeC0QuajReVm95RWjvQ7sNs=;
        b=I9xxYdBXCUc29xZnkjn+CnV1mXDxkO7+BrtsbaNBG0TXDATJdRcpnpfQPd9gM5CdJS
         IMGrFc7GQDHeOfZ7scbraLOx9D38SYiTQTTnA8t9IQ5kJzVceYeCvxT/aRhQIvOP96hF
         ZNwAek6Ld/zbHfMlwn+K8+9SC56lH+YrpXJRC8rMeH1nTeCcHOqmnbNE4cfObIdVzTbk
         2n5gh0WmRJ3rl/ktATvmf/7TPAjSBwpBC0yYJTthS+6zlaIVn9Np8saO2IR2iEQnR0aq
         nq+u/zRKw3Y2wI1bXU4G4VEB/VmX9tDnrhT1cnZyZPy1Kmrj/IDfpR+apkCK6LpDYyJQ
         W3pQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792401938; x=1793006738;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=M16eCydctTBsxx4X2Yc0HeC0QuajReVm95RWjvQ7sNs=;
        b=C6Cfzxmnt2CrZDhdxCjQGSvuDKPEin+2LJ2tpo8FhyGle9cWseg4ByjhlY6n2d2P4A
         p7yUJT9ttsk8gQ58tKI2oGrxr8ztSPeg3UqC7RpgNnzALloTnQ/ygd/+VUhrRrExctow
         9MgyQ+OoWxeff4lku3kQyvj+4o70NFkE2YaUo9rJpmIYxPjO/3Bns3RUWNf2he+vm8A9
         y9S4A3J14XzvOAbgQaBpZY2u2BH926ljgdwLlhJx6GDm1z8chwyz9lZw6srpCjOgMAtZ
         CbF2/PJ2a1cu3zBaY4QdIv/gS4o3JuYKkZXDc5jxN4JF9x9juqqPyST5qnODceeNW9HL
         pD0w==
X-Forwarded-Encrypted: i=1; AKwUvBx9bMuE38y2BeUqylC2swYARCMqLw+vaDDvt/Af2iVV3IYEnKC8zSZ4OBYrB9+9wqyFFYcl+E/Ioog=@lists.infradead.org
X-Gm-Message-State: AFq9FYIT/5JUNIO8FAhMz4k+4tt7G1ItDDlPhtNmsWKt5CoI2oN2t7Kh
	uyi77jMykmANsGL47jB2UYIKAiYHRtkMDrLTGqs+Kj3opKg1uvteDUfJSnUfuDFlrAuA6QWBjF1
	cxOWzzW7rRwjCAsffEG71jSSZAZ4bS99ECmXllb/E4C5WXKnCkioImp1REx7w7eGaoZtc
X-Gm-Gg: AYBFou0zFb9rWpvuuNdimPqa6mc1db7k2QS8Cj3awWzfwdvJTCP1h8ufRwSNMyNe6/j
	jUO8KzKQEGtiqzfsWqZybIwCV/dGtXMcv7Zn/oOc35YnsNruE/eQZ0QjDcqs7niYjQhVINj5v44
	BeAm1U5G+quILUnsddKc+QwcWzAg0CRgwzrNRTh0ViOeXX2oMjg+HkbMtArxushXtTwuJSzUdeP
	Rl+sqfMY47pyduwntHa3OMLXQHYjMGJ8yUCHBElViO5ho2dbs4LnTXpF5t++DypHVGMPu0kTeXa
	VuJysUTxYhrWc10nGD3zOiF+jONuZvy2ZMxnKWDd+hhzttmKlVVucXH8WEh+g4as4jejWe8MEnp
	yXGC7GkQEX857OzaV86o+iXrs67VQhjQjgw==
X-Received: by 2002:a05:7022:e80a:b0:15b:722b:4bfc with SMTP id a92af1059eb24-18513b99f8fmr14119628c88.31.1792401938007;
        Mon, 19 Oct 2026 02:25:38 -0700 (PDT)
X-Received: by 2002:a05:7022:e80a:b0:15b:722b:4bfc with SMTP id a92af1059eb24-18513b99f8fmr14119568c88.31.1792401937362;
        Mon, 19 Oct 2026 02:25:37 -0700 (PDT)
Received: from hu-krichai-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-1831c4d4675sm26682584c88.21.2026.10.19.02.25.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 19 Oct 2026 02:25:37 -0700 (PDT)
From: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
Date: Mon, 19 Oct 2026 14:55:10 +0530
Subject: [PATCH v2 2/6] dt-bindings: PCI: qcom-ep: Add QCS8300 compatible
MIME-Version: 1.0
Message-Id: <20261019-monaco_ep-v2-2-852cb9f5d012@oss.qualcomm.com>
References: <20261019-monaco_ep-v2-0-852cb9f5d012@oss.qualcomm.com>
In-Reply-To: <20261019-monaco_ep-v2-0-852cb9f5d012@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Helgaas <bhelgaas@google.com>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-pci@vger.kernel.org,
        Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1792401919; l=1064;
 i=krishna.chundru@oss.qualcomm.com; s=20230907; h=from:subject:message-id;
 bh=e+8UUpMKcnPf75LsVbXBo8HtX9Fgl0mPigLSGru5/bA=;
 b=Bs9h4/gScBQ+ICpGxT6UyZSLyD4UgaAYJ7CkTR6oMPjiE5t5vCjr12WRJ+wHfdjNiOmOjiYmf
 Su5PUarPnwEAcBhtsfCOD3YXoKgSnXI14zFwO7v+KrsG9hrk3OHRxkz
X-Developer-Key: i=krishna.chundru@oss.qualcomm.com; a=ed25519;
 pk=10CL2pdAKFyzyOHbfSWHCD0X0my7CXxj8gJScmn1FAg=
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDE5MDAzNyBTYWx0ZWRfXxgpBciWAogS/
 gHsJ4aqEirUnAPVSFQY8U6UEeUcn3zWYjAu2R+1/D2J80a6MNXObPeve142dYY9L7Z6REKu2oIn
 bE6t0Ahsx3NrChVIUW4NKX77eCx9UOQ=
X-Proofpoint-ORIG-GUID: tKHmyh9GQpRtZriczg7sW3InQ3Yq_b77
X-Proofpoint-GUID: tKHmyh9GQpRtZriczg7sW3InQ3Yq_b77
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDE5MDAzNyBTYWx0ZWRfX72qZl9eksmIe
 u0MjheIEaSp+1m6tQ2fBUiltQoHkvY3HqdSfsiRHxpTZRPP2DvvpcN+Wkiwv6dSiHN5g/Meax2j
 DzNHr5nU0Z15SBEDMY10cqyu41UKtlKFV0YHgqUzOASZZCPx5kNLaicFLSR4q2+Nnf4cArsclx2
 vI9FtW/GuysHb5H86j2gH+UKVcModRjCCd2zWFaUJXHqLRZqN9tRrvJTTvUzexkZOadFARWXzYS
 DYMGYHKPYVXuVhaSQ8H7ABEdhPxNrFgrPxgsGFfv5H385FLUZv+UuDF9Fpdn1ypSNkVGaJoQRDP
 fPrpljE2MvqqSPc83xqxLVZBoddQ45cF6spy5o/eXzelAn8bpR2BUdncwbsxqWxyB1UY0up3zg1
 Jm30yhjNOk/FVKxaxjv3DMIp1kYr/ocoAVSc42b5/4yeVFKDdn4siGlBeeyr9RS0E/9r/BwC3S6
 yVCpxoeesjifwxQYaZA==
X-Authority-Analysis: v=2.4 cv=K6O3jCWI c=1 sm=1 tr=0 ts=6ad5e213 cx=c_pps
 a=kVLUcbK0zfr7ocalXnG1qA==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yx91gb_oNiZeI1HMLzn7:22
 a=EUspDBNiAAAA:8 a=AUvBg9Asf6StguVY0UIA:9 a=QEXdDO2ut3YA:10
 a=vr4QvYf-bLy2KjpDp97w:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-10-19_03,2026-10-14_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 lowpriorityscore=0 bulkscore=0 impostorscore=0 malwarescore=0
 adultscore=0 suspectscore=0 clxscore=1015 priorityscore=1501 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2610080000 definitions=main-2610190037
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261019_022540_276307_2A1818E4 
X-CRM114-Status: GOOD (  10.50  )
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

The QCS8300 PCIe Endpoint controller is compatible with the SA8775P
PCIe Endpoint controller and uses the same programming model. Document
the QCS8300 compatible string and its fallback to the SA8775P
compatible.

Signed-off-by: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/pci/qcom,pcie-ep.yaml | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Documentation/devicetree/bindings/pci/qcom,pcie-ep.yaml b/Documentation/devicetree/bindings/pci/qcom,pcie-ep.yaml
index bed9a40b186b..1ed0b97f883c 100644
--- a/Documentation/devicetree/bindings/pci/qcom,pcie-ep.yaml
+++ b/Documentation/devicetree/bindings/pci/qcom,pcie-ep.yaml
@@ -17,6 +17,10 @@ properties:
           - qcom,sar2130p-pcie-ep
           - qcom,sdx55-pcie-ep
           - qcom,sm8450-pcie-ep
+      - items:
+          - enum:
+              - qcom,qcs8300-pcie-ep
+          - const: qcom,sa8775p-pcie-ep
       - items:
           - const: qcom,sdx65-pcie-ep
           - const: qcom,sdx55-pcie-ep

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
