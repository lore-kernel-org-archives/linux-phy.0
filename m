Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 34FD3C44515
	for <linux-phy@archiver.kernel.org>; Mon, 20 Jul 2026 03:26:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hoh6Si6HaGWOPs1B/wEXp1UKsw3YflIFk6Gmstfkcss=; b=YMmhJNq/Hq3ZNP
	/ToLPachs4Qfm/1YuAn7v6V+oU8Wlpg3a1E16141LsXoJQJ82SSXsY7xONYUaJG+xlyc570GZr7H6
	g9SfBrbO6toeOHj9UmOA+vAiOjtFNKwHEVpjCh8Pe/9ZeO4HecVyDBKOOjyMVNWU+0lKJEavDQGpw
	QgmMoVaGLoBaOxYEpnwfodTmFpPjPRjbo8tfKqguK13qqxhrJTRBrDKvu2wzdJ/AD6r/vUug0ac6M
	1mKR6qFZqLf6Ic7EXCu1XwR3snM6uYeastuQHzUxVtkbdidsYg3Hr8g+uLBcYuTunHnRYzmWpA8zd
	IjYTqJ00hmfLVy+qgiMw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wleeE-00000005lOX-3pK4;
	Mon, 20 Jul 2026 03:26:30 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wleeC-00000005lNx-04ly
	for linux-phy@lists.infradead.org;
	Mon, 20 Jul 2026 03:26:29 +0000
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 66JNscf5756417
	for <linux-phy@lists.infradead.org>; Mon, 20 Jul 2026 03:26:25 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=J1/0UtaiBX/1DoCXYvIidJBk
	J2ZdMphY/nvZ/j3Jj90=; b=bkrS8KveYwu3eF9uOHyZAnlesyFMH3FEZNTNBMbr
	7Yd6GuZrTNNNvrPj87hNjLPT9rtKSGBQsepZ8d7SeZMxjvtcuPke7u/SUa+KQJDj
	ZLsRA8AvCBt3ysEHdMcDHGwLPsbs7QGyGD0dHuth9KDyfRp0YuJtagF2WXgj7Eu0
	CdNvN4JQLEKMrcx2yXNUM7yPK0v4/5Up1sTXYliOnFcN340dGGpZludzQ/ovbppG
	VuanEobvFhuZq+2c34HFwz9K7XMhmdPi66P2dP4doLquz5VL7QU/FFZPVdNSIu4R
	ZGiEfpaYEDqUaVWRM7GLLRoS3eKq5z9GltOc5hsoCF4HKQ==
Received: from mail-pj1-f69.google.com (mail-pj1-f69.google.com [209.85.216.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4fg2bnm4yv-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 20 Jul 2026 03:26:25 +0000 (GMT)
Received: by mail-pj1-f69.google.com with SMTP id 98e67ed59e1d1-38e5a616d07so1765918a91.2
        for <linux-phy@lists.infradead.org>; Sun, 19 Jul 2026 20:26:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1784517984; x=1785122784; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=J1/0UtaiBX/1DoCXYvIidJBkJ2ZdMphY/nvZ/j3Jj90=;
        b=bFTmENWdBHH1YAvuQ9T1qEJ4hxjw+XMnyNbAiAisd8XgbOmuDrDqdX7IuFojpYBmU0
         qjwx7x5TojLHLnF2dilXRXwh6F+3hseuXMmXZMKGSXlXDhwLZp3k5+Ct1IZyiOvLTdCr
         ad5TIOBqxYRlbS1vlLCbAiVGSTRhHHEmZvqfeblQ007YOnqQ1iyRqIjjpTuf/4DGmT1f
         LC08nxZUuq0DWPZzyRI+nhPeMt8SUdAL5S4iLUiYugHL4wKK37j9/3TgpcDNV2f6uyj5
         17iYEETj5dmZkkyfXJnHTW1lKB62N12O/zyEOA2eMzcdx1s50FYduAs7qKGi1ArD3HCk
         UgTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784517984; x=1785122784;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=J1/0UtaiBX/1DoCXYvIidJBkJ2ZdMphY/nvZ/j3Jj90=;
        b=Hm/4P3x3C35bX84ZhBTibhy2FuEuI7vkfy8n+ZGIO41FlsNtuawME4q1SNrTAokcIF
         AvNy88ZTt8ml0DgjGEWWA4dzmHr/WmjecHckeyfwqAx2+YE7UyJQIY2TFkTewgutafJC
         +7xEscJSSzH8bRNJTxHGepEfz9DYNl3bFtL//iYJKXyN4z7xEvDVAdsEaVmAF0pEnzam
         SYOyVuob1NpjtpE2MxcXdpKWyVrkW7y6G5MDGMXOsKQzxGxChov3olXvMKPTM8XlmEHN
         EDcYq9TPyF8XXgMtMjiQlM58YV9dDMNBjseFnxoFMGtyPzucksb1Q9A39taIIebWfPOl
         AZYA==
X-Forwarded-Encrypted: i=1; AHgh+Rp9m6ho859ninPi8C6G0TUFKQjZXmM5OFL406sUHA2njso86A2WXo9ekG9m2z4WsIQEO9qNPTV1rlM=@lists.infradead.org
X-Gm-Message-State: AOJu0Yyb3IERuxXIWcvlQiMr4/v9vtyvBr7LXZbqoE4x5tN9mAtCttTB
	6M1EWNioG2Nx0OiJ5nJqvFqbCiLMaWN+bRObN1H18Y8/xUAycDeyqIrObLKutJs7JPKkwoGS9Qj
	XjBBe2L3M3aLoahZpvU/j5+y1VXQ0dtZ5U4XXcAiIrZkK23yW4mEqom+hgPrDYjF4ioMu
X-Gm-Gg: AfdE7cm/1D9Svyd+ChzMShhavecVkc2KNuhIKLNK5scirkQYOqlcrmrSK1WI839Xa8i
	7++alqilCfbN0ONoYdi97EOBxKBvf3kip3MvOjpzAPtXB2oKI3JlCCoqwvKtuuwxFjZldApDXKf
	siVtOXDqVhKT5jtgxVwfPrTJNIcDafVK5/srRJ/DPNUOGqZOSJB6HO6CL5mZDCWRhWVYI7TwTZv
	Y/VKpWPd2hNDJxuEbb0bDWH5pd0aNETVSVc8X6OZ4ljD22mi4WtNVFhYryCMD/wT7m1Zv4qEQw3
	n0drbd7JImAygYYX0ehsVnLjRo//98Nmvna3IvW+NVx3AGHXoP3cVn0Wb73f9zH/i58ioxS4Ler
	zEUINTHKcgXLghZfdWP/mJkHNk8Mrw+UzkwtuD3bdsRbrX2E=
X-Received: by 2002:a05:6300:95:b0:3c3:6928:8b25 with SMTP id adf61e73a8af0-3c3ad7a2edbmr13286554637.17.1784517984259;
        Sun, 19 Jul 2026 20:26:24 -0700 (PDT)
X-Received: by 2002:a05:6300:95:b0:3c3:6928:8b25 with SMTP id adf61e73a8af0-3c3ad7a2edbmr13286516637.17.1784517983711;
        Sun, 19 Jul 2026 20:26:23 -0700 (PDT)
Received: from hu-qianyu-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-13ce2cbb6e8sm24577287c88.9.2026.07.19.20.26.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 19 Jul 2026 20:26:23 -0700 (PDT)
Date: Sun, 19 Jul 2026 20:26:21 -0700
From: Qiang Yu <qiang.yu@oss.qualcomm.com>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH v5 1/3] dt-bindings: phy: qcom: Add Glymur QMP PCIe
 multiple link-mode PHY
Message-ID: <al2VXQo8rxzD3+gp@hu-qianyu-lv.qualcomm.com>
References: <20260717-glymur_linkmode_0717-v5-0-4f9e87a61463@oss.qualcomm.com>
 <20260717-glymur_linkmode_0717-v5-1-4f9e87a61463@oss.qualcomm.com>
 <20260719-sloppy-cornflower-hippo-8212e2@quoll>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260719-sloppy-cornflower-hippo-8212e2@quoll>
X-Proofpoint-GUID: pNJ0x68q1qGgg8YdunESswDp_xHCTrqM
X-Proofpoint-ORIG-GUID: pNJ0x68q1qGgg8YdunESswDp_xHCTrqM
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzIwMDAzNSBTYWx0ZWRfXwAQTrrZec/k6
 gfUfcUevugm9hvP0Ug8os45UGV9UsWzRGRm1krDO4iO4vCVlBNIh/zAxNxh+VvcFVNiXdeyAYY+
 UPXJtJiz5J44V+oEAH4P1zOQoUTvDFKYpLiAvg7EL2hDxU1mZFGV8rWLKHF2dj1KqQIY+3njedl
 BE2iFM0h0jB0w4n7rUKAR0hQEale5iuXEZsHNqRYbAyqabeN2GVdbURtKz8RG8MXdPYEOCw0+SZ
 wLUuVL/pfZ8q3VY6qA2mtW/Vb67Qq4Mp9E7WwynkEOObhfFOS42vgo7QvAQA05InCVFGNtTOL08
 r4ZHMnODmKHiFAppGkPQQOQVAw0yBy4lc0MQtvRvWrsX8f+0rfzSd2Wc/LM3ZROhxWSDBTnDMaf
 6fweSXjz9znn/cvxtsW9JUcfHdAqm+kj/92cVxgx6lwJevcWP1wUZI7okfNzrQVhzROpbUfKAL4
 nmNwyJdEImHjcJ8W06Q==
X-Proofpoint-Spam-Info: AW1haW4tMjYwNzIwMDAzNSBTYWx0ZWRfX1x+cydawhFHD
 UYbwEUeplBnbjT0xe0RGDmqtvi7xXg1mTpLuT+gagm+8QV6YQcttPqSXfwbYb/jPj3GRzSiJgt2
 bQRx/oYDp4uZSoGTLpRR3eqGZxBO3Qg=
X-Authority-Analysis: v=2.4 cv=YsQ/gYYX c=1 sm=1 tr=0 ts=6a5d9561 cx=c_pps
 a=vVfyC5vLCtgYJKYeQD43oA==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=kj9zAlcOel0A:10 a=RAioF0-LDSMA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=rJkE3RaqiGZ5pbrm-msn:22
 a=gEfo2CItAAAA:8 a=EUspDBNiAAAA:8 a=wwrPcLtxz8NjKbA9DiMA:9 a=CjuIK1q_8ugA:10
 a=rl5im9kqc5Lf4LNbBjHf:22 a=sptkURWiP4Gy88Gu7hUp:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-07-19_08,2026-07-17_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 priorityscore=1501 phishscore=0 adultscore=0
 lowpriorityscore=0 suspectscore=0 clxscore=1015 spamscore=0 malwarescore=0
 bulkscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2606150000
 definitions=main-2607200035
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260719_202628_174858_EA642EF9 
X-CRM114-Status: GOOD (  27.84  )
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

On Sun, Jul 19, 2026 at 08:50:00AM +0200, Krzysztof Kozlowski wrote:
> On Fri, Jul 17, 2026 at 02:58:33AM -0700, Qiang Yu wrote:
> > diff --git a/Documentation/devicetree/bindings/phy/qcom,glymur-qmp-pcie-multiphy.yaml b/Documentation/devicetree/bindings/phy/qcom,glymur-qmp-pcie-multiphy.yaml
> > new file mode 100644
> > index 000000000000..73550f77e9b6
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/phy/qcom,glymur-qmp-pcie-multiphy.yaml
> 
> Filename: qcom,glymur-qmp-gen5x8-pcie-phy.yaml
> 
Okay, will rename the file to qcom,glymur-qmp-gen5x8-pcie-phy.yaml.

> > @@ -0,0 +1,176 @@
> > +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/phy/qcom,glymur-qmp-pcie-multiphy.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: Qualcomm QMP PCIe multiple link-mode PHY controller (PCIe, Glymur)
> > +
> > +maintainers:
> > +  - Qiang Yu <qiang.yu@oss.qualcomm.com>
> > +  - Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>
> > +
> > +description: |
> > +  The Glymur SoC uses a single PCIe Gen5 PHY hardware block for the
> > +  PCIe3a/PCIe3b controllers. This block supports two link modes, selected
> > +  at runtime via a TCSR syscon register:
> > +
> > +  1. x8 - a single 8-lane PHY instance is exposed (PCIe3a only)
> > +  2. x4+x4 - two independent 4-lane PHY instances are exposed (PCIe3a and
> > +     PCIe3b)
> > +
> > +  The node always describes both PHY instances ("port a" and "port b"),
> > +  regardless of which link mode is active on the board.
> > +
> > +properties:
> > +  compatible:
> > +    enum:
> > +      - qcom,glymur-qmp-gen5x8-pcie-phy
> > +
> > +  reg:
> > +    minItems: 2
> 
> Dop

Will drop minItems: 2

> 
> > +    maxItems: 2
> > +
> > +  reg-names:
> > +    items:
> > +      - const: port_a
> > +      - const: port_b
> > +
> > +  clocks:
> > +    minItems: 10
> 
> Drop
>

Will drop minItems: 10

> > +    maxItems: 10
> > +
> > +  clock-names:
> > +    items:
> > +      - const: aux
> > +      - const: cfg_ahb
> > +      - const: ref
> > +      - const: rchng
> > +      - const: pipe
> > +      - const: phy_b_aux
> > +      - const: cfg_ahb_b
> > +      - const: rchng_b
> > +      - const: pipe_b
> > +      - const: pipediv2_b
> > +
> > +  power-domains:
> > +    minItems: 2
> 
> Drop

Will drop minItems: 2

> 
> > +    maxItems: 2
> > +
> > +  power-domain-names:
> > +    items:
> > +      - const: phy_a_gdsc
> 
> port_a

Will rename it to port_a.

> 
> > +      - const: phy_b_gdsc
> 
> port_b

Will rename it to port_b.

> 
> > +
> > +  resets:
> > +    minItems: 4
> 
> Drop

Will drop minItems: 4

> 
> > +    maxItems: 4
> > +
> > +  reset-names:
> > +    items:
> > +      - const: phy_a
> 
> port_a

Will rename it to port_a.

> 
> > +      - const: phy_a_nocsr
> 
> port_a_nocsr
> 
> etc.

Will rename them to port_a_nocsr, port_b and port_b_nocsr.

> 
> > +      - const: phy_b
> > +      - const: phy_b_nocsr
> > +
> > +  vdda-phy-supply: true
> > +
> > +  vdda-pll-supply: true
> > +
> > +  vdda-refgen0p9-supply: true
> > +
> > +  vdda-refgen1p2-supply: true
> > +
> > +  qcom,link-mode:
> > +    description:
> > +      Reference to a register in the TCSR syscon that reports the link
> > +      mode the PCIe PHY is currently configured for, either a single x8
> > +      link or two independent x4 links. The link mode is programmed by
> > +      firmware before Linux boots; this property is only used to read
> > +      the active link mode, specified as a phandle to the syscon and
> > +      the register offset.
> > +    $ref: /schemas/types.yaml#/definitions/phandle-array
> > +    items:
> > +      - items:
> > +          - description: phandle of TCSR syscon
> > +          - description: offset of link mode register
> > +
> > +  "#clock-cells":
> > +    const: 1
> > +
> > +  clock-output-names:
> > +    items:
> > +      - description: Name of the PHY A pipe clock output.
> > +      - description: Name of the PHY B pipe clock output.
> > +
> > +  "#phy-cells":
> > +    const: 1
> 
> You should explain in description the meaning of cell value. Or provide
> filename of header with constants.
>
Okay, will add a description explaining the cell value in the next
version:

"#phy-cells":
  const: 1
  description:
    The cell is the index of the sub-PHY within the active link
    mode, e.g. on Glymur, 0 for "port a" and 1 for "port b" in
    x4x4 mode, and only index 0 (the single wide PHY) is valid in
    x8 mode.

> > +
> > +required:
> > +  - compatible
> > +  - reg
> > +  - reg-names
> > +  - clocks
> > +  - clock-names
> > +  - power-domains
> > +  - power-domain-names
> > +  - resets
> > +  - reset-names
> > +  - vdda-phy-supply
> > +  - vdda-pll-supply
> > +  - vdda-refgen0p9-supply
> > +  - vdda-refgen1p2-supply
> > +  - qcom,link-mode
> > +  - "#clock-cells"
> > +  - clock-output-names
> > +  - "#phy-cells"
> > +
> > +additionalProperties: false
> > +
> > +examples:
> > +  - |
> > +    #include <dt-bindings/clock/qcom,glymur-gcc.h>
> > +    #include <dt-bindings/clock/qcom,glymur-tcsr.h>
> > +
> > +    pcie3_phy: phy@f00000 {
> 
> Drop unused label.
>

Will drop the unused "pcie3_phy:" label from the example.

> The old 5x4 glymur compatible could be deprecated as well, but fine for
> me without doing so.
>

The old 5x4 glymur compatible is also required by PCIe5 PHY, so I'll leave
it as-is.

- Qiang Yu

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
