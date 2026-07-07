Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6429CC43458
	for <linux-phy@archiver.kernel.org>; Tue,  7 Jul 2026 05:29:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zGwHeBSK2YT+yAI/kmJwK/CUq168yvlNMcfUxy8dPQc=; b=chTPIy+ks5xV54
	pO+rKYyUbsvdpOQ08/nGDCF5tjsjsQDnfMzHXdCwItFNQmtJ7LIRT/sOKxsuokvTvQOWus6r9vMfF
	KTfNQ/AiU+RJakncrqHDe4k8IRUlgobw/IkBLMsXCBiTrQ4gIMfKqJV7m2EHDg7faj+trHPnevDr4
	hbfaO+11778fg8Xb6Z/MV9zUfywNROAq8jWZm1NaZvVlPYWTnOH4Zf+jln183UkpN3EeZFvKHbrBY
	FAjJrQ4Huke4QHlctJMyDhxL40NLfQ5c7c/1qR+gRGpZG1ior9kRZN9l2fbtxUADoYxp2Gv1qmAtI
	+UYAjKnAJc6ofBM8fcGQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wgyMy-0000000E7zb-3g9A;
	Tue, 07 Jul 2026 05:29:20 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wgyMw-0000000E7zB-2fTl
	for linux-phy@lists.infradead.org;
	Tue, 07 Jul 2026 05:29:20 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 667497Vg2498908
	for <linux-phy@lists.infradead.org>; Tue, 7 Jul 2026 05:29:17 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	qSXgz44N/WMvteS7u/WYSdLO9UdWbYIO4z2GI2oG19Y=; b=dEfxmN9Cbmv54USE
	ywSrvt9W0ReGbJ+ymdVKuLj2r0IdTFaIP3KedI6YAPPSfGu+RDw1Jki2Rsw3TsCf
	q/XQTkDuEJsznxGBuvrr+NG/enZb9g4RVRChSK8friFDC1Vr7VuebTWfCP07wE9e
	oK6Qe0yg0duLP8jkZwa/58XpmBlCzcpsL1dSn4++muNjFjVqrCsqOsKuWj0AkPxy
	swd6EBpFlTAZHzfmVQ0P578GcDjNv0MVw0sp7UQtGkOG2BgqtUXMlDok2i4swHLx
	+4hr0m34sEUxy5lilKZVv+rHuqmcoNgZM7q+nOXMu289cfyDCwephq2IDNUpg1CH
	eemdyw==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4f88hscr55-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 07 Jul 2026 05:29:17 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-2cac01e89e3so6601665ad.0
        for <linux-phy@lists.infradead.org>; Mon, 06 Jul 2026 22:29:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1783402156; x=1784006956; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=qSXgz44N/WMvteS7u/WYSdLO9UdWbYIO4z2GI2oG19Y=;
        b=jr8X3Zf4wlq/QkVsNJ6zokOZaNKSYXUIA1UgRWwWg2CytrziOaMtBIAtfKrgLbY1Po
         x8FREtaFIewy4PXUYSC59+NMj494nSzo6/ndLaFVjXj9U/jZSLMKXD1w9ddlVoyYZPxK
         PA7cETmU/91GOrd52kPmd7jg+U9+mTBUL10YHBVlRaQ2Jhm22N//jG/j0YaU1+QfIk0m
         qVDSUgkKlTEi3stDVZHcIpRlhB2g1/R3vYHVkFOoUaKj9WyNdN1TdU71G7R02/ItWzUP
         MeBl/tsY+epd3DbMAFdxFxsYoG5qPcaQKO5TwBfLHNJrSxnZ6lKc3YlgDlgau6x/oCQn
         F27Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783402156; x=1784006956;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=qSXgz44N/WMvteS7u/WYSdLO9UdWbYIO4z2GI2oG19Y=;
        b=DG+JenrQf2WFPFxyzRVMI3Hy1cICv8cxhWBMoTYpgpggFJ74ELhwFbPFQeNOS11HrD
         XdVTlsWoZXHOHK3Wt4KQ2+dA3pB/iJVT5yyhxtCbQqXAbs+7J8Gh2WbmqhiGBpKitvqK
         xFk7qbCCRLm8NQ/YFXGBPTuJzxaLTkwPHz8A6zBbd1uR0lm9MXJjneW+P16NyXoeX6DS
         Ve5w9delGdXXqgfDkxtlqILuln97KaL2k3mLDovzioC2/QRkqwGN+wPNHY3tQaAMaQdA
         amNr3j0IgFB1DGbxI/6Vm98kXXRIDAzKV5PWWOzZUWhLY+ACuMyAAyPPBLsugvGJNJVa
         /3dQ==
X-Forwarded-Encrypted: i=1; AHgh+RpiAz5FKQrv8bv7i0Otwf4OfGOcnXCbRXIb51asuUSfpvxaob+x2HkZZkliKZfBWNAvFfWLKCRcmHE=@lists.infradead.org
X-Gm-Message-State: AOJu0Yz0od9AScB1zH2gb5CzCo6vhjSBeGUZqDJN9nRGs1Gcm4p9VRw7
	QcGLb8qIZp5y8xhWgQUj5TVILU6OjtUBzvptx8WB4Kwv0ueoIZW1jggLYpLXLkb6LKezMeXrBPE
	PhVd87FoNaE4TSg/TjQV4BlghumUgsmcMAbQm8jDHBx5UiqQMTmlbjGiy2LVRZlVNut9r
X-Gm-Gg: AfdE7cmT9jG0jNyxuOMwOnLPv4+QSn0UTa3HseVlW5w2qsKeUjxBcgdH57LTEB1BWqp
	cSycE8Xv2PtDZ2qJYwBBgUG4ajpTVgLHzGjT1o7unTHknnN0KHVFZgz/ny1IAM5ZXnOeiBfr4bF
	Rev17abns1xKIYbixzOILGM+6l/HygH0EuSv7FxOR+SVW+ujBY7VYoxLmFCQNoKpXwe3zWkpDHp
	KN4VuO2RsfPtM3uT986M3nar+hAGecOQyMY8EuyEFe5omxHIyF1qcYgk3qtzLq/ds9bZ2IZTq1t
	8oFuwKljp4yi02k1J04j+DllLfGkCbcpAGB6VfyW33YO9sk46kYa8RtUViLw6UA7hwFLY/Vr2ue
	1JC6OFdDyzWW1rIwO/o1pD/b/k+j+i/MgTZa3VEHJAG6O8WIOcFQJQOBm4MT4TShFlcOEAsDvJI
	WcH6zG
X-Received: by 2002:a17:903:2a90:b0:2ca:12aa:a390 with SMTP id d9443c01a7336-2ccca5a26a9mr13454445ad.0.1783402156379;
        Mon, 06 Jul 2026 22:29:16 -0700 (PDT)
X-Received: by 2002:a17:903:2a90:b0:2ca:12aa:a390 with SMTP id d9443c01a7336-2ccca5a26a9mr13454215ad.0.1783402155879;
        Mon, 06 Jul 2026 22:29:15 -0700 (PDT)
Received: from ?IPV6:2405:201:c409:b03f:6d0b:bb83:7a67:4093? ([2405:201:c409:b03f:6d0b:bb83:7a67:4093])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2ccc9d3bc2asm5077475ad.69.2026.07.06.22.29.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 06 Jul 2026 22:29:15 -0700 (PDT)
Message-ID: <5e941fd8-e40e-454e-bc54-2c9a2bce0d19@oss.qualcomm.com>
Date: Tue, 7 Jul 2026 10:59:08 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/9] dt-bindings: PCI: qcom: Document the Shikra PCIe
 Controller
To: Krzysztof Kozlowski <krzk@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bjorn Helgaas <bhelgaas@google.com>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>,
        Bartosz Golaszewski <brgl@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-pci@vger.kernel.org
References: <20260701-shikra-upstream-v1-0-e1a721eb8943@oss.qualcomm.com>
 <20260701-shikra-upstream-v1-2-e1a721eb8943@oss.qualcomm.com>
 <dd9e68f3-c33d-47d1-871f-f085550b88b1@kernel.org>
Content-Language: en-US
From: Sushrut Shree Trivedi <sushrut.trivedi@oss.qualcomm.com>
In-Reply-To: <dd9e68f3-c33d-47d1-871f-f085550b88b1@kernel.org>
X-Proofpoint-ORIG-GUID: gBD4moCoMl1nurw4Utz7yjLyj8Ll7PPv
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzA3MDA0OSBTYWx0ZWRfX0XTNtfRWLzX4
 a6EqgJ/P0NkOAHpGJTbzulhscFatTgW2owBXxXjfoUBhjhQa8V+6ehuljX7nkdVGgNZC2R8uuiT
 M6/nRO+A9UpW0PMxiUPUBnX4RHj5DxGrNEa/RXzpfbh89mV2TGv8stTBlI7eySuxSdTX4IQBcgM
 bGs6w9DoV4SH36J5BpmU8jGn7rZD4d23q4YPF3jQnJuL78ALsoEacB1AtBRWe9aubt1yArz31Lm
 JyKcooZ+wI1vdiSdLcN/YWDbHza39InG4adLiEJ8xgREg+jzBTK07IQF51t43eiBaygKB3NTqEb
 GjhbNKWHwD7r21HnQBr7ohg1cbPfWNtfUVSnaQO4qKZP6lEd955ra+X/WtM+i9+nXzyazQ/+Rk+
 tEElKSlBZs10tqEuvEpP2FtR5V6grWWRAs54t+4PIQoSGLjmKsxmkP1z4PtNYOHGlXlXf//E+ks
 7QPoAA/RujlU4JJad+g==
X-Proofpoint-Spam-Info: AW1haW4tMjYwNzA3MDA0OSBTYWx0ZWRfX7XfWIAWkqDD6
 Xv67M1p1uLYj2ELVyt1bgxRSq9lA2fqytWdXwb09yUG0vukQEQ7BQ9D/HilTIAKzKHEAF3OJNL3
 SgU1xE0dn78etWvPq0jimbp4DjVhS6g=
X-Authority-Analysis: v=2.4 cv=XIwAjwhE c=1 sm=1 tr=0 ts=6a4c8ead cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=RAioF0-LDSMA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=yx91gb_oNiZeI1HMLzn7:22 a=gEfo2CItAAAA:8
 a=EUspDBNiAAAA:8 a=VwQbUJbxAAAA:8 a=KKAkSRfTAAAA:8 a=m11qq-JmO6Yq1UjM5qYA:9
 a=QEXdDO2ut3YA:10 a=324X-CrmTo6CU4MGRt3R:22 a=sptkURWiP4Gy88Gu7hUp:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-GUID: gBD4moCoMl1nurw4Utz7yjLyj8Ll7PPv
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-07-07_01,2026-07-06_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 clxscore=1015 bulkscore=0 priorityscore=1501 impostorscore=0
 malwarescore=0 lowpriorityscore=0 spamscore=0 phishscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2607070049
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260706_222918_800064_B413B612 
X-CRM114-Status: GOOD (  18.22  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


On 7/1/2026 11:56 AM, Krzysztof Kozlowski wrote:
> On 30/06/2026 21:02, Sushrut Shree Trivedi wrote:
>> Add a dedicated schema for the PCIe controller found on the Shikra
>> platform.
>>
>> Signed-off-by: Sushrut Shree Trivedi <sushrut.trivedi@oss.qualcomm.com>
>> ---
>>   .../devicetree/bindings/pci/qcom,shikra-pcie.yaml  | 211 +++++++++++++++++++++
>>   1 file changed, 211 insertions(+)
>>
>> diff --git a/Documentation/devicetree/bindings/pci/qcom,shikra-pcie.yaml b/Documentation/devicetree/bindings/pci/qcom,shikra-pcie.yaml
>> new file mode 100644
>> index 000000000000..f9d1dba9dd2e
>> --- /dev/null
>> +++ b/Documentation/devicetree/bindings/pci/qcom,shikra-pcie.yaml
>> @@ -0,0 +1,211 @@
>> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
>> +%YAML 1.2
>> +---
>> +$id: http://devicetree.org/schemas/pci/qcom,shikra-pcie.yaml#
>> +$schema: http://devicetree.org/meta-schemas/core.yaml#
>> +
>> +title: Qualcomm Shikra PCI Express Root Complex
>> +
>> +maintainers:
>> +  - Bjorn Andersson <andersson@kernel.org>
>> +  - Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
>> +
>> +description:
>> +  Qualcomm Shikra SoC (and compatible) PCIe root complex controller is based on
>> +  the Synopsys DesignWare PCIe IP.
>> +
>> +properties:
>> +  compatible:
>> +    const: qcom,shikra-pcie
>> +
>> +  reg:
>> +    minItems: 5
>> +    maxItems: 6
> Same comments as other recent Qualcomm bindings. Don't invent stuff,
> take what was reviewed from the list so we won't have to repeat.
>
> ...
ACK'd. Will use latest binding patches as reference in v2.
>
>
>> +          power-domains = <&gcc GCC_PCIE_GDSC>;
>> +
>> +          max-link-speed = <2>;
>> +
>> +          operating-points-v2 = <&pcie_opp_table>;
>> +
>> +          status = "disabled";
> Drop, you never tested the binding in such case.
ACK'd.
>
>> +
>> +          pcie_opp_table: opp-table {
>> +                  compatible = "operating-points-v2";
> Broken indent.
ACK'd.
>
>> +
>> +                  /* GEN 1 x1 */
>> +                  opp-2500000 {
>> +                          opp-hz = /bits/ 64 <2500000>;
>> +                          required-opps = <&rpmpd_opp_nom>;
>> +                          opp-peak-kBps = <250000 1>;
>> +                          opp-level = <1>;
>> +                  };
>> +
>> +                  /* GEN 2 x1 */
>> +                  opp-5000000 {
>> +                          opp-hz = /bits/ 64 <5000000>;
>> +                          required-opps = <&rpmpd_opp_nom>;
>> +                          opp-peak-kBps = <500000 1>;
>> +                          opp-level = <2>;
>> +                  };
>> +          };
>> +        };
>> +    };
>>
>
> Best regards,
> Krzysztof
Sushrut

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
