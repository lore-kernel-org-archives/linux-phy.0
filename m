Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 206B010ED674
	for <linux-phy@archiver.kernel.org>; Fri, 27 Mar 2026 14:38:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=W0ENOJ3EvRYRYlPe4RMiq90nsejznas3gV3BKNktQxQ=; b=eA+sJwzKwetXzL
	ZiRA1DGlP+dDjNNlGc8z8UuB0mbTiU6GKqJKzjJgyl4EbcYpsN0uR2JKfU3f8sZa4TVTDJOl4VEmO
	jphb052sSQV6Rd5GJuw0X9r1+jg6NzDU2e3BnYJ82tYa6QQQqaUQHjT/nuSo7bVQw0rlbiuBrPHlv
	yAJndcJJoF+BLr1/fvlRePZLhNBEOGHcclNSKBnXLSi/6JR6sHdY6G0zk0XSwRIXpplNh899AtJwS
	W+iVA3Djy2815HuptHCfrHr+Y2XwwJPubE1nRFCcjr3N/UDRzfG9ivhaxOxWn9bo8h27HwfSyjgX8
	ZZUtV7NgpoFomHue3QwQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w68KI-00000007cl8-32uR;
	Fri, 27 Mar 2026 14:38:18 +0000
Received: from mail-wr1-x430.google.com ([2a00:1450:4864:20::430])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w68KG-00000007ckV-0HyE
	for linux-phy@lists.infradead.org;
	Fri, 27 Mar 2026 14:38:17 +0000
Received: by mail-wr1-x430.google.com with SMTP id ffacd0b85a97d-439c6fc2910so1519697f8f.0
        for <linux-phy@lists.infradead.org>; Fri, 27 Mar 2026 07:38:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1774622294; x=1775227094; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=x0Jo0aFxcF9Ybb4MoHJTFDiEvjw/5Yz1myZV3Vc0n1c=;
        b=tzbuDnburWW1DLAwDOJAafB4CSbd96EcxbGlAdAr8nbMtmRK2loM/wSlBYH4caCL+H
         dPJJF0hjw+M4qpJSuJKQLYKMcFKYtGB4dtVExhg9+mBqqjeXAVMf6QHuuQXmc2twE1OO
         7eQYgcSlu7Q1BMcyXEtq30F47U1dMQal7eF2VCDZ4JKuGRdXqb+RMeldkXk9W9jcnGld
         j5qE1MwTxIL8prMAJTHg8v+xh/fM4Q+P3pFmVq2k9IqNRRGXdQpkiKJb/uYVtVSQc3nh
         zayYPhtQpTg+5wQW0vXjH2DyKGi1q1BUCfW6sA1muk0Ap+luExoOtnW7D1QsVFZIxwvq
         SURg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1774622294; x=1775227094;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=x0Jo0aFxcF9Ybb4MoHJTFDiEvjw/5Yz1myZV3Vc0n1c=;
        b=rUTW7JkcqYHWiG6tcRkh4IX7QsITA9qnwwNXroA6B2ZRSA/urp+yUAlA73HKu/eXkB
         xh2nIl1A2e4hwJ5A8Sm36Kktq0t53IjmlljCqSc5WQ+jsLSTxyKc5j2jKolLpn02gbO8
         1tMYMtp1l97ayPvLhwjysVYM7IUqoTeCTIsg+CSuVVpkB01k4Waw/pQPOqmFXf/zY4Xi
         BHx+o6Vcm9FsAQ64KWsOxBtEQz5EBLCY95WtNh2rZuKh8xuHoxCMrn0fn6H7DTG0UIc6
         LwF4vyL/dC0UhR1ax6quDWSOm0NrT7qgik9PEHsKd3PrECQCtliQvyYd/m/Qs5sfjZmZ
         Kv5w==
X-Forwarded-Encrypted: i=1; AJvYcCX2vlSh2TndREMOQJdHR8hF+42Zxmr5Oedmx1VTIegikivOLM4jhPU/Zf+C+xy/bFXzp50abq0cdHk=@lists.infradead.org
X-Gm-Message-State: AOJu0Yz6Yak6HAJlccXBUH/uPCIMVMrixlBYjhCwGY2Lst9y1xMvwyg7
	u5jPbeFUeQ+Vjye/T7pbB1RJ5XbBenJtQvjQ+FNtlfo0RLu7K8KVnu1KvkwFZI8DiW0=
X-Gm-Gg: ATEYQzyBYICMP2oOKdNqM8mOIHO29vIjOLxhTlClDjaxR8mS9Td85L86taP7PLN+pb2
	BpbS9kiKzbqQG2YnTyV7TZNULFQvhWQqJ3AvJYNbM6zmQasBa83QB0b2OhMoNW3DaY7if0SRREB
	dsrZwYom2QtsGKM4qIn8HyPbjdET3sylLcpRN4QMhNoarWbixqEwSJnHQqICk0H/kum8onQmXt+
	snwx4Idi7oW2kpczYLLXpjLTX8OZzxXOaYI5l3dTIvOxlS6j6yKmWrrKMRXe1h+PtIY2/t1IrBx
	Re9EsRQRJaxuFV7fNX2z5RCi7HRtA4ImjMdRWyYhu/Sn5Z3U2jbgeUWKP81wpFfzvM0bg8pa796
	lk+r3naRt9RaTJvYQdugsEhaPc25xsGEDIS8dLlUjB6dg3rtZx1q7DT2UXylmn2GAGmiMJV5661
	nvxb6TQ9+lxghYTdy4dA4V3hVarOzDMTb/P4r/
X-Received: by 2002:a05:6000:1ac8:b0:43b:8858:1146 with SMTP id ffacd0b85a97d-43b9e9fad6dmr4533166f8f.41.1774622294053;
        Fri, 27 Mar 2026 07:38:14 -0700 (PDT)
Received: from [192.168.0.167] ([78.152.214.161])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43b919df7dcsm16761200f8f.27.2026.03.27.07.38.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 27 Mar 2026 07:38:13 -0700 (PDT)
Message-ID: <da3ed78d-fb5e-4820-95d6-527d540cf03e@linaro.org>
Date: Fri, 27 Mar 2026 14:38:12 +0000
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 1/2] dt-bindings: phy: qcom: Add CSI2 C-PHY/DPHY schema
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Neil Armstrong <neil.armstrong@linaro.org>
Cc: Bryan O'Donoghue <bod@kernel.org>,
 Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-media@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20260326-x1e-csi2-phy-v5-0-0c0fc7f5c01b@linaro.org>
 <20260326-x1e-csi2-phy-v5-1-0c0fc7f5c01b@linaro.org>
 <7712fbdd-a225-49f0-aeb9-ebcbb9d5abac@oss.qualcomm.com>
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Content-Language: en-US
In-Reply-To: <7712fbdd-a225-49f0-aeb9-ebcbb9d5abac@oss.qualcomm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260327_073816_143663_8AA32A5B 
X-CRM114-Status: GOOD (  19.09  )
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

On 27/03/2026 10:07, Konrad Dybcio wrote:
> On 3/26/26 2:04 AM, Bryan O'Donoghue wrote:
>> Add a base schema initially compatible with x1e80100 to describe MIPI CSI2
>> PHY devices.
>>
>> The hardware can support both CPHY, DPHY and a special split-mode DPHY. We
>> capture those modes as:
>>
>> - PHY_QCOM_CSI2_MODE_DPHY
>> - PHY_QCOM_CSI2_MODE_CPHY
>> - PHY_QCOM_CSI2_MODE_SPLIT_DPHY
> Does the_PHY_ DT node need to be aware about this upfront?

Yeah that's a fair question.

The standard model is to pass the mode via binding right now. You 
_could_ configure it @ run time in principle.

And you could even conceive of a sensor hardware that might find value 
in that - but IMO it's a 100% hypothetical use-case - you'd basically 
need an FPGA that could output CPHY, DPHY or for some reason SPLIT_MODE 
DPHY.

But that's a pretty off the wall use-case to hypothesize. Split-mode 
OTOH is a board-level physical reality which => a DT description not a 
runtime choice.

> If we have some sideband signal (e.g. the sensor driver specifically
> requesting C-PHY mode), we can simply throw all this complexity into
> phy_mode + phy_configure_opts, all at runtime

Like I say its conceivable but IMO not a real thing and unless your 
sensor is an FPGA not possible to support in real hardware.

> Further, the combo/split mode may possibly be selected through
> aggregation of requests.
> 
> The question remains whether the sensor should have a direct connection to
> the PHY itself (i.e. phys = <&csiphyN> or of_graph straight into the PHY)
> or whether it's going to be translated by the camss node (which would be
> the one holding a PHY reference) - there's probably surface for adding such
> negotiation logic in both places

To be frankly honest you can make an argument for it either way. However 
my honestly held position is analysing other upstream implementations 
connecting to the PHY means we can't make the PHY device a drivers/phy 
device - it would have to be a V4L2 device and then for me the question 
is why is that even required ?

The model we have right now, right or wrong is sensor endpoint to 
controller. Similarly the <&phy MODE_GOES_HERE> is a pattern Rob Herring 
suggested and IMO is a consistent pattern we should aim for upstream. We 
see it in latest Rockchip, Cadence.


> Note this is a question and I'm not aware of all the possible combinations
> 
> Konrad


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
