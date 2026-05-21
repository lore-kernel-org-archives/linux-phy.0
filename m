Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C225FCD5BAC
	for <linux-phy@archiver.kernel.org>; Thu, 21 May 2026 15:36:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=M8mcY8RkYBQm2h0DkQMPsTgrDfdokMlL9EKaTy61myI=; b=sYWUn80hTpldPa
	FyDI2VoWHlLYmuH2rmNyO01D9xm+ACuaWVVLEjSoGPOdbeKLzfpRbUelenIOpUbnUDX6soOT9OpZ0
	rTmJOjxMY9pjumKHfBE+YOILVGgnOW4Q8yUZ57oIF3vSk8xqshHAgrl+URJpquzQa7sh+xwMVOxMG
	pCx4WYoIAGCe+Dwz/ghX532mWEgNeQ5ymAr1oHSqqU/QQQa+1AFNCRLtebXe9QgaOXfOxPVhLJdM8
	XAdYpWSELzUcdYfinNzf091wKa4fT0xyrvQ3GzEt2djpe19KWV1W95ixbQJfeS8nea/OskZCdX1bY
	SeAsEPId7qw3+/0cI8kQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wQ5RW-00000008L5I-1Yra;
	Thu, 21 May 2026 15:36:14 +0000
Received: from mail-wr1-x436.google.com ([2a00:1450:4864:20::436])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wQ5RU-00000008L4c-1CxQ
	for linux-phy@lists.infradead.org;
	Thu, 21 May 2026 15:36:13 +0000
Received: by mail-wr1-x436.google.com with SMTP id ffacd0b85a97d-45e6a4d0be0so2757176f8f.1
        for <linux-phy@lists.infradead.org>; Thu, 21 May 2026 08:36:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1779377770; x=1779982570; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=IWk6GQzhGW2RryhVAKkuT+Tv5fS5Q4uWu1yky+LSRfs=;
        b=OxTiLScKsQE0QRFwlhNMDOhtl+mXV1gjXXdKG4HU6ySHdK2DOy8lDt1yKS2pGddEGJ
         DIQrzK3yjbCR0IYV05K4z+qyzRvfu2gs3GBUWYyqp5Wy3V/I/pcs9W1g4YimzM5ADh+n
         yj9it/l0JSH6BMztqzEl4URJxjoX+sj/PYeI0ZKpzEpJVlZr4AfixDoOhqRtSQ0zW5rh
         adPw15fF7A6qeyMON6O6mU381uCrPp+8GaAdnhdk2iHO1AKcGOUPOEOrgKJuZ2NKaPCe
         eNa/Tk0O4FF5mgkvDAvePnEmVBKbcueVO3HBcEzTOFjxWD7b3BJh8Ww+tCwx3RRURapy
         sGHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779377770; x=1779982570;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=IWk6GQzhGW2RryhVAKkuT+Tv5fS5Q4uWu1yky+LSRfs=;
        b=q+CLo40fRb5nObbn7Wfz+XOGyT+zWD8AiWbAa9yhVTBX2WhJmRgFQ+8+pUR7sp7Sy6
         qBr3k+LVfYnlpHBq+DpzbyxcpHx0mE8zXwB5piSw5X1DTZEt49kwx7xcwfymLgKwXeiA
         ubsrCdxY8PoYOj7IYHonqn2FslKFGFbUS1qElBtxyh6PG1AVbUG2w4lGKYcD0NetbKHe
         crJh6l1s0SGpAPWyaMdFgkHgWlwZfDI/UF9bTLz0qbCLADM6n/pPh37Su4PE2cKmRM3U
         TQkbkuEpAyZMsmw1sL7WQR1iuw6sXxCv6/3yYD6KE1HDIXAQfG9rj6BoBZsQ4ncNhqub
         8n+Q==
X-Forwarded-Encrypted: i=1; AFNElJ9WITAvI9PN2ZdGdgw2uxhgutkVjlH4NtQ0J+fE9GHZAJdOS746lzKLj/ZI3rFEd7CcqUYIN4mmzYw=@lists.infradead.org
X-Gm-Message-State: AOJu0YzZFlRtH+xKtGq2T7gbaGn2QKdpRLIYMI5ztjKol13pSa7KzjR1
	PbukIndUfSA09Qu19U3cTWLnqvxdEhq6qqAJz+9d/INwWo5xKkia1rlL20zzoEinlik=
X-Gm-Gg: Acq92OHtYoUi864UXzkoQ5JzrHUdtGUj489F+pY0KknRSamS0Wj/KLs6VpLQcE0i3Qv
	+E1CmPp81hREPyjLTLRAy36euergOc8xKVGUqUJD65mx9GqWBEeEIc0wFBOdmHQYdaLOihhuDik
	uhka2CQmwr5cSPeluMCz0h+RdO1PhMam0i+XJK8lGEGAHQuS4gnXKwBKkHYCPG002heQZ/RVAqU
	LkJhib5LwhzXdGOmyTAFfv6Pzw0arrbyNDDvGz7mls/UlVrhGUM409+Ls5QooasppFgATasd77w
	JrqcMJlWuysWhsWTnH8OXCTGjywK3Reva5fjyYVINhmn/3K6/b5s1Fb6KWmj4M0MlqvVSdBdNPi
	CQ2L2dm/jyy7rRZVDg2PyDHEr7H7lX+88tCPLxt63+YzkOchrfAlaL9aPy8t/+5/FUb0hAXCQVX
	Z9qahgtNhCpA6GTitKmBJt7jifITNTW+mSrA==
X-Received: by 2002:a05:6000:1ace:b0:43d:300b:2285 with SMTP id ffacd0b85a97d-45ea37bbfb9mr6086071f8f.11.1779377769950;
        Thu, 21 May 2026 08:36:09 -0700 (PDT)
Received: from [192.168.0.35] ([109.76.55.220])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-45eaa93ce5fsm3749850f8f.33.2026.05.21.08.36.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 21 May 2026 08:36:09 -0700 (PDT)
Message-ID: <634c0951-dabb-4505-ad52-4101a8ec0bbd@linaro.org>
Date: Thu, 21 May 2026 16:36:08 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 1/2] dt-bindings: phy: qcom: Add CSI2 C-PHY/DPHY schema
To: sashiko-reviews@lists.linux.dev
Cc: vkoul@kernel.org, neil.armstrong@linaro.org, devicetree@vger.kernel.org,
 conor+dt@kernel.org, olteanv@gmail.com, linux-phy@lists.infradead.org,
 robh@kernel.org
References: <20260521-x1e-csi2-phy-v6-1-9d73d9bd7d20@linaro.org>
 <20260521122645.3EF9B1F000E9@smtp.kernel.org>
Content-Language: en-US
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <20260521122645.3EF9B1F000E9@smtp.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260521_083612_365670_D2617C2F 
X-CRM114-Status: GOOD (  15.52  )
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

On 21/05/2026 13:26, sashiko-bot@kernel.org wrote:
> Thank you for your contribution! Sashiko AI review found 2 potential issue(s) to consider:
> - [Medium] The schema unconditionally requires `clock-lanes` for `port@0`, which incorrectly breaks C-PHY configurations.
> - [Low] The example device tree node is missing required `data-lanes` and `clock-lanes` properties in the `port@0` endpoint.
> --
> 
> commit bec75335fd5214a065f090cefeb28f9c895cfd3c
> Author: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
> 
> dt-bindings: phy: qcom: Add CSI2 C-PHY/DPHY schema
> 
> This commit adds a new base devicetree schema for Qualcomm MIPI CSI2 PHY
> devices, initially for the x1e80100. It supports CPHY, DPHY, and DPHY split
> modes across three ports, allowing per-PHY voltage rails to be individually
> defined and required.
> 
>> diff --git a/Documentation/devicetree/bindings/phy/qcom,x1e80100-csi2-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,x1e80100-csi2-phy.yaml
>> new file mode 100644
>> index 0000000000000..c9116246c1e9e
>> --- /dev/null
>> +++ b/Documentation/devicetree/bindings/phy/qcom,x1e80100-csi2-phy.yaml
> [ ... ]
>> +    properties:
>> +      port@0:
>> +        $ref: /schemas/graph.yaml#/$defs/port-base
>> +        description: Sensor input. Always present.
>> +
>> +        properties:
>> +          endpoint:
>> +            $ref: /schemas/media/video-interfaces.yaml#
>> +            unevaluatedProperties: false
>> +            properties:
>> +              data-lanes:
>> +                minItems: 1
>> +                maxItems: 4
>> +              clock-lanes:
>> +                maxItems: 1
>> +              remote-endpoint: true
>> +            required:
>> +              - data-lanes
>> +              - clock-lanes
> 
> [Severity: Medium]
> The commit description mentions the PHY supports both C-PHY and D-PHY modes.
> Since C-PHY embeds the clock signal within the 3-phase data lanes, there isn't
> a separate physical clock lane. Does requiring clock-lanes unconditionally
> here break configurations that need to use C-PHY mode?

Fair hadn't thought of that.

> 
>> +              - remote-endpoint
> [ ... ]
>> +examples:
>> +  - |
> [ ... ]
>> +        ports {
>> +            #address-cells = <1>;
>> +            #size-cells = <0>;
>> +
>> +            port@0 {
>> +                reg = <0>;
>> +                csiphy0_in_ep: endpoint {
>> +                    remote-endpoint = <&sensor_out>;
> 
> [Severity: Low]
> The schema definition above explicitly requires data-lanes and clock-lanes to
> be present in the port@0 endpoint. Will omitting them from this example cause
> a validation failure when running dt_binding_check?

Yes this is what happens when you ask the question "should I run the 
check one more time" and say no.

>> +                };
>> +            };
>> +
>> +            port@2 {
>> +                reg = <2>;
>> +                csiphy0_out_ep: endpoint {
>> +                    remote-endpoint = <&controller_in>;
>> +                };
>> +            };
>> +        };
>> +    };
> [ ... ]
> 


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
