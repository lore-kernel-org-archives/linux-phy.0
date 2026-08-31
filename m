Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2A947C61DD3
	for <linux-phy@archiver.kernel.org>; Mon, 31 Aug 2026 07:26:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+HYtOFkC7ybGF7dMlI9c0w97bojC/urlERANg4+s9is=; b=KGYnOJhfYjx8+b
	TlsQfyaXGLF7svuprSKsuVKy4S+nzapKnxc5K3v0jANj6/nu/1mJROR2zOf4gcudRZRyyAPeuZ+NK
	Y9ILNl/+lPcUDtCUzbjUeUjhoD0kuts75vUs1dTjBKpCRp+OKSwSa+mnzrV57PCEb1J+KYKOWJmpL
	XNY3F83GkdT22bIrjDYZ+ry5zPJ5N7qk1EfMfxavPZ3IFtAIFdIjKLMomsPdRrgptyc89563imndR
	yQSE8PQggfPb92CdvhPtkdn7jDEqQXpXUe5d2nb0stRb/zkvqYwSCMacrK1SedVZfpyDcsTfLUOqf
	7q8t2+fJ8pOE/pDfnrjA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x0wPO-00000008iwL-3gih;
	Mon, 31 Aug 2026 07:26:22 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x0wPK-00000008iux-48KP
	for linux-phy@lists.infradead.org;
	Mon, 31 Aug 2026 07:26:21 +0000
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 67V75hFj3542917
	for <linux-phy@lists.infradead.org>; Mon, 31 Aug 2026 07:26:18 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	6FR5VWdYyPP97YYCxGcdgj/3+qyFVzAQu966AQXL308=; b=UeuqUghMBsSlqmP+
	uaXpdMJRQC0JDgdfrWW9nuEFJ+mgEzV8QJOmkn/mgY86tdj369iS8g+nkiOga+dW
	snU0f/UBNPfgRIRowvgwMuNkw0vdcRlChXrTRaGDwxPff5asfZLck4v0K1gJgrUh
	lCJvr7t64LkstypJ0lTDvVb1qsVqFN/rTk37nkm2/hGsIXdyYRJtDW5rtQbj9XUZ
	MVN3InalaQtJvrjj2ZOWe6s3uYnucC4WB1ZruSIhgGNaqjMOmvGL0E+FJnceKKyK
	fTmgjcKGczk/oHwdwlgSL+BsDDsuyPvJZdOrStzL0WmMEFbpFvjqkdJmiXUkSDTD
	NpAaeA==
Received: from mail-pj1-f69.google.com (mail-pj1-f69.google.com [209.85.216.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4gd4x082p5-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 31 Aug 2026 07:26:18 +0000 (GMT)
Received: by mail-pj1-f69.google.com with SMTP id 98e67ed59e1d1-38f5ac7416eso4331951a91.3
        for <linux-phy@lists.infradead.org>; Mon, 31 Aug 2026 00:26:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1788161178; x=1788765978; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=6FR5VWdYyPP97YYCxGcdgj/3+qyFVzAQu966AQXL308=;
        b=bkWOe0VodqB1XSO64xbw7QCPdHxrPGnKc2eQtDBXO8FAjCzGBk5ft2rRNIGnG1LyFj
         fgzqbkYhi+dVL4I2hH8d51T01enDSpx8NGXku5xVKjbJy1O+wpw5hpPxIs+ymoZ33EpD
         22vRRSD7ZtBdgNknNOMybHqUwWNjzH26zhip/znvg/4cJPNt2rznfI6pUM+YrR4nsLvk
         nlxItRQOEnRriAnzMvD6jD3ktUFMQsucUI5P8D02cHk3QB2a8vQ0FmJCTbdIb/wW7srY
         fF5Lp1mtqlwq7HCPoF8w3PpikvA7crN+WP4wSlx3Sk7EpZW/moBCS1S7wPh+orTsGtE8
         64dg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788161178; x=1788765978;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=6FR5VWdYyPP97YYCxGcdgj/3+qyFVzAQu966AQXL308=;
        b=Xags0f0TvbGTusc9pwQydm5O4FZehX6/stjL4WaYS65YU82ZSIp55KUptXrIOjkuDN
         bMEk8exVn3G2OTTFdjYjXH8DXJx9yZ3QObjqyWpt9N9fkymfcL4W3EMeLb/30svpa0fc
         3zHvij5fZptNFv7sznkN3i3yOq9g3ZQTVV2/tmOZ3P0eXfxlv9EB4Snp0NQVnpPo+tJS
         C6olbMToXeOtGQ4jB/KwxGSHnUi78HnXHI1BNuwhcfUzXM1YxlfDJ36p6hYFh4F36rvW
         1QyVDxrsxO5hM9x3gKJXU8lCChT2jMQOSC+6PmN8o5QuhKJtyZlTDx4ld5SD3AstgrhS
         KDmg==
X-Forwarded-Encrypted: i=1; AKwUvBzOchBP+aaBvODchi4L6COhr1o8R2hyUJ0HPXbFFzhNwIQm8hcehywINRRrd+hiMqc+rQ4oXLBT6+8=@lists.infradead.org
X-Gm-Message-State: AFuF++mKC4tH7CCPZDEgMpjrtgrnioz0r4vSbRlNir7uYcfigoEBqgUS
	TwpgE8MvonLKWrSWHutOhXUaExTG+dW+b6vL4ork3/xBxOdKhoRLBfZIgIQTW+joCwdptux3Vp1
	7voTUxzK1PDe+urqoYMaQwWRMAwOq5GEUy+BKW9/lAR2nU5eEfsx7AdWd1KmH0VP3jmGQG5V7/v
	EI
X-Gm-Gg: AYBFou1qz3D0kvFvxnodW9tt92jThpq7OakFkSY9aoILA/7yEaVL+3iaUO7uolCCVVC
	cY+apX1B6r65g6CKfgbdvAQ2yC6oa6z9G+GBGBUHvuvj1cHgHVT/mGKNipNCxgbSPQebhyMiBeY
	Qkl2jQbwpfn16p9S54ippYMDajj/O2+hpnqrJw7SACdySur40h6qqKjn/dVjR5fc3jOBgCPrdi3
	pCKrKvkRiJYO18jFakUCWE51c/eGW/YcVT33EgLm4R3/I192CGSXPG0Sc9CiE5AnphMF95f9GvE
	XrrXh16Tr8VwflAM1QFnUUAH5AXW4xMioGzLWvs/c/NuIlIkxCwUl/SXtcyWDq79espdkAR9jKK
	W9gBASQ2pmok1ACNpgGX3TmsgmioHkQW6eS2c
X-Received: by 2002:a17:90b:538e:b0:38e:c232:9d3f with SMTP id 98e67ed59e1d1-396d0e20f00mr39218631a91.5.1788161177757;
        Mon, 31 Aug 2026 00:26:17 -0700 (PDT)
X-Received: by 2002:a17:90b:538e:b0:38e:c232:9d3f with SMTP id 98e67ed59e1d1-396d0e20f00mr39218563a91.5.1788161177311;
        Mon, 31 Aug 2026 00:26:17 -0700 (PDT)
Received: from hu-sushruts-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-3286f9595bbsm31327059eec.14.2026.08.31.00.26.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 31 Aug 2026 00:26:16 -0700 (PDT)
From: Sushrut Shree Trivedi <sushrut.trivedi@oss.qualcomm.com>
Date: Mon, 31 Aug 2026 12:56:01 +0530
Subject: [PATCH v2 1/5] dt-bindings: phy: sc8280xp-qmp-pcie: Document
 Shikra PCIe phy
MIME-Version: 1.0
Message-Id: <20260831-shikra-upstream-v2-1-406661d75afa@oss.qualcomm.com>
References: <20260831-shikra-upstream-v2-0-406661d75afa@oss.qualcomm.com>
In-Reply-To: <20260831-shikra-upstream-v2-0-406661d75afa@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Helgaas <bhelgaas@google.com>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>,
        Bartosz Golaszewski <brgl@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-pci@vger.kernel.org,
        Sushrut Shree Trivedi <sushrut.trivedi@oss.qualcomm.com>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1788161164; l=1298;
 i=sushrut.trivedi@oss.qualcomm.com; s=20251127; h=from:subject:message-id;
 bh=Idyt7VPiLOMUneagHN9PxugOsJessHhJSGZC2obkP8E=;
 b=Afp4er87SYR4UN6qgzu7q7JgcYyKFGUWxXYEngUg1Vyuf9jT+hcvLmpPB3DdNO4CY1P8fIq7E
 u1rd3gw6+FkAftA6Wkj+JrJZlae1Ejx/nditm3eyklqmkkUbVCWeP+X
X-Developer-Key: i=sushrut.trivedi@oss.qualcomm.com; a=ed25519;
 pk=OrUHTxBaSg1oY3CtCictJ5A4bDMNLRZS1S+QfD9pdjw=
X-Proofpoint-Spam-Info: AW1haW4tMjYwODMxMDA2MiBTYWx0ZWRfXyjPJ0UZB84Cc
 TShoO9f/u3MMDJM/6wiNhpalN8SxC/XFfSsbNtpLL6qoFi+ssj7ij0e8gds0A/syWFeakwuKP6D
 SSQ4WD75ptNE+Cq4n8Mm/atL2vitqWw=
X-Proofpoint-ORIG-GUID: _qllRrk1F3kbBAoUSpRp7BMZURsXJahD
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwODMxMDA2MiBTYWx0ZWRfX29e0nvBhZ9YF
 DSbhuPKAZSRQvi3QD+ZGjnGaVkU1yiJhXgaqWFRDxfdzfV9dGPqdoutLwTaxIS8ELPq35Y7tkqk
 MA6TKEVOFfHF4uJv3ac3CW+Jk8q7khBYP/jip3Lc6JS8VCvOg9MBi+cwAv1R/AELik+DpYFCSdA
 U63niGsjxVftjNT8HdB6uHcyanGtvq7DrfZpjzphvxMahCWmEx2XT30jWVA4Sh4JQrrc6tOufKY
 5lFOPXTbNf/2WNI9Wg8gxItUhLr98+PWNnyvLi1L2Lmg7FJGdFjWfiE236cE0+Wnqu8vLsWn0+q
 EZYWeSbdNP3L7UGdeoti1lVTSKhPABWpc/b6FnAx9z/QvPKv7jWbIEOD1O8z32ZrxGYprNu/BYH
 m4eYnhzqAE+6ofrHhlVaD3+eC9OBRZGqz85Jr9aJWoKjGvSFHqqe4zFiFJN8zRr7rQ4jj5A/XQH
 IR5wSVgLyc/l9aCkSOg==
X-Authority-Analysis: v=2.4 cv=Iqsutr/g c=1 sm=1 tr=0 ts=6a952c9a cx=c_pps
 a=vVfyC5vLCtgYJKYeQD43oA==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=Sv0fKeRqtYgA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=Um2Pa8k9VHT-vaBCBUpS:22
 a=EUspDBNiAAAA:8 a=EF49ANZLUTmcXe5zpi4A:9 a=QEXdDO2ut3YA:10
 a=rl5im9kqc5Lf4LNbBjHf:22
X-Proofpoint-GUID: _qllRrk1F3kbBAoUSpRp7BMZURsXJahD
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-08-31_02,2026-08-27_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 priorityscore=1501 spamscore=0 malwarescore=0 adultscore=0
 lowpriorityscore=0 impostorscore=0 phishscore=0 suspectscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2608310062
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260831_002619_034454_85F16098 
X-CRM114-Status: GOOD (  10.54  )
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

Document the compatible of the Shikra PCIe phy which supports
Gen2x1.

Signed-off-by: Sushrut Shree Trivedi <sushrut.trivedi@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
index 108cf9dc86ea..b9b0fa26347b 100644
--- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
@@ -34,6 +34,7 @@ properties:
       - qcom,sdm845-qmp-pcie-phy
       - qcom,sdx55-qmp-pcie-phy
       - qcom,sdx65-qmp-gen4x2-pcie-phy
+      - qcom,shikra-qmp-gen2x1-pcie-phy
       - qcom,sm8150-qmp-gen3x1-pcie-phy
       - qcom,sm8150-qmp-gen3x2-pcie-phy
       - qcom,sm8250-qmp-gen3x1-pcie-phy
@@ -166,6 +167,7 @@ allOf:
               - qcom,sdm845-qhp-pcie-phy
               - qcom,sdm845-qmp-pcie-phy
               - qcom,sdx55-qmp-pcie-phy
+              - qcom,shikra-qmp-gen2x1-pcie-phy
               - qcom,sm8150-qmp-gen3x1-pcie-phy
               - qcom,sm8150-qmp-gen3x2-pcie-phy
               - qcom,sm8250-qmp-gen3x1-pcie-phy

-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
