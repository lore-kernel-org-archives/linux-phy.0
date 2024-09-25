Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E0103C369A1
	for <linux-phy@archiver.kernel.org>; Wed, 25 Sep 2024 07:14:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EULMDZtQMP3Hr55oY5Bca9FHNUpwWM6Db/N1MER0L/E=; b=XesYzlcsIXIZEX
	4abWnCBORW0XNVEolBG1VfAYFEq7d2lH0Katc1pKEdRUi0IGKPtQAePKEnEUyzZrK9H9RfkBEi391
	Kh9u9Z3/yI+jhIQ4onzmZ0IALZkdrJlbB9a1wrcqi/YR2IxxHYoGCHtsBltzncS15NiCHoqWMBdWJ
	oceKCU+Jbk/3ZlDyb819TD5TM3avmleZJgu31U4xslmJEMxzmDVwyG9bGdPkrV9VdPatjXVD26mZq
	zv99OHWweSXasETCbt/t7PhyODVPEvCWrX1vSUxYip/Rp8GCaOKKLuLneHnQ/BCE6CZwkc3pA5onx
	8Q2MhFNpErgBOsuX5zkw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1stMDy-00000004GxK-2X7q;
	Wed, 25 Sep 2024 07:14:10 +0000
Received: from nyc.source.kernel.org ([2604:1380:45d1:ec00::3])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1stMDv-00000004GwD-31cG
	for linux-phy@lists.infradead.org;
	Wed, 25 Sep 2024 07:14:09 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id AB3AFA4395D;
	Wed, 25 Sep 2024 07:13:58 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 67892C4CECD;
	Wed, 25 Sep 2024 07:14:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727248446;
	bh=qJ4TsQ/6sArUbR1U3iecRaZ6CownESjdXqH3GgdPvcs=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=fGqurL4Pj8U8nZs+NSlgdDX3IWw9273x8Mrg51UhRYzx+B5x/tw/FyqGNOhQM7V5y
	 4O4SphPKSGZ2abMaExxrXiwOed/+HyZUewPzvyALMeLbBHTvwCk8K9flSGpsk/cWT5
	 b/q/XJ4n/xRT8NeFeaS9kE4kMdy5i9SoRp++3Xsrd5YTHen3TDJkUwWA5ZdF9YFLkZ
	 kAFGnOvMNpo2RuOPI6Xs1ZJEvZ194lS2gbyYN3nziIIRigHBW2M1VieylwM+dRbO9z
	 jdkoQkyg7P21OGos7k9JTs1xKN2DXrAXq7k/8lD0XjqiTGzfRKQIIy3uJDW81qtydP
	 3Caiur91MlF6w==
Message-ID: <01ea36e7-f4a7-4f1f-9596-3ed6ed13b47b@kernel.org>
Date: Wed, 25 Sep 2024 09:14:00 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2] dt-bindings: phy: Add QMP UFS PHY comptible for
 QCS8300
To: Jingyi Wang <quic_jingyw@quicinc.com>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I
 <kishon@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Xin Liu <quic_liuxin@quicinc.com>
References: <20240911-qcs8300_ufs_phy_binding-v2-1-c801a2d27a84@quicinc.com>
 <ztpetznwid2om6vylyl2boi665ch3wnkprkmzcq6bem6cqhqtf@ogsi657y4kex>
 <6656171b-12d3-490b-b53c-f907b7454f99@quicinc.com>
From: Krzysztof Kozlowski <krzk@kernel.org>
Content-Language: en-US
Autocrypt: addr=krzk@kernel.org; keydata=
 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 fv0=
In-Reply-To: <6656171b-12d3-490b-b53c-f907b7454f99@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240925_001407_924565_8D53D0E2 
X-CRM114-Status: GOOD (  14.25  )
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

On 25/09/2024 05:16, Jingyi Wang wrote:
> 
> 
> On 9/16/2024 10:53 PM, Krzysztof Kozlowski wrote:
>> On Wed, Sep 11, 2024 at 02:56:16PM +0800, Jingyi Wang wrote:
>>> From: Xin Liu <quic_liuxin@quicinc.com>
>>>
>>> Document the QMP UFS PHY compatible for Qualcomm QCS8300 to support
>>> physical layer functionality for UFS found on the SoC. Use fallback to
>>> indicate the compatibility of the QMP UFS PHY on the QCS8300 with that
>>> on the SA8775P.
>>>
>>> Signed-off-by: Xin Liu <quic_liuxin@quicinc.com>
>>> Signed-off-by: Jingyi Wang <quic_jingyw@quicinc.com>
>>> ---
>>> Changes in v2:
>>> - decoupled from the original series.
>>> - Use fallback to indicate compatibility with SA8775P.
>>> - typo fixup
>>> - Link to v1: https://lore.kernel.org/r/20240904-qcs8300_initial_dtsi-v1-0-d0ea9afdc007@quicinc.com
>>> ---
>>>  .../bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml    | 46 ++++++++++++----------
>>>  1 file changed, 26 insertions(+), 20 deletions(-)
>>>
>>> diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml
>>> index f9cfbd0b2de6..626a2039e177 100644
>>> --- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml
>>> +++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml
>>> @@ -15,26 +15,31 @@ description:
>>>  
>>>  properties:
>>>    compatible:
>>> -    enum:
>>> -      - qcom,msm8996-qmp-ufs-phy
>>> -      - qcom,msm8998-qmp-ufs-phy
>>> -      - qcom,sa8775p-qmp-ufs-phy
>>> -      - qcom,sc7180-qmp-ufs-phy
>>> -      - qcom,sc7280-qmp-ufs-phy
>>> -      - qcom,sc8180x-qmp-ufs-phy
>>> -      - qcom,sc8280xp-qmp-ufs-phy
>>> -      - qcom,sdm845-qmp-ufs-phy
>>> -      - qcom,sm6115-qmp-ufs-phy
>>> -      - qcom,sm6125-qmp-ufs-phy
>>> -      - qcom,sm6350-qmp-ufs-phy
>>> -      - qcom,sm7150-qmp-ufs-phy
>>> -      - qcom,sm8150-qmp-ufs-phy
>>> -      - qcom,sm8250-qmp-ufs-phy
>>> -      - qcom,sm8350-qmp-ufs-phy
>>> -      - qcom,sm8450-qmp-ufs-phy
>>> -      - qcom,sm8475-qmp-ufs-phy
>>> -      - qcom,sm8550-qmp-ufs-phy
>>> -      - qcom,sm8650-qmp-ufs-phy
>>> +    oneOf:
>>> +      - items:
>>> +          - enum:
>>> +              - qcom,qcs8300-qmp-ufs-phy
>>> +          - const: qcom,sa8775p-qmp-ufs-phy
>>> +      - enum:
>>> +          - qcom,msm8996-qmp-ufs-phy
>>> +          - qcom,msm8998-qmp-ufs-phy
>>> +          - qcom,sa8775p-qmp-ufs-phy
>>> +          - qcom,sc7180-qmp-ufs-phy
>>> +          - qcom,sc7280-qmp-ufs-phy
>>> +          - qcom,sc8180x-qmp-ufs-phy
>>> +          - qcom,sc8280xp-qmp-ufs-phy
>>> +          - qcom,sdm845-qmp-ufs-phy
>>> +          - qcom,sm6115-qmp-ufs-phy
>>> +          - qcom,sm6125-qmp-ufs-phy
>>> +          - qcom,sm6350-qmp-ufs-phy
>>> +          - qcom,sm7150-qmp-ufs-phy
>>> +          - qcom,sm8150-qmp-ufs-phy
>>> +          - qcom,sm8250-qmp-ufs-phy
>>> +          - qcom,sm8350-qmp-ufs-phy
>>> +          - qcom,sm8450-qmp-ufs-phy
>>> +          - qcom,sm8475-qmp-ufs-phy
>>> +          - qcom,sm8550-qmp-ufs-phy
>>> +          - qcom,sm8650-qmp-ufs-phy
>>>  
>>>    reg:
>>>      maxItems: 1
>>> @@ -85,6 +90,7 @@ allOf:
>>>            contains:
>>>              enum:
>>>                - qcom,msm8998-qmp-ufs-phy
>>> +              - qcom,qcs8300-qmp-ufs-phy
>>
>> Not needed.
>>
> Well noted.
>> BTW, please be sure you organize your patchsets per subsystem. IOW, that
>> you do not split same subsystem bindings patches into separate
>> patchsets.
>>
> Do you mean combine the binding of qmp-ufs-phy with ufs controller? I noticed
> that this patch belongs to "GENERIC PHY FRAMEWORK" subsystem and ufs controller
> binding belongs to "UNIVERSAL FLASH STORAGE HOST CONTROLLER DRIVER". If necessary,
> we can pay attention to combine them next time

No, I mean group patches targeting the same subsystem.

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
