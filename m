Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3B96DC43458
	for <linux-phy@archiver.kernel.org>; Wed,  1 Jul 2026 23:38:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Mvyo/hWJ0LehFssCA+Y2PLD7HgbHvko7/c6SWBYqtHY=; b=dozkuC7VRy//rD
	uUU28VaITq6/aUf8LE+d6Y/2E/Je+ODwBik0zQgJqo2ZJTxc736AzEUMnOk7ZwGl09nr7F2lteCk1
	bxA/43nPVc7TwdRrzd64Cw3jxscHtMFjP9qkoQNDH55DJ9SOHnpF8053KvCCOJ3U22FUUjhTeQqlG
	fjjXeus761GyfhWVQOv8pGffULM7IqLz1N9T2+niwILbDzq/9YVdGpzYDQnnDpqcsIS25wBd+wbLd
	7UxtjRESYFtgq9CtY7EuxA1slF965Bya/OC3OcwUgaSv4K4WsdfnEgVFSV7Bst+/hv+SHBLOb/QVt
	xaQIaRRSFyi+XuC5T6IQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wf4VJ-00000003DJp-03HG;
	Wed, 01 Jul 2026 23:38:05 +0000
Received: from mail-lf1-x132.google.com ([2a00:1450:4864:20::132])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wf4VG-00000003DJS-1Zgm
	for linux-phy@lists.infradead.org;
	Wed, 01 Jul 2026 23:38:03 +0000
Received: by mail-lf1-x132.google.com with SMTP id 2adb3069b0e04-5aebf96bc89so223092e87.0
        for <linux-phy@lists.infradead.org>; Wed, 01 Jul 2026 16:38:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1782949080; x=1783553880; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from:references
         :cc:to:subject:user-agent:mime-version:date:message-id:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=OVCh6Lf8+nzzdAxzyPMuHDYAnEuNDpXn+opdGjJoaxg=;
        b=jR2DCzJ9Xu2LImuZom30Z+4tIIIEyn3vhJEQe28TB2U9xk1Qf0rvDu+l42pJGI693/
         l4lmxOuK8JOYsbTvni5nj959Dt9eXoXqO/DCGR6Agi19KXHb1vlMPG7fhFdlVDA3Hqoy
         G9d2y2vwVA4wmDQnIxuUTgW5iluSF7NFO4ws11uKPIHFLmdoxvskW1MCaDtfK7n6ya/k
         DtJpEQBmJCOq6utGaKkQAxz7tKbbz6OWPvbXMQ4q1I7VTDr0nCe6ziXcYREj0xOOg+sM
         vneakM4ayz0tmLhVyF5onWO2fB84x72hvi9nebKP+S56/eZR8kqDbRqcrTVGJnJitY3A
         z5rw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782949080; x=1783553880;
        h=content-transfer-encoding:content-type:in-reply-to:from:references
         :cc:to:subject:user-agent:mime-version:date:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=OVCh6Lf8+nzzdAxzyPMuHDYAnEuNDpXn+opdGjJoaxg=;
        b=FOdcHVnLAL3pvAx/+msM+z1xtEUDLLALjDxtJmUT6YdBkqvh2Zh418gis8JNuC+H2j
         buUJAaH1UCbrrIYiAFap+MIJ/0jt7lQpNGG8KGxOA2E8TbEhKbqYgzbBhUBnokLINlg+
         DK6rxTRDfYZBwS6hWNs2f6/+h0SEMe58y0vCeOQEX9pZH+G94m7Ma9AiYqCGvU2T/Pm6
         Rb3NWHb77oDenwnTMPRqQOpRYFb0rQBG/nfMMSIznmS4IyY4XukH1R0mShxV00IDHLBp
         fA9DtnvN5Rl8Tx51CokUgWhXFV0+vCSB6ebWKHIWYD/BoyLessFLr+KZrZTnL+MmrKXC
         7jOQ==
X-Forwarded-Encrypted: i=1; AHgh+RppNBMwD206dK17nwaLVqiLuJzASmf3F5gkR3Q84Fn7LXynF8fjLQuJk4KWRAjRwmbPWeBVi/PMjC8=@lists.infradead.org
X-Gm-Message-State: AOJu0Yz0XasoqiHCxHf8SxO2YSXOKfYtJhShZ7rfILI7rn2hDU6/wjed
	T3VyYQiISHVRcmImyRqAv5bAWT4fZY4cWoTIRRKCuhS6V3ImYZZMNKKhg8I/nenNnbU=
X-Gm-Gg: AfdE7claVU2p8OH+l61ksdePyirDjpOsq3smRScYOXV2NAg+ssc8LM879DqUkDEVvCB
	iaRbGd30CRDKyHHmhnaJbcy+PYKYWAbyusRcIPaqYQ7/8mww5bqH5YWsxHJi4/KbpWCsJWnUCuq
	M8PP39iWQJJjSHq7XS5kilqeIsnZYCdKsCzCWttjeMhAn6xw8gUub/k38i582di7G+FNNMIvf+S
	kl1mVKGoQoXllc9zAawD9uPO4itwZwcZL+W6hM7sBe2/RT6J2pvj8OBHIBeWmWTvZrVCSrsGu6j
	dA+OkxZDQ9GjnCvw4V2VCYF3Eoe9nZAjDGfkRRtPN7wjHXTZuluXfbzojbSskiOFnKdtychRZ5n
	7F8kSpxm7R42ihHMUM0W5Ac4wHC3o+UvG0t8meYw8FForDRvLcgMGnEmZaORrwBWMOF92MIhX9a
	p0y3p8aPBzSCn8V2p5YCKJbN3XGuxQStikfkcueU1aC50bYOrDRdK1JlCYHkEr557deIc=
X-Received: by 2002:a05:6512:4613:b0:5ae:b17a:2617 with SMTP id 2adb3069b0e04-5aec7435771mr533633e87.6.1782949079808;
        Wed, 01 Jul 2026 16:37:59 -0700 (PDT)
Received: from [192.168.1.100] (91-159-24-186.elisa-laajakaista.fi. [91.159.24.186])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5aec89dc478sm300818e87.68.2026.07.01.16.37.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 01 Jul 2026 16:37:58 -0700 (PDT)
Message-ID: <ae3a381b-5697-43ee-bdfd-aaf2d22ceedf@linaro.org>
Date: Thu, 2 Jul 2026 02:37:58 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v8 1/2] dt-bindings: phy: qcom: Add CSI2 C-PHY/DPHY schema
To: Bryan O'Donoghue <bod@kernel.org>,
 Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>, Vinod Koul
 <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Neil Armstrong <neil.armstrong@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-media@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20260523-x1e-csi2-phy-v8-0-a85668459521@linaro.org>
 <20260523-x1e-csi2-phy-v8-1-a85668459521@linaro.org>
 <rpnNMsR9GY8gbynzeBO8Zm61JAOq3ubt6sp0x3WDPPwkMAJzlcofECD1kabN-IUoK6sSwP5P6l28UIZLFCOpjQ==@protonmail.internalid>
 <dda32577-04e0-4507-acaf-a5694f4f31b3@linaro.org>
 <7c564df8-5c5a-4b43-806e-5e017e5c51db@kernel.org>
From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
In-Reply-To: <7c564df8-5c5a-4b43-806e-5e017e5c51db@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260701_163802_470679_FA7C5825 
X-CRM114-Status: GOOD (  12.33  )
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

On 7/2/26 01:54, Bryan O'Donoghue wrote:
> On 02/06/2026 22:59, Vladimir Zapolskiy wrote:
>>> +
>>> +  "#phy-cells":
>>> +    const: 1
>>> +    description:
>>> +      The single cell specifies the PHY operating mode.
>> #phy-cells should be 0, because the PHY operating mode is well defined
>> by 'bus-type' property of an endpoint on the sensor side, the opposite
>> side of CAMSS/CSID as a CSIPHY "consumer" should not dictate the PHY type.
> 
> So going through the list I don't believe this is correct.

Be specific what is incorrect.

> 
> Inserting bus-type into the PHY layer is borrowing from one domain
> linux-media and pushing the concept into PHYs.

It's the other way around, "bus-type" is an endpoint property of media
devices, reference to video-interfaces.yaml to get more details about it.

> phy-cells = 1 with CPHY/DPHY specified in the consumer, as was Rob's
> suggestion will specify the mode.

This cell is just not needed, and unneeded complexity should not be added.

> Then to understand if we are in regular or combo mode, we parse the
> ports/endspoints in the PHY node as we've agreed already.
> 

That's correct, and while it's unavoidable to parse endpoint properties,
a phy cell value will not bring any additional information, in the best
case it's useless, or it opens a door to a clash, if different phy types
are occasionally specified twice.

-- 
Best wishes,
Vladimir

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
