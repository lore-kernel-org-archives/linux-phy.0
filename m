Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8263BCA0FFE
	for <linux-phy@archiver.kernel.org>; Tue,  2 Sep 2025 12:31:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=RpwxKne2uc5iHaigHoKPsL2dTjwTHNVVv3VZ4I/Lbj0=; b=fZzDvvc7v9zGP29ICg3hZbnE6c
	nq0WYDhM6JzULBRpqcKzJ6GSg7fLohwJKOVziSGFI1QCH2xDv86X5dJqJPk8lsbe4mgbH3GHBKxrw
	7WmRCi1uzwF/CS523jbBDfd1Ufz0djuqcdy8/vkgpU6bA2P7iarK/0EVlDzxhOYOUxQNIN1JTwpBK
	dyQL8yFzZsMM5SN6bw2kb3o2xfIY8fgXg7FFB6kRMBiDXUAfCLKLvzum3R4oHl8WzjKp5gkKz2oaF
	HvAmvi5IJCp5FerIRiSXV82yWPOYk/cuoNrh5oUr29ED2mKYc5ohasBkZo9AA05Be+9deJ6LfJ6WA
	piRcZlJw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1utQAT-0000000HIk0-0XHA;
	Tue, 02 Sep 2025 12:31:21 +0000
Received: from mail-wr1-x429.google.com ([2a00:1450:4864:20::429])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1utNtc-0000000GZsP-3rk6
	for linux-phy@lists.infradead.org;
	Tue, 02 Sep 2025 10:05:50 +0000
Received: by mail-wr1-x429.google.com with SMTP id ffacd0b85a97d-3d118d8fa91so678349f8f.1
        for <linux-phy@lists.infradead.org>; Tue, 02 Sep 2025 03:05:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1756807547; x=1757412347; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=DKv+WRLsFVCC8aSRaIrYXOk2Cx3u5tcB382H/Vrrt10=;
        b=fDc3vVwTZf0fEgbWjIlB0J2hWm89LD8s0B/Geasu3uGzPfkWDgxdOGL5y9bfWid3Bh
         CyVmyErvGIvduN+iJF1Gsj0hT7TbVIZcYEgW5Mbv3BfaOKY/A171JHpFRnzICVFcjWyW
         IM6EC2zrB/zifR17GfVHX/mIWE7hORdxt+r19pvTpfhnRerTtZXVHuO+BHWIAhGc6xE/
         xCpG8raJeFVd84mr3vXYi94KKoZ/kp7twk9BSRzjtfwII4gSH0ZuiDXFINTxU9I3ydUr
         K5Rxn666TSaHyg3dzIlaydj4aiqHe8ndPfzwhQP7rF1NpQT8w2g81F+9QmxNAWT+MiCL
         aQlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756807547; x=1757412347;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=DKv+WRLsFVCC8aSRaIrYXOk2Cx3u5tcB382H/Vrrt10=;
        b=wrGmFwK9W/JbGyCYqRae3WfLnqb9z4HaHeOEpSm2xaa4aB0QP4CTgd6f0SHHHrFFVA
         N7wB1q/Tb6l89P9XRAaPR1zAbIwvxg/O9OvSd7oPaEsVS2H47zjFa23Byjuz2R4jNa05
         9NLyi6OcpZrodtY1/CeVl+tTIrdZZd11ChGBQxon213gA4IzQzpxyOytuguPYsA7gL7I
         Rx0fzqlLkFN9bEGjTRAk0c0swvH8m6w3rgo3KLE2qhFqKSulii33bWdHN9Sxbq8jqCrd
         ZpmEnnNp+fZvu6THVr1dp/f12HLMDOBRZYP5I+cfm42Y21Z7IHuZOHUgejgY6gamAGqo
         xwMA==
X-Forwarded-Encrypted: i=1; AJvYcCUrTE/JfoCLxwf10YAdpZtJwiZUC/Lj60lvYRDIvijacmLcWmTuKc5wZrhAhQfrYEbVOwPhJk1ruEg=@lists.infradead.org
X-Gm-Message-State: AOJu0YwLGmN6NJKjrH5tad2wCYnWqqL+UbHjfuBArBM6kWBTS/bboshO
	5yWILE2VmaZCTQf2MWxLKfrCR95WjQplgsTuHAsakkrflYxAQl6od7uWw6XhzzrTL9I=
X-Gm-Gg: ASbGncu2NrL5GORjpdImpTilAZ9DwO9L6up+Ob52bf2dAu8rWfeGwl+HHyouvjS3aej
	8AskhGhYRKqqVZ83TZXr3WzBvTBr80BE3ndhFwZ8RPpdgIuGJhQrtEh3Xyn5iIfJdA/2bg8pjDB
	xczMDMjPE5aBt0DPm547Cfvasmrzu6m5TlMBSZ5U7R88zDZ24ocZEJkkDThng7iN+5MGzG0aFBu
	gzFRzpQGGeRZN34pR3ML+95Cy671jBFfBKwjRRNwtiWoixBPsirFfJjaBynUgDUHM3md7EV/5vu
	dP0++pmBpvlhTP1T7d8bElsO6w8i0tj+G6Z5ABDVCaMZGfQS0WX1GtGbTE6frgzsvXE8tllwUHq
	3odMF19HSmI710VlIORsmfzgCjDZrV+cTtbX/hJrTUkwyyc4zVCQFbHHFYTETxb7fZGGR2Ksikv
	c=
X-Google-Smtp-Source: AGHT+IEC2Uof9qvrunk0/czGAhbC3spiWV8COr7+4EjE/m9oQZvefEsHqv5eMS77ZNG8dVHRA97olQ==
X-Received: by 2002:a05:6000:310b:b0:3c2:95c8:b71a with SMTP id ffacd0b85a97d-3d1af84bc3dmr9412376f8f.5.1756807547181;
        Tue, 02 Sep 2025 03:05:47 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:3d9:2080:5c8d:8a1e:ea2b:c939? ([2a01:e0a:3d9:2080:5c8d:8a1e:ea2b:c939])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-45b7e68c83asm204250835e9.20.2025.09.02.03.05.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 02 Sep 2025 03:05:46 -0700 (PDT)
Message-ID: <14f334fc-35de-4f21-8eb1-f6b41ac24704@linaro.org>
Date: Tue, 2 Sep 2025 12:05:45 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH v2 3/5] dt-bindings: phy: qcom,sc8280xp-qmp-usb43dp-phy:
 Document static lanes mapping
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Andrzej Hajda <andrzej.hajda@intel.com>, Robert Foss <rfoss@kernel.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>, dri-devel@lists.freedesktop.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org
References: <20250902-topic-x1e80100-hdmi-v2-0-f4ccf0ef79ab@linaro.org>
 <20250902-topic-x1e80100-hdmi-v2-3-f4ccf0ef79ab@linaro.org>
 <slgu2d4iv6ef76f43gvwaelcl5ymymsvhokyunalq7z3l2ht3j@t7pko4rtqvgm>
 <bf772209-2420-4794-a52a-1d5932146307@linaro.org>
 <tl4fskw6yq6rniwwqkrvnulfpgym3jswlt5bmulgquogv7xkct@6bl4boesilsw>
Content-Language: en-US, fr
Autocrypt: addr=neil.armstrong@linaro.org; keydata=
 xsBNBE1ZBs8BCAD78xVLsXPwV/2qQx2FaO/7mhWL0Qodw8UcQJnkrWmgTFRobtTWxuRx8WWP
 GTjuhvbleoQ5Cxjr+v+1ARGCH46MxFP5DwauzPekwJUD5QKZlaw/bURTLmS2id5wWi3lqVH4
 BVF2WzvGyyeV1o4RTCYDnZ9VLLylJ9bneEaIs/7cjCEbipGGFlfIML3sfqnIvMAxIMZrvcl9
 qPV2k+KQ7q+aXavU5W+yLNn7QtXUB530Zlk/d2ETgzQ5FLYYnUDAaRl+8JUTjc0CNOTpCeik
 80TZcE6f8M76Xa6yU8VcNko94Ck7iB4vj70q76P/J7kt98hklrr85/3NU3oti3nrIHmHABEB
 AAHNKk5laWwgQXJtc3Ryb25nIDxuZWlsLmFybXN0cm9uZ0BsaW5hcm8ub3JnPsLAkQQTAQoA
 OwIbIwULCQgHAwUVCgkICwUWAgMBAAIeAQIXgBYhBInsPQWERiF0UPIoSBaat7Gkz/iuBQJk
 Q5wSAhkBAAoJEBaat7Gkz/iuyhMIANiD94qDtUTJRfEW6GwXmtKWwl/mvqQtaTtZID2dos04
 YqBbshiJbejgVJjy+HODcNUIKBB3PSLaln4ltdsV73SBcwUNdzebfKspAQunCM22Mn6FBIxQ
 GizsMLcP/0FX4en9NaKGfK6ZdKK6kN1GR9YffMJd2P08EO8mHowmSRe/ExAODhAs9W7XXExw
 UNCY4pVJyRPpEhv373vvff60bHxc1k/FF9WaPscMt7hlkbFLUs85kHtQAmr8pV5Hy9ezsSRa
 GzJmiVclkPc2BY592IGBXRDQ38urXeM4nfhhvqA50b/nAEXc6FzqgXqDkEIwR66/Gbp0t3+r
 yQzpKRyQif3OwE0ETVkGzwEIALyKDN/OGURaHBVzwjgYq+ZtifvekdrSNl8TIDH8g1xicBYp
 QTbPn6bbSZbdvfeQPNCcD4/EhXZuhQXMcoJsQQQnO4vwVULmPGgtGf8PVc7dxKOeta+qUh6+
 SRh3vIcAUFHDT3f/Zdspz+e2E0hPV2hiSvICLk11qO6cyJE13zeNFoeY3ggrKY+IzbFomIZY
 4yG6xI99NIPEVE9lNBXBKIlewIyVlkOaYvJWSV+p5gdJXOvScNN1epm5YHmf9aE2ZjnqZGoM
 Mtsyw18YoX9BqMFInxqYQQ3j/HpVgTSvmo5ea5qQDDUaCsaTf8UeDcwYOtgI8iL4oHcsGtUX
 oUk33HEAEQEAAcLAXwQYAQIACQUCTVkGzwIbDAAKCRAWmrexpM/4rrXiB/sGbkQ6itMrAIfn
 M7IbRuiSZS1unlySUVYu3SD6YBYnNi3G5EpbwfBNuT3H8//rVvtOFK4OD8cRYkxXRQmTvqa3
 3eDIHu/zr1HMKErm+2SD6PO9umRef8V82o2oaCLvf4WeIssFjwB0b6a12opuRP7yo3E3gTCS
 KmbUuLv1CtxKQF+fUV1cVaTPMyT25Od+RC1K+iOR0F54oUJvJeq7fUzbn/KdlhA8XPGzwGRy
 4zcsPWvwnXgfe5tk680fEKZVwOZKIEuJC3v+/yZpQzDvGYJvbyix0lHnrCzq43WefRHI5XTT
 QbM0WUIBIcGmq38+OgUsMYu4NzLu7uZFAcmp6h8g
Organization: Linaro
In-Reply-To: <tl4fskw6yq6rniwwqkrvnulfpgym3jswlt5bmulgquogv7xkct@6bl4boesilsw>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250902_030548_972385_7BEAECBE 
X-CRM114-Status: GOOD (  23.56  )
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
Reply-To: Neil Armstrong <neil.armstrong@linaro.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On 02/09/2025 11:46, Dmitry Baryshkov wrote:
> On Tue, Sep 02, 2025 at 11:35:25AM +0200, Neil Armstrong wrote:
>> On 02/09/2025 11:30, Dmitry Baryshkov wrote:
>>> On Tue, Sep 02, 2025 at 11:00:30AM +0200, Neil Armstrong wrote:
>>>> The QMP USB3/DP Combo PHY hosts an USB3 phy and a DP PHY on top
>>>> of a combo glue to route either lanes to the 4 shared physical lanes.
>>>>
>>>> The routing of the lanes can be:
>>>> - 2 DP + 2 USB3
>>>> - 4 DP
>>>> - 2 USB3
>>>>
>>>> The layout of the lanes was designed to be mapped and swapped
>>>> related to the USB-C Power Delivery negociation, so it supports
>>>> a finite set of mappings inherited by the USB-C Altmode layouts.
>>>>
>>>> Nevertheless those QMP Comby PHY can be statically used to
>>>> drive a DisplayPort connector, DP->HDMI bridge, USB3 A Connector,
>>>> etc... without an USB-C connector and no PD events.
>>>>
>>>> Add a property that documents the static lanes mapping to
>>>> each underlying PHY to allow supporting boards directly
>>>> connecting USB3 and DisplayPort lanes to the QMP Combo
>>>> lanes.
>>>>
>>>> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
>>>> ---
>>>>    .../phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml         | 29 ++++++++++++++++++++++
>>>>    1 file changed, 29 insertions(+)
>>>>
>>>> diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
>>>> index c8bc512df08b5694c8599f475de78679a4438449..12511a462bc6245e0b82726d053d8605148c5047 100644
>>>> --- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
>>>> +++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
>>>> @@ -76,6 +76,35 @@ properties:
>>>>      mode-switch: true
>>>>      orientation-switch: true
>>>> +  qcom,static-lanes-mapping:
>>>> +    $ref: /schemas/types.yaml#/definitions/uint32-array
>>>> +    minItems: 4
>>>> +    items:
>>>> +      enum:
>>>> +        - 0 # Unconnected (PHY_NONE)
>>>> +        - 4 # USB3 (PHY_TYPE_USB3)
>>>> +        - 6 # DisplayPort (PHY_TYPE_DP)
>>>> +    description:
>>>> +      Describes the static mapping of the Combo PHY lanes, when not used
>>>> +      a in a Type-C dynamic setup using USB-C PD Events to change the mapping.
>>>> +      The 4 lanes can either routed to the underlying DP PHY or the USB3 PHY.
>>>> +      Only 2 of the lanes can be connected to the USB3 PHY, but the 4 lanes can
>>>> +      be connected to the DP PHY.
>>>
>>> It feels like this significantly duplicates existing data-lanes
>>> definitions. Can we use that property to express the same semantics?
>>
>> Well yes it has the same semantics, but not really the same meaning. data-lanes is designed
>> to describes the lanes layout/ordering, not the type/mapping.
>>
>> Here, we do not describe the ordering, i.e which source lane is connected to which endpoint splot,
>> but which lane is supposed to connect to which internal PHY.
>>
>> Anyway, I'm open to suggestions.
> 
> phy@abcdef {
> 	ports {
> 		port@1 {
> 			endpoint {
> 				remote-endpoint = <&&usb_1_dwc3_ss>;
> 				data-lanes = <2 3>;
> 			};
> 		};
> 
> 		port@2 {
> 			endpoint {
> 				remote-endpoint = <&mdss_dp0_out>;
> 				data-lanes = <1>;
> 			};
> 		};
> 	};
> };
> 
> phy@cafecafe {
> 	ports {
> 		port@1 {
> 			endpoint {
> 				remote-endpoint = <&&usb_1_dwc3_ss>;
> 				status = "disabled";
> 			};
> 		};
> 
> 		port@2 {
> 			endpoint {
> 				remote-endpoint = <&mdss_dp0_out>;
> 				data-lanes = <2 3 0 1>;
> 			};
> 		};
> 	};
> };

This is wrong, those are the internal connections to the controllers,
those are fixed. I'm speaking about the external lanes, but there's only
a single port.

So, following your suggestion, we should use the Output port 0, but as it's
only a single port it would need to have 2 endpoints, one for USB3 and one for
DP.

For example:

\{
	dp-connector {
		compatible = "dp-connector";
		type = "a";

		port {
			dp_con: endpoint {
				remote-endpoint = <&usb_1_ss2_qmpphy_dp_out>;
			};
		};
	};

	usb-a-connector {
		compatible = "usb-a-connector";

		ports {
			#address-cells = <1>;
			#size-cells = <0>;

			port@0 {
				reg = <0>;
                      		usb_con_hs: endpoint {
                         		remote-endpoint = <&usb_1_ss2_dwc3_hs>;
                      		};
                  	};

                  	port@1 {
                      		reg = <1>;
                     		usb_con_ss: endpoint {
                          		remote-endpoint = <&usb_1_ss2_qmpphy_usb3_out>;
                      		};
                  	};
		};
	};

};

&usb_1_ss2_dwc3_hs {
	remote-endpoint = <&usb_1_ss2_dwc3_hs>;
};

&usb_1_ss2_qmpphy {
	/delete-property/ mode-switch;
	/delete-property/ orientation-switch;

	ports {
		
		port@0{
			#address-cells = <1>;
			#size-cells = <0>;

			/delete-node/ endpoint;

			usb_1_ss2_qmpphy_usb3_out: endpoint@0 {
				reg = <0>;
				
				remote-endpoint = <&usb_con_ss>;

				data-lanes = <1 2 0 0>;
			};

			usb_1_ss2_qmpphy_dp_out: endpoint@1 {
				reg = <1>;
				
				remote-endpoint = <&dp_con>;

				data-lanes = <0 0 1 2>;
			};
		};
	};
};

So the driver logic would need to look at the port0/endpoint0 and port0/endpoint1
data-lanes to figure out the mode.

Is this what you were thinking ?

Neil

> 
> 
>>
>> Neil
>>
>>>
>>>
>>>> +      The numbers corresponds to the PHY Type the lanes are connected to.
>>>> +      The possible combinations are
>>>> +        <0 0 0 0> when none are connected
>>>> +        <4 4 0 6> USB3 and DP single lane
>>>> +        <4 4 6 6> USB3 and DP
>>>> +        <6 6 4 4> DP and USB3
>>>> +        <6 0 4 4> DP and USB3 single lane
>>>> +        <4 4 0 0> USB3 Only
>>>> +        <0 0 4 4> USB3 Only
>>>> +        <6 0 0 0> DP single lane
>>>> +        <0 0 0 6> DP single lane
>>>> +        <6 6 0 0> DP 2 lanes
>>>> +        <0 0 6 6> DP 2 lanes
>>>> +        <6 6 6 6> DP 4 lanes
>>>> +
>>>>      ports:
>>>>        $ref: /schemas/graph.yaml#/properties/ports
>>>>        properties:
>>>>
>>>> -- 
>>>> 2.34.1
>>>>
>>>
>>
> 


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
